create table products(
	id	varchar(10) not null,
	nama	varchar(100) not null,
	keterangan	text,
	harga	int	not null,
	jumlah	int	not null default 0,
	created_at	timestamp not null default current_timestamp

);

select*from products

insert into products(id,nama, keterangan, harga, jumlah)
values('P0001', 'Ayam Geprek original','Ayam Geprek + sambal ijo', 25000,100);

insert into products(id, nama, harga, jumlah)
values ('P0002', 'Ayam Bakar Bumbu seafood', 35000,100),
		('P0003', 'Ayam Goreng Upin-Ipin', 30000,100),
		('P0004', 'Ayam Bakar Bumbu seadanya', 35000,100);


update products
set nama = 'Ayam pop'
where id = 'P0001';

--Menambahkan column category
alter table products
add column category PRODUCT_CATEGORY;

ALTER TABLE products
ADD COLUMN category VARCHAR(50);
--Mengupdate table pada column category
update products
set category = 'Makanan'
where id = 'P0001';

select * from products;

update products
set category = 'Makanan'
where id = 'P0002';

update products
set category = 'Makanan'
where id = 'P0003';

update products
set category = 'Makanan'
where id = 'P0004';

update products
set category = 'Makanan'
where id = 'P0005';

--mengubah value di colomn
update products
set harga = harga + 10000
where id = 'P0004';

select * from products;

--Delete Data
--insert data untuk contoh dihapus
insert into products(id, nama, harga, jumlah, category)
values ('P0010', 'Produk Gagal', 50000, 100,'Minuman');

select * from products;

--Menghapus id P0010
delete from products
where id = 'P0010

--where operator

select * from products;

--Mencari dengan operator perbandingan lebih dari
select * from products where harga > 15000;

--Mencari dengan operator perbandingan kurang dari
select * from products where harga <= 30000;

select * from products where category != 'Minuman';

--Operator AND dan OR
select * from products where harga > 40000 and category = 'Makanan';

--menambahkan category minuman
insert into products(id , nama , harga, jumlah, category)
values ('P0006', 'Air Tawar', 2000, 100, 'Minuman'),
		('P0007', 'Es Tawar', 5000, 100, 'Minuman'),
		('P0008', 'Es Teller', 20000, 100, 'Minuman'),
		('P0009', 'Es Janda muda', 25000, 100, 'Minuman');

select * from products;
--Mencari dibawah harga
select * from products where harga > 15000;

--Mencari dibawah
select * from products where harga  > 15000 and category = 'Minuman';

--OPERATOR OR
select * from products where harga > 1500 or category = 'Makanan';

--Prioritas menggunakan tanda ()
select * from products where jumlah > 100 or category = 'Makanan' and harga > 15000;

select * from products where category = 'Makanan' or (jumlah > 100) and harga > 15000;


create table barang(
	kode int not null,
	nama varchar(100) not null,
	harga int not null default 1000,
	jumlah int not null default 0,
	waktu_dibuat timestamp not null default current_timestamp);
	select*from barang

--MATERI PERTEMUAN 1 DAN 2 HANYA INSTALSI DAN PENGENALAN POSTGREE

--MATERI PERTEMUAN 3 

create table products(
	id	varchar(10) not null,
	nama	varchar(100) not null,
	keterangan	text,
	harga	int	not null,
	jumlah	int	not null default 0,
	created_at	timestamp not null default current_timestamp

);

select*from products

insert into products(id,nama, keterangan, harga, jumlah)
values('P0001', 'Ayam Geprek original','Ayam Geprek + sambal ijo', 25000,100);

insert into products(id, nama, harga, jumlah)
values ('P0002', 'Ayam Bakar Bumbu seafood', 35000,100),
		('P0003', 'Ayam Goreng Upin-Ipin', 30000,100),
		('P0004', 'Ayam Bakar Bumbu seadanya', 35000,100);


update products
set nama = 'Ayam pop'
where id = 'P0001';

--Menambahkan column category
alter table products
add column category PRODUCT_CATEGORY;

ALTER TABLE products
ADD COLUMN category VARCHAR(50);
--Mengupdate table pada column category
update products
set category = 'Makanan'
where id = 'P0001';

