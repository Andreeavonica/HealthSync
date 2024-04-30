-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Gazdă: 127.0.0.1
-- Timp de generare: apr. 30, 2024 la 04:32 PM
-- Versiune server: 10.4.32-MariaDB
-- Versiune PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Bază de date: `healthsync`
--

-- --------------------------------------------------------

--
-- Structură tabel pentru tabel `diagnosticpacienti`
--

CREATE TABLE `diagnosticpacienti` (
  `id_diagnostic` int(11) NOT NULL,
  `id_pacient` int(11) NOT NULL,
  `nume_pacient` varchar(100) NOT NULL,
  `afectiune` varchar(100) NOT NULL,
  `simptome` text NOT NULL,
  `tratament` text NOT NULL,
  `numeutiliz` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Eliminarea datelor din tabel `diagnosticpacienti`
--

INSERT INTO `diagnosticpacienti` (`id_diagnostic`, `id_pacient`, `nume_pacient`, `afectiune`, `simptome`, `tratament`, `numeutiliz`) VALUES
(6, 10, 'ww', '', '', '', ''),
(9, 18, 'DIana', 'reomatism', 'durepe picoare', 'pastile', ''),
(10, 13, 'rares', 'nimic', 'fotnite', 'no consola', ''),
(11, 19, 'paul', 'miopie', 'no sight', 'ochelari', 'meri'),
(12, 22, 'ana maria', 'cjxb', 'cmkx', 'kxcn', 'ani'),
(13, 23, 'ands', 'sdfjd', 'dff', 'cfjgfk', 'andre12');

-- --------------------------------------------------------

--
-- Structură tabel pentru tabel `pacienti`
--

CREATE TABLE `pacienti` (
  `id` int(11) NOT NULL,
  `nume` varchar(255) NOT NULL,
  `telefon` int(10) NOT NULL,
  `adresa` varchar(255) NOT NULL,
  `varsta` int(3) NOT NULL,
  `sex` varchar(10) NOT NULL,
  `alergii` varchar(255) NOT NULL,
  `numeutiliz` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Eliminarea datelor din tabel `pacienti`
--

INSERT INTO `pacienti` (`id`, `nume`, `telefon`, `adresa`, `varsta`, `sex`, `alergii`, `numeutiliz`) VALUES
(1, 'd', 44, 'jTextField3', 44, 'Male', 'jTextField5', ''),
(2, 'ana', 93448, 'jTextField3', 90, 'Male', 'jTextField5', ''),
(3, 'maria', 1111, 'jTextField3', 122, 'Female', 'jTextField5', ''),
(4, 'tudor', 95555, 'jTextField3', 11, 'Female', 'jTextField5', ''),
(7, 'denis', 33, 'jTextField3', 40, 'Male', 'jTextField5', ''),
(8, 'ana', 1122, 'jTextField3', 333, 'Male', 'jTextField5', ''),
(9, 'ana', 33, 'jTextField3', 2222, 'Male', 'jTextField5', ''),
(10, 'ww', 345, 'jTextField3', 777, 'Male', 'jTextField5', ''),
(11, 'ana', 1111, 'jTextField3', 90, 'Male', 'jTextField5', ''),
(12, 'maria', 1111, 'jTextField3', 122, 'Female', 'jTextField5', ''),
(13, 'rares', 76366364, 'deva', 14, 'Male', 'la andre', ''),
(14, 'daria', 7999, 'jTextField3', 33, 'Male', 'jTextField5', ''),
(17, 'andre', 12345678, 'tm', 15, 'Female', 'no', ''),
(18, 'DIana', 726117728, 'deva', 49, 'Female', 'la tata', ''),
(19, 'paul', 999, 'sdfgbhj', 11, 'Male', 'asass', 'meri'),
(20, 'david', 99, '123456', 9, 'Male', 'dhbfcj', 'bogdi'),
(21, 'darius', 12345678, 'dfhfh', 88, 'Male', 'djxvn', 'meri'),
(22, 'ana maria', 234567, 'asncdkn', 235, 'Male', 'sdfghjhgfd', 'ani'),
(23, 'ands', 67890, 'hhn', 88, 'Male', 'dfghjk', 'andre12');

-- --------------------------------------------------------

--
-- Structură tabel pentru tabel `programari`
--

CREATE TABLE `programari` (
  `id_programare` int(11) NOT NULL,
  `pacient_id` int(11) DEFAULT NULL,
  `nume_pacient` varchar(100) DEFAULT NULL,
  `data` varchar(100) DEFAULT NULL,
  `oramin` varchar(100) DEFAULT NULL,
  `tip` varchar(100) DEFAULT NULL,
  `camera` varchar(255) DEFAULT NULL,
  `numeutiliz` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Eliminarea datelor din tabel `programari`
--

INSERT INTO `programari` (`id_programare`, `pacient_id`, `nume_pacient`, `data`, `oramin`, `tip`, `camera`, `numeutiliz`) VALUES
(3, 12, 'maria', '2023-12-21', '9:0', 'eye surgery', '6777', ''),
(4, 8, 'ana', '2023-12-02', '9:0', 'Eye Surgery', '344', ''),
(5, 18, 'DIana', '2023-12-08', '11:12', 'Eye Surgery', '12', ''),
(6, 18, 'DIana', '2023-12-30', '11:12', 'reomatis', '13', ''),
(7, 13, 'rares', '2023-12-15', '10:12', 'check up', '12A', ''),
(8, 19, 'paul', '2023-12-15', '12:0', 'reomatis', '12', 'meri');

-- --------------------------------------------------------

--
-- Structură tabel pentru tabel `servicii`
--

CREATE TABLE `servicii` (
  `id` int(11) NOT NULL,
  `denumire` varchar(255) NOT NULL,
  `durata` int(11) NOT NULL,
  `cost` int(11) NOT NULL,
  `numeutiliz` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Eliminarea datelor din tabel `servicii`
--

INSERT INTO `servicii` (`id`, `denumire`, `durata`, `cost`, `numeutiliz`) VALUES
(1, 'eye surgery', 1100, 10000, ''),
(2, 'Eye Surgery', 1000, 2000, ''),
(4, 'check up', 200, 500, ''),
(5, 'reomatis', 90, 100, ''),
(6, 'consult', 120, 300, ''),
(7, 'testare', 100, 200, ''),
(8, 'check up', 120, 300, 'meri'),
(9, 'testare', 30, 100, 'meri'),
(10, 'check up', 120, 200, 'ani');

-- --------------------------------------------------------

--
-- Structură tabel pentru tabel `utilizatori`
--

CREATE TABLE `utilizatori` (
  `Id` int(11) NOT NULL,
  `nume` varchar(255) NOT NULL,
  `numeutilizator` varchar(255) NOT NULL,
  `parola` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Eliminarea datelor din tabel `utilizatori`
--

INSERT INTO `utilizatori` (`Id`, `nume`, `numeutilizator`, `parola`) VALUES
(1, 'rares', 'rr', '123'),
(2, 'andreea', 'andre', 'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3'),
(4, 'ioan', 'nelu', '03ac674216f3e15c761ee1a5e255f067953623c8b388b4459e13f978d7c846f4'),
(6, 'Maria', 'meri', 'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3'),
(8, 'bogdan', 'bogdi', 'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3'),
(9, 'andreea', 'andre', 'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3'),
(10, 'ana', 'ani', 'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3'),
(11, 'andreea', 'andre12', 'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3');

--
-- Indexuri pentru tabele eliminate
--

--
-- Indexuri pentru tabele `diagnosticpacienti`
--
ALTER TABLE `diagnosticpacienti`
  ADD PRIMARY KEY (`id_diagnostic`),
  ADD KEY `id_pacient` (`id_pacient`);

--
-- Indexuri pentru tabele `pacienti`
--
ALTER TABLE `pacienti`
  ADD PRIMARY KEY (`id`);

--
-- Indexuri pentru tabele `programari`
--
ALTER TABLE `programari`
  ADD PRIMARY KEY (`id_programare`),
  ADD KEY `pacient_id` (`pacient_id`);

--
-- Indexuri pentru tabele `servicii`
--
ALTER TABLE `servicii`
  ADD PRIMARY KEY (`id`);

--
-- Indexuri pentru tabele `utilizatori`
--
ALTER TABLE `utilizatori`
  ADD PRIMARY KEY (`Id`);

--
-- AUTO_INCREMENT pentru tabele eliminate
--

--
-- AUTO_INCREMENT pentru tabele `diagnosticpacienti`
--
ALTER TABLE `diagnosticpacienti`
  MODIFY `id_diagnostic` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT pentru tabele `pacienti`
--
ALTER TABLE `pacienti`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT pentru tabele `programari`
--
ALTER TABLE `programari`
  MODIFY `id_programare` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT pentru tabele `servicii`
--
ALTER TABLE `servicii`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT pentru tabele `utilizatori`
--
ALTER TABLE `utilizatori`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- Constrângeri pentru tabele eliminate
--

--
-- Constrângeri pentru tabele `diagnosticpacienti`
--
ALTER TABLE `diagnosticpacienti`
  ADD CONSTRAINT `diagnosticpacienti_ibfk_1` FOREIGN KEY (`id_pacient`) REFERENCES `pacienti` (`id`);

--
-- Constrângeri pentru tabele `programari`
--
ALTER TABLE `programari`
  ADD CONSTRAINT `programari_ibfk_1` FOREIGN KEY (`pacient_id`) REFERENCES `pacienti` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
