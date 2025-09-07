#!/usr/bin/env bash
set -euo pipefail

if [[ $# -lt 2 ]]; then
  echo "用法: $0 <github-user> <repo-name>"
  exit 1
fi

USER="$1"
REPO="$2"

git init
git add .
git commit -m "init resume site"
git branch -M main
git remote add origin "https://github.com/${USER}/${REPO}.git"
git push -u origin main

echo
echo "推送完成！接著到 GitHub → Settings → Pages，Source 選 main /root。"
