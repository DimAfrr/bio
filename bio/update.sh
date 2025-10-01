#!/bin/bash
# Script otomatis update GitHub dari Termux

# Tambah semua file yang berubah
git add .

# Commit dengan pesan otomatis + tanggal
git commit -m "update on $(date '+%Y-%m-%d %H:%M:%S')"

# Push ke GitHub (paksa overwrite biar ga error)
git push origin main --force
