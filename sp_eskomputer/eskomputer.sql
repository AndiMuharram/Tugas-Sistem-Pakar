-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 07 Feb 2023 pada 05.19
-- Versi server: 10.4.24-MariaDB
-- Versi PHP: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `eskomputer`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `aturan`
--

CREATE TABLE `aturan` (
  `id_aturan` int(11) NOT NULL,
  `id_penyakit` int(11) NOT NULL,
  `id_gejala` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `aturan`
--

INSERT INTO `aturan` (`id_aturan`, `id_penyakit`, `id_gejala`) VALUES
(63, 1, 43),
(64, 1, 44),
(65, 1, 55),
(66, 2, 45),
(67, 2, 46),
(68, 2, 47),
(69, 2, 53),
(70, 2, 54),
(71, 2, 57),
(72, 3, 48),
(73, 3, 49),
(74, 3, 50),
(75, 3, 52),
(76, 3, 56),
(77, 3, 59),
(78, 3, 61),
(79, 4, 43),
(80, 4, 45),
(81, 4, 51),
(82, 4, 54),
(83, 5, 52),
(84, 5, 58),
(85, 5, 62),
(86, 6, 43),
(87, 6, 45),
(88, 6, 46),
(89, 6, 47),
(90, 7, 63),
(91, 7, 60),
(92, 7, 64);

-- --------------------------------------------------------

--
-- Struktur dari tabel `gejala`
--

CREATE TABLE `gejala` (
  `id_gejala` int(11) NOT NULL,
  `kode_gejala` varchar(5) NOT NULL,
  `nama_gejala` text NOT NULL,
  `nilai_cf` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `gejala`
--

INSERT INTO `gejala` (`id_gejala`, `kode_gejala`, `nama_gejala`, `nilai_cf`) VALUES
(43, 'G01', 'Tombol hidup tapi tidak ada gambar tertampil dimonitor', 0.8),
(44, 'G02', 'Terdapat garis horisontal/ vertikal ditengah monitor', 0.8),
(45, 'G03', 'Tidak ada tampilan awal bios', 0.8),
(46, 'G04', 'Muncul Pesan eror pada bios (isi pesan selalu berbeda tergantung pada kondisi tertentu)', 0.4),
(47, 'G05', 'Alarm bios berbunyi', 0.4),
(48, 'G06', 'Terdengar suara aneh pada HDD', 0.8),
(49, 'G07', 'Sering terjadi hang/crash saat menjalankan aplikasi', 0.8),
(50, 'G08', 'Selalu Scan disk ketika booting', 0.8),
(51, 'G09', 'Muncul pesan error saat menjalankan aplikasi', 0.4),
(52, 'G10', 'Device driver informasi tidak terdeteksi dalam device manager, meski driver telah di install', 0.4),
(53, 'G11', 'Tiba-tiba OS melakukan restart otomatis', 0.4),
(54, 'G12', 'Keluarnya blue screen pada OS (isi pesan selalu berbeda tergantung pada kondisi tertentu)', 0.8),
(55, 'G13', 'Tampak blok hitam, dan gambar tidak simetris/acak', 1),
(56, 'G14', 'Device tidak terdeteksi dalam bios', 0.8),
(57, 'G15', 'Keluar beep berulang-ulang kali', 0.4),
(58, 'G16', 'Sebagain/seluruh karakter inputan mati', 1),
(59, 'G17', 'Informasi deteksi yang salah dalam bios', 0.4),
(60, 'G18', 'Mati total', 0.8),
(61, 'G19', 'Belum sampai sistem operasi sudah restart lagi', 0.4),
(62, 'G20', 'Keluar bunyi beep panjang pada saat laptop dinyalakan', 0.4),
(63, 'G21', 'Dihidupkan agak sulit', 0.4),
(64, 'G22', 'Kipas power supply dan kipas processor berputar', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `pengguna`
--

CREATE TABLE `pengguna` (
  `id_pengguna` int(11) NOT NULL,
  `nama_lengkap` varchar(30) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL,
  `level` enum('Admin','User') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `pengguna`
--

INSERT INTO `pengguna` (`id_pengguna`, `nama_lengkap`, `username`, `password`, `level`) VALUES
(1, 'Administrator', 'admin', 'admin', 'Admin'),
(2, 'dhandy', 'dhandy', '123', 'User');

-- --------------------------------------------------------

--
-- Struktur dari tabel `penyakit`
--

CREATE TABLE `penyakit` (
  `id_penyakit` int(11) NOT NULL,
  `kode_penyakit` varchar(5) NOT NULL,
  `nama_penyakit` varchar(50) NOT NULL,
  `deskripsi` text NOT NULL,
  `solusi` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `penyakit`
--

INSERT INTO `penyakit` (`id_penyakit`, `kode_penyakit`, `nama_penyakit`, `deskripsi`, `solusi`) VALUES
(1, 'K01', 'Monitor/LCD Rusak', '', '-	Solusi pertama bisa dengan	matikan komputer dengan hard off sampai mati lalu tekan beberapa detik untuk menghilangkan muatan kapasitas lalu nyalakan. Jika masih muncul gejala kerusakan,		maka\r\nkemungkinan	ada kerusakan hardware, cek konektor.\r\n-	Solusi	untuk\r\nmengatasinya LCD buram dapat dilakukan hanya	dengan\r\nmengganti	tabung katoda monitor.\r\n-	Sedangkan untuk warna yang tidak lengkap bisa mengganti mainboard atau mengganti kabel VGA.\r\n'),
(2, 'K02', 'RAM Rusak', '', '- Cobalah bersihkan RAM menggunakan karet penghapus dengan cara menggosok kuningan pada RAM.\r\n'),
(3, 'K03', 'HDDR Rusak', '', '-	Cek	penghubung dengan soketnya.\r\n-	Cek Harddisk, jika terdengar suara keras maka ada bad cector, secepatnya data di\r\nbackup sebelum terjadi Harddisk Mati total.\r\n'),
(4, 'K04', 'VGA Rusak', '', '- Matikan computer dan lepaskan VGA Card, selanjutnya pasang dengan teliti sampai dipastikan sudah VGA Card terpasang dengan\r\nbenar.\r\n'),
(5, 'K05', 'Keyboard Rusak', '', '-	Matikan	kembali komputer dan cek apakah kabel keyboard telah tertancap dengan benar ke CPU.\r\n-	Jika perlu keyboard bisa dibersihkan dengan menyedotnya dengan menggunakan penyedot debu atau bersihkan dengan kuas.\r\n-	Pembersihan dilakukan pada waktu komputer mati dan keyboard lepas dari portnya.\r\n'),
(6, 'K06', 'Prosesor Rusak', '', '-	Buka prosesor dari slotnya,	bersihkan prosessor dengan tisue dan beri pasta agar tetap dingin.\r\n-	Cek pin slot di motherboard apakah tidak ada yg cacat, apabila cacat silahkan rapikan\r\n-	Prosessor	dan\r\nmotherboard harus cocok, apabila tidak cocok maka harus di ganti.\r\n'),
(7, 'K07', 'Motherboard rusak', '', 'Periksa	disekitar motherboard apakah ada    kapasitor     yang\r\nmengembung, jika ada segera ganti jika tidak\r\nbisa	bawa	ketempat service.\r\n\r\n');

-- --------------------------------------------------------

--
-- Struktur dari tabel `riwayat`
--

CREATE TABLE `riwayat` (
  `id_riwayat` int(11) NOT NULL,
  `id_pengguna` int(11) DEFAULT NULL,
  `tanggal` date NOT NULL,
  `id_penyakit` int(11) DEFAULT NULL,
  `metode` enum('Forward Chaining','Certainty Factor') NOT NULL,
  `nilai` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `aturan`
--
ALTER TABLE `aturan`
  ADD PRIMARY KEY (`id_aturan`) USING BTREE,
  ADD KEY `id_penyakit` (`id_penyakit`),
  ADD KEY `id_gejala` (`id_gejala`);

--
-- Indeks untuk tabel `gejala`
--
ALTER TABLE `gejala`
  ADD PRIMARY KEY (`id_gejala`);

--
-- Indeks untuk tabel `pengguna`
--
ALTER TABLE `pengguna`
  ADD PRIMARY KEY (`id_pengguna`) USING BTREE;

--
-- Indeks untuk tabel `penyakit`
--
ALTER TABLE `penyakit`
  ADD PRIMARY KEY (`id_penyakit`);

--
-- Indeks untuk tabel `riwayat`
--
ALTER TABLE `riwayat`
  ADD PRIMARY KEY (`id_riwayat`),
  ADD KEY `id_penyakit` (`id_penyakit`),
  ADD KEY `id_pengguna` (`id_pengguna`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `aturan`
--
ALTER TABLE `aturan`
  MODIFY `id_aturan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=93;

--
-- AUTO_INCREMENT untuk tabel `gejala`
--
ALTER TABLE `gejala`
  MODIFY `id_gejala` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;

--
-- AUTO_INCREMENT untuk tabel `pengguna`
--
ALTER TABLE `pengguna`
  MODIFY `id_pengguna` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `penyakit`
--
ALTER TABLE `penyakit`
  MODIFY `id_penyakit` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `riwayat`
--
ALTER TABLE `riwayat`
  MODIFY `id_riwayat` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `aturan`
--
ALTER TABLE `aturan`
  ADD CONSTRAINT `aturan_ibfk_1` FOREIGN KEY (`id_penyakit`) REFERENCES `penyakit` (`id_penyakit`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `aturan_ibfk_2` FOREIGN KEY (`id_gejala`) REFERENCES `gejala` (`id_gejala`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Ketidakleluasaan untuk tabel `riwayat`
--
ALTER TABLE `riwayat`
  ADD CONSTRAINT `riwayat_ibfk_1` FOREIGN KEY (`id_penyakit`) REFERENCES `penyakit` (`id_penyakit`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `riwayat_ibfk_2` FOREIGN KEY (`id_pengguna`) REFERENCES `pengguna` (`id_pengguna`) ON DELETE CASCADE ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
