-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Anamakine: localhost:3306
-- Üretim Zamanı: 14 May 2024, 03:32:48
-- Sunucu sürümü: 10.6.17-MariaDB
-- PHP Sürümü: 8.1.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Veritabanı: `lbkargon_proje`
--

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Tablo döküm verisi `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`) VALUES
(1, 'info@ultimateexpress-logistics.com', 'admin123');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `tracking`
--

CREATE TABLE `tracking` (
  `id` int(11) NOT NULL,
  `tracking_number` varchar(255) NOT NULL,
  `sender_name` varchar(255) NOT NULL,
  `sender_contact` varchar(255) NOT NULL,
  `sender_email` varchar(255) NOT NULL,
  `sender_address` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL,
  `dispatch_location` varchar(255) NOT NULL,
  `receiver_email` varchar(255) NOT NULL,
  `receiver_name` varchar(255) NOT NULL,
  `receiver_contact` varchar(255) NOT NULL,
  `receiver_address` varchar(255) NOT NULL,
  `dispatch_date` varchar(255) NOT NULL,
  `delivery_date` varchar(255) NOT NULL,
  `pdesc` varchar(255) NOT NULL,
  `current_location` varchar(255) DEFAULT NULL,
  `date` datetime NOT NULL DEFAULT current_timestamp(),
  `amount` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Tablo döküm verisi `tracking`
--

INSERT INTO `tracking` (`id`, `tracking_number`, `sender_name`, `sender_contact`, `sender_email`, `sender_address`, `status`, `dispatch_location`, `receiver_email`, `receiver_name`, `receiver_contact`, `receiver_address`, `dispatch_date`, `delivery_date`, `pdesc`, `current_location`, `date`, `amount`) VALUES
(44, 'JDA3U8M01I', 'Batuhan Cengiz', '25 TL', 'blabla@balaal', '4369 Lucky Duck Drive , Gibsonia', 'In Transit', '561 Snowbird Lane, Lincoln', 'abdjkadsak@jakasddja', 'Gülten Batuk', '12311233211231', '13 Hartford St.\r\nSummerfield, FL 34491', '2024-04-16', '2024-04-27', 'Tişört', '8639 James Ave. Villa Rica, GA 30180', '2024-05-12 05:04:22', ''),
(45, 'C6NJ40EWIT', 'Emirhan Karacan', '50', '4el4g@fthcapital.com', '142 Cross Ave.\r\nHoffman Estates, IL 60169', 'Arrived', '7122 West Vermont Ave. Clover, SC 29710', 'rwill10@jagomail.com', 'Ejder Uysal', '16273471364146', '9482 Cactus Street\r\nHarrisonburg, VA 22801', '2024-02-27', '2024-03-13', 'Sweatshirt', '', '2024-05-13 00:40:16', ''),
(46, 'BKT7SZQVMR', 'Nergis Gözübüyük', '32', 'irochkashalava@coredp.com', '290 Gulf Street\r\nSanta Clara, CA 95050', 'Picked Up', '99 Hillcrest Lane Tuscaloosa, AL 35405', 'fernandoamaro@usetw-dev.com', 'Kara Kahraman', '632256324537325689', '45 St Paul St.\r\nMahwah, NJ 07430', '2024-04-26', '2024-05-25', 'Şapka', '', '2024-05-13 00:44:50', ''),
(47, 'M159JN8UBZ', 'Kudret Balcan', '12', 'relda1234@v3faucet.com', 'Yeni Tabakhaneler Uzunyol sokak, No:4', 'On hold', 'Kadıköy,İstanbul', 'wbrain@mailybest.com', 'Baki Çaglar', '892875248352', 'Çankaya,Ankara', '2024-05-18', '2024-05-25', 'Şapka', '', '2024-05-13 00:47:27', ''),
(48, 'T8NDLHJYU7', 'Sevil Görgülü', '7', 'knopochka0797@bendnsend.com', 'AKDERE 27.S N 1/1-2.-3, Akdere', 'In Transit', 'Eminönü', 'ldanby@sigmachiumass.com', 'Mansur Ayik', '522354522545342', 'YÜKSEL C N 30/8, Kızılay', '2024-05-13', '2024-06-22', 'Ceket', NULL, '2024-05-13 01:05:17', ''),
(49, 'WOBF4YM3GL', 'Demir Çalik', '6', 'antoney@cmsdeutschland.com', 'Firüzköy Yolu, Üniversite Mah. Bağlar İçi Cd. No:6 - 34630 Avcılar', 'Arrived', 'Seyhan', 'nimans10@prodottiemilia.com', 'Civan Öztekin', '675675855675786567', 'Bahçelievler', '2023-12-21', '2024-01-25', 'Çorap', NULL, '2024-05-13 01:07:33', ''),
(50, 'A6J75SP2YC', 'Behiye Önder', '2', 'arefyevak@apf-apj-opb.com', 'DEMİRCİLER SİT..GİRİŞİ CAMİ KARŞISI N 945, Siteler', 'Picked Up', 'Gaziosmanpaşa', 'howardlxc7u@douiitystsaa.com', 'Cansu Agçay', '21112312132312', 'SELANİK-1 C N 41/3, Kızılay', '2024-05-21', '2024-05-24', 'Terlik', NULL, '2024-05-13 01:09:16', ''),
(51, 'M1TG3R8VBE', 'Les Benjamins Ankara', '12', 'rustydusty9@straffordbuildinggroup.com', 'ORG.SAN.BÖL.1.CD NO 34 KAYSERİ', 'Inactive', 'Şişli', 'dimanstm2@gold-coin-star.com', 'Acelya Bilgi', '4324342342323', 'Markacubes E-Ticaret - Fatih Mah. Yakacık Cad. No:111/A Sancaktepe / İstanbul', '2024-04-09', '2024-05-01', 'Bilezik', '', '2024-05-13 01:14:23', ''),
(52, '9AZUCIYWNP', 'Les Benjamins İzmir', '45', 'alex0476@embeans.com', 'AÇIKTAN S N 49/3., Siteler', 'In Transit', 'Sabiha Gökçen Havaalanı', 'oleg79dom@dongaaaaaaa.cloud', 'Esmeray Usak', '06675865576756', 'Budapest', '2024-04-10', '2024-05-17', 'Kumaş', NULL, '2024-05-13 01:17:19', ''),
(53, '6YQNMTH09O', 'Les Benjamins İzmir', '13', 'kama1947@stevensbeautyspa.com', 'Alsancak,İzmir', 'Picked Up', 'Alsancak,İzmir', 'gorexp@hitthemarketing.com', 'Hakan Bilal', '41232131321', 'KUŞADASI AYDIN', '2023-12-21', '2023-12-22', 'Boxer', NULL, '2024-05-13 01:20:00', ''),
(54, 'QMCHPVDULO', 'Les Benjamins Dubai', '34 £', 'lanavac@straffordbuildinggroup.com', 'Dubai,Burj Khalifa', 'Arrived', 'Dubai', 'chefpp@resumegreatness.com', 'Toygar Süleymanoglu', '7876473873468', 'Ümraniye', '2024-05-08', '2024-06-22', '2 Ceket 1 Şapka', NULL, '2024-05-13 01:23:39', ''),
(55, '7XVNOWFZC1', 'Les Benjamins Akasya', '25 Tl', 'myyes00@dealyaari.com', 'Akasya AVM 1. Kat Acıbadem, Çeçen Sk. No:25 34660 Üsküdar/İstanbul', 'Delivered', 'Akasya Avm', 'galkop@jagomail.com', 'Aynur Batur', '54323623456356', 'KEMALPAŞA C N 135, Altındağ', '2024-04-23', '2024-05-10', '2 Tişört', NULL, '2024-05-13 01:26:43', '');

--
-- Dökümü yapılmış tablolar için indeksler
--

--
-- Tablo için indeksler `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `tracking`
--
ALTER TABLE `tracking`
  ADD PRIMARY KEY (`id`);

--
-- Dökümü yapılmış tablolar için AUTO_INCREMENT değeri
--

--
-- Tablo için AUTO_INCREMENT değeri `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Tablo için AUTO_INCREMENT değeri `tracking`
--
ALTER TABLE `tracking`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