select * from products;

update products
set category = 'Makanan'
where id = 'P0002';

update products
set category = 'Makanan'
where id = 'P0003';

update products
set category = 'Makanan'
where id = 'P0004';

update products
set category = 'Makanan'
where id = 'P0005';

--mengubah value di colomn
update products
set harga = harga + 10000
where id = 'P0004';

select * from products;

--Delete Data
--insert data untuk contoh dihapus
insert into products(id, nama, harga, jumlah, category)
values ('P0010', 'Produk Gagal', 50000, 100,'Minuman');

select * from products;

--Menghapus id P0010
delete from products
where id = 'P0010';

--PERTEMUAN 4

--where operator

select * from products;

--Mencari dengan operator perbandingan lebih dari
select * from products where harga > 15000;

--Mencari dengan operator perbandingan kurang dari
select * from products where harga <= 30000;

select * from products where category != 'Minuman';

--Operator AND dan OR
select * from products where harga > 40000 and category = 'Makanan';

--menambahkan category minuman
insert into products(id , nama , harga, jumlah, category)
values ('P0006', 'Air Tawar', 2000, 100, 'Minuman'),
		('P0007', 'Es Tawar', 5000, 100, 'Minuman'),
		('P0008', 'Es Teller', 20000, 100, 'Minuman'),
		('P0009', 'Es Janda muda', 25000, 100, 'Minuman');

select * from products;
--Mencari dibawah harga
select * from products where harga > 15000;

--Mencari dibawah
select * from products where harga  > 15000 and category = 'Minuman';

--OPERATOR OR
select * from products where harga > 1500 or category = 'Makanan';

--Prioritas menggunakan tanda ()
select * from products where jumlah > 100 or category = 'Makanan' and harga > 15000;

select * from products where category = 'Makanan' or (jumlah > 100) and harga > 15000;


create table barang(
	kode int not null,
	nama varchar(100) not null,
	harga int not null default 1000,
	jumlah int not null default 0,
	waktu_dibuat timestamp not null default current_timestamp);
	select*from barang

--PERTEMUAN KE 5
--like operator
select * from products where nama ilike '%Bakar%';

select * from products where nama ilike '%Es%';

select * from products where nama like '%seafood%';

--between operator
select * from products where harga between 10000 and 30000;


select * from products where harga not between 10000 and 30000;

--IN operator
select * from products where category in ('Makanan');

select * from products where category in ('Makanan', 'Minuman');

--Order By clause
select * from products order by harga asc;

select * from products order by harga asc, id desc;

select * from products order by harga dsc;

--limit clouse / membatasi data yang ditampilkan
select * from products where harga > 0 order by harga asc, id desc limit 2;

--skip data yg ditampilkan dengan offset (biasanya untuk pagging)
--contoh 1 limit 2 offset 0, 2 limit 2 offset 2, 3 limit 2 offset 4

select * from products order by harga asc, id desc limit 2 offset 2;

--select distinct data / menghilangkan duplikat
select category from products;

select distinct category from products;

--numeric function
select 10 + 10 as hasil;

select id, harga / 1000 as harga_in_k from products;

--mathematik function
select pi();

select power(10, 2);

select cos(10), sin(10), tan(10);

select id, nama, power(jumlah, 2) as jumlah_power_2 from products;

--auto increment
--membuat table admin
create table admin(
	id serial not null,
	nama_depan varchar(100) not null,
	nama_belakang varchar(100) not null,
	primary key(id)
);

--input data
insert into admin(nama_depan,nama_belakang)
values ('Arif','Rahmat'),
('Prabowo','Jonatan');
select * from admin;

--melihat id terakhir
select currval('admin_id_seq');

--sequence
--Membuat sequence
create sequance contoh_berurut;

--melihat id terakhir
select nexval('contoh_berurut');

--melihat saat ini diurutan berapa
select currval('contoh_berurut');

--String function
select id, nama, keterangan from products;

select id, lower(nama), length(nama), lower(keterangan) from products;

