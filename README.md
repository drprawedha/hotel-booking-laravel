# Hotel Booking System (Laravel)

### Setup Instructions

1. Clone repository:
   ```bash
   git clone https://github.com/<username>/hotel-booking-laravel.git
   cd hotel-booking-laravel
Install dependencies:

bash
Copy code
composer install
npm install && npm run dev
Copy .env.example menjadi .env lalu sesuaikan database-nya.

Import database:

bash
Copy code
mysql -u root -p laravel_db < database/laravel_db.sql
Jalankan migrasi tambahan (kalau ada):

bash
Copy code
php artisan migrate
Jalankan server:

bash
Copy code
php artisan serve --host=0.0.0.0 --port=8000
yaml
Copy code

---

## 🧠 Tips Tambahan

- Jangan pernah upload `.env` (karena berisi password DB dan secret key)
- Simpan file `.sql` di dalam folder `database/` agar mudah ditemukan
- Kalau nanti database besar, lebih baik **tidak commit langsung** — gunakan *seeders* Laravel atau `php artisan db:seed`

---

Kalau kamu mau, aku bisa bantu **buatkan script otomatis (`export-db.sh`)** supaya kamu tinggal jalankan satu perintah:
```bash
./export-db.sh
