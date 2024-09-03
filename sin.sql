-- phpMyAdmin SQL Dump
-- version 4.8.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 18 Bulan Mei 2024 pada 10.18
-- Versi server: 10.1.33-MariaDB
-- Versi PHP: 7.2.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sin`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_users`
--

CREATE TABLE `tbl_users` (
  `fullname` varchar(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `institution` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_users`
--

INSERT INTO `tbl_users` (`fullname`, `username`, `institution`, `email`, `password`) VALUES
('sdn303malteng', 'admin', 'itb', 'sdn303malteng@gmail.com', '1234');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_kelas`
--

CREATE TABLE `tb_kelas` (
  `IDKelas_` int(11) NOT NULL,
  `NamaKelas_` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_kelas`
--

INSERT INTO `tb_kelas` (`IDKelas_`, `NamaKelas_`) VALUES
(1, 'Kelas 1'),
(2, 'Kelas 2'),
(3, 'Kelas 3'),
(4, 'Kelas 4'),
(5, 'Kelas 5'),
(6, 'Kelas 6');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_mapel`
--

CREATE TABLE `tb_mapel` (
  `IDMapel_` int(11) NOT NULL,
  `NamaMapel_` varchar(30) NOT NULL,
  `Kkm_` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_mapel`
--

INSERT INTO `tb_mapel` (`IDMapel_`, `NamaMapel_`, `Kkm_`) VALUES
(1, 'Bahasa Indonesia', 78),
(2, 'Mulok', 76),
(3, 'Matematika', 78),
(4, 'PPKn', 77),
(13, 'Penjas', 75),
(15, 'Pendidikan Agama Islam', 78),
(16, 'SPDP', 77);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_nilai`
--

CREATE TABLE `tb_nilai` (
  `IDNilai_` int(11) NOT NULL,
  `IDSiswa_` int(11) NOT NULL,
  `IDMapel_` int(11) NOT NULL,
  `Semester_` tinyint(1) NOT NULL,
  `Tugas1_` int(3) NOT NULL,
  `Tugas2_` int(3) NOT NULL,
  `Tugas3_` int(3) NOT NULL,
  `Uts_` int(3) NOT NULL,
  `Uas_` int(3) NOT NULL,
  `Tgl_` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_nilai`
--

INSERT INTO `tb_nilai` (`IDNilai_`, `IDSiswa_`, `IDMapel_`, `Semester_`, `Tugas1_`, `Tugas2_`, `Tugas3_`, `Uts_`, `Uas_`, `Tgl_`) VALUES
(20, 602, 2, 2, 90, 90, 80, 80, 90, '2024-05-10'),
(22, 606, 3, 2, 3, 3, 2, 2, 2, '2024-05-10');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_siswa`
--

CREATE TABLE `tb_siswa` (
  `IDSiswa_` int(11) NOT NULL,
  `Nis_` int(7) NOT NULL,
  `NamaSiswa_` varchar(50) NOT NULL,
  `Alamat_` varchar(50) NOT NULL,
  `IDKelas_` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_siswa`
--

INSERT INTO `tb_siswa` (`IDSiswa_`, `Nis_`, `NamaSiswa_`, `Alamat_`, `IDKelas_`) VALUES
(602, 98, 'wati', 'pesona', 2),
(604, 12, 'wati', 'stain', 4),
(605, 13, 'hattwat', 'stain', 5),
(606, 13, 'hh', 'dd', 1);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `tbl_users`
--
ALTER TABLE `tbl_users`
  ADD PRIMARY KEY (`fullname`);

--
-- Indeks untuk tabel `tb_kelas`
--
ALTER TABLE `tb_kelas`
  ADD PRIMARY KEY (`IDKelas_`);

--
-- Indeks untuk tabel `tb_mapel`
--
ALTER TABLE `tb_mapel`
  ADD PRIMARY KEY (`IDMapel_`);

--
-- Indeks untuk tabel `tb_nilai`
--
ALTER TABLE `tb_nilai`
  ADD PRIMARY KEY (`IDNilai_`),
  ADD KEY `IDSiswa_` (`IDSiswa_`),
  ADD KEY `IDMapel_` (`IDMapel_`);

--
-- Indeks untuk tabel `tb_siswa`
--
ALTER TABLE `tb_siswa`
  ADD PRIMARY KEY (`IDSiswa_`),
  ADD KEY `IDKelas_` (`IDKelas_`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `tb_kelas`
--
ALTER TABLE `tb_kelas`
  MODIFY `IDKelas_` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `tb_mapel`
--
ALTER TABLE `tb_mapel`
  MODIFY `IDMapel_` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT untuk tabel `tb_nilai`
--
ALTER TABLE `tb_nilai`
  MODIFY `IDNilai_` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT untuk tabel `tb_siswa`
--
ALTER TABLE `tb_siswa`
  MODIFY `IDSiswa_` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=607;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `tb_nilai`
--
ALTER TABLE `tb_nilai`
  ADD CONSTRAINT `tb_nilai_ibfk_1` FOREIGN KEY (`IDSiswa_`) REFERENCES `tb_siswa` (`IDSiswa_`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tb_nilai_ibfk_2` FOREIGN KEY (`IDMapel_`) REFERENCES `tb_mapel` (`IDMapel_`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `tb_siswa`
--
ALTER TABLE `tb_siswa`
  ADD CONSTRAINT `tb_siswa_ibfk_2` FOREIGN KEY (`IDKelas_`) REFERENCES `tb_kelas` (`IDKelas_`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
