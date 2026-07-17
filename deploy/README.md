# Deploying to www.AeroAssist.online

The site is a single static file (`site/index.html`) — no build step, no database, no Node runtime needed on the server. Any web server that can serve a static file will host it.

> **Why you have to run this, not Claude:** the Claude Code sandbox is network-isolated and blocks outbound SSH (port 22), so it cannot connect to your VPS. Run the commands below from your own computer, which has SSH access to the server.

## Option A — First-time setup (fresh VPS, ~5 minutes)

Assuming Ubuntu/Debian with nginx. Replace `YOUR_SERVER_IP` and user as needed.

```bash
# 1) On the server: install nginx (skip if already installed)
ssh root@YOUR_SERVER_IP 'apt update && apt install -y nginx'

# 2) From this repo on your computer: upload the site + nginx config
scp site/index.html                 root@YOUR_SERVER_IP:/tmp/index.html
scp deploy/nginx-aeroassist.conf    root@YOUR_SERVER_IP:/tmp/aeroassist.conf

# 3) On the server: put files in place and enable the site
ssh root@YOUR_SERVER_IP '
  mkdir -p /var/www/aeroassist &&
  mv /tmp/index.html /var/www/aeroassist/index.html &&
  mv /tmp/aeroassist.conf /etc/nginx/sites-available/aeroassist.online &&
  ln -sf /etc/nginx/sites-available/aeroassist.online /etc/nginx/sites-enabled/ &&
  nginx -t && systemctl reload nginx
'

# 4) Add free HTTPS (Let’s Encrypt)
ssh root@YOUR_SERVER_IP 'apt install -y certbot python3-certbot-nginx &&
  certbot --nginx -d aeroassist.online -d www.aeroassist.online'
```

**DNS:** point the domain at your server before step 4 — at your registrar, create:
- `A` record `@` → `YOUR_SERVER_IP`
- `A` record `www` → `YOUR_SERVER_IP`

## Option B — Redeploy after the first setup (one command)

Once the server is set up, future updates are a single script:

```bash
SSH_USER=root SSH_HOST=YOUR_SERVER_IP ./deploy/deploy.sh
```

See the top of `deploy.sh` for options (`SSH_PORT`, `SSH_KEY`, `WEB_ROOT`).

## Note on the domain

`AeroAssist.online` is unrelated to the "Alburaq International" brand this site is built for. That's fine for a test/staging deploy — just flagging it in case it was the wrong domain or you intended a different one for the live brand.
