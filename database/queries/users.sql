
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `first_name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gender` varchar(6) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_of_birth` date DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `api_token` varchar(80) COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `users_email_unique` (`email`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

INSERT INTO `users` (`id`, `first_name`, `last_name`, `phone`, `gender`, `date_of_birth`, `email`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
	(1, 'Mochammad Alfin', 'Faturochman', '081232741996', NULL, '1995-11-14', 'development@neodigital.co.id', '$2y$10$.lYx/m.Gumo/rlypWWqq2epJnejfE9M7/0NsXSgT3.YSUw0ZkbqlK', 'gMRATSYdainq9kMasl44Zrf6PhabKGtCH3m0IqJV4F8h9x4wFwtWtjBmFCkR', '2020-01-27 09:55:46', '2020-01-27 09:55:46');
