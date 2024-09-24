-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Počítač: 127.0.0.1
-- Vytvořeno: Úte 24. zář 2024, 22:39
-- Verze serveru: 10.3.16-MariaDB
-- Verze PHP: 7.3.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Databáze: `knihy_p1`
--

-- --------------------------------------------------------

--
-- Struktura tabulky `autori`
--

CREATE TABLE `autori` (
  `id_autora` int(4) UNSIGNED NOT NULL,
  `jmeno` varchar(50) COLLATE utf8_czech_ci DEFAULT NULL,
  `prijmeni` varchar(50) COLLATE utf8_czech_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_czech_ci;

--
-- Vypisuji data pro tabulku `autori`
--

INSERT INTO `autori` (`id_autora`, `jmeno`, `prijmeni`) VALUES
(1, 'Alexander', ' Puškin'),
(2, 'Alexandre', ' Dumas'),
(3, 'Amos', ' Oz'),
(4, 'Anthony', ' McCarten'),
(5, 'Bernard', ' Cornwell'),
(6, 'Boris', ' Pasternak'),
(7, 'Cassandra', ' Clare'),
(8, 'David', ' Lagercrantz'),
(9, 'David', ' Mitchell'),
(10, 'Dmitry', ' Glukhovsky'),
(11, 'Eduard', ' Bass'),
(12, 'Erich Maria', 'Remarque'),
(13, 'Heinrich', ' Harrer'),
(14, 'Hjalmar', ' Söderberg'),
(15, 'Charles', ' Dickens'),
(16, 'J.R.R.', ' Tolkien'),
(17, 'Jack', ' London'),
(18, 'Jaroslav', ' Hašek'),
(19, 'Jean', ' Giono'),
(20, 'Jeffery', ' Deaver'),
(21, 'Jenny', ' Downham'),
(22, 'John', ' Connolly'),
(23, 'Jonas', ' Jonasson'),
(24, 'José', ' Saramago'),
(25, 'Joseph', ' Conrad'),
(26, 'Kathryn', ' Stockett'),
(27, 'Ken', ' Follett'),
(28, 'Lev', ' Tolstoj'),
(29, 'Markus', ' Zusak'),
(30, 'Martin', ' Mejstřík'),
(31, 'Michail', ' Bulgakov'),
(32, 'Paulo', ' Coelho'),
(33, 'Raymond', ' Moody'),
(34, 'Rick', ' Riordan'),
(35, 'Sara', ' Gruen'),
(36, 'Sarah', ' J. Maas'),
(37, 'Simon', ' Mawer'),
(38, 'Steve', ' Berry'),
(39, 'Suzanne', ' Collins'),
(40, 'Tess', ' Gerritsen');

-- --------------------------------------------------------

--
-- Struktura tabulky `knihy`
--

CREATE TABLE `knihy` (
  `ISBN` bigint(13) NOT NULL,
  `nazev_knihy` varchar(100) NOT NULL,
  `rok_vydani` year(4) DEFAULT NULL,
  `pocet_stran` int(4) DEFAULT NULL,
  `cena` decimal(6,2) DEFAULT NULL,
  `id_zanru` int(2) DEFAULT NULL,
  `id_nakladatelstvi` int(2) UNSIGNED DEFAULT NULL,
  `id_autora` int(4) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Vypisuji data pro tabulku `knihy`
--

INSERT INTO `knihy` (`ISBN`, `nazev_knihy`, `rok_vydani`, `pocet_stran`, `cena`, `id_zanru`, `id_nakladatelstvi`, `id_autora`) VALUES
(9788020023911, 'Osudy dobrého vojáka Švejka', 2013, 768, '520.00', 12, 9, 18),
(9788020712342, 'Stoletý stařík, který vylezl z okna a zmizel', 2015, 356, '320.00', 14, 1, 23),
(9788025701340, 'Muž, který sázel stromy', 2009, 60, '150.00', 9, 10, 19),
(9788025702339, 'Návrat krále', 2015, 564, '460.00', 5, 8, 16),
(9788025702569, 'Společenstvo prstenu', 2012, 423, '450.00', 5, 8, 16),
(9788025702599, 'Dvě věže', 2014, 441, '450.00', 5, 8, 16),
(9788026013433, 'Český sen', 2014, 198, '270.00', 16, 6, 30),
(9788072037159, 'Alchymista', 2005, 172, '230.00', 9, 8, 32),
(9788072037345, 'Metro 2033', 2010, 405, '390.00', 7, 5, 10),
(9788072037395, 'Metro 2034', 2011, 431, '410.00', 7, 5, 10),
(9788072037401, 'Metro 2035', 2012, 458, '430.00', 7, 5, 10),
(9788072037541, 'Hunger Games', 2013, 498, '490.00', 18, 2, 39),
(9788072037641, 'Hunger Games 2', 2014, 502, '500.00', 18, 2, 39),
(9788072037951, 'Hunger Games 3', 2015, 503, '510.00', 18, 2, 39),
(9788072037968, 'Život po životě', 2016, 512, '530.00', 17, 3, 33),
(9788072037975, 'Voda pro slony', 2017, 600, '600.00', 13, 4, 35),
(9788072037982, 'Skleněný pokoj', 2018, 215, '280.00', 3, 6, 37),
(9788072037999, 'Sběratel kostí', 2019, 530, '150.00', 6, 8, 20),
(9788072206791, 'Na západní frontě klid', 2006, 296, '310.00', 10, 7, 12),
(9788073310358, 'Mistr a Markétka', 2015, 678, '530.00', 15, 2, 31),
(9788073310365, 'Evžen Oněgin', 2016, 342, '280.00', 1, 1, 1),
(9788073310372, 'Doktor Živago', 2017, 1230, '600.00', 3, 3, 6),
(9788073310389, 'Vojna a mír', 2018, 699, '530.00', 1, 8, 28),
(9788073310396, 'Anna Karenina', 2019, 740, '510.00', 13, 8, 28),
(9788073310402, 'Bílý tesák', 2020, 499, '500.00', 4, 6, 17),
(9788073310419, 'Příběh lásky a tmy', 2023, 456, '490.00', 2, 2, 3),
(9788073310426, 'Zlodějka knih', 2022, 298, '430.00', 8, 1, 29),
(9788073310433, 'Dvě města', 2021, 500, '410.00', 1, 6, 15),
(9788073310440, 'Srdce tmy', 2020, 412, '390.00', 11, 3, 25),
(9788073310457, 'Město z kostí', 2019, 305, '420.00', 5, 1, 7),
(9788073310464, 'Královna stínů', 2018, 390, '360.00', 5, 2, 36),
(9788073310471, 'Poslední království', 2017, 420, '400.00', 4, 4, 5),
(9788073310488, 'Ještě než umřu', 2016, 356, '350.00', 13, 6, 21),
(9788073310495, 'Kniha ztracených věcí', 2015, 356, '380.00', 5, 3, 22),
(9788073310501, 'Atlas mraků', 2014, 465, '460.00', 7, 1, 9),
(9788073310518, 'Pád andělů', 2013, 310, '450.00', 19, 6, 40),
(9788073310525, 'Vyvolávač stínů', 2010, 320, '270.00', 5, 3, 34),
(9788073310532, 'Sedm let v Tibetu', 2012, 540, '230.00', 4, 4, 13),
(9788073310549, 'Dívka v pavoučí síti', 2011, 370, '310.00', 6, 5, 8),
(9788073310565, 'Zpověď', 2010, 215, '280.00', 11, 4, 14),
(9788073310568, 'Černobílý svět', 2023, 475, '520.00', 3, 1, 26),
(9788073310572, 'Léto v tichém městě', 2020, 300, '450.00', 9, 1, 11),
(9788073310589, 'Nesmrtelný', 2022, 450, '280.00', 15, 6, 24),
(9788073310596, 'Večery pod lampou', 2021, 280, '320.00', 1, 2, 2),
(9788073351445, 'Konec staletí', 2020, 290, '420.00', 8, 6, 11),
(9788073351449, 'Hobit', 2016, 345, '380.00', 5, 8, 16),
(9788073351599, 'Nejtemnější hodina', 2017, 287, '350.00', 3, 3, 4),
(9788073351605, 'Pád titánů', 2018, 400, '400.00', 3, 6, 27),
(9788073351759, 'Zimní palác', 2019, 375, '360.00', 4, 1, 38);

-- --------------------------------------------------------

--
-- Struktura tabulky `nakladatelstvi`
--

CREATE TABLE `nakladatelstvi` (
  `id_nakladatelstvi` int(2) UNSIGNED NOT NULL,
  `nazev_nakladatelstvi` varchar(30) COLLATE utf8_czech_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_czech_ci;

--
-- Vypisuji data pro tabulku `nakladatelstvi`
--

INSERT INTO `nakladatelstvi` (`id_nakladatelstvi`, `nazev_nakladatelstvi`) VALUES
(1, 'Panteon'),
(2, 'Albatros'),
(3, 'Omega'),
(4, 'BB Art'),
(5, 'Knižní klub'),
(6, 'Host'),
(7, 'Naše vojsko'),
(8, 'Argo'),
(9, 'Odeon'),
(10, 'Knihovna');

-- --------------------------------------------------------

--
-- Struktura tabulky `zanry`
--

CREATE TABLE `zanry` (
  `id_zanru` int(2) NOT NULL,
  `oznaceni_zanru` varchar(50) COLLATE utf8_czech_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_czech_ci;

--
-- Vypisuji data pro tabulku `zanry`
--

INSERT INTO `zanry` (`id_zanru`, `oznaceni_zanru`) VALUES
(1, 'Klasika'),
(2, 'Biografie'),
(3, 'Historický román'),
(4, 'Dobrodružství'),
(5, 'Fantasy'),
(6, 'Detektivka'),
(7, 'Sci-fi'),
(8, 'Historie'),
(9, 'Beletrie'),
(10, 'Válečná literatura'),
(11, 'Psychologický román'),
(12, 'Satira'),
(13, 'Román'),
(14, 'Humoristický román'),
(15, 'Fikce'),
(16, 'Reportáž'),
(17, 'Filozofie'),
(18, 'Dospívající'),
(19, 'Thriller');

--
-- Klíče pro exportované tabulky
--

--
-- Klíče pro tabulku `autori`
--
ALTER TABLE `autori`
  ADD PRIMARY KEY (`id_autora`);

--
-- Klíče pro tabulku `knihy`
--
ALTER TABLE `knihy`
  ADD PRIMARY KEY (`ISBN`),
  ADD KEY `id_zanru` (`id_zanru`),
  ADD KEY `id_nakladatelstvi` (`id_nakladatelstvi`),
  ADD KEY `id_autora` (`id_autora`);

--
-- Klíče pro tabulku `nakladatelstvi`
--
ALTER TABLE `nakladatelstvi`
  ADD PRIMARY KEY (`id_nakladatelstvi`);

--
-- Klíče pro tabulku `zanry`
--
ALTER TABLE `zanry`
  ADD PRIMARY KEY (`id_zanru`);

--
-- AUTO_INCREMENT pro tabulky
--

--
-- AUTO_INCREMENT pro tabulku `autori`
--
ALTER TABLE `autori`
  MODIFY `id_autora` int(4) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- Omezení pro exportované tabulky
--

--
-- Omezení pro tabulku `knihy`
--
ALTER TABLE `knihy`
  ADD CONSTRAINT `id_autora` FOREIGN KEY (`id_autora`) REFERENCES `autori` (`id_autora`),
  ADD CONSTRAINT `id_nakladatelstvi` FOREIGN KEY (`id_nakladatelstvi`) REFERENCES `nakladatelstvi` (`id_nakladatelstvi`),
  ADD CONSTRAINT `id_zanru` FOREIGN KEY (`id_zanru`) REFERENCES `zanry` (`id_zanru`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
