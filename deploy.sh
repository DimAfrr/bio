#!/bin/bash

# Nama repo GitHub kamu
GITHUB_USER="DimAfrr"
REPO_NAME="bio"
BRANCH="main"

# Cek apakah folder sudah jadi repo git
if [ ! -d .git ]; then
  git init
  git branch -M $BRANCH
  git remote add origin https://github.com/$GITHUB_USER/$REPO_NAME.git
fi

# Tambah semua file, commit, dan push
git add .
git commit -m "Update website"
git push -u origin $BRANCH --force

echo "✅ Website berhasil dideploy ke GitHub Pages!"
echo "🌍 Link: https://$GITHUB_USER.github.io/$REPO_NAME"
