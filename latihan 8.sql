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
	