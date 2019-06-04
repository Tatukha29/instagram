-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Июн 03 2019 г., 12:03
-- Версия сервера: 5.6.41
-- Версия PHP: 5.5.38

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `tanya29`
--
CREATE DATABASE IF NOT EXISTS `tanya29` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `tanya29`;

-- --------------------------------------------------------

--
-- Структура таблицы `actual`
--

CREATE TABLE `actual` (
  `actual` varchar(355) NOT NULL,
  `id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `actual`
--

INSERT INTO `actual` (`actual`, `id`) VALUES
('#Твоймиллиардер', 1),
('ОПЕК', 2),
('В Австралии', 3),
('#CaptainMarvel', 4),
('#MondayMotivation', 5),
('#IDPWD2018', 6),
('Sajid Javid', 7),
('#VSFashionShow', 8);

-- --------------------------------------------------------

--
-- Структура таблицы `author`
--

CREATE TABLE `author` (
  `name` varchar(355) NOT NULL,
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `author`
--

INSERT INTO `author` (`name`, `id`) VALUES
('А.С. Пушкин', 1),
('М. Лермонтов', 2);

-- --------------------------------------------------------

--
-- Структура таблицы `book`
--

CREATE TABLE `book` (
  `book` varchar(355) NOT NULL,
  `author_id` int(10) NOT NULL,
  `id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `book`
--

INSERT INTO `book` (`book`, `author_id`, `id`) VALUES
('Капитанская дочка', 1, 1),
('Герой нашего времени', 2, 2),
('Руслан и Людмила', 1, 3);

-- --------------------------------------------------------

--
-- Структура таблицы `contact`
--

CREATE TABLE `contact` (
  `Name` varchar(355) NOT NULL,
  `phone` varchar(355) NOT NULL,
  `id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `contact`
--

INSERT INTO `contact` (`Name`, `phone`, `id`) VALUES
('Mother', '880555350', 1),
('father', '12212265', 2),
('brother', '8776773200', 3),
('Sister', '78895524430', 4),
('Misha', '8925564689', 5),
('Masha', '789946765', 6),
('Sasha', '66746678370', 7),
('Kirill', '8933567322635', 8);

-- --------------------------------------------------------

--
-- Структура таблицы `dolist`
--

CREATE TABLE `dolist` (
  `status` tinyint(1) NOT NULL,
  `data` date NOT NULL,
  `holiday` varchar(355) NOT NULL,
  `file` varchar(355) NOT NULL,
  `id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `dolist`
--

INSERT INTO `dolist` (`status`, `data`, `holiday`, `file`, `id`) VALUES
(1, '2020-02-12', 'saddadsa', 'images/1.png', 12),
(1, '2019-06-06', 'qwerty', 'images/images.jpg', 13);

-- --------------------------------------------------------

--
-- Структура таблицы `game`
--

CREATE TABLE `game` (
  `id` int(10) NOT NULL,
  `img` varchar(355) DEFAULT NULL,
  `name` varchar(355) DEFAULT NULL,
  `price` varchar(355) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `game`
--

INSERT INTO `game` (`id`, `img`, `name`, `price`) VALUES
(1, 'images/1.jpg', 'game1', '1200'),
(2, 'images/2.jpg', 'game2', '2000'),
(10, 'images/images.jpg', 'game1', '2000');

-- --------------------------------------------------------

--
-- Структура таблицы `instagram`
--

CREATE TABLE `instagram` (
  `mail` varchar(355) NOT NULL,
  `name` varchar(355) NOT NULL,
  `user` varchar(355) NOT NULL,
  `password` varchar(355) NOT NULL,
  `avatar` varchar(355) NOT NULL,
  `id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `instagram`
--

INSERT INTO `instagram` (`mail`, `name`, `user`, `password`, `avatar`, `id`) VALUES
('qwerty1', 'qwerty1', 'qwerty1', 'qwerty1', 'images/2.jpg', 13),
('qwerty2', 'qwerty2', 'qwerty2', 'qwerty2', 'images/2.png', 14);

-- --------------------------------------------------------

--
-- Структура таблицы `mail`
--

CREATE TABLE `mail` (
  `logo` varchar(355) NOT NULL,
  `name` varchar(355) NOT NULL,
  `text` varchar(355) NOT NULL,
  `btn` varchar(355) NOT NULL,
  `id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `mail`
--

INSERT INTO `mail` (`logo`, `name`, `text`, `btn`, `id`) VALUES
('gmail.png', 'Gmail@', 'Gmail', '#', 1),
('post2.png', 'HI-Tech', 'HI_TECH.com', '#', 2),
('post1.jpg', 'HABR', 'HABR.COM', '#', 3),
('post3.jpg', 'TJ', 'TJournal@', '#', 4);

-- --------------------------------------------------------

--
-- Структура таблицы `music`
--

CREATE TABLE `music` (
  `music` varchar(355) NOT NULL,
  `people_id` int(10) NOT NULL,
  `id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `music`
--

INSERT INTO `music` (`music`, `people_id`, `id`) VALUES
('CLean Bandit', 1, 1),
('Justin Bieber', 2, 2);

-- --------------------------------------------------------

--
-- Структура таблицы `news`
--

CREATE TABLE `news` (
  `img` varchar(355) NOT NULL,
  `post_text` varchar(355) NOT NULL,
  `user_id` int(10) NOT NULL,
  `id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `news`
--

INSERT INTO `news` (`img`, `post_text`, `user_id`, `id`) VALUES
('images/1.jpg', 'wow', 4, 30),
('images/1.jpg', 'wow2', 5, 31),
('images/2.png', 'qwerty4', 8, 32),
('images/Instagram_logo.jpg', 'woow', 12, 33),
('images/avatar.jpg', 'woow', 13, 34),
('images/enemy3b.gif', 'qq', 14, 35),
('images/images.jpg', 'Hello. I play GTA5', 13, 36),
('images/images.jpg', 'ahahhaha me too', 14, 37),
('images/images.jpg', 'fererw', 13, 38);

-- --------------------------------------------------------

--
-- Структура таблицы `people`
--

CREATE TABLE `people` (
  `name` varchar(355) NOT NULL,
  `id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `people`
--

INSERT INTO `people` (`name`, `id`) VALUES
('Аня', 1),
('Люба', 2);

-- --------------------------------------------------------

--
-- Структура таблицы `post`
--

CREATE TABLE `post` (
  `Name` varchar(355) NOT NULL,
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `products`
--

CREATE TABLE `products` (
  `id` int(10) NOT NULL,
  `gender` varchar(355) NOT NULL,
  `name` varchar(355) NOT NULL,
  `brand` varchar(355) NOT NULL,
  `size` int(10) NOT NULL,
  `category` varchar(355) NOT NULL,
  `subcategory` varchar(355) NOT NULL,
  `img` varchar(355) NOT NULL,
  `price` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `products`
--

INSERT INTO `products` (`id`, `gender`, `name`, `brand`, `size`, `category`, `subcategory`, `img`, `price`) VALUES
(1, 'мужской', 'ботинки ecco кожаные', 'ecco', 42, 'обувь', 'ботинки', 'images/1.jpg', 5000),
(2, 'мужской', 'кроссовки nike белые', 'nike', 44, 'обувь', 'кроссовки', 'images/2.jpg', 3500),
(3, 'мужской', 'джинсовая рубашка wrangler', 'wrangler', 48, 'джинсовая одежда', 'рубашки', 'images/3.jpg', 2000),
(4, 'мужской', 'красная рубашка в клетку wrangler', 'wrangler', 50, 'рубашки', 'рубашки', 'images/4.jpg', 3100),
(5, 'мужской', 'классические брюки asos', 'asos', 46, 'брюки', 'брюки', 'images/6.jpg', 4000),
(6, 'мужской', 'джинсы levis', 'levis', 44, 'джинсовая одежда', 'джинсы', 'images/5.jpg', 6000),
(7, 'мужской', 'пуховая куртка', 'bask', 50, 'верхняя одежда', 'куртка', 'images/7.jpg', 28000),
(8, 'мужской', 'ветровка серая alpha industries', 'alpha industries', 44, 'верхняя одежда', 'ветровка', 'images/8.jpg', 10500),
(9, 'мужской', 'шапка вязаная nike', 'nike', 0, 'головные уборы', 'шапка', 'images/9.jpg', 900),
(10, 'мужской', 'кепка коричневая new era', 'new era', 0, 'головные уборы', 'кепка', 'images/10.jpg', 1500),
(11, 'мужской', 'штаны серые', 'noname', 52, 'брюки', 'брюки', 'images/11.jpg', 3000),
(12, 'женский', 'туфли голубые miu miu', 'miu miu', 36, 'обувь', 'туфли', 'images/12.jpg', 14000),
(13, 'женский', 'туфли женские без каблука mui mui', 'miu miu', 38, 'обувь', 'туфли без каблука', 'images/13.jpg', 9000),
(14, 'женский', 'ботинки без каблука коричневые michael kors', 'michael kors', 37, 'обувь', 'ботинки', 'images/14.jpg', 16000),
(15, 'женский', 'сапоги женские без каблука tods', 'tods', 40, 'обувь', 'сапоги', 'images/15.jpg', 17000),
(16, 'женский', 'платье женское prada', 'prada', 44, 'платья', 'платье летнее', 'images/16.jpg', 7500),
(17, 'женский', 'платье вязанное gucci', 'gucci', 46, 'платья', 'платье вечернее', 'images/17.jpg', 9000),
(18, 'женский', 'пальто женское alexanger wang', 'alexanger wang', 52, 'верхняя одежда', 'пальто', 'images/18.jpg', 16000),
(19, 'мужской', 'куртка джинсовая stussy', 'stussy', 50, 'джинсовая одежда', 'куртка', 'images/19.jpg', 5000),
(20, 'мужской', 'куртка the north face', 'the north face', 46, 'верхняя одежда', 'ветровка', 'images/20.jpg', 5500),
(21, 'женский', 'куртка кожаная asos', 'asos', 42, 'верхняя одежда', 'куртка', 'images/21.jpg', 11000);

-- --------------------------------------------------------

--
-- Структура таблицы `registr`
--

CREATE TABLE `registr` (
  `mail` varchar(355) NOT NULL,
  `password` varchar(355) NOT NULL,
  `id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `registr`
--

INSERT INTO `registr` (`mail`, `password`, `id`) VALUES
('qwerty@mail.ru', '123456', 2),
('sasa', 'asasa', 5),
('sdaasfsa', 'afdds', 6),
('sads', 'asdads', 7),
('sadsds', 'asdadssdf', 8),
('sadsdsasf', 'asdadssdffas', 9),
('ыфыфы', 'вы21312', 10);

-- --------------------------------------------------------

--
-- Структура таблицы `scedule`
--

CREATE TABLE `scedule` (
  `raspis` varchar(355) NOT NULL,
  `id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `scedule`
--

INSERT INTO `scedule` (`raspis`, `id`) VALUES
('pn-17', 1),
('vt-10', 2);

-- --------------------------------------------------------

--
-- Структура таблицы `school2`
--

CREATE TABLE `school2` (
  `Surname` varchar(355) NOT NULL,
  `name` varchar(355) NOT NULL,
  `subject` varchar(355) NOT NULL,
  `19Nov` varchar(355) NOT NULL,
  `20Nov` varchar(355) NOT NULL,
  `21Nov` varchar(355) NOT NULL,
  `22Nov` varchar(355) NOT NULL,
  `23Nov` varchar(355) NOT NULL,
  `id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `school2`
--

INSERT INTO `school2` (`Surname`, `name`, `subject`, `19Nov`, `20Nov`, `21Nov`, `22Nov`, `23Nov`, `id`) VALUES
('Uvarovskaya', 'Lena', 'Math', '5', '4', '5', '5', '5', 1),
('Semenov', 'Nikolay', 'Math', '4', '5', '3', '5', '5', 2),
('Megina', 'Masha', 'Math', '4', '4', '5', '5', '5', 3),
('Kirillin ', 'Vova', 'Math', '5', '5', '4', '4', '4', 4),
('Fedorov', 'Alexandr', 'Math', '5', '5', '4', '3', '5', 5),
('Pavlova', 'Luba', 'Math', '5', '4', '5', '4', '5', 6),
('Danilova', 'Olya', 'Math', '5', '4', '5', '5', '5', 7),
('Tsypandin', 'Kolya', 'Math', '5', '4', '4', '5', '4', 8);

-- --------------------------------------------------------

--
-- Структура таблицы `sport`
--

CREATE TABLE `sport` (
  `id` int(10) NOT NULL,
  `sport` varchar(355) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `sport`
--

INSERT INTO `sport` (`id`, `sport`) VALUES
(1, 'Плавание'),
(2, 'Спортивная гимнастика'),
(3, 'Гребля на байдарках и каноэ'),
(4, 'Легкая атлетика'),
(5, 'Фехтование'),
(6, 'Велосипедный спорт');

-- --------------------------------------------------------

--
-- Структура таблицы `sportsmans`
--

CREATE TABLE `sportsmans` (
  `id` int(10) NOT NULL,
  `sport_id` int(10) NOT NULL,
  `name` varchar(355) NOT NULL,
  `country` varchar(355) NOT NULL,
  `medals` int(10) NOT NULL,
  `year` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `sportsmans`
--

INSERT INTO `sportsmans` (`id`, `sport_id`, `name`, `country`, `medals`, `year`) VALUES
(1, 1, 'Майкл Фелпс', 'США', 1, 2008),
(2, 2, 'Лариса Латынина', 'СССР', 3, 1964),
(3, 3, 'Биргит Фишер', 'Германия', 2, 2004),
(4, 2, 'Савао Като', 'Япония', 1, 1976),
(5, 1, 'Дженни Томпсон', 'США', 3, 2000),
(6, 4, 'Усэйн Болт', 'Ямайка', 1, 2015),
(7, 2, 'Вера Чаславска', 'Чехословакия', 2, 1968),
(8, 5, 'Эдоардо Манджаротти', 'Италия', 2, 1951),
(9, 6, 'Крис Хой', 'Великобритания', 1, 2012),
(10, 1, 'Эми Ван Дайкен', 'США', 1, 2000);

-- --------------------------------------------------------

--
-- Структура таблицы `students`
--

CREATE TABLE `students` (
  `name` varchar(355) NOT NULL,
  `id` int(10) NOT NULL,
  `schedule_id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `students`
--

INSERT INTO `students` (`name`, `id`, `schedule_id`) VALUES
('Маша', 1, 1),
('Саша', 2, 2),
('Даша', 3, 2);

-- --------------------------------------------------------

--
-- Структура таблицы `tab`
--

CREATE TABLE `tab` (
  `name` varchar(355) NOT NULL,
  `phone` varchar(355) NOT NULL,
  `id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `tab`
--

INSERT INTO `tab` (`name`, `phone`, `id`) VALUES
('ppp', '11111', 5),
('qwerty6', '123456', 6),
('999', '000', 7),
('qwertyu', '123456', 8),
('qwertyu', '123456', 9);

-- --------------------------------------------------------

--
-- Структура таблицы `tweet`
--

CREATE TABLE `tweet` (
  `post_text` varchar(355) NOT NULL,
  `post_image` varchar(355) NOT NULL,
  `account_name` varchar(355) NOT NULL,
  `account_link` varchar(355) NOT NULL,
  `account_image` varchar(355) NOT NULL,
  `id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `tweet`
--

INSERT INTO `tweet` (`post_text`, `post_image`, `account_name`, `account_link`, `account_image`, `id`) VALUES
('Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\n			tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\r\n			quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\r\n			consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse\r\n			cillum dolore eu fugiat nulla pariatur. Exc', 'habr.jpg', 'Habr', '@HABR.COM', 'post1.jpg', 1),
('Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\n			tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\r\n			quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\r\n			consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse\r\n			cillum dolore eu fugiat nulla pariatur. Exc', 'vesti_hi_tech.jpg', 'Vesti HI tech', '@HI_TECH.COM', 'post2.png', 2),
('Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\n			tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\r\n			quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\r\n			consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse\r\n			cillum dolore eu fugiat nulla pariatur. Exc', 'roscosmos.jpg', 'TJ', '@TJournal.COM', 'post3.jpg', 3),
('qwerty', 'habr.jpg', 'MarySmith', '@MarySmith', 'avatar.jpg', 4),
('Hello', 'habr.jpg', 'MarySmith', '@MarySmith', 'avatar.jpg', 5),
('qwerty', 'habr.jpg', 'MarySmith', '@MarySmith', 'avatar.jpg', 6);

-- --------------------------------------------------------

--
-- Структура таблицы `users1`
--

CREATE TABLE `users1` (
  `first name` varchar(355) NOT NULL,
  `last name` varchar(355) NOT NULL,
  `second name` varchar(355) NOT NULL,
  `username` varchar(355) NOT NULL,
  `password` varchar(355) NOT NULL,
  `bday` date NOT NULL,
  `class` varchar(10) NOT NULL,
  `schedule` varchar(355) NOT NULL,
  `id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `users1`
--

INSERT INTO `users1` (`first name`, `last name`, `second name`, `username`, `password`, `bday`, `class`, `schedule`, `id`) VALUES
('Tatiana', 'Rebrova', 'Ivanovna', 'user1', '123456', '2002-05-29', '10-5', 'eng', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `users2`
--

CREATE TABLE `users2` (
  `first name` varchar(355) NOT NULL,
  `last name` varchar(355) NOT NULL,
  `second name` varchar(355) NOT NULL,
  `username` varchar(355) NOT NULL,
  `password` varchar(355) NOT NULL,
  `teach` varchar(355) NOT NULL,
  `id` int(10) NOT NULL,
  `bday` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `users2`
--

INSERT INTO `users2` (`first name`, `last name`, `second name`, `username`, `password`, `teach`, `id`, `bday`) VALUES
('Maria', 'Uvarovskaya', 'Ivanovna', 'user1', '123456', 'Учитель информатики', 1, '1977-12-26');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `actual`
--
ALTER TABLE `actual`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `author`
--
ALTER TABLE `author`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `book`
--
ALTER TABLE `book`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `dolist`
--
ALTER TABLE `dolist`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `game`
--
ALTER TABLE `game`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `instagram`
--
ALTER TABLE `instagram`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `mail`
--
ALTER TABLE `mail`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `music`
--
ALTER TABLE `music`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `people`
--
ALTER TABLE `people`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `post`
--
ALTER TABLE `post`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `registr`
--
ALTER TABLE `registr`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `scedule`
--
ALTER TABLE `scedule`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `school2`
--
ALTER TABLE `school2`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `sport`
--
ALTER TABLE `sport`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `sportsmans`
--
ALTER TABLE `sportsmans`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `tab`
--
ALTER TABLE `tab`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `tweet`
--
ALTER TABLE `tweet`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `users1`
--
ALTER TABLE `users1`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `users2`
--
ALTER TABLE `users2`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `actual`
--
ALTER TABLE `actual`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT для таблицы `author`
--
ALTER TABLE `author`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `book`
--
ALTER TABLE `book`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблицы `contact`
--
ALTER TABLE `contact`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT для таблицы `dolist`
--
ALTER TABLE `dolist`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT для таблицы `game`
--
ALTER TABLE `game`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT для таблицы `instagram`
--
ALTER TABLE `instagram`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT для таблицы `mail`
--
ALTER TABLE `mail`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT для таблицы `music`
--
ALTER TABLE `music`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `news`
--
ALTER TABLE `news`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT для таблицы `people`
--
ALTER TABLE `people`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `post`
--
ALTER TABLE `post`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `products`
--
ALTER TABLE `products`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT для таблицы `registr`
--
ALTER TABLE `registr`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT для таблицы `scedule`
--
ALTER TABLE `scedule`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `school2`
--
ALTER TABLE `school2`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT для таблицы `sport`
--
ALTER TABLE `sport`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT для таблицы `sportsmans`
--
ALTER TABLE `sportsmans`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT для таблицы `students`
--
ALTER TABLE `students`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблицы `tab`
--
ALTER TABLE `tab`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT для таблицы `tweet`
--
ALTER TABLE `tweet`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT для таблицы `users1`
--
ALTER TABLE `users1`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `users2`
--
ALTER TABLE `users2`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
