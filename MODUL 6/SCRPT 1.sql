-- nama :saehul muttaqin
-- nim : 22241020



-- NO 1
SELECT nama_produk, qty, harga, diskon_persen, qty, (diskon_persen/100)*harga AS diskon, 
(qty * (harga - diskon_persen/100)*harga) AS total_pendapatan FROM tr_penjualan_dqlab 
ORDER BY total_pendapatan DESC LIMIT 5;

-- NO 2
SELECT kategori_produk, total_revenue, 
CASE 
WHEN total_revenue >= 900000 THEN 'target achieved' 
WHEN total_revenue < 900000 THEN 'less performance' 
ELSE 'follow up' 
END AS status
FROM (
SELECT p.kategori_produk, 
SUM(tp.qty * tp.harga * (1 - tp.diskon_persen / 100)) AS total_revenue
FROM tr_penjualan_dqlab AS tp
JOIN ms_produk_dqlab AS p ON tp.kode_produk = p.kode_produk
GROUP BY p.kategori_produk
ORDER BY total_revenue DESC
LIMIT 3
) AS top_categories;

-- NO 3
SELECT mpd.nama_produk, 
DATEDIFF('2020-06-30', MAX(tpd.tgl_transaksi)) AS days_since_last_purchase
FROM ms_produk_dqlab AS mpd
LEFT JOIN tr_penjualan_dqlab AS tpd ON mpd.kode_produk = tpd.kode_produk
GROUP BY mpd.nama_produk
ORDER BY days_since_last_purchase DESC
LIMIT 3;