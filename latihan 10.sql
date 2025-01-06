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