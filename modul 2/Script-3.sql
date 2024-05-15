-- Nama :saehul muttaqin
-- Nim :22241020
-- modul 2

-- Use database
USE mart_undikma;

-- NILAI LITERAL
-- Menggunakan SELECT Statement untuk nilai literal untuk angka
SELECT 7 AS nomor_punggung;

-- Menampilkan nilai literal beberapa tipe data
SELECT 7 AS angka, true AS nilai_logika, 'DQLAB' as Teks;

-- NULL

-- Menampilkan NULL
SELECT NULL AS kosong;

-- OPERATOR MATEMATIKA

-- Kalkulasi ekspresi Matematika
SELECT 5%2 AS sisa_bagi, 5/2 AS hasil_bagi_1, 5 DIV 2 AS hasil_bagi_2;

-- Latihan mandiri
SELECT 4*2 AS hasil_kali, (4*8)%7 AS hasil_kali, (4*8) MOD 7 AS hasil_kali, (4*8)/7 AS hasil_bagi;


SELECT * FROM tr_penjualan_dqlab;


-- EKSPRESI MATEMATIKA
--Menampilkan hasil kali dari kolom qty dan harga

SELECT qty*harga AS total FROM tr_penjualan_dqlab;

-- OPERATOR PERBANDINGAN
-- Menampilkan hasil perbandingan nilai literal
SELECT  5=5, 5<>5, 5<>4, 5!=5, 5!=4, 5>4;

-- Latihan mandiri
SELECT 1=true, 1=false, 5>=5, 5.2=5.20000, NULL=1, NULL=NULL;

SELECT qty<=3 FROM tr_penjualan_dqlab;

-- FUNGSI
SELECT POW(3,2), ROUND(3,14), ROUND(3,54), ROUND(3.155,1), ROUND(3.155,2), FLOOR(4.28), FLOOR(4.78), CEILING  (4.39), CEILING (4.55); 

-- Fungsi tanggal
SELECT NOW(), YEAR(now()), DATEDIFF(now(),'2003-04-07'), DAY('2003-04-07'); 

-- Latihan mandiri
SELECT DATEDIFF('2003-05-02', NOW()), YEAR ('2003-04-07'), MONTH ('2003-05-02'), DAY ('2003-05-02'), YEAR (NOW());

-- Menampilkan selisih transaksi terkahir dengan tanggal saat ini
SELECT DATEDIFF(NOW(), tgl_transaksi) AS Selisih_hari FROM tr_penjualan_dqlab; 

-- Where statement
-- mwngambil nama produk dan qty yang qtynya lebih dari 3
SELECT nama_produk, qty FROM tr_penjualan_dqlab WHERE qty >3;

-- mengambil nama produk dan qty  yang qtynya lebih dari 3 dan transaksi pada bulan 6
SELECT nama_produk, qty FROM tr_penjualan_dqlab WHERE qty >3 AND MONTH (tgl_transaksi) = 6;

-- mengambil nama produk,qty dengan nama tertentu
SELECT nama_produk, qty FROM tr_penjualan_dqlab WHERE nama_produk = "Flashdisk DQLab 32 GB";

-- LIKE
-- mengambil nama produk yang berawalan huruf 'f'
SELECT nama_produk FROM tr_penjualan_dqlab WHERE nama_produk LIKE 'f%';

-- Latihan mandiri
SELECT nama_produk FROM tr_penjualan_dqlab WHERE nama_produk LIKE '_a%';
SELECT kategori_produk FROM ms_produk_dqlab WHERE kategori_produk LIKE '%t%';
SELECT  kategori_produk FROM ms_produk_dqlab WHERE kategori_produk LIKE '%un%';

--
SELECT nama_produk FROM tr_penjualan_dqlab WHERE nama_produk LIKE 'f%' AND qty > 2;