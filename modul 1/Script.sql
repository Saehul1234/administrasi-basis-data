-- Saehul muttaqin
-- Nim: 22241020

-- modul 1

USE mart_undikma;
-- SELECT : mengambil 1 kolom tabel
SELECT nama_produk FROM ms_produk_dqlab;

-- SELECT : mengambil lebih dari 1 kolom
SELECT nama_produk, harga FROM ms_produk_dqlab;

-- SELECT : mengambil semua kolom
SELECT * FROM ms_produk_dqlab;

-- Latihan
-- Ambil kode produk,nama produk,dari tabel produk
SELECT kode_produk_nama_produk FROM ms_produk_dqlab;



-- Ambil semua kolom dari tabel penjualan
SELECT * FROM ms_produk_dqlab;


-- PREFIX dan ALIAS
-- FREFIX

-- Ambil nama produk dengan frefix tabel
SELECT  ms_produk_dqlab.nama_produk FROM ms_produk_dqlab;


-- Ambil nama produk dengan frefix database - tabel
SELECT mart_undikma.ms_produk_dqlab.nama_produk FROM ms_produk_dqlab;


-- ALIAS
-- ALIAS pada kolom
SELECT nama_produk as np FROM as_produk_dqlab;

-- Alias pada kolom tanpa as
SELECT nama_produk np FROM ms_produk_dqlab;

-- Alias pada tabel dengan as
SELECT nama_produk FROM ms_produk_dqlab AS mpd;


-- Alias pada tabel tanpa AS 
SELECT nama_produk FROM ms_produk_dqlab mpd;

-- Penggunaan Alias dan prefix
SELECT mpd.nama_produk np FROM ms_produk_dqlab mpd;

-- mencari customer dan alamatnya
SELECT nama_pelanggan, alamat FROM ms_pelanggan_dqlab;

-- mencari harga dan produk
SELECT nama_produk, harga FROM tr_penjualan_dqlab;

