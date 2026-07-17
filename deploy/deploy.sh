#!/usr/bin/env bash
# ---------------------------------------------------------------------------
# Deploy the Alburaq static site to your VPS (run this from YOUR computer,
# not from the Claude sandbox — the sandbox has no outbound SSH).
#
# Usage:
#   SSH_USER=root SSH_HOST=1.2.3.4 ./deploy/deploy.sh
#
# Optional:
#   SSH_PORT=22                 # ssh port (default 22)
#   SSH_KEY=~/.ssh/id_ed25519   # identity file, if not your default
#   WEB_ROOT=/var/www/aeroassist  # remote web root (default shown)
#
# What it does:
#   1. Copies site/index.html to $WEB_ROOT/index.html on the server
#   2. Reloads nginx (ignored if nginx isn't installed yet)
# ---------------------------------------------------------------------------
set -euo pipefail

SSH_USER="${SSH_USER:?Set SSH_USER, e.g. SSH_USER=root}"
SSH_HOST="${SSH_HOST:?Set SSH_HOST, e.g. SSH_HOST=your.server.ip}"
SSH_PORT="${SSH_PORT:-22}"
WEB_ROOT="${WEB_ROOT:-/var/www/aeroassist}"

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
SRC="$SCRIPT_DIR/site/index.html"
[ -f "$SRC" ] || { echo "Cannot find $SRC"; exit 1; }

SSH_OPTS=(-p "$SSH_PORT")
[ -n "${SSH_KEY:-}" ] && SSH_OPTS+=(-i "$SSH_KEY")

TARGET="$SSH_USER@$SSH_HOST"
echo "→ Deploying to $TARGET:$WEB_ROOT"

# 1. Ensure web root exists
ssh "${SSH_OPTS[@]}" "$TARGET" "sudo mkdir -p '$WEB_ROOT'"

# 2. Upload the site (to a temp path, then move with sudo in case root-owned)
scp "${SSH_OPTS[@]}" "$SRC" "$TARGET:/tmp/aeroassist-index.html"
ssh "${SSH_OPTS[@]}" "$TARGET" "sudo mv /tmp/aeroassist-index.html '$WEB_ROOT/index.html' && sudo chmod 644 '$WEB_ROOT/index.html'"

# 3. Reload nginx if present
ssh "${SSH_OPTS[@]}" "$TARGET" "command -v nginx >/dev/null && sudo nginx -t && sudo systemctl reload nginx || echo 'nginx not configured yet — see deploy/nginx-aeroassist.conf'"

echo "✓ Done. Visit http://www.aeroassist.online (add HTTPS with certbot — see the nginx config header)."
