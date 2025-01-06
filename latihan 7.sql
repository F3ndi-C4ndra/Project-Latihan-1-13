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