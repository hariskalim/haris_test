-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 29, 2019 at 11:30 AM
-- Server version: 10.4.6-MariaDB
-- PHP Version: 7.1.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mikaels`
--

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
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
(11, '2014_10_12_000000_create_users_table', 1),
(12, '2014_10_12_100000_create_password_resets_table', 1),
(13, '2019_08_19_000000_create_failed_jobs_table', 1),
(14, '2019_10_27_115227_create_posts_table', 1),
(15, '2019_10_27_170238_create_post_comments_table', 1),
(16, '2019_10_27_170713_create_post_likes_table', 1);

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
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `user_id`, `title`, `body`, `created_at`, `updated_at`) VALUES
(1, 1, 'Sint ut voluptatum saepe accusamus.', 'Perferendis neque et enim id eaque eveniet quidem occaecati. Repudiandae eos eum perferendis.', '2019-10-27 15:34:54', '2019-10-27 15:34:54'),
(2, 2, 'Eum et dolor neque molestias debitis deserunt.', 'Quisquam aut consequatur totam non veniam voluptatem. Voluptatibus ea officia iure saepe. Laudantium in at nihil iusto excepturi. Repellat excepturi et nihil quod ut corrupti rerum earum.', '2019-10-27 15:34:54', '2019-10-27 15:34:54'),
(3, 3, 'Et est est qui ea reiciendis.', 'Qui dolorem harum aperiam hic. Illum officiis eos ipsam non quo perspiciatis. Consequatur autem ex natus est soluta alias.', '2019-10-27 15:34:54', '2019-10-27 15:34:54'),
(4, 4, 'Corporis dolor voluptates nulla iste possimus perspiciatis dolorum.', 'In nostrum quasi non consequuntur sit atque numquam sunt. Possimus sed aut saepe aperiam laborum dolore vel laborum. Quasi accusantium non aliquid qui.', '2019-10-27 15:34:54', '2019-10-27 15:34:54'),
(5, 5, 'Exercitationem unde at quia temporibus numquam quam in.', 'Doloribus magni quo fugit qui a. Deleniti quisquam est itaque fugit consequatur.', '2019-10-27 15:34:54', '2019-10-27 15:34:54'),
(6, 6, 'Necessitatibus officia nihil maxime porro nobis voluptatibus.', 'Possimus nemo illo aut laborum illo illum omnis. Consequatur sequi fugit facere et voluptatem vitae. Ab velit molestiae impedit dolorem dolorum iusto. Ut delectus numquam nisi velit perferendis in quod.', '2019-10-27 15:34:54', '2019-10-27 15:34:54'),
(7, 7, 'Molestias est magnam aperiam voluptas reiciendis sunt debitis animi.', 'Tempore provident iure quae eos. Animi et repellendus voluptates saepe.', '2019-10-27 15:34:54', '2019-10-27 15:34:54'),
(8, 8, 'Iste est dicta quaerat voluptates ipsam ullam.', 'Laudantium odio veniam quod laudantium omnis voluptatibus sunt ab. Officiis aperiam harum nobis vitae repudiandae quaerat.', '2019-10-27 15:34:54', '2019-10-27 15:34:54'),
(9, 9, 'Non aut quia aliquam quasi et soluta.', 'Animi quas eligendi nemo nihil. Ab quos facere blanditiis consectetur. Doloremque consequatur ipsa natus aut temporibus expedita quaerat. Mollitia id repudiandae in voluptas minima fuga.', '2019-10-27 15:34:54', '2019-10-27 15:34:54'),
(10, 10, 'Dolor molestias occaecati accusamus assumenda voluptatem.', 'Ratione harum harum et dolorem qui voluptate. Aspernatur aut et vel dolor dignissimos repudiandae hic. Sapiente impedit inventore in. Autem repellat pariatur inventore labore quasi.', '2019-10-27 15:34:54', '2019-10-27 15:34:54'),
(11, 11, 'Exercitationem omnis omnis odio officiis.', 'Aspernatur quia ipsam quia dolores cupiditate illum. Impedit ut aliquam commodi. Nulla eos vel et omnis reiciendis dolores eligendi excepturi.', '2019-10-27 15:34:55', '2019-10-27 15:34:55'),
(12, 12, 'Sunt laborum natus totam et aspernatur eos.', 'Odit vel aspernatur aut sit exercitationem ex dolores. Id sit dolor iste. Aliquid et ex iusto eaque eum eum veritatis accusamus. Similique et debitis quos fugit est error.', '2019-10-27 15:34:55', '2019-10-27 15:34:55'),
(13, 13, 'Natus enim ut ipsum enim.', 'Possimus pariatur nihil ipsa non fuga. Ipsam aut consequatur repellendus delectus illum ullam cupiditate. Dolores neque occaecati numquam nihil. Et vero unde et qui tenetur tempora in.', '2019-10-27 15:34:55', '2019-10-27 15:34:55'),
(14, 14, 'Sit sapiente minima recusandae autem ut.', 'Voluptatibus unde non dolor distinctio sed qui alias molestias. Odio non harum nihil ut totam odio enim. Sunt optio sit repellendus perspiciatis sunt similique. Harum vel ut qui voluptas voluptatem mollitia.', '2019-10-27 15:34:55', '2019-10-27 15:34:55'),
(15, 15, 'Repellendus consequatur et cum accusamus rerum autem ea.', 'Perferendis provident aut eum ut. Enim aut sapiente qui enim. Et optio minus at aut saepe temporibus. Et minima ducimus atque laudantium et sunt.', '2019-10-27 15:34:55', '2019-10-27 15:34:55'),
(16, 16, 'Iste voluptatem rerum provident minima tempore minus.', 'Ut ullam qui consectetur itaque. Adipisci nesciunt ratione dolorem vel enim. Corrupti fuga sunt nihil sunt a ipsa. Aut tempore at quidem qui odit. Consequuntur quaerat eaque qui iste vero non minus.', '2019-10-27 15:34:55', '2019-10-27 15:34:55'),
(17, 17, 'Vitae temporibus veritatis perferendis vitae in praesentium neque.', 'Odio nam qui sed. Commodi voluptas libero quae voluptatem. Et molestias sed commodi dolorem. Tempore aut cum et enim.', '2019-10-27 15:34:55', '2019-10-27 15:34:55'),
(18, 18, 'Aliquid molestiae sit harum quisquam magni et.', 'Quaerat commodi sed consequatur et iusto atque occaecati. Nisi ut quo vitae eveniet. Accusantium omnis beatae dolorum exercitationem suscipit consequatur.', '2019-10-27 15:34:55', '2019-10-27 15:34:55'),
(19, 19, 'Aut quia est enim mollitia autem impedit.', 'Sit illo laborum quis hic. Voluptas vel harum reprehenderit reiciendis nulla. Vel laboriosam deleniti et et molestias. Eveniet sit dolores rerum et sit impedit molestiae.', '2019-10-27 15:34:55', '2019-10-27 15:34:55'),
(20, 20, 'Alias molestiae atque esse modi et praesentium.', 'Quia libero incidunt excepturi quaerat accusantium dolore. Culpa tempora sit maxime odit voluptatem unde provident. Commodi exercitationem dolor quas ut.', '2019-10-27 15:34:55', '2019-10-27 15:34:55'),
(21, 21, 'Tenetur libero autem impedit et possimus et earum.', 'Aut porro similique nisi vitae ut quidem quisquam. Molestiae at mollitia minus molestiae. Culpa nisi corrupti qui ea et. Non ut odio quis est sit at.', '2019-10-27 15:34:55', '2019-10-27 15:34:55'),
(22, 22, 'Molestiae unde tempora doloremque recusandae.', 'Quibusdam consectetur tempora accusamus architecto. Accusamus molestiae ipsum voluptas qui.', '2019-10-27 15:34:55', '2019-10-27 15:34:55'),
(23, 23, 'Odit soluta assumenda quaerat odit tempora.', 'Voluptas sequi corrupti voluptas asperiores quia. Nihil aut commodi et sit omnis. Minima aliquam earum nulla. Sequi et similique in rerum.', '2019-10-27 15:34:55', '2019-10-27 15:34:55'),
(24, 24, 'Eum debitis voluptas culpa laboriosam deserunt.', 'Itaque qui exercitationem assumenda commodi dolore. Voluptatem earum aut et aut cum eaque nihil. Non aut illum iure quia possimus sapiente consequatur. Autem autem vel nulla minima.', '2019-10-27 15:34:55', '2019-10-27 15:34:55'),
(25, 25, 'Corrupti et ipsa asperiores ducimus inventore magni ut.', 'Eligendi doloremque id saepe ut magnam. Enim sed aut voluptas cumque repudiandae aperiam. Illo doloremque nihil sequi qui impedit.', '2019-10-27 15:34:55', '2019-10-27 15:34:55'),
(26, 26, 'Accusantium rerum impedit et ut.', 'Architecto et non cupiditate qui sint. Reprehenderit sit facilis vel. A explicabo vel occaecati aut asperiores dolorem. Accusamus eveniet itaque ut.', '2019-10-27 15:34:55', '2019-10-27 15:34:55'),
(27, 27, 'Ullam ratione dolores recusandae magnam ut est aut.', 'Repellendus dolorum consequuntur iste et. Sequi itaque a laboriosam doloribus ea. Numquam dolore laborum eos numquam nesciunt omnis qui. Consequatur numquam non saepe dolores ut ut id ipsum.', '2019-10-27 15:34:55', '2019-10-27 15:34:55'),
(28, 28, 'Suscipit et modi rerum excepturi cupiditate excepturi ducimus minima.', 'Aut porro inventore corporis ducimus aut dolor. Totam quasi nam fugit ipsam necessitatibus. Voluptatem doloremque dicta impedit eveniet quis. Soluta quam maiores debitis voluptatum quo et.', '2019-10-27 15:34:55', '2019-10-27 15:34:55'),
(29, 29, 'Esse quidem voluptas est dolore at deserunt laborum cum.', 'Facere sequi minus est sunt est. Eaque beatae necessitatibus et omnis voluptatem. Rem vel minus error dicta quas nobis maiores. Ut tenetur ipsum temporibus est natus.', '2019-10-27 15:34:55', '2019-10-27 15:34:55'),
(30, 30, 'Architecto voluptates minus dolorum maiores voluptas.', 'Optio qui soluta est omnis exercitationem corporis totam sint. Non voluptatem quae placeat molestiae aut alias illum consectetur. Et sapiente velit dolor voluptatem quia.', '2019-10-27 15:34:55', '2019-10-27 15:34:55'),
(31, 31, 'Temporibus quia illo facilis sit.', 'Est vero nemo enim quod quo tempore. Odit iste qui qui cupiditate eos ut molestiae. Vel et eveniet dolores qui.', '2019-10-27 15:34:55', '2019-10-27 15:34:55'),
(32, 32, 'Voluptatem esse enim eum consequuntur.', 'Est assumenda molestiae enim et. Quisquam est debitis dolore voluptatum eos a quia. In beatae et inventore. Culpa rem quidem earum cum odio quos.', '2019-10-27 15:34:55', '2019-10-27 15:34:55'),
(33, 33, 'Odio sequi occaecati autem id ut sequi nostrum.', 'Sit animi odio quidem ut. Voluptas dolore accusamus quasi excepturi aliquam. Explicabo placeat dolore praesentium odit modi rem est mollitia.', '2019-10-27 15:34:55', '2019-10-27 15:34:55'),
(34, 34, 'Laboriosam est dicta voluptatem sit ratione.', 'Non nesciunt id error quidem et. Alias sapiente aut quasi fuga quae possimus soluta.', '2019-10-27 15:34:55', '2019-10-27 15:34:55'),
(35, 35, 'Qui vero voluptas et.', 'Sed voluptatum optio vero ipsum consequatur qui deleniti. Maiores quia numquam cumque fuga dolores eveniet. Officia sunt perspiciatis illum est iusto. Sit et non nemo magni quisquam et explicabo eos.', '2019-10-27 15:34:56', '2019-10-27 15:34:56'),
(36, 36, 'Ut enim dignissimos veritatis quae expedita beatae aperiam.', 'Sed omnis incidunt nemo quae officia perferendis. Qui et quas sunt rerum quasi expedita. Et labore minus et perferendis eaque sit dolore.', '2019-10-27 15:34:56', '2019-10-27 15:34:56'),
(37, 37, 'Rerum debitis commodi voluptas rerum voluptate architecto dolorem.', 'Ipsum quidem rerum et qui. Minima molestiae a voluptas qui voluptatibus sapiente aut reprehenderit. Harum voluptatem qui voluptate fuga id id in.', '2019-10-27 15:34:56', '2019-10-27 15:34:56'),
(38, 38, 'Dolores voluptatem est possimus recusandae in dolor esse ut.', 'Consectetur et sint at cupiditate neque. Quo vel ipsum voluptas officiis optio est quia id.', '2019-10-27 15:34:56', '2019-10-27 15:34:56'),
(39, 39, 'Molestias quo laboriosam ab consectetur aut voluptatem maiores.', 'Possimus voluptatem molestiae est voluptatum. Possimus at dicta sit et veniam. Sit non repudiandae quam. Pariatur corrupti cum corporis dolor.', '2019-10-27 15:34:56', '2019-10-27 15:34:56'),
(40, 40, 'Eaque reprehenderit consequatur mollitia nemo non.', 'Quae sed voluptatem hic ullam facere non debitis. Voluptatem velit tempora qui consequatur et. Quasi laudantium voluptates illum cum vero.', '2019-10-27 15:34:56', '2019-10-27 15:34:56'),
(41, 41, 'Rerum est et et quibusdam enim.', 'Deleniti saepe consequatur qui accusantium. Laboriosam perferendis fuga ut explicabo ducimus. Sunt quasi voluptatibus et sunt quasi.', '2019-10-27 15:34:56', '2019-10-27 15:34:56'),
(42, 42, 'Occaecati sunt est quasi velit.', 'Temporibus labore nulla aut ea voluptatibus sit praesentium. Neque perspiciatis eum dolorem molestias aliquid rem est. Omnis inventore blanditiis eligendi modi minima. Quasi aut accusantium quia qui aut beatae veritatis.', '2019-10-27 15:34:56', '2019-10-27 15:34:56'),
(43, 43, 'Nemo nihil in ipsum voluptatem doloremque.', 'Ut officia dolorem quo sapiente exercitationem ut et. Amet quisquam illo odit commodi qui autem aliquid earum. Voluptatem fuga adipisci quia est facere quis consequuntur natus.', '2019-10-27 15:34:56', '2019-10-27 15:34:56'),
(44, 44, 'Voluptatem dolor quam repudiandae modi reprehenderit pariatur aut dolorum.', 'Sed fugit repellendus aut tempore et quaerat. Omnis accusamus est inventore minus fuga rerum fugiat. Dolorum vitae quis unde qui. Nostrum vel blanditiis occaecati. Dolorem occaecati blanditiis itaque nihil aut vero consequatur ea.', '2019-10-27 15:34:56', '2019-10-27 15:34:56'),
(45, 45, 'Non eos distinctio corrupti voluptatem magni.', 'Harum vel consequatur aut. Pariatur fuga fugit eaque laboriosam ratione autem nam. Aut vero commodi sint tempora dolorem.', '2019-10-27 15:34:56', '2019-10-27 15:34:56'),
(46, 46, 'Dolor corporis quo mollitia aliquid hic molestiae quasi.', 'Dicta molestias fuga velit. Consequatur cumque quos vero fugit. Similique nesciunt quia vero.', '2019-10-27 15:34:57', '2019-10-27 15:34:57'),
(47, 47, 'Architecto exercitationem cum enim.', 'Corrupti aut mollitia iure. Blanditiis ea est distinctio repellendus necessitatibus explicabo. Dolore et sint adipisci molestiae.', '2019-10-27 15:34:57', '2019-10-27 15:34:57'),
(48, 48, 'Molestiae delectus aut error nobis mollitia.', 'Consequatur et minima et alias vitae accusantium. Explicabo eos illum nobis et blanditiis laboriosam eaque. Aut enim iusto aut nobis distinctio voluptate. Eos consequuntur omnis harum sed et exercitationem. In aut est voluptas harum fugiat.', '2019-10-27 15:34:57', '2019-10-27 15:34:57'),
(49, 49, 'Omnis est voluptatem officiis voluptate est.', 'Suscipit velit et excepturi. Consequatur et laudantium ipsum dignissimos quis sunt nisi. Id eaque quasi neque quidem beatae voluptatem et. Voluptatem aspernatur amet a quibusdam.', '2019-10-27 15:34:57', '2019-10-27 15:34:57'),
(50, 50, 'Maiores ut voluptatem ut placeat enim.', 'Et est placeat nihil atque eum saepe. Dolore ratione molestiae facilis illum veniam. Et veniam laboriosam omnis aspernatur beatae. Aut aut quia reprehenderit quia non.', '2019-10-27 15:34:57', '2019-10-27 15:34:57'),
(52, 1, 'My second Post', 'Lorem Ipsum Lorem Ipsum Lorem Ipsum', '2019-10-27 16:27:01', '2019-10-27 16:27:01'),
(53, 51, 'ipconfig', 'ipconfig ipconfig', '2019-10-28 16:22:29', '2019-10-28 16:22:29');

-- --------------------------------------------------------

--
-- Table structure for table `post_comments`
--

CREATE TABLE `post_comments` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `post_id` int(10) UNSIGNED NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `post_comments`
--

INSERT INTO `post_comments` (`id`, `user_id`, `post_id`, `body`, `created_at`, `updated_at`) VALUES
(1, 2, 52, 'Lorem ipsum Lorem ipsum Lorem ipsum', '2019-10-27 18:04:41', '2019-10-27 18:04:41'),
(2, 2, 52, 'Lorem ipsum Lorem ipsum Lorem ipsum', '2019-10-27 18:06:05', '2019-10-27 18:06:05'),
(3, 1, 53, 'Live comment', '2019-10-29 03:58:42', '2019-10-29 03:58:42');

-- --------------------------------------------------------

--
-- Table structure for table `post_likes`
--

CREATE TABLE `post_likes` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `post_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `post_likes`
--

