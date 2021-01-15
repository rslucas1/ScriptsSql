-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 16-Dez-2020 às 18:56
-- Versão do servidor: 10.1.36-MariaDB
-- versão do PHP: 7.2.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `portal`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `agendamentopedido`
--

CREATE TABLE `agendamentopedido` (
  `nuPed` int(11) NOT NULL,
  `dt_agendamento` date DEFAULT NULL,
  `observacao` varchar(2000) DEFAULT NULL,
  `usuario` varchar(60) DEFAULT NULL,
  `dt_alteracao` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `agendamentopedido`
--

INSERT INTO `agendamentopedido` (`nuPed`, `dt_agendamento`, `observacao`, `usuario`, `dt_alteracao`) VALUES
(137, '2020-12-08', 'Teste Natalia Brizzi <--- alterado por NATALIA BRIZZI em 2020-12-02*******', 'NATALIA BRIZZI', '2020-12-02'),
(150, '2020-12-08', 'AGENDADO <--- alterado por Alex Macio em 2020-12-02*******', 'Alex Macio', '2020-12-02'),
(152, '2020-12-08', 'AGENDADO <--- alterado por Alex Macio em 2020-12-02*******', 'Alex Macio', '2020-12-02'),
(157, '2020-12-08', 'AGENDADO <--- alterado por Alex Macio em 2020-12-02*******', 'Alex Macio', '2020-12-02'),
(159, '2020-12-08', 'AGENDADO <--- alterado por Alex Macio em 2020-12-02*******', 'Alex Macio', '2020-12-02'),
(160, '2020-12-08', 'AGENDADO <--- alterado por Alex Macio em 2020-12-02*******', 'Alex Macio', '2020-12-02'),
(161, '2020-12-08', 'AGENDADO <--- alterado por Alex Macio em 2020-12-02*******', 'Alex Macio', '2020-12-02'),
(162, '2020-12-08', 'AGENDADO <--- alterado por Alex Macio em 2020-12-02*******', 'Alex Macio', '2020-12-02'),
(163, '2020-12-08', 'AGENDADO <--- alterado por Alex Macio em 2020-12-02*******', 'Alex Macio', '2020-12-02'),
(286, '2020-12-22', 'AGENDADO <--- alterado por Alex Macio em 2020-12-02*******', 'Alex Macio', '2020-12-02'),
(288, '2020-12-08', 'AGENDADO <--- alterado por Alex Macio em 2020-12-02*******', 'Alex Macio', '2020-12-02'),
(289, '2020-12-29', 'AGENDADO <--- alterado por Alex Macio em 2020-12-02*******', 'Alex Macio', '2020-12-02'),
(292, '2020-12-15', 'AGENDADO <--- alterado por Alex Macio em 2020-12-02*******', 'Alex Macio', '2020-12-02'),
(293, '2020-12-29', 'AGENDADO <--- alterado por Alex Macio em 2020-12-02*******', 'Alex Macio', '2020-12-02'),
(294, '2020-12-29', 'AGENDADO <--- alterado por Alex Macio em 2020-12-02*******', 'Alex Macio', '2020-12-02'),
(295, '2020-12-08', 'AGENDADO <--- alterado por Alex Macio em 2020-12-02*******', 'Alex Macio', '2020-12-02'),
(296, '2020-12-08', 'agendado <--- alterado por Alex Macio em 2020-12-03*******', 'Alex Macio', '2020-12-03'),
(297, '2020-12-15', 'AGENDADO <--- alterado por Alex Macio em 2020-12-02*******', 'Alex Macio', '2020-12-02'),
(298, '2020-12-29', 'AGENDADO <--- alterado por Alex Macio em 2020-12-02*******', 'Alex Macio', '2020-12-02'),
(299, '2020-12-22', 'AGENDADO <--- alterado por Alex Macio em 2020-12-02*******', 'Alex Macio', '2020-12-02'),
(300, '2021-01-11', 'AGENDADO <--- alterado por Alex Macio em 2020-12-02*******', 'Alex Macio', '2020-12-02'),
(302, '2020-12-08', 'AGENDADO <--- alterado por Alex Macio em 2020-12-02*******', 'Alex Macio', '2020-12-02'),
(303, '2020-12-22', 'AGENDADO <--- alterado por Alex Macio em 2020-12-02*******', 'Alex Macio', '2020-12-02'),
(304, '2020-12-15', 'AGENDADO <--- alterado por Alex Macio em 2020-12-02*******', 'Alex Macio', '2020-12-02'),
(306, '2020-12-08', 'AGENDADO <--- alterado por Alex Macio em 2020-12-02*******', 'Alex Macio', '2020-12-02'),
(307, '2020-12-15', 'AGENDADO <--- alterado por Alex Macio em 2020-12-02*******', 'Alex Macio', '2020-12-02'),
(308, '2020-12-22', 'AGENDADO <--- alterado por Alex Macio em 2020-12-02*******', 'Alex Macio', '2020-12-02'),
(309, '2020-12-29', 'AGENDADO <--- alterado por Alex Macio em 2020-12-02*******', 'Alex Macio', '2020-12-02'),
(311, '2020-12-15', 'AGENDADO <--- alterado por Alex Macio em 2020-12-02*******', 'Alex Macio', '2020-12-02'),
(312, '2020-12-30', 'AGENDADO <--- alterado por Alex Macio em 2020-12-02*******', 'Alex Macio', '2020-12-02'),
(313, '2020-12-29', 'AGENDADO <--- alterado por Alex Macio em 2020-12-02*******', 'Alex Macio', '2020-12-02'),
(314, '2020-12-22', 'AGENDADO <--- alterado por Alex Macio em 2020-12-02*******', 'Alex Macio', '2020-12-02'),
(315, '2020-12-08', 'AGENDADO <--- alterado por Alex Macio em 2020-12-02*******', 'Alex Macio', '2020-12-02'),
(316, '2021-01-11', 'AGENDADO <--- alterado por Alex Macio em 2020-12-02*******', 'Alex Macio', '2020-12-02'),
(319, '2020-12-15', 'AGENDADO <--- alterado por Alex Macio em 2020-12-02*******', 'Alex Macio', '2020-12-02'),
(321, '2020-12-29', 'AGENDADO <--- alterado por Alex Macio em 2020-12-02*******', 'Alex Macio', '2020-12-02'),
(324, '2020-12-08', 'AGENDADO <--- alterado por Alex Macio em 2020-12-02*******', 'Alex Macio', '2020-12-02'),
(325, '2020-12-15', 'AGENDADO <--- alterado por Alex Macio em 2020-12-02*******', 'Alex Macio', '2020-12-02'),
(326, '2020-12-08', 'AGENDADO <--- alterado por Alex Macio em 2020-12-02*******', 'Alex Macio', '2020-12-02'),
(327, '2020-12-22', 'AGENDADO <--- alterado por Alex Macio em 2020-12-02*******', 'Alex Macio', '2020-12-02'),
(329, '2020-12-29', 'AGENDADO <--- alterado por Alex Macio em 2020-12-02*******', 'Alex Macio', '2020-12-02'),
(330, '2020-12-08', 'AGENDADO <--- alterado por Alex Macio em 2020-12-02*******', 'Alex Macio', '2020-12-02'),
(331, '2021-01-11', 'AGENDADO <--- alterado por Alex Macio em 2020-12-02*******', 'Alex Macio', '2020-12-02'),
(332, '2020-12-15', 'AGENDADO <--- alterado por Alex Macio em 2020-12-02*******', 'Alex Macio', '2020-12-02'),
(333, '2020-12-29', 'AGENDADO <--- alterado por Alex Macio em 2020-12-02*******', 'Alex Macio', '2020-12-02'),
(334, '2020-12-22', 'AGENDADO <--- alterado por Alex Macio em 2020-12-02*******', 'Alex Macio', '2020-12-02'),
(335, '2021-01-11', 'AGENDADO <--- alterado por Alex Macio em 2020-12-02*******', 'Alex Macio', '2020-12-02'),
(337, '2020-12-08', 'AGENDADO <--- alterado por Alex Macio em 2020-12-02*******', 'Alex Macio', '2020-12-02'),
(338, '2020-12-22', 'AGENDADO <--- alterado por Alex Macio em 2020-12-02*******', 'Alex Macio', '2020-12-02'),
(339, '2020-12-29', 'AGENDADO <--- alterado por Alex Macio em 2020-12-02*******', 'Alex Macio', '2020-12-02'),
(342, '2021-01-11', 'AGENDADO <--- alterado por Alex Macio em 2020-12-02*******', 'Alex Macio', '2020-12-02'),
(343, '2020-12-15', 'AGENDADO <--- alterado por Alex Macio em 2020-12-02*******', 'Alex Macio', '2020-12-02'),
(344, '2020-12-08', 'AGENDADO <--- alterado por Alex Macio em 2020-12-02*******', 'Alex Macio', '2020-12-02'),
(345, '2020-12-22', 'AGENDADO <--- alterado por Alex Macio em 2020-12-02*******', 'Alex Macio', '2020-12-02'),
(346, '2020-12-29', 'AGENDADO <--- alterado por Alex Macio em 2020-12-02*******', 'Alex Macio', '2020-12-02'),
(353, '2020-12-08', 'AGENDADO <--- alterado por Alex Macio em 2020-12-02*******', 'Alex Macio', '2020-12-02'),
(354, '2020-12-15', 'AGENDADO <--- alterado por Alex Macio em 2020-12-02*******', 'Alex Macio', '2020-12-02'),
(355, '2020-12-29', 'AGENDADO <--- alterado por Alex Macio em 2020-12-02*******', 'Alex Macio', '2020-12-02'),
(358, '2020-12-22', 'AGENDADO <--- alterado por Alex Macio em 2020-12-02*******', 'Alex Macio', '2020-12-02'),
(359, '2021-01-11', 'AGENDADO <--- alterado por Alex Macio em 2020-12-02*******', 'Alex Macio', '2020-12-02'),
(360, '2021-01-11', 'AGENDADO <--- alterado por Alex Macio em 2020-12-02*******', 'Alex Macio', '2020-12-02'),
(361, '2020-12-08', 'AGENDADO <--- alterado por Alex Macio em 2020-12-02*******', 'Alex Macio', '2020-12-02'),
(363, '2021-01-11', 'AGENDADO <--- alterado por Alex Macio em 2020-12-02*******', 'Alex Macio', '2020-12-02'),
(365, '2021-01-11', 'AGENDADO <--- alterado por Alex Macio em 2020-12-02*******', 'Alex Macio', '2020-12-02'),
(373, '2020-12-22', 'AGENDADO <--- alterado por Alex Macio em 2020-12-02*******', 'Alex Macio', '2020-12-02'),
(374, '2020-12-30', 'AGENDADO <--- alterado por Alex Macio em 2020-12-02*******', 'Alex Macio', '2020-12-02'),
(382, '2020-12-08', 'agendado <--- alterado por Alex Macio em 2020-12-03*******', 'Alex Macio', '2020-12-03'),
(386, '2020-12-08', 'agendado <--- alterado por Alex Macio em 2020-12-03*******', 'Alex Macio', '2020-12-03'),
(401, '2020-12-08', 'agendado <--- alterado por Alex Macio em 2020-12-03*******', 'Alex Macio', '2020-12-03'),
(961787, '2020-12-04', 'AGENDADO <--- alterado por Alex Macio em 2020-12-02*******', 'Alex Macio', '2020-12-02'),
(961788, '2020-12-04', 'AGENDADO <--- alterado por Alex Macio em 2020-12-02*******', 'Alex Macio', '2020-12-02'),
(961808, '2020-12-04', 'AGENDADO <--- alterado por Alex Macio em 2020-12-02*******', 'Alex Macio', '2020-12-02'),
(961843, '2020-12-08', 'AGENDADO <--- alterado por Alex Macio em 2020-12-02*******', 'Alex Macio', '2020-12-02'),
(961844, '2020-12-09', 'AGENDADO <--- alterado por Alex Macio em 2020-12-02*******', 'Alex Macio', '2020-12-02'),
(961845, '2020-12-10', 'AGENDADO <--- alterado por Alex Macio em 2020-12-02*******', 'Alex Macio', '2020-12-02'),
(961846, '2020-12-08', 'AGENDADO <--- alterado por Alex Macio em 2020-12-02*******', 'Alex Macio', '2020-12-02'),
(961847, '2020-12-11', 'AGENDADO <--- alterado por Alex Macio em 2020-12-02*******', 'Alex Macio', '2020-12-02'),
(961848, '2020-12-10', 'AGENDADO <--- alterado por Alex Macio em 2020-12-02*******', 'Alex Macio', '2020-12-02'),
(961849, '2020-12-10', 'AGENDADO <--- alterado por Alex Macio em 2020-12-02*******', 'Alex Macio', '2020-12-02'),
(961853, '2020-12-09', 'AGENDADO <--- alterado por Alex Macio em 2020-12-02*******', 'Alex Macio', '2020-12-02'),
(961855, '2020-12-11', 'AGENDADO <--- alterado por Alex Macio em 2020-12-02*******', 'Alex Macio', '2020-12-02'),
(961856, '2020-12-09', 'AGENDADO <--- alterado por Alex Macio em 2020-12-02*******', 'Alex Macio', '2020-12-02'),
(961857, '2020-12-10', 'AGENDADO <--- alterado por Alex Macio em 2020-12-02*******', 'Alex Macio', '2020-12-02'),
(961858, '2020-12-09', 'AGENDADO <--- alterado por Alex Macio em 2020-12-02*******', 'Alex Macio', '2020-12-02'),
(961859, '2020-12-08', 'AGENDADO <--- alterado por Alex Macio em 2020-12-02*******', 'Alex Macio', '2020-12-02'),
(961860, '2020-12-10', 'AGENDADO <--- alterado por Alex Macio em 2020-12-02*******', 'Alex Macio', '2020-12-02'),
(961861, '2020-12-11', 'AGENDADO <--- alterado por Alex Macio em 2020-12-02*******', 'Alex Macio', '2020-12-02'),
(961862, '2020-12-09', 'AGENDADO <--- alterado por Alex Macio em 2020-12-02*******', 'Alex Macio', '2020-12-02'),
(961864, '2020-12-07', 'AGENDAMENTO <--- alterado por Alex Macio em 2020-12-02*******', 'Alex Macio', '2020-12-02'),
(961865, '2020-12-11', 'AGENDADO <--- alterado por Alex Macio em 2020-12-02*******', 'Alex Macio', '2020-12-02'),
(961866, '2020-12-04', 'AGENDAMENTO <--- alterado por Alex Macio em 2020-12-02*******', 'Alex Macio', '2020-12-02'),
(961872, '2020-12-15', 'agendado <--- alterado por Alex Macio em 2020-12-03*******', 'Alex Macio', '2020-12-03'),
(961877, '2020-12-15', 'agendado <--- alterado por Alex Macio em 2020-12-03*******', 'Alex Macio', '2020-12-03'),
(961886, '2020-12-15', 'agendado <--- alterado por Alex Macio em 2020-12-03*******', 'Alex Macio', '2020-12-03'),
(961892, '2020-12-15', 'agendado <--- alterado por Alex Macio em 2020-12-03*******', 'Alex Macio', '2020-12-03');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `agendamentopedido`
--
ALTER TABLE `agendamentopedido`
  ADD PRIMARY KEY (`nuPed`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
