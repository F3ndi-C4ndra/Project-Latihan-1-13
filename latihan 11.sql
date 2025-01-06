-- Transaction
-- Sebelumnya jalankan perintah
START TRANSACTION;

CREATE TABLE bukutamu (
    id SERIAL PRIMARY KEY,  -- Menambahkan kolom id sebagai primary key
    email VARCHAR(255) NOT NULL,
    title VARCHAR(255) NOT NULL,
    content TEXT NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP  -- Menambahkan kolom untuk menyimpan waktu pembuatan
);

-- Insert ke dalam table bukutamu
INSERT INTO bukutamu (email, title, content)
VALUES ('transaction@gmail.com', 'Transaction', 'Ini Transaksi'),
       ('transaction@gmail.com', 'Transaction', 'Ini Transaksi 2'),
       ('transaction@gmail.com', 'Transaction', 'Ini Transaksi 3'),
       ('transaction@gmail.com', 'Transaction', 'Ini Transaksi 4'),
       ('transaction@gmail.com', 'Transaction', 'Ini Transaksi 5');

-- Gunakan lain client untuk melihatnya
SELECT * FROM bukutamu;

-- Commit untuk melihat hasilnya di beda client
COMMIT;

-- Menggunakan rollback
START TRANSACTION;

-- Insert ke dalam table bukutamu
INSERT INTO bukutamu (email, title, content)
VALUES ('transaction@gmail.com', 'Transaction', 'Ini rollback'),
       ('transaction@gmail.com', 'Transaction', 'Ini rollback 2'),
       ('transaction@gmail.com', 'Transaction', 'Ini rollback 3'),
       ('transaction@gmail.com', 'Transaction', 'Ini rollback 4'),
       ('transaction@gmail.com', 'Transaction', 'Ini rollback 5');

SELECT * FROM bukutamu;

-- Cek di lain client
SELECT * FROM bukutamu;

-- Gunakan rollback untuk membatalkan
ROLLBACK;

CREATE TABLE products (
    id VARCHAR(10) PRIMARY KEY,  -- Kolom id sebagai primary key
    nama VARCHAR(100) NOT NULL,   -- Kolom untuk menyimpan nama produk
    keterangan TEXT,               -- Kolom untuk menyimpan keterangan produk
    jumlah INT NOT NULL,           -- Kolom untuk menyimpan jumlah produk
    harga DECIMAL(10, 2)           -- Kolom untuk menyimpan harga produk
);


-- LOCKING
-- Menggunakan di table products
SELECT * FROM products;

DROP TABLE  products;
-- Sebelumnya start transaction terlebih dahulu
START TRANSACTION;

-- Update di field id
UPDATE products
SET keterangan = 'Ayam geprek original janda kaya'
WHERE id = 'P0001';

-- Cek table products
SELECT * FROM products WHERE id = 'P0001';

-- Cek di lain client untuk update jumlah p001
-- Pastikan ini dilakukan setelah commit dari transaksi sebelumnya
-- UPDATE products SET jumlah = 200 WHERE id = 'P0001';

-- Jalankan commit untuk melepas lock
COMMIT;

-- Locking record manual
START TRANSACTION;
SELECT * FROM products WHERE id = 'P0001' FOR UPDATE;

-- Select di beda client
-- Pastikan ini dilakukan setelah commit dari transaksi sebelumnya
-- SELECT * FROM products WHERE id = 'P0001' FOR UPDATE;

-- Membatalkan
ROLLBACK;

-- DEADLOCK
START TRANSACTION;
SELECT * FROM products WHERE id = 'P0001' FOR UPDATE;
SELECT * FROM products WHERE id = 'P0002' FOR UPDATE;
ROLLBACK;

-- SCHEMA
-- Melihat schema
SELECT current_schema();

-- Membuat schema
CREATE SCHEMA contoh;

-- Menghapus schema
DROP SCHEMA contoh;

-- Pindah schema
SET search_path TO contoh;

-- Melihat schema saat ini
SELECT current_schema();
SELECT * FROM public.products;

CREATE TABLE contoh.products (
    id SERIAL NOT NULL,
    nama VARCHAR(100) NOT NULL,
    PRIMARY KEY (id)
);

SELECT * FROM contoh.products;

-- Pindah schema public
SET search_path TO public;

-- Jika insert di schema contoh pada path public
INSERT INTO contoh.products (nama)
VALUES ('Samsung'), ('Lenovo');

SELECT * FROM contoh.products;

-- USER MANAGEMENT
-- Membuat users
CREATE ROLE arief;
CREATE ROLE banyu;

-- Menghapus
DROP ROLE arief;
DROP ROLE banyu;

-- Membuat user role yang sudah dibuat
ALTER ROLE arief LOGIN PASSWORD 'rahasia';
ALTER ROLE banyu LOGIN PASSWORD 'rahasia';

-- Hak akses
GRANT INSERT, UPDATE, SELECT ON ALL TABLES IN SCHEMA public TO arief;
GRANT INSERT, UPDATE, SELECT ON customer TO banyu;

-- Backup database
-- Cek pg_dump apakah sudah terinstall
-- pg_dump --help
-- pg_dump --host=localhost --port=5432 --dbname=belajar --username=arief --format=plain --file=/home/documents/