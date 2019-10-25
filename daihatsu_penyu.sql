-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 25, 2019 at 12:49 PM
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
(2, 'carouselHome', NULL, '{\"0\":{\"src\":\"https:\\/\\/wallpapermemory.com\\/uploads\\/200\\/mount-bromo-wallpaper-hd-1920x1200-320096.jpg\",\"href\":\"https:\\/\\/wallpapermemory.com\\/desktop-backgrounds\\/nature\\/mountain\\/mount-bromo\"},\"1\":{\"src\":\"https:\\/\\/wallpapermemory.com\\/uploads\\/200\\/mount-bromo-wallpaper-hd-1920x1200-320096.jpg\",\"href\":\"https:\\/\\/wallpapermemory.com\\/desktop-backgrounds\\/nature\\/mountain\\/mount-bromo\"},\"2\":{\"src\":\"https:\\/\\/wallpapermemory.com\\/uploads\\/200\\/mount-bromo-wallpaper-hd-1920x1200-320096.jpg\",\"href\":\"https:\\/\\/wallpapermemory.com\\/desktop-backgrounds\\/nature\\/mountain\\/mount-bromo\"}}', 'bootstrap_slider', 1, 1, 1, NULL, NULL),
(3, NULL, NULL, '{\"type\":\"h2\",\"value\":\"Tentang Penyu\"}', NULL, 2, 1, 2, NULL, NULL),
(4, NULL, NULL, '{\"type\":\"p\",\"value\":\"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus bibendum et dui semper semper. Nulla ut arcu tempor, dictum metus eget, pharetra eros. Suspendisse potenti. Mauris euismod eros vel quam venenatis, nec luctus augue iaculis. Donec cursus accumsan lectus. Cras vitae sapien at metus vulputate volutpat dictum sed leo. Sed laoreet urna erat, eu pretium enim mollis sit amet.\"}', NULL, 3, 2, 2, NULL, NULL),
(5, NULL, '_text-center', '{\"type\":\"h2\",\"value\":\"Klasifikasi Penyu\"}', NULL, 2, 1, 3, NULL, NULL),
(6, NULL, '_text-center', '{\"type\":\"p\",\"value\":\"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus bibendum et dui semper semper. Nulla ut arcu tempor, dictum metus eget, pharetra eros. Suspendisse potenti. Mauris euismod eros vel quam venenatis, nec luctus augue iaculis. Donec cursus accumsan lectus. Cras vitae sapien at metus vulputate volutpat dictum sed leo. Sed laoreet urna erat, eu pretium enim mollis sit amet.\"}', NULL, 3, 2, 3, NULL, NULL),
(7, NULL, NULL, '{\"type\":\"h2\",\"value\":\"Penyu Lekang\"}', NULL, 2, 1, 5, NULL, NULL),
(8, NULL, NULL, '{\"type\":\"p\",\"value\":\"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus bibendum et dui semper semper. Nulla ut arcu tempor, dictum metus eget, pharetra eros. Suspendisse potenti. Mauris euismod eros vel quam venenatis, nec luctus augue iaculis. Donec cursus accumsan lectus. Cras vitae sapien at metus vulputate volutpat dictum sed leo. Sed laoreet urna erat, eu pretium enim mollis sit amet.\"}', NULL, 3, 2, 5, NULL, NULL),
(9, NULL, NULL, '{\"type\":\"h2\",\"value\":\"Cara Hidup Penyu\"}', NULL, 2, 1, 6, NULL, NULL),
(10, NULL, NULL, '{\"type\":\"p\",\"value\":\"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus bibendum et dui semper semper. Nulla ut arcu tempor, dictum metus eget, pharetra eros. Suspendisse potenti. Mauris euismod eros vel quam venenatis, nec luctus augue iaculis. Donec cursus accumsan lectus. Cras vitae sapien at metus vulputate volutpat dictum sed leo. Sed laoreet urna erat, eu pretium enim mollis sit amet.\"}', NULL, 3, 2, 6, NULL, NULL),
(11, NULL, NULL, '{\"type\":\"h2\",\"value\":\"Masa Bertelur Penyu\"}', NULL, 2, 1, 7, NULL, NULL),
(12, NULL, NULL, '{\"type\":\"p\",\"value\":\"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus bibendum et dui semper semper. Nulla ut arcu tempor, dictum metus eget, pharetra eros. Suspendisse potenti. Mauris euismod eros vel quam venenatis, nec luctus augue iaculis. Donec cursus accumsan lectus. Cras vitae sapien at metus vulputate volutpat dictum sed leo. Sed laoreet urna erat, eu pretium enim mollis sit amet.\"}', NULL, 3, 2, 7, NULL, NULL),
(13, NULL, '_text-center', '{\"type\":\"h2\",\"value\":\"Fakta Tentang Penyu\"}', NULL, 2, 1, 8, NULL, NULL),
(14, NULL, '_text-center', '{\"type\":\"p\",\"value\":\"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus bibendum et dui semper semper. Nulla ut arcu tempor, dictum metus eget, pharetra eros. Suspendisse potenti. Mauris euismod eros vel quam venenatis, nec luctus augue iaculis. Donec cursus accumsan lectus. Cras vitae sapien at metus vulputate volutpat dictum sed leo. Sed laoreet urna erat, eu pretium enim mollis sit amet.\"}', NULL, 3, 2, 8, NULL, NULL),
(15, NULL, NULL, '{\"src\":\"https:\\/\\/wallpapermemory.com\\/uploads\\/200\\/mount-bromo-wallpaper-hd-1920x1200-320096.jpg\",\"href\":\"https:\\/\\/wallpapermemory.com\\/uploads\\/200\\/mount-bromo-wallpaper-hd-1920x1200-320096.jpg\"}', NULL, 4, 1, 9, NULL, NULL),
(16, NULL, NULL, '{\"type\":\"h2\",\"value\":\"Gallery Foto & Video\"}', NULL, 2, 1, 10, NULL, NULL),
(17, NULL, NULL, '{\"src\":\"https:\\/\\/wallpapermemory.com\\/uploads\\/200\\/mount-bromo-wallpaper-hd-1920x1200-320096.jpg\",\"href\":\"https:\\/\\/wallpapermemory.com\\/uploads\\/200\\/mount-bromo-wallpaper-hd-1920x1200-320096.jpg\"}', NULL, 4, 1, 11, NULL, NULL),
(18, NULL, NULL, '{\"src\":\"https:\\/\\/wallpapermemory.com\\/uploads\\/200\\/mount-bromo-wallpaper-hd-1920x1200-320096.jpg\",\"href\":\"https:\\/\\/wallpapermemory.com\\/uploads\\/200\\/mount-bromo-wallpaper-hd-1920x1200-320096.jpg\"}', NULL, 4, 1, 12, NULL, NULL),
(19, NULL, NULL, '{\"type\":\"h2\",\"value\":\"Wilayah Konservasi\"}', NULL, 2, 1, 13, NULL, NULL),
(20, NULL, NULL, '{\"type\":\"p\",\"value\":\"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus bibendum et dui semper semper. Nulla ut arcu tempor, dictum metus eget, pharetra eros. Suspendisse potenti. Mauris euismod eros vel quam venenatis, nec luctus augue iaculis. Donec cursus accumsan lectus. Cras vitae sapien at metus vulputate volutpat dictum sed leo. Sed laoreet urna erat, eu pretium enim mollis sit amet.\"}', NULL, 3, 2, 13, NULL, NULL),
(21, NULL, '_text-center', '{\"type\":\"h1\",\"value\":\"LATAR BELAKANG TERBENTUKNYA PENYU UNTUK INDONESIA\"}', NULL, 2, 1, 15, NULL, NULL),
(22, NULL, NULL, '{\"type\":\"h2\",\"value\":\"Tentang Penyu Untuk Indonesia\"}', NULL, 2, 2, 15, NULL, NULL),
(23, NULL, NULL, '{\"type\":\"p\",\"value\":\"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus bibendum et dui semper semper. Nulla ut arcu tempor, dictum metus eget, pharetra eros. Suspendisse potenti. Mauris euismod eros vel quam venenatis, nec luctus augue iaculis. Donec cursus accumsan lectus. Cras vitae sapien at metus vulputate volutpat dictum sed leo. Sed laoreet urna erat, eu pretium enim mollis sit amet.\"}', NULL, 3, 3, 15, NULL, NULL),
(24, NULL, NULL, '{\"type\":\"h2\",\"value\":\"Ranah Kegiatan\"}', NULL, 2, 1, 16, NULL, NULL),
(25, NULL, NULL, '{\"type\":\"p\",\"value\":\"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus bibendum et dui semper semper. Nulla ut arcu tempor, dictum metus eget, pharetra eros. Suspendisse potenti. Mauris euismod eros vel quam venenatis, nec luctus augue iaculis. Donec cursus accumsan lectus. Cras vitae sapien at metus vulputate volutpat dictum sed leo. Sed laoreet urna erat, eu pretium enim mollis sit amet.\"}', NULL, 3, 2, 16, NULL, NULL),
(26, NULL, NULL, '{\"src\":\"https:\\/\\/wallpapermemory.com\\/uploads\\/200\\/mount-bromo-wallpaper-hd-1920x1200-320096.jpg\",\"href\":\"https:\\/\\/wallpapermemory.com\\/uploads\\/200\\/mount-bromo-wallpaper-hd-1920x1200-320096.jpg\"}', NULL, 4, 1, 17, NULL, NULL),
(27, NULL, '_text-center', '{\"type\":\"h2\",\"value\":\"TUJUAN DIBENTUKNYA PENYU UNTUK INDONESIA\"}', NULL, 2, 1, 18, NULL, NULL),
(28, NULL, NULL, '{\"type\":\"p\",\"value\":\"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus bibendum et dui semper semper. Nulla ut arcu tempor, dictum metus eget, pharetra eros. Suspendisse potenti. Mauris euismod eros vel quam venenatis, nec luctus augue iaculis. Donec cursus accumsan lectus. Cras vitae sapien at metus vulputate volutpat dictum sed leo. Sed laoreet urna erat, eu pretium enim mollis sit amet.\"}', NULL, 3, 2, 18, NULL, NULL),
(29, NULL, NULL, '{\"type\":\"h2\",\"value\":\"Pencapaian Kami\"}', NULL, 2, 1, 19, NULL, NULL),
(30, NULL, NULL, '{\"type\":\"p\",\"value\":\"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus bibendum et dui semper semper. Nulla ut arcu tempor, dictum metus eget, pharetra eros. Suspendisse potenti. Mauris euismod eros vel quam venenatis, nec luctus augue iaculis. Donec cursus accumsan lectus. Cras vitae sapien at metus vulputate volutpat dictum sed leo. Sed laoreet urna erat, eu pretium enim mollis sit amet.\"}', NULL, 3, 2, 19, NULL, NULL),
(31, NULL, '_text-center', '{\"type\":\"h2\",\"value\":\"Update Berita\"}', NULL, 2, 1, 20, NULL, NULL),
(32, 'carouselHome', NULL, '{\"0\":{\"src\":\"https:\\/\\/wallpapermemory.com\\/uploads\\/200\\/mount-bromo-wallpaper-hd-1920x1200-320096.jpg\",\"href\":\"https:\\/\\/wallpapermemory.com\\/desktop-backgrounds\\/nature\\/mountain\\/mount-bromo\"},\"1\":{\"src\":\"https:\\/\\/wallpapermemory.com\\/uploads\\/200\\/mount-bromo-wallpaper-hd-1920x1200-320096.jpg\",\"href\":\"https:\\/\\/wallpapermemory.com\\/desktop-backgrounds\\/nature\\/mountain\\/mount-bromo\"},\"2\":{\"src\":\"https:\\/\\/wallpapermemory.com\\/uploads\\/200\\/mount-bromo-wallpaper-hd-1920x1200-320096.jpg\",\"href\":\"https:\\/\\/wallpapermemory.com\\/desktop-backgrounds\\/nature\\/mountain\\/mount-bromo\"}}', 'bootstrap_slider', 1, 2, 20, NULL, NULL),
(33, NULL, '_text-center', '{\"type\":\"h2\",\"value\":\"MEDIA\"}', NULL, 2, 1, 21, NULL, NULL),
(35, NULL, NULL, '{\"type\":\"p\",\"value\":\"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus bibendum et dui semper semper. Nulla ut arcu tempor, dictum metus eget, pharetra eros. Suspendisse potenti. Mauris euismod eros vel quam venenatis, nec luctus augue iaculis. Donec cursus accumsan lectus. Cras vitae sapien at metus vulputate volutpat dictum sed leo. Sed laoreet urna erat, eu pretium enim mollis sit amet.\"}', NULL, 3, 2, 21, NULL, NULL),
(36, 'carouselHome', NULL, '{\"0\":{\"src\":\"https:\\/\\/wallpapermemory.com\\/uploads\\/200\\/mount-bromo-wallpaper-hd-1920x1200-320096.jpg\",\"href\":\"https:\\/\\/wallpapermemory.com\\/desktop-backgrounds\\/nature\\/mountain\\/mount-bromo\"},\"1\":{\"src\":\"https:\\/\\/wallpapermemory.com\\/uploads\\/200\\/mount-bromo-wallpaper-hd-1920x1200-320096.jpg\",\"href\":\"https:\\/\\/wallpapermemory.com\\/desktop-backgrounds\\/nature\\/mountain\\/mount-bromo\"},\"2\":{\"src\":\"https:\\/\\/wallpapermemory.com\\/uploads\\/200\\/mount-bromo-wallpaper-hd-1920x1200-320096.jpg\",\"href\":\"https:\\/\\/wallpapermemory.com\\/desktop-backgrounds\\/nature\\/mountain\\/mount-bromo\"}}', 'bootstrap_slider', 1, 1, 22, NULL, NULL),
(37, NULL, '_padding-10', '{\"src\":\"https:\\/\\/wallpapermemory.com\\/uploads\\/200\\/mount-bromo-wallpaper-hd-1920x1200-320096.jpg\",\"href\":\"https:\\/\\/wallpapermemory.com\\/uploads\\/200\\/mount-bromo-wallpaper-hd-1920x1200-320096.jpg\"}', NULL, 4, 1, 33, NULL, '0000-00-00 00:00:00'),
(38, NULL, NULL, '{\"type\":\"h2\",\"value\":\"KONSERVASI PENYU\"}\r\n', NULL, 2, 1, 34, NULL, NULL),
(39, NULL, NULL, '{\"type\":\"p\",\"value\":\"Bali\"}', NULL, 3, 2, 34, NULL, NULL),
(40, NULL, NULL, '{\"type\":\"p\",\"value\":\"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus bibendum et dui semper semper. Nulla ut arcu tempor, dictum metus eget, pharetra eros. Suspendisse potenti. Mauris euismod eros vel quam venenatis, nec luctus augue iaculis. Donec cursus accumsan lectus. Cras vitae sapien at metus vulputate volutpat dictum sed leo. Sed laoreet urna erat, eu pretium enim mollis sit amet.\"}', NULL, 3, 3, 34, NULL, NULL),
(41, NULL, '', '{\"href\":\"konservasi-kami/detail\",\"value\":\"Details\"}', NULL, 7, 4, 34, NULL, NULL),
(42, NULL, NULL, '{\"type\":\"h2\",\"value\":\"KONSERVASI PENYU PASIR JAMBAK\"}\r\n', NULL, 2, 1, 35, NULL, NULL),
(43, NULL, NULL, '{\"type\":\"p\",\"value\":\"Padang\"}\r\n', NULL, 3, 2, 35, NULL, NULL),
(44, NULL, NULL, '{\"type\":\"p\",\"value\":\"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus bibendum et dui semper semper. Nulla ut arcu tempor, dictum metus eget, pharetra eros. Suspendisse potenti. Mauris euismod eros vel quam venenatis, nec luctus augue iaculis. Donec cursus accumsan lectus. Cras vitae sapien at metus vulputate volutpat dictum sed leo. Sed laoreet urna erat, eu pretium enim mollis sit amet.\"}\r\n', NULL, 3, 3, 35, NULL, NULL),
(45, NULL, NULL, '{\"href\":\"konservasi-kami/detail\",\"value\":\"Details\"}', NULL, 7, 4, 35, NULL, NULL),
(46, NULL, '_padding-10', '{\"src\":\"https:\\/\\/wallpapermemory.com\\/uploads\\/200\\/mount-bromo-wallpaper-hd-1920x1200-320096.jpg\",\"href\":\"https:\\/\\/wallpapermemory.com\\/uploads\\/200\\/mount-bromo-wallpaper-hd-1920x1200-320096.jpg\"}', NULL, 4, 1, 36, NULL, NULL),
(47, NULL, '_padding-10', '{\"src\":\"https:\\/\\/wallpapermemory.com\\/uploads\\/200\\/mount-bromo-wallpaper-hd-1920x1200-320096.jpg\",\"href\":\"https:\\/\\/wallpapermemory.com\\/uploads\\/200\\/mount-bromo-wallpaper-hd-1920x1200-320096.jpg\"}', NULL, 4, 1, 37, NULL, NULL),
(48, NULL, NULL, '{\"type\":\"h2\",\"value\":\"KONSERVASI PENYU BATU HIU\"}', NULL, 2, 1, 38, NULL, NULL),
(49, NULL, NULL, '{\"type\":\"p\",\"value\":\"Pangandaran\"}', NULL, 3, 2, 38, NULL, NULL),
(50, NULL, NULL, '{\"type\":\"p\",\"value\":\"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus bibendum et dui semper semper. Nulla ut arcu tempor, dictum metus eget, pharetra eros. Suspendisse potenti. Mauris euismod eros vel quam venenatis, nec luctus augue iaculis. Donec cursus accumsan lectus. Cras vitae sapien at metus vulputate volutpat dictum sed leo. Sed laoreet urna erat, eu pretium enim mollis sit amet.\"}', NULL, 3, 3, 38, NULL, NULL),
(51, NULL, NULL, '{\"href\":\"konservasi-kami/detail\",\"value\":\"Details\"}', NULL, 7, 4, 38, NULL, NULL),
(52, NULL, NULL, '{\"type\":\"h2\",\"value\":\"KONSERVASI PENYU PULAU PRAMUKA\"}\r\n', NULL, 2, 1, 39, NULL, NULL),
(53, NULL, NULL, '{\"type\":\"p\",\"value\":\"Kepulauan Seribu\"}\r\n', NULL, 3, 2, 39, NULL, NULL),
(54, NULL, NULL, '{\"type\":\"p\",\"value\":\"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus bibendum et dui semper semper. Nulla ut arcu tempor, dictum metus eget, pharetra eros. Suspendisse potenti. Mauris euismod eros vel quam venenatis, nec luctus augue iaculis. Donec cursus accumsan lectus. Cras vitae sapien at metus vulputate volutpat dictum sed leo. Sed laoreet urna erat, eu pretium enim mollis sit amet.\"}\r\n', NULL, 3, 3, 39, NULL, NULL),
(55, NULL, NULL, '{\"href\":\"konservasi-kami/detail\",\"value\":\"Details\"}', NULL, 7, 4, 39, NULL, NULL),
(56, NULL, '_padding-10', '{\"src\":\"https:\\/\\/wallpapermemory.com\\/uploads\\/200\\/mount-bromo-wallpaper-hd-1920x1200-320096.jpg\",\"href\":\"https:\\/\\/wallpapermemory.com\\/uploads\\/200\\/mount-bromo-wallpaper-hd-1920x1200-320096.jpg\"}', NULL, 4, 1, 40, NULL, NULL),
(57, NULL, NULL, '{\"src\":\"https:\\/\\/wallpapermemory.com\\/uploads\\/200\\/mount-bromo-wallpaper-hd-1920x1200-320096.jpg\",\"href\":\"https:\\/\\/wallpapermemory.com\\/uploads\\/200\\/mount-bromo-wallpaper-hd-1920x1200-320096.jpg\"}', NULL, 4, 1, 41, NULL, NULL),
(58, NULL, NULL, '{\"type\":\"h2\",\"value\":\"Sosialisasi\"}\r\n', NULL, 2, 1, 42, NULL, NULL),
(59, NULL, NULL, '{\"type\":\"h3\",\"value\":\"Lokasi\"}\r\n', NULL, 2, 1, 43, NULL, NULL),
(60, NULL, NULL, '{\"type\":\"p\",\"value\":\"Lorem ipsum dolor sit amet, consectetur adipiscing elit.\"}\r\n', NULL, 3, 2, 43, NULL, NULL),
(61, NULL, NULL, '{\"type\":\"h3\",\"value\":\"Waktu\"}\r\n', NULL, 2, 1, 44, NULL, NULL),
(62, NULL, NULL, '{\"type\":\"p\",\"value\":\"Lorem ipsum dolor sit amet.\"}\r\n', NULL, 3, 2, 44, NULL, NULL),
(63, NULL, NULL, '{\"type\":\"h3\",\"value\":\"Target\"}\r\n', NULL, 2, 1, 45, NULL, NULL),
(64, NULL, NULL, '{\"type\":\"p\",\"value\":\"Lorem ipsum dolor sit amet, consectetur\"}\r\n', NULL, 3, 2, 45, NULL, NULL),
(65, NULL, NULL, '{\"type\":\"h2\",\"value\":\"Materi\"}\r\n', NULL, 2, 1, 46, NULL, NULL),
(66, NULL, NULL, '{\"type\":\"p\",\"value\":\"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus bibendum et dui semper semper. Nulla ut arcu tempor, dictum metus eget, pharetra eros. Suspendisse potenti. Mauris euismod eros vel quam venenatis, nec luctus augue iaculis. Donec cursus accumsan lectus. Cras vitae sapien at metus vulputate volutpat dictum sed leo. Sed laoreet urna erat, eu pretium enim mollis sit amet.\"}\r\n', NULL, 3, 2, 46, NULL, NULL),
(67, NULL, NULL, '{\"type\":\"h2\",\"value\":\"Dokumentasi\"}\r\n', NULL, 2, 1, 47, NULL, NULL),
(68, 'carouselHome', '', '{\"0\":{\"src\":\"https:\\/\\/wallpapermemory.com\\/uploads\\/200\\/mount-bromo-wallpaper-hd-1920x1200-320096.jpg\",\"href\":\"https:\\/\\/wallpapermemory.com\\/desktop-backgrounds\\/nature\\/mountain\\/mount-bromo\"},\"1\":{\"src\":\"https:\\/\\/wallpapermemory.com\\/uploads\\/200\\/mount-bromo-wallpaper-hd-1920x1200-320096.jpg\",\"href\":\"https:\\/\\/wallpapermemory.com\\/desktop-backgrounds\\/nature\\/mountain\\/mount-bromo\"},\"2\":{\"src\":\"https:\\/\\/wallpapermemory.com\\/uploads\\/200\\/mount-bromo-wallpaper-hd-1920x1200-320096.jpg\",\"href\":\"https:\\/\\/wallpapermemory.com\\/desktop-backgrounds\\/nature\\/mountain\\/mount-bromo\"}}', 'bootstrap_slider', 1, 2, 47, NULL, NULL),
(69, NULL, NULL, '{\"type\":\"h2\",\"value\":\"Penyelamatan Penyu\"}\r\n', NULL, 2, 1, 48, NULL, NULL),
(70, NULL, NULL, '{\"type\":\"h3\",\"value\":\"Lokasi\"}\r\n', NULL, 2, 1, 49, NULL, NULL),
(71, NULL, NULL, '{\"type\":\"p\",\"value\":\"Lorem ipsum dolor sit amet, consectetur adipiscing elit.\"}\r\n', NULL, 3, 2, 49, NULL, NULL),
(72, NULL, NULL, '{\"type\":\"h3\",\"value\":\"Waktu\"}\r\n', NULL, 2, 1, 50, NULL, NULL),
(73, NULL, NULL, '{\"type\":\"p\",\"value\":\"Lorem ipsum dolor sit amet,\"}\r\n', NULL, 3, 2, 50, NULL, NULL),
(74, NULL, NULL, '{\"type\":\"h2\",\"value\":\"Jumlah penyu dan jumlah telur yang diselamatkan\"}\r\n', NULL, 2, 1, 51, NULL, NULL),
(75, NULL, NULL, '{\"type\":\"p\",\"value\":\"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus bibendum et dui semper semper. Nulla ut arcu tempor, dictum metus eget, pharetra eros. Suspendisse potenti. Mauris euismod eros vel quam venenatis, nec luctus augue iaculis. Donec cursus accumsan lectus. Cras vitae sapien at metus vulputate volutpat dictum sed leo. Sed laoreet urna erat, eu pretium enim mollis sit amet.\"}\r\n', NULL, 3, 2, 51, NULL, NULL),
(76, NULL, NULL, '{\"type\":\"h2\",\"value\":\"Dokumentasi\"}\r\n', NULL, 2, 1, 52, NULL, NULL),
(77, 'carouselHome', NULL, '{\"0\":{\"src\":\"https:\\/\\/wallpapermemory.com\\/uploads\\/200\\/mount-bromo-wallpaper-hd-1920x1200-320096.jpg\",\"href\":\"https:\\/\\/wallpapermemory.com\\/desktop-backgrounds\\/nature\\/mountain\\/mount-bromo\"},\"1\":{\"src\":\"https:\\/\\/wallpapermemory.com\\/uploads\\/200\\/mount-bromo-wallpaper-hd-1920x1200-320096.jpg\",\"href\":\"https:\\/\\/wallpapermemory.com\\/desktop-backgrounds\\/nature\\/mountain\\/mount-bromo\"},\"2\":{\"src\":\"https:\\/\\/wallpapermemory.com\\/uploads\\/200\\/mount-bromo-wallpaper-hd-1920x1200-320096.jpg\",\"href\":\"https:\\/\\/wallpapermemory.com\\/desktop-backgrounds\\/nature\\/mountain\\/mount-bromo\"}}\r\n', 'bootstrap_slider', 1, 2, 52, NULL, NULL),
(78, NULL, NULL, '{\"type\":\"h2\",\"value\":\"Pembesaran tukik\"}', NULL, 2, 1, 53, NULL, NULL),
(79, NULL, NULL, '{\"type\":\"h2\",\"value\":\"Pemberian makanan tukik\"}', NULL, 2, 2, 53, NULL, NULL),
(80, NULL, NULL, '{\"type\":\"p\",\"value\":\"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus bibendum et dui semper semper. Nulla ut arcu tempor, dictum metus eget, pharetra eros. Suspendisse potenti. Mauris euismod eros vel quam venenatis, nec luctus augue iaculis. Donec cursus accumsan lectus. Cras vitae sapien at metus vulputate volutpat dictum sed leo. Sed laoreet urna erat, eu pretium enim mollis sit amet.\"}', NULL, 3, 3, 53, NULL, NULL),
(81, NULL, NULL, '{\"type\":\"h2\",\"value\":\"Monitoring Perkembangan ukuran tukik\"}', NULL, 2, 1, 54, NULL, NULL),
(82, NULL, NULL, '{\"type\":\"p\",\"value\":\"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus bibendum et dui semper semper. Nulla ut arcu tempor, dictum metus eget, pharetra eros. Suspendisse potenti. Mauris euismod eros vel quam venenatis, nec luctus augue iaculis.\"}', NULL, 3, 2, 54, NULL, NULL),
(83, NULL, NULL, '{\"src\":\"https:\\/\\/wallpapermemory.com\\/uploads\\/200\\/mount-bromo-wallpaper-hd-1920x1200-320096.jpg\",\"href\":\"https:\\/\\/wallpapermemory.com\\/uploads\\/200\\/mount-bromo-wallpaper-hd-1920x1200-320096.jpg\"}', NULL, 4, 1, 55, NULL, NULL),
(84, NULL, NULL, '{\"type\":\"h2\",\"value\":\"Dokumentasi\"}', NULL, 2, 1, 56, NULL, NULL),
(85, 'carouselHome', NULL, '{\"0\":{\"src\":\"https:\\/\\/wallpapermemory.com\\/uploads\\/200\\/mount-bromo-wallpaper-hd-1920x1200-320096.jpg\",\"href\":\"https:\\/\\/wallpapermemory.com\\/desktop-backgrounds\\/nature\\/mountain\\/mount-bromo\"},\"1\":{\"src\":\"https:\\/\\/wallpapermemory.com\\/uploads\\/200\\/mount-bromo-wallpaper-hd-1920x1200-320096.jpg\",\"href\":\"https:\\/\\/wallpapermemory.com\\/desktop-backgrounds\\/nature\\/mountain\\/mount-bromo\"},\"2\":{\"src\":\"https:\\/\\/wallpapermemory.com\\/uploads\\/200\\/mount-bromo-wallpaper-hd-1920x1200-320096.jpg\",\"href\":\"https:\\/\\/wallpapermemory.com\\/desktop-backgrounds\\/nature\\/mountain\\/mount-bromo\"}}\r\n', 'bootstrap_slider', 1, 2, 56, NULL, NULL),
(86, NULL, NULL, '{\"type\":\"h2\",\"value\":\"Pelepasliaran Tukik\"}', NULL, 2, 1, 57, NULL, NULL),
(87, NULL, NULL, '{\"type\":\"h3\",\"value\":\"Lokasi\"}', NULL, 2, 1, 58, NULL, NULL),
(88, NULL, NULL, '{\"type\":\"p\",\"value\":\"Lorem ipsum dolor sit amet, consectetur adipiscing elit.\"}', NULL, 3, 2, 58, NULL, NULL),
(89, NULL, NULL, '{\"type\":\"h3\",\"value\":\"Waktu\"}', NULL, 2, 1, 59, NULL, NULL),
(90, NULL, NULL, '{\"type\":\"p\",\"value\":\"Lorem ipsum dolor sit amet,\"}', NULL, 3, 2, 59, NULL, NULL),
(91, NULL, NULL, '{\"type\":\"h2\",\"value\":\"Kegiatan, jenis penyu yang dilepaskan, jumlah penyu yang dilepaskan\"}', NULL, 2, 1, 60, NULL, NULL),
(92, NULL, NULL, '{\"type\":\"p\",\"value\":\"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus bibendum et dui semper semper. Nulla ut arcu tempor, dictum metus eget, pharetra eros. Suspendisse potenti. Mauris euismod eros vel quam venenatis, nec luctus augue iaculis. Donec cursus accumsan lectus. Cras vitae sapien at metus vulputate volutpat dictum sed leo. Sed laoreet urna erat, eu pretium enim mollis sit amet.\"}', NULL, 3, 2, 60, NULL, NULL),
(93, NULL, NULL, '{\"type\":\"h2\",\"value\":\"Dokumentasi\"}\r\n', NULL, 2, 1, 61, NULL, NULL),
(94, 'carouselHome', NULL, '{\"0\":{\"src\":\"https:\\/\\/wallpapermemory.com\\/uploads\\/200\\/mount-bromo-wallpaper-hd-1920x1200-320096.jpg\",\"href\":\"https:\\/\\/wallpapermemory.com\\/desktop-backgrounds\\/nature\\/mountain\\/mount-bromo\"},\"1\":{\"src\":\"https:\\/\\/wallpapermemory.com\\/uploads\\/200\\/mount-bromo-wallpaper-hd-1920x1200-320096.jpg\",\"href\":\"https:\\/\\/wallpapermemory.com\\/desktop-backgrounds\\/nature\\/mountain\\/mount-bromo\"},\"2\":{\"src\":\"https:\\/\\/wallpapermemory.com\\/uploads\\/200\\/mount-bromo-wallpaper-hd-1920x1200-320096.jpg\",\"href\":\"https:\\/\\/wallpapermemory.com\\/desktop-backgrounds\\/nature\\/mountain\\/mount-bromo\"}}\r\n', 'bootstrap_slider', 1, 2, 61, NULL, NULL),
(95, NULL, NULL, '{\"type\":\"h2\",\"value\":\"Pembersihan Pantai\"}', NULL, 2, 1, 62, NULL, NULL),
(96, NULL, NULL, '{\"type\":\"h3\",\"value\":\"Lokasi\"}', NULL, 2, 1, 63, NULL, NULL),
(97, NULL, NULL, '{\"type\":\"p\",\"value\":\"Lorem ipsum dolor sit amet, consectetur adipiscing elit.\"}', NULL, 3, 2, 63, NULL, NULL),
(98, NULL, NULL, '{\"type\":\"h3\",\"value\":\"Waktu\"}', NULL, 2, 1, 64, NULL, NULL),
(99, NULL, NULL, '{\"type\":\"p\",\"value\":\"Lorem ipsum dolor sit amet,\"}', NULL, 3, 2, 64, NULL, NULL),
(100, NULL, NULL, '{\"type\":\"h2\",\"value\":\"Dokumentasi\"}', NULL, 2, 1, 65, NULL, NULL),
(101, 'carouselHome', NULL, '{\"0\":{\"src\":\"https:\\/\\/wallpapermemory.com\\/uploads\\/200\\/mount-bromo-wallpaper-hd-1920x1200-320096.jpg\",\"href\":\"https:\\/\\/wallpapermemory.com\\/desktop-backgrounds\\/nature\\/mountain\\/mount-bromo\"},\"1\":{\"src\":\"https:\\/\\/wallpapermemory.com\\/uploads\\/200\\/mount-bromo-wallpaper-hd-1920x1200-320096.jpg\",\"href\":\"https:\\/\\/wallpapermemory.com\\/desktop-backgrounds\\/nature\\/mountain\\/mount-bromo\"},\"2\":{\"src\":\"https:\\/\\/wallpapermemory.com\\/uploads\\/200\\/mount-bromo-wallpaper-hd-1920x1200-320096.jpg\",\"href\":\"https:\\/\\/wallpapermemory.com\\/desktop-backgrounds\\/nature\\/mountain\\/mount-bromo\"}}\r\n', 'bootstrap_slider', 1, 2, 65, NULL, NULL),
(102, NULL, NULL, '{\"type\":\"h2\",\"value\":\"Kegiatan Lain\"}\r\n', NULL, 2, 1, 66, NULL, NULL),
(103, 'carouselHome', NULL, '{\"0\":{\"src\":\"https:\\/\\/wallpapermemory.com\\/uploads\\/200\\/mount-bromo-wallpaper-hd-1920x1200-320096.jpg\",\"href\":\"https:\\/\\/wallpapermemory.com\\/desktop-backgrounds\\/nature\\/mountain\\/mount-bromo\"},\"1\":{\"src\":\"https:\\/\\/wallpapermemory.com\\/uploads\\/200\\/mount-bromo-wallpaper-hd-1920x1200-320096.jpg\",\"href\":\"https:\\/\\/wallpapermemory.com\\/desktop-backgrounds\\/nature\\/mountain\\/mount-bromo\"},\"2\":{\"src\":\"https:\\/\\/wallpapermemory.com\\/uploads\\/200\\/mount-bromo-wallpaper-hd-1920x1200-320096.jpg\",\"href\":\"https:\\/\\/wallpapermemory.com\\/desktop-backgrounds\\/nature\\/mountain\\/mount-bromo\"}}', 'bootstrap_slider', 1, 2, 66, NULL, NULL),
(104, NULL, '_padding-10', '{\"src\":\"https:\\/\\/wallpapermemory.com\\/uploads\\/200\\/mount-bromo-wallpaper-hd-1920x1200-320096.jpg\",\"href\":\"https:\\/\\/wallpapermemory.com\\/uploads\\/200\\/mount-bromo-wallpaper-hd-1920x1200-320096.jpg\"}', NULL, 4, 1, 67, NULL, NULL),
(105, NULL, NULL, '{\"type\":\"h2\",\"value\":\"KONSERVASI PENYU\"}', NULL, 2, 1, 68, NULL, NULL),
(106, NULL, NULL, '{\"type\":\"p\",\"value\":\"Bali\"}', NULL, 3, 2, 68, NULL, NULL),
(107, NULL, NULL, '{\"type\":\"p\",\"value\":\"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus bibendum et dui semper semper. Nulla ut arcu tempor, dictum metus eget, pharetra eros. Suspendisse potenti. Mauris euismod eros vel quam venenatis, nec luctus augue iaculis. Donec cursus accumsan lectus. Cras vitae sapien at metus vulputate volutpat dictum sed leo. Sed laoreet urna erat, eu pretium enim mollis sit amet.\"}', NULL, 3, 3, 68, NULL, NULL),
(108, NULL, NULL, '{\"src\":\"https:\\/\\/wallpapermemory.com\\/uploads\\/200\\/mount-bromo-wallpaper-hd-1920x1200-320096.jpg\",\"href\":\"https:\\/\\/wallpapermemory.com\\/uploads\\/200\\/mount-bromo-wallpaper-hd-1920x1200-320096.jpg\"}', NULL, 4, 4, 68, NULL, NULL),
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
(121, 'carouselHome', NULL, '{\"0\":{\"src\":\"https:\\/\\/wallpapermemory.com\\/uploads\\/200\\/mount-bromo-wallpaper-hd-1920x1200-320096.jpg\",\"href\":\"https:\\/\\/wallpapermemory.com\\/desktop-backgrounds\\/nature\\/mountain\\/mount-bromo\"},\"1\":{\"src\":\"https:\\/\\/wallpapermemory.com\\/uploads\\/200\\/mount-bromo-wallpaper-hd-1920x1200-320096.jpg\",\"href\":\"https:\\/\\/wallpapermemory.com\\/desktop-backgrounds\\/nature\\/mountain\\/mount-bromo\"},\"2\":{\"src\":\"https:\\/\\/wallpapermemory.com\\/uploads\\/200\\/mount-bromo-wallpaper-hd-1920x1200-320096.jpg\",\"href\":\"https:\\/\\/wallpapermemory.com\\/desktop-backgrounds\\/nature\\/mountain\\/mount-bromo\"}}', 'bootstrap_slider', 1, 1, 77, NULL, NULL),
(122, NULL, '', '{\"src\":\"https:\\/\\/wallpapermemory.com\\/uploads\\/200\\/mount-bromo-wallpaper-hd-1920x1200-320096.jpg\",\"href\":\"https:\\/\\/wallpapermemory.com\\/uploads\\/200\\/mount-bromo-wallpaper-hd-1920x1200-320096.jpg\"}', NULL, 4, 1, 30, NULL, NULL),
(123, NULL, NULL, '{\"src\":\"https:\\/\\/wallpapermemory.com\\/uploads\\/200\\/mount-bromo-wallpaper-hd-1920x1200-320096.jpg\",\"href\":\"https:\\/\\/wallpapermemory.com\\/uploads\\/200\\/mount-bromo-wallpaper-hd-1920x1200-320096.jpg\"}', NULL, 4, 2, 30, NULL, NULL),
(124, NULL, '_galery-video', '{\"src\":\"https://youtu.be/R2LQdh42neg\",\"href\":\"https:\\/\\/wallpapermemory.com\\/uploads\\/200\\/mount-bromo-wallpaper-hd-1920x1200-320096.jpg\"}', NULL, 5, 1, 31, NULL, NULL),
(125, NULL, '_galery-video', '{\"src\":\"https://youtu.be/R2LQdh42neg\",\"href\":\"https:\\/\\/wallpapermemory.com\\/uploads\\/200\\/mount-bromo-wallpaper-hd-1920x1200-320096.jpg\"}', NULL, 5, 2, 31, NULL, NULL),
(126, NULL, '_padding-10', '{\"src\":\"https:\\/\\/wallpapermemory.com\\/uploads\\/200\\/mount-bromo-wallpaper-hd-1920x1200-320096.jpg\",\"href\":\"https:\\/\\/wallpapermemory.com\\/uploads\\/200\\/mount-bromo-wallpaper-hd-1920x1200-320096.jpg\"}', NULL, 4, 1, 27, NULL, NULL),
(127, NULL, '_padding-10', '{\"src\":\"https:\\/\\/wallpapermemory.com\\/uploads\\/200\\/mount-bromo-wallpaper-hd-1920x1200-320096.jpg\",\"href\":\"https:\\/\\/wallpapermemory.com\\/uploads\\/200\\/mount-bromo-wallpaper-hd-1920x1200-320096.jpg\"}', NULL, 4, 1, 28, NULL, NULL),
(128, NULL, '_padding-10', '{\"src\":\"https:\\/\\/wallpapermemory.com\\/uploads\\/200\\/mount-bromo-wallpaper-hd-1920x1200-320096.jpg\",\"href\":\"https:\\/\\/wallpapermemory.com\\/uploads\\/200\\/mount-bromo-wallpaper-hd-1920x1200-320096.jpg\"}', NULL, 4, 2, 28, NULL, NULL),
(129, NULL, '_padding-10', '{\"type\":\"h3\",\"value\":\"BERITA LAINYA\"}', NULL, 2, 1, 29, NULL, NULL),
(130, NULL, '_padding-10', '{\"src\":\"https:\\/\\/wallpapermemory.com\\/uploads\\/200\\/mount-bromo-wallpaper-hd-1920x1200-320096.jpg\",\"href\":\"https:\\/\\/wallpapermemory.com\\/uploads\\/200\\/mount-bromo-wallpaper-hd-1920x1200-320096.jpg\"}', NULL, 4, 2, 29, NULL, NULL),
(131, NULL, '_padding-10', '{\"type\":\"h6\",\"value\":\"NAMA BERITA\"}', NULL, 2, 3, 29, NULL, NULL),
(132, NULL, NULL, '{\"type\":\"p\",\"value\":\"Nama\"}\r\n', NULL, 3, 1, 25, NULL, NULL),
(133, NULL, NULL, '{\"type\":\"p\",\"value\":\"Email\"}\r\n', NULL, 3, 2, 25, NULL, NULL),
(134, NULL, NULL, '{\"type\":\"p\",\"value\":\"Pesan Anda\"}\r\n', NULL, 3, 3, 25, NULL, NULL),
(135, NULL, NULL, '{\"type\":\"h2\",\"value\":\"Frequently Ask Question\"}', NULL, 2, 1, 26, NULL, NULL),
(136, NULL, NULL, '{\"src\":\"https:\\/\\/wallpapermemory.com\\/uploads\\/200\\/mount-bromo-wallpaper-hd-1920x1200-320096.jpg\",\"href\":\"https:\\/\\/wallpapermemory.com\\/uploads\\/200\\/mount-bromo-wallpaper-hd-1920x1200-320096.jpg\"}', NULL, 4, 3, 30, NULL, NULL),
(137, NULL, NULL, '{\"src\":\"https:\\/\\/wallpapermemory.com\\/uploads\\/200\\/mount-bromo-wallpaper-hd-1920x1200-320096.jpg\",\"href\":\"https:\\/\\/wallpapermemory.com\\/uploads\\/200\\/mount-bromo-wallpaper-hd-1920x1200-320096.jpg\"}', NULL, 4, 4, 30, NULL, NULL),
(138, NULL, NULL, '{\"src\":\"https:\\/\\/wallpapermemory.com\\/uploads\\/200\\/mount-bromo-wallpaper-hd-1920x1200-320096.jpg\",\"href\":\"https:\\/\\/wallpapermemory.com\\/uploads\\/200\\/mount-bromo-wallpaper-hd-1920x1200-320096.jpg\"}', NULL, 4, 5, 30, NULL, NULL),
(139, NULL, NULL, '{\"src\":\"https:\\/\\/wallpapermemory.com\\/uploads\\/200\\/mount-bromo-wallpaper-hd-1920x1200-320096.jpg\",\"href\":\"https:\\/\\/wallpapermemory.com\\/uploads\\/200\\/mount-bromo-wallpaper-hd-1920x1200-320096.jpg\"}', NULL, 4, 6, 30, NULL, NULL),
(140, NULL, NULL, '{\"src\":\"https:\\/\\/wallpapermemory.com\\/uploads\\/200\\/mount-bromo-wallpaper-hd-1920x1200-320096.jpg\",\"href\":\"https:\\/\\/wallpapermemory.com\\/uploads\\/200\\/mount-bromo-wallpaper-hd-1920x1200-320096.jpg\"}', NULL, 4, 7, 30, NULL, NULL),
(141, NULL, NULL, '{\"src\":\"https:\\/\\/wallpapermemory.com\\/uploads\\/200\\/mount-bromo-wallpaper-hd-1920x1200-320096.jpg\",\"href\":\"https:\\/\\/wallpapermemory.com\\/uploads\\/200\\/mount-bromo-wallpaper-hd-1920x1200-320096.jpg\"}', NULL, 4, 8, 30, NULL, NULL),
(142, NULL, '_galery-video', '{\"src\":\"https://youtu.be/R2LQdh42neg\",\"href\":\"https:\\/\\/wallpapermemory.com\\/uploads\\/200\\/mount-bromo-wallpaper-hd-1920x1200-320096.jpg\"}', NULL, 5, 3, 31, NULL, NULL),
(143, NULL, '_galery-video', '{\"src\":\"https://youtu.be/R2LQdh42neg\",\"href\":\"https:\\/\\/wallpapermemory.com\\/uploads\\/200\\/mount-bromo-wallpaper-hd-1920x1200-320096.jpg\"}', NULL, 5, 4, 31, NULL, NULL),
(144, NULL, '_padding-10', '{\"src\":\"https:\\/\\/wallpapermemory.com\\/uploads\\/200\\/mount-bromo-wallpaper-hd-1920x1200-320096.jpg\",\"href\":\"https:\\/\\/wallpapermemory.com\\/uploads\\/200\\/mount-bromo-wallpaper-hd-1920x1200-320096.jpg\"}', NULL, 4, 4, 29, NULL, NULL),
(145, NULL, '_padding-10', '{\"type\":\"h6\",\"value\":\"NAMA BERITA\"}\r\n', NULL, 2, 5, 29, NULL, NULL),
(146, 'Accordion', NULL, '{\"0\":{\"heading\":{\"type\":\"h2\",\"value\":\"Lorem Ipsum Dolor Sit Amet\"},\"body\":{\"value\":\"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\"}},\"1\":{\"heading\":{\"type\":\"h2\",\"value\":\"Lorem Ipsum Dolor Sit Amet\"},\"body\":{\"value\":\"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\"}},\"2\":{\"heading\":{\"type\":\"h2\",\"value\":\"Lorem Ipsum Dolor Sit Amet\"},\"body\":{\"value\":\"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\"}}}', NULL, 10, 2, 26, NULL, NULL),
(147, NULL, NULL, '{\"src\":\"https:\\/\\/wallpapermemory.com\\/uploads\\/200\\/mount-bromo-wallpaper-hd-1920x1200-320096.jpg\",\"href\":\"https:\\/\\/wallpapermemory.com\\/uploads\\/200\\/mount-bromo-wallpaper-hd-1920x1200-320096.jpg\"}', NULL, 4, 5, 68, NULL, NULL),
(148, NULL, NULL, '{\"src\":\"https:\\/\\/wallpapermemory.com\\/uploads\\/200\\/mount-bromo-wallpaper-hd-1920x1200-320096.jpg\",\"href\":\"https:\\/\\/wallpapermemory.com\\/uploads\\/200\\/mount-bromo-wallpaper-hd-1920x1200-320096.jpg\"}', NULL, 4, 6, 68, NULL, NULL),
(149, NULL, NULL, '{\"src\":\"https://youtu.be/R2LQdh42neg\",\"href\":\"https:\\/\\/wallpapermemory.com\\/uploads\\/200\\/mount-bromo-wallpaper-hd-1920x1200-320096.jpg\"}', NULL, 5, 1, 32, NULL, NULL),
(150, NULL, NULL, '{\"type\":\"h2\",\"value\":\"Parancak, Bali\"}\r\n', NULL, 2, 1, 78, NULL, NULL),
(151, NULL, NULL, '{\"type\":\"h2\",\"value\":\"Pasri Jambak, Padang\"}', NULL, 2, 1, 80, NULL, NULL),
(152, NULL, NULL, '{\"type\":\"h2\",\"value\":\"Batu Hiu, Pangandaran\"}', NULL, 2, 1, 82, NULL, NULL),
(153, NULL, NULL, '{\"type\":\"h2\",\"value\":\"Pulau Pramuka, Jakarta\"}', NULL, 2, 1, 84, NULL, NULL),
(154, NULL, NULL, '{\"src\":\"https:\\/\\/wallpapermemory.com\\/uploads\\/200\\/mount-bromo-wallpaper-hd-1920x1200-320096.jpg\",\"href\":\"https:\\/\\/wallpapermemory.com\\/uploads\\/200\\/mount-bromo-wallpaper-hd-1920x1200-320096.jpg\"}', NULL, 4, 1, 14, NULL, NULL),
(155, NULL, 'fab fa-facebook', '{\"href\":\"google.com\",\"value\":\"kjhjkjh\"}', NULL, 7, 1, 86, NULL, NULL);

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
(1, 1, '._navbar {position: fixed;left: 0px;top: 0px;width: 100%;background-color: #fff;z-index: 99999999;padding: 10px 0px; }\r\n._navbar ._menu-link { float: right;}\r\n._navbar ._menu-link ul { width: 100%;padding: 0px;list-style: none;display: table;margin: 0px;}\r\n._navbar ._menu-link ul li { float: left;}\r\n._navbar ._menu-link ul li a {text-decoration: none;color: #333;padding: 8px 10px;display: block;text-transform: capitalize; }\r\n            ._text-center { text-align: center; }\r\n            ._text-right { text-align: right; }\r\n            ._float-right { float: right!important; }\r\n            ._container { width: 1000px; margin: 0px auto; display: block;}\r\n            ._section ._container { display: table; padding: 20px 10px; border: .5px #aaa dashed;}\r\n            ._section ._container ._grid{ float: left; padding: 10px 0px; display: inherit;border: .5px #aaa dashed; position: relative;}\r\n            ._section ._container .grid-12 { width: 100%; }\r\n            ._section ._container .grid-11 { width: 91.666666666667%; }\r\n            ._section ._container .grid-10 { width: 83.333333333333%; }\r\n            ._section ._container .grid-9  { width: 75%; }\r\n            ._section ._container .grid-8  { width: 66.666666666666%; }\r\n            ._section ._container .grid-7  { width: 58.333333333333%; }\r\n            ._section ._container .grid-6  { width: 50%; }\r\n            ._section ._container .grid-5  { width: 41.666666666667%; }\r\n            ._section ._container .grid-4  { width: 33.333333333333%; }\r\n            ._section ._container .grid-3  { width: 25%; }\r\n            ._section ._container .grid-2  { width: 16.666666666667%; }\r\n            ._section ._container .grid-1  { width:  8.333333333333%; }\r\n            ._btn { padding: 5px 17px; display: block; width: fit-content; border: .5px #d4d4d4 solid; border-radius: 9px; color: white; background-color : #2f94e0;}\r\n            ._btn:hover { text-decoration: none; color: #fff; background-color: #d4d4d4; }\r\n._galery-image img {\r\nwidth : 25% !important;\r\nfloat : left;\r\npadding : 5px;\r\n}\r\n._padding-10{\r\npadding : 10px;\r\n}\r\n._berita-berita-lain img{\r\nwidth : 50%!important;\r\nfloat : left;\r\n}\r\n._berita-berita-lain h6{\r\nheight : 80px;\r\n}\r\n._lokasi-image img{\r\nwidth : 33% !important;\r\nfloat: left;\r\npadding : 3px;\r\n}\r\n._galery-video {\r\nwidth : 50% !important;\r\nfloat : left;\r\npadding : 5px;\r\n}\r\n._container-width-full ._container {\r\nwidth: 100% !important;\r\n    padding: 20px 0px;	\r\n}\r\n._container-width-full ._container ._grid {\r\nwidth: 100% !important;\r\n    padding: 20px 0px;	\r\n}\r\n._section ._container ._grid-1000{\r\nwidth: 1000px !important;\r\nfloat: unset;\r\nmargin: 0px auto;\r\n}\r\nbody {\r\npadding-top: 60px;\r\n}\r\n._padding-less-container-grid ._container {\r\npadding: 0px !important;\r\n}\r\n._padding-less-container-grid ._container ._grid{\r\npadding: 0px !important;\r\n}\r\n._social-media-badge {\r\nposition : absolute\r\n}', '2019-10-22 11:58:36', '2019-10-22 11:58:36');

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
(6, NULL, NULL, 6, 1, 4, NULL, NULL),
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
(28, NULL, NULL, 3, 2, 14, NULL, NULL),
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
(41, NULL, NULL, 12, 1, 21, NULL, NULL),
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
(89, NULL, NULL, 12, 4, 38, NULL, NULL);

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
(1, 'beranda', 'beranda', '<script\r\n  src=\"https://code.jquery.com/jquery-3.2.1.min.js\"\r\n  integrity=\"sha256-hwg4gsxgFZhOsEEamdOYGBf13FyQuiTwlAQgxVSNgt4=\"\r\n  crossorigin=\"anonymous\"></script>\r\n<script src=\"https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js\" integrity=\"sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q\" crossorigin=\"anonymous\"></script>\r\n<script src=\"https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js\" integrity=\"sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl\" crossorigin=\"anonymous\"></script>\r\n<link rel=\"stylesheet\" href=\"https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css\" integrity=\"sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T\" crossorigin=\"anonymous\">', NULL, 1, 1, 1, '2019-10-16 09:03:35', '2019-10-16 09:03:34'),
(2, 'tentang kami', 'tentang-kami', '<script\r\n  src=\"https://code.jquery.com/jquery-3.2.1.min.js\"\r\n  integrity=\"sha256-hwg4gsxgFZhOsEEamdOYGBf13FyQuiTwlAQgxVSNgt4=\"\r\n  crossorigin=\"anonymous\"></script>\r\n<script src=\"https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js\" integrity=\"sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q\" crossorigin=\"anonymous\"></script>\r\n<script src=\"https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js\" integrity=\"sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl\" crossorigin=\"anonymous\"></script>\r\n<link rel=\"stylesheet\" href=\"https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css\" integrity=\"sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T\" crossorigin=\"anonymous\">', NULL, 2, 1, 1, '2019-10-16 09:03:37', '2019-10-16 09:03:31'),
(3, 'konservasi kami', 'konservasi-kami', '<script\r\n  src=\"https://code.jquery.com/jquery-3.2.1.min.js\"\r\n  integrity=\"sha256-hwg4gsxgFZhOsEEamdOYGBf13FyQuiTwlAQgxVSNgt4=\"\r\n  crossorigin=\"anonymous\"></script>\r\n<script src=\"https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js\" integrity=\"sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q\" crossorigin=\"anonymous\"></script>\r\n<script src=\"https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js\" integrity=\"sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl\" crossorigin=\"anonymous\"></script>\r\n<link rel=\"stylesheet\" href=\"https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css\" integrity=\"sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T\" crossorigin=\"anonymous\">', NULL, 3, 1, 1, '2019-10-16 09:03:37', '2019-10-16 09:03:50'),
(4, 'lokasi', 'lokasi', '<script\r\n  src=\"https://code.jquery.com/jquery-3.2.1.min.js\"\r\n  integrity=\"sha256-hwg4gsxgFZhOsEEamdOYGBf13FyQuiTwlAQgxVSNgt4=\"\r\n  crossorigin=\"anonymous\"></script>\r\n<script src=\"https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js\" integrity=\"sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q\" crossorigin=\"anonymous\"></script>\r\n<script src=\"https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js\" integrity=\"sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl\" crossorigin=\"anonymous\"></script>\r\n<link rel=\"stylesheet\" href=\"https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css\" integrity=\"sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T\" crossorigin=\"anonymous\">', NULL, 4, 1, 1, '2019-10-16 09:03:38', '2019-10-16 09:03:48'),
(5, 'kontak kami', 'kontak-kami', '<script\r\n  src=\"https://code.jquery.com/jquery-3.2.1.min.js\"\r\n  integrity=\"sha256-hwg4gsxgFZhOsEEamdOYGBf13FyQuiTwlAQgxVSNgt4=\"\r\n  crossorigin=\"anonymous\"></script>\r\n<script src=\"https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js\" integrity=\"sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q\" crossorigin=\"anonymous\"></script>\r\n<script src=\"https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js\" integrity=\"sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl\" crossorigin=\"anonymous\"></script>\r\n<link rel=\"stylesheet\" href=\"https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css\" integrity=\"sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T\" crossorigin=\"anonymous\">', NULL, 5, 1, 1, '2019-10-16 09:03:39', '2019-10-16 09:03:48'),
(6, 'galeri', 'galeri', '<script\r\n  src=\"https://code.jquery.com/jquery-3.2.1.min.js\"\r\n  integrity=\"sha256-hwg4gsxgFZhOsEEamdOYGBf13FyQuiTwlAQgxVSNgt4=\"\r\n  crossorigin=\"anonymous\"></script>\r\n<script src=\"https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js\" integrity=\"sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q\" crossorigin=\"anonymous\"></script>\r\n<script src=\"https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js\" integrity=\"sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl\" crossorigin=\"anonymous\"></script>\r\n<link rel=\"stylesheet\" href=\"https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css\" integrity=\"sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T\" crossorigin=\"anonymous\">', NULL, 6, 1, 1, '2019-10-16 09:03:40', '2019-10-16 09:03:47'),
(7, 'berita', 'berita', '<script\r\n  src=\"https://code.jquery.com/jquery-3.2.1.min.js\"\r\n  integrity=\"sha256-hwg4gsxgFZhOsEEamdOYGBf13FyQuiTwlAQgxVSNgt4=\"\r\n  crossorigin=\"anonymous\"></script>\r\n<script src=\"https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js\" integrity=\"sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q\" crossorigin=\"anonymous\"></script>\r\n<script src=\"https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js\" integrity=\"sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl\" crossorigin=\"anonymous\"></script>\r\n<link rel=\"stylesheet\" href=\"https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css\" integrity=\"sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T\" crossorigin=\"anonymous\">', NULL, 7, 1, 1, '2019-10-16 09:03:40', '2019-10-16 09:03:46'),
(8, 'faq', 'faq', '<script\r\n  src=\"https://code.jquery.com/jquery-3.2.1.min.js\"\r\n  integrity=\"sha256-hwg4gsxgFZhOsEEamdOYGBf13FyQuiTwlAQgxVSNgt4=\"\r\n  crossorigin=\"anonymous\"></script>\r\n<script src=\"https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js\" integrity=\"sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q\" crossorigin=\"anonymous\"></script>\r\n<script src=\"https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js\" integrity=\"sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl\" crossorigin=\"anonymous\"></script>\r\n<link rel=\"stylesheet\" href=\"https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css\" integrity=\"sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T\" crossorigin=\"anonymous\">', NULL, 8, 1, 1, '2019-10-16 09:03:41', '2019-10-16 09:03:46'),
(9, 'detail', 'detail', '<script\r\n  src=\"https://code.jquery.com/jquery-3.2.1.min.js\"\r\n  integrity=\"sha256-hwg4gsxgFZhOsEEamdOYGBf13FyQuiTwlAQgxVSNgt4=\"\r\n  crossorigin=\"anonymous\"></script>\r\n<script src=\"https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js\" integrity=\"sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q\" crossorigin=\"anonymous\"></script>\r\n<script src=\"https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js\" integrity=\"sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl\" crossorigin=\"anonymous\"></script>\r\n<link rel=\"stylesheet\" href=\"https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css\" integrity=\"sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T\" crossorigin=\"anonymous\">', 3, 9, 1, 1, '2019-10-16 09:03:41', '2019-10-16 09:03:52'),
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
(2, 'section tentang', NULL, NULL, 2, 1, '2019-10-16 09:25:31', '2019-10-22 03:03:16'),
(3, 'section klasifikasi', NULL, NULL, 3, 1, '2019-10-16 09:25:35', '2019-10-22 03:03:16'),
(4, 'section cara hidup', NULL, NULL, 4, 1, '2019-10-16 09:25:37', '2019-10-16 09:25:44'),
(5, 'section masa bertelur', NULL, NULL, 5, 1, '2019-10-16 09:25:38', '2019-10-16 09:25:44'),
(6, 'section fakta tentang', NULL, '_container-width-full', 6, 1, '2019-10-16 09:25:39', '2019-10-16 09:25:43'),
(7, 'section gallery foto video', NULL, NULL, 7, 1, '2019-10-16 09:25:40', '2019-10-16 09:25:42'),
(8, 'section wilayah konservasi', NULL, NULL, 8, 1, '2019-10-16 09:25:40', '2019-10-16 09:25:41'),
(9, 'section latar belakang', NULL, '_container-width-full _padding-less-container-grid ._container', 1, 2, NULL, NULL),
(10, 'section tujuan', NULL, NULL, 2, 2, NULL, NULL),
(11, 'section media', NULL, NULL, 3, 2, NULL, NULL),
(12, 'section form', NULL, '_padding-less-container-grid ._container', 1, 8, NULL, NULL),
(13, 'section faq detail', NULL, NULL, 2, 8, NULL, NULL),
(14, 'section news', NULL, '_padding-less-container-grid ._container', 1, 7, NULL, NULL),
(15, 'section images', NULL, '_padding-less-container-grid ._container', 1, 6, NULL, NULL),
(16, 'section videos', NULL, NULL, 2, 6, NULL, NULL),
(17, 'section konservasi bali', NULL, '_padding-less-container-grid ._container', 1, 3, NULL, NULL),
(18, 'section konservasi padang', NULL, NULL, 2, 3, NULL, NULL),
(19, 'section konservasi pangandaran', NULL, NULL, 3, 3, NULL, NULL),
(20, 'section konservasi kepulauan seribu', NULL, NULL, 4, 3, NULL, NULL),
(21, 'section location ilustrator', NULL, '_padding-less-container-grid ._container', 1, 9, NULL, NULL),
(22, 'section sosialisasi', NULL, NULL, 2, 9, NULL, NULL),
(23, 'section penyelamatan penyu', NULL, NULL, 3, 9, NULL, NULL),
(24, 'section pembesaran tukik', NULL, NULL, 4, 9, NULL, NULL),
(25, 'section pelepasan tukik', NULL, NULL, 5, 9, NULL, NULL),
(26, 'pembersihan pantai', NULL, NULL, 6, 9, NULL, NULL),
(27, 'section kegiatan lain-lain', NULL, NULL, 7, 9, NULL, NULL),
(28, 'section konservasi penyu', NULL, '_padding-less-container-grid ._container', 1, 4, NULL, NULL),
(29, 'section lokasi 1', NULL, '_padding-less-container-grid ._container', 1, 10, NULL, NULL),
(30, 'section lokasi 2', NULL, NULL, 2, 10, NULL, NULL),
(31, 'section lokasi 3', NULL, NULL, 3, 10, NULL, NULL),
(32, 'section lokasi 4', NULL, NULL, 4, 10, NULL, NULL),
(33, 'section carousel kontak', NULL, '_padding-less-container-grid ._container', 1, 5, NULL, NULL),
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
(10, 'accordion', NULL, NULL);

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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=156;

--
-- AUTO_INCREMENT for table `css`
--
ALTER TABLE `css`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `grids`
--
ALTER TABLE `grids`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=90;

--
-- AUTO_INCREMENT for table `groups`
--
ALTER TABLE `groups`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;