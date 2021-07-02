-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 02, 2021 at 10:24 AM
-- Server version: 10.4.19-MariaDB
-- PHP Version: 7.3.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `artickles`
--

-- --------------------------------------------------------

--
-- Table structure for table `articles`
--

CREATE TABLE `articles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `articles`
--

INSERT INTO `articles` (`id`, `title`, `body`, `created_at`, `updated_at`) VALUES
(16, 'What is Lorem Ipsum?', '<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>', '2021-07-01 17:25:58', '2021-07-01 17:25:58'),
(17, 'Where does it come from?', '<p>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p><p>The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>', '2021-07-01 17:26:21', '2021-07-01 17:26:21'),
(19, 'Where can I get some?', '<p>There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.</p>', '2021-07-01 17:27:07', '2021-07-01 17:27:07'),
(20, 'Why do we use it?', '<p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</p>', '2021-07-01 17:27:43', '2021-07-01 17:27:43'),
(21, 'Live Class Discussion', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus vel nibh sagittis, sodales magna mollis, sodales dolor. Curabitur vitae mattis mi. Curabitur maximus mi eget neque scelerisque pretium. Morbi consectetur massa a erat maximus, at dapibus felis fringilla. Nam magna lacus, scelerisque eget dapibus non, tempor non lorem. Duis et libero at metus commodo luctus aliquam vitae massa. Aliquam eu interdum arcu. Curabitur at nisi id tortor feugiat volutpat ut et arcu. Duis faucibus tempus purus eu congue. Aliquam pharetra iaculis enim, at lacinia mauris maximus sed. Aenean luctus enim lacus, eu tempus neque congue ut.</p><blockquote><p>Praesent a gravida urna, eu congue enim. Vivamus tempor tortor sit amet malesuada varius. Nullam sollicitudin lacus in lacus aliquam gravida. Proin ipsum justo, suscipit quis mauris id, accumsan pulvinar leo. Cras lacinia venenatis velit, vitae rutrum diam sodales a. Integer ultrices arcu eu velit egestas imperdiet. Nulla id vehicula augue, vitae laoreet nibh. Nam maximus ultrices arcu, id lacinia augue ullamcorper gravida. Pellentesque ac ex aliquam tellus rhoncus molestie eget nec neque. Nulla imperdiet nibh at ligula ornare, fermentum venenatis augue consequat. Aenean malesuada felis quis quam venenatis, vitae imperdiet sapien accumsan. Nunc in hendrerit felis. Vivamus et tincidunt dolor. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi porttitor faucibus quam, eget finibus ante sodales at.</p></blockquote><p>Nunc tempus, augue sit amet ullamcorper accumsan, mauris sem ultrices eros, vitae ornare augue urna ut augue. Aenean elementum, ex et aliquet efficitur, velit purus rhoncus tortor, a commodo risus dolor nec libero. Integer imperdiet libero eget massa vehicula bibendum. Duis fringilla suscipit magna efficitur viverra. Nam erat ante, maximus vitae dolor eget, scelerisque laoreet nibh. Sed pretium nulla dui, blandit tempus magna eleifend ac. Ut congue vehicula ullamcorper. Donec et diam orci. Aliquam dictum quis odio quis iaculis. Quisque in eleifend quam. Nullam rhoncus placerat ullamcorper. Suspendisse non risus eros. Donec non odio consectetur, pulvinar velit in, porta turpis.</p><p><i>Vestibulum nec molestie tortor, nec suscipit ipsum. Nulla in consequat lacus. Sed malesuada consectetur dapibus. Vivamus magna nulla, dictum eu enim in, posuere imperdiet lorem. In non augue in turpis pharetra pharetra. Aliquam non mattis massa. Phasellus in molestie purus. Donec luctus mi massa, eget finibus dui vulputate tristique. Nullam semper in massa non pretium. Nam et risus mattis, pharetra nisi nec, ullamcorper purus. Nullam rutrum sem non dolor vehicula posuere. Mauris dapibus dui est, a lacinia nunc ornare in. Fusce gravida, quam ut ornare fringilla, massa lectus dictum metus, eget iaculis massa nunc sit amet eros. Aenean augue ex, iaculis eu magna at, lacinia auctor libero. Morbi pretium nisi sed nisi fermentum placerat id at urna.</i></p><p>Suspendisse potenti. Pellentesque molestie, eros in finibus viverra, felis sapien tempor mi, quis accumsan leo enim ut sapien. Duis porta mollis tristique. Nam tortor tellus, dignissim sit amet lacinia quis, gravida vestibulum risus. Nulla suscipit, nibh a mollis cursus, arcu sapien eleifend magna, nec elementum ante velit id turpis. Pellentesque feugiat elit convallis nibh tempus, eget tempor lorem eleifend. Vestibulum mattis tortor nunc, id mollis eros volutpat id. Etiam iaculis gravida nibh, et egestas odio maximus et. Maecenas eget eros convallis, semper massa non, vehicula felis. Suspendisse aliquet arcu metus, sed mattis ligula tristique ac. Vivamus maximus eleifend posuere. Fusce feugiat metus semper eros tempor porttitor.</p>', '2021-07-01 21:57:41', '2021-07-01 22:31:28');

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
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2021_06_29_160016_create_articles_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `articles`
--
ALTER TABLE `articles`
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
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

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
-- AUTO_INCREMENT for table `articles`
--
ALTER TABLE `articles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
