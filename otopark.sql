-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Anamakine: 127.0.0.1
-- Üretim Zamanı: 17 Kas 2019, 15:13:43
-- Sunucu sürümü: 10.4.6-MariaDB
-- PHP Sürümü: 7.3.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Veritabanı: `otopark`
--

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `araclar`
--

CREATE TABLE `araclar` (
  `id` int(11) NOT NULL,
  `otopark_yer_id` int(11) NOT NULL,
  `plaka` varchar(15) NOT NULL,
  `otopark_giris_tarihi` datetime NOT NULL,
  `otopark_cikis_tarihi` datetime DEFAULT NULL,
  `otopark_bekleme_tarihi` int(11) DEFAULT NULL,
  `ucret_kesildimi` int(11) DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Tablo döküm verisi `araclar`
--

INSERT INTO `araclar` (`id`, `otopark_yer_id`, `plaka`, `otopark_giris_tarihi`, `otopark_cikis_tarihi`, `otopark_bekleme_tarihi`, `ucret_kesildimi`) VALUES
(2, 0, '34MO9696', '2019-11-15 20:00:00', '2019-11-17 15:36:20', 12, 1),
(3, 0, '34AE5523', '2019-11-17 12:00:00', '2019-11-17 15:53:57', 12, 1),
(4, 5, '34EE4512', '2019-11-17 16:46:39', '2019-11-17 16:46:54', 13, 1),
(5, 6, '34YA2323', '2019-11-17 16:49:12', NULL, NULL, 0),
(6, 6, '34kj1212', '2019-11-17 16:50:12', NULL, NULL, 0);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `kasa`
--

CREATE TABLE `kasa` (
  `id` int(11) NOT NULL,
  `yer_id` int(11) NOT NULL,
  `alinan_ucret` int(11) NOT NULL,
  `tarih` date NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Tablo döküm verisi `kasa`
--

INSERT INTO `kasa` (`id`, `yer_id`, `alinan_ucret`, `tarih`) VALUES
(1, 0, 20, '2019-11-17'),
(2, 5, 20, '2019-11-17');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `otopark_yerleri`
--

CREATE TABLE `otopark_yerleri` (
  `id` int(11) NOT NULL,
  `lokasyon_adi` varchar(255) NOT NULL,
  `kapasite` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Tablo döküm verisi `otopark_yerleri`
--

INSERT INTO `otopark_yerleri` (`id`, `lokasyon_adi`, `kapasite`) VALUES
(1, 'Fatih', 100),
(2, 'Eminonu', 100),
(5, 'Bayrampasa', 100),
(6, 'Gaziosmanpasa', 100);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `ucretler`
--

CREATE TABLE `ucretler` (
  `id` int(11) NOT NULL,
  `saat` varchar(10) NOT NULL,
  `fiyat` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Tablo döküm verisi `ucretler`
--

INSERT INTO `ucretler` (`id`, `saat`, `fiyat`) VALUES
(1, '0-1', 0),
(2, '1-3', 5),
(3, '3-7', 8),
(4, '7-15', 20),
(5, '15-24', 25);

--
-- Dökümü yapılmış tablolar için indeksler
--

--
-- Tablo için indeksler `araclar`
--
ALTER TABLE `araclar`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `kasa`
--
ALTER TABLE `kasa`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `otopark_yerleri`
--
ALTER TABLE `otopark_yerleri`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `ucretler`
--
ALTER TABLE `ucretler`
  ADD PRIMARY KEY (`id`);

--
-- Dökümü yapılmış tablolar için AUTO_INCREMENT değeri
--

--
-- Tablo için AUTO_INCREMENT değeri `araclar`
--
ALTER TABLE `araclar`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Tablo için AUTO_INCREMENT değeri `kasa`
--
ALTER TABLE `kasa`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Tablo için AUTO_INCREMENT değeri `otopark_yerleri`
--
ALTER TABLE `otopark_yerleri`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Tablo için AUTO_INCREMENT değeri `ucretler`
--
ALTER TABLE `ucretler`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