--menambah kolom timestamp
select * from products;
select id, extract(year from created_at), extract(month from created_at) from products;
--flow control function
select id,
case category
when 'Makanan' then 'enak'
when 'Minuman' then 'Sueger'
else 'Apa an tuh!!'
end as category
from products;

select id, category,
case category
when 'Makanan' then 'enak'
when 'Minuman' then 'Sueger'
else 'Apa an tuh!!'
end as category_case
from products;

--flow control chek null
select id,
nama,
case
when keterangan is null then 'kosong'
else keterangan
end as keterangan
from products;

--agragate function
--menghitung kolom id
select count(id) from products;
==menghitung rata-rata
select avg(harga) from products;
--mencari yang paling mahal
select max(harga) from products;
--mencari yang paling murah
select min(harga) from products;
--group by dengan aggregate fungsi
select category, count(id)from products group by category;
select category, count(id) as "Total Product" from products group by category;
select category,
avg(harga) as "Rata-rata harga",
min(harga) as "Harga termurah",
max(harga) as "Harga termahal"
from products
group by category;
--having clause
select category,
count(id)as "Total Product"
from products
group by category;

select category,
count(id)as "Total Product"
from products
group by category;
having count(id) > 1;

--constraint
--unique constrant
--membuat tabel customer
create table customer(
id serial not null,
email varchar(100) not null,
nama_depan varchar(200) not null,
nama_akhir varchar(200) not null,
primary key (id),
constraint unique_email unique (email)
);

insert into customer(email,nama_depan,nama_akhir)
values ('banyu@gmail.com','arief','budiarto');

select * from customer;
--menambah/menghapus unique constraint

alter  table customer
drop constraint unique_email;
--menambah constraint
alter table customer
add constraint unique(email);

--cek constraint
--Menambah/menghapus constraint
alter table products
add constraint price_check check (harga>1000);
select * from products;

alter table products
add constraint jumlah_check check (jumlah>=0);

-- memasukan data ke fild yang sudah dicek
insert into products(id,nama.harga,jumlah,category)
values ('XXX1','Gagal bro',10,0,'Minuman');
--index
--membuat table penjual
create table penjual
(
id serial not null,
nama varchar(100) not null,
email varchar(200) not null,
primary key (id),
constraint emaile_unique unique (email)
);

-- inser data ke table penjual
insert into penjual(nama,email)
values ('megawati','megawati@yaho.com'),
		('banyubiru','banyu@gmail.com');
select * from penjual;
--menampilkan data dengan index
select * from penjual where id =1;
select * from penjual where email = 'banyu@gmail.com';

--menampilkan tanpa index
select * from penjual where id =1 or nama = 'banyubiru';
select * from penjual where email = 'banyu@gmail.com' or nama = 'megawati';
--membuat index
create index penjual_id_dan_nama_index on penjual(id, nama);
create index penjual_email_dan_nama_index on penjual(email,nama);
--full text search menggantikan like
CREATE INDEX idx_products_nama ON products USING gin(to_tsvector('english', nama));
SELECT * FROM products WHERE to_tsvector('english', nama) @@ to_tsquery('ayam');
--mencari tanpa index
select * from products
select * from penjual
where to_tsvector(nama) @@ to_tsquery('Es');
--mencari dengan index
--cek bahasa yang digunakan/yang didukung
select cfgname from pg_ts_config;
create index products_nama_search on products using gin(to_tsvector('indone');

--menampilkan dengan 
select*from products where nama@@ to_tsquery ('ayam');
--dengan operator
select*from products where nama@@ to_tsquery ('!Es');
--Table relationship
--membuat table wishlist
CREATE TABLE wishlist (
    id SERIAL NOT NULL,
    id_produk VARCHAR(10) NOT NULL,
    keterangan TEXT,
    PRIMARY KEY (id),
    CONSTRAINT fk_wishlist_produk FOREIGN KEY (id_produk) REFERENCES products (id)
);
ALTER TABLE products
ADD CONSTRAINT unique_id UNIQUE (id);

--jika insert salah
insert into wishlist(id_produk, keterangan)
values ('P0001','Ayam Bakar Kalasan'),
		('P0002','Ayam Bakar Banyumas'),
		('P0003','Ayam Bakar Pesawat Terbang');

select * from wishlist;
--tidak bisa di delete karena digunakan ditabel products/tabel lain
delete from products where id= 'P0003';
--tidak bisa di delete karena digunakan ditabel products/table lain
update wishlist
set id_produk = 'coba'
where id = 2;
--merubah behavior foregin key
--hapus dulu constrain di wishlist
alter table wishlist
drop constraint fk_wishlist_produk;

--buat lagi constrain dengan behaviornya
alter table wishlist
add constraint fk_wishlist_produk foregin key (id_produk) references product
on delete cascade on update cascade;

-- sekarang bisa dihapus tabel yang berelasi
insert into products(id,nama,harga,jumlah,category)
values ('abab','xXx',10000,100,'Minuman');
select * from wishlist(id_produk, keterangan)
values ('wawa','contoh bray');
delete from products where id='abab';

-- Membuat table dengan JSONB
CREATE TABLE produk_laptop(
id SERIAL PRIMARY KEY,
nama TEXT NOT NULL,
details JSONB
);

-- JSON data ke JSONB
INSERT INTO produk_laptop
	(nama,
	details)
	VALUES (
		'Laptop',
		'{
			"brand" : "Asus",
			"model" : "Vivo Book",
			"specs" : {
				"cpu" : "Core i7",
				"ram" : "32GB",
				"storage" : "1 Tera SSD NVME"
			}
		}'
	);
	--Query JSONB
	select * from produk_laptop;

	SELECT nama, details ->> 'brand' AS brand
	FROM produk_laptop;
