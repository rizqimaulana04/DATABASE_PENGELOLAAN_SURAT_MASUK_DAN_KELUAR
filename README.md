# DATABASE_PENGELOLAAN_SURAT_MASUK_DAN_KELUAR

![img](gambar/ER-D.png)<br>


ER-D (Entity-Relationship Diagram) adalah sebuah model yang digunakan untuk memvisualisasikan hubungan antara entitas dalam sebuah sistem atau basis data. Berikut adalah penjelasan ER-D yang berisi entitas dan atribut-atribut yang disebutkan:

Entitas "Pemimpin":
-	id_pemimpin (atribut): ID unik untuk setiap pemimpin.
-	id_departemen (atribut): ID departemen yang dipimpin oleh pimpinan.
-	nama (atribut): Nama pemimpin.
-	jabatan (atribut): pemimpin Jabatan.

Entitas "Operator":
-	id_operator (atribut): ID unik untuk setiap operator.
-	id_pemimpin (atribut): Pemimpin ID yang mengawasi operator.
-	nama (atribut): Nama operator.

Entitas "Departemen":
-	id_departemen (atribut): ID unik untuk setiap departemen.
-	nama (atribut): Nama departemen.
-	alamat (atribut): Alamat departemen.

Entitas "Surat Masuk":
-	no_surat_masuk (atribut): Nomor surat masuk.
-	id_operator (atribut): ID operator yang menerima surat masuk.
-	id_disposisi (atribut): ID disposisi yang diberikan pada surat masuk.
-	tgl_terima (atribut): Tanggal surat diterima.
-	catatan (atribut): Catatan terkait surat masuk.

Entitas "Disposisi":
-	id_disposisi (atribut): ID unik untuk setiap disposisi.
-	tipe_surat (atribut): Tipe surat yang terdisposisi.
-	catatan (atribut): Catatan terkait disposisi.
-	Entitas "Surat Keluar":
-	no_surat_k (atribut): Nomor surat keluar.
-	id_operator (atribut): ID operator yang mengirim surat keluar.
-	id_disposisi (atribut): ID disposisi yang terkait dengan surat keluar.
-	tgl_kirim (atribut): Tanggal surat dikirim.
-	catatan (atribut): Catatan terkait surat keluar.

Entitas "Laporan Transaksi":
-	id_laporan (atribut): ID unik untuk setiap laporan transaksi.
-	no_surat_m (atribut): Nomor surat masuk yang terkait.
-	no_surat_k (atribut): Nomor surat keluar yang terkait.
-	tanggal (atribut): Tanggal laporan transaksi dibuat.
-	isi (atribut): Isi dari laporan transaksi.

Dalam ER-D ini, terdapat beberapa hubungan antara entitas:

1.	Hubungan antara Pemimpin dan Operator:
Pemimpin (id_pemimpin) memiliki hubungan "memiliki" dengan Operator (id_pemimpin).

2.	Hubungan antara Operator dan Departemen:
Operator (id_departemen) memiliki hubungan "tergabung dalam" dengan Departemen (id_departemen).

3.	Hubungan antara Surat Masuk dan Operator:
Surat Masuk (id_operator) memiliki hubungan "diterima oleh" dengan Operator (id_operator).

4.	Hubungan antara Surat Masuk dan Disposisi:
Surat Masuk (id_disposisi) memiliki hubungan "memiliki" dengan Disposisi (id_disposisi).

5.	Hubungan antara Surat Keluar dan Operator:
Surat Keluar (id_operator) memiliki hubungan "dikirim oleh" dengan Operator (id_operator).

6.	Hubungan antara Surat Keluar dan Disposisi:
Surat Keluar (id_disposisi) memiliki hubungan "memiliki" dengan Disposisi (id_disposisi).

7.	Hubungan antara Laporan Transaksi, Surat Masuk, dan Surat Keluar:
Laporan Transaksi (no_surat_m) memiliki hubungan "terkait dengan" Surat Masuk (no_surat_masuk).
Laporan Transaksi (no_surat_k) memiliki hubungan "terkait dengan" Surat Keluar (no_surat_k).

Dengan adanya hubungan-hubungan ini, kita dapat merepresentasikan bagaimana entitas-entitas dalam sistem yang saling terkait dan berinteraksi satu sama lain dalam ER-D

-- Membuat tabel Pemimpin
CREATE TABLE Pemimpin (
id_pemimpin INT PRIMARY KEY,
id_departemen INT,
nama VARCHAR(255),
jabatan VARCHAR(255),
FOREIGN KEY (id_departemen) REFERENCES Departemen(id_departemen)
);
# **DDL(Data Definition Lenguge)**

DDL (Data Definition Language) adalah kumpulan perintah atau kata sandi dalam bahasa pemrograman yang digunakan untuk mendefinisikan struktur atau skema basis data. DDL digunakan untuk membuat, mengubah, atau menghapus objek-objek dalam basis data, seperti tabel, kolom, indeks, dan kendala.

