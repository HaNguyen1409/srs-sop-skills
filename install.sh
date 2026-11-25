#!/usr/bin/env bash
# Cài các skill theo skills.lock.json vào ~/.claude/skills. Dùng: ./install.sh [--latest]
set -euo pipefail
OWNER="${OWNER:-HaNguyen1409}"; DEST="${DEST:-$HOME/.claude/skills}"; HERE="$(cd "$(dirname "$0")" && pwd)"
mkdir -p "$DEST"
python3 - "$HERE/skills.lock.json" <<'PY' | while read -r name version; do
import json, sys
for s in json.load(open(sys.argv[1], encoding="utf-8"))["skills"]:
    print(s["name"], s["version"])
PY
  target="$DEST/$name"; url="https://github.com/$OWNER/$name.git"
  if [ -d "$target/.git" ]; then
    git -C "$target" fetch --tags --quiet
    if [ "${1:-}" = "--latest" ]; then git -C "$target" checkout --quiet main && git -C "$target" pull --quiet
    else git -C "$target" checkout --quiet "v$version"; fi
  elif [ "${1:-}" = "--latest" ]; then git clone --quiet "$url" "$target"
  else git clone --quiet --branch "v$version" "$url" "$target"; fi
  echo "$name v$version"
done
