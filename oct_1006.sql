-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Июн 14 2021 г., 22:09
-- Версия сервера: 8.0.19
-- Версия PHP: 8.0.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `oct_1006`
--

-- --------------------------------------------------------

--
-- Структура таблицы `groups`
--

CREATE TABLE `groups` (
  `id` int UNSIGNED NOT NULL,
  `teacher_id` bigint UNSIGNED NOT NULL,
  `name` text NOT NULL,
  `classroom` int NOT NULL,
  `graduate_date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `groups`
--

INSERT INTO `groups` (`id`, `teacher_id`, `name`, `classroom`, `graduate_date`) VALUES
(11, 1, 'group_1', 203, '2019-11-01 16:54:38'),
(12, 2, 'group_2', 339, '2018-12-31 16:54:38'),
(13, 3, 'group_3', 504, '2021-06-02 16:56:14'),
(14, 4, 'group_4', 404, '2021-06-05 16:56:14'),
(15, 5, 'group_5', 502, '2021-05-31 16:56:14'),
(16, 1, 'group_6', 105, NULL),
(17, 2, 'group_7', 208, NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `groups_students`
--

CREATE TABLE `groups_students` (
  `id` bigint UNSIGNED NOT NULL,
  `student_id` bigint UNSIGNED NOT NULL,
  `group_id` int UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `groups_students`
--

INSERT INTO `groups_students` (`id`, `student_id`, `group_id`) VALUES
(1, 1, 11),
(2, 2, 12),
(3, 3, 13),
(4, 4, 14),
(5, 5, 15),
(6, 11, 16),
(7, 12, 17);

-- --------------------------------------------------------

--
-- Структура таблицы `lessons`
--

CREATE TABLE `lessons` (
  `id` int UNSIGNED NOT NULL,
  `name` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `lessons`
--

INSERT INTO `lessons` (`id`, `name`) VALUES
(1, 'lesson_1'),
(2, 'lesson_2'),
(3, 'lesson_3'),
(4, 'lesson_4'),
(5, 'lesson_5');

-- --------------------------------------------------------

--
-- Структура таблицы `marks`
--

CREATE TABLE `marks` (
  `id` bigint UNSIGNED NOT NULL,
  `student_id` bigint UNSIGNED NOT NULL,
  `group_id` int UNSIGNED NOT NULL,
  `mark` tinyint NOT NULL,
  `comment` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `marks`
--

INSERT INTO `marks` (`id`, `student_id`, `group_id`, `mark`, `comment`) VALUES
(1, 1, 11, 95, 'Great'),
(2, 2, 12, 85, 'Well done!'),
(3, 3, 13, 78, 'Not bad, not bad!'),
(4, 4, 14, 98, 'Well done!'),
(5, 5, 15, 60, 'Enought');

-- --------------------------------------------------------

--
-- Структура таблицы `students`
--

CREATE TABLE `students` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(100) NOT NULL,
  `last_name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `students`
--

INSERT INTO `students` (`id`, `name`, `last_name`, `email`, `password`) VALUES
(1, 'student_1', 'student_1_last_name', 'student_1@gmail.com', '55c7ead40f39dfe82fff98375bb4dee9'),
(2, 'student_2', 'student_2_last_name', 'student_2@gmail.com', '3e4064ba83f1b9fce518b6dc2a8b1621'),
(3, 'student_3', 'student_3_last_name', 'student_3@gmail.com', '0d74c5310d3f9bfad60c71e3cbc89a83'),
(4, 'student_4', 'student_4_last_name', 'student_4@gmail.com', '129ef0b8f8428fa1953fb703711b518c'),
(5, 'student_5', 'student_5_last_name', 'student_5@gmail.com', 'd5816c1653cec4b706a1274049c055e5'),
(11, 'student_6', 'student_6_last_name', 'student_6@gmail.com', 'c0a655460e7a50936f6174e6af482b8b'),
(12, 'student_7', 'student_7_last_name', 'student_7@gmail.com', '6fa8389c0871a0750afaf80e6d907b8b');

-- --------------------------------------------------------

--
-- Структура таблицы `students_cellphones`
--

CREATE TABLE `students_cellphones` (
  `id` bigint UNSIGNED NOT NULL,
  `student_id` bigint UNSIGNED NOT NULL,
  `number` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `students_cellphones`
--

INSERT INTO `students_cellphones` (`id`, `student_id`, `number`) VALUES
(1, 1, '+3658974522'),
(2, 2, '+380554477889'),
(3, 3, '+1457896354'),
(4, 4, '+4567891234'),
(5, 5, '+9875643284');

-- --------------------------------------------------------

--
-- Структура таблицы `teachers`
--

CREATE TABLE `teachers` (
  `id` bigint UNSIGNED NOT NULL,
  `name` text NOT NULL,
  `last_name` text NOT NULL,
  `email` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `teachers`
--

INSERT INTO `teachers` (`id`, `name`, `last_name`, `email`) VALUES
(1, 'teacher_1', 'teacher_1_last_name', 'teacher_1@gmail.com'),
(2, 'teacher_2', 'teacher_2_last_name', 'teacher_2@gmail.com'),
(3, 'teacher_3', 'teacher_3_last_name', 'teacher_3@gmail.com'),
(4, 'teacher_4', 'teacher_4_last_name', 'teacher_4@gmail.com'),
(5, 'teacher_5', 'teacher_5_last_name', 'teacher_5@gmail.com'),
(6, 'teacher_6', 'teacher_6_last_name', 'teacher_6@gmial.com'),
(7, 'teacher_7', 'teacher_7_last_name', 'teacher_7@gmail.com');

-- --------------------------------------------------------

--
-- Структура таблицы `teachers_cellphones`
--

CREATE TABLE `teachers_cellphones` (
  `id` bigint UNSIGNED NOT NULL,
  `teacher_id` bigint UNSIGNED NOT NULL,
  `number` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `teachers_cellphones`
--

INSERT INTO `teachers_cellphones` (`id`, `teacher_id`, `number`) VALUES
(1, 1, '+380665544778'),
(2, 2, '+380554477889'),
(3, 3, '+308774411223'),
(4, 4, '+14785238945'),
(5, 5, '+780024569832');

-- --------------------------------------------------------

--
-- Структура таблицы `teachers_lessons`
--

CREATE TABLE `teachers_lessons` (
  `id` int UNSIGNED NOT NULL,
  `teacher_id` bigint UNSIGNED NOT NULL,
  `lesson_id` int UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `teachers_lessons`
--

INSERT INTO `teachers_lessons` (`id`, `teacher_id`, `lesson_id`) VALUES
(1, 1, 1),
(2, 2, 2),
(3, 3, 3),
(4, 4, 4),
(5, 5, 5);

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `groups`
--
ALTER TABLE `groups`
  ADD PRIMARY KEY (`id`),
  ADD KEY `teacher_id` (`teacher_id`);

--
-- Индексы таблицы `groups_students`
--
ALTER TABLE `groups_students`
  ADD PRIMARY KEY (`id`),
  ADD KEY `group_id` (`group_id`),
  ADD KEY `student_id` (`student_id`);

--
-- Индексы таблицы `lessons`
--
ALTER TABLE `lessons`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `marks`
--
ALTER TABLE `marks`
  ADD PRIMARY KEY (`id`),
  ADD KEY `student_id` (`student_id`),
  ADD KEY `group_id` (`group_id`);

--
-- Индексы таблицы `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `students_cellphones`
--
ALTER TABLE `students_cellphones`
  ADD PRIMARY KEY (`id`),
  ADD KEY `student_id` (`student_id`);

--
-- Индексы таблицы `teachers`
--
ALTER TABLE `teachers`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `teachers_cellphones`
--
ALTER TABLE `teachers_cellphones`
  ADD PRIMARY KEY (`id`),
  ADD KEY `teacher_id` (`teacher_id`);

--
-- Индексы таблицы `teachers_lessons`
--
ALTER TABLE `teachers_lessons`
  ADD PRIMARY KEY (`id`),
  ADD KEY `teacher_id` (`teacher_id`),
  ADD KEY `lesson_id` (`lesson_id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `groups`
--
ALTER TABLE `groups`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT для таблицы `groups_students`
--
ALTER TABLE `groups_students`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT для таблицы `lessons`
--
ALTER TABLE `lessons`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT для таблицы `marks`
--
ALTER TABLE `marks`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT для таблицы `students`
--
ALTER TABLE `students`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT для таблицы `students_cellphones`
--
ALTER TABLE `students_cellphones`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT для таблицы `teachers`
--
ALTER TABLE `teachers`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT для таблицы `teachers_cellphones`
--
ALTER TABLE `teachers_cellphones`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT для таблицы `teachers_lessons`
--
ALTER TABLE `teachers_lessons`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `groups`
--
ALTER TABLE `groups`
  ADD CONSTRAINT `groups_ibfk_1` FOREIGN KEY (`teacher_id`) REFERENCES `teachers` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Ограничения внешнего ключа таблицы `groups_students`
--
ALTER TABLE `groups_students`
  ADD CONSTRAINT `groups_students_ibfk_1` FOREIGN KEY (`group_id`) REFERENCES `groups` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  ADD CONSTRAINT `groups_students_ibfk_2` FOREIGN KEY (`student_id`) REFERENCES `students` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Ограничения внешнего ключа таблицы `marks`
--
ALTER TABLE `marks`
  ADD CONSTRAINT `marks_ibfk_1` FOREIGN KEY (`student_id`) REFERENCES `students` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  ADD CONSTRAINT `marks_ibfk_2` FOREIGN KEY (`group_id`) REFERENCES `groups` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Ограничения внешнего ключа таблицы `students_cellphones`
--
ALTER TABLE `students_cellphones`
  ADD CONSTRAINT `students_cellphones_ibfk_1` FOREIGN KEY (`student_id`) REFERENCES `students` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Ограничения внешнего ключа таблицы `teachers_cellphones`
--
ALTER TABLE `teachers_cellphones`
  ADD CONSTRAINT `teachers_cellphones_ibfk_1` FOREIGN KEY (`teacher_id`) REFERENCES `teachers` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Ограничения внешнего ключа таблицы `teachers_lessons`
--
ALTER TABLE `teachers_lessons`
  ADD CONSTRAINT `teachers_lessons_ibfk_1` FOREIGN KEY (`teacher_id`) REFERENCES `teachers` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  ADD CONSTRAINT `teachers_lessons_ibfk_2` FOREIGN KEY (`lesson_id`) REFERENCES `lessons` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
