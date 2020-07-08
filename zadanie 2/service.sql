-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Июл 09 2020 г., 01:44
-- Версия сервера: 10.3.13-MariaDB-log
-- Версия PHP: 7.1.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `hospital`
--

-- --------------------------------------------------------

--
-- Структура таблицы `service`
--

CREATE TABLE `service` (
  `id` int(11) NOT NULL,
  `kod_patient` int(11) NOT NULL,
  `kod_hosp` int(11) NOT NULL,
  `date_service` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `service`
--

INSERT INTO `service` (`id`, `kod_patient`, `kod_hosp`, `date_service`) VALUES
(1, 1, 2, '2020-01-01 00:01:00'),
(2, 1, 2, '2020-01-01 00:02:00'),
(3, 1, 2, '2020-01-01 00:03:00'),
(4, 2, 2, '2020-01-01 00:02:00'),
(5, 2, 2, '2020-01-01 00:15:00'),
(6, 1, 2, '2020-01-01 00:05:00'),
(7, 2, 2, '2020-01-01 00:09:00'),
(8, 5, 2, '2020-01-01 00:06:00'),
(9, 4, 2, '2020-01-01 00:15:00'),
(10, 4, 2, '2020-01-01 00:12:00'),
(11, 5, 2, '2020-01-01 00:15:30'),
(12, 1, 1, '2020-01-01 00:03:00'),
(13, 5, 3, '2020-01-01 00:08:00'),
(14, 5, 1, '2020-01-01 00:15:30');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `service`
--
ALTER TABLE `service`
  ADD PRIMARY KEY (`id`),
  ADD KEY `kod_hosp` (`kod_hosp`),
  ADD KEY `kod_patient` (`kod_patient`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `service`
--
ALTER TABLE `service`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `service`
--
ALTER TABLE `service`
  ADD CONSTRAINT `service_ibfk_1` FOREIGN KEY (`kod_hosp`) REFERENCES `hosp` (`kod`),
  ADD CONSTRAINT `service_ibfk_2` FOREIGN KEY (`kod_patient`) REFERENCES `patient` (`kod`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
