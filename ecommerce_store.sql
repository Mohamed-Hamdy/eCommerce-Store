-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 27, 2023 at 05:46 PM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 8.0.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ecommerce_store`
--

-- --------------------------------------------------------

--
-- Table structure for table `cards`
--

CREATE TABLE `cards` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `user_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cards`
--

INSERT INTO `cards` (`id`, `user_email`, `user_id`, `product_id`, `user_name`, `created_at`, `updated_at`) VALUES
(1, 'berenice.becker@zulauf.com', 4, 9, 'Mrs. Aimee Reinger', '2023-07-26 19:51:42', '2023-07-26 19:51:42'),
(2, 'ibins@simonis.org', 7, 2, 'Abel Legros', '2023-07-26 19:51:42', '2023-07-26 19:51:42'),
(3, 'sward@hotmail.com', 8, 2, 'Lilyan Schinner', '2023-07-26 19:51:42', '2023-07-26 19:51:42'),
(4, 'dennis04@zieme.info', 7, 15, 'Benjamin Mayert III', '2023-07-26 19:51:42', '2023-07-26 19:51:42'),
(5, 'alfonso.borer@yahoo.com', 5, 2, 'Ervin Herman', '2023-07-26 19:51:42', '2023-07-26 19:51:42'),
(6, 'kgreenfelder@hotmail.com', 8, 3, 'Dortha Lakin Jr.', '2023-07-26 19:51:42', '2023-07-26 19:51:42'),
(7, 'uemard@mertz.com', 6, 14, 'Prof. Alexis Kiehn', '2023-07-26 19:51:42', '2023-07-26 19:51:42'),
(8, 'nash.dickens@muller.com', 1, 13, 'Owen Rath', '2023-07-26 19:51:42', '2023-07-26 19:51:42'),
(9, 'yrempel@roob.info', 3, 3, 'Prof. Tillman Rowe V', '2023-07-26 19:51:42', '2023-07-26 19:51:42'),
(10, 'emiliano.rutherford@thiel.com', 3, 2, 'Stevie Russel DDS', '2023-07-26 19:51:42', '2023-07-26 19:51:42'),
(11, 'mohamed@example.com', 2, 110, 'Mohamed Hamdy', '2023-07-26 20:17:23', '2023-07-26 20:17:23'),
(12, 'mohamed@example.com', 2, 115, 'Mohamed Hamdy', '2023-07-26 21:08:26', '2023-07-26 21:08:26'),
(13, 'mohamed@example.com', 2, 110, 'Mohamed Hamdy', '2023-07-26 21:10:53', '2023-07-26 21:10:53'),
(14, 'mohamed@example.com', 2, 110, 'Mohamed Hamdy', '2023-07-26 21:11:15', '2023-07-26 21:11:15'),
(15, 'mohamed@example.com', 2, 112, 'Mohamed Hamdy', '2023-07-26 21:12:58', '2023-07-26 21:12:58'),
(16, 'guest@example.com', 10, 110, 'guest', '2023-07-26 21:20:11', '2023-07-26 21:20:11'),
(17, 'guest@example.com', 10, 75, 'guest', '2023-07-26 21:20:20', '2023-07-26 21:20:20'),
(18, 'guest@example.com', 10, 5, 'guest', '2023-07-26 21:20:34', '2023-07-26 21:20:34'),
(19, 'guest@example.com', 10, 118, 'guest', '2023-07-27 13:44:23', '2023-07-27 13:44:23');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2023_07_23_032835_alter_users_table', 2),
(6, '2023_07_23_160134_create_categories_table', 3),
(7, '2023_07_24_022623_create_products_table', 4),
(8, '2023_07_23_160134_create_products_table', 5),
(9, '2023_07_26_205730_create_card_table', 6),
(10, '2023_07_26_215051_create_cards_table', 7);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `category` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `slug`, `image`, `status`, `description`, `category`, `quantity`, `price`, `created_at`, `updated_at`) VALUES
(1, 'Missouri Kuhic', 'Prof. Wilfred Hegmann III', 'https://www.junglescout.com/wp-content/uploads/2021/01/product-photo-water-bottle-hero.png', 1, 'Harry Bradtke', 'Prof. Anya Botsford DDS', 43, 216, '2023-07-24 01:38:59', '2023-07-24 01:38:59'),
(2, 'Montana Leannon', 'Tod Watsica', 'https://www.junglescout.com/wp-content/uploads/2021/01/product-photo-water-bottle-hero.png', 0, 'Dr. Bertrand Volkman', 'Allie D\'Amore', 42, 129, '2023-07-24 01:38:59', '2023-07-24 01:38:59'),
(3, 'Prof. Walton Torphy', 'Prof. Tremaine Heller MD', 'https://www.junglescout.com/wp-content/uploads/2021/01/product-photo-water-bottle-hero.png', 0, 'Dillan Wolf', 'Jayden Haley', 79, 384, '2023-07-24 01:38:59', '2023-07-24 01:38:59'),
(4, 'Westley Cassin', 'Twila Bahringer', 'https://www.junglescout.com/wp-content/uploads/2021/01/product-photo-water-bottle-hero.png', 1, 'Joannie Ziemann', 'Dr. Shana Welch Jr.', 89, 474, '2023-07-24 01:38:59', '2023-07-24 01:38:59'),
(6, 'sq', 'sq', 'https://www.junglescout.com/wp-content/uploads/2021/01/product-photo-water-bottle-hero.png', 1, 'qs', 'qs', 45, 5610, '2023-07-24 17:12:04', '2023-07-24 17:12:04'),
(7, 'www', 'www', 'https://www.junglescout.com/wp-content/uploads/2021/01/product-photo-water-bottle-hero.png', 1, '66', 'ww', 66, 66, '2023-07-24 17:16:24', '2023-07-24 17:16:24'),
(8, 'sa', 'sa', 'https://www.junglescout.com/wp-content/uploads/2021/01/product-photo-water-bottle-hero.png', 1, 'dqfwe', 'lkm', 425, 4521, '2023-07-24 17:18:58', '2023-07-24 17:18:58'),
(9, 'sacasc', 'sacasc', 'https://www.junglescout.com/wp-content/uploads/2021/01/product-photo-water-bottle-hero.png', 1, '516', 'saca', 4545, 156516, '2023-07-24 19:59:00', '2023-07-24 19:59:00'),
(10, 'test123', 'test123', 'https://www.junglescout.com/wp-content/uploads/2021/01/product-photo-water-bottle-hero.png', 1, '561test123', 'test123', 51, 561, '2023-07-24 19:59:58', '2023-07-24 19:59:58'),
(11, 'test124', 'test124', 'https://www.junglescout.com/wp-content/uploads/2021/01/product-photo-water-bottle-hero.png', 1, 'test124test124', 'test124', 45516, 51656, '2023-07-24 20:00:58', '2023-07-24 20:00:58'),
(12, 'tttttttt', 'tttttttt', 'https://www.junglescout.com/wp-content/uploads/2021/01/product-photo-water-bottle-hero.png', 1, 'ttttttttttttt', 'ttttttt', 4545, 454, '2023-07-24 20:06:54', '2023-07-24 20:06:54'),
(13, 'slkam', 'slkam', 'https://www.junglescout.com/wp-content/uploads/2021/01/product-photo-water-bottle-hero.png', 1, '488s', 'lkmlm', 7, 548, '2023-07-24 20:09:02', '2023-07-24 20:09:02'),
(14, '1234546', '1234546', 'https://www.junglescout.com/wp-content/uploads/2021/01/product-photo-water-bottle-hero.png', 1, '1234546', '1234546', 1234546, 1234546, '2023-07-24 20:10:11', '2023-07-24 20:10:11'),
(15, 'sacnkas', 'sacnkas', 'https://www.junglescout.com/wp-content/uploads/2021/01/product-photo-water-bottle-hero.png', 1, 'saascsac', 'kjasncjk', 4545, 4545, '2023-07-26 18:01:28', '2023-07-26 18:01:28'),
(56, 'Zackery Abernathy', 'Dr. Rosa Casper', 'https://www.junglescout.com/wp-content/uploads/2021/01/product-photo-water-bottle-hero.png', 1, 'Eldora Walsh', 'Miss Kaelyn Stokes', 65, 416, '2023-07-26 19:26:14', '2023-07-26 19:26:14'),
(57, 'Mrs. Albina Renner MD', 'Nicola Lakin', 'https://www.junglescout.com/wp-content/uploads/2021/01/product-photo-water-bottle-hero.png', 1, 'Francisca Johnson', 'Miss Tyra Nicolas', 32, 398, '2023-07-26 19:26:14', '2023-07-26 19:26:14'),
(58, 'Prof. Janelle O\'Kon', 'Garnett Cummerata DDS', 'https://www.junglescout.com/wp-content/uploads/2021/01/product-photo-water-bottle-hero.png', 1, 'Sydni Lueilwitz', 'Salvador Smith', 42, 365, '2023-07-26 19:26:14', '2023-07-26 19:26:14'),
(59, 'Francesco Bernhard', 'Ms. Alexanne Price', 'https://www.junglescout.com/wp-content/uploads/2021/01/product-photo-water-bottle-hero.png', 0, 'Rodrick Powlowski', 'Dr. Catalina Kuhlman', 3, 152, '2023-07-26 19:26:14', '2023-07-26 19:26:14'),
(60, 'Liam Crona', 'Hanna Trantow', 'https://www.junglescout.com/wp-content/uploads/2021/01/product-photo-water-bottle-hero.png', 0, 'Arvid Keebler Jr.', 'Rosamond King', 50, 465, '2023-07-26 19:26:14', '2023-07-26 19:26:14'),
(61, 'Ms. Joanne Fadel', 'Chadrick Kub', 'https://www.junglescout.com/wp-content/uploads/2021/01/product-photo-water-bottle-hero.png', 0, 'Drake Abernathy', 'Mr. Marty Lockman DDS', 90, 467, '2023-07-26 19:26:14', '2023-07-26 19:26:14'),
(62, 'Violet Christiansen II', 'Dr. Lukas Zemlak', 'https://www.junglescout.com/wp-content/uploads/2021/01/product-photo-water-bottle-hero.png', 1, 'Eliane Carter', 'Fritz Mitchell', 5, 452, '2023-07-26 19:26:14', '2023-07-26 19:26:14'),
(63, 'Elton Daugherty', 'Mrs. Rose Hand', 'https://www.junglescout.com/wp-content/uploads/2021/01/product-photo-water-bottle-hero.png', 0, 'Demarco Heller', 'Ernestine Howe', 18, 190, '2023-07-26 19:26:14', '2023-07-26 19:26:14'),
(64, 'Maiya Ankunding I', 'Nat Corwin', 'https://www.junglescout.com/wp-content/uploads/2021/01/product-photo-water-bottle-hero.png', 1, 'Burdette Gaylord', 'Miguel Swaniawski', 4, 223, '2023-07-26 19:26:14', '2023-07-26 19:26:14'),
(65, 'Oswaldo VonRueden', 'Emile Schmeler IV', 'https://www.junglescout.com/wp-content/uploads/2021/01/product-photo-water-bottle-hero.png', 0, 'Prof. Deangelo Koss', 'Summer Daugherty', 83, 397, '2023-07-26 19:26:14', '2023-07-26 19:26:14'),
(66, 'Ricky Gislason', 'Mr. Jayme Heller', 'https://www.junglescout.com/wp-content/uploads/2021/01/product-photo-water-bottle-hero.png', 1, 'Onie Bogan IV', 'Royce Leannon', 74, 169, '2023-07-26 19:26:14', '2023-07-26 19:26:14'),
(67, 'Forest Abernathy DVM', 'Miss Naomi Kuhn PhD', 'https://www.junglescout.com/wp-content/uploads/2021/01/product-photo-water-bottle-hero.png', 0, 'Mr. Monty Prohaska', 'Prof. Lisandro Gulgowski PhD', 56, 353, '2023-07-26 19:26:14', '2023-07-26 19:26:14'),
(68, 'Prof. Harrison Block', 'Sophie Volkman II', 'https://www.junglescout.com/wp-content/uploads/2021/01/product-photo-water-bottle-hero.png', 1, 'Kayli Murray Sr.', 'Brando Johnson II', 87, 137, '2023-07-26 19:26:14', '2023-07-26 19:26:14'),
(69, 'Emelie Rowe', 'Delphia Homenick', 'https://www.junglescout.com/wp-content/uploads/2021/01/product-photo-water-bottle-hero.png', 0, 'Quinton Medhurst IV', 'Savannah Kautzer', 6, 227, '2023-07-26 19:26:14', '2023-07-26 19:26:14'),
(70, 'Micaela Lockman', 'Halle Kris', 'https://www.junglescout.com/wp-content/uploads/2021/01/product-photo-water-bottle-hero.png', 1, 'Dr. Jessie Lind MD', 'Harrison Jenkins', 27, 384, '2023-07-26 19:26:14', '2023-07-26 19:26:14'),
(71, 'Jarvis Grady', 'Antonia Conn', 'https://www.junglescout.com/wp-content/uploads/2021/01/product-photo-water-bottle-hero.png', 0, 'Viola Mayert', 'Maria Herman', 40, 298, '2023-07-26 19:26:14', '2023-07-26 19:26:14'),
(72, 'Asa Torp', 'Sonya Torp', 'https://www.junglescout.com/wp-content/uploads/2021/01/product-photo-water-bottle-hero.png', 1, 'Leif Rogahn', 'Keenan Hudson', 25, 277, '2023-07-26 19:26:14', '2023-07-26 19:26:14'),
(73, 'Nash Fritsch', 'Schuyler Schroeder', 'https://www.junglescout.com/wp-content/uploads/2021/01/product-photo-water-bottle-hero.png', 1, 'Otho McLaughlin', 'Miss Theresia Hirthe', 15, 240, '2023-07-26 19:26:15', '2023-07-26 19:26:15'),
(74, 'Willie Berge', 'Gertrude Steuber', 'https://www.junglescout.com/wp-content/uploads/2021/01/product-photo-water-bottle-hero.png', 0, 'Mrs. Kiarra Kreiger DDS', 'Charlie Hilpert IV', 41, 326, '2023-07-26 19:26:15', '2023-07-26 19:26:15'),
(75, 'Irma Fisher', 'Summer Crooks III', 'https://www.junglescout.com/wp-content/uploads/2021/01/product-photo-water-bottle-hero.png', 0, 'Lillian Frami', 'Miss Marcelle Ledner', 98, 307, '2023-07-26 19:26:15', '2023-07-26 19:26:15'),
(76, 'Jacklyn Bogisich', 'Mabelle McGlynn', 'https://www.junglescout.com/wp-content/uploads/2021/01/product-photo-water-bottle-hero.png', 0, 'Eldon Wolff', 'Miss Herta Walker', 74, 470, '2023-07-26 19:26:15', '2023-07-26 19:26:15'),
(77, 'Prof. Rocio Moen Sr.', 'Dr. Yolanda Graham MD', 'https://www.junglescout.com/wp-content/uploads/2021/01/product-photo-water-bottle-hero.png', 1, 'Lolita Herman', 'Mrs. Dana Cormier', 36, 182, '2023-07-26 19:26:15', '2023-07-26 19:26:15'),
(78, 'Federico Murray I', 'Jimmy Padberg', 'https://www.junglescout.com/wp-content/uploads/2021/01/product-photo-water-bottle-hero.png', 0, 'Tod Sauer I', 'Myrtie Boehm', 63, 384, '2023-07-26 19:26:15', '2023-07-26 19:26:15'),
(79, 'Mr. Orlo Klein DDS', 'Janelle Franecki', 'https://www.junglescout.com/wp-content/uploads/2021/01/product-photo-water-bottle-hero.png', 0, 'Ebba Harber IV', 'Molly Huel', 75, 173, '2023-07-26 19:26:15', '2023-07-26 19:26:15'),
(80, 'Prof. Anais Skiles', 'Alena Wintheiser', 'https://www.junglescout.com/wp-content/uploads/2021/01/product-photo-water-bottle-hero.png', 1, 'Beaulah Champlin I', 'Lolita Mertz', 97, 301, '2023-07-26 19:26:15', '2023-07-26 19:26:15'),
(81, 'Marta Mohr', 'Annabelle Funk', 'https://www.junglescout.com/wp-content/uploads/2021/01/product-photo-water-bottle-hero.png', 0, 'Zita Rutherford', 'Dexter Schneider', 8, 135, '2023-07-26 19:26:15', '2023-07-26 19:26:15'),
(82, 'Eldora Nikolaus', 'Prof. Alvis Schneider II', 'https://www.junglescout.com/wp-content/uploads/2021/01/product-photo-water-bottle-hero.png', 1, 'Prof. Emile Larkin Jr.', 'Dion Harris', 9, 149, '2023-07-26 19:26:15', '2023-07-26 19:26:15'),
(83, 'Mrs. Cynthia Schamberger', 'Reed Mohr', 'https://www.junglescout.com/wp-content/uploads/2021/01/product-photo-water-bottle-hero.png', 0, 'Dr. Fausto Nader IV', 'Nona Kemmer', 83, 249, '2023-07-26 19:26:15', '2023-07-26 19:26:15'),
(84, 'Vida Zieme', 'Loma Williamson', 'https://www.junglescout.com/wp-content/uploads/2021/01/product-photo-water-bottle-hero.png', 1, 'Lauryn Witting', 'Dr. Amber Carter', 100, 469, '2023-07-26 19:26:15', '2023-07-26 19:26:15'),
(85, 'Alessia Hickle', 'Dudley Bergnaum', 'https://www.junglescout.com/wp-content/uploads/2021/01/product-photo-water-bottle-hero.png', 1, 'Dr. Guillermo Predovic', 'Eleanora Morissette', 98, 443, '2023-07-26 19:26:15', '2023-07-26 19:26:15'),
(86, 'Nikko Hintz', 'Octavia Denesik', 'https://www.junglescout.com/wp-content/uploads/2021/01/product-photo-water-bottle-hero.png', 1, 'Alexandro Leffler Jr.', 'Johnnie Zboncak', 41, 150, '2023-07-26 19:27:12', '2023-07-26 19:27:12'),
(87, 'Miss Bernadette Pfannerstill IV', 'Jude Daugherty', 'https://www.junglescout.com/wp-content/uploads/2021/01/product-photo-water-bottle-hero.png', 0, 'Elvie Kling', 'Flossie Berge', 10, 175, '2023-07-26 19:27:13', '2023-07-26 19:27:13'),
(88, 'Judge Sauer', 'Mrs. Dorothy Barrows Sr.', 'https://www.junglescout.com/wp-content/uploads/2021/01/product-photo-water-bottle-hero.png', 0, 'Davonte Medhurst', 'Estelle Klocko', 15, 267, '2023-07-26 19:27:13', '2023-07-26 19:27:13'),
(89, 'Birdie Morar', 'Lukas Gleason', 'https://www.junglescout.com/wp-content/uploads/2021/01/product-photo-water-bottle-hero.png', 0, 'Nellie Wisozk Jr.', 'Joanny Ledner', 32, 467, '2023-07-26 19:27:13', '2023-07-26 19:27:13'),
(90, 'Miss Stephany Johnson IV', 'Norris Stokes PhD', 'https://www.junglescout.com/wp-content/uploads/2021/01/product-photo-water-bottle-hero.png', 1, 'Prof. Nellie Dach', 'Prof. Cicero Hackett', 1, 449, '2023-07-26 19:27:13', '2023-07-26 19:27:13'),
(91, 'River Kohler', 'Major Lehner', 'https://www.junglescout.com/wp-content/uploads/2021/01/product-photo-water-bottle-hero.png', 0, 'Jamey Auer', 'Prof. Nash Stiedemann', 78, 397, '2023-07-26 19:27:13', '2023-07-26 19:27:13'),
(92, 'Ervin Kilback Sr.', 'Emerson Rodriguez', 'https://www.junglescout.com/wp-content/uploads/2021/01/product-photo-water-bottle-hero.png', 1, 'Arne Brekke', 'Mrs. Fannie Beahan', 22, 464, '2023-07-26 19:27:13', '2023-07-26 19:27:13'),
(93, 'Henderson Kovacek', 'Meta Stark', 'https://www.junglescout.com/wp-content/uploads/2021/01/product-photo-water-bottle-hero.png', 0, 'Mrs. Verlie Towne V', 'Zoey Armstrong', 4, 448, '2023-07-26 19:27:13', '2023-07-26 19:27:13'),
(94, 'Rick Veum', 'Antonetta Schumm II', 'https://www.junglescout.com/wp-content/uploads/2021/01/product-photo-water-bottle-hero.png', 0, 'Lurline Ferry MD', 'Ryan Littel', 92, 450, '2023-07-26 19:27:13', '2023-07-26 19:27:13'),
(95, 'Mr. Sheldon Weimann III', 'Kitty Hegmann V', 'https://www.junglescout.com/wp-content/uploads/2021/01/product-photo-water-bottle-hero.png', 1, 'Skye Howe', 'Deja DuBuque', 37, 243, '2023-07-26 19:27:13', '2023-07-26 19:27:13'),
(96, 'Myah Botsford', 'Dr. Darrell Luettgen', 'https://www.junglescout.com/wp-content/uploads/2021/01/product-photo-water-bottle-hero.png', 1, 'Kailee Tromp', 'Dr. Estella Swaniawski DDS', 55, 202, '2023-07-26 19:27:13', '2023-07-26 19:27:13'),
(97, 'Mr. Grady Kirlin', 'Prof. Haley Rohan', 'https://www.junglescout.com/wp-content/uploads/2021/01/product-photo-water-bottle-hero.png', 1, 'Prof. Lamar Schneider II', 'Mara Feil IV', 29, 226, '2023-07-26 19:27:13', '2023-07-26 19:27:13'),
(98, 'Leta Fahey', 'Gabriella Towne', 'https://www.junglescout.com/wp-content/uploads/2021/01/product-photo-water-bottle-hero.png', 1, 'Dr. Crawford Hackett', 'Rossie Boyle', 94, 137, '2023-07-26 19:27:13', '2023-07-26 19:27:13'),
(99, 'Edythe Ziemann', 'Orie Yost', 'https://www.junglescout.com/wp-content/uploads/2021/01/product-photo-water-bottle-hero.png', 1, 'Mateo Conroy', 'Kaya Paucek', 36, 356, '2023-07-26 19:27:13', '2023-07-26 19:27:13'),
(100, 'Mr. Akeem Eichmann V', 'Prof. Isaias Zboncak', 'https://www.junglescout.com/wp-content/uploads/2021/01/product-photo-water-bottle-hero.png', 1, 'Gregg Bruen', 'Ms. Matilde Larkin', 31, 385, '2023-07-26 19:27:13', '2023-07-26 19:27:13'),
(101, 'Ebony Bosco', 'Emma Hahn', 'https://www.junglescout.com/wp-content/uploads/2021/01/product-photo-water-bottle-hero.png', 0, 'Daisha Upton', 'Prof. Fannie Quitzon MD', 22, 406, '2023-07-26 19:27:13', '2023-07-26 19:27:13'),
(102, 'Darrion Paucek', 'Ms. Esther Hills', 'https://www.junglescout.com/wp-content/uploads/2021/01/product-photo-water-bottle-hero.png', 0, 'Juston Stamm', 'Annabelle Legros MD', 26, 380, '2023-07-26 19:27:13', '2023-07-26 19:27:13'),
(103, 'Burdette Veum', 'Katherine Weber', 'https://www.junglescout.com/wp-content/uploads/2021/01/product-photo-water-bottle-hero.png', 0, 'Odessa Breitenberg', 'Ryleigh O\'Connell', 20, 434, '2023-07-26 19:27:13', '2023-07-26 19:27:13'),
(104, 'Judson Reinger', 'Dr. Adah Weimann', 'https://www.junglescout.com/wp-content/uploads/2021/01/product-photo-water-bottle-hero.png', 0, 'Ryder Carter', 'Cristina Mueller', 22, 284, '2023-07-26 19:27:13', '2023-07-26 19:27:13'),
(105, 'Prof. Reece Sanford II', 'Stacey Wyman', 'https://www.junglescout.com/wp-content/uploads/2021/01/product-photo-water-bottle-hero.png', 0, 'Jarvis Bechtelar', 'Cory Bahringer', 73, 454, '2023-07-26 19:27:13', '2023-07-26 19:27:13'),
(106, 'Mr. Reginald McClure Sr.', 'Cordell Schaefer', 'https://www.junglescout.com/wp-content/uploads/2021/01/product-photo-water-bottle-hero.png', 0, 'Miss Cayla Wilkinson', 'Ivah Fritsch Sr.', 14, 339, '2023-07-26 19:27:13', '2023-07-26 19:27:13'),
(107, 'Mrs. Erna Lynch', 'Tyrel Bartell I', 'https://www.junglescout.com/wp-content/uploads/2021/01/product-photo-water-bottle-hero.png', 1, 'Ayden Kassulke', 'Vivianne Hamill', 18, 172, '2023-07-26 19:27:13', '2023-07-26 19:27:13'),
(108, 'Harley Schoen', 'Liana Bednar', 'https://www.junglescout.com/wp-content/uploads/2021/01/product-photo-water-bottle-hero.png', 0, 'Carmella Jenkins', 'Austen Schaden', 97, 344, '2023-07-26 19:27:13', '2023-07-26 19:27:13'),
(109, 'Shakira Bins', 'Aida Buckridge', 'https://www.junglescout.com/wp-content/uploads/2021/01/product-photo-water-bottle-hero.png', 1, 'Mr. Enos Carter', 'Mr. Adonis Kertzmann II', 4, 123, '2023-07-26 19:27:13', '2023-07-26 19:27:13'),
(112, 'Wilber Bosco', 'Braeden Schultz DDS', 'https://www.junglescout.com/wp-content/uploads/2021/01/product-photo-water-bottle-hero.png', 0, 'Prof. Carli Zboncak Sr.', 'Estella Goldner', 90, 287, '2023-07-26 19:27:14', '2023-07-26 19:27:14'),
(113, 'Vicky Schimmel V', 'Kevin Feil', 'https://www.junglescout.com/wp-content/uploads/2021/01/product-photo-water-bottle-hero.png', 0, 'Mafalda Kessler', 'Jeremy Schuster', 86, 286, '2023-07-26 19:27:14', '2023-07-26 19:27:14'),
(114, 'Bobbie Kuvalis', 'Gia Schuster Sr.', 'https://www.junglescout.com/wp-content/uploads/2021/01/product-photo-water-bottle-hero.png', 1, 'Jessie Baumbach DVM', 'Prof. Ole Veum Sr.', 81, 140, '2023-07-26 19:27:14', '2023-07-26 19:27:14'),
(115, 'Roxane Dickens', 'Holly Harber', 'https://www.junglescout.com/wp-content/uploads/2021/01/product-photo-water-bottle-hero.png', 1, 'Alivia Hagenes', 'Micah Torp', 2, 246, '2023-07-26 19:27:14', '2023-07-26 19:27:14'),
(116, 'asd', 'asd', 'https://www.junglescout.com/wp-content/uploads/2021/01/product-photo-water-bottle-hero.png', 1, '56asd', 'asd', 651, 156, '2023-07-27 10:51:33', '2023-07-27 10:51:33'),
(117, 'asasc', 'asasc', 'https://www.junglescout.com/wp-content/uploads/2021/01/product-photo-water-bottle-hero.png', 1, 'asascsa', 'sacsac', 651651, 15651, '2023-07-27 10:53:24', '2023-07-27 10:53:24'),
(118, 'sdvs', 'sdvs', 'https://www.junglescout.com/wp-content/uploads/2021/01/product-photo-water-bottle-hero.png', 1, 'sac', 'saasxasxas', 98489, 489, '2023-07-27 10:54:54', '2023-07-27 13:43:09');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role` int(11) NOT NULL DEFAULT 1,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `role`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'admin@example.com', 1, NULL, '$2y$10$OZhP6pM3Y.OIZr1erkowVupKhLzJ2FSOm2eNUQFpTtY1h/.HsNsNS', NULL, '2023-07-23 01:38:49', '2023-07-23 01:38:49'),
(2, 'Mohamed Hamdy', 'mohamed@example.com', 2, NULL, '$2y$10$8Tgow5DsNN1AsvWpd/Oz9.YHDy43ZRItgVsT3TTNv0yfjYaGcHQMK', NULL, '2023-07-23 01:40:29', '2023-07-23 01:40:29'),
(3, 'john', 'john@example.com', 1, NULL, '$2y$10$o9TNs9K5LxogWo4DGG5sLuqycVtRCBJgd8kA2WjgGvy/4tDYa4bqC', NULL, '2023-07-24 11:26:11', '2023-07-24 11:26:11'),
(4, 'test', 'test@example.com', 2, NULL, '$2y$10$3PM5COwSym/4Sl3z/DS4ZOQMyK4EQcccMle6X9lR14wPstBrDIQ1K', NULL, '2023-07-24 11:28:25', '2023-07-24 11:28:25'),
(5, 'john', 'mohamed1@example.com', 2, NULL, '$2y$10$Zxd4n1ZJ4lcCi4twsMeh1uKkyKcETiZLw1YxE95.F9ZKzjUXLm70G', NULL, '2023-07-24 19:46:29', '2023-07-24 19:46:29'),
(6, 'sa', 'mohamed123@example.com', 2, NULL, '$2y$10$/QJDVGMemblx8EAe9IgjOO4o5HLcC6tajO1KUdHzx2xAaX56HkfPu', NULL, '2023-07-24 19:47:24', '2023-07-24 19:47:24'),
(7, 'sax', 'mohamed2121@example.com', 2, NULL, '$2y$10$XMW4Ha4nNIZ4r2x8eLzO2OH5BRMy9IEP5zPjdjVLITTBff.1V/IM6', NULL, '2023-07-24 19:47:47', '2023-07-24 19:47:47'),
(8, 'sacascsacasc', 'mohamedewvrvw@example.com', 2, NULL, '$2y$10$whTS/syCXpdjEFSDA5fjF.C0lrEjjY9PRBiZr8QUci.4unTsKTt12', NULL, '2023-07-24 19:48:16', '2023-07-24 19:48:16'),
(9, 'sa', 'mohamaxaed@example.com', 2, NULL, '$2y$10$tVoshnyAMdZDUPiJJuH5pOWo86OwHw6TSMtm7KwCXbXQ8GXJzxXV2', NULL, '2023-07-24 19:49:35', '2023-07-24 19:49:35'),
(10, 'guest', 'guest@example.com', 2, NULL, '$2y$10$bJmz6mZHKCT3OUzRcXqbE.wYaC1vjjgnE7V1o0glgwoWFOT7240i.', NULL, '2023-07-26 21:19:44', '2023-07-26 21:19:44');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cards`
--
ALTER TABLE `cards`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cards`
--
ALTER TABLE `cards`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=134;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
