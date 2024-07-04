-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 27 Jun 2024 pada 09.21
-- Versi server: 10.4.32-MariaDB
-- Versi PHP: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `rms`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `buku`
--

CREATE TABLE `buku` (
  `buku_id` int(10) NOT NULL,
  `isbn` varchar(13) DEFAULT NULL,
  `buku_judul` varchar(225) DEFAULT NULL,
  `buku_harga` int(25) DEFAULT NULL,
  `jenis_buku` varchar(225) DEFAULT NULL,
  `author` varchar(225) DEFAULT NULL,
  `nim` varchar(15) DEFAULT NULL,
  `nip` varchar(20) DEFAULT NULL,
  `staff_id` int(25) DEFAULT NULL,
  `buku_status` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `buku`
--

INSERT INTO `buku` (`buku_id`, `isbn`, `buku_judul`, `buku_harga`, `jenis_buku`, `author`, `nim`, `nip`, `staff_id`, `buku_status`) VALUES
(1, '9780606323451', 'Harry Potter Dan Batu Bertuah', 68000, 'hobi', 'Jk Rowling', '2355301051', NULL, 1230, 'Diproses'),
(2, '9786238882267', 'Bandit-Bandit Berkelas', 69000, 'hobi', 'Tereliye', '2355301128', NULL, 1230, 'Diproses'),
(3, '9786020822341', 'Tentang Kamu', 69000, 'hobi', 'Tereliye', '2355301137', NULL, 1231, 'Diproses'),
(4, '9786020331607', 'Daun Yang Jatuh Tak Pernah Membenci Angin', 70000, 'hobi', 'Tereliye', '2355301139', NULL, 1231, 'Sudah Ditambahkan'),
(5, '9786238829644', 'Daun Yang Jatuh Tak Pernah Membenci Angin', 74000, 'hobi', 'Tereliye', '2355301141', NULL, 1232, 'Ditolak'),
(6, '9786020324784', 'Hujan', 80000, 'hobi', 'Tereliye', '2355301154', NULL, 1232, 'Diproses'),
(7, '9786024532420', 'PENGEMBANGAN IT (2020)', 203000, 'referensi', 'Marno Al Bagas', NULL, '209002', 1233, 'Diproses'),
(8, '9786028981729', 'Penelitian Teknik Informatika', 91500, 'referensi', 'Ade Johar Maturidi', NULL, '209002', 1233, 'Sudah Ditambahkan'),
(9, '9786230207136', 'Teknik Pengolahan Audio & Video Kompetensi Keahlian Multimedia Program Keahlian Teknik Komputer dan Informatika', 125000, 'referensi', 'Johnie Rogers Swanda Pasaribu, S.Kom., M.Kom.', NULL, '209002', 1234, 'Sudah Ditambahkan'),
(10, '9789792257809', 'Daun Yang Jatuh Tak Pernah Membenci Angin', 80000, 'hobi', 'Tereliye', '2355301163', NULL, 1234, 'Ditolak');

-- --------------------------------------------------------

--
-- Struktur dari tabel `dosen`
--

CREATE TABLE `dosen` (
  `nip` varchar(20) NOT NULL,
  `nama_dosen` varchar(225) DEFAULT NULL,
  `email_dosen` varchar(225) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `dosen`
--

INSERT INTO `dosen` (`nip`, `nama_dosen`, `email_dosen`, `password`) VALUES
('007001', 'Dr. Agus Urip Ari Wibowo, S.T., M.T.', 'agus@pcr.ac.id', 'fdf169558242ee051cca1479770ebac3'),
('017218', 'Dr. Juni Nurma Sari, S.Kom., M.MT.', '017218', '582d74b3e980c1915e16fe6326bfda3d'),
('027614', 'Erwin Setyo Nugroho, S.T., M.Eng.', 'erwinsn@pcr.ac.id', '785f0b13d4daf8eee0d11195f58302a4'),
('048009', 'Meilany Dewi, S.T., M.T.', 'meilany@pcr.ac.id', '851f4c7ba9196eaa2d4d265a3c647fe1'),
('048110', 'Rahmat Suhatman, S.T., M.T.', 'rahmat@pcr.ac.id', 'af2a4c9d4c4956ec9d6ba62213eed568'),
('068407', 'Silvana Rasio Henim, S.ST, M.T', 'silvana@pcr.ac.id', 'f850bce37f95a998a2362e26062e7a22'),
('078303', 'Ibnu Surya, S.T., M.T.', 'ibnu@pcr.ac.id', '195ace8d50de761419faf08845304398'),
('078310', 'Kartina Diah Kesuma Wardhani, S.T., M.T.', 'diah@pcr.ac.id', 'b1980b34d5180cf2051d0fe400cb86e0'),
('078517', 'Ardianto Wibowo, S.Kom., M.T.', 'ardie@pcr.ac.id', '3444ca587416f5c6fff4c79dd2ad59c6'),
('098202', 'Rika Perdana Sari, S.T., M.Eng.', 'rika@pcr.ac.id', 'e32994c67f9a773e841f9e97bd26f014'),
('108501', 'Ananda, S.Kom., M.T., Ph.D.', 'ananda@pcr.ac.id', '7f363f401f336a7925f28655b6a44447'),
('138701', 'Muhammad Arif Fadhly Ridha, S.Kom., M.T.', 'fadhly@pcr.ac.id', '1c85ab8936624541ee1b7a98b02c4573'),
('159007', 'Jan Alif Kreshna, S.ST., M.Sc.', 'janalif@pcr.ac.id', 'fa27ef3ef6570e32a79e74deca7c1bc3'),
('159208', 'Shumaya Resty Ramadhani, S.ST., M.Sc.', 'shumaya@pcr.ac.id', '59a44823841e7cab520889a00216ca03'),
('159221', 'Puja Hanifah, S.S.T., M.MSI.', 'puja@pcr.ac.id', '3e0aefb9d54be38bc0c33290da1f277f'),
('199105', 'Yuliska, S.T., M.Eng.', 'yuliska@pcr.ac.id', '5c547113b8e06c794fb0442d32ef6547'),
('209002', 'Erzi Hidayat, S.T., M.Kom.', 'erzi@pcr.ac.id', '2d613f08654ea989a9e7bfcf9445d506');

-- --------------------------------------------------------

--
-- Struktur dari tabel `mahasiswa`
--

CREATE TABLE `mahasiswa` (
  `nim` varchar(15) NOT NULL,
  `nama_mhs` varchar(225) DEFAULT NULL,
  `email_mhs` varchar(225) DEFAULT NULL,
  `mhs_kelas` varchar(5) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `mahasiswa`
--

INSERT INTO `mahasiswa` (`nim`, `nama_mhs`, `email_mhs`, `mhs_kelas`, `password`) VALUES
('2355301051', 'Dhini Handayani', 'dhini23ti@mahasiswa.pcr.ac.id', '1TIE', '55c052b8885f48e4262e012769137a23'),
('2355301128', 'Muhammad Daffa Rizky Hidayat', 'daffa@mahasiswa.pcr.ac.id', '1TIE', '135a4e22cda0e0a68499e6d6e2a861aa'),
('2355301137', 'Henry Teja', 'henry23ti@mahasiswa.pcr.ac.id', '1TIE', '027e4180beedb29744413a7ea6b84a42'),
('2355301139', 'Muhammad Majid Avindra', 'majid23ti@mahasiswa.pcr.ac.id', '1TIE', '3ba3a0d9c25e0029b49851015145333d'),
('2355301141', 'Muhammad Othmar Safaraz', 'othmar23ti@mahasiswa.pcr.ac.id', '1TIE', 'ad97210f51130101665e72c2d9498a3a'),
('2355301154', 'Muhammad Ihsan', 'ihsan23ti@mahasiswa.pcr.ac.id', '1TIE', 'f9c8074d5a013e0729373f8f74cd0648'),
('2355301163', 'Nita Salsabilla ', 'nita23ti@mahasiswa.pcr.ac.id', '1TIE', '1eb6d605e0698d0c6d3121c8cd45e6b5'),
('2355301164', 'Noval Nugraha ', 'noval23ti@mahasiswa.pcr.ac.id', '1TIE', '467bae90b19ee6eb379a749cb924f726'),
('2355301181', 'Rini Gustia ', 'rini23ti@mahasiswa.pcr.id', '1TIE', 'b86872751de1e13c142d050acfd09842'),
('2355301182', 'Rizky Satrio Wardhana', 'satrio23ti@mahasiswa.pcr.ac.id', '1TIE', 'eec470e2f66e97a2ff82bcb62897375a');

-- --------------------------------------------------------

--
-- Struktur dari tabel `modul`
--

CREATE TABLE `modul` (
  `modul_id` int(10) NOT NULL,
  `modul_judul` varchar(225) DEFAULT NULL,
  `author` varchar(225) DEFAULT NULL,
  `nip` varchar(20) DEFAULT NULL,
  `staff_id` int(25) DEFAULT NULL,
  `modul_status` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `modul`
--

INSERT INTO `modul` (`modul_id`, `modul_judul`, `author`, `nip`, `staff_id`, `modul_status`) VALUES
(1, 'Komunikasi Data dan Jaringan Komputer', 'Dr. Agus Urip Ari Wibowo, S.T., M.T.', '007001', 1235, 'Sedang Di Cetak'),
(2, 'Logika Informatika', 'Erzi Hidayat, S.T., M.Kom.', '209002', 1235, 'Sedang Di Cetak'),
(3, 'Komunikasi Data dan Jaringan Komputer', 'Erwin Setyo Nugroho, S.T., M.Eng.', '027614', 1236, 'Sedang Di Cetak'),
(4, 'Project Scheduling and Tracking', 'Rahmat Suhatman, S.T., M.T.', '048110', 1236, 'Sedang Di Cetak'),
(5, 'Arsitektur Sistem Komputer', 'Ibnu Surya, S.T., M.T.', '078303', 1237, 'Sedang Di Cetak'),
(6, 'Chapter 10 - Dynamic Trading: E-Auctions, Bartering, and Negotiations', 'Silvana Rasio Henim, S.ST, M.T', '068407', 1237, 'Diterima'),
(7, 'Pemrograman Bahasa Assembly', 'Ananda, S.Kom., M.T., Ph.D.', '108501', 1238, 'Diterima'),
(8, 'ANALISIS dan DESAIN SISTEM INFORMASI', 'Jan Alif Kreshna, S.ST., M.Sc.', '159007', 1238, 'Diterima'),
(9, 'Perancangan Sistem Dengan Menggunakan UML', 'Ardianto Wibowo, S.Kom., M.T.', '078517', 1239, 'Diterima'),
(10, 'PEMETAAN ER KE RELASIONAL', 'Shumaya Resty Ramadhani, S.ST., M.Sc.', '159208', 1239, 'Diterima');

-- --------------------------------------------------------

--
-- Struktur dari tabel `staff`
--

CREATE TABLE `staff` (
  `staff_id` int(25) NOT NULL,
  `staff_nama` varchar(225) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `staff`
--

INSERT INTO `staff` (`staff_id`, `staff_nama`, `password`) VALUES
(1230, 'admin1', 'admin1'),
(1231, 'admin2', 'admin2'),
(1232, 'admin3', 'admin3'),
(1233, 'admin4', 'admin4'),
(1234, 'admin5', 'admin5'),
(1235, 'admin6', 'admin6'),
(1236, 'admin7', 'admin7'),
(1237, 'admin8', 'admin8'),
(1238, 'admin9', 'admin9'),
(1239, 'admin10', 'admin10\r\n');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `buku`
--
ALTER TABLE `buku`
  ADD PRIMARY KEY (`buku_id`),
  ADD KEY `nim` (`nim`),
  ADD KEY `nip` (`nip`),
  ADD KEY `buku_staff` (`staff_id`);

--
-- Indeks untuk tabel `dosen`
--
ALTER TABLE `dosen`
  ADD PRIMARY KEY (`nip`);

--
-- Indeks untuk tabel `mahasiswa`
--
ALTER TABLE `mahasiswa`
  ADD PRIMARY KEY (`nim`);

--
-- Indeks untuk tabel `modul`
--
ALTER TABLE `modul`
  ADD PRIMARY KEY (`modul_id`),
  ADD KEY `modul_dosen` (`nip`),
  ADD KEY `modul_staff` (`staff_id`);

--
-- Indeks untuk tabel `staff`
--
ALTER TABLE `staff`
  ADD PRIMARY KEY (`staff_id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `buku`
--
ALTER TABLE `buku`
  MODIFY `buku_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT untuk tabel `modul`
--
ALTER TABLE `modul`
  MODIFY `modul_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `buku`
--
ALTER TABLE `buku`
  ADD CONSTRAINT `buku_ibfk_1` FOREIGN KEY (`nim`) REFERENCES `mahasiswa` (`nim`),
  ADD CONSTRAINT `buku_ibfk_2` FOREIGN KEY (`nip`) REFERENCES `dosen` (`nip`),
  ADD CONSTRAINT `buku_staff` FOREIGN KEY (`staff_id`) REFERENCES `staff` (`staff_id`);

--
-- Ketidakleluasaan untuk tabel `modul`
--
ALTER TABLE `modul`
  ADD CONSTRAINT `modul_dosen` FOREIGN KEY (`nip`) REFERENCES `dosen` (`nip`),
  ADD CONSTRAINT `modul_staff` FOREIGN KEY (`staff_id`) REFERENCES `staff` (`staff_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
