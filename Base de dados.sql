-- phpMyAdmin SQL Dump
-- version 4.8.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Tempo de geração: 20/07/2022 às 00:53
-- Versão do servidor: 10.1.34-MariaDB
-- Versão do PHP: 7.2.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `avaliacao-sql-titan-software`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `estoque`
--

CREATE TABLE `estoque` (
  `cod_prod` int(8) NOT NULL,
  `loj_prod` int(8) NOT NULL,
  `qtd_prod` decimal(15,3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Fazendo dump de dados para tabela `estoque`
--

INSERT INTO `estoque` (`cod_prod`, `loj_prod`, `qtd_prod`) VALUES
(171, 2, '300.000'),
(182, 1, '150.000'),
(200, 1, '60.000'),
(205, 3, '50.000'),
(304, 3, '45.000'),
(414, 3, '46.890'),
(567, 2, '500.000');

-- --------------------------------------------------------

--
-- Estrutura para tabela `lojas`
--

CREATE TABLE `lojas` (
  `loj_prod` int(8) NOT NULL,
  `desc_loj` char(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Fazendo dump de dados para tabela `lojas`
--

INSERT INTO `lojas` (`loj_prod`, `desc_loj`) VALUES
(1, 'LOJA 01'),
(2, 'LOJA 02'),
(3, 'LOJA 03');

-- --------------------------------------------------------

--
-- Estrutura para tabela `produtos`
--

CREATE TABLE `produtos` (
  `cod_prod` int(8) NOT NULL,
  `loj_prod` int(8) NOT NULL,
  `desc_prod` char(40) DEFAULT NULL,
  `dt_inclu_prod` date DEFAULT NULL,
  `preco_prod` decimal(8,3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Fazendo dump de dados para tabela `produtos`
--

INSERT INTO `produtos` (`cod_prod`, `loj_prod`, `desc_prod`, `dt_inclu_prod`, `preco_prod`) VALUES
(170, 2, 'LEITE CONDESADO MOCOCA', '2010-12-30', '95.400'),
(171, 2, 'CREME DE LEITE ITALAC', '2011-10-25', '4.780'),
(182, 1, 'AÇUCAR CRISTAL', '2012-05-01', '5.340'),
(200, 1, 'MARGARINA', '2012-10-03', '6.890'),
(205, 3, 'LEITE EM PÓ', '2011-10-03', '7.460'),
(254, 2, 'FEIJÃO CARIOCA', '2009-03-18', '9.780'),
(278, 3, 'ARROZ PARBOLIZADO', '2009-08-27', '6.190'),
(426, 1, 'CAVIAR', '2010-01-19', '130.570'),
(489, 3, 'FILÉ MIGNON', '2010-11-05', '114.780');

--
-- Índices de tabelas apagadas
--

--
-- Índices de tabela `estoque`
--
ALTER TABLE `estoque`
  ADD PRIMARY KEY (`cod_prod`),
  ADD KEY `Cód_prod` (`cod_prod`,`loj_prod`);

--
-- Índices de tabela `lojas`
--
ALTER TABLE `lojas`
  ADD PRIMARY KEY (`loj_prod`);

--
-- Índices de tabela `produtos`
--
ALTER TABLE `produtos`
  ADD PRIMARY KEY (`cod_prod`),
  ADD KEY `cod_prod` (`cod_prod`,`loj_prod`);

--
-- AUTO_INCREMENT de tabelas apagadas
--

--
-- AUTO_INCREMENT de tabela `estoque`
--
ALTER TABLE `estoque`
  MODIFY `cod_prod` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=568;

--
-- AUTO_INCREMENT de tabela `lojas`
--
ALTER TABLE `lojas`
  MODIFY `loj_prod` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de tabela `produtos`
--
ALTER TABLE `produtos`
  MODIFY `cod_prod` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=490;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
