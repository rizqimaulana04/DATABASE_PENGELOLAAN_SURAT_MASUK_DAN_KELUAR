-- GABUNG antara tabel "Pemimpin" dan "Departemen" berdasarkan kolom "id_departemen":
SELECT p.id_pemimpin, p.nama, p.jabatan, d.nama AS nama_departemen
FROM pemimpin p
JOIN departemen d ON p.id_departemen = d.id_departemen;

-- JOIN antara tabel "Operator", "Pemimpin", dan "Departemen" berdasarkan kolom "id_pemimpin":
SELECT o.id_operator, o.nama AS nama_operator, p.nama AS nama_pemimpin, d.nama AS nama_departemen
FROM operator o
JOIN pemimpin p ON o.id_pemimpin = p.id_pemimpin
JOIN departemen d ON p.id_departemen = d.id_departemen;

-- GABUNG antara tabel "SuratMasuk", "Operator", dan "Disposisi" berdasarkan kolom "id_operator" dan "id_disposisi":
SELECT sm.no_surat_masuk, sm.tgl_terima, sm.catatan, o.nama AS nama_operator, d.tipe_surat, d.catatan AS catatan_disposisi
FROM SuratMasuk sm
JOIN operator o ON sm.id_operator = o.id_operator
JOIN disposisi d ON sm.id_disposisi = d.id_disposisi;

-- GABUNG antara tabel "SuratKeluar", "Operator", dan "Disposisi" berdasarkan kolom "id_operator" dan "id_disposisi":
SELECT sk.no_surat_k, sk.tgl_kirim, sk.catatan, o.nama AS nama_operator, d.tipe_surat, d.catatan AS catatan_disposisi
FROM SuratKeluar sk
JOIN operator o ON sk.id_operator = o.id_operator
JOIN disposisi d ON sk.id_disposisi = d.id_disposisi;

-- GABUNG antara tabel "LaporanTransaksi", "SuratMasuk", dan "SuratKeluar" berdasarkan kolom "no_surat_m" dan "no_surat_k":
SELECT lt.id_laporan, lt.tanggal, lt.isi, sm.no_surat_masuk, sk.no_surat_k
FROM LaporanTransaksi lt
JOIN SuratMasuk sm ON lt.no_surat_m = sm.no_surat_masuk
JOIN SuratKeluar sk ON lt.no_surat_k = sk.no_surat_k;