--extrak nested value dengan jsonb
--menggunakan (-->) dan (->>)
SELECT
	nama, details -> 'specs' ->> 'cpu'AS cpu
FROM produk_laptop;

--extrak value dengan JSONB path
--dengan menggunakan #>>
select nama, details#>> '{specs, storage}' AS Storage
from produk_laptop;

--update jsonB
UPDATE produk_laptop
set details = jsonb_set(details, '{specs, storage}', '"512 SSD"')
where nama = 'Laptop';

--Query
select nama, details from produk_laptop;

--menghapus top level field data jsonb
--dengan operator (-)
update produk_laptop
set details = details - 'model'
where nama = 'laptop';
--Query 
select nama, details from produk_laptop;

--menghapus nested field
update produk_laptop
set details = details #- '{specs, cpu}'
where nama = 'laptop';

--Query
select nama,details from produk_laptop;

--JSONB query lanjut
--menggunakan JSONB arrays
INSERT INTO produk_laptop (nama,details)VALUES (
	'smartphone',
	'{
	"brand" : "Apple",
	"model" : "iphone 12",
	"tags" : ["electronics", "mobile", "new"]
	
	}'
);

--Query produk_laptop dengan specific tags
SELECT
	nama,
	details
FROM
	produk_laptop
WHERE
	details @> '{"tags" : ["mobile"]}';

--Menggunakan operator ? untuk query
SELECT
    nama,
    details
FROM
    produk_laptop
WHERE
    details->'tags' ? 'mobile';

--Menggabungkan jsonb data (merging)
--dengan operator ||
UPDATE produk_laptop
SET details = details || '{"warranty": "2 years"}'
WHERE nama = 'Laptop';

-- Query updated data
SELECT
    nama,
    details
FROM
    produk_laptop;

--Agregate jsonb
SELECT
	details->>'brand' AS brand,
	COUNT(*) AS count
FROM
	produk_laptop
GROUP BY
	details->>'brand';

--JSON ondex dengan gin dan btree index
--gin index
--Create GIN index
CREATE INDEX idx_produk_setails_features ON produk_laptop USING GIN ((details->'tags'));

--Query produk dengan specific features index
SELECT
	nama,
	details
FROM
	produk_laptop
WHERE 
	details->'tags' ? 'electronics';

--membuat b-tree index
--create B-tree index
CREATE INDEX idx_produk_setails_model ON produk_laptop ((details->>'model'));

--Query dengan index
SELECT
	nama,
	details
FROM
	produk_laptop
WHERE
	details->>'model' = 'XPS 13';

--Join
--Menampilkan table wishlist
select * from wishlist;

