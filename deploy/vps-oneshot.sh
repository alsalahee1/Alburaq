#!/usr/bin/env bash
# ---------------------------------------------------------------------------
# One-shot deploy for the AeroAssist / Alburaq static site.
# Run this INSIDE the server (Hostinger hPanel -> Browser terminal, as root):
#
#   curl -fsSL "https://raw.githubusercontent.com/alsalahee1/Alburaq/claude/website-redesign-research-wikagq/deploy/vps-oneshot.sh" | bash
#
# It is SAFE: if something is already serving ports 80/443 (e.g. your existing
# n8n stack), it stops WITHOUT changing anything and tells you what it found.
# ---------------------------------------------------------------------------
set -euo pipefail

DOMAIN="aeroassist.online"
WEBROOT="/var/www/aeroassist"
SITE_URL="https://raw.githubusercontent.com/alsalahee1/Alburaq/claude/website-redesign-research-wikagq/site/index.html"

echo "== AeroAssist deploy =="

# 1) Safety guard — never clobber an existing web server / n8n / reverse proxy.
if ss -ltn 2>/dev/null | grep -Eq ':(80|443)[[:space:]]'; then
  echo
  echo "!!  Ports 80/443 are ALREADY in use on this server:"
  ss -ltnp 2>/dev/null | grep -E ':(80|443)[[:space:]]' || true
  if command -v docker >/dev/null 2>&1; then
    echo
    echo "    Docker containers currently running:"
    docker ps --format '      - {{.Names}}  ({{.Image}})  {{.Ports}}' 2>/dev/null || true
  fi
  echo
  echo "    This is almost certainly your existing n8n setup. Nothing was changed."
  echo "    >> Copy everything above and send it back — we'll add AeroAssist"
  echo "       alongside n8n (a second domain on the same reverse proxy) safely."
  exit 0
fi

# 2) Ports are free — install nginx and publish the site.
echo "-> Installing nginx ..."
export DEBIAN_FRONTEND=noninteractive
apt-get update -y >/dev/null
apt-get install -y nginx curl >/dev/null

echo "-> Downloading the site ..."
mkdir -p "$WEBROOT"
curl -fsSL "$SITE_URL" -o "$WEBROOT/index.html"
chmod 644 "$WEBROOT/index.html"

echo "-> Configuring nginx for $DOMAIN ..."
cat > "/etc/nginx/sites-available/$DOMAIN" <<NGINX
server {
    listen 80;
    listen [::]:80;
    server_name $DOMAIN www.$DOMAIN;
    root $WEBROOT;
    index index.html;
    location / { try_files \$uri \$uri/ /index.html; }
    gzip on;
    gzip_types text/html text/css application/javascript image/svg+xml;
}
NGINX
ln -sf "/etc/nginx/sites-available/$DOMAIN" /etc/nginx/sites-enabled/
rm -f /etc/nginx/sites-enabled/default
nginx -t
systemctl reload nginx || systemctl restart nginx

IP="$(curl -fsSL --max-time 8 https://api.ipify.org 2>/dev/null || echo 82.112.226.12)"
echo
echo "====================================================================="
echo " Deployed. Test it right now:  http://$IP/"
echo
echo " Once the domain's DNS points here (A records @ and www -> $IP),"
echo " add free HTTPS with:"
echo "   apt-get install -y certbot python3-certbot-nginx && \\"
echo "   certbot --nginx -d $DOMAIN -d www.$DOMAIN --agree-tos -m admin@$DOMAIN --redirect --non-interactive"
echo "====================================================================="
