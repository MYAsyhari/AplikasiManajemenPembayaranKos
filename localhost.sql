-- phpMyAdmin SQL Dump
-- version 4.0.10.14
-- http://www.phpmyadmin.net
--
-- Inang: localhost:3306
-- Waktu pembuatan: 02 Sep 2016 pada 18.15
-- Versi Server: 10.0.26-MariaDB
-- Versi PHP: 5.6.20

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Basis data: `ismoolco_matakos`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `member`
--

CREATE TABLE IF NOT EXISTS `member` (
  `member_id` int(11) NOT NULL AUTO_INCREMENT,
  `name_m` varchar(16) NOT NULL,
  `room_m` varchar(4) NOT NULL,
  `bill_m` varchar(7) NOT NULL,
  `phone_m` varchar(16) DEFAULT NULL,
  `note_m` varchar(250) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`member_id`),
  KEY `user_id` (`user_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data untuk tabel `member`
--

INSERT INTO `member` (`member_id`, `name_m`, `room_m`, `bill_m`, `phone_m`, `note_m`, `user_id`) VALUES
(1, 'John', '1', '500000', '085736252525', 'Tes', 12);

-- --------------------------------------------------------

--
-- Struktur dari tabel `transaction`
--

CREATE TABLE IF NOT EXISTS `transaction` (
  `transaction_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(16) NOT NULL,
  `room` varchar(4) NOT NULL,
  `bill` varchar(8) NOT NULL,
  `date` varchar(16) NOT NULL,
  `total` varchar(11) NOT NULL,
  `note` varchar(250) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`transaction_id`),
  UNIQUE KEY `transaction_id` (`transaction_id`),
  KEY `fk_user_id` (`user_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=40 ;

--
-- Dumping data untuk tabel `transaction`
--

INSERT INTO `transaction` (`transaction_id`, `name`, `room`, `bill`, `date`, `total`, `note`, `user_id`) VALUES
(1, 'Asyhari', '3', '600000', '20/04/2009', '600000', 'Tes1', 0),
(2, 'John Kennedy', '7', '600000', '21/04/1996', '600000', 'coba aja', 0),
(17, 'Kaka', '67', '700000', '15/07/2016', '700000', 'Tes1', 12),
(28, 'Rolli', '23', '90000', '24/08/2016', '90000', 'utang', 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(16) NOT NULL,
  `username` varchar(16) NOT NULL,
  `password` varchar(255) NOT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=24 ;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`user_id`, `name`, `username`, `password`) VALUES
(1, 'Asyhari', 'mAsyhari', 'rahasia'),
(2, 'Freggra', '0', '1234'),
(3, 'Angga', 'nAngga', '0'),
(4, 'Tantowi', 'mTantowi', 'hehe'),
(5, 'Superman', 'ManOfSteel', 'Crypton'),
(8, 'Yusuf', 'mYusuf', 'Sarijadi78'),
(9, 'Tes', 'mTes', 'Kost'),
(10, 'Lagi', 'ayolah', 'kost'),
(11, 'Tes2', 'tes2', '$2y$10$wRt1Cp0mJQH/x6XEyMEPv.gR47hUqt/6OfSycTvrlzHV83vZ/jx3S'),
(12, 'Ashar', 'Ashar', '$2y$10$lh5an5qNHjPHOX5dZAUaieGOWZX4U2bITCv/vvm35e5ayF.2ewIAW'),
(16, 'Admin', 'admin', '$2y$10$Sw/y2cIgNCQIOQkrhriRDe/l4.7QmJvQk2vVVG7zaDHeAGqQ0Fy8S'),
(14, 'Arif', 'arif', '$2y$10$DjWmhIioSq1au34LwIHAUub5X6tnF0ghlRVPGx/gnxnknd/NfaOTS'),
(15, 'rolly', 'rolly', '$2y$10$Hn8ZgnLvZB/rDYOD/i28j.1TBmFgW8gPRcornYrw5c5iKtBbvjPpy');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
