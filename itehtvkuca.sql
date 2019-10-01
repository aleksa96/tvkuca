-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 23, 2019 at 02:03 PM
-- Server version: 10.1.31-MariaDB
-- PHP Version: 7.2.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `itehtvkuca`
--

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `approved` tinyint(1) NOT NULL,
  `post_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `name`, `email`, `comment`, `approved`, `post_id`, `created_at`, `updated_at`) VALUES
(15, 'Marko Markovic', 'mika@gmail.com', 'Bio sam prosle godine,prelepo! Poz', 1, 28, '2019-02-23 11:50:12', '2019-02-23 11:50:12'),
(16, 'Stefan', 'stefan.cikarevic96@gmail.com', 'Pozdrav iz Holandije! Dolazim martaa..', 1, 28, '2019-02-23 11:59:14', '2019-02-23 11:59:14'),
(17, 'Miljana', 'miljana.stojkovic966@gmail.com', 'Odlican film!', 1, 27, '2019-02-23 12:00:08', '2019-02-23 12:00:08');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_02_17_123809_create_posts_table', 1),
(4, '2019_02_17_235044_add_user_id_to_posts', 2),
(5, '2019_02_19_113529_add_cover_image_to_posts', 3),
(6, '2019_02_22_210309_create_comments_table', 4);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  `cover_image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `title`, `body`, `created_at`, `updated_at`, `user_id`, `cover_image`) VALUES
(24, 'Ivana Spanovic', '<p>Najbolja srpska atletičarka na mitingu Srbija Open zabeležila najbolji skok sezone (6,92) i drugim na svetskim listama ove godine, &scaron;to je sjajna uvertira za Evropsko dvoransko prvenstvo u Glazgovu, na kojem brani titulu iz Beograda od pre dve godine napravila sjajnu uvertiru za predstojeće Evropsko prvenstvo u dvorani u Glazgovu koje je očekuje već početkom marta.</p>\r\n\r\n<p>- Planirali smo da ovaj takmičarsko-pripremni period pred Evropsko prvenstvo zavr&scaron;imo upravo mitingom u Beogradu, pred domaćom publikom. Vi&scaron;e sam nego zadovoljna svojim nastupima i svim skokovima koje sam izvela - rekla je Ivana &Scaron;panović.</p>\r\n\r\n<p>Najbolji skok ostvarila u trećoj seriji, posle dva prestupa, a potom je jo&scaron; dva puta &quot;letela&quot; do 6,90 metara.</p>\r\n\r\n<p>- Bila je to zaista dobra serija skokova, a jo&scaron; bolje je &scaron;to sam osetila da mogu jo&scaron; dalje da skočim. Bez obzira na ozbiljnost povrede koju sam imala pro&scaron;le godine drago mi je da sam ponovo na stazi i na nivou koji treba da budem pred Evropsko prvenstvo. Radujem se &scaron;to ću biti u prilici da se takmičim u Glazgovu i da se borim za treće uzastopno zlato - poručila je srpska atletičarka, koja je bila najbolja i na Evropskom dvoranskom &scaron;ampionatu u Pragu 2015. godine.</p>\r\n\r\n<p>- Očigledno je da sam spremna i ne bežim od pritiska, znam &scaron;ta treba da uradim i da napravim rezultat koji je dovoljan za pobedu, i da se izjednačim sa Hajke Dreksler koja je jedina u tome uspela!</p>', '2019-02-21 11:12:28', '2019-02-22 15:03:19', 1, 'ivana_1550751148.jpg'),
(26, 'Taksi bluz', '<p>Tokom jedne urnebesne noći, Markova naizgled normalna smena na poslu pretvara se u haos, jer se u taksi vozilo u&scaron;unja mali Damir koji je pobegao iz doma za nezbrinutu decu i koji je u potrazi za ocem.</p>\r\n\r\n<p>Njihova vožnja će se pretvoriti u bezbroj suludih situacija u kojima će učestvovati mno&scaron;tvo likova koji će prodefilovati kroz taksi.</p>\r\n\r\n<p>Glavne uloge u ovoj komičnoj priči, čiji scenario potpisuju Marko Backović i Marko Jocić, tumače Andrija Milo&scaron;ević, Milena Predić, Todor Jovanović, Aleksandra Tomić, Nikola Đuričko, Sergej Trifunović, Boris Milivojević, Boris Komnenić i Nikola Pejaković.</p>\r\n\r\n<p>Direktor fotografije je Luka Milićević, scenografi Sanja Bulat i Katarina Plav&scaron;a, kostimograf Jelena Đorđević, montažer Davor Bosankić, autor muzike Igor Perović.</p>\r\n\r\n<p>Film su producirali &bdquo;Viktorija film&ldquo; i &bdquo;Klan prodak&scaron;n&ldquo;, a producenti su Marko Jocić i Andrija Milo&scaron;ević. Distributer filma je &bdquo;Art vista&ldquo;.</p>', '2019-02-21 11:48:59', '2019-02-22 14:52:44', 1, '2_1550753338.jpg'),
(27, 'Bird Box', '<p>Triler glavnoj ulozi podelio je mi&scaron;ljenje javnosti. Priča u kojoj neviđena čudovi&scaron;ta opsedaju Zemlju, i svakoga ko ih vidi navedu na samoubistvo, za jedne je odlična, za druge već viđena.</p>\r\n\r\n<p>Ako ga jo&scaron; uvek niste pogledali, predstavljamo vam &quot;Bird box&quot;, a pripazite jer nakon trejlera slede&nbsp;<strong>spojleri</strong>!</p>\r\n\r\n<p>Mnogi ovaj film upoređuju sa&nbsp;<strong>&quot;Tihim mestom&quot;,</strong>&nbsp;hororom koji je protekle godine pobrao odlične kritike...</p>\r\n\r\n<p>Ono &scaron;to je ipak zanimalo i one kojima se dopao, i one kojima nije je &ndash; kako izgledaju&nbsp;<strong>čudovi&scaron;ta</strong>&nbsp;i za&scaron;to ih nismo videli?</p>\r\n\r\n<p>Sada su to objasnili, i prikazali, tvorci čudovi&scaron;ta koja su &quot;isečena&quot; u montaži.</p>\r\n\r\n<p>Triler sa&nbsp;<a href=\"http://mondo.rs/tag9699/sandra-bulok/1\">Sandrom Bulok</a>&nbsp;u glavnoj ulozi podelio je mi&scaron;ljenje javnosti. Priča u kojoj neviđena čudovi&scaron;ta opsedaju Zemlju, i svakoga ko ih vidi navedu na samoubistvo, za jedne je odlična, za druge već viđena.</p>\r\n\r\n<p>Ako ga jo&scaron; uvek niste pogledali, predstavljamo vam &quot;Bird box&quot;, a pripazite jer nakon trejlera slede&nbsp;<strong>spojleri</strong>!</p>\r\n\r\n<p>Mnogi ovaj film upoređuju sa&nbsp;<strong>&quot;Tihim mestom&quot;,</strong>&nbsp;hororom koji je protekle godine pobrao odlične kritike.</p>\r\n\r\n<p>Ono &scaron;to je ipak zanimalo i one kojima se dopao, i one kojima nije je &ndash; kako izgledaju&nbsp;<strong>čudovi&scaron;ta</strong>&nbsp;i za&scaron;to ih nismo videli?</p>\r\n\r\n<p>Sada su to objasnili, i prikazali, tvorci čudovi&scaron;ta koja su &quot;isečena&quot; u montaži.</p>\r\n\r\n<p>&quot;Imali smo jezivu viziju maski i &scaron;minke, ali je ideja rediteljke bila ta da se prizor čudovi&scaron;ta svakom liku zasniva na njegovim strahovima. Ako se uzme u obzir činjenica da je Sandra Bulok u filmu trudna, smatrali smo da bi njen strah bio ne&scaron;to nalik uvrnutoj, demonskoj bebi. Napravili smo vi&scaron;e verzija, ali je na kraju ipak odlučeno da čudovi&scaron;ta ne budu prikazana. Ovo je ipak bio veoma zabavan projekat i zato vam pokazujemo kako bi čudovi&scaron;ta izgledala,&quot; objavili su autori maske za film.</p>', '2019-02-22 14:02:47', '2019-02-22 14:58:32', 1, 'birdBox_1550847767.jpg'),
(28, 'Skijanje na Kopaoniku', '<p>Skijanje na Kopaoniku je&nbsp;<strong>omiljena zimska aktivnost</strong>&nbsp;među stranim, ali i domaćim turistima. Ovo je na&scaron;e najveće skijali&scaron;te, koje se poslednjih godina veoma razvilo i postalo ozbiljna konkurencija ski centrima iz regiona. Saznajte sve &scaron;to niste znali o skijanju na Kopaoniku, stazama, gde možete naučiti skijanje i kako funkcioni&scaron;e ceo sistem.</p>\r\n\r\n<p>Kopaonik se može pohvaliti&nbsp;<strong>modernom infrastrukturom</strong>&nbsp;i velikim ulaganjima u razvoj staza, ali i sve &scaron;irom ponudom iz godine u godinu. Mnogi koji prvi put dolaze na skijanje se pla&scaron;e da neće moći da se snađu, jer nisu dobri skija&scaron;i.</p>\r\n\r\n<p>Ipak, na Kopaoniku postoji mnogo ski učitelja, i u prednosti ste, jer ski &scaron;kole imaju pravo prvenstva ulaska na žičare.</p>', '2019-02-22 15:05:05', '2019-02-22 15:05:05', 1, 'skijanje_1550851505.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'pera', 'pera@gmail.com', NULL, '$2y$10$cVvlxugZn.fFUUoVYbv/V.KvuNZdS7UWfaxQ7Ww6Ya3XBxzXlKNxa', 'muHUexUrgZcahQYtsjsFF5c4Q6EzBTRRqhQQPuTvOiR17GSogxb60AgSLbcz', '2019-02-17 22:38:33', '2019-02-17 22:38:33'),
(2, 'mika', 'mika@gmail.com', NULL, '$2y$10$etAKtCOjYksq8UPHtA2VYuXyF9unrFlQtRUMLfjSbNF1afcn.544a', '1qcwvA8Wm39foiWKkmmROKLdO9x3so9VMlP7ni4QCotwBzXQZ6oRak2hdDoB', '2019-02-17 23:20:12', '2019-02-17 23:20:12'),
(3, 'Marko Markovic', 'marko@gmial.ocm', NULL, '$2y$10$ygIiQWXC2n/C3gMRLPvAi.p1/Ah4sG13IU2Ho6t2XeIHih3IGdlGG', 'ZWOFXIDLvE5HAnLoLAIlged5OP2LiiXZMe4r0ms32qVYqrcaTqBdylU6fAfI', '2019-02-20 16:52:19', '2019-02-20 16:52:19');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `comments_post_id_foreign` (`post_id`);

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
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `comments`
--
ALTER TABLE `comments`
  ADD CONSTRAINT `comments_post_id_foreign` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
