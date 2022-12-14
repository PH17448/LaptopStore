-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th8 05, 2022 lúc 03:51 PM
-- Phiên bản máy phục vụ: 10.4.22-MariaDB
-- Phiên bản PHP: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `java6`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `accountroles`
--

CREATE TABLE `Authorities` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `roleid` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `accountroles`
--

INSERT INTO `Authorities` (`id`, `username`, `roleid`) VALUES
(1, 'user1', 'DIRE');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `accounts`
--

CREATE TABLE `Accounts` (
  `username` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `fullname` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `photo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `accounts`
--

INSERT INTO `Accounts` (`username`, `password`, `fullname`, `email`, `photo`) VALUES
('user1', '123456', 'hoang viet duc', 'duchvph17480@fpt.edu.vn', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `categories`
--

CREATE TABLE `Categories` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `categories`
--

INSERT INTO `Categories` (`id`, `name`) VALUES
(1, 'laptop'),
(2, 'Đồng hồ'),
(3, 'iphone'),
(4, 'Tivi'),
(5, 'Trang sức');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `orders`
--

CREATE TABLE `Orders` (
  `id` int(11) NOT NULL,
  `username` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `createdate` date NOT NULL,
  `address` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `orders`
--

INSERT INTO `Orders` (`id`, `username`, `createdate`, `address`) VALUES
(43, 'user1', '2022-08-05', 'Gia Lộc - Hải Dương'),
(44, 'user1', '2022-08-05', 'hd');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `order_details`
--

CREATE TABLE `OrderDetails` (
  `id` int(11) NOT NULL,
  `orderid` int(11) NOT NULL,
  `productid` int(11) NOT NULL,
  `price` float NOT NULL DEFAULT 0,
  `quantity` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `order_details`
--

INSERT INTO `OrderDetails` (`id`, `orderid`, `productid`, `price`, `quantity`) VALUES
(9, 43, 14, 105, 1),
(10, 43, 9, 28, 1),
(11, 44, 3, 163, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `products`
--

CREATE TABLE `Products` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `price` int(11) NOT NULL DEFAULT 0,
  `createdate` date NOT NULL DEFAULT current_timestamp(),
  `available` int(11) NOT NULL DEFAULT 1,
  `categoryid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `products`
--

INSERT INTO `Products` (`id`, `name`, `image`, `price`, `createdate`, `available`, `categoryid`) VALUES
(1, 'Lidia', '1022.jpg', 128, '2022-03-21', 1, 3),
(2, 'Hamil', '1002.jpg', 92, '2021-11-29', 1, 3),
(3, 'Nevsa', '1002.jpg', 163, '2022-04-07', 0, 2),
(4, 'Skipp', '1002.jpg', 187, '2021-11-29', 1, 3),
(5, 'Kessia', '1002.jpg', 178, '2022-02-08', 1, 2),
(6, 'Andria', '1002.jpg', 191, '2022-06-28', 0, 2),
(7, 'Tamera', '1002.jpg', 28, '2021-09-30', 0, 4),
(8, 'Abbey', '1002.jpg', 164, '2022-06-19', 0, 3),
(9, 'Karina', '1005.jpg', 28, '2022-04-20', 1, 1),
(10, 'Melodee', '1033.png', 164, '2022-05-05', 0, 2),
(11, 'Iorgo', '1044.jpg', 53, '2021-12-12', 1, 3),
(12, 'Ethelda', '1044.jpg', 7, '2021-09-13', 1, 5),
(13, 'Beitris', '1044.jpg', 100, '2021-12-16', 1, 3),
(14, 'Jo-anne', '1044.jpg', 105, '2022-04-05', 1, 1),
(15, 'Selia', '1044.jpg', 63, '2021-11-01', 0, 1),
(16, 'Terri', '1044.jpg', 181, '2022-03-20', 1, 3),
(17, 'Ray', '1044.jpg', 26, '2021-10-15', 1, 2),
(18, 'Arri', '1044.jpg', 134, '2022-06-10', 1, 3),
(19, 'Arabele', '1022.jpg', 100, '2021-12-03', 1, 4),
(20, 'Damaris', '1002.jpg', 67, '2022-06-21', 1, 2),
(21, 'Alejandro', '1002.jpg', 80, '2021-11-19', 1, 1),
(22, 'Amalle', '1002.jpg', 145, '2021-11-06', 0, 3),
(23, 'Birk', '1002.jpg', 88, '2021-12-04', 0, 3),
(24, 'Giffy', '1002.jpg', 131, '2021-08-06', 1, 4);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `roles`
--

CREATE TABLE `Roles` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `roles`
--

INSERT INTO `Roles` (`id`, `name`) VALUES
('CUST', 'customer'),
('DIRE', 'director'),
('STAF', 'staff');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `accountroles`
--
ALTER TABLE `accountroles`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `accounts`
--
ALTER TABLE `accounts`
  ADD PRIMARY KEY (`username`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Chỉ mục cho bảng `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `order_details`
--
ALTER TABLE `order_details`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `accountroles`
--
ALTER TABLE `accountroles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT cho bảng `order_details`
--
ALTER TABLE `order_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT cho bảng `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
