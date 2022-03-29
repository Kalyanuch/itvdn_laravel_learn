-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Хост: localhost
-- Время создания: Мар 29 2022 г., 15:24
-- Версия сервера: 8.0.28-0ubuntu0.20.04.3
-- Версия PHP: 7.4.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `itvdn_laravel_home`
--

-- --------------------------------------------------------

--
-- Структура таблицы `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES(5, '2014_10_12_000000_create_users_table', 1);
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES(6, '2014_10_12_100000_create_password_resets_table', 1);
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES(7, '2022_03_21_161707_create_roles_table', 1);
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES(8, '2022_03_21_162934_create_roles_user_table', 1);
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES(9, '2022_03_27_112800_create_posts_table', 2);

-- --------------------------------------------------------

--
-- Структура таблицы `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `posts`
--

CREATE TABLE `posts` (
  `id` int UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `userId` int UNSIGNED NOT NULL,
  `createdAt` timestamp NULL DEFAULT NULL,
  `updatedAt` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `posts`
--

INSERT INTO `posts` (`id`, `title`, `body`, `published`, `userId`, `createdAt`, `updatedAt`) VALUES(1, 'New title 444', 'New article example 555', 0, 1, '2022-03-27 11:15:17', '2022-03-27 11:52:23');
INSERT INTO `posts` (`id`, `title`, `body`, `published`, `userId`, `createdAt`, `updatedAt`) VALUES(2, 'title2', 'Body 2', 0, 1, '2022-03-27 11:18:32', '2022-03-27 11:18:32');
INSERT INTO `posts` (`id`, `title`, `body`, `published`, `userId`, `createdAt`, `updatedAt`) VALUES(5, 'My new test post', 'This is exciting article', 0, 16, '2022-03-28 13:08:55', '2022-03-28 13:08:55');
INSERT INTO `posts` (`id`, `title`, `body`, `published`, `userId`, `createdAt`, `updatedAt`) VALUES(6, 'My new test post', 'This is exciting article', 0, 18, '2022-03-28 13:09:29', '2022-03-28 13:09:29');

-- --------------------------------------------------------

--
-- Структура таблицы `roles`
--

CREATE TABLE `roles` (
  `id` int UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `permissions` json NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `roles`
--

INSERT INTO `roles` (`id`, `name`, `slug`, `permissions`) VALUES(1, 'Author', 'author', '{\"create-post\": true}');
INSERT INTO `roles` (`id`, `name`, `slug`, `permissions`) VALUES(2, 'Editor', 'editor', '{\"publish\": true, \"edit-post\": true}');

-- --------------------------------------------------------

--
-- Структура таблицы `roles_user`
--

CREATE TABLE `roles_user` (
  `userId` int UNSIGNED NOT NULL,
  `roleId` int UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `roles_user`
--

INSERT INTO `roles_user` (`userId`, `roleId`) VALUES(1, 1);
INSERT INTO `roles_user` (`userId`, `roleId`) VALUES(2, 1);
INSERT INTO `roles_user` (`userId`, `roleId`) VALUES(3, 1);
INSERT INTO `roles_user` (`userId`, `roleId`) VALUES(4, 1);
INSERT INTO `roles_user` (`userId`, `roleId`) VALUES(5, 1);
INSERT INTO `roles_user` (`userId`, `roleId`) VALUES(6, 1);
INSERT INTO `roles_user` (`userId`, `roleId`) VALUES(7, 1);
INSERT INTO `roles_user` (`userId`, `roleId`) VALUES(8, 1);
INSERT INTO `roles_user` (`userId`, `roleId`) VALUES(9, 1);
INSERT INTO `roles_user` (`userId`, `roleId`) VALUES(10, 1);
INSERT INTO `roles_user` (`userId`, `roleId`) VALUES(11, 1);
INSERT INTO `roles_user` (`userId`, `roleId`) VALUES(12, 1);
INSERT INTO `roles_user` (`userId`, `roleId`) VALUES(13, 1);
INSERT INTO `roles_user` (`userId`, `roleId`) VALUES(15, 1);
INSERT INTO `roles_user` (`userId`, `roleId`) VALUES(17, 1);
INSERT INTO `roles_user` (`userId`, `roleId`) VALUES(19, 1);
INSERT INTO `roles_user` (`userId`, `roleId`) VALUES(2, 2);

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `id` int UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `createdAt` timestamp NULL DEFAULT NULL,
  `updatedAt` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `remember_token`, `createdAt`, `updatedAt`) VALUES(1, 'Kolya', 'itlutsk@gmail.com', '$2y$10$OzeW79Wh6N78YmPmv20JuepWU4SkrhTaqk7Aa1DqBu.dEGxzLBKym', 'Kx1CimdRBZKADXT8lMJxY2p0Ynu4KKFSIaEjZYPQvwDJ3TvyzQp9vaoNazHq', '2022-03-21 16:55:49', '2022-03-21 16:55:49');
INSERT INTO `users` (`id`, `name`, `email`, `password`, `remember_token`, `createdAt`, `updatedAt`) VALUES(2, 'Ivan', 'none@none.no', '$2y$10$mgU8uAGiNq8.GPDw3QrPs.C9dmIVdMhHubD.jircdABV8vW4b0SSu', 'swELsWV2O3wO1elPXUU5lexRtLeJ7olkPi9ZGNlViblXYbKiEiikrNO2aXrE', '2022-03-25 13:25:28', '2022-03-25 13:25:28');
INSERT INTO `users` (`id`, `name`, `email`, `password`, `remember_token`, `createdAt`, `updatedAt`) VALUES(3, 'Dmytro', 'dmytro@none.no', '$2y$10$zZtBtQsz8nw0beheTd296.yfqrA9ig2Eg78seWdykLuJz//JQGJxS', '7k6aQixhp4PWyVG6CR4P2cfk3AueCTnAAIDi9DfOvaU5j24BymxTyQZYUNUv', '2022-03-27 12:19:10', '2022-03-27 12:19:10');
INSERT INTO `users` (`id`, `name`, `email`, `password`, `remember_token`, `createdAt`, `updatedAt`) VALUES(4, 'Oleksandr', 'oleks@none.no', '$2y$10$cnLhky5JKjy5W4RkUFiKWeU2P/B0sJdeKwERN.vallvgpFtC8mdPq', '2YfXk3lSK1RCwBTDE3EJDtyz04D5Tc9IcR9P693XU23PivFE4eIBhQqYPsfH', '2022-03-27 12:41:29', '2022-03-27 12:41:29');
INSERT INTO `users` (`id`, `name`, `email`, `password`, `remember_token`, `createdAt`, `updatedAt`) VALUES(5, 'Svitlana', 'svitlana@none.no', '$2y$10$4BW0W21AiOpbQlXNtX6V8Ol3pA5jobf5ugfq00.Io54LF6WycS3sm', '0f6QrLXK0gUPlv14NDL3ar7XO4kELcyGHx0xRMGydv2vifi0eZUkj19ys8t3', '2022-03-27 12:44:47', '2022-03-27 12:44:47');
INSERT INTO `users` (`id`, `name`, `email`, `password`, `remember_token`, `createdAt`, `updatedAt`) VALUES(6, 'Olha', 'olha@none.no', '$2y$10$5L01TDYtXQmMWdjnbv4NBu.t1Nntcwj6wXTH2cQpZurHyqY7p9T3e', NULL, '2022-03-27 12:48:15', '2022-03-27 12:48:15');
INSERT INTO `users` (`id`, `name`, `email`, `password`, `remember_token`, `createdAt`, `updatedAt`) VALUES(7, 'Kolya', 'reichert.raheem@stamm.com', '$2y$04$gvY.AcdYgRjQtmPtRcFfnOxhLA50NpbSLdIxprwGkXWn0A8IXq0OG', NULL, '2022-03-28 12:40:29', '2022-03-28 12:40:29');
INSERT INTO `users` (`id`, `name`, `email`, `password`, `remember_token`, `createdAt`, `updatedAt`) VALUES(8, 'Kolya', 'flatley.jamal@zboncak.com', '$2y$04$8N8umvuDXBN0ClJkKBaHlu5CJ2qyjsJao67PU93xYuNh/7wP4xeL6', NULL, '2022-03-28 12:45:49', '2022-03-28 12:45:49');
INSERT INTO `users` (`id`, `name`, `email`, `password`, `remember_token`, `createdAt`, `updatedAt`) VALUES(9, 'Kolya', 'jbrakus@hotmail.com', '$2y$04$iFuhY88FsJwi1cW71Q/vauUd0A7TuuB3q92J76Pglxf/ifECu5o8y', NULL, '2022-03-28 12:46:53', '2022-03-28 12:46:53');
INSERT INTO `users` (`id`, `name`, `email`, `password`, `remember_token`, `createdAt`, `updatedAt`) VALUES(10, 'Kolya', 'kmuller@hand.com', '$2y$04$Qcjl1KamAfcfoBuyh7u53em9BRnoqYxRGpfQp5HoQ6d5.p/CEucPq', NULL, '2022-03-28 12:48:41', '2022-03-28 12:48:41');
INSERT INTO `users` (`id`, `name`, `email`, `password`, `remember_token`, `createdAt`, `updatedAt`) VALUES(11, 'Kolya', 'marks.isom@yahoo.com', '$2y$04$CbDVk2AH.yHe3gsOPW9GhezaJGZHpz8w32FNraaneJ3MFKDZO64EO', NULL, '2022-03-28 12:48:50', '2022-03-28 12:48:50');
INSERT INTO `users` (`id`, `name`, `email`, `password`, `remember_token`, `createdAt`, `updatedAt`) VALUES(12, 'Kolya', 'ojacobi@yahoo.com', '$2y$04$XujMunvSrAiz9NIcl9lNdeReKSi1sHKPrRJzmrQPRyCtzyDBmuJee', NULL, '2022-03-28 12:58:11', '2022-03-28 12:58:11');
INSERT INTO `users` (`id`, `name`, `email`, `password`, `remember_token`, `createdAt`, `updatedAt`) VALUES(13, 'Kolya', 'fausto.green@weimann.org', '$2y$04$yRK7ohDSY1BMAArrwCejweVOt577.A2Z8u4SnADQIxVMOK//PEmtu', NULL, '2022-03-28 13:03:16', '2022-03-28 13:03:16');
INSERT INTO `users` (`id`, `name`, `email`, `password`, `remember_token`, `createdAt`, `updatedAt`) VALUES(14, 'Mortimer Mosciski', 'pschroeder@example.net', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'BYnSIVz0Qy', '2022-03-28 13:04:38', '2022-03-28 13:04:38');
INSERT INTO `users` (`id`, `name`, `email`, `password`, `remember_token`, `createdAt`, `updatedAt`) VALUES(15, 'Kolya', 'tanya68@mills.com', '$2y$04$/ggdhOeI0Z5Pdy.cz/Tile613yOE.jk7pHd14pKMFuNnZmuows6ca', NULL, '2022-03-28 13:04:38', '2022-03-28 13:04:38');
INSERT INTO `users` (`id`, `name`, `email`, `password`, `remember_token`, `createdAt`, `updatedAt`) VALUES(16, 'Prof. Madilyn Aufderhar Jr.', 'hirthe.nico@example.org', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'O6ecVytpQV', '2022-03-28 13:08:55', '2022-03-28 13:08:55');
INSERT INTO `users` (`id`, `name`, `email`, `password`, `remember_token`, `createdAt`, `updatedAt`) VALUES(17, 'Kolya', 'santiago54@bergnaum.info', '$2y$04$ceCg8eTL2uQfMmMlDu0Diek0Dno0A8EU7O4CL4sRh0pM9ypbW6miW', NULL, '2022-03-28 13:08:55', '2022-03-28 13:08:55');
INSERT INTO `users` (`id`, `name`, `email`, `password`, `remember_token`, `createdAt`, `updatedAt`) VALUES(18, 'Breanne Goodwin V', 'mfritsch@example.com', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'tXK9iWmMmj', '2022-03-28 13:09:29', '2022-03-28 13:09:29');
INSERT INTO `users` (`id`, `name`, `email`, `password`, `remember_token`, `createdAt`, `updatedAt`) VALUES(19, 'Kolya', 'rjohnston@gmail.com', '$2y$04$v1hGzBi4jUPc6ZuSXp6Ar.ThnC8TXJg2ivkPOsYMl1GaQ.dpg0IA.', NULL, '2022-03-28 13:09:29', '2022-03-28 13:09:29');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Индексы таблицы `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `posts_userid_foreign` (`userId`);

--
-- Индексы таблицы `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_slug_unique` (`slug`);

--
-- Индексы таблицы `roles_user`
--
ALTER TABLE `roles_user`
  ADD UNIQUE KEY `roles_user_userid_roleid_unique` (`userId`,`roleId`),
  ADD KEY `roles_user_roleid_foreign` (`roleId`);

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT для таблицы `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT для таблицы `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `posts`
--
ALTER TABLE `posts`
  ADD CONSTRAINT `posts_userid_foreign` FOREIGN KEY (`userId`) REFERENCES `users` (`id`);

--
-- Ограничения внешнего ключа таблицы `roles_user`
--
ALTER TABLE `roles_user`
  ADD CONSTRAINT `roles_user_roleid_foreign` FOREIGN KEY (`roleId`) REFERENCES `roles` (`id`),
  ADD CONSTRAINT `roles_user_userid_foreign` FOREIGN KEY (`userId`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
