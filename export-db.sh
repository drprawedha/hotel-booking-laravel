#!/bin/bash

# === CONFIGURASI ===
DB_NAME="laravel_db"          # ganti dengan nama database kamu
DB_USER="laravel_user"        # user MariaDB
DB_PASS="passwordku123"       # isi kalau pakai password, misalnya DB_PASS="mypassword"
SQL_FILE="database/${DB_NAME}.sql"

# === EKSPOR DATABASE ===
echo "📦 Mengekspor database '${DB_NAME}'..."
if [ -z "$DB_PASS" ]; then
  mysqldump -u "$DB_USER" "$DB_NAME" > "$SQL_FILE"
else
  mysqldump -u "$DB_USER" -p"$DB_PASS" "$DB_NAME" > "$SQL_FILE"
fi

if [ $? -ne 0 ]; then
  echo "❌ Gagal mengekspor database!"
  exit 1
fi
echo "✅ Database berhasil diekspor ke $SQL_FILE"

# === GIT PUSH OTOMATIS ===
echo "🚀 Menyimpan ke GitHub..."
git add .
git commit -m "Auto export DB + update project on $(date '+%Y-%m-%d %H:%M:%S')"
git push

if [ $? -eq 0 ]; then
  echo "✅ Push ke GitHub berhasil!"
else
  echo "⚠️ Gagal push ke GitHub — cek koneksi atau autentikasi"
fi

echo "Selesai ✅"

