-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 16-Fev-2022 às 12:35
-- Versão do servidor: 10.4.21-MariaDB
-- versão do PHP: 8.0.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `sistema`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `events`
--

CREATE TABLE `events` (
  `id` int(11) NOT NULL,
  `title` varchar(90) NOT NULL,
  `meeting_title` varchar(60) NOT NULL,
  `description` text NOT NULL,
  `color` varchar(10) NOT NULL,
  `start` timestamp NULL DEFAULT NULL,
  `end` timestamp NULL DEFAULT NULL,
  `createAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `updateAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `FK_userID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `events`
--

INSERT INTO `events` (`id`, `title`, `meeting_title`, `description`, `color`, `start`, `end`, `createAt`, `updateAt`, `FK_userID`) VALUES
(34, 'Reunião Operacional Equipe - M', 'Reunião Operacional Equipe - M', 'Reunião quinzenal para demonstração de resultados.<br><br> Organizador: Erich Formiga', 'green', '2022-02-23 17:00:00', '2022-02-23 19:00:00', '2022-02-10 16:16:03', '2022-02-10 16:16:03', 12),
(50, 'Aula de ingles', 'Desenvolvimento', 'Inglês', 'green', '2022-02-09 14:00:00', '2022-02-09 15:00:00', '2022-02-10 16:16:03', '2022-02-10 16:16:03', 13),
(51, 'Aula de ingles', 'Desenvolvimento', 'Inglês', 'green', '2022-02-11 14:00:00', '2022-02-11 15:00:00', '2022-02-10 16:16:03', '2022-02-10 16:16:03', 13),
(52, 'Aula de ingles', 'Desenvolvimento', 'Inglês', 'green', '2022-02-16 14:00:00', '2022-02-16 15:00:00', '2022-02-10 16:16:03', '2022-02-10 16:16:03', 13),
(53, 'Aula de ingles', 'Desenvolvimento', 'Inglês', 'green', '2022-02-18 14:00:00', '2022-02-18 15:00:00', '2022-02-10 16:16:03', '2022-02-10 16:16:03', 13),
(54, 'Aula de ingles', 'Desenvolvimento', 'Inglês', 'green', '2022-02-23 14:00:00', '2022-02-23 15:00:00', '2022-02-10 16:16:03', '2022-02-10 16:16:03', 13),
(55, 'Aula de ingles', 'Desenvolvimento', 'Inglês', 'green', '2022-02-25 14:00:00', '2022-02-25 15:00:00', '2022-02-10 16:16:03', '2022-02-10 16:16:03', 13),
(56, 'Aula de ingles', 'Desenvolvimento', 'Inglês', 'green', '2022-03-02 14:00:00', '2022-03-02 15:00:00', '2022-02-10 16:16:03', '2022-02-10 16:16:03', 13),
(57, 'Aula de ingles', 'Desenvolvimento', 'Inglês', 'green', '2022-03-04 14:00:00', '2022-03-04 15:00:00', '2022-02-10 16:16:03', '2022-02-10 16:16:03', 13),
(58, 'Aula de ingles', 'Desenvolvimento', 'Inglês', 'green', '2022-03-08 14:00:00', '2022-03-08 15:00:00', '2022-02-10 16:16:03', '2022-02-10 16:16:03', 13),
(59, 'Aula de ingles', 'Desenvolvimento', 'Inglês', 'green', '2022-03-10 19:00:00', '2022-03-10 20:00:00', '2022-02-10 16:16:03', '2022-02-10 16:16:03', 13),
(60, 'Aula de ingles', 'Desenvolvimento', 'Inglês', 'green', '2022-03-15 14:00:00', '2022-03-15 15:00:00', '2022-02-10 16:16:03', '2022-02-10 16:16:03', 13),
(61, 'Aula de ingles', 'Desenvolvimento', 'Inglês', 'green', '2022-03-17 19:00:00', '2022-03-17 20:00:00', '2022-02-10 16:16:03', '2022-02-10 16:16:03', 13),
(62, 'Aula de ingles', 'Desenvolvimento', 'Inglês', 'green', '2022-03-23 11:00:00', '2022-03-23 12:00:00', '2022-02-10 16:16:03', '2022-02-10 16:16:03', 13),
(63, 'Aula de ingles', 'Desenvolvimento', 'Inglês', 'green', '2022-03-24 19:00:00', '2022-03-24 20:00:00', '2022-02-10 16:16:03', '2022-02-10 16:16:03', 13),
(64, 'Consultoria L6', 'Consultoria L6', 'Consultoria L6', 'green', '2022-02-14 11:00:00', '2022-02-14 19:30:00', '2022-02-10 16:16:03', '2022-02-10 16:16:03', 16),
(65, 'Consultoria L6', 'Consultoria L6', 'consultoria L6', 'green', '2022-02-21 11:00:00', '2022-02-21 19:30:00', '2022-02-10 16:16:03', '2022-02-10 16:16:03', 16),
(66, 'Consultoria L6', 'Consultoria L6', 'consultoria L6', 'green', '2022-02-28 11:00:00', '2022-02-28 19:30:00', '2022-02-10 16:16:03', '2022-02-10 16:16:03', 16),
(67, 'Reunião com Sisplan', 'Reunião com Sisplan', 'Reunião para levantamento de demandas dos setores', 'green', '2022-02-23 18:00:00', '2022-02-23 20:00:00', '2022-02-10 16:16:03', '2022-02-10 16:16:03', 16),
(68, 'Fotos Still Coleção Primavera 22', 'Desenvolvimento', 'Fotos Still Coleção Primavera 22', 'green', '2022-02-22 10:30:00', '2022-02-22 20:00:00', '2022-02-10 16:16:03', '2022-02-11 13:54:13', 13),
(74, 'Fotos Still Coleção Primavera 22', '', '', '', '2022-03-01 10:30:00', '2022-03-01 20:00:00', '2022-02-11 13:54:48', '2022-02-11 13:54:48', 13),
(75, 'Edna/Camila/Felipe', '', 'Reestruturação das Trocas ', '', '2022-02-16 17:00:00', '2022-02-16 19:00:00', '2022-02-15 12:20:23', '2022-02-15 12:20:23', 16);

-- --------------------------------------------------------

--
-- Estrutura da tabela `managers`
--

CREATE TABLE `managers` (
  `id` int(11) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `managers`
--

INSERT INTO `managers` (`id`, `email`, `password`) VALUES
(1, 'guilhermemjmiranda@gmail.com', '13092022'),
(2, 'teste@gmail.com', '12345678');

-- --------------------------------------------------------

--
-- Estrutura da tabela `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `lastname` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(30) NOT NULL,
  `funcao` varchar(30) DEFAULT NULL,
  `color` varchar(30) NOT NULL DEFAULT 'green'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `users`
--

INSERT INTO `users` (`id`, `name`, `lastname`, `email`, `password`, `funcao`, `color`) VALUES
(11, 'Guilherme', 'Maffei', 'guilherme09112001@gmail.com', '13092020', 'Estagi?rio em TI', '#5c80db'),
(12, 'Erich', 'Formiga', 'suporte@mjmiranda.com.br', '12345678', 'TECNOLOGIA', 'green'),
(13, 'Camila', 'Andrade', 'desenvolvimento@mjmiranda.com', 'camila135', 'Modelista', '#af94eb'),
(15, 'Camila', 'Caetano', 'comercial@mjmiranda.com.br', '91632463', 'Coordenadora comercial', 'green'),
(16, 'Edna', 'Vieira', 'financeiro@mjmiranda.com.br', 'havefun2022', 'Financeiro', '#d43b7d'),
(17, 'Filipe', 'Martins', 'qualidade.tecido@mjmiranda.com.br', 'filipe135', 'Coordenador de Qualidade', 'green'),
(18, 'Thaynara', 'Ramos', 'atendimento@mjmiranda.com.br', '12345678', 'Comercial', 'green');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `events`
--
ALTER TABLE `events`
  ADD PRIMARY KEY (`id`),
  ADD KEY `events_ibfk_1` (`FK_userID`);

--
-- Índices para tabela `managers`
--
ALTER TABLE `managers`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `events`
--
ALTER TABLE `events`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=76;

--
-- AUTO_INCREMENT de tabela `managers`
--
ALTER TABLE `managers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de tabela `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- Restrições para despejos de tabelas
--

--
-- Limitadores para a tabela `events`
--
ALTER TABLE `events`
  ADD CONSTRAINT `events_ibfk_1` FOREIGN KEY (`FK_userID`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
