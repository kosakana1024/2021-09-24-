-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- ホスト: localhost
-- 生成日時: 2021 年 9 月 23 日 17:30
-- サーバのバージョン： 10.4.21-MariaDB
-- PHP のバージョン: 8.0.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- データベース: `gsacs_d03_07`
--

-- --------------------------------------------------------

--
-- テーブルの構造 `todo_table`
--

CREATE TABLE `todo_table` (
  `id` int(12) NOT NULL,
  `todo` varchar(128) NOT NULL,
  `deadline` date NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- テーブルのデータのダンプ `todo_table`
--

INSERT INTO `todo_table` (`id`, `todo`, `deadline`, `created_at`, `updated_at`) VALUES
(1, 'SQL練習', '2021-09-23', '2021-09-23 17:17:20', '2021-09-23 17:17:20'),
(3, 'PHP練習', '2021-09-11', '2021-09-23 17:20:32', '2021-09-23 17:20:32'),
(4, 'JS練習', '2021-09-24', '2021-09-23 17:21:11', '2021-09-23 17:21:11'),
(5, 'HTML練習', '2021-07-17', '2021-09-23 17:31:05', '2021-09-23 17:31:05'),
(6, 'CSS練習', '2021-07-24', '2021-09-23 17:40:37', '2021-09-23 17:40:37'),
(7, 'API練習', '2021-08-17', '2021-09-23 17:43:34', '2021-09-23 17:43:34'),
(8, 'firebase練習', '2021-08-23', '2021-09-23 17:45:29', '2021-09-23 17:45:29'),
(9, 'localstorage練習', '2021-08-10', '2021-09-23 17:46:31', '2021-09-23 17:46:31'),
(10, 'jsonデータ練習', '2021-08-18', '2021-09-23 17:47:20', '2021-09-23 17:47:20'),
(11, 'function練習', '2021-08-07', '2021-09-23 17:47:57', '2021-09-23 17:47:57'),
(12, 'a', '2021-09-23', '2021-09-23 18:23:11', '2021-09-23 18:23:11'),
(13, 'test', '2021-09-30', '2021-09-23 18:23:56', '2021-09-23 18:23:56'),
(14, 'aa', '2021-09-02', '2021-09-23 18:53:04', '2021-09-23 18:53:04'),
(15, 'aaaaa', '2021-09-04', '2021-09-23 18:53:45', '2021-09-23 18:53:45'),
(16, 'a', '2021-10-24', '2021-09-23 23:41:18', '2021-09-23 23:41:18'),
(17, 'a', '2021-09-25', '2021-09-23 23:54:57', '2021-09-23 23:54:57'),
(18, '関口', '2021-09-04', '2021-09-24 00:25:47', '2021-09-24 00:25:47');

--
-- ダンプしたテーブルのインデックス
--

--
-- テーブルのインデックス `todo_table`
--
ALTER TABLE `todo_table`
  ADD PRIMARY KEY (`id`);

--
-- ダンプしたテーブルの AUTO_INCREMENT
--

--
-- テーブルの AUTO_INCREMENT `todo_table`
--
ALTER TABLE `todo_table`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