select * from wishlist
join products on wishlist.id_produk = products.id;

--Menampilkan secara custom
select products.id, products.nama, wishlist.keterangan
from wishlist join products on wishlist.id_produk = products.id;

--Menggunakan alias
select p.id, p.nama, w.keterangan
from wishlist as w join products as p on w.id_produk = p.id;

--Melakukan join ke multiple table
--sebelumnya kita akan menambahkan kolom di wishlist
alter table wishlist
add column id_customer int;

--Cek table wishlist
select * from customer;
--menambahkan relasi table wishlist ke id_customer terhadap table customer
alter table wishlist
add constraint fk_wishlist_customer
foreign key (id_customer)
references customer(id);

--update table wishlist
update wishlist
set id_customer = 1
where id in (2,3);

update wishlist
set id_customer = 4
where id = 4;

select * from wishlist;

--selanjutnya melakukan join multiple table
select c.email, p.id, p.nama, w.keterangan
from wishlist as w
    join products as p on w.id_produk = p.id
    join customer as c on c.id = w.id_customer;

--relasi antar table
--one to one relationship
--membuat table dompet dengan menggunakan UNIQUE
create table dompet (
    id serial not null,
    id_customer int not null,
    balance int not null default 0,
    primary key (id),
    constraint dompet_customer_unique unique (id_customer),
    constraint fk_wallet_customer foreign key (id_customer)
    references customer(id)
);

--cek table customer
select * from customer;

--Input data ke table customer
insert into dompet(id_customer, balance)
values (1, 1000000);

--Menampilkan table dompet
select * from dompet;

--Menampilkan table dompet
select * from dompet;

--lakukan join dengan relasi one to one
select * from customer join dompet on dompet.id_customer = customer.id;

--one to many relationship
--Membuat table categories
create table categories (
    id varchar(10) not null,
    nama varchar(100) not null,
    primary key (id)
);

--input data ke categories
insert into categories(id, nama)
values ('C0001', 'Makanan'),
       ('C0002', 'Minuman');

select * from categories;

--menambahkan column id_category di table products
alter table products
add column id_category varchar(10);

--Menambahkan relasi
alter table products
add constraint fk_product_category
foreign key (id_category)
references categories(id);

select * from products;

--update table products
update products
set id_category = 'C0001'
where category = 'Makanan';

update products
set id_category = 'C0002'
where category = 'Minuman';

--menghapus column category
alter table products
drop column category;
--melakukan join
select * from products
join categories on products.id_category = categories.id;

--many to many relationship
--membuat table order
create table orders (
    id serial not null,
    total int not null,
    order_date timestamp not null default current_timestamp,
    primary key (id)
);

--membuat table di tengah
create table orders_detail (
    id_product varchar(10) not null,
    id_order int not null,
    harga int not null,
    jumlah int not null,
    primary key (id_product, id_order)
);

--menambahkan constraint
alter table orders_detail
add constraint fk_orders_detail_product
foreign key (id_product) references products(id);

alter table orders_detail
add constraint fk_orders_detail_order
foreign key (id_order) references orders(id);

--insert data
insert into orders(total)
values (1), (1), (1);

select * from orders;

select * from products order by id;

insert into orders_detail(id_product, id_order, harga, jumlah)
values 
('P0001', 1, 5000, 3),
('P0002', 1, 3000, 2),
('P0003', 1, 2000, 2);

insert into orders_detail(id_product, id_order, harga, jumlah)
values ('P0004', 2, 5000, 3),
       ('P0005', 3, 3000, 2),
       ('P0006', 2, 2000, 2);

insert into orders_detail(id_product, id_order, harga, jumlah)
values ('P0001', 3, 5000, 3),
       ('P0004', 3, 3000, 2),
       ('P0005', 3, 2000, 2);

select * from orders_detail;

-- Melihat data order, detail sekaligus produknya
select *
from orders
join orders_detail on orders_detail.id_order = orders.id
join products on orders_detail.id_product = products.id;

-- Jika ingin melihat di orders ke berapa
select *
from orders
join orders_detail on orders_detail.id_order = orders.id
join products on orders_detail.id_product = products.id
where orders.id = 1;

