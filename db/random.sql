-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Янв 25 2020 г., 14:59
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
-- База данных: `random`
--

-- --------------------------------------------------------

--
-- Структура таблицы `comments`
--

CREATE TABLE `comments` (
  `id` int(11) NOT NULL,
  `id_films` int(11) NOT NULL,
  `users_name` varchar(128) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `comments_text` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `comments`
--

INSERT INTO `comments` (`id`, `id_films`, `users_name`, `comments_text`) VALUES
(1, 1, 'Крутой фильм, советую посмотреть', NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `films`
--

CREATE TABLE `films` (
  `id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `year` int(11) NOT NULL,
  `description` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `genre` int(11) NOT NULL,
  `country` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `duration` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `films`
--

INSERT INTO `films` (`id`, `title`, `year`, `description`, `genre`, `country`, `duration`) VALUES
(1, 'Побег из Щоушенка', 1994, 'культовый[1] американский художественный фильм-драма 1994 года, снятый режиссёром Фрэнком Дарабонтом по повести С. Кинга «Рита Хейуорт и спасение из Шоушенка» о банкире, который в результате обвинения в гибели своей жены и её любовника оказывается за решёткой и решает осуществить побег.', 2, 'сша', '142 мин.'),
(2, 'А в России опять окаянные дни', 1990, NULL, 2, 'ссср', '133 мин'),
(3, 'А вдруг это любовь?', 2007, NULL, 1, 'франция', '90 мин'),
(4, 'А вот и моя крошка', 1994, NULL, 2, 'сша', '96 мин'),
(5, 'А вот и Полли', 2004, NULL, 1, 'сша', '90 мин'),
(6, 'А вы любили когда-нибудь?', 1973, NULL, 1, 'ссср', '84 мин'),
(7, 'А если это любовь?', 1961, NULL, 3, 'ссср', '102 мин'),
(8, 'А зори здесь тихие...', 1972, NULL, 2, 'ссср', '188 мин'),
(9, 'А к нам цирк приехал', 1978, NULL, 2, 'ссср', '23 мин'),
(10, 'А как же Боб?', 1991, NULL, 1, 'сша', '97 мин'),
(11, 'А кто-то все видит', 1994, NULL, 4, 'сша', '88 мин'),
(12, 'А мне так нравится', 1994, NULL, 1, 'сша', '106 мин'),
(13, 'А потом оглянулся...', 1980, NULL, 2, 'ссср', '31 мин'),
(14, 'А поутру они проснулись...', 2003, NULL, 1, 'россия', '90 мин'),
(15, 'А причем здесь любовь', 1993, NULL, 2, 'сша', '118 мин'),
(16, 'А прошлое кажется сном', 1988, NULL, 5, 'ссср', '68 мин'),
(17, 'А спать с чужой женой хорошо?', 1992, NULL, 1, 'россия', '88 мин'),
(18, 'А теперь кое-что совсем другое', 1971, NULL, 1, 'великобритания', '88 мин'),
(19, 'А теперь не смотри', 1973, NULL, 6, 'великобритания', '110 мин'),
(20, 'А теперь, дамы и господа...', 2002, NULL, 3, 'франция', '133 мин'),
(21, 'А у вас который час?', 2001, NULL, 2, 'тайвань', '116 мин'),
(22, 'А у нас была тишина', 1977, NULL, 2, 'ссср', '88 мин'),
(23, 'А человек играет на трубе', 1970, NULL, 7, 'ссср', '65 мин'),
(24, 'А чой-то ты во фраке?', 1993, NULL, 1, 'россия', '71 мин'),
(25, 'А это случилось в Виши', 1989, NULL, 2, 'ссср', '127 мин'),
(26, 'А. Чехов. Сценки', 1973, NULL, 1, 'ссср', '41 мин'),
(27, 'Абай', 1995, NULL, 2, 'казахстан', '139 мин'),
(28, 'Абба: фильм', 1977, NULL, 7, 'австралия', '95 мин'),
(29, 'Абдулладжан, или Посвящается Стивену Спилбергу', 1991, NULL, 1, 'ссср', '89 мин'),
(30, 'Абитуриентка', 1973, NULL, 2, 'ссср', '80 мин'),
(31, 'Абориген', 1987, NULL, 2, 'ссср', '132 мин'),
(32, 'Абраксас, хранитель вселенной', 1992, NULL, 8, 'канада', '87 мин'),
(33, 'Абрафакс под пиратским флагом', 2001, NULL, 9, 'германия', '80 мин'),
(34, 'Абрек Заур', 1926, NULL, 2, 'ссср', '85 мин'),
(35, 'Абсолютная агрессия', 1996, NULL, 8, 'ссср', '88 мин'),
(36, 'Абсолютная власть', 1996, NULL, 4, 'сша', '122 мин'),
(37, 'Абсолютная реальность', 1997, NULL, 8, 'сша', '97 мин'),
(38, 'Абсолютная сила', 1996, NULL, 8, 'сша', '93 мин'),
(39, 'Абсурдистан', 2008, NULL, 1, 'германия', '88 мин'),
(40, 'Абу Райхан Беруни', 1974, NULL, 10, 'сша', '151 мин'),
(41, 'Абулхаир-Хан', 1993, NULL, 2, 'казахстан', '97 мин'),
(42, 'Авалон', 2001, NULL, 8, 'япония', '106 мин'),
(43, 'Авалон', 1990, NULL, 1, 'сша', '126 мин'),
(44, 'Авалон: подводная миссия', 1999, NULL, 8, 'сша', '95 мин'),
(45, 'Авансцена', 2000, NULL, 3, 'сша', '114 мин'),
(46, 'Аванти!', 1972, NULL, 1, 'италия', '144 мин'),
(47, 'Авантюра', 1995, NULL, 1, 'россия', '81 мин'),
(48, 'Авантюристы', 1984, NULL, 11, 'франция', '104 мин'),
(49, 'Авария', 1974, NULL, 4, 'ссср', '139 мин'),
(50, 'Авария', 1965, NULL, 4, 'ссср', '98 мин'),
(51, 'Авария', 1989, NULL, 4, 'ссср', '87 мин'),
(52, 'Авария', 1996, NULL, 4, 'сша', '93 мин'),
(53, 'Авария - дочь мента', 1989, NULL, 2, 'ссср', '99 мин'),
(54, 'Аватар', 2009, NULL, 11, 'сша', '162 мин'),
(55, 'Август', 1996, NULL, 2, 'великобритания', '92 мин'),
(56, 'Август', 1978, NULL, 2, 'ссср', '75 мин'),
(57, 'Август Раш', 2007, NULL, 2, 'сша', '113 мин'),
(58, 'Августовская рапсодия', 1991, NULL, 2, 'япония', '94 мин'),
(59, 'Августовские киты', 1987, NULL, 2, 'сша', '87 мин'),
(60, 'Авдотья Павловна', 1966, NULL, 2, 'ссср', '84 мин'),
(61, 'Аве Мария', 1999, NULL, 2, 'украина', '96 мин'),
(62, 'Аве Цезарь', 1993, NULL, 1, 'сша', '97 мин'),
(63, 'Аветик', 1992, NULL, 2, 'армения', '100 мин'),
(64, 'Авиатор', 2004, NULL, 2, 'германия', '170 мин'),
(65, 'Авиатор', 1984, NULL, 11, 'сша', '101 мин'),
(66, 'Авиценна', 1956, NULL, 10, 'ссср', '92 мин'),
(68, 'Авраам', 1993, NULL, 12, 'германия', '149 мин'),
(69, 'Аврора', 2006, NULL, 2, 'украина', '112 мин'),
(70, 'Аврора: операция перехват', 1994, NULL, 11, 'сша', '90 мин'),
(71, 'Австралия', 2008, NULL, 13, 'великобритания', '159 мин'),
(72, 'Австрийское поле', 1991, NULL, 2, 'россия', '89 мин'),
(73, 'Автобусная остановка', 1956, NULL, 1, 'сша', '94 мин'),
(74, 'Автокатастрофа', 1996, NULL, 4, 'канада', '100 мин'),
(75, 'Автоматик', 1994, NULL, 11, 'сша', '86 мин'),
(76, 'Автомобиль на крыше', 1980, NULL, 1, 'ссср', '76 мин'),
(77, 'Автомобиль, скрипка и собака Клякса', 1974, NULL, 1, 'ссср', '101 мин'),
(78, 'Автомойка', 1976, NULL, 1, 'сша', '97 мин'),
(79, 'Автономка', 2006, NULL, 13, '-', '4600 мин'),
(80, 'Автопортрет в гробу, в кандалах и с саксофоном', 1991, NULL, 5, '-', '67 мин'),
(81, 'Автопортрет неизвестного', 1988, NULL, 2, '-', '74 мин'),
(82, 'Автор песен', 1984, NULL, 7, '-', '94 мин'),
(83, 'Автора! Автора!', 1982, NULL, 1, '-', '110 мин'),
(84, 'Авторитет', 1997, NULL, 11, '-', '100 мин'),
(85, 'Автостоп', 1990, NULL, 1, '-', '56 мин'),
(86, 'Автостопом по Галактике', 2005, NULL, 13, '-', '110 мин'),
(87, 'Автостоянка', 1996, NULL, 1, '-', '86 мин'),
(88, 'Автоэротика. Дневники Красной Туфельки 4', 1993, NULL, 14, '-', '81 мин'),
(89, 'Агапэ', 1996, NULL, 4, '-', '78 мин'),
(90, 'Агата', 1978, NULL, 4, '-', '104 мин'),
(91, 'Агент', 1991, NULL, 11, '-', '90 мин'),
(92, 'Агент &quot;Дикая утка', 2002, NULL, 1, '-', '80 мин'),
(93, 'Агент 117', 2006, NULL, 13, '-', '99 мин'),
(94, 'Агент в мини-юбке', 2000, NULL, 1, '-', '64 мин'),
(95, 'Агент Джонни Инглиш', 2003, NULL, 1, '-', '93 мин'),
(96, 'Агент Коди Бэнкс', 2003, NULL, 11, '-', '110 мин'),
(97, 'Агент Коди Бэнкс 2: Пункт назначения - Лондон', 2004, NULL, 11, '-', '100 мин'),
(98, 'Агент на льду', 1985, NULL, 11, '-', '97 мин'),
(99, 'Агент национальной безопасности 1', 1998, NULL, 11, '-', '624 мин'),
(100, 'Агент национальной безопасности 2', 1999, NULL, 11, '-', '624 мин'),
(101, 'Агент национальной безопасности 3', 2000, NULL, 11, '-', '624 мин'),
(102, 'Агент национальной безопасности 4', 2003, NULL, 11, '-', '600 мин'),
(103, 'Агент национальной безопасности 5', 2004, NULL, 11, '-', '600 мин'),
(104, 'Агент по имени Дилайла', 1992, NULL, 8, '-', '85 мин'),
(105, 'Агент поневоле', 1996, NULL, 1, '-', '95 мин'),
(106, 'Агент секретной службы', 1978, NULL, 4, '-', '86 мин'),
(107, 'Агентство', 2001, NULL, 1, '-', '415 мин'),
(108, 'Агентство &quot;Золотая пуля', 2002, NULL, 4, '-', '1248 мин'),
(109, 'Агентство 2', 2004, NULL, 1, '-', '717 мин'),
(110, 'Агентство НЛС', 2001, NULL, 1, '-', '832 мин'),
(111, 'Агентство НЛС 2', 2002, NULL, 1, '-', '640 мин'),
(112, 'Агенты', 2000, NULL, 2, '-', '104 мин'),
(113, 'Агенты КГБ тоже влюбляются', 1991, NULL, 1, '-', '88 мин'),
(114, 'Агенты ФБР', 1988, NULL, 1, '-', '88 мин'),
(115, 'Агирре, гнев божий', 1972, NULL, 11, '-', '94 мин'),
(116, 'Агитбригада &quot;Бей врага!', 2007, NULL, 1, '-', '122 мин'),
(117, 'Агнесса божья', 1985, NULL, 6, '-', '97 мин'),
(118, 'Агония', 1974, NULL, 2, '-', '143 мин'),
(119, 'Агония и экстаз', 1965, NULL, 2, '-', '134 мин'),
(120, 'Ад', 2005, NULL, 2, '-', '98 мин'),
(121, 'Ад', 1993, NULL, 2, '-', '98 мин'),
(122, 'Ад в открытом море', 1954, NULL, 11, '-', '102 мин'),
(123, 'Ад в поднебесье', 1974, NULL, 11, '-', '165 мин'),
(124, 'Ад в Тихом океане', 1968, NULL, 11, '-', '102 мин'),
(125, 'Ад для героев', 1962, NULL, 11, '-', '90 мин'),
(126, 'Ад живых мертвецов', 1980, NULL, 6, '-', '98 мин'),
(127, 'Ад каннибалов', 1980, NULL, 6, '-', '91 мин'),
(128, 'Ад, или Досье на самого себя', 1989, NULL, 2, '-', '144 мин'),
(129, 'Ада', 1961, NULL, 1, '-', '109 мин'),
(130, 'Адам женится на Еве', 1980, NULL, 7, '-', '131 мин'),
(131, 'Адам и Ева', 2003, NULL, 1, '-', '99 мин'),
(132, 'Адам и Хева', 1969, NULL, 1, '-', '71 мин'),
(133, 'Адам хочет быть человеком', 1959, NULL, 2, '-', '86 мин'),
(134, 'Адамовы яблоки', 2005, NULL, 1, '-', '94 мин'),
(135, 'Адаптация', 2002, NULL, 1, '-', '114 мин'),
(136, 'Адвокат', 1990, NULL, 2, '-', '205 мин'),
(137, 'Адвокат', 2003, NULL, 4, '-', '1404 мин'),
(138, 'Адвокат дьявола', 1997, NULL, 2, '-', '138 мин'),
(139, 'Адвокат как доверенное лицо', 1995, NULL, 2, '-', '96 мин'),
(140, 'Адвокат на каникулы', 2001, NULL, 1, '-', '85 мин'),
(141, 'Адвокат террора', 2007, NULL, 5, '-', '135 мин'),
(142, 'Административная власть', 1954, NULL, 2, '-', '103 мин'),
(143, 'Адмирал Нахимов', 1946, NULL, 2, '-', '93 мин'),
(144, 'Адмирал Ушаков', 1953, NULL, 2, '-', '107 мин'),
(145, 'Адмиралъ', 2008, NULL, 2, '-', ''),
(146, 'Адольф Гитлер. Билет в одну сторону', 2002, NULL, 10, '-', '104 мин'),
(147, 'Адреналин', 1996, NULL, 8, '-', '72 мин'),
(148, 'Адреналин', 2006, NULL, 11, '-', '87 мин'),
(149, 'Адреналин 2', 2009, NULL, 11, '-', ''),
(150, 'Адрес вашего дома', 1972, NULL, 2, '-', '86 мин'),
(151, 'Адрес неизвестен', 1996, NULL, 4, '-', '88 мин'),
(152, 'Адрес неизвестен', 2001, NULL, 2, '-', '117 мин'),
(153, 'Адская женушка', 1993, NULL, 6, '-', '83 мин'),
(154, 'Адская кухня', 1998, NULL, 4, '-', '95 мин'),
(155, 'Адская месть', 1988, NULL, 6, '-', '86 мин'),
(156, 'Адская месть II: Кровавые крылья', 1993, NULL, 6, '-', '88 мин'),
(157, 'Адская поездка', 2008, NULL, 11, '-', ''),
(158, 'Адская тварь', 1994, NULL, 6, '-', '83 мин'),
(159, 'Адские охотники', 1986, NULL, 11, '-', '96 мин'),
(160, 'Адский бункер', 2008, NULL, 11, '-', '90 мин'),
(161, 'Адский вылет', 1993, NULL, 2, '-', '89 мин'),
(162, 'Адский небоскреб', 2001, NULL, 1, '-', '89 мин'),
(163, 'Адское такси', 1998, NULL, 1, '-', '92 мин'),
(164, 'Адъютант его превосходительства', 1969, NULL, 13, '-', '394 мин'),
(165, 'Адъютанты любви', 2006, NULL, 3, '-', '4420 мин'),
(166, 'Аз воздам', 1993, NULL, 2, '-', '156 мин'),
(167, 'Азазель', 2002, NULL, 4, '-', '208 мин'),
(168, 'Азартная игра', 1966, NULL, 1, '-', '124 мин'),
(169, 'Азартная игра', 1994, NULL, 2, '-', '108 мин'),
(170, 'Азбука любви', 1993, NULL, 2, '-', '720 мин'),
(171, 'Азбука футбола', 1995, NULL, 15, '-', '96 мин'),
(172, 'Азиат', 1991, NULL, 11, '-', '81 мин'),
(173, 'Азиат', 2008, NULL, 11, '-', '90 мин'),
(174, 'Азирис Нуна', 2006, NULL, 12, '-', '90 мин'),
(175, 'Азур и Азмар', 2006, NULL, 9, '-', '99 мин'),
(176, 'Ай лав ю, Петрович!', 1990, NULL, 2, '-', '98 мин'),
(177, 'Ай, Кармела!', 1990, NULL, 2, '-', '102 мин'),
(178, 'Айболит-66', 1966, NULL, 1, '-', '99 мин');

-- --------------------------------------------------------

--
-- Структура таблицы `films_category`
--

CREATE TABLE `films_category` (
  `id` int(11) NOT NULL,
  `category` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `films_category`
--

INSERT INTO `films_category` (`id`, `category`) VALUES
(1, 'семейный'),
(2, 'для молодежи'),
(3, 'для детей');

-- --------------------------------------------------------

--
-- Структура таблицы `films_rating`
--

CREATE TABLE `films_rating` (
  `id` int(11) NOT NULL,
  `id_films` int(11) NOT NULL,
  `rating` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `films_rating`
--

INSERT INTO `films_rating` (`id`, `id_films`, `rating`) VALUES
(1, 1, 5);

-- --------------------------------------------------------

--
-- Структура таблицы `general_table`
--

CREATE TABLE `general_table` (
  `id` int(11) NOT NULL,
  `films_id` int(11) NOT NULL,
  `films_category_id` int(11) NOT NULL,
  `rating_id` int(11) NOT NULL,
  `comments_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `general_table`
--

INSERT INTO `general_table` (`id`, `films_id`, `films_category_id`, `rating_id`, `comments_id`) VALUES
(1, 1, 1, 1, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `genre`
--

CREATE TABLE `genre` (
  `id` int(11) NOT NULL,
  `genre` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `genre`
--

INSERT INTO `genre` (`id`, `genre`) VALUES
(1, 'комедия'),
(2, 'драма'),
(3, 'криминал'),
(4, 'боевик'),
(5, 'нет'),
(6, 'триллер'),
(7, 'мелодрама'),
(8, 'фантастика'),
(9, 'мультфильм'),
(10, 'биография'),
(11, 'военный'),
(12, 'приключения'),
(13, 'вестерн'),
(14, 'эротика'),
(15, 'спорт');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_films_id` (`id_films`);

--
-- Индексы таблицы `films`
--
ALTER TABLE `films`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_genres` (`genre`);

--
-- Индексы таблицы `films_category`
--
ALTER TABLE `films_category`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `films_rating`
--
ALTER TABLE `films_rating`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_films` (`id_films`);

--
-- Индексы таблицы `general_table`
--
ALTER TABLE `general_table`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_films_category_category` (`films_category_id`),
  ADD KEY `fk_rating_films_rating` (`rating_id`),
  ADD KEY `fk_films` (`films_id`),
  ADD KEY `fk_comment_comments` (`comments_id`);

--
-- Индексы таблицы `genre`
--
ALTER TABLE `genre`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `films`
--
ALTER TABLE `films`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=179;

--
-- AUTO_INCREMENT для таблицы `films_category`
--
ALTER TABLE `films_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблицы `films_rating`
--
ALTER TABLE `films_rating`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `genre`
--
ALTER TABLE `genre`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `comments`
--
ALTER TABLE `comments`
  ADD CONSTRAINT `fk_films_id` FOREIGN KEY (`id_films`) REFERENCES `films` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Ограничения внешнего ключа таблицы `films`
--
ALTER TABLE `films`
  ADD CONSTRAINT `fk_genres` FOREIGN KEY (`genre`) REFERENCES `genre` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `general_table`
--
ALTER TABLE `general_table`
  ADD CONSTRAINT `fk_comment_comments` FOREIGN KEY (`comments_id`) REFERENCES `comments` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_films` FOREIGN KEY (`films_id`) REFERENCES `films` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_films_category_category` FOREIGN KEY (`films_category_id`) REFERENCES `films_category` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_rating_films_rating` FOREIGN KEY (`rating_id`) REFERENCES `films_rating` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
