-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th10 05, 2021 lúc 09:03 AM
-- Phiên bản máy phục vụ: 10.4.14-MariaDB
-- Phiên bản PHP: 7.4.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `e-comm1`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `category`
--

CREATE TABLE `category` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `status` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `category`
--

INSERT INTO `category` (`id`, `name`, `status`) VALUES
(1, 'Giày', NULL),
(2, 'Máy tính', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `orderitems`
--

CREATE TABLE `orderitems` (
  `id` int(11) NOT NULL,
  `pid` int(10) UNSIGNED NOT NULL,
  `pquantity` int(11) NOT NULL,
  `oderid` int(11) NOT NULL,
  `productprice` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `orderitems`
--

INSERT INTO `orderitems` (`id`, `pid`, `pquantity`, `oderid`, `productprice`) VALUES
(9, 1, 1, 7, 13700000),
(10, 2, 1, 7, 9990000),
(11, 3, 2, 7, 21990000),
(12, 1, 1, 8, 13700000),
(13, 2, 1, 8, 9990000),
(14, 1, 1, 9, 13700000),
(15, 3, 1, 9, 21990000),
(16, 1, 1, 10, 13700000),
(17, 3, 2, 10, 21990000),
(18, 2, 1, 10, 9990000),
(34, 1, 1, 25, 13700000),
(35, 1, 1, 26, 13700000),
(36, 2, 1, 27, 9990000),
(37, 1, 1, 28, 13700000),
(38, 3, 1, 29, 21990000),
(39, 2, 1, 30, 9990000),
(40, 4, 1, 31, 20990000),
(41, 2, 1, 32, 9990000),
(42, 1, 1, 33, 1370),
(43, 3, 1, 34, 21990),
(44, 1, 1, 34, 1370),
(45, 1, 1, 35, 1370),
(46, 1, 1, 36, 1370),
(47, 2, 1, 37, 9990),
(48, 1, 1, 38, 1370),
(49, 1, 1, 39, 1370),
(50, 2, 1, 39, 9990),
(51, 1, 2, 40, 1370),
(52, 3, 1, 41, 21990),
(53, 1, 1, 41, 1370),
(54, 1, 2, 42, 1370),
(55, 3, 1, 43, 1000),
(56, 3, 1, 44, 1000),
(57, 2, 1, 44, 900),
(58, 1, 2, 45, 1370),
(59, 2, 1, 45, 900),
(60, 3, 1, 46, 1000),
(61, 1, 1, 46, 1370);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `uid` int(11) UNSIGNED NOT NULL,
  `totalprice` int(11) NOT NULL,
  `orderstatus` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `paymentmode` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `timestamp` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `orders`
--

INSERT INTO `orders` (`id`, `uid`, `totalprice`, `orderstatus`, `paymentmode`, `timestamp`) VALUES
(7, 1, 67670000, 'Order placed', 'cod', '2021-04-16 16:32:25'),
(8, 1, 23690000, 'Order placed', 'cod', '2021-04-16 16:33:46'),
(9, 1, 35690000, 'Order placed', 'cod', '2021-04-16 16:34:21'),
(10, 1, 67670000, 'Order placed', 'cod', '2021-05-05 09:52:57'),
(11, 1, 27400000, 'Order placed', 'cod', '2021-05-05 09:54:50'),
(12, 1, 13700000, 'Order placed', 'cod', '2021-05-05 09:57:04'),
(13, 1, 9990000, 'Order placed', 'cod', '2021-05-05 09:58:41'),
(14, 1, 13700000, 'Order placed', 'cod', '2021-05-05 10:01:58'),
(15, 1, 23690000, 'Order placed', 'cod', '2021-05-05 10:03:51'),
(16, 1, 13700000, 'Order placed', 'cod', '2021-05-05 10:05:00'),
(17, 1, 13700000, 'Order placed', 'cod', '2021-05-05 10:05:44'),
(18, 1, 13700000, 'Order placed', 'cod', '2021-05-05 10:07:28'),
(19, 1, 13700000, 'Order placed', 'cod', '2021-05-05 10:11:50'),
(20, 1, 13700000, 'Order placed', 'pal', '2021-05-05 10:12:44'),
(21, 1, 13700000, 'Order placed', 'cod', '2021-05-05 10:13:31'),
(22, 1, 13700000, 'Order placed', 'cod', '2021-05-05 10:15:21'),
(23, 1, 13700000, 'Order placed', 'cod', '2021-05-05 10:16:43'),
(24, 1, 13700000, 'Order placed', 'cod', '2021-05-05 10:17:20'),
(25, 1, 13700000, 'Order placed', 'cod', '2021-05-05 10:17:49'),
(26, 1, 13700000, 'Order placed', 'cod', '2021-05-05 10:18:41'),
(27, 1, 9990000, 'Order placed', 'cod', '2021-05-05 10:19:12'),
(28, 1, 13700000, 'Order placed', 'cod', '2021-05-05 10:20:24'),
(29, 1, 21990000, 'Order placed', 'cod', '2021-05-05 10:20:39'),
(30, 1, 9990000, 'Order placed', 'cod', '2021-05-05 10:21:04'),
(31, 1, 20990000, 'Order placed', 'cod', '2021-05-05 10:21:27'),
(32, 1, 9990000, 'Order placed', 'cod', '2021-05-05 10:21:41'),
(33, 1, 1370, 'Order placed', 'cod', '2021-05-05 10:23:05'),
(34, 1, 23360, 'Order placed', 'cod', '2021-05-05 10:24:14'),
(35, 1, 1370, 'Order placed', 'pal', '2021-05-05 11:31:03'),
(36, 1, 1370, 'Order placed', 'cod', '2021-05-05 11:33:53'),
(37, 1, 9990, 'Order placed', 'pal', '2021-05-05 11:34:08'),
(38, 1, 1370, 'Order placed', 'pal', '2021-05-05 11:34:32'),
(39, 1, 11360, 'Order placed', 'cod', '2021-05-05 11:38:51'),
(40, 1, 2740, 'Order placed', 'pal', '2021-05-05 12:01:19'),
(41, 1, 23360, 'Order placed', 'pal', '2021-05-05 12:10:06'),
(42, 1, 2740, 'Order placed', 'pal', '2021-05-05 13:26:04'),
(43, 1, 1000, 'Order placed', 'pal', '2021-05-05 13:37:16'),
(44, 1, 1900, 'Order placed', 'pal', '2021-05-05 13:40:04'),
(45, 1, 3640, 'Order placed', 'pal', '2021-05-05 16:06:17'),
(46, 1, 2370, 'Order placed', 'pal', '2021-10-07 20:48:35');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `products`
--

CREATE TABLE `products` (
  `id` int(10) UNSIGNED NOT NULL,
  `catid` int(5) UNSIGNED NOT NULL,
  `title` varchar(225) COLLATE utf8_unicode_ci NOT NULL,
  `price` int(11) NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `date_added` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `status` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `products`
--

INSERT INTO `products` (`id`, `catid`, `title`, `price`, `description`, `image`, `date_added`, `status`) VALUES
(1, 1, 'Adidas yeezy 350', 1370, 'Authentic:100%', '350.jpg', '2021-05-05 07:04:03', NULL),
(2, 1, 'Nike Air 1SHADOW ', 900, 'Authentic:100%', 'nike1.jpg', '2021-05-05 07:04:10', NULL),
(3, 1, 'AIR MAX 90', 1000, 'Authentic:100%', 'nike2.jpg', '2021-05-05 07:04:20', NULL),
(4, 1, 'AIR JORDAN 1', 2099, 'Authentic:100%', 'nike3.jpg', '2021-05-05 07:04:28', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` int(11) UNSIGNED NOT NULL,
  `type` enum('member','admin') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'member',
  `username` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(80) COLLATE utf8_unicode_ci NOT NULL,
  `pass` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `date_created` timestamp NOT NULL DEFAULT current_timestamp(),
  `date_expires` date NOT NULL,
  `date_modified` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `type`, `username`, `email`, `pass`, `date_created`, `date_expires`, `date_modified`) VALUES
(1, 'admin', 'nva', 'aaa@gmail.com', '123456', '2021-04-13 13:20:49', '2021-04-13', '2021-04-13 13:20:49'),
(2, 'member', 'nvb', 'bbb@gmail.com', '123456', '2021-04-13 13:20:49', '2021-04-13', '2021-04-13 13:20:49');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `usersmeta`
--

CREATE TABLE `usersmeta` (
  `id` int(11) NOT NULL,
  `uid` int(11) UNSIGNED NOT NULL,
  `firstname` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `lastname` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `company` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `address1` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `address2` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `city` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `state` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `country` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `zip` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `mobile` varchar(15) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `usersmeta`
--

INSERT INTO `usersmeta` (`id`, `uid`, `firstname`, `lastname`, `company`, `address1`, `address2`, `city`, `state`, `country`, `zip`, `mobile`) VALUES
(1, 1, '', '', '', '', '', '', '', '', '', '');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `orderitems`
--
ALTER TABLE `orderitems`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_orderid` (`oderid`),
  ADD KEY `FK_pid_order` (`pid`);

--
-- Chỉ mục cho bảng `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_uid_order` (`uid`);

--
-- Chỉ mục cho bảng `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_catid` (`catid`) USING BTREE;

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `usersmeta`
--
ALTER TABLE `usersmeta`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_uid_meta` (`uid`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `category`
--
ALTER TABLE `category`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `orderitems`
--
ALTER TABLE `orderitems`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;

--
-- AUTO_INCREMENT cho bảng `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT cho bảng `products`
--
ALTER TABLE `products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `usersmeta`
--
ALTER TABLE `usersmeta`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `orderitems`
--
ALTER TABLE `orderitems`
  ADD CONSTRAINT `FK_orderid` FOREIGN KEY (`oderid`) REFERENCES `orders` (`id`),
  ADD CONSTRAINT `FK_pid_order` FOREIGN KEY (`pid`) REFERENCES `products` (`id`);

--
-- Các ràng buộc cho bảng `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `FK_uid_order` FOREIGN KEY (`uid`) REFERENCES `users` (`id`);

--
-- Các ràng buộc cho bảng `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_ibfk_1` FOREIGN KEY (`catid`) REFERENCES `category` (`id`);

--
-- Các ràng buộc cho bảng `usersmeta`
--
ALTER TABLE `usersmeta`
  ADD CONSTRAINT `FK_uid_meta` FOREIGN KEY (`uid`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
