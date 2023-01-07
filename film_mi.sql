-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 02, 2023 at 07:54 PM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `film mi`
--

-- --------------------------------------------------------

--
-- Table structure for table `adres`
--

CREATE TABLE `adres` (
  `adresID` int(11) NOT NULL,
  `kullaniciID` int(11) NOT NULL,
  `mahalleID` int(11) NOT NULL,
  `semtID` int(11) NOT NULL,
  `ilceID` int(11) NOT NULL,
  `ilID` int(11) NOT NULL,
  `ekAciklama` text COLLATE utf8_turkish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cinsiyet`
--

CREATE TABLE `cinsiyet` (
  `cinsiyetID` int(11) NOT NULL,
  `cinsiyetAdi` varchar(50) COLLATE utf8_turkish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Dumping data for table `cinsiyet`
--

INSERT INTO `cinsiyet` (`cinsiyetID`, `cinsiyetAdi`) VALUES
(1, 'Kadın'),
(2, 'Erkek'),
(3, 'Belirsiz');

-- --------------------------------------------------------

--
-- Table structure for table `filmler`
--

CREATE TABLE `filmler` (
  `filmID` int(11) NOT NULL,
  `Ad` varchar(100) COLLATE utf8_turkish_ci NOT NULL,
  `Tur` varchar(55) COLLATE utf8_turkish_ci NOT NULL,
  `IMDB_Puan` float(3,1) NOT NULL,
  `Tarih` year(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Dumping data for table `filmler`
--

INSERT INTO `filmler` (`filmID`, `Ad`, `Tur`, `IMDB_Puan`, `Tarih`) VALUES
(1, 'The Shawshank Redemption', 'Dram', 9.3, 1994),
(2, 'The Godfather', 'Suç, Dram', 9.2, 1972),
(3, 'The Dark Knight', 'Aksiyon, Suç, Dram', 9.0, 2008),
(4, 'The Lord of the Rings: The Return of the King', 'Aksiyon, Macera, Dram', 9.0, 2003),
(5, 'Schindlers List', 'Biyografi, Dram, Tarih', 9.0, 1993),
(6, 'The Godfather Part II', 'Suç, Dram', 9.0, 1974),
(7, '12 Angry Men', 'Suç, Dram', 9.0, 1957),
(8, 'Pulp Fiction', 'Suç, Dram', 8.9, 1994),
(9, 'Inception', 'Aksiyon, Macera, Bilim Kurgu', 8.8, 2010),
(10, 'The Lord of the Rings: The Two Towers', 'Aksiyon, Macera, Dram', 8.8, 2002),
(11, 'Fight Club', 'Dram', 8.8, 1999),
(12, 'The Lord of the Rings: The Fellowship of the Ring ', 'Aksiyon, Macera, Dram', 8.8, 2001),
(13, 'Forrest Gump', 'Dram, Romantik', 8.8, 1994),
(14, 'The Good, the Bad and the Ugly', 'Macera, Western', 8.8, 1966),
(15, 'The Matrix', 'Aksiyon, Bilim Kurgu', 8.7, 1999),
(16, 'Goodfellas', 'Biyografi, Suç, Dram', 8.7, 1990),
(17, 'Star Wars: Episode V - The Empire Strikes Back', 'Aksiyon, Macera, Fantastik', 8.7, 1980),
(18, 'One Flew Over the Cuckoos Nest', 'Dram', 8.7, 1975),
(19, 'Interstellar', 'Macera, Dram, Bilim Kurgu', 8.6, 2014),
(20, 'City of God', 'Suç, Dram', 8.6, 2002),
(21, 'Spirited Away', 'Animasyon, Macera, Aile', 8.6, 2001),
(22, 'Saving Private Ryan', 'Dram, Savaş', 8.6, 1998),
(23, 'The Green Mile', 'Suç, Dram, Fantastik', 8.6, 1999),
(24, 'Life Is Beautiful', 'Komedi, Dram, Romantik', 8.6, 1997),
(25, 'Se7en', 'Suç, Dram, Gizem', 8.6, 1995),
(26, 'Terminator 2: Judgment Day', 'Aksiyon, Bilim Kurgu', 8.6, 1991),
(27, 'The Silence of the Lambs', 'Suç, Dram, Gerilim', 8.6, 1991),
(28, 'Star Wars: Episode IV - A New Hope', 'Aksiyon, Macera, Fantastik', 8.6, 1977),
(29, 'Harakiri', 'Aksiyon, Dram, Gizem', 8.6, 1962),
(30, 'Seven Samurai', 'Aksiyon, Dram', 8.6, 1954),
(31, 'Its a Wonderful Life', 'Dram, Aile, Fantezi', 8.6, 1946),
(32, 'Parasite', 'Dram, Gerilim', 8.5, 2019),
(33, 'Whiplash', 'Dram, Müzik', 8.5, 2014),
(34, 'The Intouchables', 'Biyografi, Komedi, Dram', 8.5, 2011),
(35, 'The Prestige', 'Dram, Gizem, Bilim Kurgu', 8.5, 2006),
(36, 'The Departed', 'Suç, Dram, Gerilim', 8.5, 2006),
(37, 'The Pianist', 'Biyografi, Dram, Müzik', 8.5, 2002),
(38, 'Gladiator', 'Aksiyon, Macera, Dram', 8.5, 0000),
(39, 'American History X', 'Suç, Dram', 8.5, 1998),
(40, 'The Usual Suspects', 'Suç, Dram, Gizem', 8.5, 1995),
(41, 'Léon: The Professional', 'Aksiyon, Suç, Dram', 8.5, 1994),
(42, 'The Lion King', 'Animasyon, Macera, Dram', 8.5, 1994),
(43, 'Cinema Paradiso', 'Dram, Romantik', 8.5, 1988),
(44, 'Grave of the Fireflies', 'Animasyon, Dram, Savaş', 8.5, 1988),
(45, 'Back to the Future', 'Macera, Komedi, Bilim Kurgu', 8.5, 1985),
(46, 'Apocalypse Now', 'Dram, Gizem, Savaş', 8.5, 1979),
(47, 'Alien', 'Korku, Bilim Kurgu', 8.5, 1979),
(48, 'Once Upon a Time in the West', 'Batı', 8.5, 1968),
(49, 'Psycho', 'Korku, Gizem, Gerilim', 8.5, 1960),
(50, 'Rear Window', 'Gizem, Gerilim', 8.5, 1954),
(51, 'Casablanca', 'Drama, Romance, War', 8.5, 1942),
(52, 'Modern Times', 'Komedi, Dram, Romantik', 8.5, 1936),
(53, 'City Lights', 'Komedi, Dram, Romantik', 8.5, 1931),
(54, 'Capernaum', 'Dram', 8.4, 2018),
(55, 'Joker  I', 'Suç, Dram, Gerilim', 8.4, 2019),
(56, 'Your Name', 'Animasyon, Dram, Fantastik', 8.4, 2016),
(57, 'Spider-Man: Into the Spider-Verse', 'Animasyon, Aksiyon, Macera', 8.4, 2018),
(58, 'Avengers: Endgame', 'Aksiyon, Macera, Dram', 8.4, 2019),
(59, 'Avengers: Infinity War', 'Aksiyon, Macera, Bilim Kurgu', 8.4, 2018),
(60, 'Coco I', 'Animasyon, Macera, Komedi', 8.4, 2017),
(61, 'Django Unchained', 'Dram, Batı', 8.4, 2012),
(62, 'Top Gun: Maverick', 'Aksiyon, Dram', 8.4, 2022),
(63, 'The Dark Knight Rises', 'Aksiyon, Dram', 8.4, 2012),
(64, '3 Idiots', 'Komedi, Dram', 8.4, 2009),
(65, 'WALL·E', 'Animasyon, Macera, Aile', 8.4, 2008),
(66, 'The Lives of Others', 'Dram, Gizem, Gerilim', 8.4, 2006),
(67, 'Oldboy', 'Aksiyon, Dram, Gizem', 8.4, 2003),
(68, 'Memento', 'Gizem, Gerilim', 8.4, 2000),
(69, 'American Beauty', 'Dram', 8.4, 1999),
(70, 'Princess Mononoke', 'Animasyon, Aksiyon, Macera', 8.4, 1997),
(71, 'Braveheart', 'Biyografi, Dram, Tarih', 8.4, 1995),
(72, 'Come and See', 'Dram, Gerilim, Savaş', 8.4, 1985),
(73, 'Aliens', 'Aksiyon, Macera, Bilim Kurgu', 8.4, 1986),
(74, 'Amadeus', 'Biyografi, Dram, Müzik', 8.4, 1984),
(75, 'Indiana Jones and the Raiders of the Lost Ark', 'Aksiyon, Macera', 8.4, 1981),
(76, 'The Boat', 'Dram, Savaş', 8.4, 1981),
(77, 'The Shining', 'Dram, Korku', 8.4, 1980),
(78, 'High and Low', 'Suç, Dram, Gizem', 8.4, 1963),
(79, 'Dr. Strangelove or: How I Learned to Stop Worrying and Love the Bomb', 'Komedi, Savaş', 8.4, 1964),
(80, 'Witness for the Prosecution', 'Suç, Dram, Gizem', 8.4, 1957),
(81, 'Paths of Glory', 'Dram, Savaş', 8.4, 1957),
(82, 'Sunset Blvd.', 'Dram, Kara Film', 8.4, 1950),
(83, 'The Great Dictator', 'Komedi, Dram, Savaş', 8.4, 1940),
(84, 'The Hunt', 'Dram', 8.3, 2012),
(85, 'Toy Story 3', 'Animasyon, Macera, Komedi', 8.3, 2010),
(86, 'Inglourious Basterds', 'Macera, Dram, Savaş', 8.3, 2009),
(87, 'Eternal Sunshine of the Spotless Mind', 'Dram, Romantik, Bilim Kurgu', 8.3, 2004),
(88, 'Requiem for a Dream', 'Dram', 8.3, 2000),
(89, 'Good Will Hunting', 'Dram, Romantik', 8.3, 1997),
(90, 'Toy Story', 'Animasyon, Macera, Komedi', 8.3, 1995),
(91, 'Reservoir Dogs', 'Polisiye, Gerilim', 8.3, 1992),
(92, 'Once Upon a Time in America', 'Suç, Dram', 8.3, 1984),
(93, 'Star Wars: Episode VI - Return of the Jedi', 'Aksiyon, Macera, Fantastik', 8.3, 1983),
(94, '2001: A Space Odyssey', 'Macera, Bilim Kurgu', 8.3, 1968),
(95, 'Lawrence of Arabia', 'Macera, Biyografi, Dram', 8.3, 1962),
(96, 'North by Northwest', 'Aksiyon, Macera, Gizem', 8.3, 1959),
(97, 'Vertigo', 'Gizem, Romantik, Gerilim', 8.3, 1958),
(98, 'Singin in the Rain', 'Komedi, Müzikal, Romantik', 8.3, 1952),
(99, 'Citizen Kane', 'Dram, Gizem', 8.3, 1941),
(100, 'M', 'Suç, Gizem, Gerilim', 8.3, 1931);

-- --------------------------------------------------------

--
-- Table structure for table `filmtur`
--

CREATE TABLE `filmtur` (
  `filmID` int(11) NOT NULL,
  `turID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Dumping data for table `filmtur`
--

INSERT INTO `filmtur` (`filmID`, `turID`) VALUES
(1, 7),
(2, 17),
(3, 1),
(4, 1),
(5, 6),
(6, 17),
(7, 17),
(8, 17),
(9, 1),
(10, 1),
(11, 7),
(12, 1),
(13, 7),
(14, 13),
(15, 1),
(16, 6),
(17, 1),
(18, 7),
(19, 13),
(20, 17),
(21, 2),
(22, 15),
(23, 8),
(24, 14),
(25, 17),
(26, 5),
(27, 17),
(28, 1),
(29, 1),
(30, 1),
(31, 20),
(32, 9),
(33, 21),
(34, 6),
(35, 7),
(36, 17),
(37, 21),
(38, 1),
(39, 17),
(40, 17),
(41, 1),
(42, 2),
(43, 7),
(44, 2),
(45, 13),
(46, 10),
(47, 12),
(48, 19),
(49, 12),
(50, 10),
(51, 15),
(52, 14),
(53, 11),
(54, 7),
(55, 9),
(56, 2),
(57, 2),
(58, 1),
(59, 1),
(60, 2),
(61, 19),
(62, 1),
(63, 1),
(64, 11),
(65, 20),
(66, 1),
(67, 10),
(68, 9),
(69, 7),
(70, 2),
(71, 6),
(72, 7),
(73, 5),
(74, 6),
(75, 1),
(76, 15),
(77, 12),
(78, 17),
(79, 11),
(80, 17),
(81, 7),
(82, 7),
(83, 11),
(84, 7),
(85, 2),
(86, 13),
(87, 5),
(88, 7),
(89, 14),
(90, 2),
(91, 17),
(92, 17),
(93, 1),
(94, 5),
(95, 13),
(96, 1),
(97, 10),
(98, 21),
(99, 7),
(100, 9);

-- --------------------------------------------------------

--
-- Table structure for table `ilceler`
--

CREATE TABLE `ilceler` (
  `ilceID` int(11) NOT NULL,
  `ilID` int(11) NOT NULL,
  `ilceAdi` varchar(50) COLLATE utf8_turkish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ilgialanlari`
--

CREATE TABLE `ilgialanlari` (
  `ilgiAlanlariID` int(11) NOT NULL,
  `ilgiAlaniAdi` varchar(100) COLLATE utf8_turkish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ilgikullanici`
--

CREATE TABLE `ilgikullanici` (
  `kullaniciİlgiID` int(11) NOT NULL,
  `kullaniciID` int(11) NOT NULL,
  `ilgiAlaniID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `iller`
--

CREATE TABLE `iller` (
  `ilID` int(11) NOT NULL,
  `ilAdi` varchar(50) COLLATE utf8_turkish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `izleyenler`
--

CREATE TABLE `izleyenler` (
  `izleyenlerID` int(11) NOT NULL,
  `kullaniciID` int(11) NOT NULL,
  `filmID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `kullanicilar`
--

CREATE TABLE `kullanicilar` (
  `kullaniciID` int(11) NOT NULL,
  `kullaniciTipi` int(11) NOT NULL,
  `kullaniciAdi` varchar(50) COLLATE utf8_turkish_ci NOT NULL,
  `kullaniciSoyadi` varchar(50) COLLATE utf8_turkish_ci NOT NULL,
  `email` varchar(150) COLLATE utf8_turkish_ci NOT NULL,
  `nickName` varchar(100) COLLATE utf8_turkish_ci NOT NULL,
  `password` varchar(200) COLLATE utf8_turkish_ci NOT NULL,
  `dogumTarihi` date NOT NULL,
  `cinsiyet` int(11) NOT NULL,
  `katilimTarihi` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Dumping data for table `kullanicilar`
--

INSERT INTO `kullanicilar` (`kullaniciID`, `kullaniciTipi`, `kullaniciAdi`, `kullaniciSoyadi`, `email`, `nickName`, `password`, `dogumTarihi`, `cinsiyet`, `katilimTarihi`) VALUES
(1, 2, 'sistem', 'yöneticisi', 'admin@cbu.edu.tr', 'admin', 'e10adc3949ba59abbe56e057f20f883e', '2022-12-08', 3, '2022-12-08'),
(2, 1, 'Çağrı', 'Şen', 'cgrsen35@gmail.com', 'Çağrı', '13f8c4ec430320f9b65973c1d591e7b9', '2002-08-22', 2, '2022-12-26'),
(15, 1, 'cigiri', 'şen', 'casen035@hotmail.com', 'cigiri', 'e10adc3949ba59abbe56e057f20f883e', '2023-01-01', 1, '2023-01-02');

-- --------------------------------------------------------

--
-- Table structure for table `kullanicitipi`
--

CREATE TABLE `kullanicitipi` (
  `tipID` int(11) NOT NULL,
  `tipAdi` varchar(50) COLLATE utf8_turkish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Dumping data for table `kullanicitipi`
--

INSERT INTO `kullanicitipi` (`tipID`, `tipAdi`) VALUES
(1, 'Kullanici'),
(2, 'Admin');

-- --------------------------------------------------------

--
-- Table structure for table `logkaydi`
--

CREATE TABLE `logkaydi` (
  `logKaydiID` int(11) NOT NULL,
  `kullaniciID` int(11) NOT NULL,
  `IPAdresi` varchar(100) COLLATE utf8_turkish_ci NOT NULL,
  `oturumBaslangic` datetime NOT NULL,
  `oturumBitiris` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mahalleler`
--

CREATE TABLE `mahalleler` (
  `mahalleID` int(11) NOT NULL,
  `semtID` int(11) NOT NULL,
  `mahalleAdi` varchar(50) COLLATE utf8_turkish_ci NOT NULL,
  `postaKodu` varchar(10) COLLATE utf8_turkish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oyuncular`
--

CREATE TABLE `oyuncular` (
  `oyuncuID` int(11) NOT NULL,
  `ad` varchar(100) COLLATE utf8_turkish_ci NOT NULL,
  `soyad` varchar(100) COLLATE utf8_turkish_ci NOT NULL,
  `dogumTarihi` year(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Dumping data for table `oyuncular`
--

INSERT INTO `oyuncular` (`oyuncuID`, `ad`, `soyad`, `dogumTarihi`) VALUES
(1, 'Scarlett', 'Johansson', 1984),
(2, 'Robert', 'Downey, Jr.', 1965),
(3, 'Samuel L.', 'Jackson', 1948),
(4, 'Zoe', 'Saldana', 1978),
(5, 'Chris', 'Hemsworth', 1983),
(6, 'Chris', 'Pratt', 1979),
(7, 'Tom', 'Cruise', 1962),
(8, 'Chris', 'Evans', 1981),
(9, 'Tom', 'Hanks', 1956),
(10, 'Vin', 'Diesel', 1967),
(11, 'Bradley', 'Cooper', 1975),
(12, 'Johnny', 'Depp', 1963),
(13, 'Dwayne', 'Johnson', 1972),
(14, 'Tom', 'Holland', 1996),
(15, 'Mark', 'Ruffalo', 1967),
(16, 'Emma', 'Watson', 1990),
(17, 'Don', 'Cheadle', 1964),
(18, 'Jeremy', 'Renner', 1971),
(19, 'Will', 'Smith', 1968),
(20, 'Elizabeth', 'Olsen', 1989),
(21, 'Daniel', 'Radcliffe', 1989),
(22, 'Benedict', 'Cumberbatch', 1976),
(23, 'Harrison', 'Ford', 1942),
(24, 'Josh', 'Brolin', 1968),
(25, 'Karen', 'Gillan', 1987),
(26, 'Rupert', 'Grint', 1988),
(27, 'Chadwick', 'Boseman', 1976),
(28, 'Letitia', 'Wright', 1993),
(29, 'Dave', 'Bautista', 1969),
(30, 'Sebastian', 'Stan', 1982),
(31, 'Steve', 'Carell', 1962),
(32, 'Leonardo', 'DiCaprio', 1974),
(33, 'Matt', 'Damon', 1970),
(34, 'Danai', 'Gurira', 1978),
(35, 'Tom', 'Hiddleston', 1981),
(36, 'Paul', 'Bettany', 1971),
(37, 'Brad', 'Pitt', 1963),
(38, 'Bruce', 'Willis', 1955),
(39, 'Eddie', 'Murphy', 1961),
(40, 'Liam', 'Neeson', 1952),
(41, 'Benedict', 'Wong', 1971),
(42, 'Ben', 'Stiller', 1965),
(43, 'Hugh', 'Jackman', 1968),
(44, 'Ian', 'McKellen', 1939),
(45, 'Gwyneth', 'Paltrow', 1972),
(46, 'Mark', 'Wahlberg', 1971),
(47, 'Jennifer', 'Lawrence', 1990),
(48, 'Nicolas', 'Cage', 1964),
(49, 'Cameron', 'Diaz', 1972),
(50, 'Ewan', 'McGregor', 1971);

-- --------------------------------------------------------

--
-- Table structure for table `oyuncu_film`
--

CREATE TABLE `oyuncu_film` (
  `filmID` int(11) NOT NULL,
  `oyuncuID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `semtler`
--

CREATE TABLE `semtler` (
  `semtID` int(11) NOT NULL,
  `ilceID` int(11) NOT NULL,
  `semtAdi` varchar(50) COLLATE utf8_turkish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `turler`
--

CREATE TABLE `turler` (
  `turID` int(11) NOT NULL,
  `turAd` varchar(50) COLLATE utf8_turkish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Dumping data for table `turler`
--

INSERT INTO `turler` (`turID`, `turAd`) VALUES
(1, 'Aksiyon'),
(2, 'Animasyon'),
(3, 'Anime'),
(4, 'Belgesel'),
(5, 'Bilim Kurgu'),
(6, 'Biyografi'),
(7, 'Dram'),
(8, 'Fantastik'),
(9, 'Gerilim'),
(10, 'Gizem'),
(11, 'Komedi'),
(12, 'Korku'),
(13, 'Macera'),
(14, 'Romantik'),
(15, 'Savaş'),
(16, 'Spor'),
(17, 'Suç'),
(18, 'Tarih'),
(19, 'Batı'),
(20, 'Aile'),
(21, 'Müzik');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `adres`
--
ALTER TABLE `adres`
  ADD PRIMARY KEY (`adresID`),
  ADD KEY `mahalleID` (`mahalleID`),
  ADD KEY `semtID` (`semtID`),
  ADD KEY `ilceID` (`ilceID`),
  ADD KEY `ilID` (`ilID`),
  ADD KEY `kullaniciID` (`kullaniciID`);

--
-- Indexes for table `cinsiyet`
--
ALTER TABLE `cinsiyet`
  ADD PRIMARY KEY (`cinsiyetID`);

--
-- Indexes for table `filmler`
--
ALTER TABLE `filmler`
  ADD PRIMARY KEY (`filmID`);

--
-- Indexes for table `filmtur`
--
ALTER TABLE `filmtur`
  ADD KEY `filmID` (`filmID`),
  ADD KEY `turID` (`turID`);

--
-- Indexes for table `ilceler`
--
ALTER TABLE `ilceler`
  ADD PRIMARY KEY (`ilceID`),
  ADD KEY `ilID` (`ilID`);

--
-- Indexes for table `ilgialanlari`
--
ALTER TABLE `ilgialanlari`
  ADD PRIMARY KEY (`ilgiAlanlariID`);

--
-- Indexes for table `ilgikullanici`
--
ALTER TABLE `ilgikullanici`
  ADD PRIMARY KEY (`kullaniciİlgiID`),
  ADD KEY `kullaniciID` (`kullaniciID`),
  ADD KEY `ilgiAlaniID` (`ilgiAlaniID`);

--
-- Indexes for table `iller`
--
ALTER TABLE `iller`
  ADD PRIMARY KEY (`ilID`);

--
-- Indexes for table `izleyenler`
--
ALTER TABLE `izleyenler`
  ADD PRIMARY KEY (`izleyenlerID`),
  ADD KEY `kullaniciID` (`kullaniciID`),
  ADD KEY `FilmID` (`filmID`);

--
-- Indexes for table `kullanicilar`
--
ALTER TABLE `kullanicilar`
  ADD PRIMARY KEY (`kullaniciID`),
  ADD KEY `kullaniciTipi` (`kullaniciTipi`),
  ADD KEY `cinsiyet` (`cinsiyet`);

--
-- Indexes for table `kullanicitipi`
--
ALTER TABLE `kullanicitipi`
  ADD PRIMARY KEY (`tipID`);

--
-- Indexes for table `logkaydi`
--
ALTER TABLE `logkaydi`
  ADD PRIMARY KEY (`logKaydiID`),
  ADD KEY `kullaniciID` (`kullaniciID`);

--
-- Indexes for table `mahalleler`
--
ALTER TABLE `mahalleler`
  ADD PRIMARY KEY (`mahalleID`),
  ADD KEY `semtID` (`semtID`);

--
-- Indexes for table `oyuncular`
--
ALTER TABLE `oyuncular`
  ADD PRIMARY KEY (`oyuncuID`);

--
-- Indexes for table `oyuncu_film`
--
ALTER TABLE `oyuncu_film`
  ADD KEY `filmID` (`filmID`),
  ADD KEY `oyuncuID` (`oyuncuID`);

--
-- Indexes for table `semtler`
--
ALTER TABLE `semtler`
  ADD PRIMARY KEY (`semtID`),
  ADD KEY `ilceID` (`ilceID`);

--
-- Indexes for table `turler`
--
ALTER TABLE `turler`
  ADD PRIMARY KEY (`turID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `adres`
--
ALTER TABLE `adres`
  MODIFY `adresID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `cinsiyet`
--
ALTER TABLE `cinsiyet`
  MODIFY `cinsiyetID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `filmler`
--
ALTER TABLE `filmler`
  MODIFY `filmID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=103;

--
-- AUTO_INCREMENT for table `ilceler`
--
ALTER TABLE `ilceler`
  MODIFY `ilceID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=984;

--
-- AUTO_INCREMENT for table `ilgialanlari`
--
ALTER TABLE `ilgialanlari`
  MODIFY `ilgiAlanlariID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `ilgikullanici`
--
ALTER TABLE `ilgikullanici`
  MODIFY `kullaniciİlgiID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `iller`
--
ALTER TABLE `iller`
  MODIFY `ilID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=82;

--
-- AUTO_INCREMENT for table `izleyenler`
--
ALTER TABLE `izleyenler`
  MODIFY `izleyenlerID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `kullanicilar`
--
ALTER TABLE `kullanicilar`
  MODIFY `kullaniciID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `kullanicitipi`
--
ALTER TABLE `kullanicitipi`
  MODIFY `tipID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `logkaydi`
--
ALTER TABLE `logkaydi`
  MODIFY `logKaydiID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `mahalleler`
--
ALTER TABLE `mahalleler`
  MODIFY `mahalleID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=73306;

--
-- AUTO_INCREMENT for table `oyuncular`
--
ALTER TABLE `oyuncular`
  MODIFY `oyuncuID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT for table `semtler`
--
ALTER TABLE `semtler`
  MODIFY `semtID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2772;

--
-- AUTO_INCREMENT for table `turler`
--
ALTER TABLE `turler`
  MODIFY `turID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `adres`
--
ALTER TABLE `adres`
  ADD CONSTRAINT `adres_ibfk_1` FOREIGN KEY (`mahalleID`) REFERENCES `mahalleler` (`mahalleID`),
  ADD CONSTRAINT `adres_ibfk_2` FOREIGN KEY (`semtID`) REFERENCES `semtler` (`semtID`),
  ADD CONSTRAINT `adres_ibfk_3` FOREIGN KEY (`ilceID`) REFERENCES `ilceler` (`ilceID`),
  ADD CONSTRAINT `adres_ibfk_4` FOREIGN KEY (`ilID`) REFERENCES `iller` (`ilID`),
  ADD CONSTRAINT `adres_ibfk_5` FOREIGN KEY (`kullaniciID`) REFERENCES `kullanicilar` (`kullaniciID`);

--
-- Constraints for table `filmtur`
--
ALTER TABLE `filmtur`
  ADD CONSTRAINT `filmtur_ibfk_1` FOREIGN KEY (`filmID`) REFERENCES `filmler` (`filmID`),
  ADD CONSTRAINT `filmtur_ibfk_2` FOREIGN KEY (`turID`) REFERENCES `turler` (`turID`);

--
-- Constraints for table `ilceler`
--
ALTER TABLE `ilceler`
  ADD CONSTRAINT `ilceler_ibfk_1` FOREIGN KEY (`ilID`) REFERENCES `iller` (`ilID`);

--
-- Constraints for table `ilgikullanici`
--
ALTER TABLE `ilgikullanici`
  ADD CONSTRAINT `ilgikullanici_ibfk_1` FOREIGN KEY (`kullaniciID`) REFERENCES `kullanicilar` (`kullaniciID`),
  ADD CONSTRAINT `ilgikullanici_ibfk_2` FOREIGN KEY (`ilgiAlaniID`) REFERENCES `ilgialanlari` (`ilgiAlanlariID`);

--
-- Constraints for table `izleyenler`
--
ALTER TABLE `izleyenler`
  ADD CONSTRAINT `izleyenler_ibfk_1` FOREIGN KEY (`kullaniciID`) REFERENCES `kullanicilar` (`kullaniciID`),
  ADD CONSTRAINT `izleyenler_ibfk_2` FOREIGN KEY (`filmID`) REFERENCES `filmler` (`filmID`);

--
-- Constraints for table `kullanicilar`
--
ALTER TABLE `kullanicilar`
  ADD CONSTRAINT `kullanicilar_ibfk_3` FOREIGN KEY (`kullaniciTipi`) REFERENCES `kullanicitipi` (`tipID`),
  ADD CONSTRAINT `kullanicilar_ibfk_5` FOREIGN KEY (`cinsiyet`) REFERENCES `cinsiyet` (`cinsiyetID`);

--
-- Constraints for table `logkaydi`
--
ALTER TABLE `logkaydi`
  ADD CONSTRAINT `logkaydi_ibfk_1` FOREIGN KEY (`kullaniciID`) REFERENCES `kullanicilar` (`kullaniciID`);

--
-- Constraints for table `mahalleler`
--
ALTER TABLE `mahalleler`
  ADD CONSTRAINT `mahalleler_ibfk_1` FOREIGN KEY (`semtID`) REFERENCES `semtler` (`semtID`);

--
-- Constraints for table `oyuncu_film`
--
ALTER TABLE `oyuncu_film`
  ADD CONSTRAINT `oyuncu_film_ibfk_1` FOREIGN KEY (`filmID`) REFERENCES `filmler` (`filmID`),
  ADD CONSTRAINT `oyuncu_film_ibfk_2` FOREIGN KEY (`oyuncuID`) REFERENCES `oyuncular` (`oyuncuID`);

--
-- Constraints for table `semtler`
--
ALTER TABLE `semtler`
  ADD CONSTRAINT `semtler_ibfk_1` FOREIGN KEY (`ilceID`) REFERENCES `ilceler` (`ilceID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
