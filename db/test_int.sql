-- Buat query 
-- 'tampilkan semua inventory yang memiliki satuan m (meter) dan currency-nya IDR yang memiliki low stock <3'

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";

CREATE TABLE `categories` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `categories` (`id`, `name`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Fabric', '2025-05-16 05:01:14', '2025-05-16 05:01:14', NULL),
(8, 'Foam', '2025-05-19 07:01:43', '2025-05-19 07:01:43', NULL),
(9, 'Button', '2025-05-19 07:01:58', '2025-05-19 07:01:58', NULL),
(10, 'Zipper', '2025-05-19 07:02:52', '2025-05-19 07:02:52', NULL),
(11, 'Metal', '2025-05-19 07:03:05', '2025-05-19 07:03:05', NULL),
(12, 'Test Cat', '2025-05-19 07:58:52', '2025-05-19 07:58:52', NULL),
(13, 'test1', '2025-05-19 09:01:48', '2025-05-19 09:01:48', NULL),
(14, 'Busa', '2025-05-20 01:25:20', '2025-05-20 01:25:20', NULL),
(15, 'final test cat', '2025-05-20 06:36:05', '2025-05-20 06:36:05', NULL),
(16, 'test3', '2025-06-04 06:32:31', '2025-06-04 06:32:31', NULL),
(17, 'Kabel', '2025-06-09 04:01:00', '2025-06-09 04:01:00', NULL),
(18, 'llkk', '2025-06-09 07:38:46', '2025-06-09 07:38:46', NULL),
(19, 'Benang', '2025-06-09 07:58:45', '2025-06-09 07:58:45', NULL),
(20, 'Benang2', '2025-06-09 07:58:45', '2025-06-09 07:58:45', NULL),
(21, 'Jarum', '2025-06-10 03:30:14', '2025-06-10 03:30:14', NULL),
(22, 'Kertas', '2025-06-17 04:55:05', '2025-06-17 04:55:05', NULL),
(23, 'Electronic', '2025-06-18 02:35:40', '2025-06-18 02:35:40', NULL);

CREATE TABLE `currencies` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `exchange_rate` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `currencies` (`id`, `name`, `exchange_rate`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'USD', '16286.50', '2025-05-07 20:10:36', '2025-06-11 06:42:27', NULL),
(2, 'IDR', '1', '2025-05-07 20:10:53', '2025-05-07 23:21:32', NULL),
(5, 'SGD', '12671.96', '2025-05-07 23:21:45', '2025-06-09 02:28:10', NULL),
(6, 'RMB', '2265.72', '2025-05-07 23:21:54', '2025-06-09 02:28:43', NULL),
(15, 'TBH', '498.472', '2025-05-19 07:59:18', '2025-06-09 02:29:49', NULL),
(16, 'Rial', '10000', '2025-05-19 08:50:07', '2025-06-09 02:30:45', '2025-06-09 02:30:45'),
(17, 'SAU', '12000', '2025-05-19 08:50:49', '2025-06-09 02:30:52', '2025-06-09 02:30:52'),
(18, 'test', '1233', '2025-05-19 09:01:00', '2025-06-09 02:30:49', '2025-06-09 02:30:49'),
(19, 'test222', '2222', '2025-05-19 09:02:01', '2025-05-24 03:14:56', '2025-05-24 03:14:56'),
(20, 'fft', '23', '2025-05-19 09:13:07', '2025-05-23 02:05:53', '2025-05-23 02:05:53'),
(21, 'tesyyyy', '334', '2025-05-19 09:19:44', '2025-06-09 02:30:55', '2025-06-09 02:30:55'),
(22, 'testsssttt', '455', '2025-05-19 09:20:02', '2025-06-09 02:30:58', '2025-06-09 02:30:58'),
(23, 'sdcvsd', '4545', '2025-05-19 09:21:16', '2025-06-09 02:31:01', '2025-06-09 02:31:01'),
(24, 'asxcas', '23', '2025-05-20 03:52:09', '2025-05-24 02:25:40', '2025-05-24 02:25:40'),
(25, 'final test cury', '20000', '2025-05-20 06:36:40', '2025-06-09 02:31:04', '2025-06-09 02:31:04'),
(26, 'bhn', '56660', '2025-06-09 02:21:56', '2025-06-09 02:31:08', '2025-06-09 02:31:08'),
(27, 'MYR', '3848.02', '2025-06-09 02:31:22', '2025-06-09 02:31:22', NULL),
(28, 'JPY', '112.92', '2025-06-09 02:32:12', '2025-06-09 02:32:12', NULL),
(29, 'SAR', '4339.13', '2025-06-09 02:33:35', '2025-06-09 02:33:35', NULL),
(30, 'PHP', '291.99', '2025-06-09 02:34:33', '2025-06-09 02:34:33', NULL),
(31, 'Test556609', '23234', '2025-06-10 09:44:07', '2025-06-10 09:45:21', '2025-06-10 09:45:21'),
(32, 'cvgghy', '12', '2025-06-10 09:45:46', '2025-06-10 09:45:56', '2025-06-10 09:45:56'),
(33, 'testsss556ss', '12', '2025-06-10 09:47:49', '2025-06-10 09:48:06', '2025-06-10 09:48:06'),
(34, 'fgggdz', '34', '2025-06-10 09:50:59', '2025-06-11 04:46:11', '2025-06-11 04:46:11');

CREATE TABLE `inventories` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `quantity` decimal(8,2) NOT NULL,
  `unit` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  `supplier` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `currency_id` bigint UNSIGNED DEFAULT NULL,
  `location` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remark` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `img` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `qrcode_path` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `category_id` bigint UNSIGNED DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `inventories` (`id`, `name`, `quantity`, `unit`, `price`, `supplier`, `currency_id`, `location`, `remark`, `img`, `qrcode_path`, `created_at`, `updated_at`, `category_id`, `deleted_at`) VALUES
(58, 'Fabric 223', 339.40, 'mm', 2500.00, NULL, 6, 'Rack 3 Batam', NULL, 'images/CFqzHbQLMAUkIOsjx7iE7ag6XwtBl8oX7KmIxbFc.jpg', 'qrcodes/qr_683a8901cfbc6.svg', '2025-05-19 07:28:58', '2025-06-04 09:16:11', 1, NULL),
(59, 'Buttons 1', 317.40, 'pcs', 0.50, NULL, 5, 'Singapore', NULL, 'images/aYwSO3uyO1eF3eKfQvSqZ9fafM6vZXstGMGRDcgM.jpg', 'qrcodes/qr_682fdd1629683.svg', '2025-05-19 07:30:00', '2025-05-31 04:38:22', 9, '2025-05-31 04:38:22'),
(60, 'Buttons 2', 497.00, 'pack', 0.25, NULL, 1, 'Batam', NULL, 'images/kuBk9OHnTPF6YXQoUGsHTdIBUVityxZkTHdQX8ZZ.jpg', 'qrcodes/qr_682ae0a61b8fb.svg', '2025-05-19 07:31:00', '2025-06-17 07:01:25', 9, NULL),
(61, 'Foam 1', 50.00, 'm', 12000.00, NULL, 2, 'Rack 5', NULL, 'images/MyI4zCLVzse1nuHh2WBTaHtNmxmudSuO6DjrRsoj.jpg', 'qrcodes/qr_682ade57c7118.svg', '2025-05-19 07:31:35', '2025-05-27 08:34:47', 8, NULL),
(62, 'Foam 2', 20.50, 'kg', 1300.00, NULL, 6, 'Rack 5', NULL, 'images/TadRnNm3YJxNLKVTOC9YLpaosnELQRykx8Cum2fz.jpg', 'qrcodes/qr_682ade8e3152a.svg', '2025-05-19 07:32:30', '2025-06-04 06:56:21', 8, NULL),
(63, 'Zipper 1', 130.00, 'set', 2.00, NULL, 5, 'Batam 2', NULL, 'images/zG9Ng3mWP1sAMetg6Osmwix6SJREh8a7MGyCJniV.jpg', 'qrcodes/qr_682adee3d4810.svg', '2025-05-19 07:33:55', '2025-06-02 04:33:15', 10, NULL),
(64, 'Zipper 2', 490.00, 'pcs', 1.40, NULL, 1, 'Rack 4', NULL, 'images/LIL8BXOR6SR4TxGCG5rhllwaHdNukXziNsgA9x6Y.jpg', 'qrcodes/qr_682adf0ecccc5.svg', '2025-05-19 07:34:38', '2025-05-22 03:38:03', 10, NULL),
(65, 'Foam 3', 105.00, 'pcs', 20000.00, NULL, 2, 'rack 4', NULL, 'images/ltLYZMLCILT2PW0vwpWG1WK9qstwTsRCaGsfHXwS.jpg', 'qrcodes/qr_682ae01889494.svg', '2025-05-19 07:39:04', '2025-05-19 07:39:04', 8, NULL),
(66, 'Foam 4', 14.00, 'pack', 2.00, NULL, 5, 'rack 3', NULL, 'images/C46JybX6qaYsRr28kZrq9hfaK5oZcgTfYK2Y9D0Q.jpg', 'qrcodes/qr_682ae054366fe.svg', '2025-05-19 07:39:51', '2025-05-19 07:40:04', 8, NULL),
(67, 'Fabric 4', 234.00, 'cm', 3400.00, NULL, 6, 'rack 4', NULL, 'images/5biAk4B9XCpZzfyVRdht1uvxyrkJ4Qhli5fu7aya.jpg', 'qrcodes/qr_682ae07faf63e.svg', '2025-05-19 07:40:47', '2025-05-19 07:40:47', 1, NULL),
(68, 'Fabric 5', 378.00, 'kg', 4000.00, NULL, 6, 'rack 1', NULL, 'images/UGrKEVmZQdCRaxzaqOxb6vnxvtiQiD5XXvq2nzxt.jpg', 'qrcodes/qr_682ae0f4b4cbb.svg', '2025-05-19 07:42:44', '2025-05-19 07:42:44', 1, NULL),
(69, 'Button 4', 448.50, 'kg', 200.00, NULL, 2, 'rack 3', NULL, 'images/lqKjFQd3RO33i6QFaIbZdQOMsq89aG5btkL3t6AZ.jpg', 'qrcodes/qr_682ae1311f7f5.svg', '2025-05-19 07:43:45', '2025-06-25 02:13:16', 9, NULL),
(70, 'Fabric 7', 5.00, 'roll', 2700.00, NULL, 6, 'rack 1', NULL, 'images/oWL0AjWu2KW0P6jyGEcK9aQFI3DZFe5G4kvqU9jg.jpg', 'qrcodes/qr_682ae196514d0.svg', '2025-05-19 07:45:26', '2025-05-19 07:45:26', 1, NULL),
(71, 'Quick Mat', 200.00, 'dm', 20.00, NULL, 5, 'rack 3', NULL, 'inventory_images/uulwQ8atWvEz0KObNt9F9oT42BJJB5JxDdY38zkC.jpg', 'qrcodes/qr_682ae472d411e.svg', '2025-05-19 07:49:49', '2025-05-19 07:57:38', 11, NULL),
(72, 'Buttons 8', 993.00, 'pcs', 2000.00, NULL, 2, 'Rack 6', NULL, 'inventory_images/G3WOO8vGnYN5jkkEFhGUHH9nbRgTdcY3RRwA87PT.jpg', 'qrcodes/qr_682ae4426fee9.svg', '2025-05-19 07:52:22', '2025-06-03 02:10:48', 9, NULL),
(73, 'Metal 1', 232.00, 'kg', 0.00, NULL, NULL, NULL, NULL, NULL, NULL, '2025-05-19 08:03:56', '2025-06-10 01:52:29', NULL, '2025-06-10 01:52:29'),
(74, 'Test Material 2', 200.00, 'cm', 0.00, NULL, 15, NULL, NULL, NULL, 'qrcodes/qr_682ae90b1a45a.svg', '2025-05-19 08:05:03', '2025-05-19 08:17:15', 1, NULL),
(75, 'test fabric', 10.50, 'dm', NULL, NULL, NULL, NULL, NULL, NULL, 'qrcodes/qr_682ea3f97fc77.svg', '2025-05-19 08:26:00', '2025-06-09 06:07:39', 1, NULL),
(76, 'test5464', 34.00, 'cm', 2.00, NULL, 15, 'rack 1', NULL, 'inventory_images/idcPPU5ycCONrc3Mu4UR8twxke4vqPBnmG7o2YOP.jpg', 'qrcodes/qr_683d62b02b63c.svg', '2025-05-19 09:08:14', '2025-06-02 08:37:04', 9, NULL),
(77, 'dfbdfb', 45.00, 'cm', 0.00, NULL, NULL, NULL, NULL, NULL, 'qrcodes/qr_682fdd25f04f1.svg', '2025-05-19 09:26:40', '2025-05-23 02:27:50', 9, NULL),
(83, 'sdcfswd', 23.00, 'cm', NULL, NULL, NULL, NULL, NULL, NULL, 'qrcodes/qr_682bfbd413f63.svg', '2025-05-20 03:49:40', '2025-05-27 07:09:46', 9, NULL),
(84, 'ascasc', 36.00, 'dm', 200000.00, NULL, 15, 'rack 3', NULL, NULL, 'qrcodes/qr_68303ebaab0ed.svg', '2025-05-20 04:00:16', '2025-06-10 09:57:27', 9, NULL),
(85, 'rgbrt', 415.70, 'cm', 40000.00, NULL, 15, 'rack 1', NULL, 'inventory_images/8fcTzosKxgqt1R1Sz896hrm1rRYUFYXf4EXK3TWt.jpg', 'qrcodes/qr_68303e77874f6.svg', '2025-05-20 04:04:32', '2025-05-23 09:23:04', 9, NULL),
(86, 'final test mat', 293.10, 'final test unit', 3.00, NULL, 25, 'final test loc', NULL, 'inventory_images/pVP0NMrrE6UBLQIuBVqLZ97ybvP5TFxeAy8LtuKK.jpg', 'qrcodes/qr_682c2355f036d.svg', '2025-05-20 06:37:41', '2025-05-22 04:48:20', 15, '2025-05-22 04:48:20'),
(87, 'wefw', 34.78, 'cm', 45.04, NULL, 15, '2', NULL, NULL, 'qrcodes/qr_68303f7381817.svg', '2025-05-23 09:26:45', '2025-05-23 09:27:15', 14, NULL),
(88, 'testrrr', 2.00, 'cm', 23.00, 'kunmu', NULL, 'rack 3', NULL, NULL, 'qrcodes/qr_684107b8625ec.svg', '2025-06-02 08:52:56', '2025-06-05 02:58:00', 9, NULL),
(89, 'Lem biru', 32.00, 'Kantong', 3000.00, NULL, 15, NULL, NULL, NULL, 'qrcodes/qr_683fe8e94131c.svg', '2025-06-04 06:34:17', '2025-06-04 06:38:41', 16, NULL),
(90, 'Foam Biru', 48.00, 'm', 200.00, 'chengdu', 15, 'rack 3', NULL, 'inventory_images/Hf4gF0hYycJNIe5WfJZ1uEEwo35u5OUtxoZM4WDu.jpg', 'qrcodes/qr_68410701eee7f.svg', '2025-06-04 09:13:36', '2025-06-24 10:10:14', 9, NULL),
(91, 'ssr', 29.00, 'joule', 2.00, 'Dunia Benang', 1, 'Rack1', NULL, NULL, NULL, '2025-06-07 04:43:37', '2025-06-07 04:48:17', NULL, '2025-06-07 04:48:17'),
(92, 'ssr4', 30.00, 'joule', 3.00, 'Dunia Benang', 1, 'Rack2', NULL, NULL, NULL, '2025-06-07 04:43:37', '2025-06-07 04:48:19', NULL, '2025-06-07 04:48:19'),
(93, 'ssr6', 31.00, 'joule', 4.00, 'Dunia Benang', 1, 'Rack3', NULL, NULL, NULL, '2025-06-07 04:43:37', '2025-06-07 04:48:22', NULL, '2025-06-07 04:48:22'),
(94, 'ssr7', 32.00, 'joule', 5.00, 'Dunia Benang', 1, 'Rack4', NULL, NULL, NULL, '2025-06-07 04:43:37', '2025-06-07 04:48:25', NULL, '2025-06-07 04:48:25'),
(95, 'ssr2', 33.00, 'joule', 6.00, 'Dunia Benang', 1, 'Rack5', NULL, NULL, NULL, '2025-06-07 04:43:37', '2025-06-07 04:48:27', NULL, '2025-06-07 04:48:27'),
(96, 'ssr1', 34.00, 'joule', 7.00, 'Dunia Benang', 1, 'Rack6', NULL, NULL, NULL, '2025-06-07 04:43:37', '2025-06-07 04:48:30', NULL, '2025-06-07 04:48:30'),
(97, 'bbooy1', 29.00, 'joule', 2.00, 'Dunia Benang', 1, 'Rack1', NULL, NULL, 'qrcodes/qr_6843c47686f9c.svg', '2025-06-07 04:47:50', '2025-06-07 04:48:14', NULL, '2025-06-07 04:48:14'),
(98, 'bbooy2', 30.00, 'joule', 3.00, 'Dunia Benang', 1, 'Rack2', NULL, NULL, 'qrcodes/qr_6843c477c7652.svg', '2025-06-07 04:47:51', '2025-06-07 04:48:12', NULL, '2025-06-07 04:48:12'),
(99, 'bbooy3', 31.00, 'joule', 4.00, 'Dunia Benang', 1, 'Rack3', NULL, NULL, 'qrcodes/qr_6843c477cbed9.svg', '2025-06-07 04:47:51', '2025-06-07 04:48:10', NULL, '2025-06-07 04:48:10'),
(100, 'bbooy4', 32.00, 'joule', 5.00, 'Dunia Benang', 1, 'Rack4', NULL, NULL, 'qrcodes/qr_6843c477cfd8b.svg', '2025-06-07 04:47:51', '2025-06-07 04:48:07', NULL, '2025-06-07 04:48:07'),
(101, 'bbooy5', 33.00, 'joule', 6.00, 'Dunia Benang', 1, 'Rack5', NULL, NULL, 'qrcodes/qr_6843c477d3d53.svg', '2025-06-07 04:47:51', '2025-06-07 04:48:05', NULL, '2025-06-07 04:48:05'),
(102, 'bbooy6', 34.00, 'joule', 7.00, 'Dunia Benang', 1, 'Rack6', NULL, NULL, 'qrcodes/qr_6843c477d7596.svg', '2025-06-07 04:47:51', '2025-06-07 04:48:02', NULL, '2025-06-07 04:48:02'),
(103, 'Tali200mm8', 23.00, 'km', 35566.00, NULL, 2, NULL, NULL, NULL, NULL, '2025-06-07 05:22:30', '2025-06-07 05:22:30', NULL, NULL),
(104, 'Tali200mm88', 23.00, 'km', 35566.00, NULL, 2, NULL, NULL, NULL, NULL, '2025-06-07 05:28:50', '2025-06-07 05:28:50', NULL, NULL),
(105, 'Tali200mm66', 0.00, 'km', 2233.00, NULL, 2, NULL, NULL, NULL, NULL, '2025-06-07 05:35:58', '2025-06-07 05:35:58', NULL, NULL),
(106, 'Tali200mmbb', 0.00, '-', 0.00, NULL, NULL, NULL, NULL, NULL, NULL, '2025-06-07 05:48:09', '2025-06-07 05:48:09', NULL, NULL),
(107, 'Tali200cv', 2.50, 'gh', 0.00, NULL, NULL, NULL, NULL, 'inventory_images/wdiZLbHTdZNqr5rk3ctD6P64ikDVu8KMBx3pfHXS.jpg', 'qrcodes/qr_684ce1d86faeb.svg', '2025-06-07 05:50:39', '2025-06-14 02:43:37', 20, NULL),
(108, 'Tali200cv1', 11.57, 'gh', 0.00, NULL, 6, NULL, NULL, NULL, NULL, '2025-06-07 05:55:42', '2025-06-07 05:55:42', NULL, NULL),
(109, 'lvimagination1', 1.40, '-', 134.60, 'lv', 2, 'rack 2', NULL, NULL, 'qrcodes/qr_6843d669c2fc8.svg', '2025-06-07 06:03:47', '2025-06-07 06:04:25', 9, NULL),
(110, 'lvimagination2', 1.50, 'kl', 134.70, 'lv', NULL, 'rack 2', NULL, NULL, NULL, '2025-06-07 06:05:37', '2025-06-07 06:05:37', NULL, NULL),
(111, 'lvimagination3', 2.50, 'kl', 135.70, 'lv', NULL, 'rack 3', NULL, NULL, 'qrcodes/qr_6843d916aae22.svg', '2025-06-07 06:15:50', '2025-06-07 06:15:50', NULL, NULL),
(112, 'lvimagination4', 3.50, 'kl', 136.70, 'lv', NULL, 'rack 4', NULL, NULL, 'qrcodes/qr_6843d916b4d5a.svg', '2025-06-07 06:15:50', '2025-06-07 06:15:50', NULL, NULL),
(113, 'lvimagination2a', 1.50, 'kl', 134.70, 'lv', NULL, 'rack 2', NULL, NULL, 'qrcodes/qr_6843d9897be17.svg', '2025-06-07 06:17:45', '2025-06-07 06:17:45', NULL, NULL),
(114, 'lvimagination45', 3.50, 'kl', 136.70, 'lv', NULL, 'rack 4', NULL, NULL, 'qrcodes/qr_6843d98986668.svg', '2025-06-07 06:17:45', '2025-06-07 06:17:45', NULL, NULL),
(115, 'sstty', 23.00, 'km ', 2.00, 'indo', 1, 'Rack 1', NULL, NULL, 'qrcodes/qr_684652f3b0da9.svg', '2025-06-09 03:20:19', '2025-06-09 03:20:21', NULL, NULL),
(116, 'sstty2', 23.00, 'km', 2.00, 'indo', 1, 'Rack 1', NULL, 'inventory_images/PlC8t3PyFudBnwzEB5ZjEezxWjA5Y236862iY3Vx.png', 'qrcodes/qr_6848e938b13c1.svg', '2025-06-09 03:25:50', '2025-06-11 02:26:01', 20, NULL),
(117, 'ddrt', 0.00, '-', 0.00, NULL, NULL, NULL, NULL, NULL, 'qrcodes/qr_6846548141982.svg', '2025-06-09 03:26:57', '2025-06-09 06:06:56', NULL, '2025-06-09 06:06:56'),
(118, 'sstty3', 23.00, 'km ', 2.00, 'indo', 1, 'Rack 1', NULL, NULL, 'qrcodes/qr_684654814c85e.svg', '2025-06-09 03:26:57', '2025-06-09 03:26:57', NULL, NULL),
(119, 'Kabel 1', 16.00, 'm', 32.00, 'MalayCable', 27, 'rack 1', NULL, 'images/qcZ4QvOAYT6jR42NYeSwbEg0v743FOKOg9FIRHWR.jpg', 'qrcodes/qr_68465ce8af7e6.svg', '2025-06-09 04:02:48', '2025-06-09 04:05:22', 17, NULL),
(120, 'dfdfv', 2.00, 'cm', 220.00, 'dong chi', 1, 'rack 1', NULL, 'inventory_images/iT55LEivHK5bq7V22s33BHpx6oToHXdwUzlOV1pu.jpg', 'qrcodes/qr_6849459ba1cc8.svg', '2025-06-09 07:55:49', '2025-06-11 09:00:11', 18, NULL),
(121, 'dfdfv2', 3.00, 'cm', 221.00, 'dong chi', 1, 'rack 2', NULL, NULL, 'qrcodes/qr_6846938603adb.svg', '2025-06-09 07:55:50', '2025-06-09 07:55:50', 1, NULL),
(122, 'dfdfv3', 4.00, 'cm', 222.00, 'dong chi', 1, 'rack 3', NULL, NULL, 'qrcodes/qr_6846938607bbf.svg', '2025-06-09 07:55:50', '2025-06-09 07:55:50', 18, NULL),
(123, 'cfcf', 46.00, 'Gulung', 23.00, 'dunia', 6, 'Rack 2', NULL, NULL, 'qrcodes/qr_68469435e8196.svg', '2025-06-09 07:58:45', '2025-06-09 07:58:45', 19, NULL),
(124, 'cfcf2', 47.00, 'm', 24.00, 'dunia', 6, 'Rack 3', 'ssdd', 'inventory_images/0MeJsnXbAZ7rzDmfJNDgvnKgmleTctwosPynXGQQ.jpg', 'qrcodes/qr_6849406ee4ada.svg', '2025-06-09 07:59:27', '2025-06-11 08:38:06', 20, NULL),
(125, 'cfcf34', 48.00, 'Gulung', 25.00, 'dunia', 6, 'Rack 4', NULL, 'inventory_images/JbHv7ugrpbUFop5TrxorYXcLtwqjuxS4O0tYx5LD.jpg', 'qrcodes/qr_68493f879368f.svg', '2025-06-09 07:59:27', '2025-06-11 08:34:15', 19, NULL),
(126, 'testsss34', 177.00, 'cm', 200.00, 'chengdu', 28, 'rack 1', 'test remark', 'inventory_images/baDIlvXcDabdHGkbheNuhBzv41zsvvySjXLJk06P.jpg', 'qrcodes/qr_6849323383ce5.svg', '2025-06-09 08:47:57', '2025-06-11 07:37:23', 20, NULL),
(138, 'ctrl', 3.00, 'cm', 40000.00, 'ssd', 2, 'Rack 3', 'test', 'inventory_images/3LpsY62nhniCriDpPZ62i3rD2XqZj3BcxpQbqBXG.jpg', 'qrcodes/qr_684d05509cf9a.svg', '2025-06-10 09:22:30', '2025-06-14 05:14:56', 19, NULL),
(139, 'fftyuiop', 2.00, 'cm', 100.00, 'Dunia Jarum', 28, 'rack 1', 'test', NULL, 'qrcodes/qr_684d03472f8a5.svg', '2025-06-14 05:06:15', '2025-06-14 05:31:36', 19, '2025-06-14 05:31:36'),
(140, 'Fiber Optik', 5.00, 'm', 0.00, NULL, NULL, NULL, NULL, NULL, NULL, '2025-06-14 05:42:58', '2025-06-14 05:42:58', NULL, NULL),
(141, 'Lycra / New Double-Sided Healthy Fabric 079 Blue', 8.00, 'm', 25.00, 'Wei Li Ye 伟利业 - CCM', 6, '-', 'Becky Bunny Father', NULL, 'qrcodes/qr_684fcffea71dc.svg', '2025-06-16 08:04:14', '2025-06-16 08:04:17', 1, NULL),
(142, 'Fur / A material crystal super soft / #114 Brown dark orange', 19.50, 'm', 12.00, 'Hong Ye 新加坡群 鸿业', 6, '-', 'Becky Bunny Mother', NULL, 'qrcodes/qr_684fd001d9c1c.svg', '2025-06-16 08:04:17', '2025-06-16 08:04:17', 1, NULL),
(143, 'Fur / YII002A Material Crystal Super Soft-223# Peach', 2.00, 'm', 10.00, 'Yuan Hua 远华集团 - CCM', 6, '-', 'Becky Bunny Father', NULL, 'qrcodes/qr_684fd001ddaf8.svg', '2025-06-16 08:04:17', '2025-06-16 08:04:17', 1, NULL),
(144, 'Fur/ Thickened Crystal Super Soft WL-2022 / #152 Brownn', 20.00, 'm', 20.00, 'Li Tai Long 利泰隆 x CCM', 6, '-', 'Becky Bunny Mother', 'inventory_images/2qCbw8WC8i2THoWondkUra1NocimmGgL3KAEyaXY.jpg', 'qrcodes/qr_6852245b0cdb7.svg', '2025-06-16 08:04:17', '2025-06-18 02:28:43', 1, NULL),
(145, 'KUNMU 8002 #14 Yellow', 164.00, 'm', 14.00, 'Kun Mu 绍兴 坤木纺织 - CCM', 6, 'B1-4', 'Leftover FFFA Bear Plush Toys 2022, 23/07/2024 Dolphin 2024 minion land', NULL, 'qrcodes/qr_684fd001e5e97.svg', '2025-06-16 08:04:17', '2025-06-16 08:04:17', 1, NULL),
(146, 'AT004 Nylon Matte #78# Blue', 183.50, 'm', 20.00, 'An Tai 安泰 Antai Anruda X CCM 新加坡', 6, '-', 'NDP Soka headgear & Soka legging', NULL, 'qrcodes/qr_684fd001ea27b.svg', '2025-06-16 08:04:17', '2025-06-25 07:28:59', 1, NULL),
(147, 'Fur / A material crystal 1mm-172-blue', 2.00, 'm', 12.00, 'Hong Ye 新加坡群 鸿业', 6, '-', 'Comic con mascot', NULL, 'qrcodes/qr_684fd001ede31.svg', '2025-06-16 08:04:17', '2025-06-16 08:04:17', 1, NULL),
(148, 'Fur / S Crystal Ultra Soft / #149 Dark Blue', 2.00, 'm', 20.00, 'Li Tai Long 利泰隆 x CCM', 6, '-', 'Comic con mascot', NULL, 'qrcodes/qr_684fd001f1df8.svg', '2025-06-16 08:04:17', '2025-06-16 08:04:18', 1, NULL),
(149, 'Fur / S Crystal Ultra Soft / #025 skin colour', 1.00, 'm', 20.00, 'Li Tai Long 利泰隆 x CCM', 6, '-', 'Comic Con Mascot', NULL, 'qrcodes/qr_684fd00201ed7.svg', '2025-06-16 08:04:18', '2025-06-16 08:04:18', 1, NULL),
(150, 'testsss334', 5.00, 'cm', 20.00, 'Dunia Jarum', NULL, 'rack 1', 'NDP (From Quick Add)', NULL, 'qrcodes/qr_684fe118afe1b.svg', '2025-06-16 09:06:14', '2025-06-16 09:17:12', 19, NULL),
(151, 'Tapak Kuda', 2.00, 'cm', 210.00, 'chengdu', 27, 'rack 1', 'for NDP Blue', NULL, 'qrcodes/qr_684fdf485d136.svg', '2025-06-16 09:08:39', '2025-06-16 09:09:28', 20, NULL),
(152, 'Speaker', 3.00, 'Pasang', 2.00, 'sss', NULL, NULL, 'For Server (From Quick Add)', 'inventory_images/qz5fT960Nezf9J4dg14QsCGUMgi0ncAWeZ8IWTRm.jpg', 'qrcodes/qr_684fe1b18e6d8.svg', '2025-06-16 09:19:10', '2025-06-16 09:19:45', 20, NULL),
(153, 'Tisu', 23.00, 'pack', 13000.00, 'Indomaret', 2, 'Rack 4', 'tisu', 'inventory_images/vRzP0GEUxsk6iSP8hsm6qFplxjIN76OOAdqT5rmB.jpg', 'qrcodes/qr_68510686c7905.svg', '2025-06-17 06:09:10', '2025-06-24 09:51:52', 22, NULL),
(154, 'Battery', 23.00, 'final test unit', 200000.00, 'Dunia Jarum', 2, 'rack 1', 'ssdd', 'inventory_images/4sRttkFyr9BafkNiJW32vvJDaUJY2Bgghx2luQEb.jpg', 'qrcodes/qr_68522535ab3bb.svg', '2025-06-18 02:32:21', '2025-06-18 02:32:21', 13, NULL),
(155, 'UPS 9Ah', 5.00, 'pcs', 200000.00, 'HNS', 2, 'rack 1', '222334', 'inventory_images/duYfpBpwsFDWnPvM5BykaCtBDz34RxrwmelRrn46.jpg', NULL, '2025-06-18 02:36:13', '2025-06-18 02:36:13', 23, NULL),
(156, 'Botol Aki', 4.00, 'dm', 4500.00, 'Dunia Jarum', 2, 'rack 1', 'sdcvsd', 'inventory_images/LER2Z8Ox1xZZNaG1Qt5WCLRI7pPdXOCLvxRWNm2I.jpg', NULL, '2025-06-18 06:50:59', '2025-06-18 06:53:00', 19, NULL),
(157, 'jhmyh', 3.50, 'final test unit', 44.00, 'erfvedr', 28, 'dfvdf', '4532', 'inventory_images/9nhHV6Dm1sSr2Ax1r8zll2Z5dszd8B1smhVA44PL.jpg', NULL, '2025-06-18 10:05:39', '2025-06-25 02:11:07', 20, NULL),
(158, 'SKABA KNIT #3 GREY', 24.50, 'm', 0.00, 'Sen Gen', 6, NULL, 'LEFTOVER PROJECT MASKER (RAK B1-4)', NULL, NULL, '2025-06-30 01:22:42', '2025-06-30 01:22:42', 1, NULL),
(159, 'NEW DOUBLE SIDED CLOTH #53', 32.00, 'm', 0.00, 'Wei Li Ye 伟利业 - CCM', 6, NULL, 'LEFTOVER PROJECT NDP CHEER (RAK B1-4)', NULL, NULL, '2025-06-30 01:22:42', '2025-06-30 01:22:42', 1, NULL),
(160, 'HEALTHY LYCRA 020', 9.00, 'm', 20.00, 'Sheng Feng 盛丰健', 6, NULL, 'LEFTOVER PROJECT GIGCO HERO(RAK B1-4)', NULL, NULL, '2025-06-30 01:22:42', '2025-06-30 01:22:42', 1, NULL),
(161, 'HEALTHY LYCRA #13 GREEN', 28.00, 'm', 0.00, 'Wei Li Ye 伟利业 - CCM', 6, NULL, 'LEFTOVER PROJECT NDP MOTIVATOR(RAK B1-4)', NULL, NULL, '2025-06-30 01:22:42', '2025-06-30 01:22:42', 1, NULL),
(162, 'CSFUR # ARMY GREEN', 38.00, 'm', 0.00, 'OLD STOCK', 6, NULL, 'LEFTOVER PROJECT WHITE LODGE OLD STOCK 2016(RAK A1-2)', NULL, NULL, '2025-06-30 01:22:42', '2025-06-30 01:22:42', 1, NULL),
(163, 'CSFUR #1MM 083 RED', 30.00, 'm', 12.00, 'Hong Ye 新加坡群 鸿业', 6, NULL, 'LEFTOVER PROJECT FIBA PLUSH TOYS(RAK A1-2)', NULL, NULL, '2025-06-30 01:22:42', '2025-06-30 01:22:42', 1, NULL),
(164, 'CSFUR #PINK', 25.00, 'm', 0.00, 'OLD STOCK', 6, NULL, 'LEFTOVER PROJECT OLD STOCK 2016 (RAK A1-2)', NULL, NULL, '2025-06-30 01:22:42', '2025-06-30 01:22:42', 1, NULL),
(165, 'CSFUR # 1MM 76 CREAM', 15.00, 'm', 0.00, 'Hong Ye 新加坡群 鸿业', 6, NULL, 'LEFTOVER PROJECT SHARITY&FRIEND (RAK A1-2)', NULL, NULL, '2025-06-30 01:22:42', '2025-06-30 01:22:42', 1, NULL),
(166, 'SFUR 3MM #46 OFF WHITE', 13.00, 'm', 0.00, 'Li Tai Long 利泰隆 x CCM', 6, NULL, 'LEFTOVER PROJECT BCA MASCOT(RAK A1-2)', NULL, NULL, '2025-06-30 01:22:42', '2025-06-30 01:22:42', 1, NULL),
(167, 'CSFUR #67 GREY', 3.50, 'm', 0.00, 'Jin Hong 金虹布业', 6, NULL, 'LEFTOVER PROJECT HOODIE (RAK C1-4)', NULL, NULL, '2025-06-30 01:22:42', '2025-06-30 01:22:42', 1, NULL),
(168, 'CSFUR 3MM #53 YELLOW', 6.00, 'm', 0.00, 'Li Tai Long 利泰隆 x CCM', 6, NULL, 'LEFTOVER PROJECT SKM CHOR (RAK C1-4)', NULL, NULL, '2025-06-30 01:22:42', '2025-06-30 01:22:42', 1, NULL),
(169, 'CSFUR #55 LIGHT BLUE', 9.00, 'm', 15.00, 'Li Tai Long 利泰隆 x CCM', 6, NULL, 'LEFTOVER PROJECT ICE CUBE (RAK C1-4)', NULL, NULL, '2025-06-30 01:22:42', '2025-06-30 01:22:42', 1, NULL),
(170, 'CS FUR #40 GREEN', 41.00, 'm', 14.00, 'Li Tai Long 利泰隆 x CCM', 6, NULL, 'LEFTOVERS PROJECT TOOTZ (RAK A1-4)', NULL, NULL, '2025-06-30 01:22:42', '2025-06-30 01:22:42', 1, NULL),
(171, 'CS FUR #37 GREEN', 50.00, 'm', 14.00, 'Li Tai Long 利泰隆 x CCM', 6, NULL, 'LEFTOVERS PROJECT DARIA (RAK A1-4)', NULL, NULL, '2025-06-30 01:22:42', '2025-06-30 01:22:42', 1, NULL),
(172, 'CSFUR 20 YELLOW', 48.00, 'm', 0.00, 'Li Tai Long 利泰隆 x CCM', 6, NULL, 'LEFTOVER PROJECT FLUTTERSKY (RAK A1-3)', NULL, NULL, '2025-06-30 01:22:42', '2025-06-30 01:22:42', 1, NULL),
(173, 'CSFUR #400', 35.00, 'm', 0.00, 'OLD STOCK', 6, NULL, '(RAK A1-3)', NULL, NULL, '2025-06-30 01:22:42', '2025-06-30 01:22:42', 1, NULL),
(174, 'CSFUR A #A3 BLACK', 37.00, 'm', 0.00, 'Li Tai Long 利泰隆 x CCM', 6, NULL, 'LEFTOVER PROJECT STANDE MASCOT (RAK A1-3)', NULL, NULL, '2025-06-30 01:22:42', '2025-06-30 01:22:42', 1, NULL),
(175, 'CSFUR #039 ORANGE', 23.00, 'm', 0.00, 'OLD STOCK', 6, NULL, 'LEFTOVER PROJECT OCTOPUS (RAK A1-3)', NULL, NULL, '2025-06-30 01:22:42', '2025-06-30 01:22:42', 1, NULL),
(176, 'Polyester Glossy Lycra', 194.00, 'm', 30.00, 'Null supplier', 6, NULL, 'Chingay Transformation Leggings (2rolls)(212yard)', NULL, NULL, '2025-06-30 01:22:42', '2025-06-30 01:22:42', 1, NULL),
(177, 'Wheat Flower Ecru Brocade White Silver', 118.00, 'm', 2.00, 'Null supplier', 6, NULL, 'Chingay Chinese Dance Top Front (1297yard)', NULL, NULL, '2025-06-30 01:22:42', '2025-06-30 01:22:42', 1, NULL),
(178, 'Korean Velvet Green', 57.00, 'm', 14.00, 'Null supplier', 6, NULL, NULL, NULL, NULL, '2025-06-30 01:22:42', '2025-06-30 01:22:42', 1, NULL),
(179, 'Satin Encryted Strech', 665.00, 'm', 8.50, 'Null supplier', 6, NULL, 'Chingay Transformation Skirt (4rolls)(727yard)', NULL, NULL, '2025-06-30 01:22:42', '2025-06-30 01:22:42', 1, NULL),
(180, 'STRECH FUR', 30.00, 'm', 0.00, 'OLD STOCK', 6, NULL, 'LEFTOVERS PROJECT CORN WL (RAK A1-4)', NULL, NULL, '2025-06-30 01:22:42', '2025-06-30 01:22:42', 1, NULL),
(181, 'CS FUR #08 LIGHT GREEN', 60.00, 'm', 0.00, 'Li Tai Long 利泰隆 x CCM', 6, NULL, 'LEFTOVERS PROJECT PANDAN MASCOT (RAK A1-4)', NULL, NULL, '2025-06-30 01:22:42', '2025-06-30 01:22:42', 1, NULL);


CREATE TABLE `inventory_transactions` (
  `id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `units` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `units` (`id`, `name`, `created_at`, `updated_at`) VALUES
(13, 'cm', '2025-05-19 07:28:13', '2025-05-19 07:28:13'),
(14, 'mm', '2025-05-19 07:28:58', '2025-05-19 07:28:58'),
(15, 'pcs', '2025-05-19 07:30:00', '2025-05-19 07:30:00'),
(16, 'pack', '2025-05-19 07:31:00', '2025-05-19 07:31:00'),
(17, 'm', '2025-05-19 07:31:35', '2025-05-19 07:31:35'),
(18, 'kg', '2025-05-19 07:32:30', '2025-05-19 07:32:30'),
(19, 'set', '2025-05-19 07:33:55', '2025-05-19 07:33:55'),
(20, 'roll', '2025-05-19 07:45:26', '2025-05-19 07:45:26'),
(21, 'dm', '2025-05-19 07:49:49', '2025-05-19 07:49:49'),
(30, 'final test unit', '2025-05-20 06:37:41', '2025-05-20 06:37:41'),
(31, 'Kantong', '2025-06-04 06:34:17', '2025-06-04 06:34:17'),
(32, '-', '2025-06-07 05:48:09', '2025-06-07 05:48:09'),
(33, 'gh', '2025-06-07 05:50:39', '2025-06-07 05:50:39'),
(34, 'kl', '2025-06-07 06:03:47', '2025-06-07 06:03:47'),
(35, 'km ', '2025-06-09 03:20:19', '2025-06-09 03:20:19'),
(36, 'Gulung', '2025-06-09 07:58:45', '2025-06-09 07:58:45'),
(37, 'Pasang', '2025-06-16 09:19:10', '2025-06-16 09:19:10');

ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_name_unique` (`name`);

ALTER TABLE `currencies`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `currencies_name_unique` (`name`);

ALTER TABLE `inventories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `inventories_currency_id_foreign` (`currency_id`),
  ADD KEY `inventories_category_id_foreign` (`category_id`);

ALTER TABLE `inventory_transactions`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `units`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `units_name_unique` (`name`);

ALTER TABLE `categories`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

ALTER TABLE `currencies`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

ALTER TABLE `inventories`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=182;

ALTER TABLE `inventory_transactions`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

ALTER TABLE `units`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

ALTER TABLE `inventories`
  ADD CONSTRAINT `inventories_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`),
  ADD CONSTRAINT `inventories_currency_id_foreign` FOREIGN KEY (`currency_id`) REFERENCES `currencies` (`id`) ON DELETE SET NULL;
COMMIT;