create table categories (
    id varchar(10) not null,
    nama varchar(100) not null,
    primary key (id)
);

insert into categories (id, nama)
values ('C0003', 'Snack Basah'), ('C0004', 'Snack Kering');

select * from categories;

create table products (
    id varchar(10) not null,
    nama varchar(100) not null,
    harga integer not null,
    jumlah integer not null,
    id_category varchar(10),
    primary key (id),
    foreign key (id_category) references categories(id)
);

insert into products (id, nama, harga, jumlah, id_category)
values ('X001', 'Coba 1', 1000, 100, 'C0003'),
       ('X002', 'Test 2', 2000, 100, 'C0004');

select * from products;

select * from categories
left join products on products.id_category = categories.id;

select * from categories
right join products on products.id_category = categories.id;

select * from categories
full join products on products.id_category = categories.id;

select avg(harga) from products;

-- Mengambil produk dengan harga di atas rata-rata
select * from products
where harga > (select avg(harga) from products);

select * from (select * from products) as subquery;

select * from categories
inner join products on products.id_category = categories.id;

-- Mengambil harga produk
select products.harga as harga
from categories join products on products.id_category = categories.id;

select max(harga) from (select products.harga as harga
from categories join products on products.id_category = categories.id) as contoh;

create table bukutamu (
    id serial not null,
    email varchar(100) not null,
    title varchar(100) not null,
    content text,
    primary key (id)
);

insert into bukutamu (email, title, content)
values ('banyu.q@gmail.com', 'Banyu biru', 'Ini adalah banyu'),
       ('rab.q@gmail.com', 'rabs biru', 'Ini adalah rab'),
       ('rabs.q@gmail.com', 'rab saja', 'Ini saingain saya'),
       ('arief@gmail.com', 'rabu', 'Ini adalah rabu'),
       ('prabowo@gmail.com', 'kamis biru', 'Ini adalah kamis');

select * from bukutamu;

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

CREATE DATABASE tokopedia_order_history;

\c tokopedia_order_history;

CREATE TABLE orders
(
    id                    VARCHAR(100) PRIMARY KEY,
    seller_id             VARCHAR(100) NOT NULL,
    seller_name           VARCHAR(100) NOT NULL,
    buyer_id              VARCHAR(100) NOT NULL,
    buyer_name            VARCHAR(100) NOT NULL,
    shipping_name         VARCHAR(100) NOT NULL,
    shipping_address      VARCHAR(500) NOT NULL,
    shipping_phone        VARCHAR(25)  NOT NULL,
    logistic_id           VARCHAR(100) NOT NULL,
    logistic_name         VARCHAR(100) NOT NULL,
    payment_method_id     VARCHAR(100) NOT NULL,
    payment_method_name   VARCHAR(100) NOT NULL,
    total_quantity        INT          NOT NULL,
    total_weight          INT          NOT NULL,
    total_product_amount  BIGINT       NOT NULL,
    total_shipping_cost   BIGINT       NOT NULL,
    total_shopping_amount BIGINT       NOT NULL,
    service_charge        BIGINT       NOT NULL,
    total_amount          BIGINT       NOT NULL,
    created_at            TIMESTAMP NOT NULL
);

SELECT * FROM orders;

CREATE TABLE order_details
(
    id             VARCHAR(100) PRIMARY KEY,
    order_id       VARCHAR(100) NOT NULL,
    product_id     VARCHAR(100) NOT NULL,
    product_name   VARCHAR(250) NOT NULL,
    product_weight INT          NOT NULL,
    product_price  BIGINT       NOT NULL,
    quantity       INT          NOT NULL,
    total_amount   BIGINT       NOT NULL,
    CONSTRAINT fk_orders_to_order_details FOREIGN KEY (order_id) REFERENCES orders (id)
);

SELECT * FROM order_details;

-- Insert data into orders table
INSERT INTO orders(id, created_at, seller_id, seller_name, buyer_id, buyer_name, shipping_name, shipping_address,
                   shipping_phone, logistic_id, logistic_name, payment_method_id, payment_method_name, total_quantity, 
                   total_weight, total_product_amount, total_shipping_cost, total_shopping_amount, service_charge, total_amount)
