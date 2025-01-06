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