1. Tabel "Pemimpin":
- id_pemimpin: Kolom dengan tipe data INT sebagai primary key yang menyimpan ID unik untuk setiap pemimpin.
id_departemen: Kolom dengan tipe data INT yang menyimpan ID departemen yang dipimpin oleh pimpinan.
nama: Kolom dengan tipe data VARCHAR(255) yang menyimpan nama pemimpin.
postingan: Kolom dengan tipe data VARCHAR(255) yang menyimpan jabatan pemimpin.<br>
```sql
CREATE TABLE Pemimpin (
id_pemimpin INT PRIMARY KEY,
id_departemen INT,
nama VARCHAR(255),
jabatan VARCHAR(255),
FOREIGN KEY (id_departemen) REFERENCES Departemen(id_departemen)
);
```

2. Tabel "Operator":
- id_operator: Kolom dengan tipe data INT sebagai primary key yang menyimpan ID unik untuk setiap operator.
id_pemimpin: Kolom dengan tipe data INT yang menyimpan ID pemimpin yang mengawasi operator.
nama: Kolom dengan tipe data VARCHAR(255) yang menyimpan nama operator.
```sql
CREATE TABLE Operator (
id_operator INT PRIMARY KEY,
id_pemimpin INT,
nama VARCHAR(255),
FOREIGN KEY (id_pemimpin) REFERENCES Pemimpin(id_pemimpin)
);
```

3. Tabel "Departemen":
- id_departemen: Kolom dengan tipe data INT sebagai primary key yang menyimpan ID unik untuk setiap departemen.
nama: Kolom dengan tipe data VARCHAR(255) yang menyimpan nama departemen.
alamat: Kolom dengan tipe data VARCHAR(255) yang menyimpan alamat departemen.
```sql
CREATE TABLE Departemen (
id_departemen INT PRIMARY KEY,
nama VARCHAR(255),
alamat VARCHAR(255)
);
```

4. Tabel "Surat Masuk":
- no_surat_masuk: Kolom dengan tipe data INT sebagai primary key yang menyimpan nomor surat masuk.
id_operator: Kolom dengan tipe data INT yang menyimpan ID operator yang menerima surat masuk.
id_disposisi: Kolom dengan tipe data INT yang menyimpan ID disposisi yang diberikan pada surat masuk.
tgl_terima: Kolom dengan tipe data DATE yang menyimpan tanggal surat diterima.
catatan: Kolom dengan tipe data TEXT yang menyimpan catatan terkait surat masuk.
```sql
CREATE TABLE SuratMasuk (
no_surat_masuk INT PRIMARY KEY,
id_operator INT,
id_disposisi INT,
tgl_terima DATE,
catatan TEXT,
FOREIGN KEY (id_operator) REFERENCES Operator(id_operator),
FOREIGN KEY (id_disposisi) REFERENCES Disposisi(id_disposisi)
);
```

5. Tabel "Disposisi":
- id_disposisi: Kolom dengan tipe data INT sebagai primary key yang menyimpan ID unik untuk setiap disposisi.
tipe_surat: Kolom dengan tipe data VARCHAR(255) yang menyimpan tipe surat yang terdisposisi.
catatan: Kolom dengan tipe data TEXT yang menyimpan catatan terkait disposisi.
```sql
CREATE TABLE Disposisi (
id_disposisi INT PRIMARY KEY,
tipe_surat VARCHAR(255),
catatan TEXT
);
```

6. Tabel "Surat Keluar":
- no_surat_k: Kolom dengan tipe data INT sebagai primary key yang menyimpan nomor surat keluar.
id_operator: Kolom dengan tipe data INT yang menyimpan ID operator yang mengirim surat keluar.
id_disposisi: Kolom dengan tipe data INT yang menyimpan ID disposisi yang diberikan pada surat keluar.
tgl_kirim: Kolom dengan tipe data DATE yang menyimpan tanggal surat terkirim.
catatan: Kolom dengan tipe data TEXT yang menyimpan catatan terkait surat keluar.
```sql
CREATE TABLE SuratKeluar (
no_surat_k INT PRIMARY KEY,
id_operator INT,
id_disposisi INT,
tgl_kirim DATE,
catatan TEXT,
FOREIGN KEY (id_operator) REFERENCES Operator(id_operator),
FOREIGN KEY (id_disposisi) REFERENCES Disposisi(id_disposisi)
);
```

7. Tabel "Laporan Transaksi":
- id_laporan: Kolom dengan tipe data INT sebagai primary key yang menyimpan ID unik untuk setiap laporan transaksi.
no_surat_m: Kolom dengan tipe data INT yang menyimpan nomor surat masuk terkait laporan transaksi.
no_surat_k: Kolom dengan tipe data INT yang menyimpan nomor surat keluar terkait laporan transaksi.
tanggal: Kolom dengan tipe data DATE yang menyimpan tanggal laporan transaksi.
isi: Kolom dengan tipe data TEXT yang menyimpan isi laporan transaksi.
```sql
CREATE TABLE LaporanTransaksi (
id_laporan INT PRIMARY KEY,
no_surat_m INT,
no_surat_k INT,
tanggal DATE,
isi TEXT,
FOREIGN KEY (no_surat_m) REFERENCES SuratMasuk(no_surat_masuk),
FOREIGN KEY (no_surat_k) REFERENCES SuratKeluar(no_surat_k)
);
```
