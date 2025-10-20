# 🏨 Hotel Booking System (Laravel)

## ⚙️ Setup Instructions

### 1. Clone Repository
```bash
git clone https://github.com/<username>/hotel-booking-laravel.git
cd hotel-booking-laravel
```

### 2. Install Dependencies
```bash
composer install
npm install && npm run dev
```

### 3. Setup Environment File
Salin file `.env.example` menjadi `.env`, lalu sesuaikan konfigurasi database dan pengaturan lain di dalamnya.

```bash
cp .env.example .env
```

### 4. Import Database
Pastikan MySQL sudah berjalan, lalu impor file database:

```bash
mysql -u root -p laravel_db < database/laravel_db.sql
```

### 5. Jalankan Migrasi Tambahan (Jika Ada)
```bash
php artisan migrate
```

### 6. Jalankan Server
```bash
php artisan serve --host=0.0.0.0 --port=8000
```

---

## 🧠 Tips Tambahan

- 🚫 **Jangan pernah upload file `.env`** ke repository (karena berisi password dan secret key).  
- 📂 Simpan file `.sql` di dalam folder `database/` agar mudah ditemukan.  
- 🪴 Jika database sudah besar, **hindari commit langsung file SQL**, gunakan *seeders* Laravel:
  ```bash
  php artisan db:seed
  ```

---

## 🧰 (Opsional) Script Otomatis Export Database

Jika ingin membuat script otomatis untuk mengekspor database, buat file bernama `export-db.sh` dan isi seperti berikut:

```bash
#!/bin/bash
mysqldump -u root -p laravel_db > database/laravel_db.sql
echo "✅ Database berhasil diexport ke folder database/"
```

Lalu beri izin eksekusi:
```bash
chmod +x export-db.sh
```

Jalankan script-nya:
```bash
./export-db.sh
```
