-- phpMyAdmin SQL Dump
-- version 4.2.8.1
-- http://www.phpmyadmin.net
--
-- Хост: localhost
-- Время создания: Окт 29 2014 г., 00:21
-- Версия сервера: 5.5.39-1-log
-- Версия PHP: 5.6.2-1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- База данных: `pool`
--

-- --------------------------------------------------------

--
-- Структура таблицы `address`
--

CREATE TABLE IF NOT EXISTS `address` (
`id` int(11) NOT NULL,
  `vtc` varchar(128) NOT NULL,
  `type` varchar(128) NOT NULL,
  `address` varchar(128) NOT NULL,
  `balance` varchar(128) NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `buy_log`
--

CREATE TABLE IF NOT EXISTS `buy_log` (
`id` int(11) NOT NULL,
  `sid` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `max` varchar(128) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `cryptsy`
--

CREATE TABLE IF NOT EXISTS `cryptsy` (
`id` int(11) NOT NULL,
  `type` varchar(128) NOT NULL,
  `coins` varchar(128) NOT NULL,
  `order_id` varchar(128) DEFAULT NULL,
  `btc` varchar(128) DEFAULT NULL,
  `vtc` varchar(128) DEFAULT '0',
  `status` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `cryptsy_log`
--

CREATE TABLE IF NOT EXISTS `cryptsy_log` (
`id` int(11) NOT NULL,
  `sid` int(11) NOT NULL,
  `uid` int(11) NOT NULL,
  `coins` varchar(128) NOT NULL,
  `txid` varchar(128) DEFAULT NULL,
  `vtc` varchar(128) DEFAULT NULL,
  `stxid` varchar(256) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `income`
--

CREATE TABLE IF NOT EXISTS `income` (
`id` int(11) NOT NULL,
  `address` varchar(128) NOT NULL,
  `type` varchar(128) NOT NULL,
  `txid` varchar(256) NOT NULL,
  `balance` varchar(128) NOT NULL,
  `time` varchar(128) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `address`
--
ALTER TABLE `address`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `address` (`address`), ADD KEY `vtc` (`vtc`,`type`);

--
-- Индексы таблицы `buy_log`
--
ALTER TABLE `buy_log`
 ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `cryptsy`
--
ALTER TABLE `cryptsy`
 ADD PRIMARY KEY (`id`), ADD KEY `type` (`type`);

--
-- Индексы таблицы `cryptsy_log`
--
ALTER TABLE `cryptsy_log`
 ADD PRIMARY KEY (`id`), ADD KEY `sid` (`sid`,`uid`,`status`);

--
-- Индексы таблицы `income`
--
ALTER TABLE `income`
 ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `address`
--
ALTER TABLE `address`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=19;
--
-- AUTO_INCREMENT для таблицы `buy_log`
--
ALTER TABLE `buy_log`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT для таблицы `cryptsy`
--
ALTER TABLE `cryptsy`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT для таблицы `cryptsy_log`
--
ALTER TABLE `cryptsy_log`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT для таблицы `income`
--
ALTER TABLE `income`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
