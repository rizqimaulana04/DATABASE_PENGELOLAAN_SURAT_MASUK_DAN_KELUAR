-- Membuat tabel Pemimpin
CREATE TABLE Pemimpin (
id_pemimpin INT PRIMARY KEY,
id_departemen INT,
nama VARCHAR(255),
jabatan VARCHAR(255),
FOREIGN KEY (id_departemen) REFERENCES Departemen(id_departemen));

-- Membuat tabel Operator
CREATE TABLE Operator (
id_operator INT PRIMARY KEY,
id_pemimpin INT,
nama VARCHAR(255),
FOREIGN KEY (id_pemimpin) REFERENCES Pemimpin(id_pemimpin));

-- Membuat tabel Departemen
CREATE TABLE Departemen (
id_departemen INT PRIMARY KEY,
nama VARCHAR(255),
alamat VARCHAR(255));

-- Membuat tabel Surat Masuk
CREATE TABLE SuratMasuk (
no_surat_masuk INT PRIMARY KEY,
id_operator INT,
id_disposisi INT,
tgl_terima DATE,
catatan TEXT,
FOREIGN KEY (id_operator) REFERENCES Operator(id_operator),
FOREIGN KEY (id_disposisi) REFERENCES Disposisi(id_disposisi));

-- Membuat tabel Disposisi
CREATE TABLE Disposisi (
id_disposisi INT PRIMARY KEY,
tipe_surat VARCHAR(255),
catatan TEXT);

-- Membuat tabel Surat Keluar
CREATE TABLE SuratKeluar (
no_surat_k INT PRIMARY KEY,
id_operator INT,
id_disposisi INT,
tgl_kirim DATE,
catatan TEXT,
FOREIGN KEY (id_operator) REFERENCES Operator(id_operator),
FOREIGN KEY (id_disposisi) REFERENCES Disposisi(id_disposisi));

-- Membuat tabel Laporan Transaksi
CREATE TABLE LaporanTransaksi (
id_laporan INT PRIMARY KEY,
no_surat_m INT,
no_surat_k INT,
tanggal DATE,
isi TEXT,
FOREIGN KEY (no_surat_m) REFERENCES SuratMasuk(no_surat_masuk),
FOREIGN KEY (no_surat_k) REFERENCES SuratKeluar(no_surat_k));