INSERT INTO `post_likes` (`id`, `user_id`, `post_id`, `created_at`, `updated_at`) VALUES
(1, 3, 52, '2019-10-27 17:57:18', '2019-10-27 17:57:18'),
(2, 1, 53, '2019-10-29 03:54:32', '2019-10-29 03:54:32');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Alene Stamm DDS', 'mcclure.trey@example.com', '2019-10-27 15:34:51', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '9yPiPHlQFM', '2019-10-27 15:34:51', '2019-10-27 15:34:51'),
(2, 'Dane Schmeler', 'reichert.samir@example.com', '2019-10-27 15:34:51', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '7Xkr7hDluR', '2019-10-27 15:34:51', '2019-10-27 15:34:51'),
(3, 'Daryl Parker II', 'harber.lizeth@example.com', '2019-10-27 15:34:51', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'BOV9maZbEq', '2019-10-27 15:34:51', '2019-10-27 15:34:51'),
(4, 'Prof. Shanelle Hill Sr.', 'klocko.woodrow@example.com', '2019-10-27 15:34:52', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'fYzHOXBpOZ', '2019-10-27 15:34:52', '2019-10-27 15:34:52'),
(5, 'Benny Durgan', 'kuhic.gregorio@example.com', '2019-10-27 15:34:52', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '7SsdM8DpQb', '2019-10-27 15:34:52', '2019-10-27 15:34:52'),
(6, 'Cristina Champlin', 'sid.rohan@example.org', '2019-10-27 15:34:52', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Bn8n3TUhnR', '2019-10-27 15:34:52', '2019-10-27 15:34:52'),
(7, 'Prof. Sigrid Greenfelder DDS', 'doyle.seth@example.com', '2019-10-27 15:34:52', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Oaz0dLePfL', '2019-10-27 15:34:52', '2019-10-27 15:34:52'),
(8, 'Mrs. Pauline Streich', 'vkuhlman@example.org', '2019-10-27 15:34:52', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Pcunrjg4wQ', '2019-10-27 15:34:52', '2019-10-27 15:34:52'),
(9, 'Marilyne Dicki', 'habbott@example.org', '2019-10-27 15:34:52', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '6ufPpW1hl6', '2019-10-27 15:34:52', '2019-10-27 15:34:52'),
(10, 'Asa Daugherty', 'johnny.koepp@example.org', '2019-10-27 15:34:52', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'X6FMPB6tEa', '2019-10-27 15:34:52', '2019-10-27 15:34:52'),
(11, 'Bo Hirthe', 'dhickle@example.net', '2019-10-27 15:34:52', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'h7ibhH742X', '2019-10-27 15:34:52', '2019-10-27 15:34:52'),
(12, 'Chadd Ankunding', 'francis.steuber@example.com', '2019-10-27 15:34:52', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'wkb43WjQuj', '2019-10-27 15:34:52', '2019-10-27 15:34:52'),
(13, 'Ms. Jaqueline Beier', 'marianna77@example.net', '2019-10-27 15:34:52', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '7y2mRWWxpU', '2019-10-27 15:34:52', '2019-10-27 15:34:52'),
(14, 'Harvey Schaefer', 'lulu.kessler@example.com', '2019-10-27 15:34:52', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'xxXiXfQkiF', '2019-10-27 15:34:52', '2019-10-27 15:34:52'),
(15, 'Foster Jacobson', 'barrows.della@example.net', '2019-10-27 15:34:52', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'dSs7oDFP7i', '2019-10-27 15:34:52', '2019-10-27 15:34:52'),
(16, 'Prof. Domingo Ankunding Sr.', 'uharris@example.com', '2019-10-27 15:34:52', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'VIATJcwowq', '2019-10-27 15:34:52', '2019-10-27 15:34:52'),
(17, 'Joan Strosin', 'jayme.kris@example.org', '2019-10-27 15:34:52', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'gROjtcFokw', '2019-10-27 15:34:52', '2019-10-27 15:34:52'),
(18, 'Ona Cruickshank', 'ali.kulas@example.com', '2019-10-27 15:34:52', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'zq9fShZmiT', '2019-10-27 15:34:52', '2019-10-27 15:34:52'),
(19, 'Audrey Wilkinson', 'vconn@example.org', '2019-10-27 15:34:52', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '422biuX70c', '2019-10-27 15:34:52', '2019-10-27 15:34:52'),
(20, 'Jarvis Monahan', 'eturner@example.org', '2019-10-27 15:34:52', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'LwMAoHB50p', '2019-10-27 15:34:52', '2019-10-27 15:34:52'),
(21, 'Miss Layla Weimann', 'joanie40@example.net', '2019-10-27 15:34:52', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'CbYQqCOk2c', '2019-10-27 15:34:52', '2019-10-27 15:34:52'),
(22, 'Prof. Omari Schmidt', 'thaddeus.mayert@example.com', '2019-10-27 15:34:52', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'MOD3BddcNp', '2019-10-27 15:34:52', '2019-10-27 15:34:52'),
(23, 'Joelle Stehr', 'smitham.pietro@example.com', '2019-10-27 15:34:53', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'lD9Iemj7eg', '2019-10-27 15:34:53', '2019-10-27 15:34:53'),
(24, 'Marcelino Casper', 'felicity07@example.org', '2019-10-27 15:34:53', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'PxRRnXTQ01', '2019-10-27 15:34:53', '2019-10-27 15:34:53'),
(25, 'Miss Verdie Funk', 'lizeth52@example.com', '2019-10-27 15:34:53', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '3LXNqwLBK0', '2019-10-27 15:34:53', '2019-10-27 15:34:53'),
(26, 'Annabelle Tillman', 'keebler.chanel@example.com', '2019-10-27 15:34:53', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'IJbJLPdZfi', '2019-10-27 15:34:53', '2019-10-27 15:34:53'),
(27, 'Eileen Bogan', 'richie86@example.net', '2019-10-27 15:34:53', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'iHx3LyEoYU', '2019-10-27 15:34:53', '2019-10-27 15:34:53'),
(28, 'Clarabelle Hayes', 'delmer09@example.net', '2019-10-27 15:34:53', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'hMQzOBJNhY', '2019-10-27 15:34:53', '2019-10-27 15:34:53'),
(29, 'Granville Nikolaus', 'amira50@example.org', '2019-10-27 15:34:53', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '8bhXxgh7gX', '2019-10-27 15:34:53', '2019-10-27 15:34:53'),
(30, 'Jayce Cremin', 'kratke@example.org', '2019-10-27 15:34:53', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '0xmCiN1O9s', '2019-10-27 15:34:53', '2019-10-27 15:34:53'),
(31, 'Ms. Lindsay Fay', 'kolby49@example.net', '2019-10-27 15:34:53', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'GFppahImte', '2019-10-27 15:34:53', '2019-10-27 15:34:53'),
(32, 'Joesph Block', 'allison38@example.net', '2019-10-27 15:34:53', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'CVKsuwHVaB', '2019-10-27 15:34:53', '2019-10-27 15:34:53'),
(33, 'Yesenia Dickens', 'hrice@example.com', '2019-10-27 15:34:53', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'f8FeGJHSCU', '2019-10-27 15:34:53', '2019-10-27 15:34:53'),
(34, 'Matilda Ullrich', 'damaris.corkery@example.com', '2019-10-27 15:34:53', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'jz6VJ3rlKY', '2019-10-27 15:34:53', '2019-10-27 15:34:53'),
(35, 'Prof. Christelle Morissette IV', 'kiehn.tod@example.com', '2019-10-27 15:34:53', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'ZRnfNkpRWT', '2019-10-27 15:34:53', '2019-10-27 15:34:53'),
(36, 'Dr. Tom King', 'mayert.collin@example.com', '2019-10-27 15:34:53', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'GStc75MAtg', '2019-10-27 15:34:53', '2019-10-27 15:34:53'),
(37, 'Lambert Homenick', 'yreilly@example.com', '2019-10-27 15:34:53', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'uLQIAiN3ML', '2019-10-27 15:34:53', '2019-10-27 15:34:53'),
(38, 'Leo Bernier', 'jacey14@example.com', '2019-10-27 15:34:53', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'F27ISW18yF', '2019-10-27 15:34:53', '2019-10-27 15:34:53'),
(39, 'Mrs. Georgette Cole V', 'powlowski.ed@example.org', '2019-10-27 15:34:53', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'xYXAXXB8kD', '2019-10-27 15:34:53', '2019-10-27 15:34:53'),
(40, 'Alfred Torp', 'queen79@example.com', '2019-10-27 15:34:53', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'V5bq97cB0U', '2019-10-27 15:34:53', '2019-10-27 15:34:53'),
(41, 'Jarod Goldner', 'chelsie89@example.com', '2019-10-27 15:34:53', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'HNainWu5WX', '2019-10-27 15:34:53', '2019-10-27 15:34:53'),
(42, 'Shayne Lueilwitz', 'iconnelly@example.net', '2019-10-27 15:34:53', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'EiXdDX1SwR', '2019-10-27 15:34:53', '2019-10-27 15:34:53'),
(43, 'Ms. Angie Rippin I', 'adelbert.stiedemann@example.com', '2019-10-27 15:34:53', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'M1hHvD8Epa', '2019-10-27 15:34:53', '2019-10-27 15:34:53'),
(44, 'Vella Glover', 'gconroy@example.net', '2019-10-27 15:34:54', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'ZZ9GdfQSMQ', '2019-10-27 15:34:54', '2019-10-27 15:34:54'),
(45, 'Ephraim Lebsack', 'ondricka.lucienne@example.com', '2019-10-27 15:34:54', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '4eh5cPAZWU', '2019-10-27 15:34:54', '2019-10-27 15:34:54'),
(46, 'Dudley Hansen DVM', 'predovic.jewel@example.org', '2019-10-27 15:34:54', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'u4gn2FeL24', '2019-10-27 15:34:54', '2019-10-27 15:34:54'),
(47, 'Mr. Tanner Fahey', 'thurman.roob@example.org', '2019-10-27 15:34:54', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'mBZIFobScu', '2019-10-27 15:34:54', '2019-10-27 15:34:54'),
(48, 'Brittany Parisian', 'ewitting@example.org', '2019-10-27 15:34:54', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'WlaFilyKvc', '2019-10-27 15:34:54', '2019-10-27 15:34:54'),
(49, 'Kelvin McKenzie', 'icorwin@example.net', '2019-10-27 15:34:54', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'MhUXejBEMA', '2019-10-27 15:34:54', '2019-10-27 15:34:54'),
(50, 'Deondre Dooley', 'conroy.frieda@example.net', '2019-10-27 15:34:54', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'ahlbdHvGQE', '2019-10-27 15:34:54', '2019-10-27 15:34:54'),
(51, 'test man', 'test@gmail.com', NULL, '$2y$10$hpReGBpPTpFvgGqs71sgq.NzMczEcAsLtRFu5xCcLhIKjzfeT.glO', NULL, '2019-10-28 16:15:28', '2019-10-28 16:15:28');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `posts_user_id_foreign` (`user_id`);

--
-- Indexes for table `post_comments`
--
ALTER TABLE `post_comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `post_comments_user_id_foreign` (`user_id`),
  ADD KEY `post_comments_post_id_foreign` (`post_id`);

--
-- Indexes for table `post_likes`
--
ALTER TABLE `post_likes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `post_likes_user_id_foreign` (`user_id`),
  ADD KEY `post_likes_post_id_foreign` (`post_id`);

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
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT for table `post_comments`
--
ALTER TABLE `post_comments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `post_likes`
--
ALTER TABLE `post_likes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `posts`
--
ALTER TABLE `posts`
  ADD CONSTRAINT `posts_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `post_comments`
--
ALTER TABLE `post_comments`
  ADD CONSTRAINT `post_comments_post_id_foreign` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `post_comments_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `post_likes`
--
ALTER TABLE `post_likes`
  ADD CONSTRAINT `post_likes_post_id_foreign` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `post_likes_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
