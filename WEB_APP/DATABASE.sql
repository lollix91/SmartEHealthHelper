-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: m-05.th.seeweb.it
-- Creato il: Mar 15, 2022 alle 00:37
-- Versione del server: 5.6.45
-- Versione PHP: 7.2.34-28+0~20211119.67+debian9~1.gbpf24e81

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `lorenzod23806`
--

-- --------------------------------------------------------

--
-- Struttura della tabella `eventilungotermine`
--

CREATE TABLE `eventilungotermine` (
  `id` int(11) NOT NULL,
  `name` varchar(200) NOT NULL,
  `descrizione` varchar(200) NOT NULL,
  `data` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dump dei dati per la tabella `eventilungotermine`
--

INSERT INTO `eventilungotermine` (`id`, `name`, `descrizione`, `data`) VALUES
(1, 'AF', 'An Atrial Fibrillation was discovered. The AVG BPM is 118.2 and the STD RR is 300.66592756746', '2021-11-16 16:44:40'),
(2, 'Potential WPW', 'A Potential Wolff-Parkinson-White syndrome was discovered. The AVG PR is 108.4, the AVG QRS is 125.8 and the STD QRS is 2.315167380558', '2021-11-16 16:54:04');

-- --------------------------------------------------------

--
-- Struttura della tabella `feedback`
--

CREATE TABLE `feedback` (
  `id` int(11) NOT NULL,
  `nome` varchar(200) NOT NULL,
  `tipo` varchar(200) NOT NULL,
  `message` varchar(2000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dump dei dati per la tabella `feedback`
--

INSERT INTO `feedback` (`id`, `nome`, `tipo`, `message`) VALUES
(1, 'Lorenzo De Lauretis', 'battito', 'La tua frequenza cardiaca presenta una leggera tachicardia'),
(2, 'Lorenzo De Lauretis', 'medico', 'Il dottore suggerisce di prendere Propafenone'),
(3, 'Lorenzo De Lauretis', 'medico', 'Il dottore suggerisce di prendere Propafenone 2'),
(4, 'Lorenzo De Lauretis', 'temperatura', ''),
(5, 'Lorenzo De Lauretis', 'saturazione', 'Hai problemi di ossigenazione'),
(6, 'Lorenzo De Lauretis', 'battito', 'La tua frequenza cardiaca presenta una leggera tachicardia'),
(7, 'Lorenzo De Lauretis', 'presminima', 'La tua pressione minima presenta una ipotensione'),
(8, 'Lorenzo De Lauretis', 'presmassima', 'La tua pressione massima presenta una ipertensione'),
(9, 'Lorenzo De Lauretis', 'medico', 'Devi correre al pronto soccorso'),
(10, 'Lorenzo De Lauretis', 'saturazione', 'Hai problemi di ossigenazione'),
(11, 'Lorenzo De Lauretis', 'battito', 'La tua frequenza cardiaca presenta una leggera tachicardia'),
(12, 'Lorenzo De Lauretis', 'presminima', 'La tua pressione minima presenta una ipotensione'),
(13, 'Lorenzo De Lauretis', 'presmassima', 'La tua pressione massima presenta una ipotensione'),
(14, 'Lorenzo De Lauretis', 'temperatura', 'Non hai febbre'),
(15, 'Lorenzo De Lauretis', 'saturazione', 'Hai problemi di ossigenazione'),
(16, 'Lorenzo De Lauretis', 'battito', 'La tua frequenza cardiaca presenta una leggera tachicardia'),
(17, 'Lorenzo De Lauretis', 'presminima', 'La tua pressione minima presenta una ipotensione'),
(18, 'Lorenzo De Lauretis', 'presmassima', 'La tua pressione massima presenta una ipotensione'),
(19, 'Lorenzo De Lauretis', 'temperatura', ''),
(20, 'Lorenzo De Lauretis', 'saturazione', 'Non hai problemi di ossigenazione'),
(21, 'Lorenzo De Lauretis', 'battito', 'La tua frequenza cardiaca presenta una leggera tachicardia'),
(22, 'Lorenzo De Lauretis', 'presminima', 'La tua pressione minima presenta una ipertensione'),
(23, 'Lorenzo De Lauretis', 'presmassima', 'La tua pressione massima presenta una ipertensione'),
(24, 'Lorenzo De Lauretis', 'temperatura', 'Hai qualche linea di febbre, ti consiglio di riposare'),
(25, 'Lorenzo De Lauretis', 'saturazione', 'Hai problemi di ossigenazione'),
(26, 'Lorenzo De Lauretis', 'battito', 'La tua frequenza cardiaca presenta una leggera tachicardia'),
(27, 'Lorenzo De Lauretis', 'presminima', 'La tua pressione minima presenta una ipertensione'),
(28, 'Lorenzo De Lauretis', 'presmassima', 'La tua pressione massima presenta una ipertensione'),
(29, 'Lorenzo De Lauretis', 'temperatura', ''),
(30, 'Lorenzo De Lauretis', 'saturazione', 'Hai problemi di ossigenazione'),
(31, 'Lorenzo De Lauretis', 'battito', 'La tua frequenza cardiaca presenta una leggera tachicardia'),
(32, 'Lorenzo De Lauretis', 'presminima', 'La tua pressione minima presenta una ipertensione'),
(33, 'Lorenzo De Lauretis', 'presmassima', 'La tua pressione massima presenta una ipotensione'),
(34, 'Lorenzo De Lauretis', 'temperatura', ''),
(35, 'Lorenzo De Lauretis', 'saturazione', 'Hai un leggero problema di ossigenazione'),
(36, 'Lorenzo De Lauretis', 'battito', 'La tua frequenza cardiaca presenta una leggera tachicardia'),
(37, 'Lorenzo De Lauretis', 'presminima', 'La tua pressione minima presenta una ipotensione'),
(38, 'Lorenzo De Lauretis', 'presmassima', 'La tua pressione massima presenta una ipotensione'),
(39, 'Lorenzo De Lauretis', 'temperatura', ''),
(40, 'Lorenzo De Lauretis', 'saturazione', 'Hai problemi di ossigenazione'),
(41, 'Lorenzo De Lauretis', 'battito', 'La tua frequenza cardiaca presenta una leggera tachicardia'),
(42, 'Lorenzo De Lauretis', 'presminima', 'La tua pressione minima presenta una ipotensione'),
(43, 'Lorenzo De Lauretis', 'presmassima', 'La tua pressione massima presenta una ipertensione'),
(44, 'Lorenzo De Lauretis', 'temperatura', 'Non hai febbre'),
(45, 'Lorenzo De Lauretis', 'saturazione', 'Hai un leggero problema di ossigenazione'),
(46, 'Lorenzo De Lauretis', 'battito', 'La tua frequenza cardiaca presenta una leggera tachicardia'),
(47, 'Lorenzo De Lauretis', 'presminima', 'La tua pressione minima presenta una ipotensione'),
(48, 'Lorenzo De Lauretis', 'presmassima', 'La tua pressione massima non presenta problemi'),
(49, 'Lorenzo De Lauretis', 'temperatura', 'Non hai febbre'),
(50, 'Lorenzo De Lauretis', 'saturazione', 'Hai problemi di ossigenazione'),
(51, 'Lorenzo De Lauretis', 'battito', 'La tua frequenza cardiaca presenta una leggera tachicardia'),
(52, 'Lorenzo De Lauretis', 'presminima', 'La tua pressione minima presenta una ipotensione'),
(53, 'Lorenzo De Lauretis', 'presmassima', 'La tua pressione massima presenta una ipotensione'),
(54, 'Lorenzo De Lauretis', 'peso', 'Sei ingrassato di 23.0 chili'),
(55, 'Lorenzo De Lauretis', 'medico', 'Il dottore suggerisce di prendere Tachipirina'),
(56, 'Lorenzo De Lauretis', 'peso', 'Sei ingrassato di 23.0 chili'),
(57, 'Lorenzo De Lauretis', 'medico', 'Il dottore suggerisce di prendere Propafenone'),
(58, 'Lorenzo De Lauretis', 'medico', 'Il dottore suggerisce di prendere Propafenone'),
(59, 'Lorenzo De Lauretis', 'peso', 'Sei ingrassato di 23.0 chili'),
(60, 'Lorenzo De Lauretis', 'medico', 'Il dottore suggerisce di prendere Propafenone'),
(61, 'Lorenzo De Lauretis', 'peso', 'Sei ingrassato di 23.0 chili'),
(62, 'Lorenzo De Lauretis', 'peso', 'Sei ingrassato di 23.0 chili'),
(63, 'Lorenzo De Lauretis', 'medico', 'Il dottore suggerisce di prendere Propafenone'),
(64, 'Lorenzo De Lauretis', 'peso', 'Sei ingrassato di 23.0 chili'),
(65, 'Lorenzo De Lauretis', 'medico', 'Il dottore suggerisce di prendere Propafenone'),
(66, 'Lorenzo De Lauretis', 'peso', 'Sei ingrassato di 23.0 chili'),
(67, 'Lorenzo De Lauretis', 'medico', 'Il dottore suggerisce di prendere Propafenone'),
(68, 'Lorenzo De Lauretis', 'peso', 'Sei ingrassato di 23.0 chili'),
(69, 'Lorenzo De Lauretis', 'medico', 'Il dottore suggerisce di prendere Propafenone'),
(70, 'Lorenzo De Lauretis', 'peso', 'Sei ingrassato di 23.0 chili'),
(71, 'Lorenzo De Lauretis', 'medico', 'Il dottore suggerisce di prendere Propafenone'),
(72, 'Lorenzo De Lauretis', 'peso', 'Sei ingrassato di 23.0 chili'),
(73, 'Lorenzo De Lauretis', 'medico', 'Il dottore suggerisce di prendere Propafenone'),
(74, 'Lorenzo De Lauretis', 'peso', 'Sei ingrassato di 23.0 chili'),
(75, 'Lorenzo De Lauretis', 'medico', 'Il dottore suggerisce di prendere Propafenone'),
(76, 'Lorenzo De Lauretis', 'peso', 'Sei ingrassato di 23.0 chili'),
(77, 'Lorenzo De Lauretis', 'medico', 'Il dottore suggerisce di prendere Propafenone'),
(78, 'Lorenzo De Lauretis', 'peso', 'Sei ingrassato di 23.0 chili'),
(79, 'Lorenzo De Lauretis', 'temperatura', ''),
(80, 'Lorenzo De Lauretis', 'saturazione', 'Hai problemi di ossigenazione'),
(81, 'Lorenzo De Lauretis', 'battito', 'La tua frequenza cardiaca presenta una leggera tachicardia'),
(82, 'Lorenzo De Lauretis', 'presminima', 'La tua pressione minima presenta una ipotensione'),
(83, 'Lorenzo De Lauretis', 'presmassima', 'La tua pressione massima presenta una ipotensione'),
(84, 'Lorenzo De Lauretis', 'temperatura', ''),
(85, 'Lorenzo De Lauretis', 'saturazione', 'Hai problemi di ossigenazione'),
(86, 'Lorenzo De Lauretis', 'battito', 'La tua frequenza cardiaca presenta una leggera tachicardia'),
(87, 'Lorenzo De Lauretis', 'presminima', 'La tua pressione minima presenta una ipertensione'),
(88, 'Lorenzo De Lauretis', 'presmassima', 'La tua pressione massima presenta una ipotensione'),
(89, 'Lorenzo De Lauretis', 'peso', 'Sei dimagrito di 3.0 chili'),
(90, 'Lorenzo De Lauretis', 'medico', 'Devi correre al pronto soccorso'),
(91, 'Lorenzo De Lauretis', 'peso', 'Sei dimagrito di 3.0 chili'),
(92, 'Lorenzo De Lauretis', 'peso', 'Sei dimagrito di 3.0 chili'),
(93, 'Lorenzo De Lauretis', 'temperatura', 'Non hai febbre'),
(94, 'Lorenzo De Lauretis', 'saturazione', 'Hai problemi di ossigenazione'),
(95, 'Lorenzo De Lauretis', 'battito', 'La tua frequenza cardiaca presenta una leggera tachicardia'),
(96, 'Lorenzo De Lauretis', 'presminima', 'La tua pressione minima presenta una ipertensione'),
(97, 'Lorenzo De Lauretis', 'presmassima', 'La tua pressione massima presenta una ipertensione'),
(98, 'Lorenzo De Lauretis', 'temperatura', 'Hai qualche linea di febbre, ti consiglio di riposare'),
(99, 'Lorenzo De Lauretis', 'saturazione', 'Hai problemi di ossigenazione'),
(100, 'Lorenzo De Lauretis', 'battito', 'La tua frequenza cardiaca presenta una leggera tachicardia'),
(101, 'Lorenzo De Lauretis', 'presminima', 'La tua pressione minima presenta una ipotensione'),
(102, 'Lorenzo De Lauretis', 'presmassima', 'La tua pressione massima presenta una ipertensione'),
(103, 'Lorenzo De Lauretis', 'peso', 'Sei dimagrito di 4.0 chili'),
(104, 'Lorenzo De Lauretis', 'peso', 'Sei dimagrito di 4.0 chili'),
(105, 'Lorenzo De Lauretis', 'peso', 'Sei dimagrito di 4.0 chili'),
(106, 'Lorenzo De Lauretis', 'peso', 'Sei dimagrito di 4.0 chili'),
(107, 'Lorenzo De Lauretis', 'peso', 'Sei dimagrito di 4.0 chili'),
(108, 'Lorenzo De Lauretis', 'peso', 'Sei dimagrito di 4.0 chili'),
(109, 'Lorenzo De Lauretis', 'peso', 'Sei dimagrito di 4.0 chili'),
(110, 'Lorenzo De Lauretis', 'peso', 'Sei dimagrito di 4.0 chili'),
(111, 'Lorenzo De Lauretis', 'temperatura', 'Non hai febbre'),
(112, 'Lorenzo De Lauretis', 'saturazione', 'Hai problemi di ossigenazione'),
(113, 'Lorenzo De Lauretis', 'battito', 'La tua frequenza cardiaca presenta una leggera tachicardia'),
(114, 'Lorenzo De Lauretis', 'presminima', 'La tua pressione minima presenta una ipotensione'),
(115, 'Lorenzo De Lauretis', 'presmassima', 'La tua pressione massima presenta una ipertensione'),
(116, 'Lorenzo De Lauretis', 'peso', 'Sei ingrassato di 14.0 chili'),
(117, 'Lorenzo De Lauretis', 'temperatura', 'Non hai febbre'),
(118, 'Lorenzo De Lauretis', 'saturazione', 'Hai problemi di ossigenazione'),
(119, 'Lorenzo De Lauretis', 'battito', 'La tua frequenza cardiaca presenta una leggera tachicardia'),
(120, 'Lorenzo De Lauretis', 'presminima', 'La tua pressione minima presenta una ipertensione'),
(121, 'Lorenzo De Lauretis', 'presmassima', 'La tua pressione massima presenta una ipertensione'),
(122, 'Lorenzo De Lauretis', 'medico', 'Il dottore suggerisce di ridurre il consumo di acqua'),
(123, 'Lorenzo De Lauretis', 'temperatura', ''),
(124, 'Lorenzo De Lauretis', 'saturazione', 'Hai un leggero problema di ossigenazione'),
(125, 'Lorenzo De Lauretis', 'battito', 'La tua frequenza cardiaca presenta una leggera tachicardia'),
(126, 'Lorenzo De Lauretis', 'presminima', 'La tua pressione minima presenta una ipertensione'),
(127, 'Lorenzo De Lauretis', 'presmassima', 'La tua pressione massima presenta una ipotensione'),
(128, 'Lorenzo De Lauretis', 'peso', 'Sei ingrassato di 7.0 chili'),
(129, 'Lorenzo De Lauretis', 'medico', 'Il dottore suggerisce di prendere Tachipirina'),
(130, 'Lorenzo De Lauretis', 'medico', 'Il dottore suggerisce di prendere Propafenone'),
(131, 'Lorenzo De Lauretis', 'peso', 'Sei dimagrito di 27.0 chili'),
(132, 'Lorenzo De Lauretis', 'temperatura', 'Hai qualche linea di febbre, ti consiglio di riposare'),
(133, 'Lorenzo De Lauretis', 'saturazione', 'Non hai problemi di ossigenazione'),
(134, 'Lorenzo De Lauretis', 'battito', 'La tua frequenza cardiaca presenta una leggera tachicardia'),
(135, 'Lorenzo De Lauretis', 'presminima', 'La tua pressione minima presenta una ipertensione'),
(136, 'Lorenzo De Lauretis', 'presmassima', 'La tua pressione massima presenta una ipertensione'),
(137, 'Lorenzo De Lauretis', 'peso', 'Sei ingrassato di 27.0 chili'),
(138, 'Lorenzo De Lauretis', 'temperatura', ''),
(139, 'Lorenzo De Lauretis', 'saturazione', 'Hai problemi di ossigenazione'),
(140, 'Lorenzo De Lauretis', 'battito', 'La tua frequenza cardiaca presenta una leggera tachicardia'),
(141, 'Lorenzo De Lauretis', 'presminima', 'La tua pressione minima presenta una ipertensione'),
(142, 'Lorenzo De Lauretis', 'presmassima', 'La tua pressione massima non presenta problemi'),
(143, 'Lorenzo De Lauretis', 'medico', 'Il dottore suggerisce di prendere Propafenone'),
(144, 'Lorenzo De Lauretis', 'peso', 'Sei dimagrito di 26.0 chili'),
(145, 'Lorenzo De Lauretis', 'temperatura', ''),
(146, 'Lorenzo De Lauretis', 'saturazione', 'Hai problemi di ossigenazione'),
(147, 'Lorenzo De Lauretis', 'battito', 'La tua frequenza cardiaca presenta una leggera tachicardia'),
(148, 'Lorenzo De Lauretis', 'presminima', 'La tua pressione minima presenta una ipotensione'),
(149, 'Lorenzo De Lauretis', 'presmassima', 'La tua pressione massima presenta una ipotensione'),
(150, 'Lorenzo De Lauretis', 'medico', 'Il dottore suggerisce di ridurre il consumo di acqua'),
(151, 'Lorenzo De Lauretis', 'medico', 'Devi correre al pronto soccorso'),
(152, 'Lorenzo De Lauretis', 'temperatura', 'Non hai febbre'),
(153, 'Lorenzo De Lauretis', 'saturazione', 'Hai problemi di ossigenazione'),
(154, 'Lorenzo De Lauretis', 'battito', 'La tua frequenza cardiaca presenta una leggera tachicardia'),
(155, 'Lorenzo De Lauretis', 'presminima', 'La tua pressione minima presenta una ipotensione'),
(156, 'Lorenzo De Lauretis', 'presmassima', 'La tua pressione massima presenta una ipotensione'),
(157, 'Lorenzo De Lauretis', 'medico', 'Il dottore suggerisce di prendere Propafenone'),
(158, 'Lorenzo De Lauretis', 'temperatura', ''),
(159, 'Lorenzo De Lauretis', 'saturazione', 'Hai problemi di ossigenazione'),
(160, 'Lorenzo De Lauretis', 'battito', 'La tua frequenza cardiaca presenta una leggera tachicardia'),
(161, 'Lorenzo De Lauretis', 'presminima', 'La tua pressione minima presenta una ipotensione'),
(162, 'Lorenzo De Lauretis', 'presmassima', 'La tua pressione massima presenta una ipotensione'),
(163, 'Lorenzo De Lauretis', 'temperatura', ''),
(164, 'Lorenzo De Lauretis', 'saturazione', 'Hai problemi di ossigenazione'),
(165, 'Lorenzo De Lauretis', 'battito', 'La tua frequenza cardiaca presenta una leggera tachicardia'),
(166, 'Lorenzo De Lauretis', 'presminima', 'La tua pressione minima non presenta problemi'),
(167, 'Lorenzo De Lauretis', 'presmassima', 'La tua pressione massima presenta una ipertensione'),
(168, 'Lorenzo De Lauretis', 'medico', 'Devi correre al pronto soccorso'),
(169, 'Lorenzo De Lauretis', 'temperatura', 'Non hai febbre'),
(170, 'Lorenzo De Lauretis', 'saturazione', 'Hai problemi di ossigenazione'),
(171, 'Lorenzo De Lauretis', 'battito', 'La tua frequenza cardiaca presenta una leggera tachicardia'),
(172, 'Lorenzo De Lauretis', 'presminima', 'La tua pressione minima presenta una ipotensione'),
(173, 'Lorenzo De Lauretis', 'presmassima', 'La tua pressione massima presenta una ipotensione'),
(174, 'Lorenzo De Lauretis', 'medico', 'Il dottore suggerisce di prendere Propafenone'),
(175, 'Lorenzo De Lauretis', 'peso', 'Sei ingrassato di 18.0 chili'),
(176, 'Lorenzo De Lauretis', 'medico', 'Devi correre al pronto soccorso'),
(177, 'Lorenzo De Lauretis', 'medico', 'Il dottore suggerisce di ridurre il consumo di acqua'),
(178, 'Lorenzo De Lauretis', 'medico', 'Devi correre al pronto soccorso'),
(179, 'Lorenzo De Lauretis', 'medico', 'Il dottore suggerisce di prendere Propafenone'),
(180, 'Lorenzo De Lauretis', 'temperatura', ''),
(181, 'Lorenzo De Lauretis', 'saturazione', 'Hai problemi di ossigenazione'),
(182, 'Lorenzo De Lauretis', 'battito', 'La tua frequenza cardiaca presenta una leggera tachicardia'),
(183, 'Lorenzo De Lauretis', 'presminima', 'La tua pressione minima presenta una ipotensione'),
(184, 'Lorenzo De Lauretis', 'presmassima', 'La tua pressione massima presenta una ipertensione'),
(185, 'Lorenzo De Lauretis', 'medico', 'Il dottore suggerisce di prendere Tachipirina'),
(186, 'Lorenzo De Lauretis', 'temperatura', 'Non hai febbre'),
(187, 'Lorenzo De Lauretis', 'saturazione', 'Non hai problemi di ossigenazione'),
(188, 'Lorenzo De Lauretis', 'battito', 'La tua frequenza cardiaca presenta una leggera tachicardia'),
(189, 'Lorenzo De Lauretis', 'presminima', 'La tua pressione minima presenta una ipotensione'),
(190, 'Lorenzo De Lauretis', 'presmassima', 'La tua pressione massima presenta una ipertensione'),
(191, 'Lorenzo De Lauretis', 'peso', 'Sei dimagrito di 41.0 chili'),
(192, 'Lorenzo De Lauretis', 'temperatura', ''),
(193, 'Lorenzo De Lauretis', 'saturazione', 'Non hai problemi di ossigenazione'),
(194, 'Lorenzo De Lauretis', 'battito', 'La tua frequenza cardiaca presenta una leggera tachicardia'),
(195, 'Lorenzo De Lauretis', 'presminima', 'La tua pressione minima presenta una ipotensione'),
(196, 'Lorenzo De Lauretis', 'presmassima', 'La tua pressione massima presenta una ipotensione'),
(197, 'Lorenzo De Lauretis', 'peso', 'Sei ingrassato di 7.0 chili'),
(198, 'Lorenzo De Lauretis', 'medico', 'Il dottore suggerisce di prendere Tachipirina'),
(199, 'Lorenzo De Lauretis', 'medico', 'Il dottore suggerisce di prendere Propafenone'),
(200, 'Lorenzo De Lauretis', 'temperatura', 'Non hai febbre'),
(201, 'Lorenzo De Lauretis', 'saturazione', 'Hai problemi di ossigenazione'),
(202, 'Lorenzo De Lauretis', 'battito', 'La tua frequenza cardiaca presenta una leggera tachicardia'),
(203, 'Lorenzo De Lauretis', 'presminima', 'La tua pressione minima presenta una ipotensione'),
(204, 'Lorenzo De Lauretis', 'presmassima', 'La tua pressione massima presenta una ipertensione'),
(205, 'Lorenzo De Lauretis', 'peso', 'Sei ingrassato di 27.0 chili'),
(206, 'Lorenzo De Lauretis', 'medico', 'Il dottore suggerisce di ridurre il consumo di acqua'),
(207, 'Lorenzo De Lauretis', 'medico', 'Il dottore suggerisce di prendere Propafenone'),
(208, 'Lorenzo De Lauretis', 'temperatura', ''),
(209, 'Lorenzo De Lauretis', 'saturazione', 'Hai problemi di ossigenazione'),
(210, 'Lorenzo De Lauretis', 'battito', 'La tua frequenza cardiaca presenta una leggera tachicardia'),
(211, 'Lorenzo De Lauretis', 'presminima', 'La tua pressione minima presenta una ipertensione'),
(212, 'Lorenzo De Lauretis', 'presmassima', 'La tua pressione massima non presenta problemi'),
(213, 'Lorenzo De Lauretis', 'medico', 'Devi correre al pronto soccorso'),
(214, 'Lorenzo De Lauretis', 'peso', 'Sei dimagrito di 33.0 chili'),
(215, 'Lorenzo De Lauretis', 'medico', 'Il dottore suggerisce di prendere Propafenone'),
(216, 'Lorenzo De Lauretis', 'peso', 'Sei ingrassato di 47.0 chili'),
(217, 'Lorenzo De Lauretis', 'temperatura', ''),
(218, 'Lorenzo De Lauretis', 'saturazione', 'Hai problemi di ossigenazione'),
(219, 'Lorenzo De Lauretis', 'battito', 'La tua frequenza cardiaca presenta una leggera tachicardia'),
(220, 'Lorenzo De Lauretis', 'presminima', 'La tua pressione minima presenta una ipotensione'),
(221, 'Lorenzo De Lauretis', 'presmassima', 'La tua pressione massima presenta una ipotensione'),
(222, 'Lorenzo De Lauretis', 'medico', 'Il dottore suggerisce di ridurre il consumo di acqua'),
(223, 'Lorenzo De Lauretis', 'temperatura', 'Non hai febbre'),
(224, 'Lorenzo De Lauretis', 'saturazione', 'Hai problemi di ossigenazione'),
(225, 'Lorenzo De Lauretis', 'battito', 'La tua frequenza cardiaca presenta una leggera tachicardia'),
(226, 'Lorenzo De Lauretis', 'presminima', 'La tua pressione minima presenta una ipotensione'),
(227, 'Lorenzo De Lauretis', 'presmassima', 'La tua pressione massima presenta una ipotensione'),
(228, 'Lorenzo De Lauretis', 'medico', 'Devi correre al pronto soccorso'),
(229, 'Lorenzo De Lauretis', 'medico', 'Devi correre al pronto soccorso'),
(230, 'Lorenzo De Lauretis', 'temperatura', 'Non hai febbre'),
(231, 'Lorenzo De Lauretis', 'saturazione', 'Hai problemi di ossigenazione'),
(232, 'Lorenzo De Lauretis', 'battito', 'La tua frequenza cardiaca presenta una leggera tachicardia'),
(233, 'Lorenzo De Lauretis', 'presminima', 'La tua pressione minima presenta una ipertensione'),
(234, 'Lorenzo De Lauretis', 'presmassima', 'La tua pressione massima presenta una ipertensione'),
(235, 'Lorenzo De Lauretis', 'peso', 'Sei dimagrito di 14.0 chili'),
(236, 'Lorenzo De Lauretis', 'medico', 'Devi correre al pronto soccorso'),
(237, 'Lorenzo De Lauretis', 'medico', 'Il dottore suggerisce di prendere Propafenone'),
(238, 'Lorenzo De Lauretis', 'peso', 'Sei dimagrito di 18.0 chili'),
(239, 'Lorenzo De Lauretis', 'temperatura', ''),
(240, 'Lorenzo De Lauretis', 'saturazione', 'Non hai problemi di ossigenazione'),
(241, 'Lorenzo De Lauretis', 'battito', 'La tua frequenza cardiaca presenta una leggera tachicardia'),
(242, 'Lorenzo De Lauretis', 'presminima', 'La tua pressione minima non presenta problemi'),
(243, 'Lorenzo De Lauretis', 'presmassima', 'La tua pressione massima presenta una ipotensione'),
(244, 'Lorenzo De Lauretis', 'temperatura', ''),
(245, 'Lorenzo De Lauretis', 'saturazione', 'Non hai problemi di ossigenazione'),
(246, 'Lorenzo De Lauretis', 'battito', 'La tua frequenza cardiaca presenta una leggera tachicardia'),
(247, 'Lorenzo De Lauretis', 'presminima', 'La tua pressione minima presenta una ipotensione'),
(248, 'Lorenzo De Lauretis', 'presmassima', 'La tua pressione massima presenta una ipotensione'),
(249, 'Lorenzo De Lauretis', 'medico', 'Il dottore suggerisce di prendere Tachipirina'),
(250, 'Lorenzo De Lauretis', 'peso', 'Sei ingrassato di 27.0 chili'),
(251, 'Lorenzo De Lauretis', 'medico', 'Il dottore suggerisce di prendere Tachipirina'),
(252, 'Lorenzo De Lauretis', 'medico', 'Il dottore suggerisce di prendere Propafenone'),
(253, 'Lorenzo De Lauretis', 'temperatura', ''),
(254, 'Lorenzo De Lauretis', 'saturazione', 'Hai problemi di ossigenazione'),
(255, 'Lorenzo De Lauretis', 'battito', 'La tua frequenza cardiaca presenta una leggera tachicardia'),
(256, 'Lorenzo De Lauretis', 'presminima', 'La tua pressione minima presenta una ipertensione'),
(257, 'Lorenzo De Lauretis', 'presmassima', 'La tua pressione massima presenta una ipotensione'),
(258, 'Lorenzo De Lauretis', 'medico', 'Devi correre al pronto soccorso'),
(259, 'Lorenzo De Lauretis', 'temperatura', ''),
(260, 'Lorenzo De Lauretis', 'saturazione', 'Hai problemi di ossigenazione'),
(261, 'Lorenzo De Lauretis', 'battito', 'La tua frequenza cardiaca presenta una leggera tachicardia'),
(262, 'Lorenzo De Lauretis', 'presminima', 'La tua pressione minima presenta una ipotensione'),
(263, 'Lorenzo De Lauretis', 'presmassima', 'La tua pressione massima presenta una ipotensione'),
(264, 'Lorenzo De Lauretis', 'peso', 'Sei dimagrito di 14.0 chili'),
(265, 'Lorenzo De Lauretis', 'medico', 'Il dottore suggerisce di prendere Tachipirina'),
(266, 'Lorenzo De Lauretis', 'peso', 'Sei ingrassato di 28.0 chili'),
(267, 'Lorenzo De Lauretis', 'temperatura', ''),
(268, 'Lorenzo De Lauretis', 'saturazione', 'Hai problemi di ossigenazione'),
(269, 'Lorenzo De Lauretis', 'battito', 'La tua frequenza cardiaca presenta una leggera tachicardia'),
(270, 'Lorenzo De Lauretis', 'presminima', 'La tua pressione minima presenta una ipotensione'),
(271, 'Lorenzo De Lauretis', 'presmassima', 'La tua pressione massima presenta una ipotensione'),
(272, 'Lorenzo De Lauretis', 'medico', 'Il dottore suggerisce di ridurre il consumo di acqua'),
(273, 'Lorenzo De Lauretis', 'medico', 'Il dottore suggerisce di prendere Tachipirina'),
(274, 'Lorenzo De Lauretis', 'peso', 'Sei dimagrito di 27.0 chili'),
(275, 'Lorenzo De Lauretis', 'temperatura', ''),
(276, 'Lorenzo De Lauretis', 'saturazione', 'Hai un leggero problema di ossigenazione'),
(277, 'Lorenzo De Lauretis', 'battito', 'La tua frequenza cardiaca presenta una leggera tachicardia'),
(278, 'Lorenzo De Lauretis', 'presminima', 'La tua pressione minima presenta una ipertensione'),
(279, 'Lorenzo De Lauretis', 'presmassima', 'La tua pressione massima presenta una ipertensione'),
(280, 'Lorenzo De Lauretis', 'medico', 'Devi correre al pronto soccorso'),
(281, 'Lorenzo De Lauretis', 'medico', 'Il dottore suggerisce di prendere Propafenone'),
(282, 'Lorenzo De Lauretis', 'peso', 'Sei ingrassato di 24.0 chili'),
(283, 'Lorenzo De Lauretis', 'temperatura', ''),
(284, 'Lorenzo De Lauretis', 'saturazione', 'Hai problemi di ossigenazione'),
(285, 'Lorenzo De Lauretis', 'battito', 'La tua frequenza cardiaca presenta una leggera tachicardia'),
(286, 'Lorenzo De Lauretis', 'presminima', 'La tua pressione minima presenta una ipertensione'),
(287, 'Lorenzo De Lauretis', 'presmassima', 'La tua pressione massima presenta una ipotensione'),
(288, 'Lorenzo De Lauretis', 'peso', 'Sei ingrassato di 10.0 chili'),
(289, 'Lorenzo De Lauretis', 'temperatura', 'Non hai febbre'),
(290, 'Lorenzo De Lauretis', 'saturazione', 'Hai problemi di ossigenazione'),
(291, 'Lorenzo De Lauretis', 'battito', 'La tua frequenza cardiaca presenta una leggera tachicardia'),
(292, 'Lorenzo De Lauretis', 'presminima', 'La tua pressione minima presenta una ipertensione'),
(293, 'Lorenzo De Lauretis', 'presmassima', 'La tua pressione massima presenta una ipotensione'),
(294, 'Lorenzo De Lauretis', 'medico', 'Il dottore suggerisce di prendere Tachipirina'),
(295, 'Lorenzo De Lauretis', 'medico', 'Il dottore suggerisce di prendere Propafenone'),
(296, 'Lorenzo De Lauretis', 'peso', 'Sei dimagrito di 14.0 chili'),
(297, 'Lorenzo De Lauretis', 'temperatura', ''),
(298, 'Lorenzo De Lauretis', 'saturazione', 'Non hai problemi di ossigenazione'),
(299, 'Lorenzo De Lauretis', 'battito', 'La tua frequenza cardiaca presenta una leggera tachicardia'),
(300, 'Lorenzo De Lauretis', 'presminima', 'La tua pressione minima presenta una ipotensione'),
(301, 'Lorenzo De Lauretis', 'presmassima', 'La tua pressione massima presenta una ipotensione'),
(302, 'Lorenzo De Lauretis', 'peso', 'Sei dimagrito di 19.0 chili'),
(303, 'Lorenzo De Lauretis', 'temperatura', ''),
(304, 'Lorenzo De Lauretis', 'saturazione', 'Hai problemi di ossigenazione'),
(305, 'Lorenzo De Lauretis', 'battito', 'La tua frequenza cardiaca presenta una leggera tachicardia'),
(306, 'Lorenzo De Lauretis', 'presminima', 'La tua pressione minima presenta una ipotensione'),
(307, 'Lorenzo De Lauretis', 'presmassima', 'La tua pressione massima presenta una ipotensione'),
(308, 'Lorenzo De Lauretis', 'medico', 'Il dottore suggerisce di ridurre il consumo di acqua'),
(309, 'Lorenzo De Lauretis', 'medico', 'Il dottore suggerisce di prendere Tachipirina'),
(310, 'Lorenzo De Lauretis', 'peso', 'Sei dimagrito di 4.0 chili'),
(311, 'Lorenzo De Lauretis', 'temperatura', ''),
(312, 'Lorenzo De Lauretis', 'saturazione', 'Hai problemi di ossigenazione'),
(313, 'Lorenzo De Lauretis', 'battito', 'La tua frequenza cardiaca presenta una leggera tachicardia'),
(314, 'Lorenzo De Lauretis', 'presminima', 'La tua pressione minima presenta una ipotensione'),
(315, 'Lorenzo De Lauretis', 'presmassima', 'La tua pressione massima presenta una ipertensione'),
(316, 'Lorenzo De Lauretis', 'medico', 'Il dottore suggerisce di prendere Propafenone'),
(317, 'Lorenzo De Lauretis', 'peso', 'Sei dimagrito di 3.0 chili'),
(318, 'Lorenzo De Lauretis', 'temperatura', ''),
(319, 'Lorenzo De Lauretis', 'saturazione', 'Hai problemi di ossigenazione'),
(320, 'Lorenzo De Lauretis', 'battito', 'La tua frequenza cardiaca presenta una leggera tachicardia'),
(321, 'Lorenzo De Lauretis', 'presminima', 'La tua pressione minima presenta una ipertensione'),
(322, 'Lorenzo De Lauretis', 'presmassima', 'La tua pressione massima presenta una ipertensione'),
(323, 'Lorenzo De Lauretis', 'medico', 'Il dottore suggerisce di ridurre il consumo di acqua'),
(324, 'Lorenzo De Lauretis', 'medico', 'Il dottore suggerisce di prendere Propafenone'),
(325, 'Lorenzo De Lauretis', 'medico', 'Devi correre al pronto soccorso'),
(326, 'Lorenzo De Lauretis', 'medico', 'Il dottore suggerisce di prendere Propafenone'),
(327, 'Lorenzo De Lauretis', 'medico', 'Il dottore suggerisce di prendere Tachipirina'),
(328, 'Lorenzo De Lauretis', 'medico', 'Il dottore suggerisce di prendere Propafenone'),
(329, 'Lorenzo De Lauretis', 'medico', 'Devi correre al pronto soccorso'),
(330, 'Lorenzo De Lauretis', 'medico', 'Il dottore suggerisce di prendere Propafenone'),
(331, 'Lorenzo De Lauretis', 'medico', 'Il dottore suggerisce di prendere Tachipirina'),
(332, 'Lorenzo De Lauretis', 'medico', 'Devi correre al pronto soccorso'),
(333, 'Lorenzo De Lauretis', 'medico', 'Il dottore suggerisce di prendere Propafenone'),
(334, 'Lorenzo De Lauretis', 'temperatura', 'Hai qualche linea di febbre, ti consiglio di riposare'),
(335, 'Lorenzo De Lauretis', 'saturazione', 'Hai un leggero problema di ossigenazione'),
(336, 'Lorenzo De Lauretis', 'battito', 'La tua frequenza cardiaca presenta una leggera tachicardia'),
(337, 'Lorenzo De Lauretis', 'presminima', 'La tua pressione minima presenta una ipotensione'),
(338, 'Lorenzo De Lauretis', 'presmassima', 'La tua pressione massima non presenta problemi'),
(339, 'Lorenzo De Lauretis', 'medico', 'Il dottore suggerisce di prendere Pastiglia sub-linguale'),
(340, 'Lorenzo De Lauretis', 'medico', 'Il dottore suggerisce di prendere Pastiglia sub-linguale'),
(341, 'Lorenzo De Lauretis', 'temperatura', 'Hai qualche linea di febbre, ti consiglio di riposare'),
(342, 'Lorenzo De Lauretis', 'saturazione', 'Hai un leggero problema di ossigenazione'),
(343, 'Lorenzo De Lauretis', 'peso', 'Il tuo peso non ha subito variazioni'),
(344, 'Lorenzo De Lauretis', 'battito', 'La tua frequenza cardiaca presenta una leggera tachicardia'),
(345, 'Lorenzo De Lauretis', 'presminima', 'La tua pressione minima presenta una ipotensione'),
(346, 'Lorenzo De Lauretis', 'presmassima', 'La tua pressione massima non presenta problemi'),
(347, 'Lorenzo De Lauretis', 'medico', 'Il dottore suggerisce di prendere Pastiglia sub-linguale'),
(348, 'Lorenzo De Lauretis', 'temperatura', 'Hai qualche linea di febbre, ti consiglio di riposare'),
(349, 'Lorenzo De Lauretis', 'saturazione', 'Hai un leggero problema di ossigenazione'),
(350, 'Lorenzo De Lauretis', 'battito', 'La tua frequenza cardiaca presenta una leggera tachicardia'),
(351, 'Lorenzo De Lauretis', 'peso', 'Il tuo peso non ha subito variazioni'),
(352, 'Lorenzo De Lauretis', 'presminima', 'La tua pressione minima presenta una ipotensione'),
(353, 'Lorenzo De Lauretis', 'presmassima', 'La tua pressione massima non presenta problemi'),
(354, 'Lorenzo De Lauretis', 'medico', 'Il dottore suggerisce di prendere Pastiglia sub-linguale'),
(355, 'Lorenzo De Lauretis', 'temperatura', 'Hai qualche linea di febbre, ti consiglio di riposare'),
(356, 'Lorenzo De Lauretis', 'saturazione', 'Hai un leggero problema di ossigenazione'),
(357, 'Lorenzo De Lauretis', 'battito', 'La tua frequenza cardiaca presenta una leggera tachicardia'),
(358, 'Lorenzo De Lauretis', 'presminima', 'La tua pressione minima presenta una ipotensione'),
(359, 'Lorenzo De Lauretis', 'peso', 'Il tuo peso non ha subito variazioni'),
(360, 'Lorenzo De Lauretis', 'presmassima', 'La tua pressione massima non presenta problemi'),
(361, 'Lorenzo De Lauretis', 'medico', 'Il dottore suggerisce di prendere Pastiglia sub-linguale'),
(362, 'Lorenzo De Lauretis', 'temperatura', 'Hai qualche linea di febbre, ti consiglio di riposare'),
(363, 'Lorenzo De Lauretis', 'saturazione', 'Hai un leggero problema di ossigenazione'),
(364, 'Lorenzo De Lauretis', 'battito', 'La tua frequenza cardiaca presenta una leggera tachicardia'),
(365, 'Lorenzo De Lauretis', 'presminima', 'La tua pressione minima presenta una ipotensione'),
(366, 'Lorenzo De Lauretis', 'presmassima', 'La tua pressione massima non presenta problemi'),
(367, 'Lorenzo De Lauretis', 'medico', 'Il dottore suggerisce di prendere Pastiglia sub-linguale'),
(368, 'Lorenzo De Lauretis', 'peso', 'Il tuo peso non ha subito variazioni'),
(369, 'lorenzo de lauretis', 'temperatura', 'Hai qualche linea di febbre, ti consiglio di riposare'),
(370, 'lorenzo de lauretis', 'saturazione', 'Hai un leggero problema di ossigenazione'),
(371, 'lorenzo de lauretis', 'battito', 'La tua frequenza cardiaca presenta una leggera tachicardia'),
(372, 'lorenzo de lauretis', 'presminima', 'La tua pressione minima presenta una ipotensione'),
(373, 'lorenzo de lauretis', 'presmassima', 'La tua pressione massima non presenta problemi'),
(374, 'lorenzo de lauretis', 'medico', 'Il dottore suggerisce di prendere Pastiglia sub-linguale'),
(375, 'lorenzo de lauretis', 'peso', 'Il tuo peso non ha subito variazioni'),
(376, 'lorenzo de lauretis', 'temperatura', 'Hai qualche linea di febbre, ti consiglio di riposare'),
(377, 'lorenzo de lauretis', 'saturazione', 'Hai un leggero problema di ossigenazione'),
(378, 'lorenzo de lauretis', 'battito', 'La tua frequenza cardiaca presenta una leggera tachicardia'),
(379, 'lorenzo de lauretis', 'presminima', 'La tua pressione minima presenta una ipotensione'),
(380, 'lorenzo de lauretis', 'presmassima', 'La tua pressione massima non presenta problemi'),
(381, 'lorenzo de lauretis', 'peso', 'Il tuo peso non ha subito variazioni'),
(382, 'lorenzo de lauretis', 'temperatura', 'Hai qualche linea di febbre, ti consiglio di riposare'),
(383, 'lorenzo de lauretis', 'saturazione', 'Hai un leggero problema di ossigenazione'),
(384, 'lorenzo de lauretis', 'battito', 'La tua frequenza cardiaca presenta una leggera tachicardia'),
(385, 'lorenzo de lauretis', 'presminima', 'La tua pressione minima presenta una ipotensione'),
(386, 'lorenzo de lauretis', 'presmassima', 'La tua pressione massima non presenta problemi'),
(387, 'lorenzo de lauretis', 'temperatura', 'Hai qualche linea di febbre, ti consiglio di riposare'),
(388, 'lorenzo de lauretis', 'saturazione', 'Hai un leggero problema di ossigenazione'),
(389, 'lorenzo de lauretis', 'battito', 'La tua frequenza cardiaca presenta una leggera tachicardia'),
(390, 'lorenzo de lauretis', 'presminima', 'La tua pressione minima presenta una ipotensione'),
(391, 'lorenzo de lauretis', 'presmassima', 'La tua pressione massima non presenta problemi'),
(392, 'lorenzo de lauretis', 'temperatura', 'Hai qualche linea di febbre, ti consiglio di riposare'),
(393, 'lorenzo de lauretis', 'saturazione', 'Hai un leggero problema di ossigenazione'),
(394, 'lorenzo de lauretis', 'battito', 'La tua frequenza cardiaca presenta una leggera tachicardia'),
(395, 'lorenzo de lauretis', 'presminima', 'La tua pressione minima presenta una ipotensione'),
(396, 'lorenzo de lauretis', 'presmassima', 'La tua pressione massima non presenta problemi'),
(397, 'lorenzo de lauretis', 'medico', 'Il dottore suggerisce di prendere Pastiglia sub-linguale'),
(398, 'lorenzo de lauretis', 'temperatura', 'Hai qualche linea di febbre, ti consiglio di riposare'),
(399, 'lorenzo de lauretis', 'saturazione', 'Hai un leggero problema di ossigenazione'),
(400, 'lorenzo de lauretis', 'battito', 'La tua frequenza cardiaca presenta una leggera tachicardia'),
(401, 'lorenzo de lauretis', 'presminima', 'La tua pressione minima presenta una ipotensione'),
(402, 'lorenzo de lauretis', 'presmassima', 'La tua pressione massima non presenta problemi'),
(403, 'lorenzo de lauretis', 'temperatura', 'Hai qualche linea di febbre, ti consiglio di riposare'),
(404, 'lorenzo de lauretis', 'saturazione', 'Hai un leggero problema di ossigenazione'),
(405, 'lorenzo de lauretis', 'battito', 'La tua frequenza cardiaca presenta una leggera tachicardia'),
(406, 'lorenzo de lauretis', 'presminima', 'La tua pressione minima presenta una ipotensione'),
(407, 'lorenzo de lauretis', 'presmassima', 'La tua pressione massima non presenta problemi'),
(408, 'lorenzo de lauretis', 'medico', 'Il dottore suggerisce di prendere Pastiglia sub-linguale'),
(409, 'lorenzo de lauretis', 'peso', 'Il tuo peso non ha subito variazioni'),
(410, 'lorenzo de lauretis', 'medico', 'Il dottore suggerisce di prendere Pastiglia sub-linguale'),
(411, 'lorenzo de lauretis', 'temperatura', 'Hai qualche linea di febbre, ti consiglio di riposare'),
(412, 'lorenzo de lauretis', 'saturazione', 'Hai un leggero problema di ossigenazione'),
(413, 'lorenzo de lauretis', 'battito', 'La tua frequenza cardiaca presenta una leggera tachicardia'),
(414, 'lorenzo de lauretis', 'presminima', 'La tua pressione minima presenta una ipotensione'),
(415, 'lorenzo de lauretis', 'presmassima', 'La tua pressione massima non presenta problemi'),
(416, 'lorenzo de lauretis', 'medico', 'Il dottore suggerisce di prendere Pastiglia sub-linguale'),
(417, 'lorenzo de lauretis', 'peso', 'Il tuo peso non ha subito variazioni'),
(418, 'lorenzo de lauretis', 'temperatura', 'Hai qualche linea di febbre, ti consiglio di riposare'),
(419, 'lorenzo de lauretis', 'saturazione', 'Hai un leggero problema di ossigenazione'),
(420, 'lorenzo de lauretis', 'battito', 'La tua frequenza cardiaca presenta una leggera tachicardia'),
(421, 'lorenzo de lauretis', 'presminima', 'La tua pressione minima presenta una ipotensione'),
(422, 'lorenzo de lauretis', 'presmassima', 'La tua pressione massima non presenta problemi'),
(423, 'lorenzo de lauretis', 'peso', 'Il tuo peso non ha subito variazioni'),
(424, 'lorenzo de lauretis', 'medico', 'Il dottore suggerisce di prendere Pastiglia sub-linguale'),
(425, 'lorenzo de lauretis', 'peso', 'Il tuo peso non ha subito variazioni'),
(426, 'lorenzo de lauretis', 'temperatura', 'Hai qualche linea di febbre, ti consiglio di riposare'),
(427, 'lorenzo de lauretis', 'saturazione', 'Hai un leggero problema di ossigenazione'),
(428, 'lorenzo de lauretis', 'battito', 'La tua frequenza cardiaca presenta una leggera tachicardia'),
(429, 'lorenzo de lauretis', 'presminima', 'La tua pressione minima presenta una ipotensione'),
(430, 'lorenzo de lauretis', 'presmassima', 'La tua pressione massima non presenta problemi'),
(431, 'lorenzo de lauretis', 'medico', 'Il dottore suggerisce di prendere Pastiglia sub-linguale'),
(432, 'lorenzo de lauretis', 'temperatura', ''),
(433, 'lorenzo de lauretis', 'saturazione', 'Hai un leggero problema di ossigenazione'),
(434, 'lorenzo de lauretis', 'battito', 'La tua frequenza cardiaca presenta una leggera tachicardia'),
(435, 'lorenzo de lauretis', 'presminima', 'La tua pressione minima presenta una ipotensione'),
(436, 'lorenzo de lauretis', 'presmassima', 'La tua pressione massima presenta una ipotensione'),
(437, 'lorenzo de lauretis', 'medico', 'Devi correre al pronto soccorso'),
(438, 'lorenzo de lauretis', 'medico', 'Il dottore suggerisce di prendere Pastiglia sub-linguale'),
(439, 'lorenzo de lauretis', 'temperatura', ''),
(440, 'lorenzo de lauretis', 'saturazione', 'Hai problemi di ossigenazione'),
(441, 'lorenzo de lauretis', 'battito', 'La tua frequenza cardiaca presenta una leggera tachicardia'),
(442, 'lorenzo de lauretis', 'presminima', 'La tua pressione minima presenta una ipertensione'),
(443, 'lorenzo de lauretis', 'presmassima', 'La tua pressione massima presenta una ipotensione'),
(444, 'lorenzo de lauretis', 'peso', 'Sei dimagrito di 40.0 chili'),
(445, 'lorenzo de lauretis', 'medico', 'Il dottore suggerisce di prendere Tachipirina'),
(446, 'lorenzo de lauretis', 'medico', 'Il dottore suggerisce di prendere Pastiglia sub-linguale'),
(447, 'lorenzo de lauretis', 'temperatura', 'Non hai febbre'),
(448, 'lorenzo de lauretis', 'saturazione', 'Hai problemi di ossigenazione'),
(449, 'lorenzo de lauretis', 'battito', 'La tua frequenza cardiaca presenta una leggera tachicardia'),
(450, 'lorenzo de lauretis', 'presminima', 'La tua pressione minima presenta una ipotensione'),
(451, 'lorenzo de lauretis', 'presmassima', 'La tua pressione massima presenta una ipertensione'),
(452, 'lorenzo de lauretis', 'peso', 'Sei ingrassato di 17.0 chili'),
(453, 'lorenzo de lauretis', 'medico', 'Il dottore suggerisce di prendere bevi meno'),
(454, 'lorenzo de lauretis', 'medico', 'Il dottore suggerisce di prendere Propafenone'),
(455, 'lorenzo de lauretis', 'medico', 'Il dottore suggerisce di prendere Pastiglia sub-linguale'),
(456, 'lorenzo de lauretis', 'temperatura', ''),
(457, 'lorenzo de lauretis', 'saturazione', 'Non hai problemi di ossigenazione'),
(458, 'lorenzo de lauretis', 'battito', 'La tua frequenza cardiaca presenta una leggera tachicardia'),
(459, 'lorenzo de lauretis', 'presminima', 'La tua pressione minima presenta una ipertensione'),
(460, 'lorenzo de lauretis', 'presmassima', 'La tua pressione massima presenta una ipotensione'),
(461, 'lorenzo de lauretis', 'temperatura', 'Non hai febbre'),
(462, 'lorenzo de lauretis', 'saturazione', 'Hai problemi di ossigenazione'),
(463, 'lorenzo de lauretis', 'battito', 'La tua frequenza cardiaca presenta una leggera tachicardia'),
(464, 'lorenzo de lauretis', 'presminima', 'La tua pressione minima presenta una ipotensione'),
(465, 'lorenzo de lauretis', 'presmassima', 'La tua pressione massima presenta una ipotensione'),
(466, 'lorenzo de lauretis', 'peso', 'Sei dimagrito di 13.0 chili'),
(467, 'lorenzo de lauretis', 'medico', 'Devi correre al pronto soccorso'),
(468, 'lorenzo de lauretis', 'medico', 'Il dottore suggerisce di prendere Propafenone'),
(469, 'lorenzo de lauretis', 'medico', 'Il dottore suggerisce di prendere Pastiglia sub-linguale'),
(470, 'lorenzo de lauretis', 'temperatura', 'Non hai febbre'),
(471, 'lorenzo de lauretis', 'saturazione', 'Hai problemi di ossigenazione'),
(472, 'lorenzo de lauretis', 'battito', 'La tua frequenza cardiaca presenta una leggera tachicardia'),
(473, 'lorenzo de lauretis', 'presminima', 'La tua pressione minima presenta una ipotensione'),
(474, 'lorenzo de lauretis', 'presmassima', 'La tua pressione massima non presenta problemi'),
(475, 'lorenzo de lauretis', 'peso', 'Sei dimagrito di 2.0 chili'),
(476, 'lorenzo de lauretis', 'medico', 'Il dottore suggerisce di prendere Propafenone'),
(477, 'lorenzo de lauretis', 'medico', 'Il dottore suggerisce di prendere Pastiglia sub-linguale'),
(478, 'lorenzo de lauretis', 'peso', 'Sei dimagrito di 20.0 chili'),
(479, 'lorenzo de lauretis', 'temperatura', ''),
(480, 'lorenzo de lauretis', 'saturazione', 'Hai problemi di ossigenazione'),
(481, 'lorenzo de lauretis', 'battito', 'La tua frequenza cardiaca presenta una leggera tachicardia'),
(482, 'lorenzo de lauretis', 'presminima', 'La tua pressione minima presenta una ipertensione'),
(483, 'lorenzo de lauretis', 'presmassima', 'La tua pressione massima presenta una ipertensione'),
(484, 'lorenzo de lauretis', 'temperatura', 'Hai qualche linea di febbre, ti consiglio di riposare'),
(485, 'lorenzo de lauretis', 'saturazione', 'Hai problemi di ossigenazione'),
(486, 'lorenzo de lauretis', 'battito', 'La tua frequenza cardiaca presenta una leggera tachicardia'),
(487, 'lorenzo de lauretis', 'presminima', 'La tua pressione minima presenta una ipertensione'),
(488, 'lorenzo de lauretis', 'presmassima', 'La tua pressione massima presenta una ipertensione'),
(489, 'lorenzo de lauretis', 'medico', 'Il dottore suggerisce di prendere Tachipirina'),
(490, 'lorenzo de lauretis', 'temperatura', ''),
(491, 'lorenzo de lauretis', 'saturazione', 'Hai problemi di ossigenazione'),
(492, 'lorenzo de lauretis', 'battito', 'La tua frequenza cardiaca presenta una leggera tachicardia'),
(493, 'lorenzo de lauretis', 'presminima', 'La tua pressione minima presenta una ipotensione'),
(494, 'lorenzo de lauretis', 'presmassima', 'La tua pressione massima presenta una ipotensione'),
(495, 'lorenzo de lauretis', 'peso', 'Sei ingrassato di 1.0 chilo'),
(496, 'lorenzo de lauretis', 'medico', 'Devi correre al pronto soccorso'),
(497, 'lorenzo de lauretis', 'medico', 'Il dottore suggerisce di prendere Tachipirina'),
(498, 'lorenzo de lauretis', 'medico', 'Il dottore suggerisce di prendere Propafenone'),
(499, 'lorenzo de lauretis', 'medico', 'Il dottore suggerisce di prendere Pastiglia sub-linguale');

-- --------------------------------------------------------

--
-- Struttura della tabella `range_valori`
--

CREATE TABLE `range_valori` (
  `id` int(11) NOT NULL,
  `nome` varchar(100) NOT NULL,
  `range_iniziale` int(11) NOT NULL,
  `range_finale` int(11) NOT NULL,
  `anomalia` varchar(100) NOT NULL,
  `gravita` int(11) NOT NULL COMMENT '0 = regolare, 1 = leggermente grave, 2 = un po di piu, 3 = gravissimo'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dump dei dati per la tabella `range_valori`
--

INSERT INTO `range_valori` (`id`, `nome`, `range_iniziale`, `range_finale`, `anomalia`, `gravita`) VALUES
(1, 'battito', 60, 99, 'regolare', 0),
(2, 'battito', 40, 59, 'leggera bradicardia', 1),
(3, 'battito', 20, 39, 'grave bradicardia', 2),
(4, 'battito', 0, 19, 'arresto cardiaco', 3),
(5, 'battito', 100, 119, 'leggera tachicardia', 1),
(6, 'battito', 120, 159, 'grave tachicardia', 2),
(7, 'battito', 160, 400, 'gravissima tachicardia', 3),
(8, 'qt', 300, 429, 'regolare', 0),
(9, 'qt', 430, 449, 'leggermente lungo', 1),
(10, 'qt', 450, 469, 'prolungato', 2),
(11, 'qt', 470, 800, 'troppo elevato', 3),
(12, 'qt', 240, 299, 'breve', 1),
(13, 'qt', 0, 239, 'troppo breve', 3),
(14, 'qtc', 300, 429, 'regolare', 0),
(15, 'qtc', 430, 449, 'leggermente lungo', 1),
(16, 'qtc', 450, 469, 'prolungato', 2),
(17, 'qtc', 470, 800, 'troppo elevato', 3),
(18, 'qtc', 240, 299, 'breve', 1),
(19, 'qtc', 0, 239, 'troppo breve', 3),
(20, 'qrs', 80, 119, 'regolare', 0),
(21, 'qrs', 60, 79, 'breve', 1),
(22, 'qrs', 0, 59, 'troppo breve', 3),
(23, 'qrs', 120, 139, 'lungo', 1),
(24, 'qrs', 140, 800, 'troppo lungo', 3),
(25, 'pr', 120, 199, 'regolare', 0),
(26, 'pr', 100, 119, 'breve', 1),
(27, 'pr', 0, 99, 'troppo breve', 3),
(28, 'pr', 200, 219, 'lungo', 1),
(29, 'pr', 220, 800, 'troppo lungo', 3),
(30, 'rr', 600, 1199, 'regolare', 0),
(31, 'rr', 500, 599, 'breve', 1),
(32, 'rr', 0, 499, 'troppo breve', 3),
(33, 'rr', 1200, 1499, 'lungo', 1),
(34, 'rr', 1500, 4000, 'troppo lungo', 3),
(35, 'fotomano', 0, 9, 'mano normale', 0),
(36, 'fotomano', 10, 19, 'possibile psoriasi', 1),
(37, 'fotomano', 20, 49, 'psoriasi', 2),
(38, 'fotomano', 50, 3000, 'psoriasi grave', 3);

-- --------------------------------------------------------

--
-- Struttura della tabella `remindermedicina`
--

CREATE TABLE `remindermedicina` (
  `id` int(11) NOT NULL,
  `nome` varchar(200) NOT NULL,
  `medicina` varchar(200) NOT NULL,
  `quantita` varchar(200) NOT NULL,
  `message` varchar(2000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dump dei dati per la tabella `remindermedicina`
--

INSERT INTO `remindermedicina` (`id`, `nome`, `medicina`, `quantita`, `message`) VALUES
(1, 'Lorenzo De Lauretis', 'Eutirox 50', '1', 'Devi prendere la medicina Eutirox 50 quantita 1'),
(2, 'Lorenzo De Lauretis', 'Eutirox 50', '1', 'Devi prendere la medicina Eutirox 50 quantita 1'),
(3, 'Lorenzo De Lauretis', 'gioco', '5-pasticche', 'Devi prendere la medicina gioco quantita 5-pasticche'),
(4, 'Lorenzo De Lauretis', 'qualcosa', '5-pasticche', 'Devi prendere la medicina qualcosa quantita 5-pasticche'),
(5, 'Lorenzo De Lauretis', 'jjjjj', '5-pasticche', 'Devi prendere la medicina jjjjj quantita 5-pasticche'),
(6, 'Lorenzo De Lauretis', 'jjjjj', '5-pasticche', 'Devi prendere la medicina jjjjj quantita 5-pasticche'),
(7, 'Lorenzo De Lauretis', 'jjjjj', '5-pasticche', 'Devi prendere la medicina jjjjj quantita 5-pasticche'),
(8, 'Lorenzo De Lauretis', 'jbubi', '5-pasticche', 'Devi prendere la medicina jbubi quantita 5-pasticche'),
(9, 'Lorenzo De Lauretis', 'eutirox-200', '1-compressa', 'Devi prendere la medicina eutirox-200 quantita 1-compressa'),
(10, 'Lorenzo De Lauretis', 'eutirox-200', '1-compressa', 'Devi prendere la medicina eutirox-200 quantita 1-compressa'),
(11, 'Lorenzo De Lauretis', 'esopral 20mg', '1 compressa', 'Devi prendere la medicina esopral-20mg quantita 1-compressa'),
(12, 'Lorenzo De Lauretis', 'eutirox 200', '1 compressa', 'Devi prendere la medicina eutirox-200 quantita 1-compressa'),
(13, 'Lorenzo De Lauretis', 'esopral 20mg', '1 compressa', 'Devi prendere la medicina esopral-20mg quantita 1-compressa'),
(14, 'Lorenzo De Lauretis', 'esopral 20mg', '1 compressa', 'Devi prendere la medicina esopral-20mg quantita 1-compressa'),
(15, 'Lorenzo De Lauretis', 'esopral 20mg', '1 compressa', 'Devi prendere la medicina esopral-20mg quantita 1-compressa'),
(16, 'Lorenzo De Lauretis', 'esopral 20mg', '1 compressa', 'Devi prendere la medicina esopral-20mg quantita 1-compressa'),
(17, 'Lorenzo De Lauretis', 'esopral 20mg', '1 compressa', 'Devi prendere la medicina esopral-20mg quantita 1-compressa'),
(18, 'Lorenzo De Lauretis', 'is', '', ''),
(19, 'Lorenzo De Lauretis', 'eutirox 200', '1 compressa', 'Devi prendere la medicina eutirox 200 quantita 1 compressa'),
(20, 'Lorenzo De Lauretis', 'esopral 20mg', '1 compressa', 'Devi prendere la medicina esopral-20mg quantita 1-compressa'),
(21, 'Lorenzo De Lauretis', 'esopral 20mg', '1 compressa', 'Devi prendere la medicina esopral-20mg quantita 1-compressa'),
(22, 'Lorenzo De Lauretis', 'eutirox 200', '1 compressa', 'Devi prendere la medicina eutirox-200 quantita 1-compressa'),
(23, 'Lorenzo De Lauretis', 'esopral 20mg', '1 compressa', 'Devi prendere la medicina esopral-20mg quantita 1-compressa'),
(24, 'lorenzo de lauretis', 'esopral 20mg', '1 compressa', 'Devi prendere la medicina esopral 20mg quantita 1 compressa'),
(25, 'lorenzo de lauretis', 'eutirox 200', '1 compressa', 'Devi prendere la medicina eutirox 200 quantita 1 compressa');

-- --------------------------------------------------------

--
-- Struttura della tabella `remindermisura`
--

CREATE TABLE `remindermisura` (
  `id` int(11) NOT NULL,
  `nome` varchar(200) NOT NULL,
  `misura` varchar(200) NOT NULL,
  `message` varchar(2000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dump dei dati per la tabella `remindermisura`
--

INSERT INTO `remindermisura` (`id`, `nome`, `misura`, `message`) VALUES
(1, 'Lorenzo De Lauretis', 'peso', 'Devi misurare peso'),
(2, 'Lorenzo De Lauretis', 'peso', 'Devi misurare peso'),
(3, 'Lorenzo De Lauretis', 'pressione', 'Devi misurare pressione'),
(4, 'Lorenzo De Lauretis', 'temperatura', 'Devi misurare temperatura'),
(5, 'Lorenzo De Lauretis', 'peso', 'Devi misurare peso'),
(6, 'Lorenzo De Lauretis', 'pressione', 'Devi misurare pressione'),
(7, 'Lorenzo De Lauretis', 'temperatura', 'Devi misurare temperatura'),
(8, 'Lorenzo De Lauretis', 'peso', 'Devi misurare peso'),
(9, 'Lorenzo De Lauretis', 'pressione', 'Devi misurare pressione'),
(10, 'Lorenzo De Lauretis', 'temperatura', 'Devi misurare temperatura'),
(11, 'Lorenzo De Lauretis', 'peso', 'Devi misurare peso'),
(12, 'Lorenzo De Lauretis', 'pressione', 'Devi misurare pressione'),
(13, 'Lorenzo De Lauretis', 'temperatura', 'Devi misurare temperatura'),
(14, 'Lorenzo De Lauretis', 'peso', 'Devi misurare peso'),
(15, 'Lorenzo De Lauretis', 'pressione', 'Devi misurare pressione'),
(16, 'Lorenzo De Lauretis', 'temperatura', 'Devi misurare temperatura'),
(17, 'Lorenzo De Lauretis', 'peso', 'Devi misurare peso'),
(18, 'Lorenzo De Lauretis', 'pressione', 'Devi misurare pressione'),
(19, 'Lorenzo De Lauretis', 'temperatura', 'Devi misurare temperatura'),
(20, 'Lorenzo De Lauretis', 'peso', 'Devi misurare peso'),
(21, 'Lorenzo De Lauretis', 'pressione', 'Devi misurare pressione'),
(22, 'Lorenzo De Lauretis', 'temperatura', 'Devi misurare temperatura'),
(23, 'Lorenzo De Lauretis', 'peso', 'Devi misurare peso'),
(24, 'Lorenzo De Lauretis', 'pressione', 'Devi misurare pressione'),
(25, 'Lorenzo De Lauretis', 'temperatura', 'Devi misurare temperatura'),
(26, 'Lorenzo De Lauretis', 'peso', 'Devi misurare peso'),
(27, 'Lorenzo De Lauretis', 'pressione', 'Devi misurare pressione'),
(28, 'Lorenzo De Lauretis', 'temperatura', 'Devi misurare temperatura'),
(29, 'Lorenzo De Lauretis', 'peso', 'Devi misurare peso'),
(30, 'Lorenzo De Lauretis', 'pressione', 'Devi misurare pressione'),
(31, 'Lorenzo De Lauretis', 'temperatura', 'Devi misurare temperatura'),
(32, 'Lorenzo De Lauretis', 'peso', 'Devi misurare peso'),
(33, 'Lorenzo De Lauretis', 'pressione', 'Devi misurare pressione'),
(34, 'Lorenzo De Lauretis', 'temperatura', 'Devi misurare temperatura'),
(35, 'Lorenzo De Lauretis', 'peso', 'Devi misurare peso'),
(36, 'Lorenzo De Lauretis', 'pressione', 'Devi misurare pressione'),
(37, 'Lorenzo De Lauretis', 'temperatura', 'Devi misurare temperatura'),
(38, 'Lorenzo De Lauretis', 'peso', 'Devi misurare peso'),
(39, 'Lorenzo De Lauretis', 'pressione', 'Devi misurare pressione'),
(40, 'Lorenzo De Lauretis', 'temperatura', 'Devi misurare temperatura'),
(41, 'Lorenzo De Lauretis', 'peso', 'Devi misurare peso'),
(42, 'Lorenzo De Lauretis', 'pressione', 'Devi misurare pressione'),
(43, 'Lorenzo De Lauretis', 'temperatura', 'Devi misurare temperatura'),
(44, 'Lorenzo De Lauretis', 'peso', 'Devi misurare peso'),
(45, 'Lorenzo De Lauretis', 'pressione', 'Devi misurare pressione'),
(46, 'Lorenzo De Lauretis', 'temperatura', 'Devi misurare temperatura'),
(47, 'Lorenzo De Lauretis', 'peso', 'Devi misurare peso'),
(48, 'Lorenzo De Lauretis', 'pressione', 'Devi misurare pressione'),
(49, 'Lorenzo De Lauretis', 'temperatura', 'Devi misurare temperatura'),
(50, 'Lorenzo De Lauretis', 'peso', 'Devi misurare peso'),
(51, 'Lorenzo De Lauretis', 'pressione', 'Devi misurare pressione'),
(52, 'Lorenzo De Lauretis', 'temperatura', 'Devi misurare temperatura'),
(53, 'Lorenzo De Lauretis', 'peso', 'Devi misurare peso'),
(54, 'Lorenzo De Lauretis', 'pressione', 'Devi misurare pressione'),
(55, 'Lorenzo De Lauretis', 'temperatura', 'Devi misurare temperatura'),
(56, 'Lorenzo De Lauretis', 'peso', 'Devi misurare peso'),
(57, 'Lorenzo De Lauretis', 'pressione', 'Devi misurare pressione'),
(58, 'Lorenzo De Lauretis', 'temperatura', 'Devi misurare temperatura'),
(59, 'Lorenzo De Lauretis', 'peso', 'Devi misurare peso'),
(60, 'Lorenzo De Lauretis', 'pressione', 'Devi misurare pressione'),
(61, 'Lorenzo De Lauretis', 'temperatura', 'Devi misurare temperatura'),
(62, 'Lorenzo De Lauretis', 'peso', 'Devi misurare peso'),
(63, 'Lorenzo De Lauretis', 'pressione', 'Devi misurare pressione'),
(64, 'Lorenzo De Lauretis', 'temperatura', 'Devi misurare temperatura'),
(65, 'Lorenzo De Lauretis', 'peso', 'Devi misurare peso'),
(66, 'Lorenzo De Lauretis', 'pressione', 'Devi misurare pressione'),
(67, 'Lorenzo De Lauretis', 'temperatura', 'Devi misurare temperatura'),
(68, 'Lorenzo De Lauretis', 'peso', 'Devi misurare peso'),
(69, 'Lorenzo De Lauretis', 'pressione', 'Devi misurare pressione'),
(70, 'Lorenzo De Lauretis', 'temperatura', 'Devi misurare temperatura'),
(71, 'Lorenzo De Lauretis', 'peso', 'Devi misurare peso'),
(72, 'Lorenzo De Lauretis', 'pressione', 'Devi misurare pressione'),
(73, 'Lorenzo De Lauretis', 'temperatura', 'Devi misurare temperatura'),
(74, 'Lorenzo De Lauretis', 'peso', 'Devi misurare peso'),
(75, 'Lorenzo De Lauretis', 'pressione', 'Devi misurare pressione'),
(76, 'Lorenzo De Lauretis', 'temperatura', 'Devi misurare temperatura'),
(77, 'Lorenzo De Lauretis', 'peso', 'Devi misurare peso'),
(78, 'Lorenzo De Lauretis', 'pressione', 'Devi misurare pressione'),
(79, 'Lorenzo De Lauretis', 'temperatura', 'Devi misurare temperatura'),
(80, 'Lorenzo De Lauretis', 'peso', 'Devi misurare peso'),
(81, 'Lorenzo De Lauretis', 'pressione', 'Devi misurare pressione'),
(82, 'Lorenzo De Lauretis', 'temperatura', 'Devi misurare temperatura'),
(83, 'Lorenzo De Lauretis', 'peso', 'Devi misurare peso'),
(84, 'Lorenzo De Lauretis', 'pressione', 'Devi misurare pressione'),
(85, 'Lorenzo De Lauretis', 'temperatura', 'Devi misurare temperatura'),
(86, 'Lorenzo De Lauretis', 'peso', 'Devi misurare peso'),
(87, 'Lorenzo De Lauretis', 'pressione', 'Devi misurare pressione'),
(88, 'Lorenzo De Lauretis', 'temperatura', 'Devi misurare temperatura'),
(89, 'Lorenzo De Lauretis', 'peso', 'Devi misurare peso'),
(90, 'Lorenzo De Lauretis', 'pressione', 'Devi misurare pressione'),
(91, 'Lorenzo De Lauretis', 'temperatura', 'Devi misurare temperatura'),
(92, 'Lorenzo De Lauretis', 'peso', 'Devi misurare peso'),
(93, 'Lorenzo De Lauretis', 'pressione', 'Devi misurare pressione'),
(94, 'Lorenzo De Lauretis', 'temperatura', 'Devi misurare temperatura'),
(95, 'Lorenzo De Lauretis', 'peso', 'Devi misurare peso'),
(96, 'Lorenzo De Lauretis', 'pressione', 'Devi misurare pressione'),
(97, 'Lorenzo De Lauretis', 'temperatura', 'Devi misurare temperatura'),
(98, 'Lorenzo De Lauretis', 'peso', 'Devi misurare peso'),
(99, 'Lorenzo De Lauretis', 'pressione', 'Devi misurare pressione'),
(100, 'Lorenzo De Lauretis', 'temperatura', 'Devi misurare temperatura'),
(101, 'Lorenzo De Lauretis', 'peso', 'Devi misurare peso'),
(102, 'Lorenzo De Lauretis', 'pressione', 'Devi misurare pressione'),
(103, 'Lorenzo De Lauretis', 'temperatura', 'Devi misurare temperatura'),
(104, 'Lorenzo De Lauretis', 'peso', 'Devi misurare peso'),
(105, 'Lorenzo De Lauretis', 'pressione', 'Devi misurare pressione'),
(106, 'Lorenzo De Lauretis', 'temperatura', 'Devi misurare temperatura'),
(107, 'Lorenzo De Lauretis', 'peso', 'Devi misurare peso'),
(108, 'Lorenzo De Lauretis', 'pressione', 'Devi misurare pressione'),
(109, 'Lorenzo De Lauretis', 'temperatura', 'Devi misurare temperatura'),
(110, 'Lorenzo De Lauretis', 'peso', 'Devi misurare peso'),
(111, 'Lorenzo De Lauretis', 'pressione', 'Devi misurare pressione'),
(112, 'Lorenzo De Lauretis', 'temperatura', 'Devi misurare temperatura'),
(113, 'Lorenzo De Lauretis', 'peso', 'Devi misurare peso'),
(114, 'Lorenzo De Lauretis', 'pressione', 'Devi misurare pressione'),
(115, 'Lorenzo De Lauretis', 'temperatura', 'Devi misurare temperatura'),
(116, 'Lorenzo De Lauretis', 'peso', 'Devi misurare peso'),
(117, 'Lorenzo De Lauretis', 'pressione', 'Devi misurare pressione'),
(118, 'Lorenzo De Lauretis', 'temperatura', 'Devi misurare temperatura'),
(119, 'Lorenzo De Lauretis', 'peso', 'Devi misurare peso'),
(120, 'Lorenzo De Lauretis', 'pressione', 'Devi misurare pressione'),
(121, 'Lorenzo De Lauretis', 'temperatura', 'Devi misurare temperatura'),
(122, 'Lorenzo De Lauretis', 'peso', 'Devi misurare peso'),
(123, 'Lorenzo De Lauretis', 'pressione', 'Devi misurare pressione'),
(124, 'Lorenzo De Lauretis', 'temperatura', 'Devi misurare temperatura'),
(125, 'Lorenzo De Lauretis', 'peso', 'Devi misurare peso'),
(126, 'Lorenzo De Lauretis', 'pressione', 'Devi misurare pressione'),
(127, 'Lorenzo De Lauretis', 'temperatura', 'Devi misurare temperatura'),
(128, 'Lorenzo De Lauretis', 'peso', 'Devi misurare peso'),
(129, 'Lorenzo De Lauretis', 'pressione', 'Devi misurare pressione'),
(130, 'Lorenzo De Lauretis', 'temperatura', 'Devi misurare temperatura'),
(131, 'Lorenzo De Lauretis', 'peso', 'Devi misurare peso'),
(132, 'Lorenzo De Lauretis', 'pressione', 'Devi misurare pressione'),
(133, 'Lorenzo De Lauretis', 'temperatura', 'Devi misurare temperatura'),
(134, 'Lorenzo De Lauretis', 'peso', 'Devi misurare peso'),
(135, 'Lorenzo De Lauretis', 'pressione', 'Devi misurare pressione'),
(136, 'Lorenzo De Lauretis', 'temperatura', 'Devi misurare temperatura'),
(137, 'Lorenzo De Lauretis', 'peso', 'Devi misurare peso'),
(138, 'Lorenzo De Lauretis', 'pressione', 'Devi misurare pressione'),
(139, 'Lorenzo De Lauretis', 'temperatura', 'Devi misurare temperatura'),
(140, 'Lorenzo De Lauretis', 'peso', 'Devi misurare peso'),
(141, 'Lorenzo De Lauretis', 'pressione', 'Devi misurare pressione'),
(142, 'Lorenzo De Lauretis', 'temperatura', 'Devi misurare temperatura'),
(143, 'Lorenzo De Lauretis', 'peso', 'Devi misurare peso'),
(144, 'Lorenzo De Lauretis', 'pressione', 'Devi misurare pressione'),
(145, 'Lorenzo De Lauretis', 'temperatura', 'Devi misurare temperatura'),
(146, 'Lorenzo De Lauretis', 'peso', 'Devi misurare peso'),
(147, 'Lorenzo De Lauretis', 'pressione', 'Devi misurare pressione'),
(148, 'Lorenzo De Lauretis', 'temperatura', 'Devi misurare temperatura'),
(149, 'Lorenzo De Lauretis', 'peso', 'Devi misurare peso'),
(150, 'Lorenzo De Lauretis', 'pressione', 'Devi misurare pressione'),
(151, 'Lorenzo De Lauretis', 'temperatura', 'Devi misurare temperatura'),
(152, 'Lorenzo De Lauretis', 'peso', 'Devi misurare peso'),
(153, 'Lorenzo De Lauretis', 'pressione', 'Devi misurare pressione'),
(154, 'Lorenzo De Lauretis', 'temperatura', 'Devi misurare temperatura'),
(155, 'Lorenzo De Lauretis', 'peso', 'Devi misurare peso'),
(156, 'Lorenzo De Lauretis', 'pressione', 'Devi misurare pressione'),
(157, 'Lorenzo De Lauretis', 'temperatura', 'Devi misurare temperatura'),
(158, 'Lorenzo De Lauretis', 'peso', 'Devi misurare peso'),
(159, 'Lorenzo De Lauretis', 'pressione', 'Devi misurare pressione'),
(160, 'Lorenzo De Lauretis', 'temperatura', 'Devi misurare temperatura'),
(161, 'Lorenzo De Lauretis', 'peso', 'Devi misurare peso'),
(162, 'Lorenzo De Lauretis', 'pressione', 'Devi misurare pressione'),
(163, 'Lorenzo De Lauretis', 'temperatura', 'Devi misurare temperatura'),
(164, 'Lorenzo De Lauretis', 'peso', 'Devi misurare peso'),
(165, 'Lorenzo De Lauretis', 'pressione', 'Devi misurare pressione'),
(166, 'Lorenzo De Lauretis', 'temperatura', 'Devi misurare temperatura'),
(167, 'Lorenzo De Lauretis', 'peso', 'Devi misurare peso'),
(168, 'Lorenzo De Lauretis', 'pressione', 'Devi misurare pressione'),
(169, 'Lorenzo De Lauretis', 'temperatura', 'Devi misurare temperatura'),
(170, 'Lorenzo De Lauretis', 'peso', 'Devi misurare peso'),
(171, 'Lorenzo De Lauretis', 'pressione', 'Devi misurare pressione'),
(172, 'Lorenzo De Lauretis', 'temperatura', 'Devi misurare temperatura'),
(173, 'Lorenzo De Lauretis', 'peso', 'Devi misurare peso'),
(174, 'Lorenzo De Lauretis', 'pressione', 'Devi misurare pressione'),
(175, 'Lorenzo De Lauretis', 'temperatura', 'Devi misurare temperatura'),
(176, 'Lorenzo De Lauretis', 'peso', 'Devi misurare peso'),
(177, 'Lorenzo De Lauretis', 'pressione', 'Devi misurare pressione'),
(178, 'Lorenzo De Lauretis', 'temperatura', 'Devi misurare temperatura'),
(179, 'Lorenzo De Lauretis', 'peso', 'Devi misurare peso'),
(180, 'Lorenzo De Lauretis', 'pressione', 'Devi misurare pressione'),
(181, 'Lorenzo De Lauretis', 'temperatura', 'Devi misurare temperatura'),
(182, 'Lorenzo De Lauretis', 'peso', 'Devi misurare peso'),
(183, 'Lorenzo De Lauretis', 'pressione', 'Devi misurare pressione'),
(184, 'Lorenzo De Lauretis', 'temperatura', 'Devi misurare temperatura'),
(185, 'Lorenzo De Lauretis', 'peso', 'Devi misurare peso'),
(186, 'Lorenzo De Lauretis', 'pressione', 'Devi misurare pressione'),
(187, 'Lorenzo De Lauretis', 'temperatura', 'Devi misurare temperatura'),
(188, 'Lorenzo De Lauretis', 'peso', 'Devi misurare peso'),
(189, 'Lorenzo De Lauretis', 'pressione', 'Devi misurare pressione'),
(190, 'Lorenzo De Lauretis', 'temperatura', 'Devi misurare temperatura'),
(191, 'Lorenzo De Lauretis', 'peso', 'Devi misurare peso'),
(192, 'Lorenzo De Lauretis', 'pressione', 'Devi misurare pressione'),
(193, 'Lorenzo De Lauretis', 'temperatura', 'Devi misurare temperatura'),
(194, 'Lorenzo De Lauretis', 'peso', 'Devi misurare peso'),
(195, 'Lorenzo De Lauretis', 'pressione', 'Devi misurare pressione'),
(196, 'Lorenzo De Lauretis', 'temperatura', 'Devi misurare temperatura'),
(197, 'Lorenzo De Lauretis', 'peso', 'Devi misurare peso'),
(198, 'Lorenzo De Lauretis', 'pressione', 'Devi misurare pressione'),
(199, 'Lorenzo De Lauretis', 'temperatura', 'Devi misurare temperatura'),
(200, 'Lorenzo De Lauretis', 'peso', 'Devi misurare peso'),
(201, 'Lorenzo De Lauretis', 'pressione', 'Devi misurare pressione'),
(202, 'Lorenzo De Lauretis', 'temperatura', 'Devi misurare temperatura'),
(203, 'Lorenzo De Lauretis', 'peso', 'Devi misurare peso'),
(204, 'Lorenzo De Lauretis', 'pressione', 'Devi misurare pressione'),
(205, 'Lorenzo De Lauretis', 'temperatura', 'Devi misurare temperatura'),
(206, 'Lorenzo De Lauretis', 'peso', 'Devi misurare peso'),
(207, 'Lorenzo De Lauretis', 'pressione', 'Devi misurare pressione'),
(208, 'Lorenzo De Lauretis', 'temperatura', 'Devi misurare temperatura'),
(209, 'Lorenzo De Lauretis', 'peso', 'Devi misurare peso'),
(210, 'Lorenzo De Lauretis', 'pressione', 'Devi misurare pressione'),
(211, 'Lorenzo De Lauretis', 'temperatura', 'Devi misurare temperatura'),
(212, 'Lorenzo De Lauretis', 'peso', 'Devi misurare peso'),
(213, 'Lorenzo De Lauretis', 'pressione', 'Devi misurare pressione'),
(214, 'Lorenzo De Lauretis', 'temperatura', 'Devi misurare temperatura'),
(215, 'Lorenzo De Lauretis', 'peso', 'Devi misurare peso'),
(216, 'Lorenzo De Lauretis', 'pressione', 'Devi misurare pressione'),
(217, 'Lorenzo De Lauretis', 'temperatura', 'Devi misurare temperatura'),
(218, 'Lorenzo De Lauretis', 'peso', 'Devi misurare peso'),
(219, 'Lorenzo De Lauretis', 'pressione', 'Devi misurare pressione'),
(220, 'Lorenzo De Lauretis', 'temperatura', 'Devi misurare temperatura'),
(221, 'Lorenzo De Lauretis', 'peso', 'Devi misurare peso'),
(222, 'Lorenzo De Lauretis', 'pressione', 'Devi misurare pressione'),
(223, 'Lorenzo De Lauretis', 'temperatura', 'Devi misurare temperatura'),
(224, 'Lorenzo De Lauretis', 'peso', 'Devi misurare peso'),
(225, 'Lorenzo De Lauretis', 'pressione', 'Devi misurare pressione'),
(226, 'Lorenzo De Lauretis', 'temperatura', 'Devi misurare temperatura'),
(227, 'Lorenzo De Lauretis', 'peso', 'Devi misurare peso'),
(228, 'Lorenzo De Lauretis', 'pressione', 'Devi misurare pressione'),
(229, 'Lorenzo De Lauretis', 'temperatura', 'Devi misurare temperatura'),
(230, 'lorenzo de lauretis', 'peso', 'Devi misurare peso'),
(231, 'lorenzo de lauretis', 'pressione', 'Devi misurare pressione'),
(232, 'lorenzo de lauretis', 'temperatura', 'Devi misurare temperatura');

-- --------------------------------------------------------

--
-- Struttura della tabella `terapie`
--

CREATE TABLE `terapie` (
  `id` int(11) NOT NULL,
  `nome` varchar(200) NOT NULL,
  `medicina` varchar(200) NOT NULL,
  `quantita` varchar(200) NOT NULL,
  `orario` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dump dei dati per la tabella `terapie`
--

INSERT INTO `terapie` (`id`, `nome`, `medicina`, `quantita`, `orario`) VALUES
(1, 'Lorenzo De Lauretis', 'Eutirox 200', '1 compressa', '12:30'),
(2, 'Lorenzo De Lauretis', 'Eutirox 200', '1 compressa', '20:00'),
(3, 'Lorenzo De Lauretis', 'Esopral 20mg', '1 compressa', '13:00'),
(4, 'Madre Prof', 'Eutirox 50', '1 compressa', '7:00'),
(5, 'Madre Prof', 'Ranexa 750', '1 compressa', '8:00'),
(6, 'Madre Prof', 'Lasitone', '1 compressa', '8:30'),
(7, 'Madre Prof', 'Cardicor 5', '1 compressa', '9:00'),
(8, 'Madre Prof', 'Pantoprazolo', '1 compressa', '9:30'),
(9, 'Madre Prof', 'Xiloric', '1 compressa', '10:30'),
(10, 'Madre Prof', 'Cardirene cerotto nitroderm 15', '1 compressa', '10:30'),
(11, 'Madre Prof', 'Ranexa 750', '1 compressa', '19:00'),
(12, 'Madre Prof', 'Vytorin 10mg/20mg', '1 compressa', '21:00');

-- --------------------------------------------------------

--
-- Struttura della tabella `tokennotifiche`
--

CREATE TABLE `tokennotifiche` (
  `id` int(11) NOT NULL,
  `nome` varchar(200) NOT NULL,
  `token` varchar(2000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dump dei dati per la tabella `tokennotifiche`
--

INSERT INTO `tokennotifiche` (`id`, `nome`, `token`) VALUES
(1, 'Lorenzo De Lauretis', 'ekvTGx8sTemzhAmdAtpYgk:APA91bH48P0xrxK5JMOH-6y2T2Nlz2B1d1Y9F5TPwLsc9cjKlUXvyjWhiWz1fQ-uPDn37GepbhHk34W0K9qqqviCj6w1GyGNwbRKrVHdKZMN-HABDPNTerqWqX5w7IFTah9RxodFK1Uf'),
(2, 'Lorenzo De Lauretis', 'ekvTGx8sTemzhAmdAtpYgk:APA91bH48P0xrxK5JMOH-6y2T2Nlz2B1d1Y9F5TPwLsc9cjKlUXvyjWhiWz1fQ-uPDn37GepbhHk34W0K9qqqviCj6w1GyGNwbRKrVHdKZMN-HABDPNTerqWqX5w7IFTah9RxodFK1Uf'),
(3, 'Lorenzo De Lauretis', 'ekvTGx8sTemzhAmdAtpYgk:APA91bH48P0xrxK5JMOH-6y2T2Nlz2B1d1Y9F5TPwLsc9cjKlUXvyjWhiWz1fQ-uPDn37GepbhHk34W0K9qqqviCj6w1GyGNwbRKrVHdKZMN-HABDPNTerqWqX5w7IFTah9RxodFK1Uf'),
(4, 'Lorenzo De Lauretis', 'ekvTGx8sTemzhAmdAtpYgk:APA91bH48P0xrxK5JMOH-6y2T2Nlz2B1d1Y9F5TPwLsc9cjKlUXvyjWhiWz1fQ-uPDn37GepbhHk34W0K9qqqviCj6w1GyGNwbRKrVHdKZMN-HABDPNTerqWqX5w7IFTah9RxodFK1Uf'),
(5, 'Lorenzo De Lauretis', 'ekvTGx8sTemzhAmdAtpYgk:APA91bH48P0xrxK5JMOH-6y2T2Nlz2B1d1Y9F5TPwLsc9cjKlUXvyjWhiWz1fQ-uPDn37GepbhHk34W0K9qqqviCj6w1GyGNwbRKrVHdKZMN-HABDPNTerqWqX5w7IFTah9RxodFK1Uf'),
(6, 'Lorenzo De Lauretis', 'e5zUnjxiQ5uNNfvCEWY-9F:APA91bGLCofHcOXdv_9--2h2ksjlLaWGECogolO_lBsdFuIPuYMUCANd86x3QzvkZuR8chlARNehTyfuLX7wteTSEtOJoOzmqFeJUKJ3YbGUmbwT3-l6FISZ-YOowIBubSJn3c4tPHy8'),
(7, 'Lorenzo De Lauretis', 'e5zUnjxiQ5uNNfvCEWY-9F:APA91bGLCofHcOXdv_9--2h2ksjlLaWGECogolO_lBsdFuIPuYMUCANd86x3QzvkZuR8chlARNehTyfuLX7wteTSEtOJoOzmqFeJUKJ3YbGUmbwT3-l6FISZ-YOowIBubSJn3c4tPHy8'),
(8, 'Lorenzo De Lauretis', 'ekvTGx8sTemzhAmdAtpYgk:APA91bH48P0xrxK5JMOH-6y2T2Nlz2B1d1Y9F5TPwLsc9cjKlUXvyjWhiWz1fQ-uPDn37GepbhHk34W0K9qqqviCj6w1GyGNwbRKrVHdKZMN-HABDPNTerqWqX5w7IFTah9RxodFK1Uf'),
(9, 'Lorenzo De Lauretis', 'e5zUnjxiQ5uNNfvCEWY-9F:APA91bGLCofHcOXdv_9--2h2ksjlLaWGECogolO_lBsdFuIPuYMUCANd86x3QzvkZuR8chlARNehTyfuLX7wteTSEtOJoOzmqFeJUKJ3YbGUmbwT3-l6FISZ-YOowIBubSJn3c4tPHy8'),
(10, 'Lorenzo De Lauretis', 'e5zUnjxiQ5uNNfvCEWY-9F:APA91bGLCofHcOXdv_9--2h2ksjlLaWGECogolO_lBsdFuIPuYMUCANd86x3QzvkZuR8chlARNehTyfuLX7wteTSEtOJoOzmqFeJUKJ3YbGUmbwT3-l6FISZ-YOowIBubSJn3c4tPHy8'),
(11, 'Lorenzo De Lauretis', 'e5zUnjxiQ5uNNfvCEWY-9F:APA91bGLCofHcOXdv_9--2h2ksjlLaWGECogolO_lBsdFuIPuYMUCANd86x3QzvkZuR8chlARNehTyfuLX7wteTSEtOJoOzmqFeJUKJ3YbGUmbwT3-l6FISZ-YOowIBubSJn3c4tPHy8'),
(12, 'Lorenzo De Lauretis', 'e5zUnjxiQ5uNNfvCEWY-9F:APA91bGLCofHcOXdv_9--2h2ksjlLaWGECogolO_lBsdFuIPuYMUCANd86x3QzvkZuR8chlARNehTyfuLX7wteTSEtOJoOzmqFeJUKJ3YbGUmbwT3-l6FISZ-YOowIBubSJn3c4tPHy8'),
(13, 'Lorenzo De Lauretis', 'ekvTGx8sTemzhAmdAtpYgk:APA91bH48P0xrxK5JMOH-6y2T2Nlz2B1d1Y9F5TPwLsc9cjKlUXvyjWhiWz1fQ-uPDn37GepbhHk34W0K9qqqviCj6w1GyGNwbRKrVHdKZMN-HABDPNTerqWqX5w7IFTah9RxodFK1Uf'),
(14, 'Lorenzo De Lauretis', 'e5zUnjxiQ5uNNfvCEWY-9F:APA91bGLCofHcOXdv_9--2h2ksjlLaWGECogolO_lBsdFuIPuYMUCANd86x3QzvkZuR8chlARNehTyfuLX7wteTSEtOJoOzmqFeJUKJ3YbGUmbwT3-l6FISZ-YOowIBubSJn3c4tPHy8'),
(15, 'Lorenzo De Lauretis', 'e5zUnjxiQ5uNNfvCEWY-9F:APA91bGLCofHcOXdv_9--2h2ksjlLaWGECogolO_lBsdFuIPuYMUCANd86x3QzvkZuR8chlARNehTyfuLX7wteTSEtOJoOzmqFeJUKJ3YbGUmbwT3-l6FISZ-YOowIBubSJn3c4tPHy8'),
(16, 'Lorenzo De Lauretis', 'e5zUnjxiQ5uNNfvCEWY-9F:APA91bGLCofHcOXdv_9--2h2ksjlLaWGECogolO_lBsdFuIPuYMUCANd86x3QzvkZuR8chlARNehTyfuLX7wteTSEtOJoOzmqFeJUKJ3YbGUmbwT3-l6FISZ-YOowIBubSJn3c4tPHy8'),
(17, 'Lorenzo De Lauretis', 'e5zUnjxiQ5uNNfvCEWY-9F:APA91bGLCofHcOXdv_9--2h2ksjlLaWGECogolO_lBsdFuIPuYMUCANd86x3QzvkZuR8chlARNehTyfuLX7wteTSEtOJoOzmqFeJUKJ3YbGUmbwT3-l6FISZ-YOowIBubSJn3c4tPHy8'),
(18, 'Lorenzo De Lauretis', 'e5zUnjxiQ5uNNfvCEWY-9F:APA91bGLCofHcOXdv_9--2h2ksjlLaWGECogolO_lBsdFuIPuYMUCANd86x3QzvkZuR8chlARNehTyfuLX7wteTSEtOJoOzmqFeJUKJ3YbGUmbwT3-l6FISZ-YOowIBubSJn3c4tPHy8'),
(19, 'Lorenzo De Lauretis', 'e5zUnjxiQ5uNNfvCEWY-9F:APA91bGLCofHcOXdv_9--2h2ksjlLaWGECogolO_lBsdFuIPuYMUCANd86x3QzvkZuR8chlARNehTyfuLX7wteTSEtOJoOzmqFeJUKJ3YbGUmbwT3-l6FISZ-YOowIBubSJn3c4tPHy8'),
(20, 'Lorenzo De Lauretis', 'e5zUnjxiQ5uNNfvCEWY-9F:APA91bGLCofHcOXdv_9--2h2ksjlLaWGECogolO_lBsdFuIPuYMUCANd86x3QzvkZuR8chlARNehTyfuLX7wteTSEtOJoOzmqFeJUKJ3YbGUmbwT3-l6FISZ-YOowIBubSJn3c4tPHy8'),
(21, 'Lorenzo De Lauretis', 'e5zUnjxiQ5uNNfvCEWY-9F:APA91bGLCofHcOXdv_9--2h2ksjlLaWGECogolO_lBsdFuIPuYMUCANd86x3QzvkZuR8chlARNehTyfuLX7wteTSEtOJoOzmqFeJUKJ3YbGUmbwT3-l6FISZ-YOowIBubSJn3c4tPHy8'),
(22, 'Lorenzo De Lauretis', 'e5zUnjxiQ5uNNfvCEWY-9F:APA91bGLCofHcOXdv_9--2h2ksjlLaWGECogolO_lBsdFuIPuYMUCANd86x3QzvkZuR8chlARNehTyfuLX7wteTSEtOJoOzmqFeJUKJ3YbGUmbwT3-l6FISZ-YOowIBubSJn3c4tPHy8'),
(23, 'Lorenzo De Lauretis', 'e5zUnjxiQ5uNNfvCEWY-9F:APA91bGLCofHcOXdv_9--2h2ksjlLaWGECogolO_lBsdFuIPuYMUCANd86x3QzvkZuR8chlARNehTyfuLX7wteTSEtOJoOzmqFeJUKJ3YbGUmbwT3-l6FISZ-YOowIBubSJn3c4tPHy8'),
(24, 'Lorenzo De Lauretis', 'e5zUnjxiQ5uNNfvCEWY-9F:APA91bGLCofHcOXdv_9--2h2ksjlLaWGECogolO_lBsdFuIPuYMUCANd86x3QzvkZuR8chlARNehTyfuLX7wteTSEtOJoOzmqFeJUKJ3YbGUmbwT3-l6FISZ-YOowIBubSJn3c4tPHy8'),
(25, 'Lorenzo De Lauretis', 'e5zUnjxiQ5uNNfvCEWY-9F:APA91bGLCofHcOXdv_9--2h2ksjlLaWGECogolO_lBsdFuIPuYMUCANd86x3QzvkZuR8chlARNehTyfuLX7wteTSEtOJoOzmqFeJUKJ3YbGUmbwT3-l6FISZ-YOowIBubSJn3c4tPHy8'),
(26, 'Lorenzo De Lauretis', 'e5zUnjxiQ5uNNfvCEWY-9F:APA91bGLCofHcOXdv_9--2h2ksjlLaWGECogolO_lBsdFuIPuYMUCANd86x3QzvkZuR8chlARNehTyfuLX7wteTSEtOJoOzmqFeJUKJ3YbGUmbwT3-l6FISZ-YOowIBubSJn3c4tPHy8'),
(27, 'Lorenzo De Lauretis', 'e5zUnjxiQ5uNNfvCEWY-9F:APA91bGLCofHcOXdv_9--2h2ksjlLaWGECogolO_lBsdFuIPuYMUCANd86x3QzvkZuR8chlARNehTyfuLX7wteTSEtOJoOzmqFeJUKJ3YbGUmbwT3-l6FISZ-YOowIBubSJn3c4tPHy8'),
(28, 'Lorenzo De Lauretis', 'e5zUnjxiQ5uNNfvCEWY-9F:APA91bGLCofHcOXdv_9--2h2ksjlLaWGECogolO_lBsdFuIPuYMUCANd86x3QzvkZuR8chlARNehTyfuLX7wteTSEtOJoOzmqFeJUKJ3YbGUmbwT3-l6FISZ-YOowIBubSJn3c4tPHy8'),
(29, 'Lorenzo De Lauretis', 'e5zUnjxiQ5uNNfvCEWY-9F:APA91bGLCofHcOXdv_9--2h2ksjlLaWGECogolO_lBsdFuIPuYMUCANd86x3QzvkZuR8chlARNehTyfuLX7wteTSEtOJoOzmqFeJUKJ3YbGUmbwT3-l6FISZ-YOowIBubSJn3c4tPHy8'),
(30, 'Lorenzo De Lauretis', 'e5zUnjxiQ5uNNfvCEWY-9F:APA91bGLCofHcOXdv_9--2h2ksjlLaWGECogolO_lBsdFuIPuYMUCANd86x3QzvkZuR8chlARNehTyfuLX7wteTSEtOJoOzmqFeJUKJ3YbGUmbwT3-l6FISZ-YOowIBubSJn3c4tPHy8'),
(31, 'Lorenzo De Lauretis', 'e5zUnjxiQ5uNNfvCEWY-9F:APA91bGLCofHcOXdv_9--2h2ksjlLaWGECogolO_lBsdFuIPuYMUCANd86x3QzvkZuR8chlARNehTyfuLX7wteTSEtOJoOzmqFeJUKJ3YbGUmbwT3-l6FISZ-YOowIBubSJn3c4tPHy8'),
(32, 'Lorenzo De Lauretis', 'e5zUnjxiQ5uNNfvCEWY-9F:APA91bGLCofHcOXdv_9--2h2ksjlLaWGECogolO_lBsdFuIPuYMUCANd86x3QzvkZuR8chlARNehTyfuLX7wteTSEtOJoOzmqFeJUKJ3YbGUmbwT3-l6FISZ-YOowIBubSJn3c4tPHy8'),
(33, 'Lorenzo De Lauretis', 'e5zUnjxiQ5uNNfvCEWY-9F:APA91bGLCofHcOXdv_9--2h2ksjlLaWGECogolO_lBsdFuIPuYMUCANd86x3QzvkZuR8chlARNehTyfuLX7wteTSEtOJoOzmqFeJUKJ3YbGUmbwT3-l6FISZ-YOowIBubSJn3c4tPHy8'),
(34, 'Lorenzo De Lauretis', 'e5zUnjxiQ5uNNfvCEWY-9F:APA91bGLCofHcOXdv_9--2h2ksjlLaWGECogolO_lBsdFuIPuYMUCANd86x3QzvkZuR8chlARNehTyfuLX7wteTSEtOJoOzmqFeJUKJ3YbGUmbwT3-l6FISZ-YOowIBubSJn3c4tPHy8'),
(35, 'Lorenzo De Lauretis', 'e5zUnjxiQ5uNNfvCEWY-9F:APA91bGLCofHcOXdv_9--2h2ksjlLaWGECogolO_lBsdFuIPuYMUCANd86x3QzvkZuR8chlARNehTyfuLX7wteTSEtOJoOzmqFeJUKJ3YbGUmbwT3-l6FISZ-YOowIBubSJn3c4tPHy8'),
(36, 'Lorenzo De Lauretis', 'e5zUnjxiQ5uNNfvCEWY-9F:APA91bGLCofHcOXdv_9--2h2ksjlLaWGECogolO_lBsdFuIPuYMUCANd86x3QzvkZuR8chlARNehTyfuLX7wteTSEtOJoOzmqFeJUKJ3YbGUmbwT3-l6FISZ-YOowIBubSJn3c4tPHy8'),
(37, 'Lorenzo De Lauretis', 'e5zUnjxiQ5uNNfvCEWY-9F:APA91bGLCofHcOXdv_9--2h2ksjlLaWGECogolO_lBsdFuIPuYMUCANd86x3QzvkZuR8chlARNehTyfuLX7wteTSEtOJoOzmqFeJUKJ3YbGUmbwT3-l6FISZ-YOowIBubSJn3c4tPHy8'),
(38, 'Lorenzo De Lauretis', 'e5zUnjxiQ5uNNfvCEWY-9F:APA91bGLCofHcOXdv_9--2h2ksjlLaWGECogolO_lBsdFuIPuYMUCANd86x3QzvkZuR8chlARNehTyfuLX7wteTSEtOJoOzmqFeJUKJ3YbGUmbwT3-l6FISZ-YOowIBubSJn3c4tPHy8'),
(39, 'Lorenzo De Lauretis', 'e5zUnjxiQ5uNNfvCEWY-9F:APA91bGLCofHcOXdv_9--2h2ksjlLaWGECogolO_lBsdFuIPuYMUCANd86x3QzvkZuR8chlARNehTyfuLX7wteTSEtOJoOzmqFeJUKJ3YbGUmbwT3-l6FISZ-YOowIBubSJn3c4tPHy8'),
(40, 'Lorenzo De Lauretis', 'e5zUnjxiQ5uNNfvCEWY-9F:APA91bGLCofHcOXdv_9--2h2ksjlLaWGECogolO_lBsdFuIPuYMUCANd86x3QzvkZuR8chlARNehTyfuLX7wteTSEtOJoOzmqFeJUKJ3YbGUmbwT3-l6FISZ-YOowIBubSJn3c4tPHy8'),
(41, 'Lorenzo De Lauretis', 'e5zUnjxiQ5uNNfvCEWY-9F:APA91bGLCofHcOXdv_9--2h2ksjlLaWGECogolO_lBsdFuIPuYMUCANd86x3QzvkZuR8chlARNehTyfuLX7wteTSEtOJoOzmqFeJUKJ3YbGUmbwT3-l6FISZ-YOowIBubSJn3c4tPHy8'),
(42, 'Lorenzo De Lauretis', 'e5zUnjxiQ5uNNfvCEWY-9F:APA91bGLCofHcOXdv_9--2h2ksjlLaWGECogolO_lBsdFuIPuYMUCANd86x3QzvkZuR8chlARNehTyfuLX7wteTSEtOJoOzmqFeJUKJ3YbGUmbwT3-l6FISZ-YOowIBubSJn3c4tPHy8'),
(43, 'Lorenzo De Lauretis', 'e5zUnjxiQ5uNNfvCEWY-9F:APA91bGLCofHcOXdv_9--2h2ksjlLaWGECogolO_lBsdFuIPuYMUCANd86x3QzvkZuR8chlARNehTyfuLX7wteTSEtOJoOzmqFeJUKJ3YbGUmbwT3-l6FISZ-YOowIBubSJn3c4tPHy8'),
(44, 'Lorenzo De Lauretis', 'e5zUnjxiQ5uNNfvCEWY-9F:APA91bGLCofHcOXdv_9--2h2ksjlLaWGECogolO_lBsdFuIPuYMUCANd86x3QzvkZuR8chlARNehTyfuLX7wteTSEtOJoOzmqFeJUKJ3YbGUmbwT3-l6FISZ-YOowIBubSJn3c4tPHy8'),
(45, 'Lorenzo De Lauretis', 'e5zUnjxiQ5uNNfvCEWY-9F:APA91bGLCofHcOXdv_9--2h2ksjlLaWGECogolO_lBsdFuIPuYMUCANd86x3QzvkZuR8chlARNehTyfuLX7wteTSEtOJoOzmqFeJUKJ3YbGUmbwT3-l6FISZ-YOowIBubSJn3c4tPHy8'),
(46, 'Lorenzo De Lauretis', 'e5zUnjxiQ5uNNfvCEWY-9F:APA91bGLCofHcOXdv_9--2h2ksjlLaWGECogolO_lBsdFuIPuYMUCANd86x3QzvkZuR8chlARNehTyfuLX7wteTSEtOJoOzmqFeJUKJ3YbGUmbwT3-l6FISZ-YOowIBubSJn3c4tPHy8'),
(47, 'Lorenzo De Lauretis', 'e5zUnjxiQ5uNNfvCEWY-9F:APA91bGLCofHcOXdv_9--2h2ksjlLaWGECogolO_lBsdFuIPuYMUCANd86x3QzvkZuR8chlARNehTyfuLX7wteTSEtOJoOzmqFeJUKJ3YbGUmbwT3-l6FISZ-YOowIBubSJn3c4tPHy8'),
(48, 'Lorenzo De Lauretis', 'e5zUnjxiQ5uNNfvCEWY-9F:APA91bGLCofHcOXdv_9--2h2ksjlLaWGECogolO_lBsdFuIPuYMUCANd86x3QzvkZuR8chlARNehTyfuLX7wteTSEtOJoOzmqFeJUKJ3YbGUmbwT3-l6FISZ-YOowIBubSJn3c4tPHy8'),
(49, 'Lorenzo De Lauretis', 'e5zUnjxiQ5uNNfvCEWY-9F:APA91bGLCofHcOXdv_9--2h2ksjlLaWGECogolO_lBsdFuIPuYMUCANd86x3QzvkZuR8chlARNehTyfuLX7wteTSEtOJoOzmqFeJUKJ3YbGUmbwT3-l6FISZ-YOowIBubSJn3c4tPHy8'),
(50, 'Lorenzo De Lauretis', 'e5zUnjxiQ5uNNfvCEWY-9F:APA91bGLCofHcOXdv_9--2h2ksjlLaWGECogolO_lBsdFuIPuYMUCANd86x3QzvkZuR8chlARNehTyfuLX7wteTSEtOJoOzmqFeJUKJ3YbGUmbwT3-l6FISZ-YOowIBubSJn3c4tPHy8'),
(51, 'Lorenzo De Lauretis', 'e5zUnjxiQ5uNNfvCEWY-9F:APA91bGLCofHcOXdv_9--2h2ksjlLaWGECogolO_lBsdFuIPuYMUCANd86x3QzvkZuR8chlARNehTyfuLX7wteTSEtOJoOzmqFeJUKJ3YbGUmbwT3-l6FISZ-YOowIBubSJn3c4tPHy8'),
(52, 'Lorenzo De Lauretis', 'e5zUnjxiQ5uNNfvCEWY-9F:APA91bGLCofHcOXdv_9--2h2ksjlLaWGECogolO_lBsdFuIPuYMUCANd86x3QzvkZuR8chlARNehTyfuLX7wteTSEtOJoOzmqFeJUKJ3YbGUmbwT3-l6FISZ-YOowIBubSJn3c4tPHy8'),
(53, 'Lorenzo De Lauretis', 'e5zUnjxiQ5uNNfvCEWY-9F:APA91bGLCofHcOXdv_9--2h2ksjlLaWGECogolO_lBsdFuIPuYMUCANd86x3QzvkZuR8chlARNehTyfuLX7wteTSEtOJoOzmqFeJUKJ3YbGUmbwT3-l6FISZ-YOowIBubSJn3c4tPHy8'),
(54, 'Lorenzo De Lauretis', 'e5zUnjxiQ5uNNfvCEWY-9F:APA91bGLCofHcOXdv_9--2h2ksjlLaWGECogolO_lBsdFuIPuYMUCANd86x3QzvkZuR8chlARNehTyfuLX7wteTSEtOJoOzmqFeJUKJ3YbGUmbwT3-l6FISZ-YOowIBubSJn3c4tPHy8'),
(55, 'Lorenzo De Lauretis', 'e5zUnjxiQ5uNNfvCEWY-9F:APA91bGLCofHcOXdv_9--2h2ksjlLaWGECogolO_lBsdFuIPuYMUCANd86x3QzvkZuR8chlARNehTyfuLX7wteTSEtOJoOzmqFeJUKJ3YbGUmbwT3-l6FISZ-YOowIBubSJn3c4tPHy8'),
(56, 'Lorenzo De Lauretis', 'e5zUnjxiQ5uNNfvCEWY-9F:APA91bGLCofHcOXdv_9--2h2ksjlLaWGECogolO_lBsdFuIPuYMUCANd86x3QzvkZuR8chlARNehTyfuLX7wteTSEtOJoOzmqFeJUKJ3YbGUmbwT3-l6FISZ-YOowIBubSJn3c4tPHy8'),
(57, 'Lorenzo De Lauretis', 'ekvTGx8sTemzhAmdAtpYgk:APA91bH48P0xrxK5JMOH-6y2T2Nlz2B1d1Y9F5TPwLsc9cjKlUXvyjWhiWz1fQ-uPDn37GepbhHk34W0K9qqqviCj6w1GyGNwbRKrVHdKZMN-HABDPNTerqWqX5w7IFTah9RxodFK1Uf'),
(58, 'Lorenzo De Lauretis', 'e5zUnjxiQ5uNNfvCEWY-9F:APA91bGLCofHcOXdv_9--2h2ksjlLaWGECogolO_lBsdFuIPuYMUCANd86x3QzvkZuR8chlARNehTyfuLX7wteTSEtOJoOzmqFeJUKJ3YbGUmbwT3-l6FISZ-YOowIBubSJn3c4tPHy8'),
(59, 'Lorenzo De Lauretis', 'e5zUnjxiQ5uNNfvCEWY-9F:APA91bGLCofHcOXdv_9--2h2ksjlLaWGECogolO_lBsdFuIPuYMUCANd86x3QzvkZuR8chlARNehTyfuLX7wteTSEtOJoOzmqFeJUKJ3YbGUmbwT3-l6FISZ-YOowIBubSJn3c4tPHy8'),
(60, 'Lorenzo De Lauretis', 'e5zUnjxiQ5uNNfvCEWY-9F:APA91bGLCofHcOXdv_9--2h2ksjlLaWGECogolO_lBsdFuIPuYMUCANd86x3QzvkZuR8chlARNehTyfuLX7wteTSEtOJoOzmqFeJUKJ3YbGUmbwT3-l6FISZ-YOowIBubSJn3c4tPHy8'),
(61, 'Lorenzo De Lauretis', 'e5zUnjxiQ5uNNfvCEWY-9F:APA91bGLCofHcOXdv_9--2h2ksjlLaWGECogolO_lBsdFuIPuYMUCANd86x3QzvkZuR8chlARNehTyfuLX7wteTSEtOJoOzmqFeJUKJ3YbGUmbwT3-l6FISZ-YOowIBubSJn3c4tPHy8'),
(62, 'Lorenzo De Lauretis', 'e5zUnjxiQ5uNNfvCEWY-9F:APA91bGLCofHcOXdv_9--2h2ksjlLaWGECogolO_lBsdFuIPuYMUCANd86x3QzvkZuR8chlARNehTyfuLX7wteTSEtOJoOzmqFeJUKJ3YbGUmbwT3-l6FISZ-YOowIBubSJn3c4tPHy8'),
(63, 'Lorenzo De Lauretis', 'e5zUnjxiQ5uNNfvCEWY-9F:APA91bGLCofHcOXdv_9--2h2ksjlLaWGECogolO_lBsdFuIPuYMUCANd86x3QzvkZuR8chlARNehTyfuLX7wteTSEtOJoOzmqFeJUKJ3YbGUmbwT3-l6FISZ-YOowIBubSJn3c4tPHy8'),
(64, 'Lorenzo De Lauretis', 'e5zUnjxiQ5uNNfvCEWY-9F:APA91bGLCofHcOXdv_9--2h2ksjlLaWGECogolO_lBsdFuIPuYMUCANd86x3QzvkZuR8chlARNehTyfuLX7wteTSEtOJoOzmqFeJUKJ3YbGUmbwT3-l6FISZ-YOowIBubSJn3c4tPHy8'),
(65, 'Lorenzo De Lauretis', 'e5zUnjxiQ5uNNfvCEWY-9F:APA91bGLCofHcOXdv_9--2h2ksjlLaWGECogolO_lBsdFuIPuYMUCANd86x3QzvkZuR8chlARNehTyfuLX7wteTSEtOJoOzmqFeJUKJ3YbGUmbwT3-l6FISZ-YOowIBubSJn3c4tPHy8'),
(66, 'Lorenzo De Lauretis', 'e5zUnjxiQ5uNNfvCEWY-9F:APA91bGLCofHcOXdv_9--2h2ksjlLaWGECogolO_lBsdFuIPuYMUCANd86x3QzvkZuR8chlARNehTyfuLX7wteTSEtOJoOzmqFeJUKJ3YbGUmbwT3-l6FISZ-YOowIBubSJn3c4tPHy8'),
(67, 'Lorenzo De Lauretis', 'e5zUnjxiQ5uNNfvCEWY-9F:APA91bGLCofHcOXdv_9--2h2ksjlLaWGECogolO_lBsdFuIPuYMUCANd86x3QzvkZuR8chlARNehTyfuLX7wteTSEtOJoOzmqFeJUKJ3YbGUmbwT3-l6FISZ-YOowIBubSJn3c4tPHy8'),
(68, 'Lorenzo De Lauretis', 'e5zUnjxiQ5uNNfvCEWY-9F:APA91bGLCofHcOXdv_9--2h2ksjlLaWGECogolO_lBsdFuIPuYMUCANd86x3QzvkZuR8chlARNehTyfuLX7wteTSEtOJoOzmqFeJUKJ3YbGUmbwT3-l6FISZ-YOowIBubSJn3c4tPHy8'),
(69, 'Lorenzo De Lauretis', 'e5zUnjxiQ5uNNfvCEWY-9F:APA91bGLCofHcOXdv_9--2h2ksjlLaWGECogolO_lBsdFuIPuYMUCANd86x3QzvkZuR8chlARNehTyfuLX7wteTSEtOJoOzmqFeJUKJ3YbGUmbwT3-l6FISZ-YOowIBubSJn3c4tPHy8'),
(70, 'Lorenzo De Lauretis', 'e5zUnjxiQ5uNNfvCEWY-9F:APA91bGLCofHcOXdv_9--2h2ksjlLaWGECogolO_lBsdFuIPuYMUCANd86x3QzvkZuR8chlARNehTyfuLX7wteTSEtOJoOzmqFeJUKJ3YbGUmbwT3-l6FISZ-YOowIBubSJn3c4tPHy8'),
(71, 'Lorenzo De Lauretis', 'e5zUnjxiQ5uNNfvCEWY-9F:APA91bGLCofHcOXdv_9--2h2ksjlLaWGECogolO_lBsdFuIPuYMUCANd86x3QzvkZuR8chlARNehTyfuLX7wteTSEtOJoOzmqFeJUKJ3YbGUmbwT3-l6FISZ-YOowIBubSJn3c4tPHy8'),
(72, 'Lorenzo De Lauretis', 'e5zUnjxiQ5uNNfvCEWY-9F:APA91bGLCofHcOXdv_9--2h2ksjlLaWGECogolO_lBsdFuIPuYMUCANd86x3QzvkZuR8chlARNehTyfuLX7wteTSEtOJoOzmqFeJUKJ3YbGUmbwT3-l6FISZ-YOowIBubSJn3c4tPHy8'),
(73, 'Lorenzo De Lauretis', 'e5zUnjxiQ5uNNfvCEWY-9F:APA91bGLCofHcOXdv_9--2h2ksjlLaWGECogolO_lBsdFuIPuYMUCANd86x3QzvkZuR8chlARNehTyfuLX7wteTSEtOJoOzmqFeJUKJ3YbGUmbwT3-l6FISZ-YOowIBubSJn3c4tPHy8'),
(74, 'Lorenzo De Lauretis', 'e5zUnjxiQ5uNNfvCEWY-9F:APA91bGLCofHcOXdv_9--2h2ksjlLaWGECogolO_lBsdFuIPuYMUCANd86x3QzvkZuR8chlARNehTyfuLX7wteTSEtOJoOzmqFeJUKJ3YbGUmbwT3-l6FISZ-YOowIBubSJn3c4tPHy8'),
(75, 'Lorenzo De Lauretis', 'e5zUnjxiQ5uNNfvCEWY-9F:APA91bGLCofHcOXdv_9--2h2ksjlLaWGECogolO_lBsdFuIPuYMUCANd86x3QzvkZuR8chlARNehTyfuLX7wteTSEtOJoOzmqFeJUKJ3YbGUmbwT3-l6FISZ-YOowIBubSJn3c4tPHy8'),
(76, 'Lorenzo De Lauretis', 'e5zUnjxiQ5uNNfvCEWY-9F:APA91bGLCofHcOXdv_9--2h2ksjlLaWGECogolO_lBsdFuIPuYMUCANd86x3QzvkZuR8chlARNehTyfuLX7wteTSEtOJoOzmqFeJUKJ3YbGUmbwT3-l6FISZ-YOowIBubSJn3c4tPHy8'),
(77, 'Lorenzo De Lauretis', 'e5zUnjxiQ5uNNfvCEWY-9F:APA91bGLCofHcOXdv_9--2h2ksjlLaWGECogolO_lBsdFuIPuYMUCANd86x3QzvkZuR8chlARNehTyfuLX7wteTSEtOJoOzmqFeJUKJ3YbGUmbwT3-l6FISZ-YOowIBubSJn3c4tPHy8'),
(78, 'Lorenzo De Lauretis', 'e5zUnjxiQ5uNNfvCEWY-9F:APA91bGLCofHcOXdv_9--2h2ksjlLaWGECogolO_lBsdFuIPuYMUCANd86x3QzvkZuR8chlARNehTyfuLX7wteTSEtOJoOzmqFeJUKJ3YbGUmbwT3-l6FISZ-YOowIBubSJn3c4tPHy8'),
(79, 'Lorenzo De Lauretis', 'e5zUnjxiQ5uNNfvCEWY-9F:APA91bGLCofHcOXdv_9--2h2ksjlLaWGECogolO_lBsdFuIPuYMUCANd86x3QzvkZuR8chlARNehTyfuLX7wteTSEtOJoOzmqFeJUKJ3YbGUmbwT3-l6FISZ-YOowIBubSJn3c4tPHy8'),
(80, 'Lorenzo De Lauretis', 'e5zUnjxiQ5uNNfvCEWY-9F:APA91bGLCofHcOXdv_9--2h2ksjlLaWGECogolO_lBsdFuIPuYMUCANd86x3QzvkZuR8chlARNehTyfuLX7wteTSEtOJoOzmqFeJUKJ3YbGUmbwT3-l6FISZ-YOowIBubSJn3c4tPHy8'),
(81, 'Lorenzo De Lauretis', 'e5zUnjxiQ5uNNfvCEWY-9F:APA91bGLCofHcOXdv_9--2h2ksjlLaWGECogolO_lBsdFuIPuYMUCANd86x3QzvkZuR8chlARNehTyfuLX7wteTSEtOJoOzmqFeJUKJ3YbGUmbwT3-l6FISZ-YOowIBubSJn3c4tPHy8'),
(82, 'Lorenzo De Lauretis', 'e5zUnjxiQ5uNNfvCEWY-9F:APA91bGLCofHcOXdv_9--2h2ksjlLaWGECogolO_lBsdFuIPuYMUCANd86x3QzvkZuR8chlARNehTyfuLX7wteTSEtOJoOzmqFeJUKJ3YbGUmbwT3-l6FISZ-YOowIBubSJn3c4tPHy8'),
(83, 'Lorenzo De Lauretis', 'e5zUnjxiQ5uNNfvCEWY-9F:APA91bGLCofHcOXdv_9--2h2ksjlLaWGECogolO_lBsdFuIPuYMUCANd86x3QzvkZuR8chlARNehTyfuLX7wteTSEtOJoOzmqFeJUKJ3YbGUmbwT3-l6FISZ-YOowIBubSJn3c4tPHy8'),
(84, 'Lorenzo De Lauretis', 'e5zUnjxiQ5uNNfvCEWY-9F:APA91bGLCofHcOXdv_9--2h2ksjlLaWGECogolO_lBsdFuIPuYMUCANd86x3QzvkZuR8chlARNehTyfuLX7wteTSEtOJoOzmqFeJUKJ3YbGUmbwT3-l6FISZ-YOowIBubSJn3c4tPHy8'),
(85, 'Lorenzo De Lauretis', 'e5zUnjxiQ5uNNfvCEWY-9F:APA91bGLCofHcOXdv_9--2h2ksjlLaWGECogolO_lBsdFuIPuYMUCANd86x3QzvkZuR8chlARNehTyfuLX7wteTSEtOJoOzmqFeJUKJ3YbGUmbwT3-l6FISZ-YOowIBubSJn3c4tPHy8'),
(86, 'Lorenzo De Lauretis', 'e5zUnjxiQ5uNNfvCEWY-9F:APA91bGLCofHcOXdv_9--2h2ksjlLaWGECogolO_lBsdFuIPuYMUCANd86x3QzvkZuR8chlARNehTyfuLX7wteTSEtOJoOzmqFeJUKJ3YbGUmbwT3-l6FISZ-YOowIBubSJn3c4tPHy8'),
(87, 'Lorenzo De Lauretis', 'e5zUnjxiQ5uNNfvCEWY-9F:APA91bGLCofHcOXdv_9--2h2ksjlLaWGECogolO_lBsdFuIPuYMUCANd86x3QzvkZuR8chlARNehTyfuLX7wteTSEtOJoOzmqFeJUKJ3YbGUmbwT3-l6FISZ-YOowIBubSJn3c4tPHy8'),
(88, 'Lorenzo De Lauretis', 'e5zUnjxiQ5uNNfvCEWY-9F:APA91bGLCofHcOXdv_9--2h2ksjlLaWGECogolO_lBsdFuIPuYMUCANd86x3QzvkZuR8chlARNehTyfuLX7wteTSEtOJoOzmqFeJUKJ3YbGUmbwT3-l6FISZ-YOowIBubSJn3c4tPHy8'),
(89, 'Lorenzo De Lauretis', 'e5zUnjxiQ5uNNfvCEWY-9F:APA91bGLCofHcOXdv_9--2h2ksjlLaWGECogolO_lBsdFuIPuYMUCANd86x3QzvkZuR8chlARNehTyfuLX7wteTSEtOJoOzmqFeJUKJ3YbGUmbwT3-l6FISZ-YOowIBubSJn3c4tPHy8'),
(90, 'Lorenzo De Lauretis', 'e5zUnjxiQ5uNNfvCEWY-9F:APA91bGLCofHcOXdv_9--2h2ksjlLaWGECogolO_lBsdFuIPuYMUCANd86x3QzvkZuR8chlARNehTyfuLX7wteTSEtOJoOzmqFeJUKJ3YbGUmbwT3-l6FISZ-YOowIBubSJn3c4tPHy8'),
(91, 'Lorenzo De Lauretis', 'e5zUnjxiQ5uNNfvCEWY-9F:APA91bGLCofHcOXdv_9--2h2ksjlLaWGECogolO_lBsdFuIPuYMUCANd86x3QzvkZuR8chlARNehTyfuLX7wteTSEtOJoOzmqFeJUKJ3YbGUmbwT3-l6FISZ-YOowIBubSJn3c4tPHy8'),
(92, 'Lorenzo De Lauretis', 'e5zUnjxiQ5uNNfvCEWY-9F:APA91bGLCofHcOXdv_9--2h2ksjlLaWGECogolO_lBsdFuIPuYMUCANd86x3QzvkZuR8chlARNehTyfuLX7wteTSEtOJoOzmqFeJUKJ3YbGUmbwT3-l6FISZ-YOowIBubSJn3c4tPHy8'),
(93, 'Lorenzo De Lauretis', 'e5zUnjxiQ5uNNfvCEWY-9F:APA91bGLCofHcOXdv_9--2h2ksjlLaWGECogolO_lBsdFuIPuYMUCANd86x3QzvkZuR8chlARNehTyfuLX7wteTSEtOJoOzmqFeJUKJ3YbGUmbwT3-l6FISZ-YOowIBubSJn3c4tPHy8'),
(94, 'Lorenzo De Lauretis', 'e5zUnjxiQ5uNNfvCEWY-9F:APA91bGLCofHcOXdv_9--2h2ksjlLaWGECogolO_lBsdFuIPuYMUCANd86x3QzvkZuR8chlARNehTyfuLX7wteTSEtOJoOzmqFeJUKJ3YbGUmbwT3-l6FISZ-YOowIBubSJn3c4tPHy8'),
(95, 'Lorenzo De Lauretis', 'e5zUnjxiQ5uNNfvCEWY-9F:APA91bGLCofHcOXdv_9--2h2ksjlLaWGECogolO_lBsdFuIPuYMUCANd86x3QzvkZuR8chlARNehTyfuLX7wteTSEtOJoOzmqFeJUKJ3YbGUmbwT3-l6FISZ-YOowIBubSJn3c4tPHy8'),
(96, 'Lorenzo De Lauretis', 'e5zUnjxiQ5uNNfvCEWY-9F:APA91bGLCofHcOXdv_9--2h2ksjlLaWGECogolO_lBsdFuIPuYMUCANd86x3QzvkZuR8chlARNehTyfuLX7wteTSEtOJoOzmqFeJUKJ3YbGUmbwT3-l6FISZ-YOowIBubSJn3c4tPHy8'),
(97, 'Lorenzo De Lauretis', 'e5zUnjxiQ5uNNfvCEWY-9F:APA91bGLCofHcOXdv_9--2h2ksjlLaWGECogolO_lBsdFuIPuYMUCANd86x3QzvkZuR8chlARNehTyfuLX7wteTSEtOJoOzmqFeJUKJ3YbGUmbwT3-l6FISZ-YOowIBubSJn3c4tPHy8'),
(98, 'Lorenzo De Lauretis', 'e5zUnjxiQ5uNNfvCEWY-9F:APA91bGLCofHcOXdv_9--2h2ksjlLaWGECogolO_lBsdFuIPuYMUCANd86x3QzvkZuR8chlARNehTyfuLX7wteTSEtOJoOzmqFeJUKJ3YbGUmbwT3-l6FISZ-YOowIBubSJn3c4tPHy8'),
(99, 'Lorenzo De Lauretis', 'e5zUnjxiQ5uNNfvCEWY-9F:APA91bGLCofHcOXdv_9--2h2ksjlLaWGECogolO_lBsdFuIPuYMUCANd86x3QzvkZuR8chlARNehTyfuLX7wteTSEtOJoOzmqFeJUKJ3YbGUmbwT3-l6FISZ-YOowIBubSJn3c4tPHy8'),
(100, 'Lorenzo De Lauretis', 'e5zUnjxiQ5uNNfvCEWY-9F:APA91bGLCofHcOXdv_9--2h2ksjlLaWGECogolO_lBsdFuIPuYMUCANd86x3QzvkZuR8chlARNehTyfuLX7wteTSEtOJoOzmqFeJUKJ3YbGUmbwT3-l6FISZ-YOowIBubSJn3c4tPHy8');

-- --------------------------------------------------------

--
-- Struttura della tabella `valori`
--

CREATE TABLE `valori` (
  `id` int(11) NOT NULL,
  `nome` varchar(200) NOT NULL,
  `tipo` varchar(200) NOT NULL,
  `valore` varchar(20) NOT NULL,
  `anomalia` int(11) NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dump dei dati per la tabella `valori`
--

INSERT INTO `valori` (`id`, `nome`, `tipo`, `valore`, `anomalia`, `timestamp`) VALUES
(1, 'Lorenzo De Lauretis', 'presminima', '84.0', 0, '2021-04-24 23:42:53'),
(2, 'Lorenzo De Lauretis', 'presmassima', '218.0', 0, '2021-04-24 23:42:53'),
(3, 'Lorenzo De Lauretis', 'temperatura', '37.4', 0, '2021-04-24 23:42:53'),
(4, 'Lorenzo De Lauretis', 'peso', '85', 0, '2021-04-24 23:42:53'),
(5, 'Lorenzo De Lauretis', 'altezza', '184', 0, '2021-04-24 23:42:53'),
(6, 'Lorenzo De Lauretis', 'battito', '93', 0, '2021-04-24 23:45:16'),
(7, 'Lorenzo De Lauretis', 'battito', '107', 0, '2021-04-24 23:45:17'),
(8, 'Lorenzo De Lauretis', 'saturazione', '98', 0, '2021-04-24 23:45:19'),
(9, 'Lorenzo De Lauretis', 'battito', '120', 0, '2021-04-24 23:45:19'),
(10, 'Lorenzo De Lauretis', 'saturazione', '100', 0, '2021-04-24 23:45:20'),
(11, 'Lorenzo De Lauretis', 'battito', '71', 0, '2021-04-24 23:45:20'),
(12, 'Lorenzo De Lauretis', 'saturazione', '100', 0, '2021-04-24 23:45:21'),
(13, 'Lorenzo De Lauretis', 'battito', '100', 0, '2021-04-24 23:45:21'),
(14, 'Lorenzo De Lauretis', 'battito', '78', 0, '2021-04-24 23:45:22'),
(15, 'Lorenzo De Lauretis', 'battito', '120', 0, '2021-04-24 23:45:24'),
(16, 'Lorenzo De Lauretis', 'battito', '100', 0, '2021-04-24 23:45:25'),
(17, 'Lorenzo De Lauretis', 'battito', '115', 0, '2021-04-24 23:45:26'),
(18, 'Lorenzo De Lauretis', 'battito', '93', 0, '2021-04-24 23:45:27'),
(19, 'Lorenzo De Lauretis', 'battito', '83', 0, '2021-04-24 23:45:29'),
(20, 'Lorenzo De Lauretis', 'battito', '125', 0, '2021-04-24 23:45:30'),
(21, 'Lorenzo De Lauretis', 'battito', '115', 0, '2021-04-24 23:45:31'),
(22, 'Lorenzo De Lauretis', 'battito', '136', 0, '2021-04-24 23:45:32'),
(23, 'Lorenzo De Lauretis', 'battito', '136', 0, '2021-04-24 23:45:34'),
(24, 'Lorenzo De Lauretis', 'battito', '88', 0, '2021-04-24 23:45:35'),
(25, 'Lorenzo De Lauretis', 'battito', '115', 0, '2021-04-24 23:45:36'),
(26, 'Lorenzo De Lauretis', 'battito', '125', 0, '2021-04-24 23:45:37'),
(27, 'Lorenzo De Lauretis', 'battito', '107', 0, '2021-04-24 23:45:39'),
(28, 'Lorenzo De Lauretis', 'battito', '115', 0, '2021-04-24 23:45:40'),
(29, 'Lorenzo De Lauretis', 'battito', '136', 0, '2021-04-24 23:45:41'),
(30, 'Lorenzo De Lauretis', 'battito', '107', 0, '2021-04-24 23:45:42'),
(31, 'Lorenzo De Lauretis', 'battito', '107', 0, '2021-04-24 23:45:44'),
(32, 'Lorenzo De Lauretis', 'battito', '93', 0, '2021-04-24 23:45:45'),
(33, 'Lorenzo De Lauretis', 'battito', '93', 0, '2021-04-24 23:45:46'),
(34, 'Lorenzo De Lauretis', 'saturazione', '92', 0, '2021-04-24 23:45:47'),
(35, 'Lorenzo De Lauretis', 'battito', '100', 0, '2021-04-24 23:45:47'),
(36, 'Lorenzo De Lauretis', 'battito', '75', 0, '2021-04-24 23:45:49'),
(37, 'Lorenzo De Lauretis', 'battito', '93', 0, '2021-04-24 23:45:50'),
(38, 'Lorenzo De Lauretis', 'battito', '100', 0, '2021-04-24 23:45:51'),
(39, 'Lorenzo De Lauretis', 'saturazione', '98', 0, '2021-04-24 23:45:52'),
(40, 'Lorenzo De Lauretis', 'battito', '100', 0, '2021-04-24 23:45:52'),
(41, 'Lorenzo De Lauretis', 'battito', '83', 0, '2021-04-24 23:45:54'),
(42, 'Lorenzo De Lauretis', 'battito', '150', 0, '2021-04-24 23:45:55'),
(43, 'Lorenzo De Lauretis', 'battito', '93', 0, '2021-04-24 23:45:56'),
(44, 'Lorenzo De Lauretis', 'battito', '125', 0, '2021-04-24 23:45:57'),
(45, 'Lorenzo De Lauretis', 'battito', '107', 0, '2021-04-24 23:45:59'),
(46, 'Lorenzo De Lauretis', 'battito', '100', 0, '2021-04-24 23:46:00'),
(47, 'Lorenzo De Lauretis', 'battito', '100', 0, '2021-04-24 23:46:02'),
(48, 'Lorenzo De Lauretis', 'saturazione', '83', 0, '2021-04-24 23:46:03'),
(49, 'Lorenzo De Lauretis', 'battito', '83', 0, '2021-04-24 23:46:03'),
(50, 'Lorenzo De Lauretis', 'saturazione', '99', 0, '2021-04-24 23:46:04'),
(51, 'Lorenzo De Lauretis', 'battito', '125', 0, '2021-04-24 23:46:04'),
(52, 'Lorenzo De Lauretis', 'battito', '93', 0, '2021-04-24 23:46:05'),
(53, 'Lorenzo De Lauretis', 'battito', '93', 0, '2021-04-24 23:46:06'),
(54, 'Lorenzo De Lauretis', 'battito', '100', 0, '2021-04-24 23:46:08'),
(55, 'Lorenzo De Lauretis', 'battito', '115', 0, '2021-04-24 23:46:09'),
(56, 'Lorenzo De Lauretis', 'saturazione', '99', 0, '2021-04-24 23:46:10'),
(57, 'Lorenzo De Lauretis', 'battito', '107', 0, '2021-04-24 23:46:10'),
(58, 'Lorenzo De Lauretis', 'saturazione', '96', 0, '2021-04-24 23:46:12'),
(59, 'Lorenzo De Lauretis', 'battito', '115', 0, '2021-04-24 23:46:12'),
(60, 'Lorenzo De Lauretis', 'battito', '93', 0, '2021-04-24 23:46:13'),
(61, 'Lorenzo De Lauretis', 'battito', '83', 0, '2021-04-24 23:46:14'),
(62, 'Lorenzo De Lauretis', 'saturazione', '100', 0, '2021-04-24 23:46:15'),
(63, 'Lorenzo De Lauretis', 'battito', '136', 0, '2021-04-24 23:46:15'),
(64, 'Lorenzo De Lauretis', 'battito', '100', 0, '2021-04-24 23:46:16'),
(65, 'Lorenzo De Lauretis', 'saturazione', '97', 0, '2021-04-24 23:46:18'),
(66, 'Lorenzo De Lauretis', 'battito', '125', 0, '2021-04-24 23:46:18'),
(67, 'Lorenzo De Lauretis', 'altezza', '175', 0, '2021-04-28 00:59:38'),
(68, 'Lorenzo De Lauretis', 'altezza', '184', 0, '2021-04-28 01:00:36'),
(69, 'Lorenzo De Lauretis', 'presminima', '117.0', 0, '2021-04-28 01:06:58'),
(70, 'Lorenzo De Lauretis', 'presmassima', '212.0', 0, '2021-04-28 01:06:58'),
(71, 'Lorenzo De Lauretis', 'temperatura', '38.4', 0, '2021-04-28 01:06:58'),
(79, 'Lorenzo De Lauretis', 'peso', '75', 0, '2021-04-28 02:04:05'),
(81, 'Lorenzo De Lauretis', 'peso', '75', 0, '2021-04-28 02:05:28'),
(83, 'Lorenzo De Lauretis', 'peso', '75', 0, '2021-04-28 02:05:40'),
(85, 'Lorenzo De Lauretis', 'altezza', '184', 0, '2021-04-28 02:06:40'),
(87, 'Lorenzo De Lauretis', 'peso', '84', 0, '2021-04-28 02:06:56'),
(89, 'Lorenzo De Lauretis', 'fotoviso', '76843819906.jpg', 0, '2021-04-29 01:55:28'),
(90, 'Lorenzo De Lauretis', 'fotomano', '49321225006.jpg', 35, '2021-04-29 01:55:32'),
(91, 'Lorenzo De Lauretis', 'fotoviso', '22924229735.jpg', 0, '2021-04-29 01:56:54'),
(92, 'Lorenzo De Lauretis', 'fotoviso', '9128107223.jpg', 0, '2021-04-29 02:01:09'),
(93, 'Lorenzo De Lauretis', 'fotomano', '23863046104.jpg', 35, '2021-04-29 02:03:28'),
(94, 'Lorenzo De Lauretis', 'fotoviso', '78116541588.jpg', 0, '2021-05-03 20:44:49'),
(95, 'Lorenzo De Lauretis', 'fotomano', '80421072570.jpg', 35, '2021-05-03 20:45:06'),
(96, 'Lorenzo De Lauretis', 'temperatura', '38', 0, '2021-05-03 20:47:23'),
(102, 'Lorenzo De Lauretis', 'presminima', '60.0', 0, '2021-05-24 22:29:40'),
(103, 'Lorenzo De Lauretis', 'presmassima', '120.0', 0, '2021-05-24 22:29:40'),
(104, 'Lorenzo De Lauretis', 'temperatura', '37.0', 0, '2021-05-24 22:29:40'),
(105, 'Lorenzo De Lauretis', 'peso', '85', 0, '2021-05-24 22:29:40'),
(106, 'Lorenzo De Lauretis', 'altezza', '185', 0, '2021-05-24 22:30:27'),
(107, 'Lorenzo De Lauretis', 'presminima', '46.0', 0, '2021-05-24 22:30:35'),
(108, 'Lorenzo De Lauretis', 'presmassima', '196.0', 0, '2021-05-24 22:30:35'),
(109, 'Lorenzo De Lauretis', 'temperatura', '39.6', 0, '2021-05-24 22:30:35'),
(110, 'Lorenzo De Lauretis', 'peso', '86', 0, '2021-05-24 22:30:35'),
(147, 'Lorenzo De Lauretis', 'altezza', '184', 0, '2021-06-01 13:03:46'),
(148, 'Lorenzo De Lauretis', 'presminima', '81.0', 0, '2021-06-01 13:04:09'),
(149, 'Lorenzo De Lauretis', 'presmassima', '183.0', 0, '2021-06-01 13:04:09'),
(150, 'Lorenzo De Lauretis', 'temperatura', '37.4', 0, '2021-06-01 13:04:09'),
(151, 'Lorenzo De Lauretis', 'peso', '75', 0, '2021-06-01 13:04:09'),
(156, 'Lorenzo De Lauretis', 'fotoviso', '62972647789.jpg', 0, '2021-06-01 13:05:55'),
(157, 'Lorenzo De Lauretis', 'fotomano', '87924104603.jpg', 35, '2021-06-01 13:06:17'),
(163, 'Lorenzo De Lauretis', 'sensazione', 'Dol Petto', 0, '2021-06-12 15:00:26'),
(164, 'Lorenzo De Lauretis', 'sensazione', 'Dol Braccia', 0, '2021-06-12 15:00:27'),
(166, 'Madre Prof', 'eta', '85', 0, '2021-06-29 20:06:04'),
(167, 'Lorenzo De Lauretis', 'presminima', '60.0', 0, '2021-06-29 20:21:06'),
(168, 'Lorenzo De Lauretis', 'presmassima', '120.0', 0, '2021-06-29 20:21:06'),
(169, 'Lorenzo De Lauretis', 'temperatura', '37.0', 0, '2021-06-29 20:21:06'),
(170, 'Lorenzo De Lauretis', 'peso', '75', 0, '2021-06-29 20:21:06'),
(171, 'Lorenzo De Lauretis', 'eta', '30', 0, '2021-06-29 20:21:06'),
(172, 'Lorenzo De Lauretis', 'presminima', '60.0', 0, '2021-06-29 20:21:18'),
(173, 'Lorenzo De Lauretis', 'presmassima', '120.0', 0, '2021-06-29 20:21:18'),
(174, 'Lorenzo De Lauretis', 'temperatura', '37.0', 0, '2021-06-29 20:21:18'),
(175, 'Lorenzo De Lauretis', 'peso', '90', 0, '2021-06-29 20:21:18'),
(176, 'Lorenzo De Lauretis', 'eta', '30', 0, '2021-06-29 20:21:18'),
(177, 'Lorenzo De Lauretis', 'presminima', '60.0', 0, '2021-06-29 20:25:34'),
(178, 'Lorenzo De Lauretis', 'presmassima', '120.0', 0, '2021-06-29 20:25:34'),
(179, 'Lorenzo De Lauretis', 'temperatura', '37.0', 0, '2021-06-29 20:25:34'),
(180, 'Lorenzo De Lauretis', 'peso', '90', 0, '2021-06-29 20:25:34'),
(181, 'Lorenzo De Lauretis', 'eta', '30', 0, '2021-06-29 20:25:34'),
(182, 'Lorenzo De Lauretis', 'patologia', 'Diabete', 0, '2021-09-27 02:41:41'),
(183, 'Lorenzo De Lauretis', 'patologia', 'Ipertensione', 0, '2021-09-27 02:41:41'),
(184, 'Lorenzo De Lauretis', 'stato', 'Bene', 0, '2021-09-28 02:53:22'),
(185, 'Lorenzo De Lauretis', 'presminima', '60.0', 0, '2021-09-29 01:37:01'),
(186, 'Lorenzo De Lauretis', 'presmassima', '120.0', 0, '2021-09-29 01:37:01'),
(187, 'Lorenzo De Lauretis', 'temperatura', '37.0', 0, '2021-09-29 01:37:01'),
(188, 'Lorenzo De Lauretis', 'peso', '88', 0, '2021-09-29 01:37:01'),
(189, 'Lorenzo De Lauretis', 'eta', '30', 0, '2021-09-29 01:37:01'),
(190, 'Lorenzo De Lauretis', 'battito', '77', 1, '2021-11-09 23:08:01'),
(191, 'Lorenzo De Lauretis', 'qt', '268', 8, '2021-11-09 23:08:01'),
(192, 'Lorenzo De Lauretis', 'qtc', '298', 14, '2021-11-09 23:08:01'),
(193, 'Lorenzo De Lauretis', 'qrs', '112', 20, '2021-11-09 23:08:01'),
(194, 'Lorenzo De Lauretis', 'pr', '193', 25, '2021-11-09 23:08:01'),
(195, 'Lorenzo De Lauretis', 'rr', '771', 30, '2021-11-09 23:08:01'),
(196, 'Lorenzo De Lauretis', 'battito', '92', 1, '2021-11-13 23:08:01'),
(197, 'Lorenzo De Lauretis', 'qt', '268', 8, '2021-11-13 23:08:01'),
(198, 'Lorenzo De Lauretis', 'qtc', '343', 14, '2021-11-13 23:08:01'),
(199, 'Lorenzo De Lauretis', 'qrs', '93', 20, '2021-11-13 23:08:01'),
(200, 'Lorenzo De Lauretis', 'pr', '193', 25, '2021-11-13 23:08:01'),
(201, 'Lorenzo De Lauretis', 'rr', '649', 30, '2021-11-13 23:08:01'),
(206, 'Lorenzo De Lauretis', 'battito', '70', 1, '2021-11-10 00:15:18'),
(207, 'Lorenzo De Lauretis', 'qt', '340', 8, '2021-11-10 00:15:18'),
(208, 'Lorenzo De Lauretis', 'qtc', '355', 14, '2021-11-10 00:15:18'),
(209, 'Lorenzo De Lauretis', 'rr', '630', 30, '2021-11-10 00:15:18'),
(210, 'Lorenzo De Lauretis', 'qrs', '94', 20, '2021-11-10 00:15:18'),
(211, 'Lorenzo De Lauretis', 'pr', '190', 25, '2021-11-10 00:15:18'),
(212, 'Lorenzo De Lauretis', 'battito', '105', 5, '2021-11-10 00:18:02'),
(213, 'Lorenzo De Lauretis', 'qt', '435', 9, '2021-11-10 00:18:02'),
(214, 'Lorenzo De Lauretis', 'qtc', '450', 16, '2021-11-10 00:18:02'),
(215, 'Lorenzo De Lauretis', 'rr', '850', 33, '2021-11-10 00:18:02'),
(216, 'Lorenzo De Lauretis', 'qrs', '123', 23, '2021-11-10 00:18:02'),
(217, 'Lorenzo De Lauretis', 'pr', '201', 28, '2021-11-10 00:18:02'),
(218, 'Lorenzo De Lauretis', 'battito', '120', 6, '2021-11-16 16:41:07'),
(219, 'Lorenzo De Lauretis', 'qt', '350', 8, '2021-11-16 16:41:07'),
(220, 'Lorenzo De Lauretis', 'qtc', '360', 14, '2021-11-16 16:41:07'),
(221, 'Lorenzo De Lauretis', 'rr', '1450', 33, '2021-11-16 16:41:07'),
(222, 'Lorenzo De Lauretis', 'qrs', '112', 20, '2021-11-16 16:41:07'),
(223, 'Lorenzo De Lauretis', 'pr', '194', 25, '2021-11-16 16:41:07'),
(224, 'Lorenzo De Lauretis', 'battito', '122', 6, '2021-11-16 16:41:48'),
(225, 'Lorenzo De Lauretis', 'qt', '340', 8, '2021-11-16 16:41:48'),
(226, 'Lorenzo De Lauretis', 'qtc', '350', 14, '2021-11-16 16:41:48'),
(227, 'Lorenzo De Lauretis', 'rr', '1150', 30, '2021-11-16 16:41:48'),
(228, 'Lorenzo De Lauretis', 'qrs', '114', 20, '2021-11-16 16:41:48'),
(229, 'Lorenzo De Lauretis', 'pr', '195', 25, '2021-11-16 16:41:48'),
(230, 'Lorenzo De Lauretis', 'battito', '126', 6, '2021-11-16 16:42:09'),
(231, 'Lorenzo De Lauretis', 'qt', '346', 8, '2021-11-16 16:42:09'),
(232, 'Lorenzo De Lauretis', 'qtc', '355', 14, '2021-11-16 16:42:09'),
(233, 'Lorenzo De Lauretis', 'rr', '1650', 34, '2021-11-16 16:42:09'),
(234, 'Lorenzo De Lauretis', 'qrs', '110', 20, '2021-11-16 16:42:09'),
(235, 'Lorenzo De Lauretis', 'pr', '190', 25, '2021-11-16 16:42:09'),
(236, 'Lorenzo De Lauretis', 'battito', '118', 5, '2021-11-16 16:42:37'),
(237, 'Lorenzo De Lauretis', 'qt', '345', 8, '2021-11-16 16:42:37'),
(238, 'Lorenzo De Lauretis', 'qtc', '356', 14, '2021-11-16 16:42:37'),
(239, 'Lorenzo De Lauretis', 'rr', '950', 30, '2021-11-16 16:42:37'),
(240, 'Lorenzo De Lauretis', 'qrs', '111', 20, '2021-11-16 16:42:37'),
(241, 'Lorenzo De Lauretis', 'pr', '180', 25, '2021-11-16 16:42:37'),
(242, 'Lorenzo De Lauretis', 'battito', '70', 1, '2021-11-16 16:51:47'),
(243, 'Lorenzo De Lauretis', 'qt', '345', 8, '2021-11-16 16:51:47'),
(244, 'Lorenzo De Lauretis', 'qtc', '355', 14, '2021-11-16 16:51:47'),
(245, 'Lorenzo De Lauretis', 'rr', '650', 30, '2021-11-16 16:51:47'),
(246, 'Lorenzo De Lauretis', 'qrs', '123', 23, '2021-11-16 16:51:47'),
(247, 'Lorenzo De Lauretis', 'pr', '110', 26, '2021-11-16 16:51:47'),
(248, 'Lorenzo De Lauretis', 'battito', '70', 1, '2021-11-16 16:52:12'),
(249, 'Lorenzo De Lauretis', 'qt', '349', 8, '2021-11-16 16:52:12'),
(250, 'Lorenzo De Lauretis', 'qtc', '350', 14, '2021-11-16 16:52:12'),
(251, 'Lorenzo De Lauretis', 'rr', '654', 30, '2021-11-16 16:52:12'),
(252, 'Lorenzo De Lauretis', 'qrs', '125', 23, '2021-11-16 16:52:12'),
(253, 'Lorenzo De Lauretis', 'pr', '114', 26, '2021-11-16 16:52:12'),
(254, 'Lorenzo De Lauretis', 'battito', '70', 1, '2021-11-16 16:53:03'),
(255, 'Lorenzo De Lauretis', 'qt', '349', 8, '2021-11-16 16:53:03'),
(256, 'Lorenzo De Lauretis', 'qtc', '350', 14, '2021-11-16 16:53:03'),
(257, 'Lorenzo De Lauretis', 'rr', '654', 30, '2021-11-16 16:53:03'),
(258, 'Lorenzo De Lauretis', 'qrs', '129', 23, '2021-11-16 16:53:03'),
(259, 'Lorenzo De Lauretis', 'pr', '110', 26, '2021-11-16 16:53:03'),
(260, 'Lorenzo De Lauretis', 'battito', '80', 1, '2021-11-16 16:53:35'),
(261, 'Lorenzo De Lauretis', 'qt', '329', 8, '2021-11-16 16:53:35'),
(262, 'Lorenzo De Lauretis', 'qtc', '350', 14, '2021-11-16 16:53:35'),
(263, 'Lorenzo De Lauretis', 'rr', '640', 30, '2021-11-16 16:53:35'),
(264, 'Lorenzo De Lauretis', 'qrs', '124', 23, '2021-11-16 16:53:35'),
(265, 'Lorenzo De Lauretis', 'pr', '108', 26, '2021-11-16 16:53:35'),
(266, 'Lorenzo De Lauretis', 'battito', '80', 1, '2021-11-16 16:54:01'),
(267, 'Lorenzo De Lauretis', 'qt', '345', 8, '2021-11-16 16:54:01'),
(268, 'Lorenzo De Lauretis', 'qtc', '355', 14, '2021-11-16 16:54:01'),
(269, 'Lorenzo De Lauretis', 'rr', '620', 30, '2021-11-16 16:54:01'),
(270, 'Lorenzo De Lauretis', 'qrs', '128', 23, '2021-11-16 16:54:01'),
(271, 'Lorenzo De Lauretis', 'pr', '100', 26, '2021-11-16 16:54:01');

-- --------------------------------------------------------

--
-- Struttura della tabella `valori_eventilungotermine`
--

CREATE TABLE `valori_eventilungotermine` (
  `id` int(11) NOT NULL,
  `id_valori` int(11) NOT NULL,
  `id_eventilungotermine` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dump dei dati per la tabella `valori_eventilungotermine`
--

INSERT INTO `valori_eventilungotermine` (`id`, `id_valori`, `id_eventilungotermine`) VALUES
(1, 236, 1),
(2, 230, 1),
(3, 224, 1),
(4, 218, 1),
(5, 212, 1),
(6, 239, 1),
(7, 233, 1),
(8, 227, 1),
(9, 221, 1),
(10, 215, 1),
(11, 271, 2),
(12, 265, 2),
(13, 259, 2),
(14, 253, 2),
(15, 247, 2),
(16, 270, 2),
(17, 264, 2),
(18, 258, 2),
(19, 252, 2),
(20, 246, 2);

--
-- Indici per le tabelle scaricate
--

--
-- Indici per le tabelle `eventilungotermine`
--
ALTER TABLE `eventilungotermine`
  ADD PRIMARY KEY (`id`);

--
-- Indici per le tabelle `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`id`);

--
-- Indici per le tabelle `range_valori`
--
ALTER TABLE `range_valori`
  ADD PRIMARY KEY (`id`);

--
-- Indici per le tabelle `remindermedicina`
--
ALTER TABLE `remindermedicina`
  ADD PRIMARY KEY (`id`);

--
-- Indici per le tabelle `remindermisura`
--
ALTER TABLE `remindermisura`
  ADD PRIMARY KEY (`id`);

--
-- Indici per le tabelle `terapie`
--
ALTER TABLE `terapie`
  ADD PRIMARY KEY (`id`);

--
-- Indici per le tabelle `tokennotifiche`
--
ALTER TABLE `tokennotifiche`
  ADD PRIMARY KEY (`id`);

--
-- Indici per le tabelle `valori`
--
ALTER TABLE `valori`
  ADD PRIMARY KEY (`id`);

--
-- Indici per le tabelle `valori_eventilungotermine`
--
ALTER TABLE `valori_eventilungotermine`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT per le tabelle scaricate
--

--
-- AUTO_INCREMENT per la tabella `eventilungotermine`
--
ALTER TABLE `eventilungotermine`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT per la tabella `feedback`
--
ALTER TABLE `feedback`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=500;

--
-- AUTO_INCREMENT per la tabella `range_valori`
--
ALTER TABLE `range_valori`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT per la tabella `remindermedicina`
--
ALTER TABLE `remindermedicina`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT per la tabella `remindermisura`
--
ALTER TABLE `remindermisura`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=233;

--
-- AUTO_INCREMENT per la tabella `terapie`
--
ALTER TABLE `terapie`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT per la tabella `tokennotifiche`
--
ALTER TABLE `tokennotifiche`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT per la tabella `valori`
--
ALTER TABLE `valori`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=272;

--
-- AUTO_INCREMENT per la tabella `valori_eventilungotermine`
--
ALTER TABLE `valori_eventilungotermine`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
