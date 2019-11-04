-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 04, 2019 at 10:20 AM
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
(2, '', NULL, '{\"src\":\"heading-beranda.png\"}', '', 4, 1, 1, NULL, NULL),
(3, NULL, '_font-permanent-marker', '{\"type\":\"h2\",\"value\":\"Tentang Penyu\"}', NULL, 2, 1, 2, NULL, NULL),
(4, NULL, NULL, '{\"type\":\"p\",\"value\":\"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus bibendum et dui semper semper. Nulla ut arcu tempor, dictum metus eget, pharetra eros. Suspendisse potenti. Mauris euismod eros vel quam venenatis, nec luctus augue iaculis. Donec cursus accumsan lectus. Cras vitae sapien at metus vulputate volutpat dictum sed leo. Sed laoreet urna erat, eu pretium enim mollis sit amet.\"}', NULL, 3, 2, 2, NULL, NULL),
(5, NULL, '_text-center _font-permanent-marker', '{\"type\":\"h2\",\"value\":\"Klasifikasi Penyu\"}', NULL, 2, 1, 3, NULL, NULL),
(6, NULL, '_text-center', '{\"type\":\"p\",\"value\":\"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus bibendum et dui semper semper. Nulla ut arcu tempor, dictum metus eget, pharetra eros. Suspendisse potenti. Mauris euismod eros vel quam venenatis, nec luctus augue iaculis. Donec cursus accumsan lectus. Cras vitae sapien at metus vulputate volutpat dictum sed leo. Sed laoreet urna erat, eu pretium enim mollis sit amet.\"}', NULL, 3, 2, 3, NULL, NULL),
(7, NULL, '', '{\"type\":\"h4\",\"value\":\"Penyu Lekang\"}', NULL, 2, 1, 5, NULL, NULL),
(8, NULL, NULL, '{\"type\":\"p\",\"value\":\"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus bibendum et dui semper semper. Nulla ut arcu tempor, dictum metus eget, pharetra eros. Suspendisse potenti. Mauris euismod eros vel quam venenatis, nec luctus augue iaculis. Donec cursus accumsan lectus. Cras vitae sapien at metus vulputate volutpat dictum sed leo. Sed laoreet urna erat, eu pretium enim mollis sit amet.\"}', NULL, 3, 2, 5, NULL, NULL),
(9, NULL, '_font-permanent-marker', '{\"type\":\"h2\",\"value\":\"Cara Hidup Penyu\"}', NULL, 2, 1, 6, NULL, NULL),
(10, NULL, NULL, '{\"type\":\"p\",\"value\":\"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus bibendum et dui semper semper. Nulla ut arcu tempor, dictum metus eget, pharetra eros. Suspendisse potenti. Mauris euismod eros vel quam venenatis, nec luctus augue iaculis. Donec cursus accumsan lectus. Cras vitae sapien at metus vulputate volutpat dictum sed leo. Sed laoreet urna erat, eu pretium enim mollis sit amet.\"}', NULL, 3, 2, 6, NULL, NULL),
(11, NULL, '_font-permanent-marker', '{\"type\":\"h2\",\"value\":\"Masa Bertelur Penyu\"}', NULL, 2, 1, 7, NULL, NULL),
(12, NULL, NULL, '{\"type\":\"p\",\"value\":\"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus bibendum et dui semper semper. Nulla ut arcu tempor, dictum metus eget, pharetra eros. Suspendisse potenti. Mauris euismod eros vel quam venenatis, nec luctus augue iaculis. Donec cursus accumsan lectus. Cras vitae sapien at metus vulputate volutpat dictum sed leo. Sed laoreet urna erat, eu pretium enim mollis sit amet.\"}', NULL, 3, 2, 7, NULL, NULL),
(13, NULL, '_text-center _font-permanent-marker', '{\"type\":\"h2\",\"value\":\"Fakta Tentang Penyu\"}', NULL, 2, 1, 8, NULL, NULL),
(14, NULL, '_text-center', '{\"type\":\"p\",\"value\":\"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus bibendum et dui semper semper. Nulla ut arcu tempor, dictum metus eget, pharetra eros. Suspendisse potenti. Mauris euismod eros vel quam venenatis, nec luctus augue iaculis. Donec cursus accumsan lectus. Cras vitae sapien at metus vulputate volutpat dictum sed leo. Sed laoreet urna erat, eu pretium enim mollis sit amet.\"}', NULL, 3, 2, 8, NULL, NULL),
(15, NULL, NULL, '{\"src\":\"section5-beranda.png\"}', NULL, 4, 1, 9, NULL, NULL),
(16, NULL, '_font-permanent-marker', '{\"type\":\"h2\",\"value\":\"Gallery Foto & Video\"}', NULL, 2, 1, 10, NULL, NULL),
(17, 'carouselHome', NULL, '{\"0\":{\"src\":\"penyu-lekang.png\",\"href\":\"https:\\/\\/wallpapermemory.com\\/desktop-backgrounds\\/nature\\/mountain\\/mount-bromo\"},\"1\":{\"src\":\"penyu-pipih.png\",\"href\":\"https:\\/\\/wallpapermemory.com\\/desktop-backgrounds\\/nature\\/mountain\\/mount-bromo\"},\"2\":{\"src\":\"penyu-sisik.png\",\"href\":\"https:\\/\\/wallpapermemory.com\\/desktop-backgrounds\\/nature\\/mountain\\/mount-bromo\"}}\r\n', 'bootstrap_carousel_type_1', 1, 1, 11, NULL, NULL),
(18, NULL, NULL, '{\"src\":\"https://youtu.be/R2LQdh42neg\",\"href\":\"https:\\/\\/wallpapermemory.com\\/uploads\\/200\\/mount-bromo-wallpaper-hd-1920x1200-320096.jpg\"}', NULL, 5, 1, 12, NULL, NULL),
(19, NULL, '_font-permanent-marker', '{\"type\":\"h2\",\"value\":\"Wilayah Konservasi\"}', NULL, 2, 1, 13, NULL, NULL),
(20, NULL, NULL, '{\"type\":\"p\",\"value\":\"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus bibendum et dui semper semper. Nulla ut arcu tempor, dictum metus eget, pharetra eros. Suspendisse potenti. Mauris euismod eros vel quam venenatis, nec luctus augue iaculis. Donec cursus accumsan lectus. Cras vitae sapien at metus vulputate volutpat dictum sed leo. Sed laoreet urna erat, eu pretium enim mollis sit amet.\"}', NULL, 3, 2, 13, NULL, NULL),
(21, NULL, '_text-center _font-permanent-marker', '{\"type\":\"h1\",\"value\":\"LATAR BELAKANG TERBENTUKNYA PENYU UNTUK INDONESIA\"}', NULL, 2, 1, 15, NULL, NULL),
(22, NULL, NULL, '{\"type\":\"h2\",\"value\":\"Tentang Penyu Untuk Indonesia\"}', NULL, 2, 2, 15, NULL, NULL),
(23, NULL, NULL, '{\"type\":\"p\",\"value\":\"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus bibendum et dui semper semper. Nulla ut arcu tempor, dictum metus eget, pharetra eros. Suspendisse potenti. Mauris euismod eros vel quam venenatis, nec luctus augue iaculis. Donec cursus accumsan lectus. Cras vitae sapien at metus vulputate volutpat dictum sed leo. Sed laoreet urna erat, eu pretium enim mollis sit amet.\"}', NULL, 3, 3, 15, NULL, NULL),
(24, NULL, NULL, '{\"type\":\"h2\",\"value\":\"Ranah Kegiatan\"}', NULL, 2, 1, 16, NULL, NULL),
(25, NULL, NULL, '{\"type\":\"p\",\"value\":\"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus bibendum et dui semper semper. Nulla ut arcu tempor, dictum metus eget, pharetra eros. Suspendisse potenti. Mauris euismod eros vel quam venenatis, nec luctus augue iaculis. Donec cursus accumsan lectus. Cras vitae sapien at metus vulputate volutpat dictum sed leo. Sed laoreet urna erat, eu pretium enim mollis sit amet.\"}', NULL, 3, 2, 16, NULL, NULL),
(26, NULL, NULL, '{\"src\":\"tentang-penyu.png\"}', NULL, 4, 1, 17, NULL, NULL),
(27, NULL, '_text-center _font-permanent-marker', '{\"type\":\"h2\",\"value\":\"TUJUAN DIBENTUKNYA PENYU UNTUK INDONESIA\"}', NULL, 2, 1, 18, NULL, NULL),
(28, NULL, NULL, '{\"type\":\"p\",\"value\":\"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus bibendum et dui semper semper. Nulla ut arcu tempor, dictum metus eget, pharetra eros. Suspendisse potenti. Mauris euismod eros vel quam venenatis, nec luctus augue iaculis. Donec cursus accumsan lectus. Cras vitae sapien at metus vulputate volutpat dictum sed leo. Sed laoreet urna erat, eu pretium enim mollis sit amet.\"}', NULL, 3, 2, 18, NULL, NULL),
(29, NULL, NULL, '{\"type\":\"h2\",\"value\":\"Pencapaian Kami\"}', NULL, 2, 1, 19, NULL, NULL),
(30, NULL, NULL, '{\"type\":\"p\",\"value\":\"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus bibendum et dui semper semper. Nulla ut arcu tempor, dictum metus eget, pharetra eros. Suspendisse potenti. Mauris euismod eros vel quam venenatis, nec luctus augue iaculis. Donec cursus accumsan lectus. Cras vitae sapien at metus vulputate volutpat dictum sed leo. Sed laoreet urna erat, eu pretium enim mollis sit amet.\"}', NULL, 3, 2, 19, NULL, NULL),
(31, NULL, '_text-center', '{\"type\":\"h2\",\"value\":\"Update Berita\"}', NULL, 2, 1, 20, NULL, NULL),
(32, 'carouselHome', NULL, '{\"0\":{\"src\":\"slider-1.png\",\"href\":\"https:\\/\\/wallpapermemory.com\\/desktop-backgrounds\\/nature\\/mountain\\/mount-bromo\",\"heading\":\"This is Heading\",\"description\":\"This is description lorem ipsum dolor sit amet\"},\"1\":{\"src\":\"slider-1.png\",\"href\":\"https:\\/\\/wallpapermemory.com\\/desktop-backgrounds\\/nature\\/mountain\\/mount-bromo\",\"heading\":\"This is Heading\",\"description\":\"This is description lorem ipsum dolor sit amet\"},\"2\":{\"src\":\"slider-1.png\",\"href\":\"https:\\/\\/wallpapermemory.com\\/desktop-backgrounds\\/nature\\/mountain\\/mount-bromo\",\"heading\":\"This is Heading\",\"description\":\"This is description lorem ipsum dolor sit amet\"}}', 'bootstrap_carousel_type_2', 1, 2, 20, NULL, NULL),
(33, NULL, '_text-center _font-permanent-marker', '{\"type\":\"h2\",\"value\":\"MEDIA\"}', NULL, 2, 1, 21, NULL, NULL),
(35, NULL, NULL, '{\"type\":\"p\",\"value\":\"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus bibendum et dui semper semper. Nulla ut arcu tempor, dictum metus eget, pharetra eros. Suspendisse potenti. Mauris euismod eros vel quam venenatis, nec luctus augue iaculis. Donec cursus accumsan lectus. Cras vitae sapien at metus vulputate volutpat dictum sed leo. Sed laoreet urna erat, eu pretium enim mollis sit amet.\"}', NULL, 3, 2, 21, NULL, NULL),
(36, 'sliderHome', NULL, '{\"0\":{\"src\":\"penyu-lekang.png\",\"heading\":\"This is Heading\",\"description\":\"This is description lorem ipsum dolor sit amet\"},\"1\":{\"src\":\"penyu-pipih.png\",\"heading\":\"This is Heading\",\"description\":\"This is description lorem ipsum dolor sit amet\"},\"2\":{\"src\":\"penyu-sisik.png\",\"heading\":\"This is Heading\",\"description\":\"This is description lorem ipsum dolor sit amet\"},\"3\":{\"src\":\"penyu-tempayan.png\",\"heading\":\"This is Heading\",\"description\":\"This is description lorem ipsum dolor sit amet\"},\"4\":{\"src\":\"penyu-kemps-ridley.png\",\"heading\":\"This is Heading\",\"description\":\"This is description lorem ipsum dolor sit amet\"}}', 'slider-3', 6, 1, 22, NULL, NULL),
(37, NULL, '_padding-10', '{\"src\":\"konservasi-bali.png\"}', NULL, 4, 1, 33, NULL, '0000-00-00 00:00:00'),
(38, NULL, '_font-permanent-marker', '{\"type\":\"h2\",\"value\":\"KONSERVASI PENYU\"}\r\n', NULL, 2, 1, 34, NULL, NULL),
(39, NULL, NULL, '{\"type\":\"p\",\"value\":\"Bali\"}', NULL, 3, 2, 34, NULL, NULL),
(40, NULL, NULL, '{\"type\":\"p\",\"value\":\"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus bibendum et dui semper semper. Nulla ut arcu tempor, dictum metus eget, pharetra eros. Suspendisse potenti. Mauris euismod eros vel quam venenatis, nec luctus augue iaculis. Donec cursus accumsan lectus. Cras vitae sapien at metus vulputate volutpat dictum sed leo. Sed laoreet urna erat, eu pretium enim mollis sit amet.\"}', NULL, 3, 3, 34, NULL, NULL),
(41, NULL, '', '{\"href\":\"konservasi-kami/detail\",\"value\":\"Details\"}', NULL, 7, 4, 34, NULL, NULL),
(42, NULL, '_font-permanent-marker', '{\"type\":\"h2\",\"value\":\"KONSERVASI PENYU PASIR JAMBAK\"}\r\n', NULL, 2, 1, 35, NULL, NULL),
(43, NULL, NULL, '{\"type\":\"p\",\"value\":\"Padang\"}\r\n', NULL, 3, 2, 35, NULL, NULL),
(44, NULL, NULL, '{\"type\":\"p\",\"value\":\"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus bibendum et dui semper semper. Nulla ut arcu tempor, dictum metus eget, pharetra eros. Suspendisse potenti. Mauris euismod eros vel quam venenatis, nec luctus augue iaculis. Donec cursus accumsan lectus. Cras vitae sapien at metus vulputate volutpat dictum sed leo. Sed laoreet urna erat, eu pretium enim mollis sit amet.\"}\r\n', NULL, 3, 3, 35, NULL, NULL),
(45, NULL, NULL, '{\"href\":\"konservasi-kami/detail\",\"value\":\"Details\"}', NULL, 7, 4, 35, NULL, NULL),
(46, NULL, '_padding-10', '{\"src\":\"konservasi-padang.png\"}', NULL, 4, 1, 36, NULL, NULL),
(47, NULL, '_padding-10', '{\"src\":\"konservasi-pangandaran.png\"}', NULL, 4, 1, 37, NULL, NULL),
(48, NULL, '_font-permanent-marker', '{\"type\":\"h2\",\"value\":\"KONSERVASI PENYU BATU HIU\"}', NULL, 2, 1, 38, NULL, NULL),
(49, NULL, NULL, '{\"type\":\"p\",\"value\":\"Pangandaran\"}', NULL, 3, 2, 38, NULL, NULL),
(50, NULL, NULL, '{\"type\":\"p\",\"value\":\"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus bibendum et dui semper semper. Nulla ut arcu tempor, dictum metus eget, pharetra eros. Suspendisse potenti. Mauris euismod eros vel quam venenatis, nec luctus augue iaculis. Donec cursus accumsan lectus. Cras vitae sapien at metus vulputate volutpat dictum sed leo. Sed laoreet urna erat, eu pretium enim mollis sit amet.\"}', NULL, 3, 3, 38, NULL, NULL),
(51, NULL, NULL, '{\"href\":\"konservasi-kami/detail\",\"value\":\"Details\"}', NULL, 7, 4, 38, NULL, NULL),
(52, NULL, '_font-permanent-marker', '{\"type\":\"h2\",\"value\":\"KONSERVASI PENYU PULAU PRAMUKA\"}\r\n', NULL, 2, 1, 39, NULL, NULL),
(53, NULL, NULL, '{\"type\":\"p\",\"value\":\"Kepulauan Seribu\"}\r\n', NULL, 3, 2, 39, NULL, NULL),
(54, NULL, NULL, '{\"type\":\"p\",\"value\":\"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus bibendum et dui semper semper. Nulla ut arcu tempor, dictum metus eget, pharetra eros. Suspendisse potenti. Mauris euismod eros vel quam venenatis, nec luctus augue iaculis. Donec cursus accumsan lectus. Cras vitae sapien at metus vulputate volutpat dictum sed leo. Sed laoreet urna erat, eu pretium enim mollis sit amet.\"}\r\n', NULL, 3, 3, 39, NULL, NULL),
(55, NULL, NULL, '{\"href\":\"konservasi-kami/detail\",\"value\":\"Details\"}', NULL, 7, 4, 39, NULL, NULL),
(56, NULL, '_padding-10', '{\"src\":\"konservasi-pulau-pramuka.png\"}', NULL, 4, 1, 40, NULL, NULL),
(57, NULL, NULL, '{\"src\":\"slider-1.png\",\"href\":\"https:\\/\\/wallpapermemory.com\\/uploads\\/200\\/mount-bromo-wallpaper-hd-1920x1200-320096.jpg\"}', NULL, 4, 1, 41, NULL, NULL),
(58, NULL, NULL, '{\"type\":\"h2\",\"value\":\"Sosialisasi\"}\r\n', NULL, 2, 1, 42, NULL, NULL),
(59, NULL, '_icon-alignment', '{\"type\":\"h3\",\"value\":\"<i class=\'fa fa-map-marker\'></i>Lokasi\"}\r\n', NULL, 2, 1, 43, NULL, NULL),
(60, NULL, NULL, '{\"type\":\"p\",\"value\":\"Lorem ipsum dolor sit amet, consectetur adipiscing elit.\"}\r\n', NULL, 3, 2, 43, NULL, NULL),
(61, NULL, '_icon-alignment', '{\"type\":\"h3\",\"value\":\"<i class=\'fa fa-clock-o\'></i>Waktu\"}\r\n', NULL, 2, 1, 44, NULL, NULL),
(62, NULL, NULL, '{\"type\":\"p\",\"value\":\"Lorem ipsum dolor sit amet.\"}\r\n', NULL, 3, 2, 44, NULL, NULL),
(63, NULL, '_icon-alignment', '{\"type\":\"h3\",\"value\":\"<i class=\'fa fa-bullseye\'></i>Target\"}\r\n', NULL, 2, 1, 45, NULL, NULL),
(64, NULL, NULL, '{\"type\":\"p\",\"value\":\"Lorem ipsum dolor sit amet, consectetur\"}\r\n', NULL, 3, 2, 45, NULL, NULL),
(65, NULL, NULL, '{\"type\":\"h2\",\"value\":\"Materi\"}\r\n', NULL, 2, 1, 46, NULL, NULL),
(66, NULL, NULL, '{\"type\":\"p\",\"value\":\"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus bibendum et dui semper semper. Nulla ut arcu tempor, dictum metus eget, pharetra eros. Suspendisse potenti. Mauris euismod eros vel quam venenatis, nec luctus augue iaculis. Donec cursus accumsan lectus. Cras vitae sapien at metus vulputate volutpat dictum sed leo. Sed laoreet urna erat, eu pretium enim mollis sit amet.\"}\r\n', NULL, 3, 2, 46, NULL, NULL),
(67, NULL, NULL, '{\"type\":\"h2\",\"value\":\"Dokumentasi\"}\r\n', NULL, 2, 1, 47, NULL, NULL),
(68, 'carouselHome', '', '{\"0\":{\"src\":\"slider-1.png\",\"href\":\"https:\\/\\/wallpapermemory.com\\/desktop-backgrounds\\/nature\\/mountain\\/mount-bromo\",\"heading\":\"This is Heading\",\"description\":\"This is description lorem ipsum dolor sit amet\"},\"1\":{\"src\":\"slider-1.png\",\"href\":\"https:\\/\\/wallpapermemory.com\\/desktop-backgrounds\\/nature\\/mountain\\/mount-bromo\",\"heading\":\"This is Heading\",\"description\":\"This is description lorem ipsum dolor sit amet\"},\"2\":{\"src\":\"slider-1.png\",\"href\":\"https:\\/\\/wallpapermemory.com\\/desktop-backgrounds\\/nature\\/mountain\\/mount-bromo\",\"heading\":\"This is Heading\",\"description\":\"This is description lorem ipsum dolor sit amet\"}}', 'bootstrap_carousel_type_3', 1, 2, 47, NULL, NULL),
(69, NULL, NULL, '{\"type\":\"h2\",\"value\":\"Penyelamatan Penyu\"}\r\n', NULL, 2, 1, 48, NULL, NULL),
(70, NULL, '_icon-alignment', '{\"type\":\"h3\",\"value\":\"<i class=\'fa fa-map-marker\'></i>Lokasi\"}\r\n', NULL, 2, 1, 49, NULL, NULL),
(71, NULL, NULL, '{\"type\":\"p\",\"value\":\"Lorem ipsum dolor sit amet, consectetur adipiscing elit.\"}\r\n', NULL, 3, 2, 49, NULL, NULL),
(72, NULL, '_icon-alignment', '{\"type\":\"h3\",\"value\":\"<i class=\'fa fa-clock-o\'></i>Waktu\"}\r\n', NULL, 2, 1, 50, NULL, NULL),
(73, NULL, NULL, '{\"type\":\"p\",\"value\":\"Lorem ipsum dolor sit amet,\"}\r\n', NULL, 3, 2, 50, NULL, NULL),
(74, NULL, NULL, '{\"type\":\"h2\",\"value\":\"Jumlah penyu dan jumlah telur yang diselamatkan\"}\r\n', NULL, 2, 1, 51, NULL, NULL),
(75, NULL, NULL, '{\"type\":\"p\",\"value\":\"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus bibendum et dui semper semper. Nulla ut arcu tempor, dictum metus eget, pharetra eros. Suspendisse potenti. Mauris euismod eros vel quam venenatis, nec luctus augue iaculis. Donec cursus accumsan lectus. Cras vitae sapien at metus vulputate volutpat dictum sed leo. Sed laoreet urna erat, eu pretium enim mollis sit amet.\"}\r\n', NULL, 3, 2, 51, NULL, NULL),
(76, NULL, NULL, '{\"type\":\"h2\",\"value\":\"Dokumentasi\"}\r\n', NULL, 2, 1, 52, NULL, NULL),
(77, 'carouselHome', NULL, '{\"0\":{\"src\":\"slider-1.png\",\"href\":\"https:\\/\\/wallpapermemory.com\\/desktop-backgrounds\\/nature\\/mountain\\/mount-bromo\",\"heading\":\"This is Heading\",\"description\":\"This is description lorem ipsum dolor sit amet\"},\"1\":{\"src\":\"slider-1.png\",\"href\":\"https:\\/\\/wallpapermemory.com\\/desktop-backgrounds\\/nature\\/mountain\\/mount-bromo\",\"heading\":\"This is Heading\",\"description\":\"This is description lorem ipsum dolor sit amet\"},\"2\":{\"src\":\"slider-1.png\",\"href\":\"https:\\/\\/wallpapermemory.com\\/desktop-backgrounds\\/nature\\/mountain\\/mount-bromo\",\"heading\":\"This is Heading\",\"description\":\"This is description lorem ipsum dolor sit amet\"}}', 'bootstrap_carousel_type_3', 1, 2, 52, NULL, NULL),
(78, NULL, NULL, '{\"type\":\"h2\",\"value\":\"Pembesaran tukik\"}', NULL, 2, 1, 53, NULL, NULL),
(79, NULL, NULL, '{\"type\":\"h2\",\"value\":\"Pemberian makanan tukik\"}', NULL, 2, 2, 53, NULL, NULL),
(80, NULL, NULL, '{\"type\":\"p\",\"value\":\"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus bibendum et dui semper semper. Nulla ut arcu tempor, dictum metus eget, pharetra eros. Suspendisse potenti. Mauris euismod eros vel quam venenatis, nec luctus augue iaculis. Donec cursus accumsan lectus. Cras vitae sapien at metus vulputate volutpat dictum sed leo. Sed laoreet urna erat, eu pretium enim mollis sit amet.\"}', NULL, 3, 3, 53, NULL, NULL),
(81, NULL, NULL, '{\"type\":\"h2\",\"value\":\"Monitoring Perkembangan ukuran tukik\"}', NULL, 2, 1, 54, NULL, NULL),
(82, NULL, NULL, '{\"type\":\"p\",\"value\":\"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus bibendum et dui semper semper. Nulla ut arcu tempor, dictum metus eget, pharetra eros. Suspendisse potenti. Mauris euismod eros vel quam venenatis, nec luctus augue iaculis.\"}', NULL, 3, 2, 54, NULL, NULL),
(83, 'sliderHome', NULL, '{\"0\":{\"src\":\"slider-1.png\",\"href\":\"https:\\/\\/wallpapermemory.com\\/desktop-backgrounds\\/nature\\/mountain\\/mount-bromo\",\"heading\":\"This is Heading\",\"description\":\"This is description lorem ipsum dolor sit amet\"},\"1\":{\"src\":\"_DSC6951.JPG\",\"href\":\"https:\\/\\/wallpapermemory.com\\/desktop-backgrounds\\/nature\\/mountain\\/mount-bromo\",\"heading\":\"This is Heading 2\",\"description\":\"This is description lorem ipsum dolor sit amet\"},\"2\":{\"src\":\"_DSC6927.JPG\",\"href\":\"https:\\/\\/wallpapermemory.com\\/desktop-backgrounds\\/nature\\/mountain\\/mount-bromo\",\"heading\":\"This is Heading 3\",\"description\":\"This is description lorem ipsum dolor sit amet\"}}', 'slider-2', 6, 1, 55, NULL, NULL),
(84, NULL, NULL, '{\"type\":\"h2\",\"value\":\"Dokumentasi\"}', NULL, 2, 1, 56, NULL, NULL),
(85, 'carouselHome', NULL, '{\"0\":{\"src\":\"slider-1.png\",\"href\":\"https:\\/\\/wallpapermemory.com\\/desktop-backgrounds\\/nature\\/mountain\\/mount-bromo\",\"heading\":\"This is Heading\",\"description\":\"This is description lorem ipsum dolor sit amet\"},\"1\":{\"src\":\"slider-1.png\",\"href\":\"https:\\/\\/wallpapermemory.com\\/desktop-backgrounds\\/nature\\/mountain\\/mount-bromo\",\"heading\":\"This is Heading\",\"description\":\"This is description lorem ipsum dolor sit amet\"},\"2\":{\"src\":\"slider-1.png\",\"href\":\"https:\\/\\/wallpapermemory.com\\/desktop-backgrounds\\/nature\\/mountain\\/mount-bromo\",\"heading\":\"This is Heading\",\"description\":\"This is description lorem ipsum dolor sit amet\"}}', 'bootstrap_carousel_type_3', 1, 2, 56, NULL, NULL),
(86, NULL, NULL, '{\"type\":\"h2\",\"value\":\"Pelepasliaran Tukik\"}', NULL, 2, 1, 57, NULL, NULL),
(87, NULL, '_icon-alignment', '{\"type\":\"h3\",\"value\":\"<i class=\'fa fa-map-marker\'></i>Lokasi\"}', NULL, 2, 1, 58, NULL, NULL),
(88, NULL, NULL, '{\"type\":\"p\",\"value\":\"Lorem ipsum dolor sit amet, consectetur adipiscing elit.\"}', NULL, 3, 2, 58, NULL, NULL),
(89, NULL, '_icon-alignment', '{\"type\":\"h3\",\"value\":\"<i class=\'fa fa-clock-o\'></i>Waktu\"}', NULL, 2, 1, 59, NULL, NULL),
(90, NULL, NULL, '{\"type\":\"p\",\"value\":\"Lorem ipsum dolor sit amet,\"}', NULL, 3, 2, 59, NULL, NULL),
(91, NULL, NULL, '{\"type\":\"h2\",\"value\":\"Kegiatan, jenis penyu yang dilepaskan, jumlah penyu yang dilepaskan\"}', NULL, 2, 1, 60, NULL, NULL),
(92, NULL, NULL, '{\"type\":\"p\",\"value\":\"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus bibendum et dui semper semper. Nulla ut arcu tempor, dictum metus eget, pharetra eros. Suspendisse potenti. Mauris euismod eros vel quam venenatis, nec luctus augue iaculis. Donec cursus accumsan lectus. Cras vitae sapien at metus vulputate volutpat dictum sed leo. Sed laoreet urna erat, eu pretium enim mollis sit amet.\"}', NULL, 3, 2, 60, NULL, NULL),
(93, NULL, NULL, '{\"type\":\"h2\",\"value\":\"Dokumentasi\"}\r\n', NULL, 2, 1, 61, NULL, NULL),
(94, 'carouselHome', NULL, '{\"0\":{\"src\":\"slider-1.png\",\"href\":\"https:\\/\\/wallpapermemory.com\\/desktop-backgrounds\\/nature\\/mountain\\/mount-bromo\",\"heading\":\"This is Heading\",\"description\":\"This is description lorem ipsum dolor sit amet\"},\"1\":{\"src\":\"slider-1.png\",\"href\":\"https:\\/\\/wallpapermemory.com\\/desktop-backgrounds\\/nature\\/mountain\\/mount-bromo\",\"heading\":\"This is Heading\",\"description\":\"This is description lorem ipsum dolor sit amet\"},\"2\":{\"src\":\"slider-1.png\",\"href\":\"https:\\/\\/wallpapermemory.com\\/desktop-backgrounds\\/nature\\/mountain\\/mount-bromo\",\"heading\":\"This is Heading\",\"description\":\"This is description lorem ipsum dolor sit amet\"}}', 'bootstrap_carousel_type_3', 1, 2, 61, NULL, NULL),
(95, NULL, NULL, '{\"type\":\"h2\",\"value\":\"Pembersihan Pantai\"}', NULL, 2, 1, 62, NULL, NULL),
(96, NULL, '_icon-alignment', '{\"type\":\"h3\",\"value\":\"<i class=\'fa fa-map-marker\'></i>Lokasi\"}', NULL, 2, 1, 63, NULL, NULL),
(97, NULL, NULL, '{\"type\":\"p\",\"value\":\"Lorem ipsum dolor sit amet, consectetur adipiscing elit.\"}', NULL, 3, 2, 63, NULL, NULL),
(98, NULL, '_icon-alignment', '{\"type\":\"h3\",\"value\":\"<i class=\'fa fa-clock-o\'></i>Waktu\"}', NULL, 2, 1, 64, NULL, NULL),
(99, NULL, NULL, '{\"type\":\"p\",\"value\":\"Lorem ipsum dolor sit amet,\"}', NULL, 3, 2, 64, NULL, NULL),
(100, NULL, NULL, '{\"type\":\"h2\",\"value\":\"Dokumentasi\"}', NULL, 2, 1, 65, NULL, NULL),
(101, 'carouselHome', NULL, '{\"0\":{\"src\":\"slider-1.png\",\"href\":\"https:\\/\\/wallpapermemory.com\\/desktop-backgrounds\\/nature\\/mountain\\/mount-bromo\",\"heading\":\"This is Heading\",\"description\":\"This is description lorem ipsum dolor sit amet\"},\"1\":{\"src\":\"slider-1.png\",\"href\":\"https:\\/\\/wallpapermemory.com\\/desktop-backgrounds\\/nature\\/mountain\\/mount-bromo\",\"heading\":\"This is Heading\",\"description\":\"This is description lorem ipsum dolor sit amet\"},\"2\":{\"src\":\"slider-1.png\",\"href\":\"https:\\/\\/wallpapermemory.com\\/desktop-backgrounds\\/nature\\/mountain\\/mount-bromo\",\"heading\":\"This is Heading\",\"description\":\"This is description lorem ipsum dolor sit amet\"}}', 'bootstrap_carousel_type_3', 1, 2, 65, NULL, NULL),
(102, NULL, NULL, '{\"type\":\"h2\",\"value\":\"Kegiatan Lain\"}\r\n', NULL, 2, 1, 66, NULL, NULL),
(103, 'carouselHome', NULL, '{\"0\":{\"src\":\"slider-1.png\",\"href\":\"https:\\/\\/wallpapermemory.com\\/desktop-backgrounds\\/nature\\/mountain\\/mount-bromo\",\"heading\":\"This is Heading\",\"description\":\"This is description lorem ipsum dolor sit amet\"},\"1\":{\"src\":\"slider-1.png\",\"href\":\"https:\\/\\/wallpapermemory.com\\/desktop-backgrounds\\/nature\\/mountain\\/mount-bromo\",\"heading\":\"This is Heading\",\"description\":\"This is description lorem ipsum dolor sit amet\"},\"2\":{\"src\":\"slider-1.png\",\"href\":\"https:\\/\\/wallpapermemory.com\\/desktop-backgrounds\\/nature\\/mountain\\/mount-bromo\",\"heading\":\"This is Heading\",\"description\":\"This is description lorem ipsum dolor sit amet\"}}', 'bootstrap_carousel_type_3', 1, 2, 66, NULL, NULL),
(104, NULL, '_padding-10', '{\"src\":\"IMG-20180115-WA0006.jpg\",\"href\":\"https:\\/\\/wallpapermemory.com\\/uploads\\/200\\/mount-bromo-wallpaper-hd-1920x1200-320096.jpg\"}', NULL, 4, 1, 67, NULL, NULL),
(105, NULL, '_font-permanent-marker', '{\"type\":\"h2\",\"value\":\"KONSERVASI PENYU\"}', NULL, 2, 1, 68, NULL, NULL),
(106, NULL, NULL, '{\"type\":\"p\",\"value\":\"Bali\"}', NULL, 3, 2, 68, NULL, NULL),
(107, NULL, NULL, '{\"type\":\"p\",\"value\":\"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus bibendum et dui semper semper. Nulla ut arcu tempor, dictum metus eget, pharetra eros. Suspendisse potenti. Mauris euismod eros vel quam venenatis, nec luctus augue iaculis. Donec cursus accumsan lectus. Cras vitae sapien at metus vulputate volutpat dictum sed leo. Sed laoreet urna erat, eu pretium enim mollis sit amet.\"}', NULL, 3, 3, 68, NULL, NULL),
(108, NULL, NULL, '{\"src\":\"_DSC5965.JPG\",\"href\":\"https:\\/\\/wallpapermemory.com\\/uploads\\/200\\/mount-bromo-wallpaper-hd-1920x1200-320096.jpg\"}', NULL, 4, 4, 68, NULL, NULL),
(109, NULL, NULL, '{\"src\":\"https:\\/\\/wallpapermemory.com\\/uploads\\/200\\/mount-bromo-wallpaper-hd-1920x1200-320096.jpg\",\"href\":\"https:\\/\\/wallpapermemory.com\\/uploads\\/200\\/mount-bromo-wallpaper-hd-1920x1200-320096.jpg\"}', NULL, 4, 1, 69, NULL, NULL),
(110, NULL, NULL, '{\"type\":\"h3\",\"value\":\"(Lokasi konservasi)\"}', NULL, 2, 1, 70, NULL, NULL),
(111, NULL, NULL, '{\"type\":\"p\",\"value\":\"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus bibendum et dui semper semper. Nulla ut arcu tempor, dictum metus eget, pharetra eros. Suspendisse potenti. Mauris euismod eros vel quam venenatis, nec luctus augue iaculis. Donec cursus accumsan lectus. Cras vitae sapien at metus vulputate volutpat dictum sed leo. Sed laoreet urna erat, eu pretium enim mollis sit amet.\"}', NULL, 3, 2, 70, NULL, NULL),
(112, NULL, NULL, '{\"type\":\"h3\",\"value\":\"(Lokasi konservasi)\"}', NULL, 2, 1, 71, NULL, NULL),
(113, NULL, NULL, '{\"type\":\"p\",\"value\":\"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus bibendum et dui semper semper. Nulla ut arcu tempor, dictum metus eget, pharetra eros. Suspendisse potenti. Mauris euismod eros vel quam venenatis, nec luctus augue iaculis. Donec cursus accumsan lectus. Cras vitae sapien at metus vulputate volutpat dictum sed leo. Sed laoreet urna erat, eu pretium enim mollis sit amet.\"}', NULL, 3, 1, 71, NULL, NULL),
(114, NULL, NULL, '{\"src\":\"https:\\/\\/wallpapermemory.com\\/uploads\\/200\\/mount-bromo-wallpaper-hd-1920x1200-320096.jpg\",\"href\":\"https:\\/\\/wallpapermemory.com\\/uploads\\/200\\/mount-bromo-wallpaper-hd-1920x1200-320096.jpg\"}', NULL, 4, 1, 72, NULL, NULL),
(115, NULL, NULL, '{\"src\":\"https:\\/\\/wallpapermemory.com\\/uploads\\/200\\/mount-bromo-wallpaper-hd-1920x1200-320096.jpg\",\"href\":\"https:\\/\\/wallpapermemory.com\\/uploads\\/200\\/mount-bromo-wallpaper-hd-1920x1200-320096.jpg\"}', NULL, 4, 1, 73, NULL, NULL),
(116, NULL, NULL, '{\"type\":\"h3\",\"value\":\"(Lokasi konservasi)\"}', NULL, 2, 1, 74, NULL, NULL),
(117, NULL, NULL, '{\"type\":\"p\",\"value\":\"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus bibendum et dui semper semper. Nulla ut arcu tempor, dictum metus eget, pharetra eros. Suspendisse potenti. Mauris euismod eros vel quam venenatis, nec luctus augue iaculis. Donec cursus accumsan lectus. Cras vitae sapien at metus vulputate volutpat dictum sed leo. Sed laoreet urna erat, eu pretium enim mollis sit amet.\"}', NULL, 3, 2, 74, NULL, NULL),
(118, NULL, NULL, '{\"type\":\"h3\",\"value\":\"(Lokasi konservasi)\"}', NULL, 2, 1, 75, NULL, NULL),
(119, NULL, NULL, '{\"type\":\"p\",\"value\":\"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus bibendum et dui semper semper. Nulla ut arcu tempor, dictum metus eget, pharetra eros. Suspendisse potenti. Mauris euismod eros vel quam venenatis, nec luctus augue iaculis. Donec cursus accumsan lectus. Cras vitae sapien at metus vulputate volutpat dictum sed leo. Sed laoreet urna erat, eu pretium enim mollis sit amet.\"}', NULL, 3, 2, 75, NULL, NULL),
(120, NULL, NULL, '{\"src\":\"https:\\/\\/wallpapermemory.com\\/uploads\\/200\\/mount-bromo-wallpaper-hd-1920x1200-320096.jpg\",\"href\":\"https:\\/\\/wallpapermemory.com\\/uploads\\/200\\/mount-bromo-wallpaper-hd-1920x1200-320096.jpg\"}', NULL, 4, 1, 76, NULL, NULL),
(121, 'sliderHome', NULL, '{\"0\":{\"src\":\"slider-1.png\",\"href\":\"https:\\/\\/wallpapermemory.com\\/desktop-backgrounds\\/nature\\/mountain\\/mount-bromo\",\"heading\":\"This is Heading\",\"description\":\"This is description lorem ipsum dolor sit amet\"},\"1\":{\"src\":\"section7-beranda.png\",\"href\":\"https:\\/\\/wallpapermemory.com\\/desktop-backgrounds\\/nature\\/mountain\\/mount-bromo\",\"heading\":\"jancok\",\"description\":\"This is description lorem ipsum dolor sit amet\"}}', 'slider-2', 6, 1, 77, NULL, NULL),
(122, NULL, '', '{\"src\":\"IMG-20180327-WA0003.jpg\",\"href\":\"https:\\/\\/wallpapermemory.com\\/uploads\\/200\\/mount-bromo-wallpaper-hd-1920x1200-320096.jpg\"}', NULL, 4, 5, 30, NULL, NULL),
(123, NULL, NULL, '{\"src\":\"_DSC5965.JPG\",\"href\":\"https:\\/\\/wallpapermemory.com\\/uploads\\/200\\/mount-bromo-wallpaper-hd-1920x1200-320096.jpg\"}', NULL, 4, 1, 30, NULL, NULL),
(124, NULL, '_galery-video', '{\"src\":\"https://youtu.be/R2LQdh42neg\",\"href\":\"https:\\/\\/wallpapermemory.com\\/uploads\\/200\\/mount-bromo-wallpaper-hd-1920x1200-320096.jpg\"}', NULL, 5, 1, 31, NULL, NULL),
(125, NULL, '_galery-video', '{\"src\":\"https://youtu.be/R2LQdh42neg\",\"href\":\"https:\\/\\/wallpapermemory.com\\/uploads\\/200\\/mount-bromo-wallpaper-hd-1920x1200-320096.jpg\"}', NULL, 5, 2, 31, NULL, NULL),
(126, NULL, '_padding-10', '{\"src\":\"IMG-20180327-WA0010.jpg\",\"href\":\"https:\\/\\/wallpapermemory.com\\/uploads\\/200\\/mount-bromo-wallpaper-hd-1920x1200-320096.jpg\"}', NULL, 4, 1, 27, NULL, NULL),
(127, NULL, '_padding-10', '{\"src\":\"IMG-20180327-WA0008.jpg\",\"href\":\"https:\\/\\/wallpapermemory.com\\/uploads\\/200\\/mount-bromo-wallpaper-hd-1920x1200-320096.jpg\"}', NULL, 4, 1, 28, NULL, NULL),
(128, NULL, '_padding-10', '{\"src\":\"IMG-20180327-WA0009.jpg\",\"href\":\"https:\\/\\/wallpapermemory.com\\/uploads\\/200\\/mount-bromo-wallpaper-hd-1920x1200-320096.jpg\"}', NULL, 4, 2, 28, NULL, NULL),
(129, NULL, '_padding-10', '{\"type\":\"h3\",\"value\":\"BERITA LAINYA\"}', NULL, 2, 1, 29, NULL, NULL),
(130, NULL, '_padding-10', '{\"src\":\"_DSC5979.JPG\",\"href\":\"https:\\/\\/wallpapermemory.com\\/uploads\\/200\\/mount-bromo-wallpaper-hd-1920x1200-320096.jpg\"}', NULL, 4, 2, 29, NULL, NULL),
(131, NULL, '_padding-10', '{\"type\":\"h6\",\"value\":\"NAMA BERITA\"}', NULL, 2, 3, 29, NULL, NULL),
(132, NULL, NULL, '{\"type\":\"p\",\"value\":\"Nama\"}\r\n', NULL, 3, 1, 25, NULL, NULL),
(133, NULL, NULL, '{\"type\":\"p\",\"value\":\"Email\"}\r\n', NULL, 3, 2, 25, NULL, NULL),
(134, NULL, NULL, '{\"type\":\"p\",\"value\":\"Pesan Anda\"}\r\n', NULL, 3, 3, 25, NULL, NULL),
(135, NULL, NULL, '{\"type\":\"h2\",\"value\":\"Frequently Ask Question\"}', NULL, 2, 1, 26, NULL, NULL),
(136, NULL, NULL, '{\"src\":\"_DSC5979.JPG\",\"href\":\"https:\\/\\/wallpapermemory.com\\/uploads\\/200\\/mount-bromo-wallpaper-hd-1920x1200-320096.jpg\"}', NULL, 4, 3, 30, NULL, NULL),
(137, NULL, NULL, '{\"src\":\"_DSC6927.JPG\",\"href\":\"https:\\/\\/wallpapermemory.com\\/uploads\\/200\\/mount-bromo-wallpaper-hd-1920x1200-320096.jpg\"}', NULL, 4, 4, 30, NULL, NULL),
(138, NULL, NULL, '{\"src\":\"_DSC6951.JPG\",\"href\":\"https:\\/\\/wallpapermemory.com\\/uploads\\/200\\/mount-bromo-wallpaper-hd-1920x1200-320096.jpg\"}', NULL, 4, 2, 30, NULL, NULL),
(139, NULL, NULL, '{\"src\":\"IMG-20180115-WA0006.jpg\",\"href\":\"https:\\/\\/wallpapermemory.com\\/uploads\\/200\\/mount-bromo-wallpaper-hd-1920x1200-320096.jpg\"}', NULL, 4, 6, 30, NULL, NULL),
(140, NULL, NULL, '{\"src\":\"IMG-20190218-WA0010.jpg\",\"href\":\"https:\\/\\/wallpapermemory.com\\/uploads\\/200\\/mount-bromo-wallpaper-hd-1920x1200-320096.jpg\"}', NULL, 4, 7, 30, NULL, NULL),
(141, NULL, NULL, '{\"src\":\"IMG-20190326-WA0008.jpg\",\"href\":\"https:\\/\\/wallpapermemory.com\\/uploads\\/200\\/mount-bromo-wallpaper-hd-1920x1200-320096.jpg\"}', NULL, 4, 8, 30, NULL, NULL),
(142, NULL, '_galery-video', '{\"src\":\"https://youtu.be/R2LQdh42neg\",\"href\":\"https:\\/\\/wallpapermemory.com\\/uploads\\/200\\/mount-bromo-wallpaper-hd-1920x1200-320096.jpg\"}', NULL, 5, 3, 31, NULL, NULL),
(143, NULL, '_galery-video', '{\"src\":\"https://youtu.be/R2LQdh42neg\",\"href\":\"https:\\/\\/wallpapermemory.com\\/uploads\\/200\\/mount-bromo-wallpaper-hd-1920x1200-320096.jpg\"}', NULL, 5, 4, 31, NULL, NULL),
(144, NULL, '_padding-10', '{\"src\":\"IMG-20190326-WA0008.jpg\",\"href\":\"https:\\/\\/wallpapermemory.com\\/uploads\\/200\\/mount-bromo-wallpaper-hd-1920x1200-320096.jpg\"}', NULL, 4, 4, 29, NULL, NULL),
(145, NULL, '_padding-10', '{\"type\":\"h6\",\"value\":\"NAMA BERITA\"}\r\n', NULL, 2, 5, 29, NULL, NULL),
(146, 'Accordion', NULL, '{\"0\":{\"heading\":{\"type\":\"h2\",\"value\":\"Lorem Ipsum Dolor Sit Amet\"},\"body\":{\"value\":\"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\"}},\"1\":{\"heading\":{\"type\":\"h2\",\"value\":\"Lorem Ipsum Dolor Sit Amet\"},\"body\":{\"value\":\"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\"}},\"2\":{\"heading\":{\"type\":\"h2\",\"value\":\"Lorem Ipsum Dolor Sit Amet\"},\"body\":{\"value\":\"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\"}}}', NULL, 10, 2, 26, NULL, NULL),
(147, NULL, NULL, '{\"src\":\"_DSC5979.JPG\",\"href\":\"https:\\/\\/wallpapermemory.com\\/uploads\\/200\\/mount-bromo-wallpaper-hd-1920x1200-320096.jpg\"}', NULL, 4, 5, 68, NULL, NULL),
(148, NULL, NULL, '{\"src\":\"IMG-20190326-WA0008.jpg\",\"href\":\"https:\\/\\/wallpapermemory.com\\/uploads\\/200\\/mount-bromo-wallpaper-hd-1920x1200-320096.jpg\"}', NULL, 4, 6, 68, NULL, NULL),
(149, NULL, NULL, '{\"src\":\"https://youtu.be/R2LQdh42neg\",\"href\":\"https:\\/\\/wallpapermemory.com\\/uploads\\/200\\/mount-bromo-wallpaper-hd-1920x1200-320096.jpg\"}', NULL, 5, 1, 32, NULL, NULL),
(150, NULL, NULL, '{\"type\":\"h2\",\"value\":\"Parancak, Bali\"}\r\n', NULL, 2, 1, 78, NULL, NULL),
(151, NULL, NULL, '{\"type\":\"h2\",\"value\":\"Pasri Jambak, Padang\"}', NULL, 2, 1, 80, NULL, NULL),
(152, NULL, NULL, '{\"type\":\"h2\",\"value\":\"Batu Hiu, Pangandaran\"}', NULL, 2, 1, 82, NULL, NULL),
(153, NULL, NULL, '{\"type\":\"h2\",\"value\":\"Pulau Pramuka, Jakarta\"}', NULL, 2, 1, 84, NULL, NULL),
(154, NULL, NULL, '{\"src\":\"section7-beranda.png\"}', NULL, 4, 1, 14, NULL, NULL),
(155, NULL, 'fa fa-instagram _icon-social-badge-instagram', '{\"href\":\"google.com\",\"value\":\"\"}', NULL, 8, 1, 86, NULL, NULL),
(156, NULL, '_text-center', '{\"type\":\"h6\",\"value\":\"Sosialisasi\"}', NULL, 2, 1, 90, NULL, NULL),
(157, NULL, '_text-center', '{\"type\":\"h6\",\"value\":\"Penyelamatan Penyu\"}', NULL, 2, 1, 91, NULL, NULL),
(158, NULL, '_text-center', '{\"type\":\"h6\",\"value\":\"Pembesaran Tukik\"}', NULL, 2, 1, 92, NULL, NULL),
(159, NULL, '_text-center', '{\"type\":\"h6\",\"value\":\"Pelepasan Tukik\"}', NULL, 2, 1, 93, NULL, NULL),
(160, NULL, '_text-center', '{\"type\":\"h6\",\"value\":\"Pembersihan Pantai\"}', NULL, 2, 1, 94, NULL, NULL),
(161, NULL, '_text-center', '{\"type\":\"h6\",\"value\":\"Kegiatan lain-lain\"}', NULL, 2, 1, 95, NULL, NULL),
(162, NULL, 'fa fa-facebook _icon-social-badge-facebook', '{\"href\":\"google.com\",\"value\":\"\"}', NULL, 8, 1, 87, NULL, NULL),
(163, NULL, 'fa fa-twitter _icon-social-badge-twitter', '{\"href\":\"google.com\",\"value\":\"\"}', NULL, 8, 1, 88, NULL, NULL),
(164, NULL, 'fa fa-youtube _icon-social-badge-youtube', '{\"href\":\"google.com\",\"value\":\"\"}', NULL, 8, 1, 89, NULL, NULL),
(165, 'sliderHome', NULL, '{\"0\":{\"src\":\"penyu-lekang.png\",\"heading\":\"This is Heading\",\"description\":\"This is description lorem ipsum dolor sit amet\"},\"1\":{\"src\":\"penyu-pipih.png\",\"heading\":\"This is Heading\",\"description\":\"This is description lorem ipsum dolor sit amet\"},\"2\":{\"src\":\"penyu-sisik.png\",\"heading\":\"This is Heading\",\"description\":\"This is description lorem ipsum dolor sit amet\"},\"3\":{\"src\":\"penyu-tempayan.png\",\"heading\":\"This is Heading\",\"description\":\"This is description lorem ipsum dolor sit amet\"},\"4\":{\"src\":\"penyu-kemps-ridley.png\",\"heading\":\"This is Heading\",\"description\":\"This is description lorem ipsum dolor sit amet\"},\"5\":{\"src\":\"penyu-belimbing.png\",\"heading\":\"This is Heading\",\"description\":\"This is description lorem ipsum dolor sit amet\"},\"6\":{\"src\":\"penyu-hijau.png\",\"heading\":\"This is Heading\",\"description\":\"This is description lorem ipsum dolor sit amet\"}}', 'slider-1', 6, 1, 4, NULL, NULL),
(166, NULL, '_breadcrumb', '{\"type\":\"p\",\"value\":\"<a href=\'javascript:history.back()\' >Konservasi-kami</a> <i class=\'fa fa-caret-right\'></i> Detail\"}', NULL, 3, 1, 96, NULL, NULL);

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
(1, 1, '._navbar {position: fixed;left: 0px;top: 0px;width: 100%;background-color: #fff;z-index: 99999999;padding: 10px 0px; }\r\n._navbar ._menu-link { float: right;}\r\n._navbar ._menu-link ul { width: 100%;padding: 0px;list-style: none;display: table;margin: 0px;}\r\n._navbar ._menu-link ul li { float: left;}\r\n._navbar ._menu-link ul li a {text-decoration: none;color: #333;padding: 8px 10px;display: block;text-transform: capitalize; }\r\n            ._text-center { text-align: center; }\r\n            ._text-right { text-align: right; }\r\n            ._float-right { float: right!important; }\r\n            ._container { width: 1000px; margin: 0px auto; display: block;}\r\n            ._section ._container { display: table; padding: 20px 10px; border: .5px #aaa dashed;}\r\n            ._section ._container ._grid{ float: left; padding: 10px 0px; display: inherit;border: .5px #aaa dashed; position: relative;}\r\n            ._section ._container .grid-12 { width: 100%; }\r\n            ._section ._container .grid-11 { width: 91.666666666667%; }\r\n            ._section ._container .grid-10 { width: 83.333333333333%; }\r\n            ._section ._container .grid-9  { width: 75%; }\r\n            ._section ._container .grid-8  { width: 66.666666666666%; }\r\n            ._section ._container .grid-7  { width: 58.333333333333%; }\r\n            ._section ._container .grid-6  { width: 50%; }\r\n            ._section ._container .grid-5  { width: 41.666666666667%; }\r\n            ._section ._container .grid-4  { width: 33.333333333333%; }\r\n            ._section ._container .grid-3  { width: 25%; }\r\n            ._section ._container .grid-2  { width: 16.666666666667%; }\r\n            ._section ._container .grid-1  { width:  8.333333333333%; }\r\n            ._btn { padding: 5px 17px; display: block; width: fit-content; border: .5px #2f94e0 solid; border-radius: 9px; color: white; background-color : #2f94e0;}\r\n            ._btn:hover { text-decoration: none; color: #2f94e0; background-color: #FFFFFF; }\r\n._galery-image img {\r\nwidth: 25% !important;\r\n    float: left;\r\n    padding: 5px;\r\n    height: 150px;\r\n    background-size: cover;\r\n}\r\n._padding-10{\r\npadding : 10px;\r\n}\r\n._berita-berita-lain img{\r\nwidth : 50%!important;\r\nfloat : left;\r\n}\r\n._berita-berita-lain h6{\r\nheight : 80px;\r\n}\r\n._lokasi-image img{\r\nwidth : 33% !important;\r\nfloat: left;\r\npadding : 3px;\r\n}\r\n._galery-video {\r\nwidth : 50% !important;\r\nfloat : left;\r\npadding : 5px;\r\n}\r\n._container-width-full ._container {\r\nwidth: 100% !important;\r\n    padding: 20px 0px;	\r\n}\r\n._container-width-full ._container ._grid {\r\nwidth: 100% !important;\r\n    padding: 20px 0px;	\r\n}\r\n._section ._container ._grid-1000{\r\nwidth: 1000px !important;\r\nfloat: unset;\r\nmargin: 0px auto;\r\n}\r\nbody {\r\npadding-top: 60px;\r\n}\r\n._padding-less-container-grid ._container {\r\npadding: 0px !important;\r\n}\r\n._padding-less-container-grid ._container ._grid{\r\npadding: 0px !important;\r\n}\r\n._social-media-badge {\r\nposition: absolute;\r\n    z-index: 1;\r\n    top: 40%;\r\n    bottom: 45%;\r\n    width: 47px;\r\n    display: block;\r\n}\r\n._social-media-badge ._container{\r\nposition: absolute;\r\n    width:100%;\r\n}\r\n._font-permanent-marker {\r\nfont-family: \'Permanent Marker\', cursive;\r\ncolor : #2679BF;\r\n}\r\n._konservasi-detail-border {\r\n\r\n}\r\n._section-konservasi-overview .grid-2 {\r\nborder: .5px #aaa solid;\r\n    border-bottom: none;\r\n    border-top: none;\r\n    border-right: none !important;\r\n}\r\n\r\n._section-konservasi-overview .grid-2:nth-child(2) {\r\nborder:none!important;\r\n}\r\n._icon-alignment i {\r\nmargin : 0px 10px 0px 10px;\r\n}\r\n._section-konservasi-overview .grid-2:last-child {\r\nborder-right:none!important;\r\n}\r\n\r\n.carousel-control-next{\r\nposition: absolute;\r\nbottom: 15px;\r\nright: 15px;\r\nborder: 5px solid;\r\npadding: 10px;\r\nwidth: 50px;\r\nheight: 50px;\r\nborder-radius: 15pc;\r\ntop: unset;\r\nbackground-color: white;\r\n}\r\n\r\n.carousel-control-prev{\r\nposition: absolute;\r\nbottom: 15px;\r\nright: 75px;\r\nborder: 5px solid;\r\npadding: 10px;\r\nwidth: 50px;\r\nheight: 50px;\r\nborder-radius: 15pc;\r\ntop: unset;\r\nleft: unset;\r\n}\r\n._beranda-section1{\r\nbackground-image:url(/uploads/image/section1-beranda.png);\r\nbackground-position: center;\r\n    background-size: cover;\r\n    height: 500px;\r\n}\r\n._beranda-section2{\r\nbackground-image: url(/uploads/image/section2-beranda.png);\r\n    background-size: 100%;\r\n    background-repeat: no-repeat;\r\n    background-position-y: 560px;\r\n}\r\n._beranda-section3 {\r\nbackground-image: url(/uploads/image/section3-beranda.png);\r\n    background-position: right;\r\n    background-size: 250px;\r\n    background-repeat: no-repeat;\r\n    background-position-x: 800px;\r\n}\r\n._beranda-section4{\r\nbackground-image: url(/uploads/image/section4-beranda.png);\r\n    background-position: left;\r\n    background-size: 250px;\r\n    background-repeat: no-repeat;\r\n    background-position-x: 200px;\r\n}\r\n._beranda-section-7{\r\nbackground-image: url(/uploads/image/section-galery-beranda.png);\r\nbackground-position: center;\r\n    background-size: cover;\r\n    background-repeat: no-repeat;\r\n}\r\n.carousel-indicators{\r\nvisibility : hidden;\r\n}\r\n._icon-social-badge-instagram{\r\ncolor: #AA3A9E;\r\n    border: 1px solid;\r\n    padding: 3px 0px 0px 5px;\r\n    border-radius: 15pc;\r\n    width: 25px;\r\n    height: 25px;\r\n    text-decoration: none;\r\n}\r\n._icon-social-badge-instagram:hover{\r\ncolor: #882d7e;\r\n    text-decoration: none;\r\n}\r\n._icon-social-badge-facebook{\r\n    border: 1px solid;\r\n    padding: 4px 5px 5px 7px;\r\n    border-radius: 15pc;\r\n    width: 25px;\r\n    height: 25px;\r\n    text-decoration: none;\r\n}\r\n._icon-social-badge-facebook:hover{\r\n    text-decoration: none;\r\n}\r\n._icon-social-badge-twitter{\r\ncolor: #00ACEE;\r\n    border: 1px solid;\r\n    border-radius: 15pc;\r\n    width: 25px;\r\n    height: 25px;\r\n    padding: 4px 5px 5px 5px;\r\n    text-decoration: none;\r\n}\r\n._icon-social-badge-twitter:hover{\r\ncolor : #0c8cbd;\r\n    text-decoration: none;\r\n}\r\n._icon-social-badge-youtube{\r\ncolor: #FF0000;\r\n    width: 25px;\r\n    height: 25px;\r\n    border: 1px solid;\r\n    border-radius: 15pc;\r\n    padding: 3px 5px 5px 5px;\r\n    text-decoration: none;\r\n}\r\n._icon-social-badge-youtube:hover{\r\ncolor:#b50606;\r\n    text-decoration: none;\r\n}\r\n._berita-image-2 img{\r\nwidth: 100%;\r\n    height: 185px;\r\n    background-size: cover;\r\n}\r\n\r\n._breadcrumb{\r\nmargin: 0;\r\n    padding: 0;\r\n    margin-top: -10px;\r\n    margin-bottom: 0px;\r\n    font-size: 10px;\r\n}\r\n\r\n._breadcrumb a{\r\ncolor: black;\r\n}', '2019-10-22 11:58:36', '2019-10-22 11:58:36');

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
(5, NULL, NULL, 12, 3, 3, NULL, NULL),
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
(27, NULL, NULL, 6, 1, 14, NULL, NULL),
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
(54, NULL, NULL, 6, 2, 24, NULL, NULL),
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
(67, NULL, NULL, 5, 1, 28, NULL, NULL),
(68, NULL, '_lokasi-image', 7, 2, 28, NULL, NULL),
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
(90, NULL, '', 2, 2, 21, NULL, NULL),
(91, NULL, '', 2, 3, 21, NULL, NULL),
(92, NULL, '', 2, 4, 21, NULL, NULL),
(93, NULL, '', 2, 5, 21, NULL, NULL),
(94, NULL, '', 2, 6, 21, NULL, NULL),
(95, NULL, NULL, 2, 7, 21, NULL, NULL),
(96, NULL, NULL, 12, 1, 21, NULL, NULL);

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
(1, 'bootstrap_carousel_type_1', '.bootstrap_carousel_type_1 .carousel .carousel-control-next{\r\nposition: absolute;\r\nbottom: 15px;\r\nright: unset;\r\nleft: 51%;\r\nborder: 5px solid #2679BF;\r\npadding: 10px;\r\nwidth: 50px;\r\nheight: 50px;\r\nborder-radius: 15pc;\r\ntop: unset;\r\nbackground-color: transparent;\r\n}\r\n.bootstrap_carousel_type_1 .carousel .carousel-control-next .carousel-control-next-icon\r\n{\r\n  background-image: url(\"data:image/svg+xml;charset=utf8,%3Csvg xmlns=\'http://www.w3.org/2000/svg\' fill=\'%232679BF\' viewBox=\'0 0 8 8\'%3E%3Cpath d=\'M2.75 0l-1.5 1.5 2.5 2.5-2.5 2.5 1.5 1.5 4-4-4-4z\'/%3E%3C/svg%3E\")!important;\r\n}\r\n.bootstrap_carousel_type_1 .carousel .carousel-control-prev .carousel-control-prev-icon\r\n{\r\n  background-image: url(\"data:image/svg+xml;charset=utf8,%3Csvg xmlns=\'http://www.w3.org/2000/svg\' fill=\'%232679BF\' viewBox=\'0 0 8 8\'%3E%3Cpath d=\'M5.25 0l-4 4 4 4 1.5-1.5-2.5-2.5 2.5-2.5-1.5-1.5z\'/%3E%3C/svg%3E\");!important;\r\n}\r\n.bootstrap_carousel_type_1 .carousel .carousel-control-prev{\r\nposition: absolute;\r\nbottom: 15px;\r\nright: 50%;\r\nborder: 5px solid #2679BF;\r\npadding: 10px;\r\nwidth: 50px;\r\nheight: 50px;\r\nborder-radius: 15pc;\r\ntop: unset;\r\nleft: unset;\r\n}\r\n.bootstrap_carousel_type_1 .carousel .carousel-caption{\r\nvisibility:hidden;\r\n}\r\n.bootstrap_carousel_type_1 .carousel .carousel-indicators{\r\nvisibility : hidden;\r\n}\r\n.bootstrap_carousel_type_1 .carousel .carousel-item{\r\npadding-left: 30%;\r\nheight: 250px;\r\n}\r\n.bootstrap_carousel_type_1 .carousel .carousel-item img{\r\n    right: 0;\r\n    width: 50% !important;\r\n}', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2, 'bootstrap_carousel_type_2', '.bootstrap_carousel_type_2 .carousel .carousel-indicators {\r\n    position: absolute;\r\n    right: 25;\r\n    bottom: 35%;\r\n    top: 35%;\r\n    z-index: 15;\r\n    justify-content: center;\r\n    list-style: none;\r\n    float: unset;\r\n    left: unset;\r\n    display: unset;\r\n    padding: unset;\r\n    margin: unset;\r\n}\r\n\r\n.bootstrap_carousel_type_2 .carousel .carousel-indicators li {\r\n    box-sizing: content-box;\r\n    width: 15px;\r\n    height: 15px;\r\n    cursor: pointer;\r\n    background-color: #fff;\r\n    background-clip: padding-box;\r\n    opacity: .5;\r\n    transition: opacity .6s ease;\r\n    margin: 15px;\r\n    border-radius: 15px;\r\n    flex: unset;\r\n    text-indent: unset;\r\n    border: unset;\r\n}\r\n.bootstrap_carousel_type_2 .carousel .carousel-indicators {\r\n    visibility: visible;\r\n}\r\n.bootstrap_carousel_type_2 .carousel .carousel-control-next {\r\n    background-color: transparent;\r\n}\r\n.bootstrap_carousel_type_2 .carousel .carousel-indicators .active{\r\nopacity:1!important;\r\n}', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(3, 'bootstrap_carousel_type_3', '.bootstrap_carousel_type_3 .carousel .carousel-indicators{\r\nvisibility:visible;\r\n}\r\n.bootstrap_carousel_type_3 .carousel .carousel-indicators li{\r\nwidth: 15px;\r\n    height: 15px;\r\n    border: unset;\r\n    border-radius: 15pc;\r\n}\r\n.bootstrap_carousel_type_3 .carousel .carousel-control-next{\r\nright: unset;\r\n    border: unset;\r\n    padding: unset;\r\n    height: unset;\r\n    border-radius: unset;\r\n    background-color: transparent;\r\nposition: absolute;\r\n    top: 0;\r\n    bottom: 0;\r\n    display: -webkit-box;\r\n    display: -ms-flexbox;\r\n    display: flex;\r\n    -webkit-box-align: center;\r\n    -ms-flex-align: center;\r\n    align-items: center;\r\n    -webkit-box-pack: center;\r\n    -ms-flex-pack: center;\r\n    justify-content: center;\r\n    width: 15%;\r\n    color: #fff;\r\n    text-align: center;\r\n    opacity: .5;\r\nright:0;\r\n}\r\n.bootstrap_carousel_type_3 .carousel .carousel-control-prev{\r\nright: unset;\r\n    border: unset;\r\n    padding: unset;\r\n    height: unset;\r\n    border-radius: unset;\r\n    background-color: transparent;\r\nposition: absolute;\r\n    top: 0;\r\n    bottom: 0;\r\n    display: -webkit-box;\r\n    display: -ms-flexbox;\r\n    display: flex;\r\n    -webkit-box-align: center;\r\n    -ms-flex-align: center;\r\n    align-items: center;\r\n    -webkit-box-pack: center;\r\n    -ms-flex-pack: center;\r\n    justify-content: center;\r\n    width: 15%;\r\n    color: #fff;\r\n    text-align: center;\r\n    opacity: .5;\r\n}', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(4, 'slider-1', '.slider-1 .slider-item-container {\r\ndisplay: table;\r\nwidth:100%;\r\n}\r\n.slider-1 .slider-item-container .slider-item{\r\n    display: table-cell;\r\n}\r\n.slider-1 .slider-item-container .slider-item:nth-child(1) {\r\n    top: 150px;\r\n    text-align: center;\r\n    height: 150px;\r\n    position: relative;\r\n    width: 320px;\r\n}\r\n.slider-1 .slider-item-container .slider-item:nth-child(2) {\r\n    top:100px;\r\n    text-align: center;\r\n    height: 150px;\r\n    position: relative;\r\n    width: 320px;\r\n}\r\n.slider-1 .slider-item-container .slider-item:nth-child(3) {\r\n    top:50px;\r\n    text-align: center;\r\n    height: 150px;\r\n    position: relative;\r\n    width: 320px;\r\n}\r\n.slider-1 .slider-item-container .slider-item:nth-child(4) {\r\n    top:25px;\r\n    text-align: center;\r\n    height: 150px;\r\n    position: relative;\r\n    width: 320px;\r\n}\r\n.slider-1 .slider-item-container .slider-item:nth-child(5) {\r\n    top:50px;\r\n    text-align: center;\r\n    height: 150px;\r\n    position: relative;\r\n    width: 320px;\r\n}\r\n.slider-1 .slider-item-container .slider-item:nth-child(6) {\r\n    top:100px;\r\n    text-align: center;\r\n    height: 150px;\r\n    position: relative;\r\n    width: 320px;\r\n}\r\n.slider-1 .slider-item-container .slider-item:nth-child(7) {\r\n    top:150px;\r\n    text-align: center;\r\n    height: 150px;\r\n    position: relative;\r\n    width: 320px;\r\n}\r\n.slider-1 .slider-item-container .slider-item img {\r\n    width: 80px;\r\n    height: 80px;\r\n    object-fit: cover;\r\n    object-position: center;\r\n    border-radius: 200px;\r\n    margin: 0px auto;\r\n    display: block;\r\n    cursor: pointer;\r\n    position: relative;\r\n    border: 1px solid black;\r\n    border-radius: 15pc;\r\n    padding: 20px;\r\n}\r\n.slider-1 .slider-item-container .slider-item .slider-heading{\r\n    position: relative;\r\n    top: 40%;\r\n    font-family: \'Permanent Marker\', cursive;\r\n    text-align: center;\r\n    color: white;\r\n    display : none;\r\n}\r\n.slider-1 .slider-item-container .slider-item .slider-description{\r\n    position: relative;\r\n    padding-left: 35%;\r\n    color: white;\r\n    top: 35%;\r\n    display : none;\r\n}\r\n.slider-1 .preview-img {\r\n    width: 100%;\r\n    height: 400px;\r\n    margin-bottom:40px;\r\n\r\n}\r\n.slider-1 .preview-img img{\r\n    width: 30%;\r\n    object-fit: cover;\r\n    margin-left: 35%;\r\n    margin-right: 40%;\r\n    margin-top: 20px;\r\n}\r\n\r\n.slider-1 .preview-img h5{\r\n    margin-top: -100px;\r\n    margin-left: 30px;\r\n    font-family: \'Permanent Marker\', cursive;\r\n    color:white;\r\n}\r\n\r\n.slider-1 .preview-img p{\r\n    margin-left: 30px;\r\n    color:white;\r\n}', '<script type=\"text/javascript\">\r\nvar elitem = $(\'.slider-1 .slider-item-container .slider-item\');\r\nvar elActive = $(\'.slider-1 .slider-item-container .active\');\r\nvar img = elActive.find(\'img\').attr(\'src\');\r\nvar heading = elActive.find(\'.slider-heading\').text();\r\nvar description = elActive.find(\'.slider-description\').text();\r\nconsole.log(elitem);\r\nconsole.log(heading);\r\nconsole.log(description);\r\nvar previewImg = \'<div class=\"preview-img\"><img src=\"\' + img + \'\"><h5 class=\"slider-heading\">\'+heading+\'</h5><p>\'+description+\'</p></div>\';\r\n$(previewImg).insertAfter($(\'.slider-1 .slider-item-container\'));\r\nelitem.click(function(){\r\n$(\'.preview-img img\').attr(\'src\', $(this).children(\'img\').attr(\'src\'));\r\nvar index =  $(this).children(\'h5\').text();\r\nvar indux =  $(this).children(\'p\').text();\r\nconsole.log(indux);\r\n$(\'.preview-img h5\').text(index);\r\n$(\'.preview-img p\').text(indux);\r\n});\r\n</script>', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(5, 'slider-2', '.slider-2 .slider-item-container {\r\ndisplay: table;\r\nwidth:100%;\r\n}\r\n.slider-2 .slider-item-container .slider-item {\r\n    display: table-cell;\r\n    height: 200px;\r\n    position: relative;\r\n    cursor: pointer;\r\n    width: 320px;\r\n}\r\n.slider-2 .slider-item-container .slider-item img {\r\n    width: 100%;\r\n    height: 200px;\r\n    position: absolute;\r\n    object-fit: cover;\r\n    object-position: center;\r\n}\r\n.slider-2 .slider-item-container .slider-item .slider-heading{\r\n    position: relative;\r\n    top: 40%;\r\n    font-family: \'Permanent Marker\', cursive;\r\n    text-align: center;\r\n    color: white;\r\n}\r\n.slider-2 .slider-item-container .slider-item .slider-description{\r\n    position: relative;\r\n    padding-left: 35%;\r\n    color: white;\r\n    top: 35%;\r\n}\r\n.slider-2 .preview-img {\r\n    width: 100%;\r\n    margin-bottom:40px;\r\n}\r\n.slider-2 .preview-img img{\r\n    width: 100%;\r\n    height: 500px;\r\n    object-fit: cover;\r\n    object-position: center;\r\n}\r\n\r\n.slider-2 .preview-img h5{\r\n    margin-top: -100px;\r\n    margin-left: 30px;\r\n    font-family: \'Permanent Marker\', cursive;\r\n    color:white;\r\n}\r\n\r\n.slider-2 .preview-img p{\r\n    margin-left: 30px;\r\n    color:white;\r\n}', '<script type=\"text/javascript\">\r\nvar elitem = $(\'.slider-2 .slider-item-container .slider-item\');\r\nvar elActive = $(\'.slider-2 .slider-item-container .active\');\r\nvar img = elActive.find(\'img\').attr(\'src\');\r\nvar heading = elActive.find(\'.slider-heading\').text();\r\nvar description = elActive.find(\'.slider-description\').text();\r\nconsole.log(elitem);\r\nconsole.log(heading);\r\nconsole.log(description);\r\nvar previewImg = \'<div class=\"preview-img\"><img src=\"\' + img + \'\"><h5 class=\"slider-heading\">\'+heading+\'</h5><p>\'+description+\'</p></div>\';\r\n$(previewImg).insertBefore($(\'.slider-2 .slider-item-container\'));\r\nelitem.click(function(){\r\n$(\'.preview-img img\').attr(\'src\', $(this).children(\'img\').attr(\'src\'));\r\nvar index =  $(this).children(\'h5\').text();\r\nvar indux =  $(this).children(\'p\').text();\r\nconsole.log(indux);\r\n$(\'.preview-img h5\').text(index);\r\n$(\'.preview-img p\').text(indux);\r\n});\r\n</script>', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(6, 'slider-3', '.slider-3 .slider-item-container {\r\ndisplay: table;    \r\nwidth: 100%;\r\n    margin: 0px auto;\r\n}\r\n\r\n.slider-item{\r\ndisplay: table-cell;\r\n}\r\n\r\n.slider-3 .slider-item-container .slider-item img{\r\nwidth: 126px;\r\n    height: 126px;\r\n    border-radius: 15pc;\r\ncursor:pointer;\r\ndisplay:block;\r\nmargin:0px auto;\r\nborder: 1px solid;\r\n}\r\n\r\n.slider-3 .slider-item-container .slider-item img:first-child, .slider-3 .slider-item-container .slider-item img:last-child{\r\nz-index:8;\r\nleft:40%;\r\nright:40%;\r\n}\r\n\r\n.slider-3 .slider-item-container .slider-item img:nth-child(2), .slider-3 .slider-item-container .slider-item img:nth-child(4){\r\nz-index:9;\r\n}\r\n\r\n.slider-3 .slider-item-container .active img{\r\nwidth: 200px;\r\n    height: 200px;\r\ndisplay:block;\r\nmargin:0px auto;\r\nposition: absolute;\r\n    top: 0;\r\nz-index:10;\r\n}\r\n\r\n.slider-3 .slider-item-container .active h5 {\r\n    visibility: visible!important;\r\ntext-align: center;\r\n}\r\n\r\n.slider-3 .slider-item-container .slider-item h5{\r\nvisibility:hidden;\r\n}\r\n\r\n.slider-3 .slider-item-container .slider-item p{\r\nvisibility:hidden!important;\r\n}', '<script type=\"text/javascript\">\r\nvar switchActive = $(\'.slider-3 .slider-item-container .slider-item:nth-child(3)\');\r\nvar itemActive = $(\'.slider-3 .slider-item-container .active\');\r\nitemActive.removeClass(\'active\');\r\nswitchActive.addClass(\'active\');\r\nvar itemClick = $(\'.slider-3 .slider-item-container .slider-item\');\r\nitemClick.click(function(){\r\nvar Active = $(\'.slider-3 .slider-item-container .active\');\r\nvar src = $(this).find(\'img\');\r\nvar image = src.attr(\'src\');\r\nvar srcActive = Active.find(\'img\');\r\nvar imageActive = srcActive.attr(\'src\');\r\nconsole.log(image);\r\nconsole.log(imageActive);\r\nsrc.attr(\'src\', imageActive);\r\nsrcActive.attr(\'src\', image);\r\n});\r\n</script>', '0000-00-00 00:00:00', '0000-00-00 00:00:00');

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
(1, 'beranda', 'beranda', '<script\r\n  src=\"https://code.jquery.com/jquery-3.2.1.min.js\"\r\n  integrity=\"sha256-hwg4gsxgFZhOsEEamdOYGBf13FyQuiTwlAQgxVSNgt4=\"\r\n  crossorigin=\"anonymous\"></script>\r\n<script src=\"https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js\" integrity=\"sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q\" crossorigin=\"anonymous\"></script>\r\n<script src=\"https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js\" integrity=\"sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl\" crossorigin=\"anonymous\"></script>\r\n<link rel=\"stylesheet\" href=\"https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css\" integrity=\"sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T\" crossorigin=\"anonymous\">\r\n<link href=\"https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css\" rel=\"stylesheet\" integrity=\"sha384-wvfXpqpZZVQGK6TAh5PVlGOfQNHSoD2xbE+QkPxCAFlNEevoEH3Sl0sibVcOQVnN\" crossorigin=\"anonymous\">\r\n<link href=\"https://fonts.googleapis.com/css?family=Permanent+Marker&display=swap\" rel=\"stylesheet\">', NULL, 1, 1, 1, '2019-10-16 09:03:35', '2019-10-16 09:03:34'),
(2, 'tentang kami', 'tentang-kami', '<script\r\n  src=\"https://code.jquery.com/jquery-3.2.1.min.js\"\r\n  integrity=\"sha256-hwg4gsxgFZhOsEEamdOYGBf13FyQuiTwlAQgxVSNgt4=\"\r\n  crossorigin=\"anonymous\"></script>\r\n<script src=\"https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js\" integrity=\"sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q\" crossorigin=\"anonymous\"></script>\r\n<script src=\"https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js\" integrity=\"sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl\" crossorigin=\"anonymous\"></script>\r\n<link rel=\"stylesheet\" href=\"https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css\" integrity=\"sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T\" crossorigin=\"anonymous\">\r\n<link href=\"https://fonts.googleapis.com/css?family=Permanent+Marker&display=swap\" rel=\"stylesheet\">', NULL, 2, 1, 1, '2019-10-16 09:03:37', '2019-10-16 09:03:31'),
(3, 'konservasi kami', 'konservasi-kami', '<script\r\n  src=\"https://code.jquery.com/jquery-3.2.1.min.js\"\r\n  integrity=\"sha256-hwg4gsxgFZhOsEEamdOYGBf13FyQuiTwlAQgxVSNgt4=\"\r\n  crossorigin=\"anonymous\"></script>\r\n<script src=\"https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js\" integrity=\"sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q\" crossorigin=\"anonymous\"></script>\r\n<script src=\"https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js\" integrity=\"sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl\" crossorigin=\"anonymous\"></script>\r\n<link rel=\"stylesheet\" href=\"https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css\" integrity=\"sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T\" crossorigin=\"anonymous\">\r\n<link href=\"https://fonts.googleapis.com/css?family=Permanent+Marker&display=swap\" rel=\"stylesheet\">', NULL, 3, 1, 1, '2019-10-16 09:03:37', '2019-10-16 09:03:50'),
(4, 'lokasi', 'lokasi', '<script\r\n  src=\"https://code.jquery.com/jquery-3.2.1.min.js\"\r\n  integrity=\"sha256-hwg4gsxgFZhOsEEamdOYGBf13FyQuiTwlAQgxVSNgt4=\"\r\n  crossorigin=\"anonymous\"></script>\r\n<script src=\"https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js\" integrity=\"sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q\" crossorigin=\"anonymous\"></script>\r\n<script src=\"https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js\" integrity=\"sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl\" crossorigin=\"anonymous\"></script>\r\n<link rel=\"stylesheet\" href=\"https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css\" integrity=\"sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T\" crossorigin=\"anonymous\">\r\n<link href=\"https://fonts.googleapis.com/css?family=Permanent+Marker&display=swap\" rel=\"stylesheet\">', NULL, 4, 1, 1, '2019-10-16 09:03:38', '2019-10-16 09:03:48'),
(5, 'kontak kami', 'kontak-kami', '<script\r\n  src=\"https://code.jquery.com/jquery-3.2.1.min.js\"\r\n  integrity=\"sha256-hwg4gsxgFZhOsEEamdOYGBf13FyQuiTwlAQgxVSNgt4=\"\r\n  crossorigin=\"anonymous\"></script>\r\n<script src=\"https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js\" integrity=\"sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q\" crossorigin=\"anonymous\"></script>\r\n<script src=\"https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js\" integrity=\"sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl\" crossorigin=\"anonymous\"></script>\r\n<link rel=\"stylesheet\" href=\"https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css\" integrity=\"sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T\" crossorigin=\"anonymous\">', NULL, 5, 1, 1, '2019-10-16 09:03:39', '2019-10-16 09:03:48'),
(6, 'galeri', 'galeri', '<script\r\n  src=\"https://code.jquery.com/jquery-3.2.1.min.js\"\r\n  integrity=\"sha256-hwg4gsxgFZhOsEEamdOYGBf13FyQuiTwlAQgxVSNgt4=\"\r\n  crossorigin=\"anonymous\"></script>\r\n<script src=\"https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js\" integrity=\"sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q\" crossorigin=\"anonymous\"></script>\r\n<script src=\"https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js\" integrity=\"sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl\" crossorigin=\"anonymous\"></script>\r\n<link rel=\"stylesheet\" href=\"https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css\" integrity=\"sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T\" crossorigin=\"anonymous\">', NULL, 6, 1, 1, '2019-10-16 09:03:40', '2019-10-16 09:03:47'),
(7, 'berita', 'berita', '<script\r\n  src=\"https://code.jquery.com/jquery-3.2.1.min.js\"\r\n  integrity=\"sha256-hwg4gsxgFZhOsEEamdOYGBf13FyQuiTwlAQgxVSNgt4=\"\r\n  crossorigin=\"anonymous\"></script>\r\n<script src=\"https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js\" integrity=\"sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q\" crossorigin=\"anonymous\"></script>\r\n<script src=\"https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js\" integrity=\"sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl\" crossorigin=\"anonymous\"></script>\r\n<link rel=\"stylesheet\" href=\"https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css\" integrity=\"sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T\" crossorigin=\"anonymous\">', NULL, 7, 1, 1, '2019-10-16 09:03:40', '2019-10-16 09:03:46'),
(8, 'faq', 'faq', '<script\r\n  src=\"https://code.jquery.com/jquery-3.2.1.min.js\"\r\n  integrity=\"sha256-hwg4gsxgFZhOsEEamdOYGBf13FyQuiTwlAQgxVSNgt4=\"\r\n  crossorigin=\"anonymous\"></script>\r\n<script src=\"https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js\" integrity=\"sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q\" crossorigin=\"anonymous\"></script>\r\n<script src=\"https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js\" integrity=\"sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl\" crossorigin=\"anonymous\"></script>\r\n<link rel=\"stylesheet\" href=\"https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css\" integrity=\"sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T\" crossorigin=\"anonymous\">', NULL, 8, 1, 1, '2019-10-16 09:03:41', '2019-10-16 09:03:46'),
(9, 'detail', 'detail', '<script\r\n  src=\"https://code.jquery.com/jquery-3.2.1.min.js\"\r\n  integrity=\"sha256-hwg4gsxgFZhOsEEamdOYGBf13FyQuiTwlAQgxVSNgt4=\"\r\n  crossorigin=\"anonymous\"></script>\r\n<script src=\"https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js\" integrity=\"sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q\" crossorigin=\"anonymous\"></script>\r\n<script src=\"https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js\" integrity=\"sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl\" crossorigin=\"anonymous\"></script>\r\n<link rel=\"stylesheet\" href=\"https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css\" integrity=\"sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T\" crossorigin=\"anonymous\">\r\n<link href=\"https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css\" rel=\"stylesheet\" integrity=\"sha384-wvfXpqpZZVQGK6TAh5PVlGOfQNHSoD2xbE+QkPxCAFlNEevoEH3Sl0sibVcOQVnN\" crossorigin=\"anonymous\">', 3, 9, 1, 1, '2019-10-16 09:03:41', '2019-10-16 09:03:52'),
(10, 'detail', 'detail', '<script\r\n  src=\"https://code.jquery.com/jquery-3.2.1.min.js\"\r\n  integrity=\"sha256-hwg4gsxgFZhOsEEamdOYGBf13FyQuiTwlAQgxVSNgt4=\"\r\n  crossorigin=\"anonymous\"></script>\r\n<script src=\"https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js\" integrity=\"sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q\" crossorigin=\"anonymous\"></script>\r\n<script src=\"https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js\" integrity=\"sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl\" crossorigin=\"anonymous\"></script>\r\n<link rel=\"stylesheet\" href=\"https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css\" integrity=\"sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T\" crossorigin=\"anonymous\">', 4, 10, 1, 1, '2019-10-16 09:03:42', '2019-10-16 09:03:45'),
(11, 'detail', 'detail', '<script\r\n  src=\"https://code.jquery.com/jquery-3.2.1.min.js\"\r\n  integrity=\"sha256-hwg4gsxgFZhOsEEamdOYGBf13FyQuiTwlAQgxVSNgt4=\"\r\n  crossorigin=\"anonymous\"></script>\r\n<script src=\"https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js\" integrity=\"sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q\" crossorigin=\"anonymous\"></script>\r\n<script src=\"https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js\" integrity=\"sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl\" crossorigin=\"anonymous\"></script>\r\n<link rel=\"stylesheet\" href=\"https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css\" integrity=\"sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T\" crossorigin=\"anonymous\">', 5, 11, 1, 1, '2019-10-16 09:03:43', '2019-10-16 09:03:45'),
(12, 'read', 'read', '<script\r\n  src=\"https://code.jquery.com/jquery-3.2.1.min.js\"\r\n  integrity=\"sha256-hwg4gsxgFZhOsEEamdOYGBf13FyQuiTwlAQgxVSNgt4=\"\r\n  crossorigin=\"anonymous\"></script>\r\n<script src=\"https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js\" integrity=\"sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q\" crossorigin=\"anonymous\"></script>\r\n<script src=\"https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js\" integrity=\"sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl\" crossorigin=\"anonymous\"></script>\r\n<link rel=\"stylesheet\" href=\"https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css\" integrity=\"sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T\" crossorigin=\"anonymous\">', 7, 12, 1, 1, '2019-10-16 09:03:43', '2019-10-16 09:03:44'),
(13, 'detail', 'detail', '<script\r\n  src=\"https://code.jquery.com/jquery-3.2.1.min.js\"\r\n  integrity=\"sha256-hwg4gsxgFZhOsEEamdOYGBf13FyQuiTwlAQgxVSNgt4=\"\r\n  crossorigin=\"anonymous\"></script>\r\n<script src=\"https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js\" integrity=\"sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q\" crossorigin=\"anonymous\"></script>\r\n<script src=\"https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js\" integrity=\"sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl\" crossorigin=\"anonymous\"></script>\r\n<link rel=\"stylesheet\" href=\"https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css\" integrity=\"sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T\" crossorigin=\"anonymous\">', 6, 13, 1, 1, NULL, NULL);

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
(9, 'section latar belakang', NULL, '', 1, 2, NULL, NULL),
(10, 'section tujuan', NULL, NULL, 2, 2, NULL, NULL),
(11, 'section media', NULL, NULL, 3, 2, NULL, NULL),
(12, 'section form', NULL, '', 1, 8, NULL, NULL),
(13, 'section faq detail', NULL, NULL, 2, 8, NULL, NULL),
(14, 'section news', NULL, '', 1, 7, NULL, NULL),
(15, 'section images', NULL, '', 1, 6, NULL, NULL),
(16, 'section videos', NULL, NULL, 2, 6, NULL, NULL),
(17, 'section konservasi bali', NULL, '', 1, 3, NULL, NULL),
(18, 'section konservasi padang', NULL, NULL, 2, 3, NULL, NULL),
(19, 'section konservasi pangandaran', NULL, NULL, 3, 3, NULL, NULL),
(20, 'section konservasi kepulauan seribu', NULL, NULL, 4, 3, NULL, NULL),
(21, 'section location ilustrator', NULL, '', 1, 9, NULL, NULL),
(22, 'section sosialisasi', NULL, NULL, 2, 9, NULL, NULL),
(23, 'section penyelamatan penyu', NULL, NULL, 3, 9, NULL, NULL),
(24, 'section pembesaran tukik', NULL, NULL, 4, 9, NULL, NULL),
(25, 'section pelepasan tukik', NULL, NULL, 5, 9, NULL, NULL),
(26, 'pembersihan pantai', NULL, NULL, 6, 9, NULL, NULL),
(27, 'section kegiatan lain-lain', NULL, NULL, 7, 9, NULL, NULL),
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
(38, 'section social media badge', NULL, '_social-media-badge', 0, 1, NULL, NULL);

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
(11, 'breadcrumb', NULL, NULL);

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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=167;

--
-- AUTO_INCREMENT for table `css`
--
ALTER TABLE `css`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `grids`
--
ALTER TABLE `grids`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=97;

--
-- AUTO_INCREMENT for table `groups`
--
ALTER TABLE `groups`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `library_components`
--
ALTER TABLE `library_components`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `type_component`
--
ALTER TABLE `type_component`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
