-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 19, 2019 at 10:03 AM
-- Server version: 10.1.36-MariaDB
-- PHP Version: 7.2.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `daihatsu_penyu`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `components`
--

CREATE TABLE `components` (
  `id` int(10) UNSIGNED NOT NULL,
  `html_id` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `html_class` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `library_component` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type_component` int(11) NOT NULL,
  `sequence` int(11) NOT NULL DEFAULT '0',
  `grids` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `components`
--

INSERT INTO `components` (`id`, `html_id`, `html_class`, `content`, `library_component`, `type_component`, `sequence`, `grids`, `created_at`, `updated_at`) VALUES
(2, '', '_show-desktop', '{\"src\":\"heading-beranda.png\",\"href\":\"https:\\/\\/wallpapermemory.com\\/uploads\\/200\\/mount-bromo-wallpaper-hd-1920x1200-320096.jpg\"}', '', 4, 1, 1, NULL, NULL),
(3, NULL, '_font-permanent-marker', '{\"type\":\"h2\",\"value\":\"Tentang Penyu\"}', NULL, 2, 1, 2, NULL, NULL),
(4, NULL, NULL, '{\"type\":\"p\",\"value\":\"Penyu merupakan salah satu spesies tertua di bumi. Bentuknya mirip dengan kura-kura, akan tetapi penyu hidup di laut. Semasa hidupnya, penyu lebih lama hidup di laut dan penyu betina hanya akan kembali ke pantai untuk bertelur dalam siklus 2-4 tahun sekali.\"}', NULL, 3, 2, 2, NULL, NULL),
(5, NULL, '_text-center _font-permanent-marker', '{\"type\":\"h2\",\"value\":\"Klasifikasi Penyu\"}', NULL, 2, 1, 3, NULL, NULL),
(6, NULL, '_text-center', '{\"type\":\"p\",\"value\":\"Penyu termasuk ke dalam kelompok reptilian. Memiliki sisik yang keras, bertulang belakang, dan juga bernapas dengan paru-paru.\"}', NULL, 3, 2, 3, NULL, NULL),
(7, NULL, '_font-ubuntu-marker', '{\"type\":\"h4\",\"value\":\"Penyu Lekang\"}', NULL, 2, 1, 5, NULL, NULL),
(8, NULL, NULL, '{\"type\":\"p\",\"value\":\"Penyu merupakan spesies pengembara. Mereka lebih lama hidup di laut dan hanya kembali ke pantai untuk bertelur. Proses perkawinannya pun dilakukan di laut dan hanya sang induk yang akan kembali ke pantai untuk bertelur. Jangan lupa, Penyu juga termasuk ke dalam reptilia dan bernapas dengan paru-paru.\"}', NULL, 3, 2, 5, NULL, NULL),
(9, NULL, '_font-permanent-marker', '{\"type\":\"h2\",\"value\":\"Cara Hidup Penyu\"}', NULL, 2, 1, 6, NULL, NULL),
(10, NULL, NULL, '{\"type\":\"p\",\"value\":\"Penyu merupakan spesies pengembara. Mereka lebih lama hidup di laut dan hanya kembali ke pantai untuk bertelur. Proses perkawinannya pun dilakukan di laut dan hanya sang induk yang akan kembali ke pantai untuk bertelur.\"}', NULL, 3, 2, 6, NULL, NULL),
(11, NULL, '_font-permanent-marker', '{\"type\":\"h2\",\"value\":\"Masa Bertelur Penyu\"}', NULL, 2, 1, 7, NULL, NULL),
(12, NULL, NULL, '{\"type\":\"p\",\"value\":\"Setelah melakukan perkawinan dengan sang jantan di laut, sang induk akan kembali ke pantai setiap 2-3 tahun sekali untuk bertelur. Masa inkubasi telur biasanya terjadi selama 60 hari. Semakin panas suhu udara di sekitar telur, maka semakin cepat proses inkubasi Penyu. Oh iya, jenis kelamin tukik (bayi penyu) juga dapat ditentukan dari suhu udara di sekitar telur. Semakin panas suhu udara, makan akan semakin besar kemungkinan tukik betina yang lahir, begitu pula sebaliknya.\"}', NULL, 3, 2, 7, NULL, NULL),
(13, NULL, '_text-center _font-permanent-marker', '{\"type\":\"h2\",\"value\":\"Fakta Tentang Penyu\"}', NULL, 2, 1, 8, NULL, NULL),
(14, NULL, '_text-center', '{\"type\":\"p\",\"value\":\"Faktanya, di Indonesia terdapat 6 dari 7 spesies penyu yang ada di dunia. Satu jenis penyu yang tidak dapat ditemukan di Indonesia adalah Penyu Lekang Kempi (Kemp’s Ridley). Sayangnya, kini penyu merupakan salah satu spesies yang terancam punah. Perubahan iklim, pembangunan industri, serta peningkatan sampah di laut menyebabkan kehidupan penyu terancam.\"}', NULL, 3, 2, 8, NULL, NULL),
(15, NULL, NULL, '{\"src\":\"section5-beranda.png\"}', NULL, 4, 1, 9, NULL, NULL),
(16, NULL, '_font-permanent-marker', '{\"type\":\"h2\",\"value\":\"Gallery Foto & Video\"}', NULL, 2, 1, 10, NULL, NULL),
(17, 'carouselHome', NULL, '{\"0\":{\"src\":\"penyu-lekang.png\",\"href\":\"https:\\/\\/wallpapermemory.com\\/desktop-backgrounds\\/nature\\/mountain\\/mount-bromo\",\"heading\":\"ksajdhaskd\"},\"1\":{\"src\":\"penyu-pipih.png\",\"href\":\"https:\\/\\/wallpapermemory.com\\/desktop-backgrounds\\/nature\\/mountain\\/mount-bromo\",\"heading\":\"ksajdhaksjdh\"},\"2\":{\"src\":\"penyu-sisik.png\",\"href\":\"https:\\/\\/wallpapermemory.com\\/desktop-backgrounds\\/nature\\/mountain\\/mount-bromo\",\"heading\":\"salmdnc\"}}\r\n', 'bootstrap_carousel_type_1', 1, 1, 11, NULL, NULL),
(18, NULL, NULL, '{\"src\":\"https://youtu.be/R2LQdh42neg\",\"href\":\"https:\\/\\/wallpapermemory.com\\/uploads\\/200\\/mount-bromo-wallpaper-hd-1920x1200-320096.jpg\"}', NULL, 5, 1, 12, NULL, NULL),
(19, NULL, '_font-permanent-marker', '{\"type\":\"h2\",\"value\":\"Wilayah Konservasi\"}', NULL, 2, 1, 13, NULL, NULL),
(20, NULL, NULL, '{\"type\":\"p\",\"value\":\"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus bibendum et dui semper semper. Nulla ut arcu tempor, dictum metus eget, pharetra eros. Suspendisse potenti. Mauris euismod eros vel quam venenatis, nec luctus augue iaculis. Donec cursus accumsan lectus. Cras vitae sapien at metus vulputate volutpat dictum sed leo. Sed laoreet urna erat, eu pretium enim mollis sit amet.\"}', NULL, 3, 2, 13, NULL, NULL),
(21, NULL, '_text-center _font-permanent-marker', '{\"type\":\"h1\",\"value\":\"LATAR BELAKANG TERBENTUKNYA PENYU UNTUK INDONESIA\"}', NULL, 2, 1, 15, NULL, NULL),
(22, NULL, '_font-ubuntu-marker-bold', '{\"type\":\"h2\",\"value\":\"Tentang Penyu Untuk Indonesia\"}', NULL, 2, 1, 16, NULL, NULL),
(23, NULL, NULL, '{\"type\":\"p\",\"value\":\"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus bibendum et dui semper semper. Nulla ut arcu tempor, dictum metus eget, pharetra eros. Suspendisse potenti. Mauris euismod eros vel quam venenatis, nec luctus augue iaculis. Donec cursus accumsan lectus. Cras vitae sapien at metus vulputate volutpat dictum sed leo. Sed laoreet urna erat, eu pretium enim mollis sit amet.\"}', NULL, 3, 2, 16, NULL, NULL),
(24, NULL, '_font-ubuntu-marker-bold', '{\"type\":\"h2\",\"value\":\"Ranah Kegiatan\"}', NULL, 2, 3, 16, NULL, NULL),
(25, NULL, NULL, '{\"type\":\"p\",\"value\":\"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus bibendum et dui semper semper. Nulla ut arcu tempor, dictum metus eget, pharetra eros. Suspendisse potenti. Mauris euismod eros vel quam venenatis, nec luctus augue iaculis. Donec cursus accumsan lectus. Cras vitae sapien at metus vulputate volutpat dictum sed leo. Sed laoreet urna erat, eu pretium enim mollis sit amet.\"}', NULL, 3, 4, 16, NULL, NULL),
(26, NULL, NULL, '{\"src\":\"tentang-penyu.png\"}', NULL, 4, 1, 17, NULL, NULL),
(27, NULL, '_text-center _font-permanent-marker', '{\"type\":\"h2\",\"value\":\"TUJUAN DIBENTUKNYA PENYU UNTUK INDONESIA\"}', NULL, 2, 1, 18, NULL, NULL),
(28, NULL, NULL, '{\"type\":\"p\",\"value\":\"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus bibendum et dui semper semper. Nulla ut arcu tempor, dictum metus eget, pharetra eros. Suspendisse potenti. Mauris euismod eros vel quam venenatis, nec luctus augue iaculis. Donec cursus accumsan lectus. Cras vitae sapien at metus vulputate volutpat dictum sed leo. Sed laoreet urna erat, eu pretium enim mollis sit amet.\"}', NULL, 3, 2, 18, NULL, NULL),
(29, NULL, '_font-ubuntu-marker-bold', '{\"type\":\"h2\",\"value\":\"Pencapaian Kami\"}', NULL, 2, 1, 19, NULL, NULL),
(30, NULL, NULL, '{\"type\":\"p\",\"value\":\"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus bibendum et dui semper semper. Nulla ut arcu tempor, dictum metus eget, pharetra eros. Suspendisse potenti. Mauris euismod eros vel quam venenatis, nec luctus augue iaculis. Donec cursus accumsan lectus. Cras vitae sapien at metus vulputate volutpat dictum sed leo. Sed laoreet urna erat, eu pretium enim mollis sit amet.\"}', NULL, 3, 2, 19, NULL, NULL),
(31, NULL, '_text-center _font-ubuntu-marker-bold', '{\"type\":\"h2\",\"value\":\"Update Berita\"}', NULL, 2, 1, 20, NULL, NULL),
(32, 'carouselHome', NULL, '{\"0\":{\"src\":\"slider-1.png\",\"href\":\"https:\\/\\/wallpapermemory.com\\/desktop-backgrounds\\/nature\\/mountain\\/mount-bromo\",\"heading\":\"This is Heading\",\"description\":\"This is description lorem ipsum dolor sit amet\"},\"1\":{\"src\":\"slider-1.png\",\"href\":\"https:\\/\\/wallpapermemory.com\\/desktop-backgrounds\\/nature\\/mountain\\/mount-bromo\",\"heading\":\"This is Heading\",\"description\":\"This is description lorem ipsum dolor sit amet\"},\"2\":{\"src\":\"slider-1.png\",\"href\":\"https:\\/\\/wallpapermemory.com\\/desktop-backgrounds\\/nature\\/mountain\\/mount-bromo\",\"heading\":\"This is Heading\",\"description\":\"This is description lorem ipsum dolor sit amet\"}}', 'bootstrap_carousel_type_3', 1, 2, 20, NULL, NULL),
(33, NULL, '_text-center _font-ubuntu-marker-bold', '{\"type\":\"h2\",\"value\":\"MEDIA\"}', NULL, 2, 1, 21, NULL, NULL),
(35, NULL, NULL, '{\"type\":\"p\",\"value\":\"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus bibendum et dui semper semper. Nulla ut arcu tempor, dictum metus eget, pharetra eros. Suspendisse potenti. Mauris euismod eros vel quam venenatis, nec luctus augue iaculis. Donec cursus accumsan lectus. Cras vitae sapien at metus vulputate volutpat dictum sed leo. Sed laoreet urna erat, eu pretium enim mollis sit amet.\"}', NULL, 3, 2, 21, NULL, NULL),
(36, 'sliderHome', NULL, '{\"0\":{\"src\":\"penyu-lekang.png\",\"heading\":\"This is Heading1\",\"description\":\"This is description lorem ipsum dolor sit amet\"},\"1\":{\"src\":\"penyu-pipih.png\",\"heading\":\"This is Heading2\",\"description\":\"This is description lorem ipsum dolor sit amet\"},\"2\":{\"src\":\"penyu-sisik.png\",\"heading\":\"This is Heading3\",\"description\":\"This is description lorem ipsum dolor sit amet\"},\"3\":{\"src\":\"penyu-tempayan.png\",\"heading\":\"This is Heading4\",\"description\":\"This is description lorem ipsum dolor sit amet\"},\"4\":{\"src\":\"penyu-kemps-ridley.png\",\"heading\":\"This is Heading5\",\"description\":\"This is description lorem ipsum dolor sit amet\"}}', 'slider-3', 6, 1, 22, NULL, NULL),
(37, NULL, '_padding-10 _image-konservasi-grid', '{\"src\":\"konservasi-bali.png\"}', NULL, 4, 1, 33, NULL, '0000-00-00 00:00:00'),
(38, NULL, '_font-permanent-marker _konservasi-kami-content', '{\"type\":\"h2\",\"value\":\"KONSERVASI PENYU\"}\r\n', NULL, 2, 1, 34, NULL, NULL),
(39, NULL, NULL, '{\"type\":\"p\",\"value\":\"Bali\"}', NULL, 3, 2, 34, NULL, NULL),
(40, NULL, '_konservasi-kami-description', '{\"type\":\"p\",\"value\":\"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus bibendum et dui semper semper. Nulla ut arcu tempor, dictum metus eget, pharetra eros. Suspendisse potenti. Mauris euismod eros vel quam venenatis, nec luctus augue iaculis. Donec cursus accumsan lectus. Cras vitae sapien at metus vulputate volutpat dictum sed leo. Sed laoreet urna erat, eu pretium enim mollis sit amet.\"}', NULL, 3, 3, 34, NULL, NULL),
(41, NULL, '', '{\"href\":\"konservasi-kami/detail\",\"value\":\"Details\"}', NULL, 7, 4, 34, NULL, NULL),
(42, NULL, '_font-permanent-marker _konservasi-kami-content', '{\"type\":\"h2\",\"value\":\"KONSERVASI PENYU PASIR JAMBAK\"}\r\n', NULL, 2, 1, 35, NULL, NULL),
(43, NULL, NULL, '{\"type\":\"p\",\"value\":\"Padang\"}\r\n', NULL, 3, 2, 35, NULL, NULL),
(44, NULL, '_konservasi-kami-description', '{\"type\":\"p\",\"value\":\"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus bibendum et dui semper semper. Nulla ut arcu tempor, dictum metus eget, pharetra eros. Suspendisse potenti. Mauris euismod eros vel quam venenatis, nec luctus augue iaculis. Donec cursus accumsan lectus. Cras vitae sapien at metus vulputate volutpat dictum sed leo. Sed laoreet urna erat, eu pretium enim mollis sit amet.\"}\r\n', NULL, 3, 3, 35, NULL, NULL),
(45, NULL, NULL, '{\"href\":\"konservasi-kami/detail\",\"value\":\"Details\"}', NULL, 7, 4, 35, NULL, NULL),
(46, NULL, '_padding-10 _image-konservasi-grid', '{\"src\":\"konservasi-padang.png\"}', NULL, 4, 1, 36, NULL, NULL),
(47, NULL, '_padding-10 _image-konservasi-grid', '{\"src\":\"konservasi-pangandaran.png\"}', NULL, 4, 1, 37, NULL, NULL),
(48, NULL, '_font-permanent-marker _konservasi-kami-content', '{\"type\":\"h2\",\"value\":\"KONSERVASI PENYU BATU HIU\"}', NULL, 2, 1, 38, NULL, NULL),
(49, NULL, NULL, '{\"type\":\"p\",\"value\":\"Pangandaran\"}', NULL, 3, 2, 38, NULL, NULL),
(50, NULL, '_konservasi-kami-description', '{\"type\":\"p\",\"value\":\"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus bibendum et dui semper semper. Nulla ut arcu tempor, dictum metus eget, pharetra eros. Suspendisse potenti. Mauris euismod eros vel quam venenatis, nec luctus augue iaculis. Donec cursus accumsan lectus. Cras vitae sapien at metus vulputate volutpat dictum sed leo. Sed laoreet urna erat, eu pretium enim mollis sit amet.\"}', NULL, 3, 3, 38, NULL, NULL),
(51, NULL, NULL, '{\"href\":\"konservasi-kami/detail\",\"value\":\"Details\"}', NULL, 7, 4, 38, NULL, NULL),
(52, NULL, '_font-permanent-marker _konservasi-kami-content', '{\"type\":\"h2\",\"value\":\"KONSERVASI PENYU PULAU PRAMUKA\"}\r\n', NULL, 2, 1, 39, NULL, NULL),
(53, NULL, NULL, '{\"type\":\"p\",\"value\":\"Kepulauan Seribu\"}\r\n', NULL, 3, 2, 39, NULL, NULL),
(54, NULL, '_konservasi-kami-description', '{\"type\":\"p\",\"value\":\"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus bibendum et dui semper semper. Nulla ut arcu tempor, dictum metus eget, pharetra eros. Suspendisse potenti. Mauris euismod eros vel quam venenatis, nec luctus augue iaculis. Donec cursus accumsan lectus. Cras vitae sapien at metus vulputate volutpat dictum sed leo. Sed laoreet urna erat, eu pretium enim mollis sit amet.\"}\r\n', NULL, 3, 3, 39, NULL, NULL),
(55, NULL, NULL, '{\"href\":\"konservasi-kami/detail\",\"value\":\"Details\"}', NULL, 7, 4, 39, NULL, NULL),
(56, NULL, '_padding-10 _image-konservasi-grid', '{\"src\":\"konservasi-pulau-pramuka.png\"}', NULL, 4, 1, 40, NULL, NULL),
(57, NULL, NULL, '{\"src\":\"slider-1.png\",\"href\":\"https:\\/\\/wallpapermemory.com\\/uploads\\/200\\/mount-bromo-wallpaper-hd-1920x1200-320096.jpg\"}', NULL, 4, 1, 41, NULL, NULL),
(58, NULL, '_font-ubuntu-marker-bold', '{\"type\":\"h2\",\"value\":\"Sosialisasi\"}\r\n', NULL, 2, 1, 42, NULL, NULL),
(59, NULL, '_icon-alignment _font-ubuntu-marker-bold', '{\"type\":\"h3\",\"value\":\"<i class=\'fa fa-map-marker\'></i>Lokasi\"}\r\n', NULL, 2, 1, 43, NULL, NULL),
(60, NULL, NULL, '{\"type\":\"p\",\"value\":\"Lorem ipsum dolor sit amet, consectetur adipiscing elit.\"}\r\n', NULL, 3, 2, 43, NULL, NULL),
(61, NULL, '_icon-alignment _font-ubuntu-marker-bold', '{\"type\":\"h3\",\"value\":\"<i class=\'fa fa-clock-o\'></i>Waktu\"}\r\n', NULL, 2, 1, 44, NULL, NULL),
(62, NULL, NULL, '{\"type\":\"p\",\"value\":\"Lorem ipsum dolor sit amet.\"}\r\n', NULL, 3, 2, 44, NULL, NULL),
(63, NULL, '_icon-alignment _font-ubuntu-marker-bold', '{\"type\":\"h3\",\"value\":\"<i class=\'fa fa-bullseye\'></i>Target\"}\r\n', NULL, 2, 1, 45, NULL, NULL),
(64, NULL, NULL, '{\"type\":\"p\",\"value\":\"Lorem ipsum dolor sit amet, consectetur\"}\r\n', NULL, 3, 2, 45, NULL, NULL),
(65, NULL, '_font-ubuntu-marker-bold', '{\"type\":\"h2\",\"value\":\"Materi\"}\r\n', NULL, 2, 1, 46, NULL, NULL),
(66, NULL, NULL, '{\"type\":\"p\",\"value\":\"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus bibendum et dui semper semper. Nulla ut arcu tempor, dictum metus eget, pharetra eros. Suspendisse potenti. Mauris euismod eros vel quam venenatis, nec luctus augue iaculis. Donec cursus accumsan lectus. Cras vitae sapien at metus vulputate volutpat dictum sed leo. Sed laoreet urna erat, eu pretium enim mollis sit amet.\"}\r\n', NULL, 3, 2, 46, NULL, NULL),
(67, NULL, '_font-ubuntu-marker-bold', '{\"type\":\"h2\",\"value\":\"Dokumentasi\"}\r\n', NULL, 2, 1, 47, NULL, NULL),
(68, 'carousel-1', '', '{\"0\":{\"src\":\"slider-1.png\",\"href\":\"https:\\/\\/wallpapermemory.com\\/desktop-backgrounds\\/nature\\/mountain\\/mount-bromo\",\"heading\":\"This is Heading\",\"description\":\"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam vitae tellus a odio interdum ullamcorper. Suspendisse tempor vitae leo nec porta. Vestibulum fermentum lectus non faucibus condimentum. Cras pulvinar finibus massa ut mollis. Fusce fermentum porta viverra. Proin sed semper dui. Morbi tempor commodo ex. Proin sodales odio quam, ac luctus leo vestibulum in. Sed convallis tempor pharetra. Proin imperdiet nisl et nunc ullamcorper euismod. Vivamus laoreet elit id tincidunt imperdiet.\"},\"1\":{\"src\":\"slider-1.png\",\"href\":\"https:\\/\\/wallpapermemory.com\\/desktop-backgrounds\\/nature\\/mountain\\/mount-bromo\",\"heading\":\"This is Heading\",\"description\":\"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam vitae tellus a odio interdum ullamcorper. Suspendisse tempor vitae leo nec porta. Vestibulum fermentum lectus non faucibus condimentum. Cras pulvinar finibus massa ut mollis. Fusce fermentum porta viverra. Proin sed semper dui. Morbi tempor commodo ex. Proin sodales odio quam, ac luctus leo vestibulum in. Sed convallis tempor pharetra. Proin imperdiet nisl et nunc ullamcorper euismod. Vivamus laoreet elit id tincidunt imperdiet.\"},\"2\":{\"src\":\"slider-1.png\",\"href\":\"https:\\/\\/wallpapermemory.com\\/desktop-backgrounds\\/nature\\/mountain\\/mount-bromo\",\"heading\":\"This is Heading\",\"description\":\"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam vitae tellus a odio interdum ullamcorper. Suspendisse tempor vitae leo nec porta. Vestibulum fermentum lectus non faucibus condimentum. Cras pulvinar finibus massa ut mollis. Fusce fermentum porta viverra. Proin sed semper dui. Morbi tempor commodo ex. Proin sodales odio quam, ac luctus leo vestibulum in. Sed convallis tempor pharetra. Proin imperdiet nisl et nunc ullamcorper euismod. Vivamus laoreet elit id tincidunt imperdiet.\"}}', 'bootstrap_carousel_type_3', 1, 2, 47, NULL, NULL),
(69, NULL, '_font-ubuntu-marker-bold', '{\"type\":\"h2\",\"value\":\"Penyelamatan Penyu\"}\r\n', NULL, 2, 1, 48, NULL, NULL),
(70, NULL, '_icon-alignment _font-ubuntu-marker-bold', '{\"type\":\"h3\",\"value\":\"<i class=\'fa fa-map-marker\'></i>Lokasi\"}\r\n', NULL, 2, 1, 49, NULL, NULL),
(71, NULL, NULL, '{\"type\":\"p\",\"value\":\"Lorem ipsum dolor sit amet, consectetur adipiscing elit.\"}\r\n', NULL, 3, 2, 49, NULL, NULL),
(72, NULL, '_icon-alignment _font-ubuntu-marker-bold', '{\"type\":\"h3\",\"value\":\"<i class=\'fa fa-clock-o\'></i>Waktu\"}\r\n', NULL, 2, 1, 50, NULL, NULL),
(73, NULL, NULL, '{\"type\":\"p\",\"value\":\"Lorem ipsum dolor sit amet,\"}\r\n', NULL, 3, 2, 50, NULL, NULL),
(74, NULL, '_font-ubuntu-marker-bold', '{\"type\":\"h2\",\"value\":\"Jumlah penyu dan jumlah telur yang diselamatkan\"}\r\n', NULL, 2, 1, 51, NULL, NULL),
(75, NULL, NULL, '{\"type\":\"p\",\"value\":\"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus bibendum et dui semper semper. Nulla ut arcu tempor, dictum metus eget, pharetra eros. Suspendisse potenti. Mauris euismod eros vel quam venenatis, nec luctus augue iaculis. Donec cursus accumsan lectus. Cras vitae sapien at metus vulputate volutpat dictum sed leo. Sed laoreet urna erat, eu pretium enim mollis sit amet.\"}\r\n', NULL, 3, 2, 51, NULL, NULL),
(76, NULL, '_font-ubuntu-marker-bold', '{\"type\":\"h2\",\"value\":\"Dokumentasi\"}\r\n', NULL, 2, 1, 52, NULL, NULL),
(77, 'carousel-2', NULL, '{\"0\":{\"src\":\"slider-1.png\",\"href\":\"https:\\/\\/wallpapermemory.com\\/desktop-backgrounds\\/nature\\/mountain\\/mount-bromo\",\"heading\":\"This is Heading\",\"description\":\"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam vitae tellus a odio interdum ullamcorper. Suspendisse tempor vitae leo nec porta. Vestibulum fermentum lectus non faucibus condimentum. Cras pulvinar finibus massa ut mollis. Fusce fermentum porta viverra. Proin sed semper dui. Morbi tempor commodo ex. Proin sodales odio quam, ac luctus leo vestibulum in. Sed convallis tempor pharetra. Proin imperdiet nisl et nunc ullamcorper euismod. Vivamus laoreet elit id tincidunt imperdiet.\"},\"1\":{\"src\":\"slider-1.png\",\"href\":\"https:\\/\\/wallpapermemory.com\\/desktop-backgrounds\\/nature\\/mountain\\/mount-bromo\",\"heading\":\"This is Heading\",\"description\":\"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam vitae tellus a odio interdum ullamcorper. Suspendisse tempor vitae leo nec porta. Vestibulum fermentum lectus non faucibus condimentum. Cras pulvinar finibus massa ut mollis. Fusce fermentum porta viverra. Proin sed semper dui. Morbi tempor commodo ex. Proin sodales odio quam, ac luctus leo vestibulum in. Sed convallis tempor pharetra. Proin imperdiet nisl et nunc ullamcorper euismod. Vivamus laoreet elit id tincidunt imperdiet.\"},\"2\":{\"src\":\"slider-1.png\",\"href\":\"https:\\/\\/wallpapermemory.com\\/desktop-backgrounds\\/nature\\/mountain\\/mount-bromo\",\"heading\":\"This is Heading\",\"description\":\"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam vitae tellus a odio interdum ullamcorper. Suspendisse tempor vitae leo nec porta. Vestibulum fermentum lectus non faucibus condimentum. Cras pulvinar finibus massa ut mollis. Fusce fermentum porta viverra. Proin sed semper dui. Morbi tempor commodo ex. Proin sodales odio quam, ac luctus leo vestibulum in. Sed convallis tempor pharetra. Proin imperdiet nisl et nunc ullamcorper euismod. Vivamus laoreet elit id tincidunt imperdiet.\"}}', 'bootstrap_carousel_type_3', 1, 2, 52, NULL, NULL),
(78, NULL, '_font-ubuntu-marker-bold', '{\"type\":\"h2\",\"value\":\"Pembesaran tukik<br><br>\"}', NULL, 2, 1, 53, NULL, NULL),
(79, NULL, '_font-ubuntu-marker-bold', '{\"type\":\"h3\",\"value\":\"Pemberian makanan tukik\"}', NULL, 2, 2, 53, NULL, NULL),
(80, NULL, NULL, '{\"type\":\"p\",\"value\":\"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus bibendum et dui semper semper. Nulla ut arcu tempor, dictum metus eget, pharetra eros. Suspendisse potenti. Mauris euismod eros vel quam venenatis, nec luctus augue iaculis. Donec cursus accumsan lectus. Cras vitae sapien at metus vulputate volutpat dictum sed leo. Sed laoreet urna erat, eu pretium enim mollis sit amet.\"}', NULL, 3, 3, 53, NULL, NULL),
(81, NULL, '_font-ubuntu-marker-bold', '{\"type\":\"h2\",\"value\":\"Monitoring Perkembangan ukuran tukik\"}', NULL, 2, 1, 54, NULL, NULL),
(82, NULL, NULL, '{\"type\":\"p\",\"value\":\"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus bibendum et dui semper semper. Nulla ut arcu tempor, dictum metus eget, pharetra eros. Suspendisse potenti. Mauris euismod eros vel quam venenatis, nec luctus augue iaculis.\"}', NULL, 3, 2, 54, NULL, NULL),
(83, 'sliderHome', NULL, '{\"0\":{\"src\":\"slider-1.png\",\"href\":\"https:\\/\\/wallpapermemory.com\\/desktop-backgrounds\\/nature\\/mountain\\/mount-bromo\",\"heading\":\"This is Heading\",\"description\":\"This is description lorem ipsum dolor sit amet\"},\"1\":{\"src\":\"_DSC6951.JPG\",\"href\":\"https:\\/\\/wallpapermemory.com\\/desktop-backgrounds\\/nature\\/mountain\\/mount-bromo\",\"heading\":\"This is Heading 2\",\"description\":\"This is description lorem ipsum dolor sit amet\"},\"2\":{\"src\":\"_DSC6927.JPG\",\"href\":\"https:\\/\\/wallpapermemory.com\\/desktop-backgrounds\\/nature\\/mountain\\/mount-bromo\",\"heading\":\"This is Heading 3\",\"description\":\"This is description lorem ipsum dolor sit amet\"}}', 'slider-2', 6, 1, 55, NULL, NULL),
(84, NULL, '_font-ubuntu-marker-bold', '{\"type\":\"h2\",\"value\":\"Dokumentasi\"}', NULL, 2, 1, 56, NULL, NULL),
(85, 'carousel-3', NULL, '{\"0\":{\"src\":\"slider-1.png\",\"href\":\"https:\\/\\/wallpapermemory.com\\/desktop-backgrounds\\/nature\\/mountain\\/mount-bromo\",\"heading\":\"This is Heading\",\"description\":\"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam vitae tellus a odio interdum ullamcorper. Suspendisse tempor vitae leo nec porta. Vestibulum fermentum lectus non faucibus condimentum. Cras pulvinar finibus massa ut mollis. Fusce fermentum porta viverra. Proin sed semper dui. Morbi tempor commodo ex. Proin sodales odio quam, ac luctus leo vestibulum in. Sed convallis tempor pharetra. Proin imperdiet nisl et nunc ullamcorper euismod. Vivamus laoreet elit id tincidunt imperdiet.\"},\"1\":{\"src\":\"slider-1.png\",\"href\":\"https:\\/\\/wallpapermemory.com\\/desktop-backgrounds\\/nature\\/mountain\\/mount-bromo\",\"heading\":\"This is Heading\",\"description\":\"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam vitae tellus a odio interdum ullamcorper. Suspendisse tempor vitae leo nec porta. Vestibulum fermentum lectus non faucibus condimentum. Cras pulvinar finibus massa ut mollis. Fusce fermentum porta viverra. Proin sed semper dui. Morbi tempor commodo ex. Proin sodales odio quam, ac luctus leo vestibulum in. Sed convallis tempor pharetra. Proin imperdiet nisl et nunc ullamcorper euismod. Vivamus laoreet elit id tincidunt imperdiet.\"},\"2\":{\"src\":\"slider-1.png\",\"href\":\"https:\\/\\/wallpapermemory.com\\/desktop-backgrounds\\/nature\\/mountain\\/mount-bromo\",\"heading\":\"This is Heading\",\"description\":\"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam vitae tellus a odio interdum ullamcorper. Suspendisse tempor vitae leo nec porta. Vestibulum fermentum lectus non faucibus condimentum. Cras pulvinar finibus massa ut mollis. Fusce fermentum porta viverra. Proin sed semper dui. Morbi tempor commodo ex. Proin sodales odio quam, ac luctus leo vestibulum in. Sed convallis tempor pharetra. Proin imperdiet nisl et nunc ullamcorper euismod. Vivamus laoreet elit id tincidunt imperdiet.\"}}', 'bootstrap_carousel_type_3', 1, 2, 56, NULL, NULL),
(86, NULL, '_font-ubuntu-marker-bold', '{\"type\":\"h2\",\"value\":\"Pelepasliaran Tukik\"}', NULL, 2, 1, 57, NULL, NULL),
(87, NULL, '_icon-alignment _font-ubuntu-marker-bold', '{\"type\":\"h3\",\"value\":\"<i class=\'fa fa-map-marker\'></i>Lokasi\"}', NULL, 2, 1, 58, NULL, NULL),
(88, NULL, NULL, '{\"type\":\"p\",\"value\":\"Lorem ipsum dolor sit amet, consectetur adipiscing elit.\"}', NULL, 3, 2, 58, NULL, NULL),
(89, NULL, '_icon-alignment _font-ubuntu-marker-bold', '{\"type\":\"h3\",\"value\":\"<i class=\'fa fa-clock-o\'></i>Waktu\"}', NULL, 2, 1, 59, NULL, NULL),
(90, NULL, NULL, '{\"type\":\"p\",\"value\":\"Lorem ipsum dolor sit amet,\"}', NULL, 3, 2, 59, NULL, NULL),
(91, NULL, '_font-ubuntu-marker-bold', '{\"type\":\"h2\",\"value\":\"Kegiatan, jenis penyu yang dilepaskan, jumlah penyu yang dilepaskan\"}', NULL, 2, 1, 60, NULL, NULL),
(92, NULL, NULL, '{\"type\":\"p\",\"value\":\"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus bibendum et dui semper semper. Nulla ut arcu tempor, dictum metus eget, pharetra eros. Suspendisse potenti. Mauris euismod eros vel quam venenatis, nec luctus augue iaculis. Donec cursus accumsan lectus. Cras vitae sapien at metus vulputate volutpat dictum sed leo. Sed laoreet urna erat, eu pretium enim mollis sit amet.\"}', NULL, 3, 2, 60, NULL, NULL),
(93, NULL, '_font-ubuntu-marker-bold', '{\"type\":\"h2\",\"value\":\"Dokumentasi\"}\r\n', NULL, 2, 1, 61, NULL, NULL),
(94, 'carousel-4', NULL, '{\"0\":{\"src\":\"slider-1.png\",\"href\":\"https:\\/\\/wallpapermemory.com\\/desktop-backgrounds\\/nature\\/mountain\\/mount-bromo\",\"heading\":\"This is Heading\",\"description\":\"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam vitae tellus a odio interdum ullamcorper. Suspendisse tempor vitae leo nec porta. Vestibulum fermentum lectus non faucibus condimentum. Cras pulvinar finibus massa ut mollis. Fusce fermentum porta viverra. Proin sed semper dui. Morbi tempor commodo ex. Proin sodales odio quam, ac luctus leo vestibulum in. Sed convallis tempor pharetra. Proin imperdiet nisl et nunc ullamcorper euismod. Vivamus laoreet elit id tincidunt imperdiet.\"},\"1\":{\"src\":\"slider-1.png\",\"href\":\"https:\\/\\/wallpapermemory.com\\/desktop-backgrounds\\/nature\\/mountain\\/mount-bromo\",\"heading\":\"This is Heading\",\"description\":\"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam vitae tellus a odio interdum ullamcorper. Suspendisse tempor vitae leo nec porta. Vestibulum fermentum lectus non faucibus condimentum. Cras pulvinar finibus massa ut mollis. Fusce fermentum porta viverra. Proin sed semper dui. Morbi tempor commodo ex. Proin sodales odio quam, ac luctus leo vestibulum in. Sed convallis tempor pharetra. Proin imperdiet nisl et nunc ullamcorper euismod. Vivamus laoreet elit id tincidunt imperdiet.\"},\"2\":{\"src\":\"slider-1.png\",\"href\":\"https:\\/\\/wallpapermemory.com\\/desktop-backgrounds\\/nature\\/mountain\\/mount-bromo\",\"heading\":\"This is Heading\",\"description\":\"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam vitae tellus a odio interdum ullamcorper. Suspendisse tempor vitae leo nec porta. Vestibulum fermentum lectus non faucibus condimentum. Cras pulvinar finibus massa ut mollis. Fusce fermentum porta viverra. Proin sed semper dui. Morbi tempor commodo ex. Proin sodales odio quam, ac luctus leo vestibulum in. Sed convallis tempor pharetra. Proin imperdiet nisl et nunc ullamcorper euismod. Vivamus laoreet elit id tincidunt imperdiet.\"}}', 'bootstrap_carousel_type_3', 1, 2, 61, NULL, NULL),
(95, NULL, '_font-ubuntu-marker-bold', '{\"type\":\"h2\",\"value\":\"Pembersihan Pantai\"}', NULL, 2, 1, 62, NULL, NULL),
(96, NULL, '_icon-alignment _font-ubuntu-marker-bold', '{\"type\":\"h3\",\"value\":\"<i class=\'fa fa-map-marker\'></i>Lokasi\"}', NULL, 2, 1, 63, NULL, NULL),
(97, NULL, NULL, '{\"type\":\"p\",\"value\":\"Lorem ipsum dolor sit amet, consectetur adipiscing elit.\"}', NULL, 3, 2, 63, NULL, NULL),
(98, NULL, '_icon-alignment _font-ubuntu-marker-bold', '{\"type\":\"h3\",\"value\":\"<i class=\'fa fa-clock-o\'></i>Waktu\"}', NULL, 2, 1, 64, NULL, NULL),
(99, NULL, NULL, '{\"type\":\"p\",\"value\":\"Lorem ipsum dolor sit amet,\"}', NULL, 3, 2, 64, NULL, NULL),
(100, NULL, '_font-ubuntu-marker-bold', '{\"type\":\"h2\",\"value\":\"Dokumentasi\"}', NULL, 2, 1, 65, NULL, NULL),
(101, 'carousel-5', NULL, '{\"0\":{\"src\":\"slider-1.png\",\"href\":\"https:\\/\\/wallpapermemory.com\\/desktop-backgrounds\\/nature\\/mountain\\/mount-bromo\",\"heading\":\"This is Heading\",\"description\":\"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam vitae tellus a odio interdum ullamcorper. Suspendisse tempor vitae leo nec porta. Vestibulum fermentum lectus non faucibus condimentum. Cras pulvinar finibus massa ut mollis. Fusce fermentum porta viverra. Proin sed semper dui. Morbi tempor commodo ex. Proin sodales odio quam, ac luctus leo vestibulum in. Sed convallis tempor pharetra. Proin imperdiet nisl et nunc ullamcorper euismod. Vivamus laoreet elit id tincidunt imperdiet.\"},\"1\":{\"src\":\"slider-1.png\",\"href\":\"https:\\/\\/wallpapermemory.com\\/desktop-backgrounds\\/nature\\/mountain\\/mount-bromo\",\"heading\":\"This is Heading\",\"description\":\"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam vitae tellus a odio interdum ullamcorper. Suspendisse tempor vitae leo nec porta. Vestibulum fermentum lectus non faucibus condimentum. Cras pulvinar finibus massa ut mollis. Fusce fermentum porta viverra. Proin sed semper dui. Morbi tempor commodo ex. Proin sodales odio quam, ac luctus leo vestibulum in. Sed convallis tempor pharetra. Proin imperdiet nisl et nunc ullamcorper euismod. Vivamus laoreet elit id tincidunt imperdiet.\"},\"2\":{\"src\":\"slider-1.png\",\"href\":\"https:\\/\\/wallpapermemory.com\\/desktop-backgrounds\\/nature\\/mountain\\/mount-bromo\",\"heading\":\"This is Heading\",\"description\":\"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam vitae tellus a odio interdum ullamcorper. Suspendisse tempor vitae leo nec porta. Vestibulum fermentum lectus non faucibus condimentum. Cras pulvinar finibus massa ut mollis. Fusce fermentum porta viverra. Proin sed semper dui. Morbi tempor commodo ex. Proin sodales odio quam, ac luctus leo vestibulum in. Sed convallis tempor pharetra. Proin imperdiet nisl et nunc ullamcorper euismod. Vivamus laoreet elit id tincidunt imperdiet.\"}}', 'bootstrap_carousel_type_3', 1, 2, 65, NULL, NULL),
(102, NULL, '_font-ubuntu-marker-bold', '{\"type\":\"h2\",\"value\":\"Kegiatan Lain\"}\r\n', NULL, 2, 1, 66, NULL, NULL),
(103, 'carousel-6', NULL, '{\"0\":{\"src\":\"slider-1.png\",\"href\":\"https:\\/\\/wallpapermemory.com\\/desktop-backgrounds\\/nature\\/mountain\\/mount-bromo\",\"heading\":\"This is Heading\",\"description\":\"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam vitae tellus a odio interdum ullamcorper. Suspendisse tempor vitae leo nec porta. Vestibulum fermentum lectus non faucibus condimentum. Cras pulvinar finibus massa ut mollis. Fusce fermentum porta viverra. Proin sed semper dui. Morbi tempor commodo ex. Proin sodales odio quam, ac luctus leo vestibulum in. Sed convallis tempor pharetra. Proin imperdiet nisl et nunc ullamcorper euismod. Vivamus laoreet elit id tincidunt imperdiet.\"},\"1\":{\"src\":\"slider-1.png\",\"href\":\"https:\\/\\/wallpapermemory.com\\/desktop-backgrounds\\/nature\\/mountain\\/mount-bromo\",\"heading\":\"This is Heading\",\"description\":\"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam vitae tellus a odio interdum ullamcorper. Suspendisse tempor vitae leo nec porta. Vestibulum fermentum lectus non faucibus condimentum. Cras pulvinar finibus massa ut mollis. Fusce fermentum porta viverra. Proin sed semper dui. Morbi tempor commodo ex. Proin sodales odio quam, ac luctus leo vestibulum in. Sed convallis tempor pharetra. Proin imperdiet nisl et nunc ullamcorper euismod. Vivamus laoreet elit id tincidunt imperdiet.\"},\"2\":{\"src\":\"slider-1.png\",\"href\":\"https:\\/\\/wallpapermemory.com\\/desktop-backgrounds\\/nature\\/mountain\\/mount-bromo\",\"heading\":\"This is Heading\",\"description\":\"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam vitae tellus a odio interdum ullamcorper. Suspendisse tempor vitae leo nec porta. Vestibulum fermentum lectus non faucibus condimentum. Cras pulvinar finibus massa ut mollis. Fusce fermentum porta viverra. Proin sed semper dui. Morbi tempor commodo ex. Proin sodales odio quam, ac luctus leo vestibulum in. Sed convallis tempor pharetra. Proin imperdiet nisl et nunc ullamcorper euismod. Vivamus laoreet elit id tincidunt imperdiet.\"}}', 'bootstrap_carousel_type_3', 1, 2, 66, NULL, NULL),
(104, 'sliderHome', '', '{\"0\":{\"src\":\"slider-1.png\",\"href\":\"https:\\/\\/wallpapermemory.com\\/desktop-backgrounds\\/nature\\/mountain\\/mount-bromo\",\"heading\":\"Bali\",\"description\":\"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus bibendum et dui semper semper. Nulla ut arcu tempor, dictum metus eget, pharetra eros. Suspendisse potenti. Mauris euismod eros vel quam venenatis, nec luctus augue iaculis. Donec cursus accumsan lectus. Cras vitae sapien at metus vulputate volutpat dictum sed leo. Sed laoreet urna erat, eu pretium enim mollis sit amet.\"},\"1\":{\"src\":\"_DSC6951.JPG\",\"href\":\"https:\\/\\/wallpapermemory.com\\/desktop-backgrounds\\/nature\\/mountain\\/mount-bromo\",\"heading\":\"Parancak\",\"description\":\"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus bibendum et dui semper semper. Nulla ut arcu tempor, dictum metus eget, pharetra eros. Suspendisse potenti. Mauris euismod eros vel quam venenatis, nec luctus augue iaculis. Donec cursus accumsan lectus. Cras vitae sapien at metus vulputate volutpat dictum sed leo. Sed laoreet urna erat, eu pretium enim mollis sit amet.\"},\"2\":{\"src\":\"_DSC6927.JPG\",\"href\":\"https:\\/\\/wallpapermemory.com\\/desktop-backgrounds\\/nature\\/mountain\\/mount-bromo\",\"heading\":\"Padang\",\"description\":\"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus bibendum et dui semper semper. Nulla ut arcu tempor, dictum metus eget, pharetra eros. Suspendisse potenti. Mauris euismod eros vel quam venenatis, nec luctus augue iaculis. Donec cursus accumsan lectus. Cras vitae sapien at metus vulputate volutpat dictum sed leo. Sed laoreet urna erat, eu pretium enim mollis sit amet.\"},\"3\":{\"src\":\"_DSC6927.JPG\",\"href\":\"https:\\/\\/wallpapermemory.com\\/desktop-backgrounds\\/nature\\/mountain\\/mount-bromo\",\"heading\":\"Pulau Pramuka\",\"description\":\"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus bibendum et dui semper semper. Nulla ut arcu tempor, dictum metus eget, pharetra eros. Suspendisse potenti. Mauris euismod eros vel quam venenatis, nec luctus augue iaculis. Donec cursus accumsan lectus. Cras vitae sapien at metus vulputate volutpat dictum sed leo. Sed laoreet urna erat, eu pretium enim mollis sit amet.\"}}', 'slider-4', 6, 1, 67, NULL, NULL),
(105, NULL, '_font-permanent-marker _padding-10 _image-lokasi-head', '{\"type\":\"h2\",\"value\":\"KONSERVASI PENYU\"}', NULL, 2, 1, 68, NULL, NULL),
(106, NULL, NULL, '{\"type\":\"p\",\"value\":\"Bali\"}', NULL, 3, 2, 68, NULL, NULL),
(107, NULL, '_description', '{\"type\":\"p\",\"value\":\"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus bibendum et dui semper semper. Nulla ut arcu tempor, dictum metus eget, pharetra eros. Suspendisse potenti. Mauris euismod eros vel quam venenatis, nec luctus augue iaculis. Donec cursus accumsan lectus. Cras vitae sapien at metus vulputate volutpat dictum sed leo. Sed laoreet urna erat, eu pretium enim mollis sit amet.\"}', NULL, 3, 3, 68, NULL, NULL),
(108, NULL, NULL, '{\"src\":\"_DSC5965.JPG\",\"href\":\"https:\\/\\/wallpapermemory.com\\/uploads\\/200\\/mount-bromo-wallpaper-hd-1920x1200-320096.jpg\"}', NULL, 4, 4, 68, NULL, NULL),
(109, NULL, NULL, '{\"src\":\"https:\\/\\/wallpapermemory.com\\/uploads\\/200\\/mount-bromo-wallpaper-hd-1920x1200-320096.jpg\",\"href\":\"https:\\/\\/wallpapermemory.com\\/uploads\\/200\\/mount-bromo-wallpaper-hd-1920x1200-320096.jpg\"}', NULL, 4, 1, 69, NULL, NULL),
(110, NULL, '_font-ubuntu-marker-bold', '{\"type\":\"h3\",\"value\":\"(Lokasi konservasi)\"}', NULL, 2, 1, 70, NULL, NULL),
(111, NULL, NULL, '{\"type\":\"p\",\"value\":\"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus bibendum et dui semper semper. Nulla ut arcu tempor, dictum metus eget, pharetra eros. Suspendisse potenti. Mauris euismod eros vel quam venenatis, nec luctus augue iaculis. Donec cursus accumsan lectus. Cras vitae sapien at metus vulputate volutpat dictum sed leo. Sed laoreet urna erat, eu pretium enim mollis sit amet.\"}', NULL, 3, 2, 70, NULL, NULL),
(112, NULL, '_font-ubuntu-marker-bold', '{\"type\":\"h3\",\"value\":\"(Lokasi konservasi)\"}', NULL, 2, 1, 71, NULL, NULL),
(113, NULL, NULL, '{\"type\":\"p\",\"value\":\"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus bibendum et dui semper semper. Nulla ut arcu tempor, dictum metus eget, pharetra eros. Suspendisse potenti. Mauris euismod eros vel quam venenatis, nec luctus augue iaculis. Donec cursus accumsan lectus. Cras vitae sapien at metus vulputate volutpat dictum sed leo. Sed laoreet urna erat, eu pretium enim mollis sit amet.\"}', NULL, 3, 1, 71, NULL, NULL),
(114, NULL, NULL, '{\"src\":\"https:\\/\\/wallpapermemory.com\\/uploads\\/200\\/mount-bromo-wallpaper-hd-1920x1200-320096.jpg\",\"href\":\"https:\\/\\/wallpapermemory.com\\/uploads\\/200\\/mount-bromo-wallpaper-hd-1920x1200-320096.jpg\"}', NULL, 4, 1, 72, NULL, NULL),
(115, NULL, NULL, '{\"src\":\"https:\\/\\/wallpapermemory.com\\/uploads\\/200\\/mount-bromo-wallpaper-hd-1920x1200-320096.jpg\",\"href\":\"https:\\/\\/wallpapermemory.com\\/uploads\\/200\\/mount-bromo-wallpaper-hd-1920x1200-320096.jpg\"}', NULL, 4, 1, 73, NULL, NULL),
(116, NULL, '_font-ubuntu-marker-bold', '{\"type\":\"h3\",\"value\":\"(Lokasi konservasi)\"}', NULL, 2, 1, 74, NULL, NULL),
(117, NULL, NULL, '{\"type\":\"p\",\"value\":\"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus bibendum et dui semper semper. Nulla ut arcu tempor, dictum metus eget, pharetra eros. Suspendisse potenti. Mauris euismod eros vel quam venenatis, nec luctus augue iaculis. Donec cursus accumsan lectus. Cras vitae sapien at metus vulputate volutpat dictum sed leo. Sed laoreet urna erat, eu pretium enim mollis sit amet.\"}', NULL, 3, 2, 74, NULL, NULL),
(118, NULL, '_font-ubuntu-marker-bold', '{\"type\":\"h3\",\"value\":\"(Lokasi konservasi)\"}', NULL, 2, 1, 75, NULL, NULL),
(119, NULL, NULL, '{\"type\":\"p\",\"value\":\"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus bibendum et dui semper semper. Nulla ut arcu tempor, dictum metus eget, pharetra eros. Suspendisse potenti. Mauris euismod eros vel quam venenatis, nec luctus augue iaculis. Donec cursus accumsan lectus. Cras vitae sapien at metus vulputate volutpat dictum sed leo. Sed laoreet urna erat, eu pretium enim mollis sit amet.\"}', NULL, 3, 2, 75, NULL, NULL),
(120, NULL, NULL, '{\"src\":\"https:\\/\\/wallpapermemory.com\\/uploads\\/200\\/mount-bromo-wallpaper-hd-1920x1200-320096.jpg\",\"href\":\"https:\\/\\/wallpapermemory.com\\/uploads\\/200\\/mount-bromo-wallpaper-hd-1920x1200-320096.jpg\"}', NULL, 4, 1, 76, NULL, NULL),
(121, 'sliderHome', NULL, '{\"0\":{\"src\":\"slider-1.png\",\"href\":\"https:\\/\\/wallpapermemory.com\\/desktop-backgrounds\\/nature\\/mountain\\/mount-bromo\",\"heading\":\"This is Heading\",\"description\":\"This is description lorem ipsum dolor sit amet\"},\"1\":{\"src\":\"_DSC6951.JPG\",\"href\":\"https:\\/\\/wallpapermemory.com\\/desktop-backgrounds\\/nature\\/mountain\\/mount-bromo\",\"heading\":\"This is Heading 2\",\"description\":\"This is description lorem ipsum dolor sit amet\"},\"2\":{\"src\":\"_DSC6927.JPG\",\"href\":\"https:\\/\\/wallpapermemory.com\\/desktop-backgrounds\\/nature\\/mountain\\/mount-bromo\",\"heading\":\"This is Heading 3\",\"description\":\"This is description lorem ipsum dolor sit amet\"}}', 'slider-2', 6, 1, 77, NULL, NULL),
(122, NULL, '', '{\"src\":\"IMG-20180327-WA0003.jpg\",\"href\":\"https:\\/\\/wallpapermemory.com\\/uploads\\/200\\/mount-bromo-wallpaper-hd-1920x1200-320096.jpg\"}', NULL, 4, 5, 30, NULL, NULL),
(123, NULL, NULL, '{\"src\":\"_DSC5965.JPG\",\"href\":\"https:\\/\\/wallpapermemory.com\\/uploads\\/200\\/mount-bromo-wallpaper-hd-1920x1200-320096.jpg\"}', NULL, 4, 1, 30, NULL, NULL),
(124, NULL, '_galery-video', '{\"src\":\"https://youtu.be/R2LQdh42neg\",\"href\":\"https:\\/\\/wallpapermemory.com\\/uploads\\/200\\/mount-bromo-wallpaper-hd-1920x1200-320096.jpg\"}', NULL, 5, 1, 31, NULL, NULL),
(125, NULL, '_galery-video', '{\"src\":\"https://youtu.be/R2LQdh42neg\",\"href\":\"https:\\/\\/wallpapermemory.com\\/uploads\\/200\\/mount-bromo-wallpaper-hd-1920x1200-320096.jpg\"}', NULL, 5, 2, 31, NULL, NULL),
(126, NULL, '_padding-10 _gradient', '{\"src\":\"IMG-20180327-WA0010.jpg\",\"href\":\"https:\\/\\/wallpapermemory.com\\/uploads\\/200\\/mount-bromo-wallpaper-hd-1920x1200-320096.jpg\",\"title\":\"This is fucking title\",\"additional\":[\"Selengkapnya\",\"Viewers\",\"This is date\"]}', NULL, 12, 1, 27, NULL, NULL),
(127, NULL, '_padding-10 _gradient', '{\"src\":\"IMG-20180327-WA0010.jpg\",\"href\":\"https:\\/\\/wallpapermemory.com\\/uploads\\/200\\/mount-bromo-wallpaper-hd-1920x1200-320096.jpg\",\"title\":\"This is fucking title\",\"additional\":[\"This is fucking additional text\"]}', '', 12, 1, 28, NULL, NULL),
(128, NULL, '_padding-10 _gradient', '{\"src\":\"IMG-20180327-WA0010.jpg\",\"href\":\"https:\\/\\/wallpapermemory.com\\/uploads\\/200\\/mount-bromo-wallpaper-hd-1920x1200-320096.jpg\",\"title\":\"This is fucking title\",\"additional\":[\"This is fucking additional text\"]}', '', 12, 2, 28, NULL, NULL),
(129, NULL, '_padding-10 _font-ubuntu-marker', '{\"type\":\"h3\",\"value\":\"BERITA LAINYA\"}', NULL, 2, 1, 29, NULL, NULL),
(130, NULL, '_padding-10', '{\"src\":\"_DSC5979.JPG\",\"href\":\"https:\\/\\/wallpapermemory.com\\/uploads\\/200\\/mount-bromo-wallpaper-hd-1920x1200-320096.jpg\"}', NULL, 4, 2, 29, NULL, NULL),
(131, NULL, '_padding-10 _font-ubuntu-marker', '{\"type\":\"h6\",\"value\":\"<a href=\'\'>NAMA BERITA</a>\"}', NULL, 2, 3, 29, NULL, NULL),
(132, NULL, NULL, '{\"type\":\"p\",\"value\":\"Nama\"}\r\n', NULL, 3, 1, 25, NULL, NULL),
(133, NULL, NULL, '{\"type\":\"p\",\"value\":\"Email\"}\r\n', NULL, 3, 2, 25, NULL, NULL),
(134, NULL, NULL, '{\"type\":\"p\",\"value\":\"Pesan Anda\"}\r\n', NULL, 3, 3, 25, NULL, NULL),
(135, NULL, '_font-ubuntu-marker _heading-faq-accordion', '{\"type\":\"h2\",\"value\":\"Frequently Ask Question\"}', NULL, 2, 1, 26, NULL, NULL),
(136, NULL, NULL, '{\"src\":\"_DSC5979.JPG\",\"href\":\"https:\\/\\/wallpapermemory.com\\/uploads\\/200\\/mount-bromo-wallpaper-hd-1920x1200-320096.jpg\"}', NULL, 4, 3, 30, NULL, NULL),
(137, NULL, NULL, '{\"src\":\"_DSC6927.JPG\",\"href\":\"https:\\/\\/wallpapermemory.com\\/uploads\\/200\\/mount-bromo-wallpaper-hd-1920x1200-320096.jpg\"}', NULL, 4, 4, 30, NULL, NULL),
(138, NULL, NULL, '{\"src\":\"_DSC6951.JPG\",\"href\":\"https:\\/\\/wallpapermemory.com\\/uploads\\/200\\/mount-bromo-wallpaper-hd-1920x1200-320096.jpg\"}', NULL, 4, 2, 30, NULL, NULL),
(139, NULL, NULL, '{\"src\":\"IMG-20180115-WA0006.jpg\",\"href\":\"https:\\/\\/wallpapermemory.com\\/uploads\\/200\\/mount-bromo-wallpaper-hd-1920x1200-320096.jpg\"}', NULL, 4, 6, 30, NULL, NULL),
(140, NULL, NULL, '{\"src\":\"IMG-20190218-WA0010.jpg\",\"href\":\"https:\\/\\/wallpapermemory.com\\/uploads\\/200\\/mount-bromo-wallpaper-hd-1920x1200-320096.jpg\"}', NULL, 4, 7, 30, NULL, NULL),
(141, NULL, NULL, '{\"src\":\"IMG-20190326-WA0008.jpg\",\"href\":\"https:\\/\\/wallpapermemory.com\\/uploads\\/200\\/mount-bromo-wallpaper-hd-1920x1200-320096.jpg\"}', NULL, 4, 8, 30, NULL, NULL),
(142, NULL, '_galery-video', '{\"src\":\"https://youtu.be/R2LQdh42neg\",\"href\":\"https:\\/\\/wallpapermemory.com\\/uploads\\/200\\/mount-bromo-wallpaper-hd-1920x1200-320096.jpg\"}', NULL, 5, 3, 31, NULL, NULL),
(143, NULL, '_galery-video', '{\"src\":\"https://youtu.be/R2LQdh42neg\",\"href\":\"https:\\/\\/wallpapermemory.com\\/uploads\\/200\\/mount-bromo-wallpaper-hd-1920x1200-320096.jpg\"}', NULL, 5, 4, 31, NULL, NULL),
(144, NULL, '_padding-10', '{\"src\":\"IMG-20190326-WA0008.jpg\",\"href\":\"https:\\/\\/wallpapermemory.com\\/uploads\\/200\\/mount-bromo-wallpaper-hd-1920x1200-320096.jpg\"}', NULL, 4, 4, 29, NULL, NULL),
(145, NULL, '_padding-10 _font-ubuntu-marker', '{\"type\":\"h6\",\"value\":\"<a href=\'\'>NAMA BERITA</a>\"}\r\n', NULL, 2, 5, 29, NULL, NULL),
(146, 'Accordion', '_accordion-icon', '{\"0\":{\"heading\":{\"type\":\"h2\",\"value\":\"Lorem Ipsum Dolor Sit Amet <span class=\'icon-accordion\'><i class=\'fa fa-plus\'></i></span>\"},\"body\":{\"value\":\"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\"}},\"1\":{\"heading\":{\"type\":\"h2\",\"value\":\"Lorem Ipsum Dolor Sit Amet <span class=\'icon-accordion\'><i class=\'fa fa-plus\'></i></span>\"},\"body\":{\"value\":\"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\"}},\"2\":{\"heading\":{\"type\":\"h2\",\"value\":\"Lorem Ipsum Dolor Sit Amet <span class=\'icon-accordion\'><i class=\'fa fa-plus\'></i></span>\"},\"body\":{\"value\":\"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\"}}}', NULL, 10, 2, 26, NULL, NULL),
(147, NULL, NULL, '{\"src\":\"_DSC5979.JPG\",\"href\":\"https:\\/\\/wallpapermemory.com\\/uploads\\/200\\/mount-bromo-wallpaper-hd-1920x1200-320096.jpg\"}', NULL, 4, 5, 68, NULL, NULL),
(148, NULL, NULL, '{\"src\":\"IMG-20190326-WA0008.jpg\",\"href\":\"https:\\/\\/wallpapermemory.com\\/uploads\\/200\\/mount-bromo-wallpaper-hd-1920x1200-320096.jpg\"}', NULL, 4, 6, 68, NULL, NULL),
(149, NULL, '_galery-video-full', '{\"src\":\"https://youtu.be/R2LQdh42neg\",\"href\":\"https:\\/\\/wallpapermemory.com\\/uploads\\/200\\/mount-bromo-wallpaper-hd-1920x1200-320096.jpg\"}', NULL, 5, 1, 32, NULL, NULL),
(150, NULL, NULL, '{\"type\":\"h2\",\"value\":\"Parancak, Bali\"}\r\n', NULL, 2, 1, 78, NULL, NULL),
(151, NULL, NULL, '{\"type\":\"h2\",\"value\":\"Pasri Jambak, Padang\"}', NULL, 2, 1, 80, NULL, NULL),
(152, NULL, NULL, '{\"type\":\"h2\",\"value\":\"Batu Hiu, Pangandaran\"}', NULL, 2, 1, 82, NULL, NULL),
(153, NULL, NULL, '{\"type\":\"h2\",\"value\":\"Pulau Pramuka, Jakarta\"}', NULL, 2, 1, 84, NULL, NULL),
(154, NULL, NULL, '{\"src\":\"section7-beranda.png\"}', NULL, 4, 1, 14, NULL, NULL),
(155, NULL, 'fa fa-instagram _icon-social-badge-instagram', '{\"href\":\"google.com\",\"value\":\"\"}', NULL, 8, 1, 86, NULL, NULL),
(156, NULL, '_text-center', '{\"type\":\"h6\",\"value\":\"<a href=\'#section-sosialisasi\'>Sosialisasi</a>\"}', NULL, 2, 1, 90, NULL, NULL),
(157, NULL, '_text-center', '{\"type\":\"h6\",\"value\":\"<a href=\'#section-penyelamatan\'>Penyelamatan Penyu</a>\"}', NULL, 2, 1, 91, NULL, NULL),
(158, NULL, '_text-center', '{\"type\":\"h6\",\"value\":\"<a href=\'#section-pembesaran\'>Pembesaran Tukik</a>\"}', NULL, 2, 1, 92, NULL, NULL),
(159, NULL, '_text-center', '{\"type\":\"h6\",\"value\":\"<a href=\'#section-pelepasan\'>Pelepasan Tukik</a>\"}', NULL, 2, 1, 93, NULL, NULL),
(160, NULL, '_text-center', '{\"type\":\"h6\",\"value\":\"<a href=\'#section-pembersihan\'>Pembersihan Pantai</a>\"}', NULL, 2, 1, 94, NULL, NULL),
(161, NULL, '_text-center', '{\"type\":\"h6\",\"value\":\"<a href=\'#section-kegiatan\'>Kegiatan lain-lain</a>\"}', NULL, 2, 1, 95, NULL, NULL);
INSERT INTO `components` (`id`, `html_id`, `html_class`, `content`, `library_component`, `type_component`, `sequence`, `grids`, `created_at`, `updated_at`) VALUES
(162, NULL, 'fa fa-facebook _icon-social-badge-facebook', '{\"href\":\"google.com\",\"value\":\"\"}', NULL, 8, 1, 87, NULL, NULL),
(163, NULL, 'fa fa-twitter _icon-social-badge-twitter', '{\"href\":\"google.com\",\"value\":\"\"}', NULL, 8, 1, 88, NULL, NULL),
(164, NULL, 'fa fa-youtube _icon-social-badge-youtube', '{\"href\":\"google.com\",\"value\":\"\"}', NULL, 8, 1, 89, NULL, NULL),
(165, 'sliderHome', NULL, '{\"0\":{\"src\":\"penyu-lekang.png\",\"heading\":\"Penyu Lekang\",\"description\":\"Penyu merupakan spesies pengembara. Mereka lebih lama hidup di laut dan hanya kembali ke pantai untuk bertelur. Proses perkawinannya pun dilakukan di laut dan hanya sang induk yang akan kembali ke pantai untuk bertelur. Jangan lupa, Penyu juga termasuk ke dalam reptilia dan bernapas dengan paru-paru.\"},\"1\":{\"src\":\"penyu-pipih.png\",\"heading\":\"This is Heading\",\"description\":\"This is description lorem ipsum dolor sit amet\"},\"2\":{\"src\":\"penyu-sisik.png\",\"heading\":\"This is Heading\",\"description\":\"This is description lorem ipsum dolor sit amet\"},\"3\":{\"src\":\"penyu-tempayan.png\",\"heading\":\"This is Heading\",\"description\":\"This is description lorem ipsum dolor sit amet\"},\"4\":{\"src\":\"penyu-kemps-ridley.png\",\"heading\":\"This is Heading\",\"description\":\"This is description lorem ipsum dolor sit amet\"},\"5\":{\"src\":\"penyu-belimbing.png\",\"heading\":\"This is Heading\",\"description\":\"This is description lorem ipsum dolor sit amet\"},\"6\":{\"src\":\"penyu-hijau.png\",\"heading\":\"This is Heading\",\"description\":\"This is description lorem ipsum dolor sit amet\"}}', 'slider-1', 6, 1, 4, NULL, NULL),
(166, NULL, '_breadcrumb', '{\"type\":\"p\",\"value\":\"<a href=\'javascript:history.back()\' >Konservasi Kami</a> <i class=\'fa fa-caret-right\'></i> Detail\"}', NULL, 3, 1, 96, NULL, NULL),
(167, NULL, 'fa fa-instagram _icon-social-badge-instagram', '{\"href\":\"google.com\",\"value\":\"\"}', NULL, 8, 1, 97, NULL, NULL),
(168, NULL, 'fa fa-facebook _icon-social-badge-facebook', '{\"href\":\"google.com\",\"value\":\"\"}', NULL, 8, 1, 98, NULL, NULL),
(169, NULL, 'fa fa-twitter _icon-social-badge-twitter', '{\"href\":\"google.com\",\"value\":\"\"}', NULL, 8, 1, 99, NULL, NULL),
(170, NULL, 'fa fa-youtube _icon-social-badge-youtube', '{\"href\":\"google.com\",\"value\":\"\"}', NULL, 8, 1, 100, NULL, NULL),
(171, NULL, 'fa fa-instagram _icon-social-badge-instagram', '{\"href\":\"google.com\",\"value\":\"\"}', NULL, 8, 1, 101, NULL, NULL),
(172, NULL, 'fa fa-facebook _icon-social-badge-facebook', '{\"href\":\"google.com\",\"value\":\"\"}', NULL, 8, 1, 102, NULL, NULL),
(173, NULL, 'fa fa-twitter _icon-social-badge-twitter', '{\"href\":\"google.com\",\"value\":\"\"}', NULL, 8, 1, 103, NULL, NULL),
(174, NULL, 'fa fa-youtube _icon-social-badge-youtube', '{\"href\":\"google.com\",\"value\":\"\"}', NULL, 8, 1, 104, NULL, NULL),
(175, NULL, 'fa fa-instagram _icon-social-badge-instagram', '{\"href\":\"google.com\",\"value\":\"\"}', NULL, 8, 1, 105, NULL, NULL),
(176, NULL, 'fa fa-facebook _icon-social-badge-facebook', '{\"href\":\"google.com\",\"value\":\"\"}', NULL, 8, 1, 106, NULL, NULL),
(177, NULL, 'fa fa-twitter _icon-social-badge-twitter', '{\"href\":\"google.com\",\"value\":\"\"}', NULL, 8, 1, 107, NULL, NULL),
(178, NULL, 'fa fa-youtube _icon-social-badge-youtube', '{\"href\":\"google.com\",\"value\":\"\"}', NULL, 8, 1, 108, NULL, NULL),
(179, NULL, 'fa fa-instagram _icon-social-badge-instagram', '{\"href\":\"google.com\",\"value\":\"\"}', NULL, 8, 1, 109, NULL, NULL),
(180, NULL, 'fa fa-facebook _icon-social-badge-facebook', '{\"href\":\"google.com\",\"value\":\"\"}', NULL, 8, 1, 110, NULL, NULL),
(181, NULL, 'fa fa-twitter _icon-social-badge-twitter', '{\"href\":\"google.com\",\"value\":\"\"}', NULL, 8, 1, 111, NULL, NULL),
(182, NULL, 'fa fa-youtube _icon-social-badge-youtube', '{\"href\":\"google.com\",\"value\":\"\"}', NULL, 8, 1, 112, NULL, NULL),
(183, NULL, 'fa fa-instagram _icon-social-badge-instagram', '{\"href\":\"google.com\",\"value\":\"\"}', NULL, 8, 1, 113, NULL, NULL),
(184, NULL, 'fa fa-facebook _icon-social-badge-facebook', '{\"href\":\"google.com\",\"value\":\"\"}', NULL, 8, 1, 114, NULL, NULL),
(185, NULL, 'fa fa-twitter _icon-social-badge-twitter', '{\"href\":\"google.com\",\"value\":\"\"}', NULL, 8, 1, 115, NULL, NULL),
(186, NULL, 'fa fa-youtube _icon-social-badge-youtube', '{\"href\":\"google.com\",\"value\":\"\"}', NULL, 8, 1, 116, NULL, NULL),
(187, NULL, 'fa fa-instagram _icon-social-badge-instagram', '{\"href\":\"google.com\",\"value\":\"\"}', NULL, 8, 1, 117, NULL, NULL),
(188, NULL, 'fa fa-facebook _icon-social-badge-facebook', '{\"href\":\"google.com\",\"value\":\"\"}', NULL, 8, 1, 118, NULL, NULL),
(189, NULL, 'fa fa-twitter _icon-social-badge-twitter', '{\"href\":\"google.com\",\"value\":\"\"}', NULL, 8, 1, 119, NULL, NULL),
(190, NULL, 'fa fa-youtube _icon-social-badge-youtube', '{\"href\":\"google.com\",\"value\":\"\"}', NULL, 8, 1, 120, NULL, NULL),
(191, NULL, 'fa fa-instagram _icon-social-badge-instagram', '{\"href\":\"google.com\",\"value\":\"\"}', NULL, 8, 1, 121, NULL, NULL),
(192, NULL, 'fa fa-facebook _icon-social-badge-facebook', '{\"href\":\"google.com\",\"value\":\"\"}', NULL, 8, 1, 122, NULL, NULL),
(193, NULL, 'fa fa-twitter _icon-social-badge-twitter', '{\"href\":\"google.com\",\"value\":\"\"}', NULL, 8, 1, 123, NULL, NULL),
(194, NULL, 'fa fa-youtube _icon-social-badge-youtube', '{\"href\":\"google.com\",\"value\":\"\"}', NULL, 8, 1, 124, NULL, NULL),
(195, NULL, 'fa fa-instagram _icon-social-badge-instagram', '{\"href\":\"google.com\",\"value\":\"\"}', NULL, 8, 1, 125, NULL, NULL),
(196, NULL, 'fa fa-facebook _icon-social-badge-facebook', '{\"href\":\"google.com\",\"value\":\"\"}', NULL, 8, 1, 126, NULL, NULL),
(197, NULL, 'fa fa-twitter _icon-social-badge-twitter', '{\"href\":\"google.com\",\"value\":\"\"}', NULL, 8, 1, 127, NULL, NULL),
(198, NULL, 'fa fa-youtube _icon-social-badge-youtube', '{\"href\":\"google.com\",\"value\":\"\"}', NULL, 8, 1, 128, NULL, NULL),
(199, NULL, '_show-mobile', '{\"src\":\"heading-beranda-mobile.png\",\"href\":\"https:\\/\\/wallpapermemory.com\\/uploads\\/200\\/mount-bromo-wallpaper-hd-1920x1200-320096.jpg\"}', NULL, 4, 1, 1, NULL, NULL),
(200, '', NULL, '', '', 8, 2, 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `css`
--

CREATE TABLE `css` (
  `id` int(11) NOT NULL,
  `projects` int(11) NOT NULL DEFAULT '0',
  `code` text NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `css`
--

INSERT INTO `css` (`id`, `projects`, `code`, `created_at`, `updated_at`) VALUES
(1, 1, 'h2{font-size: 35px ;}\r\nh3{font-size: 30px;}\r\np{font-size:20px;}\r\n._heading-faq-accordion{margin-left:30px;}\r\n._show-mobile{\r\ndisplay:none;\r\n}\r\n._show-desktop{\r\ndisplay: unset;\r\n}\r\n._section { }\r\n._navbar {position: fixed;left: 0px;top: 0px;width: 100%;background-color: #fff;z-index: 99999999; box-shadow: 0px 1px 5px lightgrey;}\r\n._navbar ._menu-link { float: right;}\r\n._navbar ._menu-link ul { width: 100%;padding: 0px;list-style: none;display: table;margin: 0px;}\r\n._navbar ._menu-link ul li { float: left;}\r\n._navbar ._menu-link ul li.active{ border-bottom:2px solid #2679BF;}\r\n._navbar ._menu-link ul li.active a{ color: #2679BF;}\r\n._navbar ._menu-link ul li a {text-decoration: none;color: #333;padding: 15px 10px;display: block;text-transform: capitalize; }\r\n ._footer ._menu-link { float: right;}\r\n._footer ._menu-link ul { width: 100%;padding: 0px;list-style: none;display: table;margin: 0px;}\r\n._footer ._menu-link ul li { float: left;}\r\n._footer ._menu-link ul li a {text-decoration: none;color: #333;padding: 8px 10px;display: block;text-transform: capitalize; }\r\n._footer ._container { border-top: .5px #aaa solid; }\r\n._navbar ._site-logo, ._footer ._site-logo {     width: 120px;\r\n    display: block;\r\n    float: left; }\r\n._navbar ._width-d-1000 a{\r\n    display: table;\r\n    float: left;\r\n    padding: 7px;\r\n}\r\n._footer ._site-contact_detail {     float: left;\r\n    margin: 10px 0px;\r\n    color: #666; }\r\n            ._text-center { text-align: center; }\r\n            ._text-right { text-align: right; }\r\n            ._float-right { float: right!important; }\r\n            ._container { width: 1000px; margin: 0px auto; display: block;}\r\n            ._section ._container { display: table; padding: 20px 10px; /*border: .5px #aaa dashed;*/}\r\n            ._container-margin-20 ._container { margin-top:20px;}\r\n            ._section ._container ._grid{ float: left; padding: 10px 0px; display: inherit;/*border: .5px #aaa dashed*/; position: relative;}\r\n            ._section ._container .grid-12 { width: 100%; }\r\n            ._section ._container .grid-11 { width: 91.666666666667%; }\r\n            ._section ._container .grid-10 { width: 83.333333333333%; }\r\n            ._section ._container .grid-9  { width: 75%; }\r\n            ._section ._container .grid-8  { width: 66.666666666666%; }\r\n            ._section ._container .grid-7  { width: 58.333333333333%; }\r\n            ._section ._container .grid-6  { width: 50%; }\r\n            ._section ._container .grid-5  { width: 41.666666666667%; }\r\n            ._section ._container .grid-4  { width: 33.333333333333%; }\r\n            ._section ._container .grid-3  { width: 25%; }\r\n            ._section ._container .grid-2  { width: 16.666666666667%; }\r\n            ._section ._container .grid-1  { width:  8.333333333333%; }\r\n            ._btn { padding: 5px 17px; display: block; width: fit-content; border: .5px #2f94e0 solid; border-radius: 9px; color: white; background-color : #2f94e0;}\r\n            ._btn:hover { text-decoration: none; color: #2f94e0; background-color: #FFFFFF; }\r\n            ._text-center a { color:black;}\r\n._galery-image img {\r\nwidth: 25% !important;\r\n    float: left;\r\n    padding: 5px;\r\n    height: 150px;\r\n    object-fit: cover;\r\n    object-position: center;\r\n}\r\n._padding-10{\r\npadding : 10px;\r\n}\r\n._berita-berita-lain{\r\nbackground-color: #E8E8E8;\r\npadding:10px !important;\r\n}\r\n._berita-berita-lain img{\r\nwidth : 50%!important;\r\nfloat : left;\r\n}\r\n._berita-berita-lain h3{\r\nfont-size: 17px;\r\n    text-align: center;\r\n}\r\n._berita-berita-lain h6{\r\nheight : 65px;\r\n    border-top: 0.5px solid;\r\n}\r\n._berita-berita-lain h6 a{\r\ncolor: black;\r\nfont-size:9px\r\n}\r\n._image-lokasi-head{\r\nwidth: 100% !important;\r\n    object-fit: cover;\r\n    height: 400px;\r\n}\r\n._galery-video {\r\nwidth : 50% !important;\r\nfloat : left;\r\npadding : 5px;\r\n}\r\n._galery-video-full {\r\npadding : 5px;\r\n}\r\n._container-width-full ._container {\r\nwidth: 100% !important;\r\n    padding: 20px 0px;	\r\n}\r\n._container-width-full ._container ._grid {\r\nwidth: 100% !important;\r\n    padding: 20px 0px;	\r\n}\r\n._section ._container ._grid-1000{\r\nwidth: 1000px !important;\r\nfloat: unset;\r\nmargin: 0px auto;\r\n}\r\nbody {\r\npadding-top: 60px;\r\n}\r\n._padding-konservasi-detail{\r\npadding: 20px!important;\r\n    margin-top: 100px;\r\n}\r\n._padding-less-container-grid ._container {\r\npadding: 0px !important;\r\n}\r\n._padding-less-container-grid ._container ._grid{\r\npadding: 0px !important;\r\n}\r\n._social-media-badge {\r\n    position: fixed;\r\n    z-index: 1;\r\n    top: 35%;\r\n    width: calc((100% - 980px) / 2);\r\n    display: block;\r\n    text-align: center;\r\n}\r\n._social-media-badge ._container{\r\nposition: absolute;\r\n    width:100%;\r\n}\r\n._font-permanent-marker {\r\nfont-family: \'Permanent Marker\', cursive;\r\ncolor : #2679BF;\r\n}\r\n._font-ubuntu-marker{\r\nfont-family: \'Ubuntu\', sans-serif;\r\n}\r\n._font-ubuntu-marker-bold{\r\nfont-family: \'Ubuntu\', sans-serif;\r\n    font-weight: bold;\r\n}\r\n._konservasi-detail-border {\r\n\r\n}\r\n._section-konservasi-overview .grid-2 {\r\nborder: .5px #aaa solid;\r\n    border-bottom: none;\r\n    border-top: none;\r\n    border-right: none !important;\r\n}\r\n\r\n._section-konservasi-overview .grid-2:nth-child(2) {\r\nborder:none!important;\r\n}\r\n._icon-alignment i {\r\nmargin : 0px 15px 0px 10px;\r\n}\r\n._section-konservasi-overview .grid-2:last-child {\r\nborder-right:none!important;\r\n}\r\n\r\n.carousel-control-next{\r\nposition: absolute;\r\nbottom: 15px;\r\nright: 15px;\r\nborder: 5px solid;\r\npadding: 10px;\r\nwidth: 50px;\r\nheight: 50px;\r\nborder-radius: 15pc;\r\ntop: unset;\r\nbackground-color: white;\r\n}\r\n\r\n.carousel-control-prev{\r\nposition: absolute;\r\nbottom: 15px;\r\nright: 75px;\r\nborder: 5px solid;\r\npadding: 10px;\r\nwidth: 50px;\r\nheight: 50px;\r\nborder-radius: 15pc;\r\ntop: unset;\r\nleft: unset;\r\n}\r\n._beranda-section1{\r\nbackground-image:url(/uploads/image/section1-beranda.png);\r\nbackground-position: center;\r\n    background-size: cover;\r\n    height: 500px;\r\n}\r\n._beranda-section2{\r\nbackground-image: url(/uploads/image/section2-beranda.png);\r\n    background-size: 110%;\r\n    background-repeat: no-repeat;\r\n    background-position: center;\r\n}\r\n._beranda-section3 {\r\n    background-image: url(/uploads/image/section3-beranda.png);\r\n    background-position: top;\r\n    background-size: 490px;\r\n    background-repeat: no-repeat;\r\n    background-position-x: 80%;\r\n    height: 300px;\r\n    padding-top: 5%;\r\n}\r\n._beranda-section4{\r\nbackground-image: url(/uploads/image/section4-beranda.png);\r\n    background-position: left;\r\n    background-size: 350px;\r\n    background-repeat: no-repeat;\r\n    background-position-x: 15%;\r\n}\r\n._beranda-section-7{\r\nbackground-image: url(/uploads/image/section-galery-beranda.png);\r\n    background-position: top;\r\n    background-size: 100%;\r\n    background-repeat: no-repeat;\r\n    height: 550px;\r\n    margin-top: -40px;\r\n    padding-top: 50px;\r\n    margin-bottom: -100px;\r\n}\r\n._tentang-kami-section3{\r\nbackground-image: url(/uploads/image/section3-tentang.png);\r\n    background-size: 100%;\r\n    background-position: bottom;\r\n    padding-bottom: 100px;\r\n    background-repeat: no-repeat;\r\n}\r\n.carousel-indicators{\r\nvisibility : hidden;\r\n}\r\n._icon-social-badge-instagram{\r\ncolor: #AA3A9E;\r\n    border: 1px solid;\r\n    padding: 7px 0px 0px 0px;\r\n    border-radius: 15pc;\r\n    width: 33px;\r\n    height: 33px;\r\n    text-decoration: none;\r\n}\r\n._icon-social-badge-instagram:hover{\r\ncolor: #882d7e;\r\n    text-decoration: none;\r\n}\r\n._icon-social-badge-facebook{\r\n    border: 1px solid;\r\n    padding: 8px 0px 0px 0px;\r\n    border-radius: 15pc;\r\n    width: 33px;\r\n    height: 33px;\r\n    text-decoration: none;\r\n}\r\n._icon-social-badge-facebook:hover{\r\n    text-decoration: none;\r\n}\r\n._icon-social-badge-twitter{\r\ncolor: #00ACEE;\r\n    border: 1px solid;\r\n    border-radius: 15pc;\r\n    width: 33px;\r\n    height: 33px;\r\n    padding: 7px 0px 0px 0px;\r\n    text-decoration: none;\r\n}\r\n._icon-social-badge-twitter:hover{\r\ncolor : #0c8cbd;\r\n    text-decoration: none;\r\n}\r\n._icon-social-badge-youtube{\r\ncolor: #FF0000;\r\n    width: 33px;\r\n    height: 33px;\r\n    border: 1px solid;\r\n    border-radius: 15pc;\r\n    padding: 6px 0px 0px 0px;\r\n    text-decoration: none;\r\n}\r\n._icon-social-badge-youtube:hover{\r\ncolor:#b50606;\r\n    text-decoration: none;\r\n}\r\n._berita-image-2 img{\r\nwidth: 100%;\r\n    height: 192px;\r\n    background-size: cover;\r\n}\r\n\r\n._breadcrumb{\r\nmargin: 0;\r\n    padding: 0;\r\n    margin-top: -10px;\r\n    margin-bottom: 0px;\r\n    font-size: 14px;\r\n}\r\n\r\n._breadcrumb a{\r\ncolor: black;\r\n}\r\n\r\n._breadcrumb .fa{\r\nmargin: 0px 5px;\r\n}\r\n\r\n._accordion-icon .icon-accordion{\r\nmargin-left: 680px;\r\nborder: 1px solid;\r\n    padding: 0px 5px;\r\n    border-radius: 15px;\r\n}\r\n\r\n._border ._container{\r\nborder: .5px solid black;\r\nmargin-bottom:30px;\r\n}\r\n._shadow ._container{\r\nbox-shadow: 0px 1px 10px lightgrey !important;\r\n    margin-bottom: 30px;\r\n    border-radius: 5px;\r\n}\r\n._accordion-icon .card {\r\n    border-radius: 0px;\r\nborder:unset;\r\nborder-bottom: 1px solid rgba(0,0,0,0.1)!important;\r\n    background-color: white;\r\n}\r\n._accordion-icon .card .card-header{\r\nbackground-color:white;\r\n}\r\n._accordion-icon .card .card-header .mb-0{\r\nborder-bottom:1px solid white;\r\n}\r\n._accordion-icon .card .card-header .mb-0 .btn{\r\ncolor: black;\r\n}\r\n._konservasi-kami-content {\r\nmargin-top : 15%;\r\n}\r\n._border-right{\r\n    border-right: 1px solid black;\r\n}\r\n._berita-image-2 ._card {\r\nposition:relative;\r\n}\r\n._berita-image-2 ._card ._card-text-container{\r\nbottom: 0px;\r\nposition:absolute;\r\npadding: 5px 10px;\r\n}\r\n._berita-image-2 ._card ._card-text-container ._card-heading{\r\nfont-size: 16px;\r\ncolor: white;\r\n}\r\n._berita-image-2 ._card ._card-text-container ._card-text{\r\nfont-size: 8px;\r\ncolor: white;\r\n}\r\n.grid-6 ._card {\r\nposition:relative;\r\nheight: 423px;\r\n}\r\n.grid-6 ._card img{\r\nheight: 100%;\r\nobject-fit: cover;\r\n}\r\n.grid-6 ._card ._card-text-container{\r\nbottom: 0px;\r\nposition:absolute;\r\npadding: 5px 10px;\r\n    margin-bottom: 40px;\r\n    margin-left: 40px;\r\n}\r\n.grid-6 ._card ._card-text-container ._card-heading{\r\nfont-size: 16px;\r\ncolor: white;\r\n}\r\n.grid-6 ._card ._card-text-container ._card-text{\r\nfont-size: 8px;\r\ncolor: white;\r\n}\r\n.grid-6 ._card ._card-text-container ._card-text:nth-child(2) {\r\nmargin-bottom: 60px;\r\n}\r\n.grid-6 ._card ._card-text-container ._card-text:nth-child(3) {\r\ndisplay:table-cell;\r\n}\r\n.grid-6 ._card ._card-text-container ._card-text:nth-child(4) {\r\ndisplay:table-cell;\r\npadding-left: 15px;\r\n}\r\n._menu-navigation{\r\n    height: 55px !important;\r\n}\r\n._menu-navigation h6{\r\n    position: absolute;\r\n    top: 100%;\r\n    margin-top: -25%;\r\n    text-align:center;\r\n    width:100%;\r\n}\r\n:target {\r\n    padding-top: 70px;\r\n    margin-top: -70px;\r\n}\r\n._gradient:before {\r\n    content: \'\';\r\n    position: absolute;\r\n    left: 10px;\r\n    bottom: 10px;\r\n    right: 10;\r\n    height: 74%;\r\n    background: linear-gradient(to bottom,rgba(255,255,255,0),#2679BF) repeat left top;\r\n}', '2019-10-22 11:58:36', '2019-10-22 11:58:36');

-- --------------------------------------------------------

--
-- Table structure for table `css_responsive`
--

CREATE TABLE `css_responsive` (
  `id` int(11) NOT NULL,
  `css` int(11) NOT NULL DEFAULT '0',
  `code` text NOT NULL,
  `max-width` int(11) NOT NULL DEFAULT '0',
  `min-width` int(11) NOT NULL DEFAULT '0',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `css_responsive`
--

INSERT INTO `css_responsive` (`id`, `css`, `code`, `max-width`, `min-width`, `created_at`, `updated_at`) VALUES
(1, 1, 'body{ \r\nwidth:100%;\r\n}\r\n._navbar{}\r\n._navbar ._menu-link{ }\r\n._navbar ._menu-link ul{ }\r\n._navbar ._menu-link ul li{ }\r\n._navbar ._menu-link ul li a{ }\r\n._footer ._menu-link{ }\r\n._footer ._menu-link ul{ }\r\n._footer ._menu-link ul li{ }\r\n._footer ._menu-link ul li a{ }\r\n._footer ._container{ }\r\n._footer ._site-logo,._navbar ._site-logo{ }\r\n._footer ._site-contact_detail{ }\r\n._text-center{ }\r\n._text-right{ }\r\n._float-right{ }\r\n._container{}\r\n._section ._container{ width:85%;}\r\n._container-margin-20 ._container{ }\r\n._section ._container ._grid{ }\r\n._section ._container .grid-12{ }\r\n._section ._container .grid-11{ }\r\n._section ._container .grid-10{ }\r\n._section ._container .grid-9{ }\r\n._section ._container .grid-8{ }\r\n._section ._container .grid-7{ }\r\n._section ._container .grid-6{ }\r\n._section ._container .grid-5{ }\r\n._section ._container .grid-4{ }\r\n._section ._container .grid-3{ }\r\n._section ._container .grid-2{ }\r\n._section ._container .grid-1{ }\r\n._btn{ }\r\n._btn:hover{ }\r\n._galery-image img{ }\r\n._padding-10{ }\r\n._berita-berita-lain img{ }\r\n._berita-berita-lain h6{ \r\nheight: 70px !important;\r\n}\r\n._lokasi-image img{ }\r\n._galery-video{ }\r\n._galery-video-full{ }\r\n._container-width-full ._container{ }\r\n._container-width-full ._container ._grid{ }\r\n._section ._container ._grid-1000{ width: 850px !important;}\r\n._padding-less-container-grid ._container{ }\r\n._padding-less-container-grid ._container ._grid{ }\r\n._social-media-badge{ }\r\n._social-media-badge ._container{ }\r\n._font-permanent-marker{ }\r\n._font-ubuntu-marker{ }\r\n._font-ubuntu-marker-bold{ }\r\n._section-konservasi-overview .grid-2{ }\r\n._section-konservasi-overview .grid-2:nth-child(2){ }\r\n._icon-alignment i{ }\r\n._section-konservasi-overview .grid-2:last-child{ }\r\n.carousel-control-next{ }\r\n.carousel-control-prev{ }\r\n._beranda-section1{ }\r\n._beranda-section2{ }\r\n._beranda-section3{ }\r\n._beranda-section4{ }\r\n._beranda-section-7{ }\r\n.carousel-indicators{ }\r\n._icon-social-badge-instagram{ }\r\n._icon-social-badge-instagram:hover{ }\r\n._icon-social-badge-facebook{ }\r\n._icon-social-badge-facebook:hover{ }\r\n._icon-social-badge-twitter{ }\r\n._icon-social-badge-twitter:hover{ }\r\n._icon-social-badge-youtube{ }\r\n._icon-social-badge-youtube:hover{ }\r\n._berita-image-2 img{ \r\n    height: 166px !important;}\r\n._breadcrumb{ }\r\n._breadcrumb a{ }\r\n._breadcrumb .fa{ }\r\n._accordion-icon .icon-accordion{ }\r\n._border ._container{ }\r\n._shadow ._container{ }\r\n._accordion-icon .card{ }\r\n._accordion-icon .card .card-header{ }\r\n._accordion-icon .card .card-header .mb-0{ }\r\n._accordion-icon .card .card-header .mb-0 .btn{ }\r\n._konservasi-kami-content{ }\r\n:target{ }', 1200, 993, NULL, NULL),
(2, 1, 'body{ \r\nwidth:992px;\r\n}\r\n._navbar{width:992px;}\r\n._navbar ._menu-link{ }\r\n._navbar ._menu-link ul{ }\r\n._navbar ._menu-link ul li{ }\r\n._navbar ._menu-link ul li a{ }\r\n._footer ._menu-link{ }\r\n._footer ._menu-link ul{ }\r\n._footer ._menu-link ul li{ }\r\n._footer ._menu-link ul li a{ }\r\n._footer ._container{ }\r\n._footer ._site-logo,._navbar ._site-logo{ }\r\n._footer ._site-contact_detail{ }\r\n._text-center{ }\r\n._text-right{ }\r\n._float-right{ }\r\n._container{width: 850px;}\r\n._section ._container{ }\r\n._container-margin-20 ._container{ }\r\n._section ._container ._grid{ }\r\n._section ._container .grid-12{ }\r\n._section ._container .grid-11{ }\r\n._section ._container .grid-10{ }\r\n._section ._container .grid-9{ }\r\n._section ._container .grid-8{ }\r\n._section ._container .grid-7{ }\r\n._section ._container .grid-6{ }\r\n._section ._container .grid-5{ }\r\n._section ._container .grid-4{ }\r\n._section ._container .grid-3{ }\r\n._section ._container .grid-2{ }\r\n._section ._container .grid-1{ }\r\n._btn{ }\r\n._btn:hover{ }\r\n._galery-image img{ }\r\n._padding-10{ }\r\n._berita-berita-lain img{ }\r\n._berita-berita-lain h6{ }\r\n._lokasi-image img{ }\r\n._galery-video{ }\r\n._galery-video-full{ }\r\n._container-width-full ._container{ }\r\n._container-width-full ._container ._grid{ }\r\n._section ._container ._grid-1000{ width: 850px !important;}\r\n._padding-less-container-grid ._container{ }\r\n._padding-less-container-grid ._container ._grid{ }\r\n._social-media-badge{ }\r\n._social-media-badge ._container{ }\r\n._font-permanent-marker{ }\r\n._font-ubuntu-marker{ }\r\n._font-ubuntu-marker-bold{ }\r\n._section-konservasi-overview .grid-2{ }\r\n._section-konservasi-overview .grid-2:nth-child(2){ }\r\n._icon-alignment i{ }\r\n._section-konservasi-overview .grid-2:last-child{ }\r\n.carousel-control-next{ }\r\n.carousel-control-prev{ }\r\n._beranda-section1{ }\r\n._beranda-section2{ }\r\n._beranda-section3{ }\r\n._beranda-section4{ }\r\n._beranda-section-7{ }\r\n.carousel-indicators{ }\r\n._icon-social-badge-instagram{ }\r\n._icon-social-badge-instagram:hover{ }\r\n._icon-social-badge-facebook{ }\r\n._icon-social-badge-facebook:hover{ }\r\n._icon-social-badge-twitter{ }\r\n._icon-social-badge-twitter:hover{ }\r\n._icon-social-badge-youtube{ }\r\n._icon-social-badge-youtube:hover{ }\r\n._berita-image-2 img{\r\n    height: 164px !important; }\r\n._breadcrumb{ }\r\n._breadcrumb a{ }\r\n._breadcrumb .fa{ }\r\n._accordion-icon .icon-accordion{ }\r\n._border ._container{ }\r\n._shadow ._container{ }\r\n._accordion-icon .card{ }\r\n._accordion-icon .card .card-header{ }\r\n._accordion-icon .card .card-header .mb-0{ }\r\n._accordion-icon .card .card-header .mb-0 .btn{ }\r\n._konservasi-kami-content{ }\r\n:target{ }\r\n.slider-3 .slider-item-container .slider-item img{\r\nwidth:100px !important;\r\nheight: 100px !important;\r\n}\r\n.slider-3 .slider-item-container .active img{\r\nwidth: 140px !Important;\r\nheight: 140px !Important;\r\ntop: 5% !important;\r\n}\r\n.slider-3 .slider-item-container .slider-item:first-child{\r\nleft:20% !Important;\r\n}\r\n.slider-3 .slider-item-container .slider-item:nth-child(2){\r\nleft: 30% !Important;\r\n}\r\n.slider-3 .slider-item-container .slider-item:nth-child(4){\r\nright: 30% !Important;\r\n}\r\n.slider-3 .slider-item-container .slider-item:last-child{\r\nright:20% !Important;\r\n}\r\n.slider-3 .slider-item-container .slider-item img:first-child, .slider-3 .slider-item-container .slider-item img:last-child{\r\nleft:0 !important;\r\nright:0 !important;\r\n}\r\n.slider-3 .slider-item-container .slider-item h5{\r\nmargin-top: 140px !important;\r\n}\r\n.bootstrap_carousel_type_3 .carousel .carousel-indicators{\r\nbottom: 25% !important;\r\n}\r\n.bootstrap_carousel_type_3 .carousel .carousel-control-next{\r\nleft: 90% !important;\r\n}\r\n.bootstrap_carousel_type_3 .carousel .carousel-control-prev{\r\nleft: 2% !important;\r\n}\r\n._tentang-kami-section3{\r\npadding-bottom: 30px !important;\r\n}', 992, 769, NULL, NULL),
(3, 1, 'body{ \r\nwidth:100%;\r\n}\r\np{\r\nfont-size: 14px;\r\n}\r\n._show-mobile{\r\nvisibility: visible;\r\ndisplay: unset;\r\n}\r\n._show-desktop{\r\ndisplay: none;\r\n}\r\n.burger-menu{\r\nposition: absolute;\r\n    right: 0;\r\n    margin-right: 20px;\r\n    margin-top: 13px;\r\n}\r\n._navbar{width:768px; }\r\n._navbar ._menu-link{ float: none;}\r\n._navbar ._menu-link ul{ }\r\n._navbar ._menu-link ul li{ float: none;}\r\n._navbar ._menu-link ul li a{ }\r\n._footer ._menu-link{ }\r\n._footer ._menu-link ul{ }\r\n._footer ._menu-link ul li{ }\r\n._footer ._menu-link ul li a{ }\r\n._footer ._container{ }\r\n._footer ._site-logo{}\r\n._navbar ._site-logo{ margin-left: 20px;}\r\n._footer ._site-contact_detail{ }\r\n._text-center{ }\r\n._text-right{ }\r\n._float-right{ }\r\n._container{width:90%;}\r\n._section {width:768px; }\r\n._section ._container{padding: 0px 40px; }\r\n._container-margin-20 ._container{ padding: 10px 5px;}\r\n._section ._container ._grid{ }\r\n._section ._container .grid-12{ }\r\n._section ._container .grid-11{ }\r\n._section ._container .grid-10{ }\r\n._section ._container .grid-9{ }\r\n._section ._container .grid-8{ }\r\n._section ._container .grid-7{ }\r\n._section ._container .grid-6{ }\r\n._section ._container .grid-5{ }\r\n._section ._container .grid-4{ }\r\n._section ._container .grid-3{ }\r\n._section ._container .grid-2{ }\r\n._section ._container .grid-1{ }\r\n._btn{ }\r\n._btn:hover{ }\r\n._galery-image img{ }\r\n._padding-10{ }\r\n._berita-berita-lain img{}\r\n._berita-berita-lain h6{ }\r\n._lokasi-image img{ }\r\n._galery-video{ }\r\n._galery-video-full{ }\r\n._container-width-full ._container{padding: unset !important; }\r\n._container-width-full ._container ._grid{ }\r\n._section ._container ._grid-1000{width: 90% !important; }\r\n._padding-less-container-grid ._container{ padding: unset !important;}\r\n._padding-less-container-grid ._container ._grid{ }\r\n._social-media-badge{ display: none;}\r\n._social-media-badge ._container{ }\r\n._font-permanent-marker{ }\r\n._font-ubuntu-marker{ }\r\n._font-ubuntu-marker-bold{ }\r\n._section-konservasi-overview .grid-2{ }\r\n._section-konservasi-overview .grid-2:nth-child(2){ }\r\n._icon-alignment i{ }\r\n._section-konservasi-overview .grid-2:last-child{ }\r\n.carousel-control-next{ }\r\n.carousel-control-prev{ }\r\n._beranda-section1{ \r\nbackground-size: 100%;\r\n    background-repeat: no-repeat;\r\n    padding: 40px;\r\n}\r\n._beranda-section2{ }\r\n._beranda-section3{ background-position-x: 80% !important;}\r\n._beranda-section4{ background-position-x: 5% !important;}\r\n._beranda-section-7{ }\r\n.carousel-indicators{ }\r\n._icon-social-badge-instagram{ }\r\n._icon-social-badge-instagram:hover{ }\r\n._icon-social-badge-facebook{ }\r\n._icon-social-badge-facebook:hover{ }\r\n._icon-social-badge-twitter{ }\r\n._icon-social-badge-twitter:hover{ }\r\n._icon-social-badge-youtube{ }\r\n._icon-social-badge-youtube:hover{ }\r\n._berita-image-2 img{height: 117px !Important; }\r\n._breadcrumb{ }\r\n._breadcrumb a{ }\r\n._breadcrumb .fa{ }\r\n._accordion-icon .icon-accordion{ margin-left: unset;\r\n    position: absolute;\r\n    right: 0;\r\n    top: 25px;\r\n    width: 20px;\r\n    height: 20px;\r\n    padding: 1px;}\r\n._border ._container{\r\n    border: none;\r\n    box-shadow: 0px 1px 5px lightgrey;}\r\n._shadow ._container{ }\r\n._accordion-icon .card{ }\r\n._accordion-icon .card .card-header{ }\r\n._accordion-icon .card .card-header .mb-0{ }\r\n._accordion-icon .card .card-header .mb-0 .btn{ }\r\n._konservasi-kami-content{ }\r\n:target{ }\r\n.slider-3 .slider-item-container .slider-item img{\r\nwidth:80px !important;\r\nheight: 80px !important;\r\n}\r\n.slider-3 .slider-item-container .active img{\r\nwidth: 110px !Important;\r\nheight: 110px !Important;\r\ntop: 5% !important;\r\n}\r\n.slider-3 .slider-item-container .slider-item:first-child{\r\nleft:20% !Important;\r\n}\r\n.slider-3 .slider-item-container .slider-item:nth-child(2){\r\nleft: 30% !Important;\r\n}\r\n.slider-3 .slider-item-container .slider-item:nth-child(4){\r\nright: 30% !Important;\r\n}\r\n.slider-3 .slider-item-container .slider-item:last-child{\r\nright:20% !Important;\r\n}\r\n.slider-3 .slider-item-container .slider-item img:first-child, .slider-3 .slider-item-container .slider-item img:last-child{\r\nleft:0 !important;\r\nright:0 !important;\r\n}\r\n.slider-3 .slider-item-container .slider-item h5{\r\nmargin-top: 120px !important;\r\n}\r\n.bootstrap_carousel_type_3 .carousel .carousel-indicators{\r\nbottom: 30% !important;\r\n}\r\n.bootstrap_carousel_type_3 .carousel .carousel-control-next{\r\nleft: 90% !important;\r\n}\r\n._tentang-kami-section3{\r\npadding-bottom: 30px !important;\r\n}\r\n.slider-4 .slider-item-container .slider-item {\r\n    height: 100px !important;\r\n    top: 455px !important;\r\n    margin: 0px 9px 0px 0px !important;\r\n}\r\n.slider-4 .slider-item-container .slider-item img {\r\n    width: 100% !important;\r\n    object-fit: cover !important;\r\n}\r\n.slider-4 .slider-item-container .slider-item.active {\r\n    height: 555px !important;\r\n}\r\n.slider-4 .slider-item-container .slider-item.active img {\r\n    width: 100% !important;\r\n    height: 100% !important;\r\n}', 768, 426, NULL, NULL),
(4, 1, 'body{ \r\nwidth:100%;\r\n}\r\np{\r\nfont-size: 14px;\r\n}\r\nh2{\r\nfont-size: 18px;\r\ncolor: #2679BF;\r\n}\r\nh3{\r\nfont-size: 16px;\r\n}\r\n._show-mobile{\r\nvisibility: visible;\r\ndisplay: unset;\r\n}\r\n._show-desktop{\r\ndisplay: none;\r\n}\r\n.burger-menu{\r\nposition: absolute;\r\n    right: 0;\r\n    margin-right: 20px;\r\n    margin-top: 13px;\r\n}\r\n._navbar{width:425px; padding: 10px 5px;}\r\n._navbar ._menu-link{ float: none;}\r\n._navbar ._menu-link ul{ }\r\n._navbar ._menu-link ul li{ float: none;}\r\n._navbar ._menu-link ul li a{ }\r\n._footer ._menu-link{ }\r\n._footer ._menu-link ul{ }\r\n._footer ._menu-link ul li{ }\r\n._footer ._menu-link ul li a{ }\r\n._footer ._container{ }\r\n._footer ._site-logo,._navbar ._site-logo{ }\r\n._footer ._site-contact_detail{ }\r\n._text-center{ }\r\n._text-right{ }\r\n._float-right{ }\r\n._container{width:425px;}\r\n._section {width:425px;}\r\n._section ._container{width: 90%; }\r\n._container-margin-20 ._container{ }\r\n._section ._container ._grid{ }\r\n._section ._container .grid-12{width:100%; }\r\n._section ._container .grid-11{width:100%; }\r\n._section ._container .grid-10{width:100%; }\r\n._section ._container .grid-9{ width:100%;}\r\n._section ._container .grid-8{ width:100%;}\r\n._section ._container .grid-7{ width:100%;}\r\n._section ._container .grid-6{ width:100%;}\r\n._section ._container .grid-5{ width:100%;}\r\n._section ._container .grid-4{ width:100%;}\r\n._section ._container .grid-3{ width:100%;}\r\n._section ._container .grid-2{width: 33%; padding: 5px;}\r\n._section ._container .grid-1{ width:100%;}\r\n._btn{ }\r\n._btn:hover{ }\r\n._galery-image img{\r\nwidth: 33.333333% !important;\r\nheight:115px !important; \r\n }\r\n._padding-10{ }\r\n._berita-berita-lain img{ }\r\n._berita-berita-lain h6{height: 100px !important; }\r\n._berita-berita-lain h6 a{font-size: 14px !important;}\r\n._lokasi-image img{ }\r\n._galery-video{ }\r\n._galery-video-full{display:none !important; }\r\n._container-width-full ._container{ }\r\n._container-width-full ._container ._grid{ }\r\n._section ._container ._grid-1000{width: 90% !important; }\r\n._padding-less-container-grid ._container{ }\r\n._padding-less-container-grid ._container ._grid{ }\r\n._social-media-badge{ visibility: hidden;}\r\n._social-media-badge ._container{ }\r\n._font-permanent-marker{font-size: 24px; }\r\n._font-ubuntu-marker{ }\r\n._font-ubuntu-marker-bold{ }\r\n._section-konservasi-overview .grid-2{ }\r\n._section-konservasi-overview .grid-2:nth-child(2){ }\r\n._icon-alignment i{ }\r\n._section-konservasi-overview .grid-2:last-child{ }\r\n.carousel-control-next{ }\r\n.carousel-control-prev{ }\r\n._beranda-section1{background: url(/uploads/image/section1-mobile.png); background-position: bottom; background-size: 250%; background-position-y: 110px; height: unset; padding-bottom: 200px;}\r\n._beranda-section2{background-position: bottom; background-position-y: 70%; }\r\n._beranda-section3{padding-bottom: 315px; background: url(uploads/image/section3-mobile.png); background-repeat: no-repeat; background-position: bottom; background-size: 100%; background-position-x: -10px; height: unset !important;}\r\n._beranda-section4{ background-position: bottom; padding-bottom: 167px; background-size: 295px !important;}\r\n._beranda-section-7{ margin-bottom: -70px; }\r\n.carousel-indicators{ }\r\n._icon-social-badge-instagram{ }\r\n._icon-social-badge-instagram:hover{ }\r\n._icon-social-badge-facebook{ }\r\n._icon-social-badge-facebook:hover{ }\r\n._icon-social-badge-twitter{ }\r\n._icon-social-badge-twitter:hover{ }\r\n._icon-social-badge-youtube{ }\r\n._icon-social-badge-youtube:hover{ }\r\n._berita-image-2 img{ \r\nwidth: 50% !important;\r\n    height: 150px !important;\r\n    object-fit: cover;}\r\n._breadcrumb{ }\r\n._breadcrumb a{ }\r\n._breadcrumb .fa{ }\r\n._border ._container{ \r\n    border: none;\r\n    box-shadow: 0px 1px 5px lightgrey;}\r\n._shadow ._container{ }\r\n._accordion-icon .card{ }\r\n._accordion-icon .card .card-header{ }\r\n._accordion-icon .icon-accordion{margin-left: 10px !important;\r\n    position: absolute;\r\n    right: 20;\r\n    height: 20px;\r\n    width: 20px;\r\n    top: 22px !important;\r\n    padding: 3px 4px;}\r\n._accordion-icon .card .card-header .mb-0{ width: 105% !important}\r\n._accordion-icon .card .card-header .mb-0 .btn{     font-size: 14px; text-align: left;}\r\n._konservasi-kami-content{ }\r\n.bootstrap_carousel_type_1 .carousel .carousel-item { padding-left: 30% !important; height: 170px !important;}\r\n.bootstrap_carousel_type_1 .carousel .carousel-item img{ margin-top:30px;}\r\n.bootstrap_carousel_type_1 .carousel-control-next { right: 5% !important; left: unset !important; top: 30% !important;}\r\n.bootstrap_carousel_type_1 .carousel-control-prev { left: 5% !important; top: 30% !important;}\r\n.bootstrap_carousel_type_1 .carousel .carousel-indicators{visibility: visible !important;}\r\n.bootstrap_carousel_type_1 .carousel .carousel-indicators li{width: 4px; height: 4px; border: unset; border-radius: 5px !important; background-color: #888888;}\r\n.bootstrap_carousel_type_1 .carousel .carousel-indicators .active{width: 6px; height: 6px; margin-top:-1px;}\r\n.bootstrap_carousel_type_1 .carousel .carousel-caption{display:block !important}\r\n.bootstrap_carousel_type_1 .carousel .carousel-caption h5{top:-100px !important; left: -30px !important;}\r\n:target{ }\r\n.slider-1{\r\nheight: auto !important;\r\n}\r\n.slider-1 .preview-img{\r\ntext-align:center;\r\n}\r\n.slider-1 .preview-img .caption h5{\r\ntext-align:left !important;\r\n}\r\n.slider-1 .preview-img .caption p{\r\ntext-align:left !important;\r\n}\r\n.slider-1 .preview-img img{\r\nwidth: 65% !important;\r\n    margin: unset !important;\r\n}\r\n.slider-1 .slider-item-container .slider-item{\r\nposition:unset !important;\r\n}\r\n.slider-1 .slider-item-container .slider-item img{\r\nwidth: 60px !important;\r\nheight: 60px !important;\r\npadding: 0px !important;\r\n}\r\n.slider-1 .slider-item-container .slider-item:nth-child(5) {\r\nposition: absolute !important;\r\ntop: 80px !important;\r\n    left: 70 !important;\r\n    width: unset !important;\r\n}\r\n.slider-1 .slider-item-container .slider-item:nth-child(6) {\r\nposition: absolute !important;\r\ntop: 80px !important;\r\n    left: 175 !important;\r\n    width: unset !important;\r\n}\r\n.slider-1 .slider-item-container .slider-item:nth-child(7) {\r\nposition: absolute !important;\r\ntop: 80px !important;\r\n    left: 275 !important;\r\n    width: unset !important;\r\n}\r\n.bootstrap_carousel_type_3 .carousel .carousel-indicators{\r\nbottom: 25% !important;\r\nalign-items: center;\r\n}\r\n.bootstrap_carousel_type_3 .carousel .carousel-indicators li{\r\nheight: 4px !important;\r\nwidth: 4px  !important;\r\n}\r\n.bootstrap_carousel_type_3 .carousel .carousel-indicators .active{\r\nheight: 6px !important;\r\nwidth: 6px !important;\r\nbackground-color: #2679BF !important;\r\n}\r\n.bootstrap_carousel_type_3 .carousel .carousel-control-next{\r\nwidth: 40px !important;\r\n    height: 40px !important;\r\n    padding: 10px !important;\r\n    position: absolute !important;\r\n    left: 78% !important;\r\n    top: -100px !important;\r\n}\r\n.bootstrap_carousel_type_3 .carousel .carousel-control-prev{\r\nwidth: 40px !important;\r\n    height: 40px !important;\r\n    padding: 10px !important;\r\n    top: -100px !important;\r\n}\r\n.bootstrap_carousel_type_3 .carousel .carousel-inner{\r\nheight: 400px !important;\r\n}\r\n.bootstrap_carousel_type_3 .carousel .carousel-inner .carousel-item img{\r\nheight: 300px;\r\nobject-fit: cover;\r\n}\r\n.bootstrap_carousel_type_3 .carousel .carousel-inner .carousel-item .carousel-caption {\r\ndisplay: block !important;\r\nposition: absolute !important;\r\nbottom: -120px !important;\r\nbackground-color: #2679BF !important;\r\n}\r\n.slider-3 .slider-item-container .slider-item img{\r\nwidth:80px !important;\r\nheight: 80px !important;\r\n}\r\n.slider-3 .slider-item-container .active img{\r\nwidth: 110px !Important;\r\nheight: 110px !Important;\r\ntop: 5% !important;\r\n}\r\n.slider-3 .slider-item-container .slider-item:first-child{\r\nleft:0% !Important;\r\n}\r\n.slider-3 .slider-item-container .slider-item:nth-child(2){\r\nleft: 15% !Important;\r\n}\r\n.slider-3 .slider-item-container .slider-item:nth-child(4){\r\nright: 15% !Important;\r\n}\r\n.slider-3 .slider-item-container .slider-item:last-child{\r\nright:0% !Important;\r\n}\r\n.slider-3 .slider-item-container .slider-item img:first-child, .slider-3 .slider-item-container .slider-item img:last-child{\r\nleft:0 !important;\r\nright:0 !important;\r\n}\r\n.slider-3 .slider-item-container .slider-item h5{\r\nmargin-top: 120px !important;\r\n}\r\n._tentang-kami-section3{\r\npadding-bottom: unset !important;\r\n}\r\n._konservasi-section1 {\r\n    margin-top: -60px;\r\n}\r\n._konservasi-section1 ._container ._grid ._image-konservasi-grid {\r\n    position: absolute;\r\n    top: 125;\r\n    margin: 0 !important;\r\n    padding: 0 !important;\r\n    left: 0;\r\n}\r\n._konservasi-section2 {\r\n    margin-top: -60px;\r\n}\r\n._konservasi-section2 ._container ._grid ._image-konservasi-grid {\r\n    position: absolute;\r\n    top: -525;\r\n    margin: 0 !important;\r\n    padding: 0 !important;\r\n    left: 0;\r\n}\r\n._konservasi-section3 {\r\n    margin-top: -60px;\r\n}\r\n._konservasi-section3 ._container ._grid ._image-konservasi-grid {\r\n    position: absolute;\r\n    top: 150;\r\n    margin: 0 !important;\r\n    padding: 0 !important;\r\n    left: 0;\r\n}\r\n._konservasi-section4 {\r\n    margin-top: -60px;\r\n}\r\n._konservasi-section4 ._container ._grid ._image-konservasi-grid {\r\n    position: absolute;\r\n    top: -525;\r\n    margin: 0 !important;\r\n    padding: 0 !important;\r\n    left: 0;\r\n}\r\n._konservasi-kami-description{\r\nmargin-top:310px;\r\n}\r\n._konservasi-section1 ._container ._grid{\r\ntext-align: center;\r\n}\r\n._konservasi-section2 ._container ._grid{\r\ntext-align: center;\r\n}\r\n._konservasi-section3 ._container ._grid{\r\ntext-align: center;\r\n}\r\n._konservasi-section4 ._container ._grid{\r\ntext-align: center;\r\n}\r\n._konservasi-section1 ._container ._grid a{\r\nwidth: 100%\r\n}\r\n._konservasi-section2 ._container ._grid a{\r\nwidth: 100%\r\n}\r\n._konservasi-section3 ._container ._grid a{\r\nwidth: 100%\r\n}\r\n._konservasi-section4 ._container ._grid a{\r\nwidth: 100%\r\n}\r\n._image-lokasi-head{\r\nposition: absolute;\r\ntop: 100px;\r\n}\r\n._lokasi-image{\r\ntext-align: center;\r\n}\r\n._lokasi-image ._description{\r\nmargin-top: 500px;\r\ntext-align: left !important;\r\n}\r\n.slider-4 .slider-item-container .slider-item {\r\n    width: 100% !important;\r\n    height: 100% !important;\r\n    top: unset !important;\r\n}\r\n.slider-4 .slider-item-container .slider-item img {\r\n    width: 100% !important;\r\n    height: 420px !important;\r\n    margin-top: 70px;\r\n    object-fit: cover;\r\n}\r\n.slider-4 .slider-item-container .slider-item h2 {\r\n    left: 0;\r\n    width: 100%;\r\n    text-align: center;\r\n    display: block !important;\r\n}\r\n.slider-4 .slider-item-container .slider-item h5 {\r\n    left: 0 !important;\r\n    top: 35px !important;\r\n    text-align: center;\r\n    width: 100%;\r\n    display: block !important;\r\n}\r\n.slider-4 .slider-item-container .slider-item p {\r\n    width: 100%;\r\n    left: 0 !important;\r\n    font-size: 16px !important;\r\n    top: unset !important;\r\n    margin-top: 20px;\r\n    display: block !important;\r\n    position: relative !important;\r\n}', 425, 321, NULL, NULL),
(5, 1, 'body{ \r\nwidth:100%;\r\n}\r\np{\r\nfont-size: 14px;\r\n}\r\nh2{\r\nfont-size: 18px;\r\ncolor: #2679BF;\r\n}\r\nh3{\r\nfont-size: 16px;\r\n}\r\n._show-mobile{\r\nvisibility: visible;\r\ndisplay: unset;\r\n}\r\n._show-desktop{\r\ndisplay: none;\r\n}\r\n.burger-menu{\r\nposition: absolute;\r\n    right: 0;\r\n    margin-right: 20px;\r\n    margin-top: 13px;\r\n}\r\n._navbar{width:320px; padding: 10px 5px;}\r\n._navbar ._menu-link{ float: none;}\r\n._navbar ._menu-link ul{ }\r\n._navbar ._menu-link ul li{ float: none;}\r\n._navbar ._menu-link ul li a{ }\r\n._footer ._menu-link{ }\r\n._footer ._menu-link ul{ }\r\n._footer ._menu-link ul li{ }\r\n._footer ._menu-link ul li a{ }\r\n._footer ._container{ }\r\n._footer ._site-logo,._navbar ._site-logo{ }\r\n._footer ._site-contact_detail{ }\r\n._text-center{ }\r\n._text-right{ }\r\n._float-right{ }\r\n._container{width:320px; }\r\n._section {width:320px; }\r\n._section ._container{width: 90%; }\r\n._container-margin-20 ._container{ }\r\n._section ._container ._grid{ }\r\n._section ._container .grid-12{width:100%; }\r\n._section ._container .grid-11{width:100%; }\r\n._section ._container .grid-10{width:100%; }\r\n._section ._container .grid-9{ width:100%;}\r\n._section ._container .grid-8{ width:100%;}\r\n._section ._container .grid-7{ width:100%;}\r\n._section ._container .grid-6{ width:100%;}\r\n._section ._container .grid-5{ width:100%;}\r\n._section ._container .grid-4{ width:100%;}\r\n._section ._container .grid-3{ width:100%;}\r\n._section ._container .grid-2{width: 33%; padding: 5px;}\r\n._section ._container .grid-1{ width:100%;}\r\n._grid.grid-2 h6{font-size: 12px;}\r\n._btn{ }\r\n._btn:hover{ }\r\n._galery-image img{\r\nwidth: 33.333333% !important;\r\nheight: 115px !important;\r\n }\r\n._padding-10{ }\r\n._berita-berita-lain img{ }\r\n._berita-berita-lain h6{ height: 71px !important; }\r\n._berita-berita-lain h6 a{font-size: 14px !important;}\r\n._lokasi-image img{ }\r\n._galery-video{ }\r\n._galery-video-full{display: none !important }\r\n._container-width-full ._container{ }\r\n._container-width-full ._container ._grid{ }\r\n._section ._container ._grid-1000{width: 90% !important; }\r\n._padding-less-container-grid ._container{ }\r\n._padding-less-container-grid ._container ._grid{ }\r\n._social-media-badge{ visibility: hidden;}\r\n._social-media-badge ._container{ }\r\n._font-permanent-marker{font-size: 24px; }\r\n._font-ubuntu-marker{ }\r\n._font-ubuntu-marker-bold{ }\r\n._section-konservasi-overview .grid-2{ }\r\n._section-konservasi-overview .grid-2:nth-child(2){ }\r\n._icon-alignment i{ }\r\n._section-konservasi-overview .grid-2:last-child{ }\r\n.carousel-control-next{ }\r\n.carousel-control-prev{ }\r\n._beranda-section1{background: url(/uploads/image/section1-mobile.png); background-position: bottom; background-size: 250%; background-position-y: 110px; height: unset; padding-bottom: 200px;}\r\n._beranda-section2{background-position: bottom; background-position-y: 70%; }\r\n._beranda-section3{padding-bottom: 240px; background: url(uploads/image/section3-mobile.png); background-repeat: no-repeat; background-position: bottom; background-size: 100%; background-position-x: -10px; height: unset !important;}\r\n._beranda-section4{ background-position: bottom; padding-bottom: 167px; background-size: 295px !important;}\r\n._beranda-section-7{ margin-bottom: -70px; }\r\n.carousel-indicators{ }\r\n._icon-social-badge-instagram{ }\r\n._icon-social-badge-instagram:hover{ }\r\n._icon-social-badge-facebook{ }\r\n._icon-social-badge-facebook:hover{ }\r\n._icon-social-badge-twitter{ }\r\n._icon-social-badge-twitter:hover{ }\r\n._icon-social-badge-youtube{ }\r\n._icon-social-badge-youtube:hover{ }\r\n._berita-image-2 img{ \r\nwidth: 50% !important;\r\n    height: 150px !important;\r\n    object-fit: cover;}\r\n._breadcrumb{ }\r\n._breadcrumb a{ }\r\n._breadcrumb .fa{ }\r\n._border ._container{ \r\n    border: none;\r\n    box-shadow: 0px 1px 5px lightgrey;}\r\n._shadow ._container{ }\r\n._accordion-icon .card{ }\r\n._accordion-icon .card .card-header{ }\r\n._accordion-icon .icon-accordion{margin-left: 10px !important; }\r\n._accordion-icon .card .card-header .mb-0{ width: 105% !important}\r\n._accordion-icon .card .card-header .mb-0 .btn{     font-size: 14px; text-align: left;}\r\n._konservasi-kami-content{ }\r\n.bootstrap_carousel_type_1 .carousel .carousel-item { padding-left: 30% !important; height: 170px !important;}\r\n.bootstrap_carousel_type_1 .carousel .carousel-item img{ margin-top:30px;}\r\n.bootstrap_carousel_type_1 .carousel-control-next { right: 5% !important; left: unset !important; top: 30% !important;}\r\n.bootstrap_carousel_type_1 .carousel-control-prev { left: 5% !important; top: 30% !important;}\r\n.bootstrap_carousel_type_1 .carousel .carousel-indicators{visibility: visible !important;}\r\n.bootstrap_carousel_type_1 .carousel .carousel-indicators li{width: 4px; height: 4px; border: unset; border-radius: 5px !important; background-color: #888888;}\r\n.bootstrap_carousel_type_1 .carousel .carousel-indicators .active{width: 6px; height: 6px; margin-top:-1px;}\r\n.bootstrap_carousel_type_1 .carousel .carousel-caption{display:block !important}\r\n.bootstrap_carousel_type_1 .carousel .carousel-caption h5{top:-100px !important; left: -30px !important;}\r\n:target{ }\r\n.slider-1{\r\nheight: auto !important;\r\n}\r\n.slider-1 .preview-img{\r\ntext-align:center;\r\n}\r\n.slider-1 .preview-img .caption h5{\r\ntext-align:left !important;\r\n}\r\n.slider-1 .preview-img .caption p{\r\ntext-align:left !important;\r\n}\r\n.slider-1 .preview-img img{\r\nwidth: 65% !important;\r\n    margin: unset !important;\r\n}\r\n.slider-1 .slider-item-container .slider-item{\r\nposition:unset !important;\r\n}\r\n.slider-1 .slider-item-container .slider-item img{\r\nwidth: 60px !important;\r\nheight: 60px !important;\r\npadding: 0px !important;\r\n}\r\n.slider-1 .slider-item-container .slider-item:nth-child(5) {\r\nposition: absolute !important;\r\ntop: 80px !important;\r\n    left: 40 !important;\r\n    width: unset !important;\r\n}\r\n.slider-1 .slider-item-container .slider-item:nth-child(6) {\r\nposition: absolute !important;\r\ntop: 80px !important;\r\n    left: 110 !important;\r\n    width: unset !important;\r\n}\r\n.slider-1 .slider-item-container .slider-item:nth-child(7) {\r\nposition: absolute !important;\r\ntop: 80px !important;\r\n    left: 175 !important;\r\n    width: unset !important;\r\n}\r\n.bootstrap_carousel_type_3 .carousel .carousel-indicators{\r\nbottom: 25% !important;\r\nalign-items: center;\r\n}\r\n.bootstrap_carousel_type_3 .carousel .carousel-indicators li{\r\nheight: 4px !important;\r\nwidth: 4px  !important;\r\n}\r\n.bootstrap_carousel_type_3 .carousel .carousel-indicators .active{\r\nheight: 6px !important;\r\nwidth: 6px !important;\r\nbackground-color: #2679BF !important;\r\n}\r\n.bootstrap_carousel_type_3 .carousel .carousel-control-next{\r\nwidth: 40px !important;\r\n    height: 40px !important;\r\n    padding: 10px !important;\r\n    position: absolute !important;\r\n    left: 78% !important;\r\n    top: -100px !important;\r\n}\r\n.bootstrap_carousel_type_3 .carousel .carousel-control-prev{\r\nwidth: 40px !important;\r\n    height: 40px !important;\r\n    padding: 10px !important;\r\n    top: -100px !important;\r\n}\r\n.bootstrap_carousel_type_3 .carousel .carousel-inner{\r\nheight: 400px !important;\r\n}\r\n.bootstrap_carousel_type_3 .carousel .carousel-inner .carousel-item img{\r\nheight: 300px;\r\nobject-fit: cover;\r\n}\r\n.bootstrap_carousel_type_3 .carousel .carousel-inner .carousel-item .carousel-caption {\r\ndisplay: block !important;\r\nposition: absolute !important;\r\nbottom: -120px !important;\r\nbackground-color: #2679BF !important;\r\n}\r\n.slider-3 .slider-item-container .slider-item img{\r\nwidth:80px !important;\r\nheight: 80px !important;\r\n}\r\n.slider-3 .slider-item-container .active img{\r\nwidth: 110px !Important;\r\nheight: 110px !Important;\r\ntop: 5% !important;\r\n}\r\n.slider-3 .slider-item-container .slider-item:first-child{\r\nleft:-10% !Important;\r\n}\r\n.slider-3 .slider-item-container .slider-item:nth-child(2){\r\nleft: 5% !Important;\r\n}\r\n.slider-3 .slider-item-container .slider-item:nth-child(4){\r\nright: 5% !Important;\r\n}\r\n.slider-3 .slider-item-container .slider-item:last-child{\r\nright:-10% !Important;\r\n}\r\n.slider-3 .slider-item-container .slider-item img:first-child, .slider-3 .slider-item-container .slider-item img:last-child{\r\nleft:0 !important;\r\nright:0 !important;\r\n}\r\n.slider-3 .slider-item-container .slider-item h5{\r\nmargin-top: 120px !important;\r\n}\r\n._tentang-kami-section3{\r\npadding-bottom: unset !important;\r\n}\r\n._konservasi-section1 {\r\n    margin-top: -60px;\r\n}\r\n._konservasi-section1 ._container ._grid ._image-konservasi-grid {\r\n    position: absolute;\r\n    top: 125;\r\n    margin: 0 !important;\r\n    padding: 0 !important;\r\n    left: 0;\r\n}\r\n._konservasi-section2 {\r\n    margin-top: -60px;\r\n}\r\n._konservasi-section2 ._container ._grid ._image-konservasi-grid {\r\n    position: absolute;\r\n    top: -525;\r\n    margin: 0 !important;\r\n    padding: 0 !important;\r\n    left: 0;\r\n}\r\n._konservasi-section3 {\r\n    margin-top: -60px;\r\n}\r\n._konservasi-section3 ._container ._grid ._image-konservasi-grid {\r\n    position: absolute;\r\n    top: 150;\r\n    margin: 0 !important;\r\n    padding: 0 !important;\r\n    left: 0;\r\n}\r\n._konservasi-section4 {\r\n    margin-top: -60px;\r\n}\r\n._konservasi-section4 ._container ._grid ._image-konservasi-grid {\r\n    position: absolute;\r\n    top: -525;\r\n    margin: 0 !important;\r\n    padding: 0 !important;\r\n    left: 0;\r\n}\r\n._konservasi-kami-description{\r\nmargin-top:250px;\r\n}\r\n._konservasi-section1 ._container ._grid{\r\ntext-align: center;\r\n}\r\n._konservasi-section2 ._container ._grid{\r\ntext-align: center;\r\n}\r\n._konservasi-section3 ._container ._grid{\r\ntext-align: center;\r\n}\r\n._konservasi-section4 ._container ._grid{\r\ntext-align: center;\r\n}\r\n._konservasi-section1 ._container ._grid a{\r\nwidth: 100%\r\n}\r\n._konservasi-section2 ._container ._grid a{\r\nwidth: 100%\r\n}\r\n._konservasi-section3 ._container ._grid a{\r\nwidth: 100%\r\n}\r\n._konservasi-section4 ._container ._grid a{\r\nwidth: 100%\r\n}\r\n._image-lokasi-head{\r\nposition: absolute;\r\ntop: 100px;\r\n}\r\n._lokasi-image{\r\ntext-align: center;\r\n}\r\n._lokasi-image ._description{\r\nmargin-top: 400px;\r\ntext-align: left !important;\r\n}.slider-4 .slider-item-container .slider-item {\r\n    width: 100% !important;\r\n    height: 100% !important;\r\n    top: unset !important;\r\n}\r\n.slider-4 .slider-item-container .slider-item img {\r\n    width: 100% !important;\r\n    height: 420px !important;\r\n    margin-top: 70px;\r\n    object-fit: cover;\r\n}\r\n.slider-4 .slider-item-container .slider-item h2 {\r\n    left: 0;\r\n    width: 100%;\r\n    text-align: center;\r\n    display: block !important;\r\n}\r\n.slider-4 .slider-item-container .slider-item h5 {\r\n    left: 0 !important;\r\n    top: 35px !important;\r\n    text-align: center;\r\n    width: 100%;\r\n    display: block !important;\r\n}\r\n.slider-4 .slider-item-container .slider-item p {\r\n    width: 100%;\r\n    left: 0 !important;\r\n    font-size: 16px !important;\r\n    top: unset !important;\r\n    margin-top: 20px;\r\n    display: block !important;\r\n    position: relative !important;\r\n}', 320, 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `grids`
--

CREATE TABLE `grids` (
  `id` int(10) UNSIGNED NOT NULL,
  `html_id` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `html_class` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `length` tinyint(4) NOT NULL,
  `sequence` int(11) NOT NULL,
  `sections` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `grids`
--

INSERT INTO `grids` (`id`, `html_id`, `html_class`, `length`, `sequence`, `sections`, `created_at`, `updated_at`) VALUES
(1, NULL, '', 12, 1, 1, NULL, NULL),
(2, NULL, NULL, 6, 1, 2, NULL, NULL),
(3, NULL, NULL, 12, 1, 3, NULL, NULL),
(4, NULL, NULL, 12, 2, 3, NULL, NULL),
(6, NULL, '_grid-4-custom', 6, 1, 4, NULL, NULL),
(7, NULL, '_float-right', 6, 2, 5, NULL, NULL),
(8, NULL, '_grid-1000', 12, 1, 6, NULL, NULL),
(9, NULL, '', 12, 2, 6, NULL, NULL),
(10, NULL, NULL, 12, 1, 7, NULL, NULL),
(11, NULL, NULL, 6, 2, 7, NULL, NULL),
(12, NULL, NULL, 6, 3, 7, NULL, NULL),
(13, NULL, NULL, 12, 1, 8, NULL, NULL),
(14, NULL, NULL, 12, 2, 8, NULL, NULL),
(15, NULL, '_grid-1000', 12, 1, 9, NULL, NULL),
(16, NULL, '_grid-1000', 12, 2, 9, NULL, NULL),
(17, NULL, '', 12, 3, 9, NULL, NULL),
(18, NULL, NULL, 12, 1, 10, NULL, NULL),
(19, NULL, NULL, 12, 2, 10, NULL, NULL),
(20, NULL, NULL, 12, 3, 10, NULL, NULL),
(21, NULL, NULL, 12, 1, 11, NULL, NULL),
(22, NULL, NULL, 12, 2, 11, NULL, NULL),
(23, NULL, NULL, 12, 1, 12, NULL, NULL),
(24, NULL, NULL, 12, 2, 12, NULL, NULL),
(25, NULL, NULL, 12, 3, 12, NULL, NULL),
(26, NULL, NULL, 12, 1, 13, NULL, NULL),
(27, NULL, '', 6, 1, 14, NULL, NULL),
(28, NULL, '_berita-image-2', 3, 2, 14, NULL, NULL),
(29, NULL, '_berita-berita-lain', 3, 3, 14, NULL, NULL),
(30, NULL, '_galery-image', 12, 1, 15, NULL, NULL),
(31, NULL, NULL, 6, 1, 16, NULL, NULL),
(32, NULL, NULL, 6, 2, 16, NULL, NULL),
(33, NULL, NULL, 6, 1, 17, NULL, NULL),
(34, NULL, NULL, 6, 2, 17, NULL, NULL),
(35, NULL, NULL, 6, 1, 18, NULL, NULL),
(36, NULL, NULL, 6, 2, 18, NULL, NULL),
(37, NULL, NULL, 6, 1, 19, NULL, NULL),
(38, NULL, NULL, 6, 2, 19, NULL, NULL),
(39, NULL, NULL, 6, 1, 20, NULL, NULL),
(40, NULL, NULL, 6, 2, 20, NULL, NULL),
(41, NULL, NULL, 12, 2, 21, NULL, NULL),
(42, NULL, NULL, 12, 1, 22, NULL, NULL),
(43, NULL, NULL, 5, 2, 22, NULL, NULL),
(44, NULL, NULL, 3, 3, 22, NULL, NULL),
(45, NULL, NULL, 4, 4, 22, NULL, NULL),
(46, NULL, NULL, 12, 5, 22, NULL, NULL),
(47, NULL, NULL, 12, 6, 22, NULL, NULL),
(48, NULL, NULL, 12, 1, 23, NULL, NULL),
(49, NULL, NULL, 6, 2, 23, NULL, NULL),
(50, NULL, NULL, 6, 3, 23, NULL, NULL),
(51, NULL, NULL, 12, 4, 23, NULL, NULL),
(52, NULL, NULL, 12, 5, 23, NULL, NULL),
(53, NULL, NULL, 12, 1, 24, NULL, NULL),
(54, NULL, '_padding-konservasi-detail', 6, 2, 24, NULL, NULL),
(55, NULL, NULL, 6, 3, 24, NULL, NULL),
(56, NULL, NULL, 12, 4, 24, NULL, NULL),
(57, NULL, NULL, 12, 1, 25, NULL, NULL),
(58, NULL, NULL, 6, 2, 25, NULL, NULL),
(59, NULL, NULL, 6, 3, 25, NULL, NULL),
(60, NULL, NULL, 12, 4, 25, NULL, NULL),
(61, NULL, NULL, 12, 5, 25, NULL, NULL),
(62, NULL, NULL, 12, 1, 26, NULL, NULL),
(63, NULL, NULL, 6, 2, 26, NULL, NULL),
(64, NULL, NULL, 6, 3, 26, NULL, NULL),
(65, NULL, NULL, 12, 4, 26, NULL, NULL),
(66, NULL, NULL, 12, 1, 27, NULL, NULL),
(67, NULL, '_grid-1000', 12, 1, 28, NULL, NULL),
(69, NULL, NULL, 6, 1, 29, NULL, NULL),
(70, NULL, NULL, 6, 2, 29, NULL, NULL),
(71, NULL, '', 6, 1, 30, NULL, NULL),
(72, NULL, '', 6, 2, 30, NULL, NULL),
(73, NULL, NULL, 6, 1, 31, NULL, NULL),
(74, NULL, NULL, 6, 2, 31, NULL, NULL),
(75, NULL, NULL, 6, 1, 32, NULL, NULL),
(76, NULL, NULL, 6, 2, 32, NULL, NULL),
(77, NULL, NULL, 12, 1, 33, NULL, NULL),
(78, NULL, NULL, 6, 1, 34, NULL, NULL),
(79, NULL, NULL, 6, 2, 34, NULL, NULL),
(80, NULL, NULL, 6, 1, 35, NULL, NULL),
(81, NULL, NULL, 6, 2, 35, NULL, NULL),
(82, NULL, NULL, 6, 1, 36, NULL, NULL),
(83, NULL, NULL, 6, 2, 36, NULL, NULL),
(84, NULL, NULL, 6, 1, 37, NULL, NULL),
(85, NULL, NULL, 6, 2, 37, NULL, NULL),
(86, NULL, NULL, 12, 1, 38, NULL, NULL),
(87, NULL, NULL, 12, 2, 38, NULL, NULL),
(88, NULL, NULL, 12, 3, 38, NULL, NULL),
(89, NULL, NULL, 12, 4, 38, NULL, NULL),
(90, NULL, '_menu-navigation _border-right', 2, 2, 21, NULL, NULL),
(91, NULL, '_menu-navigation _border-right', 2, 3, 21, NULL, NULL),
(92, NULL, '_menu-navigation _border-right', 2, 4, 21, NULL, NULL),
(93, NULL, '_menu-navigation _border-right', 2, 5, 21, NULL, NULL),
(94, NULL, '_menu-navigation _border-right', 2, 6, 21, NULL, NULL),
(95, NULL, '_menu-navigation', 2, 7, 21, NULL, NULL),
(96, NULL, '', 12, 1, 21, NULL, NULL),
(97, NULL, NULL, 12, 1, 39, NULL, NULL),
(98, NULL, NULL, 12, 2, 39, NULL, NULL),
(99, NULL, NULL, 12, 3, 39, NULL, NULL),
(100, NULL, NULL, 12, 4, 39, NULL, NULL),
(101, NULL, NULL, 12, 1, 40, NULL, NULL),
(102, NULL, NULL, 12, 2, 40, NULL, NULL),
(103, NULL, NULL, 12, 3, 40, NULL, NULL),
(104, NULL, NULL, 12, 4, 40, NULL, NULL),
(105, NULL, NULL, 12, 1, 41, NULL, NULL),
(106, NULL, NULL, 12, 2, 41, NULL, NULL),
(107, NULL, NULL, 12, 3, 41, NULL, NULL),
(108, NULL, NULL, 12, 4, 41, NULL, NULL),
(109, NULL, NULL, 12, 1, 42, NULL, NULL),
(110, NULL, NULL, 12, 2, 42, NULL, NULL),
(111, NULL, NULL, 12, 3, 42, NULL, NULL),
(112, NULL, NULL, 12, 4, 42, NULL, NULL),
(113, NULL, NULL, 12, 1, 43, NULL, NULL),
(114, NULL, NULL, 12, 2, 43, NULL, NULL),
(115, NULL, NULL, 12, 3, 43, NULL, NULL),
(116, NULL, NULL, 12, 4, 43, NULL, NULL),
(117, NULL, NULL, 12, 1, 44, NULL, NULL),
(118, NULL, NULL, 12, 2, 44, NULL, NULL),
(119, NULL, NULL, 12, 3, 44, NULL, NULL),
(120, NULL, NULL, 12, 4, 44, NULL, NULL),
(121, NULL, NULL, 12, 1, 45, NULL, NULL),
(122, NULL, NULL, 12, 2, 45, NULL, NULL),
(123, NULL, NULL, 12, 3, 45, NULL, NULL),
(124, NULL, NULL, 12, 4, 45, NULL, NULL),
(125, NULL, NULL, 12, 1, 46, NULL, NULL),
(126, NULL, NULL, 12, 2, 46, NULL, NULL),
(127, NULL, NULL, 12, 3, 46, NULL, NULL),
(128, NULL, NULL, 12, 4, 46, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `groups`
--

CREATE TABLE `groups` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `groups`
--

INSERT INTO `groups` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'test group 1 updated', '2019-09-24 01:44:41', '2019-09-24 01:46:28'),
(4, 'test', '2019-10-02 01:40:36', '2019-10-02 01:40:36'),
(5, 'test', '2019-10-02 01:49:50', '2019-10-02 01:49:50');

-- --------------------------------------------------------

--
-- Table structure for table `library_components`
--

CREATE TABLE `library_components` (
  `id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `css` text,
  `javascript` text,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `library_components`
--

INSERT INTO `library_components` (`id`, `name`, `css`, `javascript`, `created_at`, `updated_at`) VALUES
(1, 'bootstrap_carousel_type_1', '.bootstrap_carousel_type_1 .carousel .carousel-control-next{\r\nposition: absolute;\r\nbottom: 10px;\r\nright: unset;\r\nleft: 38%;\r\nborder: 2px solid #2679BF;\r\npadding: 10px;\r\nwidth: 33px;\r\nheight: 33px;\r\nborder-radius: 15pc;\r\ntop: unset;\r\nbackground-color: transparent;\r\n}\r\n.bootstrap_carousel_type_1 .carousel .carousel-control-next .carousel-control-next-icon\r\n{\r\n  background-image: url(\"data:image/svg+xml;charset=utf8,%3Csvg xmlns=\'http://www.w3.org/2000/svg\' fill=\'%232679BF\' viewBox=\'0 0 8 8\'%3E%3Cpath d=\'M2.75 0l-1.5 1.5 2.5 2.5-2.5 2.5 1.5 1.5 4-4-4-4z\'/%3E%3C/svg%3E\")!important;\r\n}\r\n.bootstrap_carousel_type_1 .carousel .carousel-control-prev .carousel-control-prev-icon\r\n{\r\n  background-image: url(\"data:image/svg+xml;charset=utf8,%3Csvg xmlns=\'http://www.w3.org/2000/svg\' fill=\'%232679BF\' viewBox=\'0 0 8 8\'%3E%3Cpath d=\'M5.25 0l-4 4 4 4 1.5-1.5-2.5-2.5 2.5-2.5-1.5-1.5z\'/%3E%3C/svg%3E\");!important;\r\n}\r\n.bootstrap_carousel_type_1 .carousel .carousel-control-prev{\r\nposition: absolute;\r\nbottom: 10px;\r\nright: 65%;\r\nborder: 2px solid #2679BF;\r\npadding: 10px;\r\nwidth: 33px;\r\nheight: 33px;\r\nborder-radius: 15pc;\r\ntop: unset;\r\nleft: unset;\r\n}\r\n.bootstrap_carousel_type_1 .carousel .carousel-caption{\r\nvisibility:hidden;\r\n}\r\n.bootstrap_carousel_type_1 .carousel .carousel-indicators{\r\nvisibility : hidden;\r\n}\r\n.bootstrap_carousel_type_1 .carousel .carousel-item{\r\npadding-left: 15%;\r\nheight: 250px;\r\n}\r\n.bootstrap_carousel_type_1 .carousel .carousel-item img{\r\n    right: 0;\r\n    width: 50% !important;\r\n}\r\n.bootstrap_carousel_type_1 .carousel .carousel-item .carousel-caption.d-none.d-md-block h5 {\r\n    visibility: visible;\r\n    position: absolute;\r\n    top: -180;\r\n    left: -60;\r\n    color: black;\r\n}', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2, 'bootstrap_carousel_type_2', '.bootstrap_carousel_type_2 .carousel .carousel-indicators {\r\n    position: absolute;\r\n    right: 25;\r\n    bottom: 35%;\r\n    top: 35%;\r\n    z-index: 15;\r\n    justify-content: center;\r\n    list-style: none;\r\n    float: unset;\r\n    left: unset;\r\n    display: unset;\r\n    padding: unset;\r\n    margin: unset;\r\n}\r\n\r\n.bootstrap_carousel_type_2 .carousel .carousel-indicators li {\r\n    box-sizing: content-box;\r\n    width: 10px;\r\n    height: 10px;\r\n    cursor: pointer;\r\n    background-color: #fff;\r\n    background-clip: padding-box;\r\n    margin: 15px;\r\n    border-radius: 15px;\r\n    flex: unset;\r\n    text-indent: unset;\r\n    border: unset;\r\n    transition: unset;\r\n    opacity: unset;\r\n}\r\n.bootstrap_carousel_type_2 .carousel .carousel-indicators {\r\n    visibility: visible;\r\n}\r\n.bootstrap_carousel_type_2 .carousel .carousel-control-prev {\r\nposition: absolute;\r\n    bottom: 130px;\r\n    right: 60px;\r\n    border: 2px solid #2679BF;\r\n    padding: 10px;\r\n    width: 40px;\r\n    height: 40px;\r\n    border-radius: 15pc;\r\n    top: unset;\r\n    left: unset;\r\n    opacity:unset;\r\n}\r\n.bootstrap_carousel_type_2 .carousel .carousel-control-next {\r\n    background-color: transparent;\r\nposition: absolute;\r\n    bottom: 130px;\r\n    right: 15px;\r\n    border: 2px solid #2679BF;\r\n    padding: 10px;\r\n    width: 40px;\r\n    height: 40px;\r\n    border-radius: 15pc;\r\n    top: unset;\r\n    opacity:unset;\r\n}\r\n.bootstrap_carousel_type_2 .carousel .carousel-control-prev .carousel-control-prev-icon {\r\n    background-image: url(\"data:image/svg+xml,%3csvg xmlns=\'http://www.w3.org/2000/svg\' fill=\'%232679BF\' viewBox=\'0 0 8 8\'%3e%3cpath d=\'M5.25 0l-4 4 4 4 1.5-1.5-2.5-2.5 2.5-2.5-1.5-1.5z\'/%3e%3c/svg%3e\") !important;\r\n}\r\n.bootstrap_carousel_type_2 .carousel .carousel-control-next .carousel-control-next-icon {\r\n    background-image: url(\"data:image/svg+xml,%3csvg xmlns=\'http://www.w3.org/2000/svg\' fill=\'%232679BF\' viewBox=\'0 0 8 8\'%3e%3cpath d=\'M2.75 0l-1.5 1.5 2.5 2.5-2.5 2.5 1.5 1.5 4-4-4-4z\'/%3e%3c/svg%3e\") !important;\r\n}\r\n.bootstrap_carousel_type_2 .carousel .carousel-indicators{\r\nopacity:1!important;\r\n}\r\n.bootstrap_carousel_type_2 .carousel .carousel-indicators .active{\r\nopacity:1!important;\r\nbackground-color:#2679BF;\r\n}\r\n.bootstrap_carousel_type_2 .carousel .carousel-inner .carousel-item .carousel-caption{\r\nposition: absolute;\r\n    right: unset;\r\n    bottom: 0;\r\n    left: unset;\r\n    z-index: 10;\r\n    padding-top: 20px;\r\n    color: #fff;\r\n    text-align: center;\r\n    background-color: rgba(0,0,0,0.5);\r\n    width: 100%;\r\n    height: 120px;\r\n}\r\n.bootstrap_carousel_type_2 .carousel .carousel-inner .carousel-item .carousel-caption h5{\r\ndisplay:none;\r\n}\r\n.bootstrap_carousel_type_2 .carousel .carousel-inner .carousel-item .carousel-caption p{\r\ntext-align: left;\r\n    padding: 20px;\r\n    margin-top: -20px;\r\n    font-size: 13px;\r\n}', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(3, 'bootstrap_carousel_type_3', '.bootstrap_carousel_type_3 .carousel .carousel-indicators{\r\nvisibility:visible;\r\nbottom:20%;\r\nopacity:1!important;\r\n}\r\n.bootstrap_carousel_type_3 .carousel .carousel-indicators li{\r\nwidth: 8px;\r\n    height: 8px;\r\n    border: unset;\r\n    border-radius: 15pc;\r\n}\r\n.bootstrap_carousel_type_2 .carousel .carousel-indicators .active{\r\nopacity:1!important;\r\nbackground-color:#2679BF;\r\n}\r\n.bootstrap_carousel_type_3 .carousel .carousel-control-next:hover{\r\nopacity:1 !important;\r\n}\r\n.bootstrap_carousel_type_3 .carousel .carousel-control-prev:hover{\r\nopacity:1 !important;\r\n}\r\n.bootstrap_carousel_type_3 .carousel .carousel-control-next{\r\nright: unset;\r\n    border: unset;\r\n    padding: unset;\r\n    height: unset;\r\n    border-radius: unset;\r\n    background-color: transparent;\r\nposition: absolute;\r\n    top: 0;\r\n    bottom: 0;\r\n    display: -webkit-box;\r\n    display: -ms-flexbox;\r\n    display: flex;\r\n    -webkit-box-align: center;\r\n    -ms-flex-align: center;\r\n    align-items: center;\r\n    -webkit-box-pack: center;\r\n    -ms-flex-pack: center;\r\n    justify-content: center;\r\n    width: 15%;\r\n    color: #fff;\r\n    text-align: center;\r\n    opacity: .5;\r\nborder: unset;\r\n    padding: unset;\r\n    height: 50px;\r\n    width: 50px;\r\n    left: 93%;\r\n    right: unset;\r\n    border: 2px solid;\r\n    border-radius: 15pc;\r\n    margin: auto 10px;\r\n}\r\n.bootstrap_carousel_type_3 .carousel .carousel-control-prev{\r\nright: unset;\r\n    border: unset;\r\n    padding: unset;\r\n    height: unset;\r\n    border-radius: unset;\r\n    background-color: transparent;\r\nposition: absolute;\r\n    top: 0;\r\n    bottom: 0;\r\n    display: -webkit-box;\r\n    display: -ms-flexbox;\r\n    display: flex;\r\n    -webkit-box-align: center;\r\n    -ms-flex-align: center;\r\n    align-items: center;\r\n    -webkit-box-pack: center;\r\n    -ms-flex-pack: center;\r\n    justify-content: center;\r\n    width: 15%;\r\n    color: #fff;\r\n    text-align: center;\r\n    opacity: .5;\r\nborder: unset;\r\n    padding: unset;\r\n    height: 50px;\r\n    width: 50px;\r\n    left: unset;\r\n    right: unset;\r\n    border: 2px solid;\r\n    border-radius: 15pc;\r\n    margin: auto 10px;\r\n}\r\n.bootstrap_carousel_type_3 .carousel .carousel-inner .carousel-item .carousel-caption {\r\nposition: absolute;\r\n    right: unset;\r\n    bottom: 0;\r\n    left: unset;\r\n    z-index: 10;\r\n    padding-top: 20px;\r\n    color: #fff;\r\n    text-align: center;\r\n    background-color: rgba(0,0,0,0.5);\r\n    width: 100%;\r\n    height: 120px;\r\n}\r\n\r\n.bootstrap_carousel_type_3 .carousel .carousel-inner .carousel-item .carousel-caption h5{\r\ndisplay:none;\r\n}\r\n.bootstrap_carousel_type_3 .carousel .carousel-inner .carousel-item .carousel-caption p{\r\ntext-align: left;\r\n    padding: 20px;\r\n    margin-top: -20px;\r\n    font-size: 13px;\r\n}', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(4, 'slider-1', '.slider-1{\r\nheight: 650px;\r\n}\r\n.slider-1 .slider-item-container {\r\ndisplay: table;\r\nwidth:100%;\r\n}\r\n.slider-1 .slider-item-container .slider-item{\r\n    display: table-cell;\r\n}\r\n.slider-1 .slider-item-container .slider-item:nth-child(1) {\r\n    top: 150px;\r\n    text-align: center;\r\n    height: 150px;\r\n    position: relative;\r\n    width: 320px;\r\n}\r\n.slider-1 .slider-item-container .slider-item:nth-child(2) {\r\n    top:100px;\r\n    text-align: center;\r\n    height: 150px;\r\n    position: relative;\r\n    width: 320px;\r\n}\r\n.slider-1 .slider-item-container .slider-item:nth-child(3) {\r\n    top:50px;\r\n    text-align: center;\r\n    height: 150px;\r\n    position: relative;\r\n    width: 320px;\r\n}\r\n.slider-1 .slider-item-container .slider-item:nth-child(4) {\r\n    top:25px;\r\n    text-align: center;\r\n    height: 150px;\r\n    position: relative;\r\n    width: 320px;\r\n}\r\n.slider-1 .slider-item-container .slider-item:nth-child(5) {\r\n    top:50px;\r\n    text-align: center;\r\n    height: 150px;\r\n    position: relative;\r\n    width: 320px;\r\n}\r\n.slider-1 .slider-item-container .slider-item:nth-child(6) {\r\n    top:100px;\r\n    text-align: center;\r\n    height: 150px;\r\n    position: relative;\r\n    width: 320px;\r\n}\r\n.slider-1 .slider-item-container .slider-item:nth-child(7) {\r\n    top:150px;\r\n    text-align: center;\r\n    height: 150px;\r\n    position: relative;\r\n    width: 320px;\r\n}\r\n.slider-1 .slider-item-container .slider-item img {\r\n    width: 80px;\r\n    height: 80px;\r\n    object-fit: cover;\r\n    object-position: center;\r\n    border-radius: 200px;\r\n    margin: 0px auto;\r\n    display: block;\r\n    cursor: pointer;\r\n    position: relative;\r\n    border: 1px solid black;\r\n    border-radius: 15pc;\r\n    padding: 20px;\r\n}\r\n.slider-1 .slider-item-container .slider-item .slider-heading{\r\n    position: relative;\r\n    top: 40%;\r\n    font-family: \'Permanent Marker\', cursive;\r\n    text-align: center;\r\n    color: white;\r\n    display : none;\r\n}\r\n.slider-1 .slider-item-container .slider-item .slider-description{\r\n    position: relative;\r\n    padding-left: 35%;\r\n    color: white;\r\n    top: 35%;\r\n    display : none;\r\n}\r\n.slider-1 .preview-img {\r\n    width: 100%;\r\n    height: 400px;\r\n    margin-bottom:40px;\r\n\r\n}\r\n.slider-1 .preview-img img{\r\n    width: 30%;\r\n    object-fit: cover;\r\n    margin-left: 35%;\r\n    margin-right: 40%;\r\n    margin-top: 20px;\r\n}\r\n.slider-1 .preview-img .caption{\r\nmargin-top:80px;\r\n}\r\n.slider-1 .preview-img .caption h5{\r\n    visibility: visible;\r\n    color: black;\r\n    position: absolute;\r\n}\r\n.slider-1 .preview-img .caption p{\r\n    color: black;\r\n    position: absolute;\r\n    margin-top: 30px;\r\n    width: 100%;\r\n}', '<script type=\"text/javascript\">\r\nvar elitem = $(\'.slider-1 .slider-item-container .slider-item\');\r\nvar elActive = $(\'.slider-1 .slider-item-container .active\');\r\nvar img = elActive.find(\'img\').attr(\'src\');\r\nvar heading = elActive.find(\'.slider-heading\').text();\r\nvar description = elActive.find(\'.slider-description\').text();\r\nconsole.log(elitem);\r\nconsole.log(heading);\r\nconsole.log(description);\r\nvar previewImg = \'<div class=\"preview-img\"><img src=\"\' + img + \'\"><div class=\"caption\"><h5 class=\"slider-heading\">\'+heading+\'</h5><p>\'+description+\'</p></div></div>\';\r\n$(previewImg).insertAfter($(\'.slider-1 .slider-item-container\'));\r\nelitem.click(function(){\r\n$(\'.preview-img img\').attr(\'src\', $(this).children(\'img\').attr(\'src\'));\r\nvar index =  $(this).children(\'h5\').text();\r\nvar indux =  $(this).children(\'p\').text();\r\nconsole.log(indux);\r\n$(\'.preview-img h5\').text(index);\r\n$(\'.preview-img p\').text(indux);\r\n});\r\n</script>', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(5, 'slider-2', '.slider-2 .slider-item-container {\r\ndisplay: table;\r\nwidth:100%;\r\n}\r\n.slider-2 .slider-item-container .slider-item {\r\n    display: table-cell;\r\n    height: 200px;\r\n    position: relative;\r\n    cursor: pointer;\r\n    width: 320px;\r\n}\r\n.slider-2 .slider-item-container .slider-item img {\r\n    width: 100%;\r\n    height: 200px;\r\n    position: absolute;\r\n    object-fit: cover;\r\n    object-position: center;\r\n    background-color: #fff;\r\n}\r\n.slider-2 .slider-item-container .slider-item .slider-heading{\r\n    position: relative;\r\n    top: 40%;\r\n    font-family: \'Permanent Marker\', cursive;\r\n    text-align: center;\r\n    color: black;\r\n}\r\n.slider-2 .slider-item-container .slider-item .slider-description{\r\nposition: relative;\r\n    color: black;\r\n    top: 35%;\r\n    text-align: center;\r\n}\r\n.slider-2 .slider-item-container .active .slider-heading{\r\n    color: white !important;\r\n}\r\n.slider-2 .slider-item-container .active .slider-description{\r\n    color: white !important;\r\n}\r\n.slider-2 .preview-img {\r\n    width: 100%;\r\n    margin-bottom:40px;\r\n}\r\n.slider-2 .preview-img img{\r\n    width: 100%;\r\n    height: 500px;\r\n    object-fit: cover;\r\n    object-position: center;\r\n}\r\n\r\n.slider-2 .preview-img h5{\r\n  top: 0;\r\n    margin: 200px 0px 0px 30px;\r\n    font-family: \'Permanent Marker\', cursive;\r\n    color: white;\r\n    position: absolute;\r\n}\r\n\r\n.slider-2 .preview-img p{\r\n    margin: 230px 0px 0px 30px;\r\n    color: white;\r\n    top: 0;\r\n    position: absolute;\r\n}\r\n.slider-2 .slider-item-container {\r\n    display: table;\r\n    width: 100%;\r\n    position: absolute;\r\n    bottom: 50;\r\n}\r\n.slider-2 .slider-item-container .active {\r\n    bottom: 20px;\r\n}\r\n.slider-2 .slider-item-container .slider-item::after {\r\n        content: \'\';\r\n    position: absolute;\r\n    left: 0;\r\n    bottom: -1px;\r\n    right: 0;\r\n    height: 30%;\r\n    background: linear-gradient(to bottom,rgba(255,255,255,0),#ccc) repeat left top;\r\n}\r\n.slider-2 .slider-item-container .active::after {\r\n        content: \'\';\r\n    position: absolute;\r\n    left: 0;\r\n    bottom: -1px;\r\n    right: 0;\r\n    height: 30%;\r\n    background: linear-gradient(to bottom,rgba(255,255,255,0),#113945) repeat left top;\r\n}', '<script type=\"text/javascript\">\r\nvar elitem = $(\'.slider-2 .slider-item-container .slider-item\');\r\nvar elActive = $(\'.slider-2 .slider-item-container .active\');\r\nvar img = elActive.find(\'img\').attr(\'src\');\r\nvar heading = elActive.find(\'.slider-heading\').text();\r\nvar description = elActive.find(\'.slider-description\').text();\r\nconsole.log(elitem);\r\nconsole.log(heading);\r\nconsole.log(description);\r\nvar previewImg = \'<div class=\"preview-img\"><img src=\"\' + img + \'\"><h5 class=\"slider-heading\">\'+heading+\'</h5><p>\'+description+\'</p></div>\';\r\n$(previewImg).insertBefore($(\'.slider-2 .slider-item-container\'));\r\nelitem.click(function(){\r\nelitem.removeClass(\'active\');\r\n$(this).addClass(\'active\');\r\n$(\'.preview-img img\').attr(\'src\', $(this).children(\'img\').attr(\'src\'));\r\nvar index =  $(this).children(\'h5\').text();\r\nvar indux =  $(this).children(\'p\').text();\r\nconsole.log(indux);\r\n$(\'.preview-img h5\').text(index);\r\n$(\'.preview-img p\').text(indux);\r\n});\r\n</script>', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(6, 'slider-3', '.slider-3{\r\nmargin-top:20px;\r\n}\r\n\r\n.slider-3 .slider-item-container {\r\ndisplay: table;    \r\nwidth: 75%;\r\n    margin: 0px auto;\r\n}\r\n\r\n.slider-item{\r\ndisplay: table-cell;\r\n}\r\n\r\n.slider-3 .slider-item-container .slider-item img{\r\nwidth: 126px;\r\n    height: 126px;\r\n    border-radius: 15pc;\r\ncursor:pointer;\r\ndisplay:block;\r\nmargin:0px auto;\r\nborder: 1px solid;\r\nbackground-color:#fff;\r\n}\r\n\r\n.slider-3 .slider-item-container .slider-item img:first-child, .slider-3 .slider-item-container .slider-item img:last-child{\r\nz-index:6;\r\nleft:40%;\r\nright:40%;\r\n}\r\n.slider-3 .slider-item-container .slider-item img:nth-child(2), .slider-3 .slider-item-container .slider-item img:nth-child(4){\r\nz-index:9;\r\n}\r\n.slider-3 .slider-item-container .slider-item:first-child{\r\nwidth: 130px;\r\n    height: 130px;\r\n    left: 20%;\r\n    position: absolute;\r\n}\r\n.slider-3 .slider-item-container .slider-item:nth-child(2){\r\nposition: absolute;\r\n    left: 30%;\r\n    width: 130px;\r\n    height: 130px;\r\n}\r\n.slider-3 .slider-item-container .slider-item:nth-child(4){\r\n    position: absolute;\r\n    right: 30%;\r\n    width: 130px;\r\n    height: 130px;\r\nz-index:9;\r\n}\r\n.slider-3 .slider-item-container .slider-item:last-child{\r\nwidth: 130px;\r\n    height: 130px;\r\n    right: 20%;\r\n    position: absolute;\r\nz-index:6;\r\n}\r\n.slider-3 .slider-item-container .active img{\r\nwidth: 200px;\r\n    height: 200px;\r\ndisplay:block;\r\nmargin:0px auto;\r\nposition: absolute;\r\n    top: 0;\r\nz-index:10!important;\r\n}\r\n\r\n.slider-3 .slider-item-container .active h5 {\r\n    visibility: visible!important;\r\ntext-align: center;\r\n}\r\n\r\n.slider-3 .slider-item-container .slider-item h5{\r\nvisibility:hidden;\r\nmargin-top: 200px;\r\n}\r\n\r\n.slider-3 .slider-item-container .slider-item p{\r\nvisibility:hidden!important;\r\n}', '<script type=\"text/javascript\">\r\nvar switchActive = $(\'.slider-3 .slider-item-container .slider-item:nth-child(3)\');\r\nvar itemActive = $(\'.slider-3 .slider-item-container .active\');\r\nitemActive.removeClass(\'active\');\r\nswitchActive.addClass(\'active\');\r\nvar itemClick = $(\'.slider-3 .slider-item-container .slider-item\');\r\nitemClick.click(function(){\r\nvar Active = $(\'.slider-3 .slider-item-container .active\');\r\nvar src = $(this).find(\'img\');\r\nvar image = src.attr(\'src\');\r\nvar srcActive = Active.find(\'img\');\r\nvar imageActive = srcActive.attr(\'src\');\r\nvar heading = $(this).find(\'h5\').text();\r\nvar headingActive = Active.find(\'h5\').text();\r\nconsole.log(heading);\r\nconsole.log(headingActive);\r\nsrc.attr(\'src\', imageActive);\r\nsrcActive.attr(\'src\', image);\r\nsrc.attr(\'src\', imageActive);\r\n$(this).find(\'h5\').html(headingActive);\r\nActive.find(\'h5\').html(heading);\r\n});\r\n</script>', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(7, 'slider-4', 'h2{\r\n   font-size:35px;\r\n   position: absolute;\r\n    top: 5px;\r\n    left: 41%;\r\n}\r\n.slider-4 .slider-item-container .slider-item h2 {\r\n    display: none;\r\n}\r\n.slider-4 .slider-item-container .slider-item.active h2 {\r\n    display: block;\r\n}\r\n.slider-4 .slider-item-container .slider-item.active {\r\nwidth: 40%;\r\n    height: 465px;\r\n    position: inherit;\r\n    object-fit: cover;\r\n    cursor:unset;\r\n}\r\n.slider-4 .slider-item-container .slider-item{\r\n    width: 18%;\r\n    height: 100px;\r\n    float: left;\r\n    display: table-cell;\r\n    position: relative;\r\n    top: 365px;\r\n    margin: 0px 10px 0px 0px;\r\n    cursor:pointer;\r\n}\r\n.slider-4 .slider-item-container .slider-item img {\r\n    width: 100%;\r\n    height: 100%;\r\n}\r\n.slider-4 .slider-item-container .slider-item p {\r\n    position: absolute;\r\n    top: 20%;\r\n    left: 41%;\r\n   display: none;\r\n}\r\n.slider-4 .slider-item-container .slider-item.active p {\r\n    position: absolute;\r\n    top: 20%;\r\n    left: 41%;\r\n    display: block !important;\r\n   font-size:20px;\r\n}\r\n.slider-4 .slider-item-container .slider-item h5 {\r\n    position: absolute;\r\n    top: 10%;\r\n    left: 41%;\r\n   display: none;\r\n}\r\n.slider-4 .slider-item-container .slider-item.active h5 {\r\n    position: absolute;\r\n    top: 10%;\r\n    left: 41%;\r\n   display: block !Important;\r\n   font-size:20px;\r\n}\r\n.slider-4 .slider-item-container .slider-item.active img{\r\n    width: 100%;\r\n    height: 100%;\r\n    object-fit: cover;\r\n}\r\n.slider-4 .slider-item-container .slider-item:before {\r\n  content: \'\';\r\n  display: block;\r\n  position:absolute;\r\n  width:100%;\r\n  transition: height 0.5s ease-out;\r\n  background:rgba(0,0,0,0.3);\r\n}\r\n.slider-4 .slider-item-container .slider-item:hover:before {\r\n  height: 100%;\r\n}\r\n.slider-4 .slider-item-container .active:before {\r\n  content: \'\';\r\n  display: none;\r\n  position:absolute;\r\n  width:100%;\r\n  transition: height 0.5s ease-out;\r\n  background:rgba(0,0,0,0.3);\r\n}\r\n.slider-4 .slider-item-container .active:hover:before {\r\n  height: 100%;\r\n}\r\n.slider-4 .slider-item-container .slider-item:hover .slider-heading{\r\ndisplay: block !important;\r\nopacity:1 !important;\r\n    color: white;\r\n    left: unset;\r\n    top: 0;\r\n    width: 100%;\r\n    text-align: center;\r\n    margin-top: 40px;\r\n    font-size: 16px;\r\n}\r\n.slider-4 .slider-item-container .active:hover .slider-heading{\r\nopacity:1 !important;\r\n    color: black;\r\n    left: unset;\r\n    top: unset;\r\n    width: unset;\r\n    text-align: unset;\r\n    margin-top: unset;\r\n    font-size: unset;\r\n    position: absolute;\r\n    top: 10%;\r\n    left: 41%;\r\n   display: block !Important;\r\n   font-size:20px;\r\n}', '<script type=\"text/javascript\">\r\n$(\'<h2 class=\"_font-permanent-marker\">Konservasi Penyu</h2>\').insertBefore(\'.slider-4 .slider-item-container .slider-item h5\')\r\nvar switchActive = $(\'.slider-4 .slider-item-container .slider-item:first-child\');\r\nvar itemActive = $(\'.slider-4 .slider-item-container .active\');\r\nitemActive.removeClass(\'active\');\r\nswitchActive.addClass(\'active\');\r\nvar itemClick = $(\'.slider-4 .slider-item-container .slider-item\');\r\nitemClick.click(function(){\r\nvar Active = $(\'.slider-4 .slider-item-container .active\');\r\nvar src = $(this).find(\'img\');\r\nvar image = src.attr(\'src\');\r\nvar srcActive = Active.find(\'img\');\r\nvar imageActive = srcActive.attr(\'src\');\r\nvar heading = $(this).find(\'h5\').text();\r\nvar headingActive = Active.find(\'h5\').text();\r\nconsole.log(heading);\r\nconsole.log(headingActive);\r\nsrc.attr(\'src\', imageActive);\r\nsrcActive.attr(\'src\', image);\r\nsrc.attr(\'src\', imageActive);\r\n$(this).find(\'h5\').html(headingActive);\r\nActive.find(\'h5\').html(heading);\r\n});\r\n</script>', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(8, 'card-1', NULL, '<script>\r\nvar parent = $(\'._image-card\');\r\nparent.wrap(\'<div class=\"content _gradient\"></div>\');\r\n</script>', '0000-00-00 00:00:00', '0000-00-00 00:00:00');

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
(3, '2019_09_11_054233_create_group_table', 1),
(4, '2019_09_11_054242_create_page_table', 1),
(5, '2019_09_11_054304_create_public_table', 1),
(6, '2019_09_11_054311_create_grid_table', 1),
(7, '2019_09_11_054319_create_component_table', 1),
(8, '2019_09_11_054340_create_library_component_table', 1),
(9, '2019_09_11_054348_create_library_grid_table', 1),
(10, '2019_09_11_054353_create_library_css_table', 1),
(11, '2019_09_11_054359_create_library_javascript_table', 1),
(12, '2019_09_23_094038_create_project_table', 1),
(13, '2019_09_23_094217_create_section_table', 1),
(14, '2019_09_23_123936_create_type_component_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `features_images` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_index` tinyint(4) NOT NULL DEFAULT '0',
  `group` int(11) DEFAULT NULL,
  `parent` int(11) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `published_at` datetime NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`id`, `name`, `features_images`, `description`, `is_index`, `group`, `parent`, `status`, `published_at`, `created_at`, `updated_at`) VALUES
(1, 'beranda', NULL, NULL, 1, NULL, NULL, 1, '0000-00-00 00:00:00', NULL, NULL),
(2, 'tentang kami', NULL, NULL, 0, NULL, NULL, 1, '0000-00-00 00:00:00', NULL, NULL),
(3, 'konservasi kami', NULL, NULL, 0, NULL, NULL, 1, '0000-00-00 00:00:00', NULL, NULL),
(4, 'lokasi', NULL, NULL, 0, NULL, NULL, 1, '0000-00-00 00:00:00', NULL, NULL),
(5, 'kontak kami', NULL, NULL, 0, NULL, NULL, 1, '0000-00-00 00:00:00', NULL, NULL),
(6, 'galeri', NULL, NULL, 0, NULL, NULL, 1, '0000-00-00 00:00:00', NULL, NULL),
(7, 'berita', NULL, NULL, 0, NULL, NULL, 1, '0000-00-00 00:00:00', NULL, NULL),
(8, 'faq', NULL, NULL, 0, NULL, NULL, 1, '0000-00-00 00:00:00', NULL, NULL),
(9, 'detail', NULL, NULL, 0, NULL, NULL, 1, '0000-00-00 00:00:00', NULL, NULL),
(10, 'detail', NULL, NULL, 0, NULL, NULL, 1, '0000-00-00 00:00:00', NULL, NULL),
(11, 'detail', NULL, NULL, 0, NULL, NULL, 1, '0000-00-00 00:00:00', NULL, NULL),
(12, 'read', NULL, NULL, 0, NULL, NULL, 1, '0000-00-00 00:00:00', NULL, NULL),
(13, 'detail', NULL, NULL, 0, NULL, NULL, 1, '0000-00-00 00:00:00', NULL, NULL);

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
-- Table structure for table `projects`
--

CREATE TABLE `projects` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `projects`
--

INSERT INTO `projects` (`id`, `name`, `status`, `created_at`, `updated_at`) VALUES
(1, 'daihatsu penyu', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `publics`
--

CREATE TABLE `publics` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta` text COLLATE utf8mb4_unicode_ci,
  `parent` int(11) DEFAULT NULL,
  `pages` int(11) DEFAULT NULL,
  `projects` int(11) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `publics`
--

INSERT INTO `publics` (`id`, `name`, `url`, `meta`, `parent`, `pages`, `projects`, `status`, `created_at`, `updated_at`) VALUES
(1, 'beranda', 'beranda', '<script\r\n  src=\"https://code.jquery.com/jquery-3.2.1.min.js\"\r\n  integrity=\"sha256-hwg4gsxgFZhOsEEamdOYGBf13FyQuiTwlAQgxVSNgt4=\"\r\n  crossorigin=\"anonymous\"></script>\r\n<script src=\"https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js\" integrity=\"sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q\" crossorigin=\"anonymous\"></script>\r\n<script src=\"https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js\" integrity=\"sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl\" crossorigin=\"anonymous\"></script>\r\n<link rel=\"stylesheet\" href=\"https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css\" integrity=\"sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T\" crossorigin=\"anonymous\">\r\n<link href=\"https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css\" rel=\"stylesheet\" integrity=\"sha384-wvfXpqpZZVQGK6TAh5PVlGOfQNHSoD2xbE+QkPxCAFlNEevoEH3Sl0sibVcOQVnN\" crossorigin=\"anonymous\">\r\n<link href=\"https://fonts.googleapis.com/css?family=Permanent+Marker&display=swap\" rel=\"stylesheet\">\r\n<link href=\"https://fonts.googleapis.com/css?family=Ubuntu&display=swap\" rel=\"stylesheet\">\r\n<meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">\r\n<script>\r\n</script>', NULL, 1, 1, 1, '2019-10-16 09:03:35', '2019-10-16 09:03:34'),
(2, 'tentang kami', 'tentang-kami', '<script\r\n  src=\"https://code.jquery.com/jquery-3.2.1.min.js\"\r\n  integrity=\"sha256-hwg4gsxgFZhOsEEamdOYGBf13FyQuiTwlAQgxVSNgt4=\"\r\n  crossorigin=\"anonymous\"></script>\r\n<script src=\"https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js\" integrity=\"sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q\" crossorigin=\"anonymous\"></script>\r\n<script src=\"https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js\" integrity=\"sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl\" crossorigin=\"anonymous\"></script>\r\n<link rel=\"stylesheet\" href=\"https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css\" integrity=\"sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T\" crossorigin=\"anonymous\">\r\n<link href=\"https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css\" rel=\"stylesheet\" integrity=\"sha384-wvfXpqpZZVQGK6TAh5PVlGOfQNHSoD2xbE+QkPxCAFlNEevoEH3Sl0sibVcOQVnN\" crossorigin=\"anonymous\">\r\n<link href=\"https://fonts.googleapis.com/css?family=Permanent+Marker&display=swap\" rel=\"stylesheet\">\r\n<link href=\"https://fonts.googleapis.com/css?family=Ubuntu&display=swap\" rel=\"stylesheet\">\r\n<meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">', NULL, 2, 1, 1, '2019-10-16 09:03:37', '2019-10-16 09:03:31'),
(3, 'konservasi kami', 'konservasi-kami', '<script\r\n  src=\"https://code.jquery.com/jquery-3.2.1.min.js\"\r\n  integrity=\"sha256-hwg4gsxgFZhOsEEamdOYGBf13FyQuiTwlAQgxVSNgt4=\"\r\n  crossorigin=\"anonymous\"></script>\r\n<script src=\"https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js\" integrity=\"sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q\" crossorigin=\"anonymous\"></script>\r\n<script src=\"https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js\" integrity=\"sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl\" crossorigin=\"anonymous\"></script>\r\n<link rel=\"stylesheet\" href=\"https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css\" integrity=\"sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T\" crossorigin=\"anonymous\">\r\n<link href=\"https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css\" rel=\"stylesheet\" integrity=\"sha384-wvfXpqpZZVQGK6TAh5PVlGOfQNHSoD2xbE+QkPxCAFlNEevoEH3Sl0sibVcOQVnN\" crossorigin=\"anonymous\">\r\n<link href=\"https://fonts.googleapis.com/css?family=Permanent+Marker&display=swap\" rel=\"stylesheet\">\r\n<link href=\"https://fonts.googleapis.com/css?family=Ubuntu&display=swap\" rel=\"stylesheet\">\r\n<meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">', NULL, 3, 1, 1, '2019-10-16 09:03:37', '2019-10-16 09:03:50'),
(4, 'lokasi', 'lokasi', '<script\r\n  src=\"https://code.jquery.com/jquery-3.2.1.min.js\"\r\n  integrity=\"sha256-hwg4gsxgFZhOsEEamdOYGBf13FyQuiTwlAQgxVSNgt4=\"\r\n  crossorigin=\"anonymous\"></script>\r\n<script src=\"https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js\" integrity=\"sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q\" crossorigin=\"anonymous\"></script>\r\n<script src=\"https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js\" integrity=\"sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl\" crossorigin=\"anonymous\"></script>\r\n<link rel=\"stylesheet\" href=\"https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css\" integrity=\"sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T\" crossorigin=\"anonymous\">\r\n<link href=\"https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css\" rel=\"stylesheet\" integrity=\"sha384-wvfXpqpZZVQGK6TAh5PVlGOfQNHSoD2xbE+QkPxCAFlNEevoEH3Sl0sibVcOQVnN\" crossorigin=\"anonymous\">\r\n<link href=\"https://fonts.googleapis.com/css?family=Permanent+Marker&display=swap\" rel=\"stylesheet\">\r\n<link href=\"https://fonts.googleapis.com/css?family=Ubuntu&display=swap\" rel=\"stylesheet\">\r\n<meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">', NULL, 4, 1, 1, '2019-10-16 09:03:38', '2019-10-16 09:03:48'),
(5, 'kontak kami', 'kontak-kami', '<script\r\n  src=\"https://code.jquery.com/jquery-3.2.1.min.js\"\r\n  integrity=\"sha256-hwg4gsxgFZhOsEEamdOYGBf13FyQuiTwlAQgxVSNgt4=\"\r\n  crossorigin=\"anonymous\"></script>\r\n<script src=\"https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js\" integrity=\"sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q\" crossorigin=\"anonymous\"></script>\r\n<script src=\"https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js\" integrity=\"sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl\" crossorigin=\"anonymous\"></script>\r\n<link rel=\"stylesheet\" href=\"https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css\" integrity=\"sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T\" crossorigin=\"anonymous\">\r\n<link href=\"https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css\" rel=\"stylesheet\" integrity=\"sha384-wvfXpqpZZVQGK6TAh5PVlGOfQNHSoD2xbE+QkPxCAFlNEevoEH3Sl0sibVcOQVnN\" crossorigin=\"anonymous\">\r\n<link href=\"https://fonts.googleapis.com/css?family=Permanent+Marker&display=swap\" rel=\"stylesheet\">\r\n<link href=\"https://fonts.googleapis.com/css?family=Ubuntu&display=swap\" rel=\"stylesheet\">\r\n<meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">', NULL, 5, 1, 1, '2019-10-16 09:03:39', '2019-10-16 09:03:48'),
(6, 'galeri', 'galeri', '<script\r\n  src=\"https://code.jquery.com/jquery-3.2.1.min.js\"\r\n  integrity=\"sha256-hwg4gsxgFZhOsEEamdOYGBf13FyQuiTwlAQgxVSNgt4=\"\r\n  crossorigin=\"anonymous\"></script>\r\n<script src=\"https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js\" integrity=\"sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q\" crossorigin=\"anonymous\"></script>\r\n<script src=\"https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js\" integrity=\"sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl\" crossorigin=\"anonymous\"></script>\r\n<link rel=\"stylesheet\" href=\"https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css\" integrity=\"sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T\" crossorigin=\"anonymous\">\r\n<link href=\"https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css\" rel=\"stylesheet\" integrity=\"sha384-wvfXpqpZZVQGK6TAh5PVlGOfQNHSoD2xbE+QkPxCAFlNEevoEH3Sl0sibVcOQVnN\" crossorigin=\"anonymous\">\r\n<link href=\"https://fonts.googleapis.com/css?family=Permanent+Marker&display=swap\" rel=\"stylesheet\">\r\n<link href=\"https://fonts.googleapis.com/css?family=Ubuntu&display=swap\" rel=\"stylesheet\">\r\n<meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">\r\n', NULL, 6, 1, 1, '2019-10-16 09:03:40', '2019-10-16 09:03:47'),
(7, 'berita', 'berita', '<script\r\n  src=\"https://code.jquery.com/jquery-3.2.1.min.js\"\r\n  integrity=\"sha256-hwg4gsxgFZhOsEEamdOYGBf13FyQuiTwlAQgxVSNgt4=\"\r\n  crossorigin=\"anonymous\"></script>\r\n<script src=\"https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js\" integrity=\"sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q\" crossorigin=\"anonymous\"></script>\r\n<script src=\"https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js\" integrity=\"sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl\" crossorigin=\"anonymous\"></script>\r\n<link rel=\"stylesheet\" href=\"https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css\" integrity=\"sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T\" crossorigin=\"anonymous\">\r\n<link href=\"https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css\" rel=\"stylesheet\" integrity=\"sha384-wvfXpqpZZVQGK6TAh5PVlGOfQNHSoD2xbE+QkPxCAFlNEevoEH3Sl0sibVcOQVnN\" crossorigin=\"anonymous\">\r\n<link href=\"https://fonts.googleapis.com/css?family=Permanent+Marker&display=swap\" rel=\"stylesheet\">\r\n<link href=\"https://fonts.googleapis.com/css?family=Ubuntu&display=swap\" rel=\"stylesheet\">\r\n<meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">', NULL, 7, 1, 1, '2019-10-16 09:03:40', '2019-10-16 09:03:46'),
(8, 'faq', 'faq', '<script\r\n  src=\"https://code.jquery.com/jquery-3.2.1.min.js\"\r\n  integrity=\"sha256-hwg4gsxgFZhOsEEamdOYGBf13FyQuiTwlAQgxVSNgt4=\"\r\n  crossorigin=\"anonymous\"></script>\r\n<script src=\"https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js\" integrity=\"sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q\" crossorigin=\"anonymous\"></script>\r\n<script src=\"https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js\" integrity=\"sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl\" crossorigin=\"anonymous\"></script>\r\n<link rel=\"stylesheet\" href=\"https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css\" integrity=\"sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T\" crossorigin=\"anonymous\">\r\n<link href=\"https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css\" rel=\"stylesheet\" integrity=\"sha384-wvfXpqpZZVQGK6TAh5PVlGOfQNHSoD2xbE+QkPxCAFlNEevoEH3Sl0sibVcOQVnN\" crossorigin=\"anonymous\">\r\n<link href=\"https://fonts.googleapis.com/css?family=Permanent+Marker&display=swap\" rel=\"stylesheet\">\r\n<link href=\"https://fonts.googleapis.com/css?family=Ubuntu&display=swap\" rel=\"stylesheet\">\r\n<meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">', NULL, 8, 1, 1, '2019-10-16 09:03:41', '2019-10-16 09:03:46'),
(9, 'detail', 'detail', '<script\r\n  src=\"https://code.jquery.com/jquery-3.2.1.min.js\"\r\n  integrity=\"sha256-hwg4gsxgFZhOsEEamdOYGBf13FyQuiTwlAQgxVSNgt4=\"\r\n  crossorigin=\"anonymous\"></script>\r\n<script src=\"https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js\" integrity=\"sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q\" crossorigin=\"anonymous\"></script>\r\n<script src=\"https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js\" integrity=\"sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl\" crossorigin=\"anonymous\"></script>\r\n<link rel=\"stylesheet\" href=\"https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css\" integrity=\"sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T\" crossorigin=\"anonymous\">\r\n<link href=\"https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css\" rel=\"stylesheet\" integrity=\"sha384-wvfXpqpZZVQGK6TAh5PVlGOfQNHSoD2xbE+QkPxCAFlNEevoEH3Sl0sibVcOQVnN\" crossorigin=\"anonymous\">\r\n<link href=\"https://fonts.googleapis.com/css?family=Permanent+Marker&display=swap\" rel=\"stylesheet\">\r\n<link href=\"https://fonts.googleapis.com/css?family=Ubuntu&display=swap\" rel=\"stylesheet\">\r\n<meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">', 3, 9, 1, 1, '2019-10-16 09:03:41', '2019-10-16 09:03:52'),
(10, 'detail', 'detail', '<script\r\n  src=\"https://code.jquery.com/jquery-3.2.1.min.js\"\r\n  integrity=\"sha256-hwg4gsxgFZhOsEEamdOYGBf13FyQuiTwlAQgxVSNgt4=\"\r\n  crossorigin=\"anonymous\"></script>\r\n<script src=\"https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js\" integrity=\"sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q\" crossorigin=\"anonymous\"></script>\r\n<script src=\"https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js\" integrity=\"sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl\" crossorigin=\"anonymous\"></script>\r\n<link rel=\"stylesheet\" href=\"https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css\" integrity=\"sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T\" crossorigin=\"anonymous\">\r\n<link href=\"https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css\" rel=\"stylesheet\" integrity=\"sha384-wvfXpqpZZVQGK6TAh5PVlGOfQNHSoD2xbE+QkPxCAFlNEevoEH3Sl0sibVcOQVnN\" crossorigin=\"anonymous\">\r\n<link href=\"https://fonts.googleapis.com/css?family=Permanent+Marker&display=swap\" rel=\"stylesheet\">\r\n<link href=\"https://fonts.googleapis.com/css?family=Ubuntu&display=swap\" rel=\"stylesheet\">\r\n<meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">', 4, 10, 1, 1, '2019-10-16 09:03:42', '2019-10-16 09:03:45'),
(11, 'detail', 'detail', '<script\r\n  src=\"https://code.jquery.com/jquery-3.2.1.min.js\"\r\n  integrity=\"sha256-hwg4gsxgFZhOsEEamdOYGBf13FyQuiTwlAQgxVSNgt4=\"\r\n  crossorigin=\"anonymous\"></script>\r\n<script src=\"https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js\" integrity=\"sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q\" crossorigin=\"anonymous\"></script>\r\n<script src=\"https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js\" integrity=\"sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl\" crossorigin=\"anonymous\"></script>\r\n<link rel=\"stylesheet\" href=\"https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css\" integrity=\"sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T\" crossorigin=\"anonymous\">\r\n<link href=\"https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css\" rel=\"stylesheet\" integrity=\"sha384-wvfXpqpZZVQGK6TAh5PVlGOfQNHSoD2xbE+QkPxCAFlNEevoEH3Sl0sibVcOQVnN\" crossorigin=\"anonymous\">\r\n<link href=\"https://fonts.googleapis.com/css?family=Permanent+Marker&display=swap\" rel=\"stylesheet\">\r\n<link href=\"https://fonts.googleapis.com/css?family=Ubuntu&display=swap\" rel=\"stylesheet\">\r\n<meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">', 5, 11, 1, 1, '2019-10-16 09:03:43', '2019-10-16 09:03:45'),
(12, 'read', 'read', '<script\r\n  src=\"https://code.jquery.com/jquery-3.2.1.min.js\"\r\n  integrity=\"sha256-hwg4gsxgFZhOsEEamdOYGBf13FyQuiTwlAQgxVSNgt4=\"\r\n  crossorigin=\"anonymous\"></script>\r\n<script src=\"https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js\" integrity=\"sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q\" crossorigin=\"anonymous\"></script>\r\n<script src=\"https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js\" integrity=\"sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl\" crossorigin=\"anonymous\"></script>\r\n<link rel=\"stylesheet\" href=\"https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css\" integrity=\"sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T\" crossorigin=\"anonymous\">\r\n<link href=\"https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css\" rel=\"stylesheet\" integrity=\"sha384-wvfXpqpZZVQGK6TAh5PVlGOfQNHSoD2xbE+QkPxCAFlNEevoEH3Sl0sibVcOQVnN\" crossorigin=\"anonymous\">\r\n<link href=\"https://fonts.googleapis.com/css?family=Permanent+Marker&display=swap\" rel=\"stylesheet\">\r\n<link href=\"https://fonts.googleapis.com/css?family=Ubuntu&display=swap\" rel=\"stylesheet\">\r\n<meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">', 7, 12, 1, 1, '2019-10-16 09:03:43', '2019-10-16 09:03:44'),
(13, 'detail', 'detail', '<script\r\n  src=\"https://code.jquery.com/jquery-3.2.1.min.js\"\r\n  integrity=\"sha256-hwg4gsxgFZhOsEEamdOYGBf13FyQuiTwlAQgxVSNgt4=\"\r\n  crossorigin=\"anonymous\"></script>\r\n<script src=\"https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js\" integrity=\"sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q\" crossorigin=\"anonymous\"></script>\r\n<script src=\"https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js\" integrity=\"sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl\" crossorigin=\"anonymous\"></script>\r\n<link rel=\"stylesheet\" href=\"https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css\" integrity=\"sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T\" crossorigin=\"anonymous\">\r\n<link href=\"https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css\" rel=\"stylesheet\" integrity=\"sha384-wvfXpqpZZVQGK6TAh5PVlGOfQNHSoD2xbE+QkPxCAFlNEevoEH3Sl0sibVcOQVnN\" crossorigin=\"anonymous\">\r\n<link href=\"https://fonts.googleapis.com/css?family=Permanent+Marker&display=swap\" rel=\"stylesheet\">\r\n<link href=\"https://fonts.googleapis.com/css?family=Ubuntu&display=swap\" rel=\"stylesheet\">\r\n<meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">', 6, 13, 1, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sections`
--

CREATE TABLE `sections` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `html_id` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `html_class` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sequence` int(11) NOT NULL DEFAULT '0',
  `pages` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sections`
--

INSERT INTO `sections` (`id`, `name`, `html_id`, `html_class`, `sequence`, `pages`, `created_at`, `updated_at`) VALUES
(1, 'section banner', NULL, '_container-width-full _padding-less-container-grid ._container', 1, 1, '2019-10-16 09:25:33', '2019-10-22 03:03:05'),
(2, 'section tentang', NULL, '_beranda-section1', 2, 1, '2019-10-16 09:25:31', '2019-10-22 03:03:16'),
(3, 'section klasifikasi', NULL, '_beranda-section2', 3, 1, '2019-10-16 09:25:35', '2019-10-22 03:03:16'),
(4, 'section cara hidup', NULL, '_beranda-section3', 4, 1, '2019-10-16 09:25:37', '2019-10-16 09:25:44'),
(5, 'section masa bertelur', NULL, '_beranda-section4', 5, 1, '2019-10-16 09:25:38', '2019-10-16 09:25:44'),
(6, 'section fakta tentang', NULL, '_container-width-full', 6, 1, '2019-10-16 09:25:39', '2019-10-16 09:25:43'),
(7, 'section gallery foto video', NULL, '_beranda-section-7', 7, 1, '2019-10-16 09:25:40', '2019-10-16 09:25:42'),
(8, 'section wilayah konservasi', NULL, NULL, 8, 1, '2019-10-16 09:25:40', '2019-10-16 09:25:41'),
(9, 'section latar belakang', NULL, '_container-width-full _tentang-kami-section1', 1, 2, NULL, NULL),
(10, 'section tujuan', NULL, '_tentang-kami-section2', 2, 2, NULL, NULL),
(11, 'section media', NULL, '_tentang-kami-section3', 3, 2, NULL, NULL),
(12, 'section form', NULL, '_shadow _container-margin-20', 1, 8, NULL, NULL),
(13, 'section faq detail', NULL, '_shadow', 2, 8, NULL, NULL),
(14, 'section news', NULL, '', 1, 7, NULL, NULL),
(15, 'section images', NULL, '', 1, 6, NULL, NULL),
(16, 'section videos', NULL, NULL, 2, 6, NULL, NULL),
(17, 'section konservasi bali', NULL, '_konservasi-section1', 1, 3, NULL, NULL),
(18, 'section konservasi padang', NULL, '_konservasi-section2', 2, 3, NULL, NULL),
(19, 'section konservasi pangandaran', NULL, '_konservasi-section3', 3, 3, NULL, NULL),
(20, 'section konservasi kepulauan seribu', NULL, '_konservasi-section4', 4, 3, NULL, NULL),
(21, 'section location ilustrator', NULL, '', 1, 9, NULL, NULL),
(22, 'section sosialisasi', 'section-sosialisasi', '_border', 2, 9, NULL, NULL),
(23, 'section penyelamatan penyu', 'section-penyelamatan', '_border', 3, 9, NULL, NULL),
(24, 'section pembesaran tukik', 'section-pembesaran', '_border', 4, 9, NULL, NULL),
(25, 'section pelepasan tukik', 'section-pelepasan', '_border', 5, 9, NULL, NULL),
(26, 'pembersihan pantai', 'section-pembersihan', '_border', 6, 9, NULL, NULL),
(27, 'section kegiatan lain-lain', 'section-kegiatan', '_border', 7, 9, NULL, NULL),
(28, 'section konservasi penyu', NULL, '', 1, 4, NULL, NULL),
(29, 'section lokasi 1', NULL, '', 1, 10, NULL, NULL),
(30, 'section lokasi 2', NULL, NULL, 2, 10, NULL, NULL),
(31, 'section lokasi 3', NULL, NULL, 3, 10, NULL, NULL),
(32, 'section lokasi 4', NULL, NULL, 4, 10, NULL, NULL),
(33, 'section carousel kontak', NULL, '', 1, 5, NULL, NULL),
(34, 'section bali', NULL, '', 1, 11, NULL, NULL),
(35, 'section padang', NULL, NULL, 2, 11, NULL, NULL),
(36, 'section pangandaran', NULL, NULL, 3, 11, NULL, NULL),
(37, 'section jakarta', NULL, NULL, 4, 11, NULL, NULL),
(38, 'section social media badge', NULL, '_social-media-badge', 0, 1, NULL, NULL),
(39, 'section social media badge - tentang kami', NULL, '_social-media-badge', 0, 2, NULL, NULL),
(40, 'section social media badge - konservasi kami', NULL, '_social-media-badge', 0, 3, NULL, NULL),
(41, 'section social media badge - konservasi kami detail', NULL, '_social-media-badge', 0, 9, NULL, NULL),
(42, 'section social media badge - lokasi', NULL, '_social-media-badge', 0, 4, NULL, NULL),
(43, 'section social media badge - kontak kami', NULL, '_social-media-badge', 0, 5, NULL, NULL),
(44, 'section social media badge - galery', NULL, '_social-media-badge', 0, 6, NULL, NULL),
(45, 'section social media badge - berita', NULL, '_social-media-badge', 0, 7, NULL, NULL),
(46, 'section social media badge - faq', NULL, '_social-media-badge', 0, 8, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `type_component`
--

CREATE TABLE `type_component` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `type_component`
--

INSERT INTO `type_component` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'banner', NULL, NULL),
(2, 'heading', NULL, NULL),
(3, 'paragraph', NULL, NULL),
(4, 'image', NULL, NULL),
(5, 'video', NULL, NULL),
(6, 'slider', NULL, NULL),
(7, 'button', NULL, NULL),
(8, 'link', NULL, NULL),
(9, 'icon', NULL, NULL),
(10, 'accordion', NULL, NULL),
(11, 'breadcrumb', NULL, NULL),
(12, 'card', NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `components`
--
ALTER TABLE `components`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `css`
--
ALTER TABLE `css`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `css_responsive`
--
ALTER TABLE `css_responsive`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `grids`
--
ALTER TABLE `grids`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `groups`
--
ALTER TABLE `groups`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `library_components`
--
ALTER TABLE `library_components`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`(191));

--
-- Indexes for table `projects`
--
ALTER TABLE `projects`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `publics`
--
ALTER TABLE `publics`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sections`
--
ALTER TABLE `sections`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `type_component`
--
ALTER TABLE `type_component`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `components`
--
ALTER TABLE `components`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=201;

--
-- AUTO_INCREMENT for table `css`
--
ALTER TABLE `css`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `css_responsive`
--
ALTER TABLE `css_responsive`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `grids`
--
ALTER TABLE `grids`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=129;

--
-- AUTO_INCREMENT for table `groups`
--
ALTER TABLE `groups`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `library_components`
--
ALTER TABLE `library_components`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `projects`
--
ALTER TABLE `projects`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `publics`
--
ALTER TABLE `publics`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `sections`
--
ALTER TABLE `sections`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT for table `type_component`
--
ALTER TABLE `type_component`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
