-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Хост: localhost:8889
-- Время создания: Апр 17 2018 г., 14:41
-- Версия сервера: 5.6.38
-- Версия PHP: 7.2.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `tested`
--
CREATE DATABASE IF NOT EXISTS `tested` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `tested`;

-- --------------------------------------------------------

--
-- Структура таблицы `bonus`
--

CREATE TABLE `bonus` (
  `id` int(11) NOT NULL,
  `calls` int(11) NOT NULL,
  `cost` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `bonus`
--

INSERT INTO `bonus` (`id`, `calls`, `cost`) VALUES
(1, 100, 100),
(2, 200, 200),
(3, 300, 300);

-- --------------------------------------------------------

--
-- Структура таблицы `manager`
--

CREATE TABLE `manager` (
  `id` int(11) NOT NULL,
  `fio` varchar(100) NOT NULL,
  `oklad` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `manager`
--

INSERT INTO `manager` (`id`, `fio`, `oklad`) VALUES
(1, 'Хельга Браун', 20000),
(2, 'Барак Обама', 30000),
(3, 'Денис Козлов', 40000);

-- --------------------------------------------------------

--
-- Структура таблицы `stat`
--

CREATE TABLE `stat` (
  `id` int(11) NOT NULL,
  `manager_id` int(11) NOT NULL,
  `date` date NOT NULL,
  `calls` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `stat`
--

INSERT INTO `stat` (`id`, `manager_id`, `date`, `calls`) VALUES
(1, 1, '2015-01-01', 10),
(2, 1, '2015-01-02', 10),
(3, 1, '2015-01-03', 10),
(4, 1, '2015-01-04', 10),
(5, 1, '2015-01-05', 10),
(6, 1, '2015-01-02', 10),
(7, 1, '2015-01-03', 10),
(8, 1, '2015-01-04', 10),
(9, 1, '2015-01-05', 10),
(10, 1, '2015-01-06', NULL),
(11, 1, '2015-01-07', NULL),
(12, 1, '2015-01-08', 10),
(13, 1, '2015-01-09', 20),
(14, 1, '2015-01-10', 30),
(15, 1, '2015-01-11', 10),
(16, 1, '2015-01-12', 20),
(17, 1, '2015-01-13', NULL),
(18, 1, '2015-01-14', NULL),
(19, 2, '2015-01-01', 10),
(20, 2, '2015-01-02', 20),
(21, 2, '2015-01-03', 10),
(22, 2, '2015-01-04', 30),
(23, 2, '2015-01-05', 10),
(24, 2, '2015-01-06', NULL),
(25, 2, '2015-01-07', NULL),
(26, 2, '2015-01-08', 10),
(27, 2, '2015-01-09', NULL),
(28, 2, '2015-01-10', NULL),
(29, 2, '2015-01-11', NULL),
(30, 2, '2015-01-12', NULL),
(31, 2, '2015-01-13', NULL),
(32, 2, '2015-01-14', NULL),
(33, 3, '2015-01-01', 10),
(34, 3, '2015-01-02', 10),
(35, 3, '2015-01-03', 10),
(36, 3, '2015-01-04', 30),
(37, 3, '2015-01-05', 10),
(38, 3, '2015-01-06', NULL),
(39, 3, '2015-01-07', NULL),
(40, 3, '2015-01-08', 10),
(41, 3, '2015-01-09', 10),
(42, 3, '2015-01-10', 30),
(43, 3, '2015-01-11', 10),
(44, 3, '2015-01-12', 20),
(45, 3, '2015-01-13', NULL),
(46, 3, '2015-01-14', NULL);

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `bonus`
--
ALTER TABLE `bonus`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `manager`
--
ALTER TABLE `manager`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `stat`
--
ALTER TABLE `stat`
  ADD PRIMARY KEY (`id`),
  ADD KEY `stat_fk0` (`manager_id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `bonus`
--
ALTER TABLE `bonus`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблицы `manager`
--
ALTER TABLE `manager`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблицы `stat`
--
ALTER TABLE `stat`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `stat`
--
ALTER TABLE `stat`
  ADD CONSTRAINT `stat_fk0` FOREIGN KEY (`manager_id`) REFERENCES `manager` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
