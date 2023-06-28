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