VALUES ('122', NOW(), 'galery_olahraga_indonesia', 'Galeri Olahraga Indonesia', 'jokomorro', 'Joko Morro',
        'Budi Nugraha', 'Jalan Raya Xxx, Jakarta, DKI Jakarta, 434343', '089898989',
        'sicepat', 'Sicepat Gokil', 'debit_online', 'Debit Online', 5, 5360,
        508500, 60000, 568500, 1000, 569500);

SELECT * FROM orders;

-- Insert data into order_details table
INSERT INTO order_details(id, order_id, product_id, product_name, product_weight,
                          product_price, quantity, total_amount)
VALUES ('1', '122', 'p1', 'Basketball', 2300, 177900, 2, 355800);

INSERT INTO order_details(id, order_id, product_id, product_name, product_weight,
                          product_price, quantity, total_amount)
VALUES ('2', '122', 'p2', 'Basketball Warna', 500, 98900, 1, 98900);

INSERT INTO order_details(id, order_id, product_id, product_name, product_weight,
                          product_price, quantity, total_amount)
VALUES ('3', '122', 'p3', 'Pentil Pompa Bola', 54, 9900, 1, 9900);

INSERT INTO order_details(id, order_id, product_id, product_name, product_weight,
                          product_price, quantity, total_amount)
VALUES ('4', '122', 'p4', 'Pompa Bola', 198, 43900, 1, 43900);

SELECT * FROM order_details;

-- 2 Query
SELECT * FROM orders WHERE id = '122';
SELECT * FROM order_details WHERE order_id = '122';

-- 1 Query
SELECT * FROM orders as o JOIN order_details od ON o.id = od.order_id WHERE o.id = '122';

SELECT * FROM orders WHERE total_amount > 500000;

CREATE TABLE peserta (
    id VARCHAR(36),
    nama VARCHAR(255) NOT NULL,
    email VARCHAR(50) NOT NULL,
    nomor_handphone VARCHAR(50) NOT NULL,
    PRIMARY KEY (id),
    UNIQUE (email)
);

CREATE TABLE pengajar (
    id VARCHAR(36),
    nama VARCHAR(255) NOT NULL,
    email VARCHAR(50) NOT NULL,
    nomor_handphone VARCHAR(50) NOT NULL,
    PRIMARY KEY (id),
    UNIQUE (email)
);

CREATE TABLE kurikulum (
    id VARCHAR(36),
    kode VARCHAR(100),
    nama VARCHAR(200),
    aktif BOOLEAN,
    PRIMARY KEY (id),
    UNIQUE (kode)
);

CREATE TABLE kelas (
    id VARCHAR(36),
    id_pengajar VARCHAR(36) NOT NULL,
    nama VARCHAR(100) NOT NULL,
    hari VARCHAR(10) NOT NULL,
    waktu_mulai TIME NOT NULL,
    waktu_selesai TIME NOT NULL,
    PRIMARY KEY (id),
    UNIQUE (nama),
    FOREIGN KEY (id_pengajar) REFERENCES pengajar(id)
);

CREATE TABLE peserta_kelas (
    id_peserta VARCHAR(36),
    id_kelas VARCHAR(36),
    PRIMARY KEY (id_peserta, id_kelas),
    FOREIGN KEY (id_peserta) REFERENCES peserta(id),
    FOREIGN KEY (id_kelas) REFERENCES kelas(id)
);

CREATE TABLE sesi_belajar (
    id VARCHAR(36),
    id_kelas VARCHAR(36) NOT NULL,
    waktu_mulai TIMESTAMP NOT NULL,
    waktu_selesai TIMESTAMP,
    PRIMARY KEY (id),
    FOREIGN KEY (id_kelas) REFERENCES kelas(id)
);

CREATE TABLE presensi_peserta (
    id VARCHAR(36),
    id_sesi_belajar VARCHAR(36) NOT NULL,
    id_peserta VARCHAR(36) NOT NULL,
    waktu_datang TIMESTAMP NOT NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (id_sesi_belajar) REFERENCES sesi_belajar(id),
    FOREIGN KEY (id_peserta) REFERENCES peserta(id)
);

