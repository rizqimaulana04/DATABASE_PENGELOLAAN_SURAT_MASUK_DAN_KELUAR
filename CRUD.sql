-- CREATE

-- Isian tabel pemimpin
INSERT INTO pemimpin VALUES
(5987,201,'Budi','Direktur'),
(1507,202,'Ani','Manager'),
(1928,203,'Rudi','Supervisor');

-- Isian tabel operator
INSERT INTO operator VALUES
(001,5987,'Dina'),
(002,1507,'Eko'),
(003,1928,'Fani');

-- Isian tabel departemen
INSERT INTO departemen VALUES
(201,'Keuangan','Jl. Merdeka No.1'),
(202,'Pemasaran','Jl. Sudirman No.2'),
(203,'Produksi','Jl. Industri No.3');

-- Isian tabel disposisi
INSERT INTO disposisi VALUES
(123,'Undangan','Hadir pada acara peresmian gedung baru'),
(234,'Pengumuman','Menyampaikan informasi terbaru tentang produk'),
(345,'Permintaan','Mengirimkan data penjualan bulan lalu');

-- Isian tabel SuratMasuk
INSERT INTO SuratMasuk VALUES
(10751,001,123,'2023-06-25','Surat undangan dari PT Maju Jaya'),
(10234,002,234,'2023-06-26','Surat pengumuman dari PT Berkah Abadi'),
(10892,003,345,'2023-06-27','Surat permintaan dari PT Sejahtera Makmur');

-- Isian tabel SuratKeluar
INSERT INTO SuratKeluar VALUES
(15701,001,123,'2023-06-28','Surat konfirmasi kehadiran ke PT Maju Jaya'),
(43201,002,234,'2023-06-29','Surat balasan pengumuman ke PT Berkah Abadi'),
(29801,003,345,'2023-06-30','Surat pengiriman data penjualan ke PT Sejahtera Makmur');

-- Isian tabel LaporanTransaksi
INSERT INTO LaporanTransaksi VALUES
(5479,10751,15701,'2023-06-28','Laporan transaksi antara PT Maju Jaya dan PT Keuangan'),
(8156,10234,43201,'2023-06-29','Laporan transaksi antara PT Berkah Abadi dan PT Pemasaran'),
(9239,10892,29801,'2023-06-30','Laporan transaksi antara PT Sejahtera Makmur dan PT Produksi');

-- READ
-- Tampilan tabel Pemimpin
SELECT * FROM pemimpin;

-- Tampilan tabel Operator
SELECT * FROM operator;

-- Tampilan tabel Depertemen
SELECT * FROM depertemen;

-- Tampilan tabel Disposisi
SELECT * FROM disposisi;

-- Tampilan tabel Surat Masuk
SELECT * FROM SuratMasuk;

-- Tampilan tabel Surat Keluar
SELECT * FROM SuratKeluar;

-- Tampilan tabel Laporan Transaksi
SELECT * FROM LaporanTransaksi;

-- UPDATE

UPDATE LaporanTransaksi SET isi = 'Laporan Transaksi antara PT Berkah Abadi dan PT Eka Jaya'
WHERE id_laporan = 8156;

-- DELETE

DELETE FROM TableName
WHERE condition;