CREATE TABLE presensi_pengajar (
    id VARCHAR(36),
    id_sesi_belajar VARCHAR(36) NOT NULL,
    id_pengajar VARCHAR(36) NOT NULL,
    waktu_datang TIMESTAMP NOT NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (id_sesi_belajar) REFERENCES sesi_belajar(id),
    FOREIGN KEY (id_pengajar) REFERENCES pengajar(id)
);

CREATE TABLE jurnal_mutaabah (
    id VARCHAR(36),
    id_peserta VARCHAR(36) NOT NULL,
    waktu_kegiatan TIMESTAMP NOT NULL,
    keterangan VARCHAR(255) NOT NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (id_peserta) REFERENCES peserta(id)
);

CREATE TABLE ujian (
    id VARCHAR(36),
    id_kurikulum VARCHAR(36) NOT NULL,
    nama_ujian VARCHAR(100) NOT NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (id_kurikulum) REFERENCES kurikulum(id)
);

CREATE TABLE soal_ujian (
    id VARCHAR(36),
    id_ujian VARCHAR(36) NOT NULL,
    urutan INTEGER NOT NULL,
    pertanyaan TEXT NOT NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (id_ujian) REFERENCES ujian(id)
);

CREATE TABLE sesi_ujian (
    id VARCHAR(36),
    id_ujian VARCHAR(36),
    waktu_mulai TIMESTAMP,
    PRIMARY KEY (id),
    FOREIGN KEY (id_ujian) REFERENCES ujian(id)
);

CREATE TABLE sesi_ujian_peserta (
    id_peserta VARCHAR(36),
    id_sesi_ujian VARCHAR(36),
    waktu_datang TIMESTAMP NOT NULL,
    PRIMARY KEY (id_peserta, id_sesi_ujian),
    FOREIGN KEY (id_peserta) REFERENCES peserta(id),
    FOREIGN KEY (id_sesi_ujian) REFERENCES sesi_ujian(id)
);
create table sesi_ujian_pengajar (
	id_pengajar varchar(36),
	id_sesi_ujian varchar(36),
	waktu_datang timestamp not null,
	primary key (id_pengajar, id_sesi_ujian),
	foreign key (id_pengajar) references pengajar(id),
	foreign key (id_sesi_ujian) references sesi_ujian(id)
);

create table nilai (
	id varchar(36),
	id_sesi_ujian varchar(36),
	id_peserta varchar(36),
	nilai numeric(3,2) not null,
	keterangan varchar(255),
	primary key (id),
	foreign key (id_peserta) references peserta(id),
	foreign key (id_sesi_ujian) references sesi_ujian(id)
);

create table tagihan (
	id varchar(36),
	id_peserta varchar(36),
	tanggal_terbit date not null,
	tanggal_jatuh_tempo date not null,
	nilai numeric(19,2) not null,
	primary key (id),
	foreign key (id_peserta) references peserta(id)
);

create table pembayaran_tagihan (
	id varchar(36),
	id_tagihan varchar(36) not null,
	id_peserta varchar(36) not null,
	waktu_pembayaran timestamp not null,
	nilai_pembayaran numeric(19,2) not null,
	kanal_pembayaran varchar(20) not null,
	referensi varchar(50) not null,
	primary key (id),
	foreign key (id_tagihan) references tagihan(id),
	foreign key (id_peserta) references peserta(id)
);

CREATE TABLE program_sedekah (
    id VARCHAR(36),
    nama VARCHAR(36) NOT NULL,
    tanggal_mulai DATE NOT NULL,
    tanggal_selesai DATE NOT NULL,
    aktif BOOLEAN,
    PRIMARY KEY (id)
);

create table pembayaran_sedekah (
	id varchar(36),
	id_program_sedekah varchar(36) not null,
	id_peserta varchar(36) not null,
	waktu_pembayaran timestamp not null,
	nilai_pembayaran numeric(19,2) not null,
	kanal_pembayaran varchar(20) not null,
	referensi varchar(50) not null,
	primary key (id),
	foreign key (id_program_sedekah) references program_sedekah(id),
	foreign key (id_peserta) references peserta(id)
);
