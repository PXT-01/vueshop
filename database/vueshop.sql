-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th5 22, 2021 lúc 09:51 AM
-- Phiên bản máy phục vụ: 10.4.17-MariaDB
-- Phiên bản PHP: 7.3.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `vueshop`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `admins`
--

CREATE TABLE `admins` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `level` int(11) NOT NULL DEFAULT 1,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `admins`
--

INSERT INTO `admins` (`id`, `name`, `email`, `password`, `token`, `phone`, `address`, `status`, `level`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'admin@gmail.com', '$2y$10$fOKrvopsQ49Mi7wpxPmpWe0X6udt0gxfs.vqzOLnTLxZNdxySUNE6', NULL, '0987196812', 'Thái Bình', 1, 100, 'PbXBecFJw4n6tDTYia5ouRLgk2akfJaXuzGIlI5O9qJq8HqAEYZUWoyFMa8d', NULL, '2021-05-21 03:55:23');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `cities`
--

CREATE TABLE `cities` (
  `id` varchar(5) NOT NULL,
  `name` varchar(100) NOT NULL,
  `areashipping` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `cities`
--

INSERT INTO `cities` (`id`, `name`, `areashipping`) VALUES
('01', 'Hà Nội', 50000),
('02', 'Hà Giang', 50000),
('04', 'Cao Bằng', 50000),
('06', 'Bắc Kạn', 50000),
('08', 'Tuyên Quang', 50000),
('10', 'Lào Cai', 50000),
('11', 'Điện Biên', 50000),
('12', 'Lai Châu', 50000),
('14', 'Sơn La', 50000),
('15', 'Yên Bái', 50000),
('17', 'Hòa Bình', 50000),
('19', 'Thái Nguyên', 50000),
('20', 'Lạng Sơn', 50000),
('22', 'Quảng Ninh', 50000),
('24', 'Bắc Giang', 50000),
('25', 'Phú Thọ', 50000),
('26', 'Vĩnh Phúc', 50000),
('27', 'Bắc Ninh', 50000),
('30', 'Hải Dương', 50000),
('31', 'Hải Phòng', 50000),
('33', 'Hưng Yên', 50000),
('34', 'Thái Bình', 50000),
('35', 'Hà Nam', 50000),
('36', 'Nam Định', 50000),
('37', 'Ninh Bình', 50000),
('38', 'Thanh Hóa', 50000),
('40', 'Nghệ An', 50000),
('42', 'Hà Tĩnh', 50000),
('44', 'Quảng Bình', 50000),
('45', 'Quảng Trị', 50000),
('46', 'Thừa Thiên Huế', 50000),
('48', 'Đà Nẵng', 50000),
('49', 'Quảng Nam', 50000),
('51', 'Quảng Ngãi', 50000),
('52', 'Bình Định', 50000),
('54', 'Phú Yên', 50000),
('56', 'Khánh Hòa', 50000),
('58', 'Ninh Thuận', 50000),
('60', 'Bình Thuận', 50000),
('62', 'Kon Tum', 50000),
('64', 'Gia Lai', 50000),
('66', 'Đắk Lắk', 0),
('67', 'Đắk Nông', 0),
('68', 'Lâm Đồng', 50000),
('70', 'Bình Phước', 50000),
('72', 'Tây Ninh', 50000),
('74', 'Bình Dương', 50000),
('75', 'Đồng Nai', 50000),
('77', 'Bà Rịa - Vũng Tàu', 50000),
('79', 'Hồ Chí Minh', 50000),
('80', 'Long An', 50000),
('82', 'Tiền Giang', 50000),
('83', 'Bến Tre', 50000),
('84', 'Trà Vinh', 50000),
('86', 'Vĩnh Long', 50000),
('87', 'Đồng Tháp', 50000),
('89', 'An Giang', 50000),
('91', 'Kiên Giang', 50000),
('92', 'Cần Thơ', 50000),
('93', 'Hậu Giang', 50000),
('94', 'Sóc Trăng', 50000),
('95', 'Bạc Liêu', 50000),
('96', 'Cà Mau', 50000);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `dborders`
--

CREATE TABLE `dborders` (
  `id` int(10) UNSIGNED NOT NULL,
  `username` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Khách vãng lai',
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order_status` int(11) NOT NULL DEFAULT 1,
  `order_total` decimal(12,0) NOT NULL,
  `ship_fee` decimal(12,0) NOT NULL DEFAULT 0,
  `order_totalpay` decimal(12,0) NOT NULL,
  `order_comment` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `id_user` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `dborders`
--

INSERT INTO `dborders` (`id`, `username`, `name`, `address`, `phone`, `email`, `order_status`, `order_total`, `ship_fee`, `order_totalpay`, `order_comment`, `shipping_name`, `shipping_phone`, `shipping_address`, `id_user`, `created_at`, `updated_at`) VALUES
(34, 'Khách vãng lai', 'Nguyễn Viết Tuấn Anh', 'Thái Bình - Quỳnh Phụ - Xã An Thanh', '0987196812', 'wliontb@gmail.com', 1, '131650', '50000', '181650', NULL, 'Nguyễn Viết Tuấn Anh', '0987196812', 'Thái Bình - Quỳnh Phụ - Xã An Thanh', 1, '2021-05-21 23:38:00', '2021-05-21 23:38:00');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `dbordersproduct`
--

CREATE TABLE `dbordersproduct` (
  `id` int(10) UNSIGNED NOT NULL,
  `order_pro_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order_pro_qty` int(11) NOT NULL,
  `order_pro_price` int(11) NOT NULL,
  `order_pro_total` int(11) NOT NULL,
  `id_product` int(10) UNSIGNED NOT NULL,
  `id_dborder` int(10) UNSIGNED NOT NULL,
  `comment` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `dbordersproduct`
--

INSERT INTO `dbordersproduct` (`id`, `order_pro_name`, `order_pro_qty`, `order_pro_price`, `order_pro_total`, `id_product`, `id_dborder`, `comment`, `created_at`, `updated_at`) VALUES
(37, 'File Tài Liệu Đứng Campus 5 Ngăn DF-5Y-G2 - Màu Xanh', 1, 43650, 43650, 79, 34, '', '2021-05-21 23:38:00', '2021-05-21 23:38:00'),
(38, 'Nghĩ Giàu & Làm Giàu (Tái Bản 2020)', 1, 88000, 88000, 81, 34, '', '2021-05-21 23:38:00', '2021-05-21 23:38:00');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `districts`
--

CREATE TABLE `districts` (
  `id` varchar(5) NOT NULL,
  `name` varchar(100) NOT NULL,
  `idcity` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `districts`
--

INSERT INTO `districts` (`id`, `name`, `idcity`) VALUES
('001', 'Ba Đình', '01'),
('002', 'Hoàn Kiếm', '01'),
('003', 'Tây Hồ', '01'),
('004', 'Long Biên', '01'),
('005', 'Cầu Giấy', '01'),
('006', 'Đống Đa', '01'),
('007', 'Hai Bà Trưng', '01'),
('008', 'Hoàng Mai', '01'),
('009', 'Thanh Xuân', '01'),
('016', 'Sóc Sơn', '01'),
('017', 'Đông Anh', '01'),
('018', 'Gia Lâm', '01'),
('019', 'Từ Liêm', '01'),
('020', 'Thanh Trì', '01'),
('024', 'Hà Giang', '02'),
('026', 'Đồng Văn', '02'),
('027', 'Mèo Vạc', '02'),
('028', 'Yên Minh', '02'),
('029', 'Quản Bạ', '02'),
('030', 'Vị Xuyên', '02'),
('031', 'Bắc Mê', '02'),
('032', 'Hoàng Su Phì', '02'),
('033', 'Xín Mần', '02'),
('034', 'Bắc Quang', '02'),
('035', 'Quang Bình', '02'),
('040', 'Cao Bằng', '04'),
('042', 'Bảo Lâm', '04'),
('043', 'Bảo Lạc', '04'),
('044', 'Thông Nông', '04'),
('045', 'Hà Quảng', '04'),
('046', 'Trà Lĩnh', '04'),
('047', 'Trùng Khánh', '04'),
('048', 'Hạ Lang', '04'),
('049', 'Quảng Uyên', '04'),
('050', 'Phục Hoà', '04'),
('051', 'Hoà An', '04'),
('052', 'Nguyên Bình', '04'),
('053', 'Thạch An', '04'),
('058', 'Bắc Kạn', '06'),
('060', 'Pác Nặm', '06'),
('061', 'Ba Bể', '06'),
('062', 'Ngân Sơn', '06'),
('063', 'Bạch Thông', '06'),
('064', 'Chợ Đồn', '06'),
('065', 'Chợ Mới', '06'),
('066', 'Na Rì', '06'),
('070', 'Tuyên Quang', '08'),
('072', 'Nà Hang', '08'),
('073', 'Chiêm Hóa', '08'),
('074', 'Hàm Yên', '08'),
('075', 'Yên Sơn', '08'),
('076', 'Sơn Dương', '08'),
('080', 'Lào Cai', '10'),
('082', 'Bát Xát', '10'),
('083', 'Mường Khương', '10'),
('084', 'Si Ma Cai', '10'),
('085', 'Bắc Hà', '10'),
('086', 'Bảo Thắng', '10'),
('087', 'Bảo Yên', '10'),
('088', 'Sa Pa', '10'),
('089', 'Văn Bàn', '10'),
('094', 'Điện Biên Phủ', '11'),
('095', 'Mường Lay', '11'),
('096', 'Mường Nhé', '11'),
('097', 'Mường Chà', '11'),
('098', 'Tủa Chùa', '11'),
('099', 'Tuần Giáo', '11'),
('100', 'Điện Biên', '11'),
('101', 'Điện Biên Đông', '11'),
('102', 'Mường Ảng', '11'),
('104', 'Lai Châu', '12'),
('106', 'Tam Đường', '12'),
('107', 'Mường Tè', '12'),
('108', 'Sìn Hồ', '12'),
('109', 'Phong Thổ', '12'),
('110', 'Than Uyên', '12'),
('111', 'Tân Uyên', '12'),
('116', 'Sơn La', '14'),
('118', 'Quỳnh Nhai', '14'),
('119', 'Thuận Châu', '14'),
('120', 'Mường La', '14'),
('121', 'Bắc Yên', '14'),
('122', 'Phù Yên', '14'),
('123', 'Mộc Châu', '14'),
('124', 'Yên Châu', '14'),
('125', 'Mai Sơn', '14'),
('126', 'Sông Mã', '14'),
('127', 'Sốp Cộp', '14'),
('132', 'Yên Bái', '15'),
('133', 'Nghĩa Lộ', '15'),
('135', 'Lục Yên', '15'),
('136', 'Văn Yên', '15'),
('137', 'Mù Cang Chải', '15'),
('138', 'Trấn Yên', '15'),
('139', 'Trạm Tấu', '15'),
('140', 'Văn Chấn', '15'),
('141', 'Yên Bình', '15'),
('148', 'Hòa Bình', '17'),
('150', 'Đà Bắc', '17'),
('151', 'Kỳ Sơn', '17'),
('152', 'Lương Sơn', '17'),
('153', 'Kim Bôi', '17'),
('154', 'Cao Phong', '17'),
('155', 'Tân Lạc', '17'),
('156', 'Mai Châu', '17'),
('157', 'Lạc Sơn', '17'),
('158', 'Yên Thủy', '17'),
('159', 'Lạc Thủy', '17'),
('164', 'Thái Nguyên', '19'),
('165', 'Sông Công', '19'),
('167', 'Định Hóa', '19'),
('168', 'Phú Lương', '19'),
('169', 'Đồng Hỷ', '19'),
('170', 'Võ Nhai', '19'),
('171', 'Đại Từ', '19'),
('172', 'Phổ Yên', '19'),
('173', 'Phú Bình', '19'),
('178', 'Lạng Sơn', '20'),
('180', 'Tràng Định', '20'),
('181', 'Bình Gia', '20'),
('182', 'Văn Lãng', '20'),
('183', 'Cao Lộc', '20'),
('184', 'Văn Quan', '20'),
('185', 'Bắc Sơn', '20'),
('186', 'Hữu Lũng', '20'),
('187', 'Chi Lăng', '20'),
('188', 'Lộc Bình', '20'),
('189', 'Đình Lập', '20'),
('193', 'Hạ Long', '22'),
('194', 'Móng Cái', '22'),
('195', 'Cẩm Phả', '22'),
('196', 'Uông Bí', '22'),
('198', 'Bình Liêu', '22'),
('199', 'Tiên Yên', '22'),
('200', 'Đầm Hà', '22'),
('201', 'Hải Hà', '22'),
('202', 'Ba Chẽ', '22'),
('203', 'Vân Đồn', '22'),
('204', 'Hoành Bồ', '22'),
('205', 'Đông Triều', '22'),
('206', 'Yên Hưng', '22'),
('207', 'Cô Tô', '22'),
('213', 'Bắc Giang', '24'),
('215', 'Yên Thế', '24'),
('216', 'Tân Yên', '24'),
('217', 'Lạng Giang', '24'),
('218', 'Lục Nam', '24'),
('219', 'Lục Ngạn', '24'),
('220', 'Sơn Động', '24'),
('221', 'Yên Dũng', '24'),
('222', 'Việt Yên', '24'),
('223', 'Hiệp Hòa', '24'),
('227', 'Việt Trì', '25'),
('228', 'Phú Thọ', '25'),
('230', 'Đoan Hùng', '25'),
('231', 'Hạ Hoà', '25'),
('232', 'Thanh Ba', '25'),
('233', 'Phù Ninh', '25'),
('234', 'Yên Lập', '25'),
('235', 'Cẩm Khê', '25'),
('236', 'Tam Nông', '25'),
('237', 'Lâm Thao', '25'),
('238', 'Thanh Sơn', '25'),
('239', 'Thanh Thuỷ', '25'),
('240', 'Tân Sơn', '25'),
('243', 'Vĩnh Yên', '26'),
('244', 'Phúc Yên', '26'),
('246', 'Lập Thạch', '26'),
('247', 'Tam Dương', '26'),
('248', 'Tam Đảo', '26'),
('249', 'Bình Xuyên', '26'),
('250', 'Mê Linh', '01'),
('251', 'Yên Lạc', '26'),
('252', 'Vĩnh Tường', '26'),
('253', 'Sông Lô', '26'),
('256', 'Bắc Ninh', '27'),
('258', 'Yên Phong', '27'),
('259', 'Quế Võ', '27'),
('260', 'Tiên Du', '27'),
('261', 'Từ Sơn', '27'),
('262', 'Thuận Thành', '27'),
('263', 'Gia Bình', '27'),
('264', 'Lương Tài', '27'),
('268', 'Hà Đông', '01'),
('269', 'Sơn Tây', '01'),
('271', 'Ba Vì', '01'),
('272', 'Phúc Thọ', '01'),
('273', 'Đan Phượng', '01'),
('274', 'Hoài Đức', '01'),
('275', 'Quốc Oai', '01'),
('276', 'Thạch Thất', '01'),
('277', 'Chương Mỹ', '01'),
('278', 'Thanh Oai', '01'),
('279', 'Thường Tín', '01'),
('280', 'Phú Xuyên', '01'),
('281', 'Ứng Hòa', '01'),
('282', 'Mỹ Đức', '01'),
('288', 'Hải Dương', '30'),
('290', 'Chí Linh', '30'),
('291', 'Nam Sách', '30'),
('292', 'Kinh Môn', '30'),
('293', 'Kim Thành', '30'),
('294', 'Thanh Hà', '30'),
('295', 'Cẩm Giàng', '30'),
('296', 'Bình Giang', '30'),
('297', 'Gia Lộc', '30'),
('298', 'Tứ Kỳ', '30'),
('299', 'Ninh Giang', '30'),
('300', 'Thanh Miện', '30'),
('303', 'Hồng Bàng', '31'),
('304', 'Ngô Quyền', '31'),
('305', 'Lê Chân', '31'),
('306', 'Hải An', '31'),
('307', 'Kiến An', '31'),
('308', 'Đồ Sơn', '31'),
('309', 'Kinh Dương', '31'),
('311', 'Thuỷ Nguyên', '31'),
('312', 'An Dương', '31'),
('313', 'An Lão', '31'),
('314', 'Kiến Thụy', '31'),
('315', 'Tiên Lãng', '31'),
('316', 'Vĩnh Bảo', '31'),
('317', 'Cát Hải', '31'),
('318', 'Bạch Long Vĩ', '31'),
('323', 'Hưng Yên', '33'),
('325', 'Văn Lâm', '33'),
('326', 'Văn Giang', '33'),
('327', 'Yên Mỹ', '33'),
('328', 'Mỹ Hào', '33'),
('329', 'Ân Thi', '33'),
('330', 'Khoái Châu', '33'),
('331', 'Kim Động', '33'),
('332', 'Tiên Lữ', '33'),
('333', 'Phù Cừ', '33'),
('336', 'Thái Bình', '34'),
('338', 'Quỳnh Phụ', '34'),
('339', 'Hưng Hà', '34'),
('340', 'Đông Hưng', '34'),
('341', 'Thái Thụy', '34'),
('342', 'Tiền Hải', '34'),
('343', 'Kiến Xương', '34'),
('344', 'Vũ Thư', '34'),
('347', 'Phủ Lý', '35'),
('349', 'Duy Tiên', '35'),
('350', 'Kim Bảng', '35'),
('351', 'Thanh Liêm', '35'),
('352', 'Bình Lục', '35'),
('353', 'Lý Nhân', '35'),
('356', 'Nam Định', '36'),
('358', 'Mỹ Lộc', '36'),
('359', 'Vụ Bản', '36'),
('360', 'Ý Yên', '36'),
('361', 'Nghĩa Hưng', '36'),
('362', 'Nam Trực', '36'),
('363', 'Trực Ninh', '36'),
('364', 'Xuân Trường', '36'),
('365', 'Giao Thủy', '36'),
('366', 'Hải Hậu', '36'),
('369', 'Ninh Bình', '37'),
('370', 'Tam Điệp', '37'),
('372', 'Nho Quan', '37'),
('373', 'Gia Viễn', '37'),
('374', 'Hoa Lư', '37'),
('375', 'Yên Khánh', '37'),
('376', 'Kim Sơn', '37'),
('377', 'Yên Mô', '37'),
('380', 'Thanh Hóa', '38'),
('381', 'Bỉm Sơn', '38'),
('382', 'Sầm Sơn', '38'),
('384', 'Mường Lát', '38'),
('385', 'Quan Hóa', '38'),
('386', 'Bá Thước', '38'),
('387', 'Quan Sơn', '38'),
('388', 'Lang Chánh', '38'),
('389', 'Ngọc Lặc', '38'),
('390', 'Cẩm Thủy', '38'),
('391', 'Thạch Thành', '38'),
('392', 'Hà Trung', '38'),
('393', 'Vĩnh Lộc', '38'),
('394', 'Yên Định', '38'),
('395', 'Thọ Xuân', '38'),
('396', 'Thường Xuân', '38'),
('397', 'Triệu Sơn', '38'),
('398', 'Thiệu Hoá', '38'),
('399', 'Hoằng Hóa', '38'),
('400', 'Hậu Lộc', '38'),
('401', 'Nga Sơn', '38'),
('402', 'Như Xuân', '38'),
('403', 'Như Thanh', '38'),
('404', 'Nông Cống', '38'),
('405', 'Đông Sơn', '38'),
('406', 'Quảng Xương', '38'),
('407', 'Tĩnh Gia', '38'),
('412', 'Vinh', '40'),
('413', 'Cửa Lò', '40'),
('414', 'Thái Hoà', '40'),
('415', 'Quế Phong', '40'),
('416', 'Quỳ Châu', '40'),
('417', 'Kỳ Sơn', '40'),
('418', 'Tương Dương', '40'),
('419', 'Nghĩa Đàn', '40'),
('420', 'Quỳ Hợp', '40'),
('421', 'Quỳnh Lưu', '40'),
('422', 'Con Cuông', '40'),
('423', 'Tân Kỳ', '40'),
('424', 'Anh Sơn', '40'),
('425', 'Diễn Châu', '40'),
('426', 'Yên Thành', '40'),
('427', 'Đô Lương', '40'),
('428', 'Thanh Chương', '40'),
('429', 'Nghi Lộc', '40'),
('430', 'Nam Đàn', '40'),
('431', 'Hưng Nguyên', '40'),
('436', 'Hà Tĩnh', '42'),
('437', 'Hồng Lĩnh', '42'),
('439', 'Hương Sơn', '42'),
('440', 'Đức Thọ', '42'),
('441', 'Vũ Quang', '42'),
('442', 'Nghi Xuân', '42'),
('443', 'Can Lộc', '42'),
('444', 'Hương Khê', '42'),
('445', 'Thạch Hà', '42'),
('446', 'Cẩm Xuyên', '42'),
('447', 'Kỳ Anh', '42'),
('448', 'Lộc Hà', '42'),
('450', 'Đồng Hới', '44'),
('452', 'Minh Hóa', '44'),
('453', 'Tuyên Hóa', '44'),
('454', 'Quảng Trạch', '44'),
('455', 'Bố Trạch', '44'),
('456', 'Quảng Ninh', '44'),
('457', 'Lệ Thủy', '44'),
('461', 'Đông Hà', '45'),
('462', 'Quảng Trị', '45'),
('464', 'Vĩnh Linh', '45'),
('465', 'Hướng Hóa', '45'),
('466', 'Gio Linh', '45'),
('467', 'Đa Krông', '45'),
('468', 'Cam Lộ', '45'),
('469', 'Triệu Phong', '45'),
('470', 'Hải Lăng', '45'),
('471', 'Cồn Cỏ', '45'),
('474', 'Huế', '46'),
('476', 'Phong Điền', '46'),
('477', 'Quảng Điền', '46'),
('478', 'Phú Vang', '46'),
('479', 'Hương Thủy', '46'),
('480', 'Hương Trà', '46'),
('481', 'A Lưới', '46'),
('482', 'Phú Lộc', '46'),
('483', 'Nam Đông', '46'),
('490', 'Liên Chiểu', '48'),
('491', 'Thanh Khê', '48'),
('492', 'Hải Châu', '48'),
('493', 'Sơn Trà', '48'),
('494', 'Ngũ Hành Sơn', '48'),
('495', 'Cẩm Lệ', '48'),
('497', 'Hoà Vang', '48'),
('498', 'Hoàng Sa', '48'),
('502', 'Tam Kỳ', '49'),
('503', 'Hội An', '49'),
('504', 'Tây Giang', '49'),
('505', 'Đông Giang', '49'),
('506', 'Đại Lộc', '49'),
('507', 'Điện Bàn', '49'),
('508', 'Duy Xuyên', '49'),
('509', 'Quế Sơn', '49'),
('510', 'Nam Giang', '49'),
('511', 'Phước Sơn', '49'),
('512', 'Hiệp Đức', '49'),
('513', 'Thăng Bình', '49'),
('514', 'Tiên Phước', '49'),
('515', 'Bắc Trà My', '49'),
('516', 'Nam Trà My', '49'),
('517', 'Núi Thành', '49'),
('518', 'Phú Ninh', '49'),
('519', 'Nông Sơn', '49'),
('522', 'Quảng Ngãi', '51'),
('524', 'Bình Sơn', '51'),
('525', 'Trà Bồng', '51'),
('526', 'Tây Trà', '51'),
('527', 'Sơn Tịnh', '51'),
('528', 'Tư Nghĩa', '51'),
('529', 'Sơn Hà', '51'),
('530', 'Sơn Tây', '51'),
('531', 'Minh Long', '51'),
('532', 'Nghĩa Hành', '51'),
('533', 'Mộ Đức', '51'),
('534', 'Đức Phổ', '51'),
('535', 'Ba Tơ', '51'),
('536', 'Lý Sơn', '51'),
('540', 'Qui Nhơn', '52'),
('542', 'An Lão', '52'),
('543', 'Hoài Nhơn', '52'),
('544', 'Hoài Ân', '52'),
('545', 'Phù Mỹ', '52'),
('546', 'Vĩnh Thạnh', '52'),
('547', 'Tây Sơn', '52'),
('548', 'Phù Cát', '52'),
('549', 'An Nhơn', '52'),
('550', 'Tuy Phước', '52'),
('551', 'Vân Canh', '52'),
('555', 'Tuy Hòa', '54'),
('557', 'Sông Cầu', '54'),
('558', 'Đồng Xuân', '54'),
('559', 'Tuy An', '54'),
('560', 'Sơn Hòa', '54'),
('561', 'Sông Hinh', '54'),
('562', 'Tây Hoà', '54'),
('563', 'Phú Hoà', '54'),
('564', 'Đông Hoà', '54'),
('568', 'Nha Trang', '56'),
('569', 'Cam Ranh', '56'),
('570', 'Cam Lâm', '56'),
('571', 'Vạn Ninh', '56'),
('572', 'Ninh Hòa', '56'),
('573', 'Khánh Vĩnh', '56'),
('574', 'Diên Khánh', '56'),
('575', 'Khánh Sơn', '56'),
('576', 'Trường Sa', '56'),
('582', 'Phan Rang-Tháp Chàm', '58'),
('584', 'Bác Ái', '58'),
('585', 'Ninh Sơn', '58'),
('586', 'Ninh Hải', '58'),
('587', 'Ninh Phước', '58'),
('588', 'Thuận Bắc', '58'),
('589', 'Thuận Nam', '58'),
('593', 'Phan Thiết', '60'),
('594', 'La Gi', '60'),
('595', 'Tuy Phong', '60'),
('596', 'Bắc Bình', '60'),
('597', 'Hàm Thuận Bắc', '60'),
('598', 'Hàm Thuận Nam', '60'),
('599', 'Tánh Linh', '60'),
('600', 'Đức Linh', '60'),
('601', 'Hàm Tân', '60'),
('602', 'Phú Quí', '60'),
('608', 'Kon Tum', '62'),
('610', 'Đắk Glei', '62'),
('611', 'Ngọc Hồi', '62'),
('612', 'Đắk Tô', '62'),
('613', 'Kon Plông', '62'),
('614', 'Kon Rẫy', '62'),
('615', 'Đắk Hà', '62'),
('616', 'Sa Thầy', '62'),
('617', 'Tu Mơ Rông', '62'),
('622', 'Pleiku', '64'),
('623', 'An Khê', '64'),
('624', 'Ayun Pa', '64'),
('625', 'Kbang', '64'),
('626', 'Đăk Đoa', '64'),
('627', 'Chư Păh', '64'),
('628', 'Ia Grai', '64'),
('629', 'Mang Yang', '64'),
('630', 'Kông Chro', '64'),
('631', 'Đức Cơ', '64'),
('632', 'Chư Prông', '64'),
('633', 'Chư Sê', '64'),
('634', 'Đăk Pơ', '64'),
('635', 'Ia Pa', '64'),
('637', 'Krông Pa', '64'),
('638', 'Phú Thiện', '64'),
('639', 'Chư Pưh', '64'),
('643', 'Buôn Ma Thuột', '66'),
('644', 'Buôn Hồ', '66'),
('645', 'Ea H\'leo', '66'),
('646', 'Ea Súp', '66'),
('647', 'Buôn Đôn', '66'),
('648', 'Cư M\'gar', '66'),
('649', 'Krông Búk', '66'),
('650', 'Krông Năng', '66'),
('651', 'Ea Kar', '66'),
('652', 'M\'đrắk', '66'),
('653', 'Krông Bông', '66'),
('654', 'Krông Pắc', '66'),
('655', 'Krông A Na', '66'),
('656', 'Lắk', '66'),
('657', 'Cư Kuin', '66'),
('660', 'Gia Nghĩa', '67'),
('661', 'Đắk Glong', '67'),
('662', 'Cư Jút', '67'),
('663', 'Đắk Mil', '67'),
('664', 'Krông Nô', '67'),
('665', 'Đắk Song', '67'),
('666', 'Đắk R\'lấp', '67'),
('667', 'Tuy Đức', '67'),
('672', 'Đà Lạt', '68'),
('673', 'Bảo Lộc', '68'),
('674', 'Đam Rông', '68'),
('675', 'Lạc Dương', '68'),
('676', 'Lâm Hà', '68'),
('677', 'Đơn Dương', '68'),
('678', 'Đức Trọng', '68'),
('679', 'Di Linh', '68'),
('680', 'Bảo Lâm', '68'),
('681', 'Đạ Huoai', '68'),
('682', 'Đạ Tẻh', '68'),
('683', 'Cát Tiên', '68'),
('688', 'Phước Long', '70'),
('689', 'Đồng Xoài', '70'),
('690', 'Bình Long', '70'),
('691', 'Bù Gia Mập', '70'),
('692', 'Lộc Ninh', '70'),
('693', 'Bù Đốp', '70'),
('694', 'Hớn Quản', '70'),
('695', 'Đồng Phù', '70'),
('696', 'Bù Đăng', '70'),
('697', 'Chơn Thành', '70'),
('703', 'Tây Ninh', '72'),
('705', 'Tân Biên', '72'),
('706', 'Tân Châu', '72'),
('707', 'Dương Minh Châu', '72'),
('708', 'Châu Thành', '72'),
('709', 'Hòa Thành', '72'),
('710', 'Gò Dầu', '72'),
('711', 'Bến Cầu', '72'),
('712', 'Trảng Bàng', '72'),
('718', 'Thủ Dầu Một', '74'),
('720', 'Dầu Tiếng', '74'),
('721', 'Bến Cát', '74'),
('722', 'Phú Giáo', '74'),
('723', 'Tân Uyên', '74'),
('724', 'Dĩ An', '74'),
('725', 'Thuận An', '74'),
('731', 'Biên Hòa', '75'),
('732', 'Long Khánh', '75'),
('734', 'Tân Phú', '75'),
('735', 'Vĩnh Cửu', '75'),
('736', 'Định Quán', '75'),
('737', 'Trảng Bom', '75'),
('738', 'Thống Nhất', '75'),
('739', 'Cẩm Mỹ', '75'),
('740', 'Long Thành', '75'),
('741', 'Xuân Lộc', '75'),
('742', 'Nhơn Trạch', '75'),
('747', 'Vũng Tầu', '77'),
('748', 'Bà Rịa', '77'),
('750', 'Châu Đức', '77'),
('751', 'Xuyên Mộc', '77'),
('752', 'Long Điền', '77'),
('753', 'Đất Đỏ', '77'),
('754', 'Tân Thành', '77'),
('755', 'Côn Đảo', '77'),
('760', '1', '79'),
('761', '12', '79'),
('762', 'Thủ Đức', '79'),
('763', '9', '79'),
('764', 'Gò Vấp', '79'),
('765', 'Bình Thạnh', '79'),
('766', 'Tân Bình', '79'),
('767', 'Tân Phú', '79'),
('768', 'Phú Nhuận', '79'),
('769', '2', '79'),
('770', '3', '79'),
('771', '10', '79'),
('772', '11', '79'),
('773', '4', '79'),
('774', '5', '79'),
('775', '6', '79'),
('776', '8', '79'),
('777', 'Bình Tân', '79'),
('778', '7', '79'),
('783', 'Củ Chi', '79'),
('784', 'Hóc Môn', '79'),
('785', 'Bình Chánh', '79'),
('786', 'Nhà Bè', '79'),
('787', 'Cần Giờ', '79'),
('794', 'Tân An', '80'),
('796', 'Tân Hưng', '80'),
('797', 'Vĩnh Hưng', '80'),
('798', 'Mộc Hóa', '80'),
('799', 'Tân Thạnh', '80'),
('800', 'Thạnh Hóa', '80'),
('801', 'Đức Huệ', '80'),
('802', 'Đức Hòa', '80'),
('803', 'Bến Lức', '80'),
('804', 'Thủ Thừa', '80'),
('805', 'Tân Trụ', '80'),
('806', 'Cần Đước', '80'),
('807', 'Cần Giuộc', '80'),
('808', 'Châu Thành', '80'),
('815', 'Mỹ Tho', '82'),
('816', 'Gò Công', '82'),
('818', 'Tân Phước', '82'),
('819', 'Cái Bè', '82'),
('820', 'Cai Lậy', '82'),
('821', 'Châu Thành', '82'),
('822', 'Chợ Gạo', '82'),
('823', 'Gò Công Tây', '82'),
('824', 'Gò Công Đông', '82'),
('825', 'Tân Phú Đông', '82'),
('829', 'Bến Tre', '83'),
('831', 'Châu Thành', '83'),
('832', 'Chợ Lách', '83'),
('833', 'Mỏ Cày Nam', '83'),
('834', 'Giồng Trôm', '83'),
('835', 'Bình Đại', '83'),
('836', 'Ba Tri', '83'),
('837', 'Thạnh Phú', '83'),
('838', 'Mỏ Cày Bắc', '83'),
('842', 'Trà Vinh', '84'),
('844', 'Càng Long', '84'),
('845', 'Cầu Kè', '84'),
('846', 'Tiểu Cần', '84'),
('847', 'Châu Thành', '84'),
('848', 'Cầu Ngang', '84'),
('849', 'Trà Cú', '84'),
('850', 'Duyên Hải', '84'),
('855', 'Vĩnh Long', '86'),
('857', 'Long Hồ', '86'),
('858', 'Mang Thít', '86'),
('859', 'Vũng Liêm', '86'),
('860', 'Tam Bình', '86'),
('861', 'Bình Minh', '86'),
('862', 'Trà Ôn', '86'),
('863', 'Bình Tân', '86'),
('866', 'Cao Lãnh', '87'),
('867', 'Sa Đéc', '87'),
('868', 'Hồng Ngự', '87'),
('869', 'Tân Hồng', '87'),
('870', 'Hồng Ngự', '87'),
('871', 'Tam Nông', '87'),
('872', 'Tháp Mười', '87'),
('873', 'Cao Lãnh', '87'),
('874', 'Thanh Bình', '87'),
('875', 'Lấp Vò', '87'),
('876', 'Lai Vung', '87'),
('877', 'Châu Thành', '87'),
('883', 'Long Xuyên', '89'),
('884', 'Châu Đốc', '89'),
('886', 'An Phú', '89'),
('887', 'Tân Châu', '89'),
('888', 'Phú Tân', '89'),
('889', 'Châu Phú', '89'),
('890', 'Tịnh Biên', '89'),
('891', 'Tri Tôn', '89'),
('892', 'Châu Thành', '89'),
('893', 'Chợ Mới', '89'),
('894', 'Thoại Sơn', '89'),
('899', 'Rạch Giá', '91'),
('900', 'Hà Tiên', '91'),
('902', 'Kiên Lương', '91'),
('903', 'Hòn Đất', '91'),
('904', 'Tân Hiệp', '91'),
('905', 'Châu Thành', '91'),
('906', 'Giồng Giềng', '91'),
('907', 'Gò Quao', '91'),
('908', 'An Biên', '91'),
('909', 'An Minh', '91'),
('910', 'Vĩnh Thuận', '91'),
('911', 'Phú Quốc', '91'),
('912', 'Kiên Hải', '91'),
('913', 'U Minh Thượng', '91'),
('914', 'Giang Thành', '91'),
('916', 'Ninh Kiều', '92'),
('917', 'Ô Môn', '92'),
('918', 'Bình Thuỷ', '92'),
('919', 'Cái Răng', '92'),
('923', 'Thốt Nốt', '92'),
('924', 'Vĩnh Thạnh', '92'),
('925', 'Cờ Đỏ', '92'),
('926', 'Phong Điền', '92'),
('927', 'Thới Lai', '92'),
('930', 'Vị Thanh', '93'),
('931', 'Ngã Bảy', '93'),
('932', 'Châu Thành A', '93'),
('933', 'Châu Thành', '93'),
('934', 'Phụng Hiệp', '93'),
('935', 'Vị Thuỷ', '93'),
('936', 'Long Mỹ', '93'),
('941', 'Sóc Trăng', '94'),
('942', 'Châu Thành', '94'),
('943', 'Kế Sách', '94'),
('944', 'Mỹ Tú', '94'),
('945', 'Cù Lao Dung', '94'),
('946', 'Long Phú', '94'),
('947', 'Mỹ Xuyên', '94'),
('948', 'Ngã Năm', '94'),
('949', 'Thạnh Trị', '94'),
('950', 'Vĩnh Châu', '94'),
('951', 'Trần Đề', '94'),
('954', 'Bạc Liêu', '95'),
('956', 'Hồng Dân', '95'),
('957', 'Phước Long', '95'),
('958', 'Vĩnh Lợi', '95'),
('959', 'Giá Rai', '95'),
('960', 'Đông Hải', '95'),
('961', 'Hoà Bình', '95'),
('964', 'Cà Mau', '96'),
('966', 'U Minh', '96'),
('967', 'Thới Bình', '96'),
('968', 'Trần Văn Thời', '96'),
('969', 'Cái Nước', '96'),
('970', 'Đầm Dơi', '96'),
('971', 'Năm Căn', '96'),
('972', 'Phú Tân', '96'),
('973', 'Ngọc Hiển', '96');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `listnews`
--

CREATE TABLE `listnews` (
  `id` int(10) UNSIGNED NOT NULL,
  `list_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `list_number` int(11) DEFAULT NULL,
  `list_type` int(11) NOT NULL DEFAULT 0,
  `list_icon` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT '/images/noimg.jpg',
  `list_description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `list_slug` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_modnews` int(10) UNSIGNED NOT NULL,
  `mod_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `listnews`
--

INSERT INTO `listnews` (`id`, `list_name`, `list_number`, `list_type`, `list_icon`, `list_description`, `list_slug`, `id_modnews`, `mod_name`, `created_at`, `updated_at`) VALUES
(5, 'Truyện tranh Manga Nhật Bản', 1, 1, '/images/ListNews/1621653982.png', 'Truyện tranh Manga Nhật Bản', 'truyen-tranh-manga-nhat-ban', 4, 'Tin Truyện Tranh', NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `listproducts`
--

CREATE TABLE `listproducts` (
  `id` int(10) UNSIGNED NOT NULL,
  `list_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `list_number` int(11) DEFAULT NULL,
  `list_type` int(11) NOT NULL DEFAULT 0,
  `list_icon` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT '/images/noimg.jpg	',
  `list_description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `list_slug` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_mod` int(10) UNSIGNED NOT NULL,
  `mod_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `listproducts`
--

INSERT INTO `listproducts` (`id`, `list_name`, `list_number`, `list_type`, `list_icon`, `list_description`, `list_slug`, `id_mod`, `mod_name`, `created_at`, `updated_at`) VALUES
(19, 'Sách văn học', 1, 1, '/images/ListProduct/1621622243.png', 'Sách văn học', 'sach-van-hoc', 18, 'Sách trong nước', NULL, NULL),
(20, 'Sách thiếu nhi', 2, 1, '/images/ListProduct/1621622269.png', 'Sách thiếu nhi', 'sach-thieu-nhi', 18, 'Sách trong nước', NULL, NULL),
(21, 'Sách kinh tế', 3, 1, '/images/ListProduct/1621622281.png', 'Sách kinh tế', 'sach-kinh-te', 18, 'Sách trong nước', NULL, NULL),
(22, 'Dụng cụ vẽ', 1, 1, '/images/ListProduct/1621622360.png', 'Dụng cụ vẽ', 'dung-cu-ve', 20, 'Dụng cụ học tập', NULL, NULL),
(23, 'Dụng cụ văn phòng', 2, 1, '/images/ListProduct/1621622388.png', 'Dụng cụ văn phòng', 'dung-cu-van-phong', 20, 'Dụng cụ học tập', NULL, NULL),
(24, 'Tiểu thuyết', 1, 1, '/images/ListProduct/1621622442.png', 'Tiểu thuyết', 'tieu-thuyet', 19, 'Sách nước ngoài', NULL, NULL),
(25, 'Sách kinh tế', 2, 1, '/images/ListProduct/1621622492.png', 'Sách kinh tế', 'sach-kinh-te', 19, 'Sách nước ngoài', NULL, NULL),
(26, 'Truyện Tranh', 3, 1, '/images/ListProduct/1621652140.png', 'Comic, Manga, Truyện Tranh nước ngoài', 'truyen-tranh', 19, 'Sách nước ngoài', NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `modnews`
--

CREATE TABLE `modnews` (
  `id` int(10) UNSIGNED NOT NULL,
  `mod_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mod_number` int(11) DEFAULT NULL,
  `mod_type` int(11) NOT NULL DEFAULT 0,
  `mod_icon` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT '/images/noimg.jpg',
  `mod_description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mod_slug` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `modnews`
--

INSERT INTO `modnews` (`id`, `mod_name`, `mod_number`, `mod_type`, `mod_icon`, `mod_description`, `mod_slug`, `created_at`, `updated_at`) VALUES
(3, 'Khuyến mãi', 1, 1, '/images/ModNews/1621653911.png', 'Thông tin khuyến mãi từ website', 'khuyen-mai', NULL, NULL),
(4, 'Tin Truyện Tranh', 2, 1, '/images/ModNews/1621653955.png', 'Tin tức về truyện tranh', 'tin-truyen-tranh', NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `modproducts`
--

CREATE TABLE `modproducts` (
  `id` int(10) UNSIGNED NOT NULL,
  `mod_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mod_number` int(11) DEFAULT NULL,
  `mod_type` int(11) NOT NULL DEFAULT 0,
  `mod_icon` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '/images/noimg.jpg',
  `mod_description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mod_slug` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `modproducts`
--

INSERT INTO `modproducts` (`id`, `mod_name`, `mod_number`, `mod_type`, `mod_icon`, `mod_description`, `mod_slug`, `created_at`, `updated_at`) VALUES
(18, 'Sách trong nước', 1, 2, '/images/ModProduct/1621608056.png', 'Sách Việt Nam', 'sach-trong-nuoc', NULL, NULL),
(19, 'Sách nước ngoài', 2, 1, '/images/ModProduct/1621608225.png', 'Sách nước ngoài, sách quốc tế', 'sach-nuoc-ngoai', NULL, NULL),
(20, 'Dụng cụ học tập', 3, 1, '/images/ModProduct/1621614632.png', 'Văn phòng phẩm, dụng cụ học sinh', 'dung-cu-hoc-tap', NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `news`
--

CREATE TABLE `news` (
  `id` int(10) UNSIGNED NOT NULL,
  `news_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `news_slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `news_video` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `news_intro` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `news_content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `news_image` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `news_keywords` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `news_tags` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `news_number` int(11) NOT NULL DEFAULT 1,
  `news_viewcound` int(11) NOT NULL DEFAULT 0,
  `id_listnews` int(10) UNSIGNED NOT NULL,
  `list_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `news`
--

INSERT INTO `news` (`id`, `news_name`, `news_slug`, `news_video`, `news_intro`, `news_content`, `news_image`, `news_keywords`, `news_tags`, `news_number`, `news_viewcound`, `id_listnews`, `list_name`, `created_at`, `updated_at`) VALUES
(6, 'One Piece: Những homies của Big Mom đều được tạo ra dựa trên một phần nhân cách của bà ta?', 'one-piece-nhung-homies-cua-big-mom-deu-duoc-tao-ra-dua-tren-mot-phan-nhan-cach-cua-ba-ta', NULL, '<p>Trong&nbsp;<a href=\"https://gamek.vn/one-piece.htm\" target=\"_blank\">One Piece</a>, Zeus giống như một ch&uacute; &quot;vịt con xấu x&iacute;&quot; trong số c&aacute;c homies đang chiến đấu c&ugrave;ng với Big Mom. N&oacute; thường tỏ ra kh&aacute;c biệt với những t&ecirc;n homies kh&aacute;c, v&agrave; dường như kh&ocirc;ng hợp t&iacute;nh, kh&ocirc;ng thuộc về phần c&ograve;n lại của Big Mom. Kh&ocirc;ng giống với Hera - một homies mới xuất hiện của Big Mom, Zeus thậm ch&iacute; c&ograve;n kh&ocirc;ng thể phối hợp với Napoleon hay Prometheus để chiến đấu. Đ&ocirc;i l&uacute;c, n&oacute; c&ograve;n ch&iacute;nh l&agrave; nguy&ecirc;n nh&acirc;n ngăn cản hai t&ecirc;n homies kia, khiến ch&uacute;ng gặp rắc rối.</p>', '<p>Trong&nbsp;<a href=\"https://gamek.vn/one-piece.htm\" target=\"_blank\">One Piece</a>, Zeus giống như một ch&uacute; &quot;vịt con xấu x&iacute;&quot; trong số c&aacute;c homies đang chiến đấu c&ugrave;ng với Big Mom. N&oacute; thường tỏ ra kh&aacute;c biệt với những t&ecirc;n homies kh&aacute;c, v&agrave; dường như kh&ocirc;ng hợp t&iacute;nh, kh&ocirc;ng thuộc về phần c&ograve;n lại của Big Mom. Kh&ocirc;ng giống với Hera - một homies mới xuất hiện của Big Mom, Zeus thậm ch&iacute; c&ograve;n kh&ocirc;ng thể phối hợp với Napoleon hay Prometheus để chiến đấu. Đ&ocirc;i l&uacute;c, n&oacute; c&ograve;n ch&iacute;nh l&agrave; nguy&ecirc;n nh&acirc;n ngăn cản hai t&ecirc;n homies kia, khiến ch&uacute;ng gặp rắc rối.</p>\n\n<p><a href=\"https://gamek.mediacdn.vn/133514250583805952/2021/5/21/photo-1-16215697879171896481012.jpg\" target=\"_blank\"><img alt=\"One Piece: Những homies của Big Mom đều được tạo ra dựa trên một phần nhân cách của bà ta? - Ảnh 1.\" src=\"https://gamek.mediacdn.vn/thumb_w/640/133514250583805952/2021/5/21/photo-1-16215697879171896481012.jpg\" /></a></p>\n\n<p>Trước khi Hera xuất hiện, Napoleon v&agrave; Prometheus đ&atilde; c&oacute; thể kết hợp với nhau để tạo th&agrave;nh một thanh kiếm lửa. Tuy nhi&ecirc;n, Zeus lại chưa hề từng thể hiện một sự kết hợp n&agrave;o với Napoleon hay Prometheus. Kh&ocirc;ng c&oacute; một thanh kiếm điện n&agrave;o được tạo ra, kh&ocirc;ng c&oacute; một sự kết hợp n&agrave;o giữa lửa v&agrave; điện. Zeus dường như l&agrave; một thứ g&igrave; đ&oacute; thiếu s&oacute;t do Big Mom tạo ra, v&agrave; nếu ch&uacute; &yacute; một ch&uacute;t, ta c&oacute; thể thấy tất cả những homies của Big Mom, đều đại diện cho một phần nh&acirc;n c&aacute;ch của b&agrave; ta, bao gồm cả Zeus.</p>\n\n<p><strong>Zeus</strong></p>\n\n<p>Zeus ch&iacute;nh l&agrave; một sự thiếu s&oacute;t, ng&acirc;y thơ c&ograve;n s&oacute;t lại &iacute;t ỏi từ một Big Mom lớn l&ecirc;n trong sự quan t&acirc;m giả tạo của Carmel. Khu&ocirc;n mặt của Zeus tr&ocirc;ng giống Big Mom c&ograve;n nhỏ một c&aacute;ch kỳ lạ. N&oacute; đ&ocirc;i l&uacute;c c&ograve;n tỏ ra ng&acirc;y thơ qu&aacute; mức, thậm ch&iacute; c&ograve;n tham ăn đến độ v&igrave; mấy quả b&oacute;ng s&eacute;t m&agrave; bị Nami bắt v&agrave; trở th&agrave;nh pet của Nami trong thời gian ngắn. Ch&iacute;nh phần ng&acirc;y thơ n&agrave;y của Zeus dường như đại diện cho phần thiện c&ograve;n s&oacute;t lại của Big Mom, khiến n&oacute; tỏ ra kh&ocirc;ng hề ho&agrave; hợp với những homies kh&aacute;c.</p>\n\n<p><a href=\"https://gamek.mediacdn.vn/133514250583805952/2021/5/21/photo-1-16215697891561306884842.jpg\" target=\"_blank\"><img alt=\"One Piece: Những homies của Big Mom đều được tạo ra dựa trên một phần nhân cách của bà ta? - Ảnh 2.\" src=\"https://gamek.mediacdn.vn/thumb_w/640/133514250583805952/2021/5/21/photo-1-16215697891561306884842.jpg\" /></a></p>\n\n<p><strong>Prometheus</strong></p>\n\n<p>Prometheus l&agrave; một con homies gắt gỏng, gian xảo v&agrave; m&aacute;u lạnh. Đ&acirc;y ch&iacute;nh l&agrave; phần t&iacute;nh c&aacute;ch m&agrave; Big Mom đ&atilde; ph&aacute;t triển trong suốt thời gian b&agrave; ta trở th&agrave;nh hải tặc. Ch&iacute;nh phần t&iacute;nh c&aacute;ch n&agrave;y của Big Mom đ&atilde; xung đột với sự ng&acirc;y thơ &iacute;t ỏi c&ograve;n s&oacute;t lại, đ&atilde; tạo ra một Big Mom toan t&iacute;nh, gian xảo nhưng lại &iacute;ch kỷ một c&aacute;ch hết sức trẻ con. Điều n&agrave;y cũng thể hiện r&otilde; r&agrave;ng khi Prometheus v&ocirc; c&ugrave;ng căm gh&eacute;t Zeus v&agrave; chỉ muốn n&oacute; bị Big Mom bỏ đi cho khuất mắt. Khu&ocirc;n mặt gian xảo của Prometheus cũng ch&iacute;nh l&agrave; những g&igrave; ch&uacute;ng ta thường thấy tr&ecirc;n khu&ocirc;n mặt của Big Mom.</p>\n\n<p><a href=\"https://gamek.mediacdn.vn/133514250583805952/2021/5/21/photo-2-16215697901751219215587.jpg\" target=\"_blank\"><img alt=\"One Piece: Những homies của Big Mom đều được tạo ra dựa trên một phần nhân cách của bà ta? - Ảnh 3.\" src=\"https://gamek.mediacdn.vn/thumb_w/640/133514250583805952/2021/5/21/photo-2-16215697901751219215587.jpg\" /></a></p>\n\n<p><strong>Napoleon</strong></p>\n\n<p>Napoleon l&agrave; một homies trầm lắng v&agrave; nh&uacute;t nh&aacute;t. N&oacute; đại diện cho bản t&iacute;nh của Big Mom khi b&agrave; ta mất tr&iacute; nhớ, hay khi cảm x&uacute;c bị t&aacute;c động mạnh, chẳng hạn như l&uacute;c th&egrave;m ăn hay bức ảnh mẹ Carmel bị đập vỡ. N&oacute; cũng đại diện cho phần t&iacute;nh c&aacute;ch trưởng th&agrave;nh của Big Mom, tuy nhi&ecirc;n đ&atilde; ho&agrave;n to&agrave;n bị Prometheus che lấp.</p>\n\n<p><a href=\"https://gamek.mediacdn.vn/133514250583805952/2021/5/21/photo-3-16215697896791410366433.jpg\" target=\"_blank\"><img alt=\"One Piece: Những homies của Big Mom đều được tạo ra dựa trên một phần nhân cách của bà ta? - Ảnh 4.\" src=\"https://gamek.mediacdn.vn/thumb_w/640/133514250583805952/2021/5/21/photo-3-16215697896791410366433.jpg\" /></a></p>\n\n<p><strong>Hera</strong></p>\n\n<p>Hera ch&iacute;nh l&agrave; đại diện cho Big Mom của hiện tại, gi&acirc;y ph&uacute;t b&agrave; ta cho ph&eacute;p Hera ăn sống Zeus, ch&iacute;nh l&agrave; l&uacute;c b&agrave; ta quyết t&acirc;m từ bỏ đi phần ng&acirc;y thơ trong người m&igrave;nh, v&agrave; lập tức trở mặt đ&ograve;i ti&ecirc;u diệt Tama.</p>\n\n<p><a href=\"https://gamek.mediacdn.vn/133514250583805952/2021/5/21/photo-4-16215697906721812783837.jpg\" target=\"_blank\"><img alt=\"One Piece: Những homies của Big Mom đều được tạo ra dựa trên một phần nhân cách của bà ta? - Ảnh 5.\" src=\"https://gamek.mediacdn.vn/thumb_w/640/133514250583805952/2021/5/21/photo-4-16215697906721812783837.jpg\" /></a></p>', '/images/News/1621654170.jpeg', 'manga onepice', 'manga, onepice', 1, 0, 5, 'Truyện tranh Manga Nhật Bản', NULL, NULL),
(7, 'Guts của Berserk và 10 nhân vật phản anh hùng được yêu thích nhất trong thế giới anime', 'guts-cua-berserk-va-10-nhan-vat-phan-anh-hung-duoc-yeu-thich-nhat-trong-the-gioi-anime', NULL, '<h2>C&aacute;c phản anh h&ugrave;ng hay &ldquo;dark hero&rdquo; m&agrave; fan anime Nhật Bản vẫn thường gọi c&oacute; lẽ l&agrave; những nh&acirc;n vật th&uacute; vị, ngầu nhất tồn tại trong thế giới giả tưởng.</h2>', '<h2>C&aacute;c phản anh h&ugrave;ng hay &ldquo;dark hero&rdquo; m&agrave; fan anime Nhật Bản vẫn thường gọi c&oacute; lẽ l&agrave; những nh&acirc;n vật th&uacute; vị, ngầu nhất tồn tại trong thế giới giả tưởng.</h2>\n\n<ul>\n</ul>\n\n<p>Phản anh h&ugrave;ng hay Anti-hero l&agrave; kh&aacute;i niệm d&ugrave;ng để chỉ những nh&acirc;n vật ch&iacute;nh trong một c&acirc;u chuyện nhưng lại thiết s&oacute;t những phẩm chất, t&iacute;nh c&aacute;ch của một anh h&ugrave;ng. Kh&aacute;c với anh h&ugrave;ng, phản anh h&ugrave;ng đ&ocirc;i khi thực hiện việc l&agrave;m đ&uacute;ng về mặt đạo đức nhưng kh&ocirc;ng phải v&igrave; l&iacute; do ch&iacute;nh đ&aacute;ng như bảo vệ ch&iacute;nh nghĩa hay chống lại c&aacute;i &aacute;c.</p>\n\n<p>Họ l&agrave; kiểu mẫu của kiểu nh&acirc;n vật b&aacute; đạo, kh&ocirc;ng th&iacute;ch bắt t&ugrave; nh&acirc;n, kh&ocirc;ng quan t&acirc;m đến kẻ kh&aacute;c nghĩ g&igrave; v&agrave; kh&ocirc;ng c&oacute; thời gian ranh để chat chit lảm nhảm. Ch&iacute;nh v&igrave; lẽ đ&oacute;, kiểu nh&acirc;n vật ch&iacute;nh n&agrave;y thường l&ocirc;i cuốn kh&ocirc;ng chỉ bộ phận kh&aacute;n giả trẻ tuổi v&agrave; khiến cả những người lớn tuổi c&ograve;n si m&ecirc; bởi t&iacute;nh thực tế, chuẩn x&aacute;c đầy t&iacute;nh to&aacute;n của họ hoặc đ&ocirc;i khi chỉ đơn giản l&agrave; do bản t&iacute;nh đi&ecirc;n loạn, bất cần.</p>\n\n<p>C&ugrave;ng điểm qua những phản anh h&ugrave;ng rất được y&ecirc;u th&iacute;ch trong thế giới anime/manga nh&eacute;!</p>\n\n<p><strong>1. Guts</strong></p>\n\n<p><a href=\"https://gamek.mediacdn.vn/133514250583805952/2021/5/20/photo-1-1621505322335627065739.jpg\" target=\"_blank\"><img alt=\"Guts của Berserk và 10 nhân vật phản anh hùng được yêu thích nhất trong thế giới anime - Ảnh 1.\" src=\"https://gamek.mediacdn.vn/thumb_w/640/133514250583805952/2021/5/20/photo-1-1621505322335627065739.jpg\" /></a></p>\n\n<p>Nh&acirc;n vật ch&iacute;nh của bộ anime&nbsp;Berserk&nbsp;bắt đầu cuộc h&agrave;nh tr&igrave;nh ti&ecirc;u diệt những con qu&aacute;i vật khủng khiếp kh&aacute;c nhau kh&ocirc;ng phải v&igrave; thực hiện một nhiệm vụ cao cả, m&agrave; thay v&agrave;o đ&oacute; l&agrave; do anh muốn trả th&ugrave; kẻ đ&atilde; khiến cuộc sống của anh sụp đổ.</p>\n\n<p><strong>2. Alucard</strong></p>\n\n<p><a href=\"https://gamek.mediacdn.vn/133514250583805952/2021/5/20/photo-1-16215053265761821993867.jpg\" target=\"_blank\"><img alt=\"Guts của Berserk và 10 nhân vật phản anh hùng được yêu thích nhất trong thế giới anime - Ảnh 2.\" src=\"https://gamek.mediacdn.vn/thumb_w/640/133514250583805952/2021/5/20/photo-1-16215053265761821993867.jpg\" /></a></p>\n\n<p>Nhắc tới ma c&agrave; rồng đ&aacute;ng sợ nhất l&agrave; người ta sẽ nghĩ ngay đến nh&acirc;n vật Alucard trong Hellsing Ultimate. Alucard l&agrave; một trong những vampire (ma c&agrave; rồng) thuần chủng sống từ thời xa xưa c&oacute; thể bất tử v&agrave; sở hữu ma thuật cực mạnh. Trước khi bị Van Helsing đ&aacute;nh bại 100 năm trước v&agrave; phải thề trung th&agrave;nh với gia đ&igrave;nh Hellsing - gia đ&igrave;nh đứng đầu tổ chức chống lại mối đe dọa g&acirc;y ra bởi ma c&agrave; rồng th&igrave; Dracula Alucard ch&iacute;nh l&agrave; một con qu&aacute;i vật ki&ecirc;u ngạo, t&agrave;n nhẫn, kh&aacute;t m&aacute;u v&agrave; bất khả chiến bại.</p>\n\n<p><strong>3. Tanya Von Degurechaff</strong></p>\n\n<p><a href=\"https://gamek.mediacdn.vn/133514250583805952/2021/5/20/photo-2-1621505324522658139280.jpg\" target=\"_blank\"><img alt=\"Guts của Berserk và 10 nhân vật phản anh hùng được yêu thích nhất trong thế giới anime - Ảnh 3.\" src=\"https://gamek.mediacdn.vn/thumb_w/640/133514250583805952/2021/5/20/photo-2-1621505324522658139280.jpg\" /></a></p>\n\n<p>Vốn dĩ, Tanya l&agrave; một nh&acirc;n vi&ecirc;n người Nhật t&agrave;i ba, nhưng kh&ocirc;ng tin v&agrave;o Ch&uacute;a Trời. V&igrave; lẽ đ&oacute;, linh hồn Tanya đ&atilde; bị trừng phạt v&agrave; t&aacute;i sinh th&agrave;nh một c&ocirc; g&aacute;i nhỏ b&eacute;. Tuy vậy, c&ocirc; l&agrave; một ph&aacute;p sư si&ecirc;u mạnh, c&oacute; khả năng bay v&agrave; tung bộc ph&aacute; ma ph&aacute;p ti&ecirc;u diệt h&agrave;ng loạt qu&acirc;n địch. Thiếu &Uacute;y Tanya l&agrave; người chỉ huy đo&agrave;n qu&acirc;n ph&aacute;p sư tinh nhuệ, c&ocirc; cực kỳ coi trọng kỷ luật, v&ocirc; c&ugrave;ng t&agrave;n nhẫn v&agrave; kh&ocirc;ng dễ dung thứ cho kẻ địch hay những người l&agrave;m tr&aacute;i lệnh c&ocirc;.</p>\n\n<p><strong>4. Arsene Lupin III</strong></p>\n\n<p><a href=\"https://gamek.mediacdn.vn/133514250583805952/2021/5/20/photo-3-16215053260701038669323.jpg\" target=\"_blank\"><img alt=\"Guts của Berserk và 10 nhân vật phản anh hùng được yêu thích nhất trong thế giới anime - Ảnh 4.\" src=\"https://gamek.mediacdn.vn/thumb_w/640/133514250583805952/2021/5/20/photo-3-16215053260701038669323.jpg\" /></a></p>\n\n<p>T&ecirc;n trộm n&agrave;y l&agrave; hậu duệ của t&ecirc;n trộm huyền thoại Arsene Lupin v&agrave; chắc chắn anh ta kh&ocirc;ng c&oacute; mục đ&iacute;ch anh h&ugrave;ng n&agrave;o cả. Thế nhưng, sự hiện diện của anh ta thường ph&aacute; hủy kế hoạch của một tổ chức rất nhan hiểm.</p>\n\n<p><strong>5. Claire Stanfield</strong></p>\n\n<p><a href=\"https://gamek.mediacdn.vn/133514250583805952/2021/5/20/photo-4-16215053255391346764315.jpg\" target=\"_blank\"><img alt=\"Guts của Berserk và 10 nhân vật phản anh hùng được yêu thích nhất trong thế giới anime - Ảnh 5.\" src=\"https://gamek.mediacdn.vn/thumb_w/640/133514250583805952/2021/5/20/photo-4-16215053255391346764315.jpg\" /></a></p>\n\n<p>Claire Stanfield l&agrave; một s&aacute;t thủ t&acirc;m thần v&agrave; l&agrave; nh&acirc;n vi&ecirc;n quản l&yacute; t&agrave;u hỏa, cũng l&agrave; người kh&oacute; kiểm so&aacute;t nhất trong&nbsp;Baccano!. Anh ta cũng ch&iacute;nh l&agrave; nh&acirc;n vật đằng sau huyền thoại về kẻ giết người h&agrave;ng loạt tr&ecirc;n&nbsp;t&agrave;u Rail Tracer.</p>\n\n<p><strong>6. Joseph Joestar</strong></p>\n\n<p><a href=\"https://gamek.mediacdn.vn/133514250583805952/2021/5/20/photo-5-1621505325032923462966.jpg\" target=\"_blank\"><img alt=\"Guts của Berserk và 10 nhân vật phản anh hùng được yêu thích nhất trong thế giới anime - Ảnh 6.\" src=\"https://gamek.mediacdn.vn/thumb_w/640/133514250583805952/2021/5/20/photo-5-1621505325032923462966.jpg\" /></a></p>\n\n<p>Trong số c&aacute;c hậu duệ Joestars, Joseph nổi tiếng l&agrave; một kẻ lưu manh, người đ&atilde; t&igrave;nh cờ cứu thế giới bằng c&aacute;ch ph&oacute;ng một sinh vật phi thường ra khỏi quỹ đạo tr&aacute;i đất.</p>\n\n<p><strong>7. Shinji Ikari</strong></p>\n\n<p><a href=\"https://gamek.mediacdn.vn/133514250583805952/2021/5/20/photo-6-16215053261001338377230.jpg\" target=\"_blank\"><img alt=\"Guts của Berserk và 10 nhân vật phản anh hùng được yêu thích nhất trong thế giới anime - Ảnh 7.\" src=\"https://gamek.mediacdn.vn/thumb_w/640/133514250583805952/2021/5/20/photo-6-16215053261001338377230.jpg\" /></a></p>\n\n<p>Shinji l&agrave; một người ho&agrave;n to&agrave;n kh&ocirc;ng c&oacute; tự tin, dũng kh&iacute;, hay c&aacute; t&iacute;nh. Cậu chỉ muốn chạy trốn khỏi thế giới xung quanh. Tuy nhi&ecirc;n, như mọi đứa trẻ kh&aacute;c, Shinji muốn được mọi người xung quanh quan t&acirc;m v&agrave; c&ocirc;ng nhận m&igrave;nh.&nbsp;Shinji cũng l&agrave; phi c&ocirc;ng của EVA-01 (Shogoki/Unit-01). EVA-01 l&agrave; &quot;Test Type&quot; - phi&ecirc;n bản thử nghiệm. EVA-01 c&oacute; l&otilde;i chứa linh hồn l&agrave; mẹ của Shinji, v&agrave; mỗi khi Shinji mất quyền kiểm so&aacute;t, EVA-01 sẽ khởi động &quot;Berserk Mode&quot; v&agrave; tự hoạt động.</p>\n\n<p><strong>8. Saitama</strong></p>\n\n<p><a href=\"https://gamek.mediacdn.vn/133514250583805952/2021/5/20/photo-7-1621505325563866619802.jpg\" target=\"_blank\"><img alt=\"Guts của Berserk và 10 nhân vật phản anh hùng được yêu thích nhất trong thế giới anime - Ảnh 8.\" src=\"https://gamek.mediacdn.vn/thumb_w/640/133514250583805952/2021/5/20/photo-7-1621505325563866619802.jpg\" /></a></p>\n\n<p>Saitama l&agrave; nh&acirc;n vật ch&iacute;nh của bộ manga/anime One Punch Man, người h&ugrave;ng với khả năng đấm ph&aacute;t chết lu&ocirc;n mọi qu&aacute;i vật. Cũng ch&iacute;nh v&igrave; sức mạnh kh&ocirc;ng tưởng của m&igrave;nh n&ecirc;n Saitama thường bị fan đ&ugrave;a l&agrave; kẻ phản diện, tr&ugrave;m cuối,... Cho đến một ng&agrave;y, một b&agrave;i viết tr&ecirc;n một trang b&aacute;o mạng kh&aacute; lớn đ&atilde; xếp Saitama v&agrave;o top 5 nh&acirc;n vật phản anh h&ugrave;ng được y&ecirc;u th&iacute;ch nhất thế giới truyện tranh.</p>\n\n<p><strong>9. Himura Kenshin</strong></p>\n\n<p><a href=\"https://gamek.mediacdn.vn/133514250583805952/2021/5/20/photo-8-1621505324544860439745.jpg\" target=\"_blank\"><img alt=\"Guts của Berserk và 10 nhân vật phản anh hùng được yêu thích nhất trong thế giới anime - Ảnh 9.\" src=\"https://gamek.mediacdn.vn/thumb_w/640/133514250583805952/2021/5/20/photo-8-1621505324544860439745.jpg\" /></a></p>\n\n<p>Himura từng l&agrave; một s&aacute;t thủ của Ishin Shishi, ph&aacute;i Choshu, chuy&ecirc;n &aacute;m s&aacute;t những th&agrave;nh phần chủ chốt của nh&agrave; Mạc nhưng sau n&agrave;y anh đ&atilde; từ bỏ danh vọng, trở th&agrave;nh một l&atilde;ng kh&aacute;ch lang thang suốt 10 năm gi&uacute;p đỡ những kẻ yếu bị bắt nạt với mục ti&ecirc;u chuộc lại những lỗi lầm m&igrave;nh đ&atilde; g&acirc;y ra.</p>\n\n<p><strong>10. Seto Kaiba</strong></p>\n\n<p><a href=\"https://gamek.mediacdn.vn/133514250583805952/2021/5/20/photo-9-16215053250761012820740.jpg\" target=\"_blank\"><img alt=\"Guts của Berserk và 10 nhân vật phản anh hùng được yêu thích nhất trong thế giới anime - Ảnh 10.\" src=\"https://gamek.mediacdn.vn/thumb_w/640/133514250583805952/2021/5/20/photo-9-16215053250761012820740.jpg\" /></a></p>\n\n<p>Nh&acirc;n vật phản diện đầu ti&ecirc;n của anime Yu-Gi-Oh! l&agrave; một đấu sĩ t&ecirc;n Seto Kaiba. Anh ta l&agrave; một triệu ph&uacute; tuổi teen, người điều h&agrave;nh một c&ocirc;ng ty giải tr&iacute; lớn khi vẫn c&ograve;n ở độ tuổi học trung học. Yugi Muto đ&atilde; đ&aacute;nh bại Kaiba nhiều lần trong tr&ograve; chơi đấu b&agrave;i v&agrave; khiến Kaiba phải suy nghĩ lại về những h&agrave;nh động tồi tệ của m&igrave;nh để rồi sau đ&oacute;&nbsp;trở th&agrave;nh trợ thủ đắc lực nhất của Yugi khi đối mặt với một kẻ th&ugrave; c&ograve;n độc &aacute;c hơn.</p>', '/images/News/1621654517.jpeg', 'manga berserk', 'guts bersek saitama', 1, 0, 5, 'Truyện tranh Manga Nhật Bản', NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oauth_access_tokens`
--

CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `client_id` int(11) NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `oauth_access_tokens`
--

INSERT INTO `oauth_access_tokens` (`id`, `user_id`, `client_id`, `name`, `scopes`, `revoked`, `created_at`, `updated_at`, `expires_at`) VALUES
('1b40ca83858236c94ddfa3ed640e73ac9367b171fa37f45984c398d1645c63f6be8d9f9901ae64d7', 1, 4, NULL, '[]', 0, '2018-09-08 01:49:26', '2018-09-08 01:49:26', '2019-09-08 08:49:26'),
('34af2e418c38cd4968a2c89c3f51b290917a014107d843bf5e9069b47f23bca4a1b89b1fbdb2da6e', 1, 4, NULL, '[]', 0, '2018-09-08 01:53:14', '2018-09-08 01:53:14', '2019-09-08 08:53:14'),
('dbba2d7ff69c9999a01c5442bcd74fea4480733dc95acce741a482a1e6552ada917913ebd865f9a7', 1, 4, NULL, '[]', 0, '2018-09-08 01:57:19', '2018-09-08 01:57:19', '2019-09-08 08:57:19');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oauth_auth_codes`
--

CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `client_id` int(11) NOT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oauth_clients`
--

CREATE TABLE `oauth_clients` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `redirect` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `oauth_clients`
--

INSERT INTO `oauth_clients` (`id`, `user_id`, `name`, `secret`, `redirect`, `personal_access_client`, `password_client`, `revoked`, `created_at`, `updated_at`) VALUES
(1, NULL, 'KTShops Personal Access Client', 'elwyt7xpzUtGEnDykqjzmLB5VhSEGI3FntBlEcGF', 'http://localhost', 1, 0, 0, '2018-09-08 00:48:13', '2018-09-08 00:48:13'),
(2, NULL, 'KTShops Password Grant Client', '985R3RMnJn3WpkhaaQojsKlnUqM39B47I4Uvb3p3', 'http://localhost', 0, 1, 0, '2018-09-08 00:48:13', '2018-09-08 00:48:13'),
(3, NULL, 'KTShops Personal Access Client', 'z6wQiRgvZK0iw5G2e8BESIAzDfJxs3bJmcWQK8rm', 'http://localhost', 1, 0, 0, '2018-09-08 01:46:53', '2018-09-08 01:46:53'),
(4, NULL, 'KTShops Password Grant Client', 'NRtvnJhQK9lzbrKZRGOVXYJHfAVGnonCPdl0ZSmV', 'http://localhost', 0, 1, 0, '2018-09-08 01:46:53', '2018-09-08 01:46:53');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oauth_personal_access_clients`
--

CREATE TABLE `oauth_personal_access_clients` (
  `id` int(10) UNSIGNED NOT NULL,
  `client_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `oauth_personal_access_clients`
--

INSERT INTO `oauth_personal_access_clients` (`id`, `client_id`, `created_at`, `updated_at`) VALUES
(1, 1, '2018-09-08 00:48:13', '2018-09-08 00:48:13'),
(2, 3, '2018-09-08 01:46:53', '2018-09-08 01:46:53');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oauth_refresh_tokens`
--

CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `oauth_refresh_tokens`
--

INSERT INTO `oauth_refresh_tokens` (`id`, `access_token_id`, `revoked`, `expires_at`) VALUES
('c5a316de0a8685a5d59cc05b95e70ffe5fa6399730ad5fc00d02ab5be05309dafed38437c1837ea2', '1b40ca83858236c94ddfa3ed640e73ac9367b171fa37f45984c398d1645c63f6be8d9f9901ae64d7', 0, '2019-09-08 08:49:26'),
('c6097f63e2173e827c78788a1046680f5ee38571a60262d929f0ad651b0a6ddba202061bdc263bce', 'dbba2d7ff69c9999a01c5442bcd74fea4480733dc95acce741a482a1e6552ada917913ebd865f9a7', 0, '2019-09-08 08:57:19'),
('ce1b6d7ef839905d4d3680c5b93db79a4f52cd21e5106512218b2c80905503e797b32b64e7f36529', '34af2e418c38cd4968a2c89c3f51b290917a014107d843bf5e9069b47f23bca4a1b89b1fbdb2da6e', 0, '2019-09-08 08:53:14');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `products`
--

CREATE TABLE `products` (
  `id` int(10) UNSIGNED NOT NULL,
  `pro_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pro_slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pro_video` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pro_image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '/images/noimg.jpg',
  `pro_price` int(11) NOT NULL DEFAULT 0,
  `pro_sale` int(11) NOT NULL DEFAULT 0,
  `pro_unit` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pro_view` int(11) NOT NULL DEFAULT 0,
  `pro_status` int(11) NOT NULL DEFAULT 0,
  `pro_hide` int(11) NOT NULL DEFAULT 0,
  `pro_intro` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `pro_content` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pro_specs` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `list_id` int(10) UNSIGNED NOT NULL,
  `list_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `products`
--

INSERT INTO `products` (`id`, `pro_name`, `pro_slug`, `pro_video`, `pro_image`, `pro_price`, `pro_sale`, `pro_unit`, `pro_view`, `pro_status`, `pro_hide`, `pro_intro`, `pro_content`, `pro_specs`, `list_id`, `list_name`, `created_at`, `updated_at`) VALUES
(77, 'Nhà Giả Kim (Tái Bản 2020)', 'nha-gia-kim-tai-ban-2020', NULL, '/images/Product/1621624254.jpeg', 79000, 67150, 'đ', 0, 0, 0, '<p><em>Tất cả những trải nghiệm trong chuyến phi&ecirc;u du theo đuổi vận mệnh của m&igrave;nh đ&atilde; gi&uacute;p Santiago thấu hiểu được &yacute; nghĩa s&acirc;u xa nhất của hạnh ph&uacute;c, h&ograve;a hợp với vũ trụ v&agrave; con người</em>.&nbsp;</p>\n\n<p>Tiểu thuyết&nbsp;<em>Nh&agrave; giả kim&nbsp;</em>của Paulo Coelho như một c&acirc;u chuyện cổ t&iacute;ch giản dị, nh&acirc;n &aacute;i, gi&agrave;u chất thơ, thấm đẫm những minh triết huyền b&iacute; của phương Đ&ocirc;ng. Trong lần xuất bản đầu ti&ecirc;n tại Brazil v&agrave;o năm 1988, s&aacute;ch chỉ b&aacute;n được 900 bản. Nhưng, với số phận đặc biệt của cuốn s&aacute;ch d&agrave;nh cho to&agrave;n nh&acirc;n loại, vượt ra ngo&agrave;i bi&ecirc;n giới quốc gia,&nbsp;<em>Nh&agrave; giả kim&nbsp;</em>đ&atilde; l&agrave;m rung động h&agrave;ng triệu t&acirc;m hồn, trở th&agrave;nh một trong những cuốn s&aacute;ch b&aacute;n chạy nhất mọi thời đại, v&agrave; c&oacute; thể l&agrave;m thay đổi cuộc đời người đọc.</p>\n\n<p>&ldquo;Nhưng nh&agrave; luyện kim đan kh&ocirc;ng quan t&acirc;m mấy đến những điều ấy. &Ocirc;ng đ&atilde; từng thấy nhiều người đến rồi đi, trong khi ốc đảo v&agrave; sa mạc vẫn l&agrave; ốc đảo v&agrave; sa mạc. &Ocirc;ng đ&atilde; thấy vua ch&uacute;a v&agrave; kẻ ăn xin đi qua biển c&aacute;t n&agrave;y, c&aacute;i biển c&aacute;t thường xuy&ecirc;n thay h&igrave;nh đổi dạng v&igrave; gi&oacute; thổi nhưng vẫn m&atilde;i m&atilde;i l&agrave; biển c&aacute;t m&agrave; &ocirc;ng đ&atilde; biết từ thuở nhỏ. Tuy vậy, tự đ&aacute;y l&ograve;ng m&igrave;nh, &ocirc;ng kh&ocirc;ng thể kh&ocirc;ng cảm thấy vui trước hạnh ph&uacute;c của mỗi người lữ kh&aacute;ch, sau bao ng&agrave;y chỉ c&oacute; c&aacute;t v&agrave;ng với trời xanh nay được thấy ch&agrave; l&agrave; xanh tươi hiện ra trước mắt. &lsquo;C&oacute; thể Thượng đế tạo ra sa mạc chỉ để cho con người biết qu&yacute; trọng c&acirc;y ch&agrave; l&agrave;,&rsquo; &ocirc;ng nghĩ.&rdquo;</p>\n\n<p>- Tr&iacute;ch&nbsp;<em>Nh&agrave; giả kim</em></p>', '<table>\n	<tbody>\n		<tr>\n			<th>M&atilde; h&agrave;ng</th>\n			<td>8935235226272</td>\n		</tr>\n		<tr>\n			<th>T&ecirc;n Nh&agrave; Cung Cấp</th>\n			<td><a href=\"https://www.fahasa.com/nha-nam\">Nh&atilde; Nam</a></td>\n		</tr>\n		<tr>\n			<th>T&aacute;c giả</th>\n			<td>Paulo Coelho</td>\n		</tr>\n		<tr>\n			<th>Người Dịch</th>\n			<td>L&ecirc; Chu Cầu</td>\n		</tr>\n		<tr>\n			<th>NXB</th>\n			<td>NXB Hội Nh&agrave; Văn</td>\n		</tr>\n		<tr>\n			<th>Năm XB</th>\n			<td>2020</td>\n		</tr>\n		<tr>\n			<th>Trọng lượng (gr)</th>\n			<td>220</td>\n		</tr>\n		<tr>\n			<th>K&iacute;ch Thước Bao B&igrave;</th>\n			<td>20.5 x 13 cm</td>\n		</tr>\n		<tr>\n			<th>Số trang</th>\n			<td>227</td>\n		</tr>\n		<tr>\n			<th>H&igrave;nh thức</th>\n			<td><a href=\"https://www.fahasa.com/all-category.html?book_layout=9&amp;fhs_campaign=ATTRIBUTE_PRODUCT\">B&igrave;a Mềm</a></td>\n		</tr>\n		<tr>\n			<th>Sản phẩm hiển thị trong</th>\n			<td>\n			<ul>\n				<li><a href=\"https://www.fahasa.com/nha-nam?fhs_campaign=INTERNAL_LINKING\">Nh&atilde; Nam</a></li>\n				<li><a href=\"https://www.fahasa.com/sach-dich-nhieu-nhat?fhs_campaign=INTERNAL_LINKING\">Top s&aacute;ch được phi&ecirc;n dịch nhiều nhất</a></li>\n				<li><a href=\"https://www.fahasa.com/visa?fhs_campaign=INTERNAL_LINKING\">Visa</a></li>\n				<li><a href=\"https://www.fahasa.com/vnpay?fhs_campaign=INTERNAL_LINKING\">VNPAY</a></li>\n			</ul>\n			</td>\n		</tr>\n		<tr>\n			<th>Sản phẩm b&aacute;n chạy nhất</th>\n			<td><a href=\"https://www.fahasa.com/sach-trong-nuoc/van-hoc-trong-nuoc/tieu-thuyet.html?order=num_orders_month\">Top 100 sản phẩm Tiểu thuyết b&aacute;n chạy của th&aacute;ng</a></td>\n		</tr>\n	</tbody>\n</table>', '<p><em>Tất cả những trải nghiệm trong chuyến phi&ecirc;u du theo đuổi vận mệnh của m&igrave;nh đ&atilde; gi&uacute;p Santiago thấu hiểu được &yacute; nghĩa s&acirc;u xa nhất của hạnh ph&uacute;c, h&ograve;a hợp với vũ trụ v&agrave; con người</em>.&nbsp;</p>\n\n<p>Tiểu thuyết&nbsp;<em>Nh&agrave; giả kim&nbsp;</em>của Paulo Coelho như một c&acirc;u chuyện cổ t&iacute;ch giản dị, nh&acirc;n &aacute;i, gi&agrave;u chất thơ, thấm đẫm những minh triết huyền b&iacute; của phương Đ&ocirc;ng. Trong lần xuất bản đầu ti&ecirc;n tại Brazil v&agrave;o năm 1988, s&aacute;ch chỉ b&aacute;n được 900 bản. Nhưng, với số phận đặc biệt của cuốn s&aacute;ch d&agrave;nh cho to&agrave;n nh&acirc;n loại, vượt ra ngo&agrave;i bi&ecirc;n giới quốc gia,&nbsp;<em>Nh&agrave; giả kim&nbsp;</em>đ&atilde; l&agrave;m rung động h&agrave;ng triệu t&acirc;m hồn, trở th&agrave;nh một trong những cuốn s&aacute;ch b&aacute;n chạy nhất mọi thời đại, v&agrave; c&oacute; thể l&agrave;m thay đổi cuộc đời người đọc.</p>\n\n<p>&ldquo;Nhưng nh&agrave; luyện kim đan kh&ocirc;ng quan t&acirc;m mấy đến những điều ấy. &Ocirc;ng đ&atilde; từng thấy nhiều người đến rồi đi, trong khi ốc đảo v&agrave; sa mạc vẫn l&agrave; ốc đảo v&agrave; sa mạc. &Ocirc;ng đ&atilde; thấy vua ch&uacute;a v&agrave; kẻ ăn xin đi qua biển c&aacute;t n&agrave;y, c&aacute;i biển c&aacute;t thường xuy&ecirc;n thay h&igrave;nh đổi dạng v&igrave; gi&oacute; thổi nhưng vẫn m&atilde;i m&atilde;i l&agrave; biển c&aacute;t m&agrave; &ocirc;ng đ&atilde; biết từ thuở nhỏ. Tuy vậy, tự đ&aacute;y l&ograve;ng m&igrave;nh, &ocirc;ng kh&ocirc;ng thể kh&ocirc;ng cảm thấy vui trước hạnh ph&uacute;c của mỗi người lữ kh&aacute;ch, sau bao ng&agrave;y chỉ c&oacute; c&aacute;t v&agrave;ng với trời xanh nay được thấy ch&agrave; l&agrave; xanh tươi hiện ra trước mắt. &lsquo;C&oacute; thể Thượng đế tạo ra sa mạc chỉ để cho con người biết qu&yacute; trọng c&acirc;y ch&agrave; l&agrave;,&rsquo; &ocirc;ng nghĩ.&rdquo;</p>\n\n<p>- Tr&iacute;ch&nbsp;<em>Nh&agrave; giả kim</em></p>\n\n<p><strong>Nhận định</strong></p>\n\n<p>&ldquo;Sau Garcia M&aacute;rquez, đ&acirc;y l&agrave; nh&agrave; văn Mỹ Latinh được đọc nhiều nhất thế giới.&rdquo;&nbsp;<em>- The Economist</em>, London, Anh</p>\n\n<p>&nbsp;</p>\n\n<p>&ldquo;Santiago c&oacute; khả năng cảm nhận bằng tr&aacute;i tim như&nbsp;<em>Ho&agrave;ng tử b&eacute;</em>&nbsp;của Saint-Exup&eacute;ry.&rdquo;&nbsp;<em>- Frankfurter Allgemeine Zeitung, Đức</em></p>', 19, 'Sách văn học', NULL, NULL),
(78, 'Cuốn Theo Chiều Gió - Tập 2 - Bản Cao Cấp', 'cuon-theo-chieu-gio-tap-2-ban-cao-cap', NULL, '/images/Product/1621651415.jpeg', 349000, 286000, 'đ', 0, 0, 0, '<p>Scarlett O&rsquo;Hara l&agrave; một c&ocirc; tiểu thư duy&ecirc;n d&aacute;ng, ki&ecirc;u kỳ, được t&ocirc;n l&agrave; hoa kh&ocirc;i trong v&ugrave;ng v&agrave; lu&ocirc;n c&oacute; nhiều ch&agrave;ng trai săn đ&oacute;n, theo đuổi. Cuộc sống của n&agrave;ng cứ &ecirc;m đềm tr&ocirc;i với bao kẻ hầu người hạ, những bộ v&aacute;y xinh đẹp, những buổi vũ hội tươi vui v&agrave; những bữa tiệc ngo&agrave;i trời n&aacute;o nhiệt. Ước mong duy nhất của n&agrave;ng l&agrave; d&agrave;nh được tr&aacute;i tim của Ashley Wilkes, ch&agrave;ng trai t&oacute;c v&agrave;ng c&oacute; nụ cười rạng rỡ như nắng m&ugrave;a xu&acirc;n.</p>\n\n<p>Thế rồi, chiến tranh đột ngột ập tới, cuốn phăng đi tất cả những g&igrave; Scarlett từng c&oacute;, v&ugrave;i dập, nhấn ch&igrave;m n&agrave;ng xuống tận đ&aacute;y s&acirc;u tuyệt vọng. Nhưng ch&iacute;nh nghịch cảnh ấy đ&atilde; thổi b&ugrave;ng l&ecirc;n sức sống m&atilde;nh liệt trong n&agrave;ng, hun đ&uacute;c l&ecirc;n một Scarlett ki&ecirc;n cường, bản lĩnh, d&aacute;m giẫm đạp l&ecirc;n mọi định kiến x&atilde; hội để vươn l&ecirc;n l&agrave;m chủ vận mệnh của bản th&acirc;n.</p>', '<table>\n	<tbody>\n		<tr>\n			<th>M&atilde; h&agrave;ng</th>\n			<td>8935212353977</td>\n		</tr>\n		<tr>\n			<th>T&ecirc;n Nh&agrave; Cung Cấp</th>\n			<td><a href=\"https://www.fahasa.com/dinh-ti\">Đinh Tị</a></td>\n		</tr>\n		<tr>\n			<th>T&aacute;c giả</th>\n			<td>Margaret Mitchell</td>\n		</tr>\n		<tr>\n			<th>NXB</th>\n			<td>NXB Văn Học</td>\n		</tr>\n		<tr>\n			<th>Năm XB</th>\n			<td>2021</td>\n		</tr>\n		<tr>\n			<th>Trọng lượng (gr)</th>\n			<td>700</td>\n		</tr>\n		<tr>\n			<th>K&iacute;ch Thước Bao B&igrave;</th>\n			<td>24 x 16 cm</td>\n		</tr>\n		<tr>\n			<th>Số trang</th>\n			<td>688</td>\n		</tr>\n		<tr>\n			<th>H&igrave;nh thức</th>\n			<td><a href=\"https://www.fahasa.com/all-category.html?book_layout=9&amp;fhs_campaign=ATTRIBUTE_PRODUCT\">B&igrave;a Mềm</a></td>\n		</tr>\n		<tr>\n			<th>Sản phẩm hiển thị trong</th>\n			<td>\n			<ul>\n				<li><a href=\"https://www.fahasa.com/dinh-ti?fhs_campaign=INTERNAL_LINKING\">Đinh Tị</a></li>\n				<li><a href=\"https://www.fahasa.com/seriesbook/index/series/id/71884?fhs_campaign=SERI_PAGE\">S&aacute;ch theo bộ</a></li>\n			</ul>\n			</td>\n		</tr>\n		<tr>\n			<th>Sản phẩm b&aacute;n chạy nhất</th>\n			<td><a href=\"https://www.fahasa.com/sach-trong-nuoc/van-hoc-trong-nuoc/tac-pham-kinh-dien.html?order=num_orders_month\">Top 100 sản phẩm T&aacute;c Phẩm Kinh Điển b&aacute;n chạy của th&aacute;ng</a></td>\n		</tr>\n	</tbody>\n</table>', '<p>Cuốn Theo Chiều Gi&oacute;</p>\n\n<p><strong>Bản Cao Cấp: Hộp Nắp Nam Ch&acirc;m + 1 Tờ Tranh Khổ Lớn&nbsp;+ B&igrave;a &Aacute;o C&ocirc;ng Nghệ Mới</strong></p>\n\n<p>Scarlett O&rsquo;Hara l&agrave; một c&ocirc; tiểu thư duy&ecirc;n d&aacute;ng, ki&ecirc;u kỳ, được t&ocirc;n l&agrave; hoa kh&ocirc;i trong v&ugrave;ng v&agrave; lu&ocirc;n c&oacute; nhiều ch&agrave;ng trai săn đ&oacute;n, theo đuổi. Cuộc sống của n&agrave;ng cứ &ecirc;m đềm tr&ocirc;i với bao kẻ hầu người hạ, những bộ v&aacute;y xinh đẹp, những buổi vũ hội tươi vui v&agrave; những bữa tiệc ngo&agrave;i trời n&aacute;o nhiệt. Ước mong duy nhất của n&agrave;ng l&agrave; d&agrave;nh được tr&aacute;i tim của Ashley Wilkes, ch&agrave;ng trai t&oacute;c v&agrave;ng c&oacute; nụ cười rạng rỡ như nắng m&ugrave;a xu&acirc;n.</p>\n\n<p>Thế rồi, chiến tranh đột ngột ập tới, cuốn phăng đi tất cả những g&igrave; Scarlett từng c&oacute;, v&ugrave;i dập, nhấn ch&igrave;m n&agrave;ng xuống tận đ&aacute;y s&acirc;u tuyệt vọng. Nhưng ch&iacute;nh nghịch cảnh ấy đ&atilde; thổi b&ugrave;ng l&ecirc;n sức sống m&atilde;nh liệt trong n&agrave;ng, hun đ&uacute;c l&ecirc;n một Scarlett ki&ecirc;n cường, bản lĩnh, d&aacute;m giẫm đạp l&ecirc;n mọi định kiến x&atilde; hội để vươn l&ecirc;n l&agrave;m chủ vận mệnh của bản th&acirc;n.</p>\n\n<p>Vừa mang hơi hướng sử thi vừa đậm chất trữ t&igrave;nh l&atilde;ng mạn, c&ugrave;ng h&igrave;nh tượng nh&acirc;n vật đặc sắc, ngay từ khi ra mắt, Cuốn theo chiều gi&oacute; đ&atilde; tạo được tiếng vang lớn v&agrave; khơi gợi biết bao cảm x&uacute;c của độc giả. D&ugrave; nhiều năm tr&ocirc;i qua nhưng đến nay, những triết l&yacute; s&acirc;u sắc về t&igrave;nh y&ecirc;u, cuộc sống trong s&aacute;ch vẫn vẹn nguy&ecirc;n gi&aacute; trị, gi&uacute;p t&aacute;c phẩm giữ vững vị tr&iacute; trong l&ograve;ng người đọc, m&atilde;i m&atilde;i trường tồn với thời gian.</p>', 24, 'Tiểu thuyết', NULL, NULL),
(79, 'File Tài Liệu Đứng Campus 5 Ngăn DF-5Y-G2 - Màu Xanh', 'file-tai-lieu-dung-campus-5-ngan-df-5y-g2-mau-xanh', NULL, '/images/Product/1621651537.jpeg', 48500, 43650, 'đ', 0, 0, 0, '<p>L&agrave; vật dụng thiết yếu v&agrave; quan trọng, gi&uacute;p bảo quản v&agrave; sắp xếp hồ sơ gọn g&agrave;ng, ngăn nắp, tr&aacute;nh bị nh&agrave;u n&aacute;t.</p>\n\n<p>C&oacute; thiết kế 5 ngăn linh hoạt, dễ d&agrave;ng mang theo b&ecirc;n m&igrave;nh.</p>\n\n<p>Sản phẩm c&oacute; m&agrave;u sắc trang nh&atilde;, ph&ugrave; hợp với nơi c&ocirc;ng sở, th&iacute;ch hợp để bạn mang theo b&ecirc;n m&igrave;nh trong c&aacute;c buổi hội họp quan trọng.</p>\n\n<p>Cặp được l&agrave;m từ nhựa PP cứng c&aacute;p, bảo đảm độ bền đẹp v&agrave; thời gian sử dụng l&acirc;u d&agrave;i.</p>\n\n<p>B&ecirc;n cạnh đ&oacute;, sản phẩm c&ograve;n c&oacute; khả năng chống thấm nước hiệu quả, giữ cho giấy tờ, t&agrave;i liệu của bạn được an to&agrave;n kể cả trong điều kiện ẩm ướt.</p>', '<table>\n	<tbody>\n		<tr>\n			<th>M&atilde; h&agrave;ng</th>\n			<td>8936038727126</td>\n		</tr>\n		<tr>\n			<th>T&ecirc;n Nh&agrave; Cung Cấp</th>\n			<td><a href=\"https://www.fahasa.com/kokuyo\">Kokuyo</a></td>\n		</tr>\n		<tr>\n			<th>Thương Hiệu</th>\n			<td><a href=\"https://www.fahasa.com/all-category.html?manufacturer=151&amp;fhs_campaign=ATTRIBUTE_PRODUCT\">Campus</a></td>\n		</tr>\n		<tr>\n			<th>Xuất Xứ Thương Hiệu</th>\n			<td><a href=\"https://www.fahasa.com/all-category.html?origin=27&amp;fhs_campaign=ATTRIBUTE_PRODUCT\">Thương Hiệu Nhật</a></td>\n		</tr>\n		<tr>\n			<th>Nơi Gia C&ocirc;ng &amp; Sản Xuất</th>\n			<td><a href=\"https://www.fahasa.com/all-category.html?noi_san_xuat=332124&amp;fhs_campaign=ATTRIBUTE_PRODUCT\">Trung Quốc</a></td>\n		</tr>\n		<tr>\n			<th>M&agrave;u sắc</th>\n			<td><a href=\"https://www.fahasa.com/all-category.html?color=41&amp;fhs_campaign=ATTRIBUTE_PRODUCT\">Xanh Dương</a></td>\n		</tr>\n		<tr>\n			<th>Chất liệu</th>\n			<td><a href=\"https://www.fahasa.com/all-category.html?material=80&amp;fhs_campaign=ATTRIBUTE_PRODUCT\">Nhựa</a></td>\n		</tr>\n		<tr>\n			<th>Trọng lượng (gr)</th>\n			<td>20</td>\n		</tr>\n		<tr>\n			<th>K&iacute;ch Thước Bao B&igrave;</th>\n			<td>33 x 24 x 1 cm</td>\n		</tr>\n		<tr>\n			<th>Sản phẩm hiển thị trong</th>\n			<td>\n			<ul>\n				<li><a href=\"https://www.fahasa.com/kokuyo?fhs_campaign=INTERNAL_LINKING\">Kokuyo</a></li>\n				<li><a href=\"https://www.fahasa.com/van-phong-pham-cao-cap?fhs_campaign=INTERNAL_LINKING\">Văn Ph&ograve;ng Phẩm Cao Cấp</a></li>\n				<li><a href=\"https://www.fahasa.com/vpp-kokuyo?fhs_campaign=INTERNAL_LINKING\">Văn Ph&ograve;ng Phẩm Kokuyo</a></li>\n				<li><a href=\"https://www.fahasa.com/vpp-kokuyo-bia?fhs_campaign=INTERNAL_LINKING\">Văn Ph&ograve;ng Phẩm Kokuyo - B&igrave;a - Hồ Sơ</a></li>\n				<li><a href=\"https://www.fahasa.com/vpp-kokuyo-nhan-ten?fhs_campaign=INTERNAL_LINKING\">Văn Ph&ograve;ng Phẩm Kokuyo - Tập</a></li>\n				<li><a href=\"https://www.fahasa.com/vpp-kokuyo-so-tay?fhs_campaign=INTERNAL_LINKING\">Văn Ph&ograve;ng Phẩm Kokuyo - Sổ Tay</a></li>\n				<li><a href=\"https://www.fahasa.com/vpp-kokuyo-tap?fhs_campaign=INTERNAL_LINKING\">Văn Ph&ograve;ng Phẩm Kokuyo - Tập</a></li>\n				<li><a href=\"https://www.fahasa.com/vpp-nhat-tap?fhs_campaign=INTERNAL_LINKING\">Văn Ph&ograve;ng Phẩm Nhật - Tập - Vở</a></li>\n			</ul>\n			</td>\n		</tr>\n		<tr>\n			<th>Sản phẩm b&aacute;n chạy nhất</th>\n			<td><a href=\"https://www.fahasa.com/van-phong-pham/dung-cu-van-phong/bia-file-h-so.html?order=num_orders_month\">Top 100 sản phẩm B&igrave;a - File Hồ Sơ b&aacute;n chạy của th&aacute;ng</a></td>\n		</tr>\n	</tbody>\n</table>', '<p><strong>File T&agrave;i Liệu Đứng Campus 5 Ngăn DF-5Y-G2 - M&agrave;u Xanh</strong></p>\n\n<p>L&agrave; vật dụng thiết yếu v&agrave; quan trọng, gi&uacute;p bảo quản v&agrave; sắp xếp hồ sơ gọn g&agrave;ng, ngăn nắp, tr&aacute;nh bị nh&agrave;u n&aacute;t.</p>\n\n<p>C&oacute; thiết kế 5 ngăn linh hoạt, dễ d&agrave;ng mang theo b&ecirc;n m&igrave;nh.</p>\n\n<p>Sản phẩm c&oacute; m&agrave;u sắc trang nh&atilde;, ph&ugrave; hợp với nơi c&ocirc;ng sở, th&iacute;ch hợp để bạn mang theo b&ecirc;n m&igrave;nh trong c&aacute;c buổi hội họp quan trọng.</p>\n\n<p>Cặp được l&agrave;m từ nhựa PP cứng c&aacute;p, bảo đảm độ bền đẹp v&agrave; thời gian sử dụng l&acirc;u d&agrave;i.</p>\n\n<p>B&ecirc;n cạnh đ&oacute;, sản phẩm c&ograve;n c&oacute; khả năng chống thấm nước hiệu quả, giữ cho giấy tờ, t&agrave;i liệu của bạn được an to&agrave;n kể cả trong điều kiện ẩm ướt.</p>', 23, 'Dụng cụ văn phòng', NULL, NULL),
(80, 'Fullmetal Alchemist - Cang Giả Kim Thuật Sư - Fullmetal Edition Tập 10', 'fullmetal-alchemist-cang-gia-kim-thuat-su-fullmetal-edition-tap-10', NULL, '/images/Product/1621652256.jpeg', 69000, 65000, 'đ', 0, 0, 0, '<p>Trong thế giới của những giả kim thuật sư, c&oacute; một tồn tại đ&atilde; đi v&agrave;o huyền thoại v&agrave; trở th&agrave;nh ước mơ bất cứ ai cũng ao kh&aacute;t - đ&oacute; ch&iacute;nh l&agrave; &quot;H&ograve;n đ&aacute; Triết gia&quot;.</p>\n\n<p>Bối cảnh của &quot;Fullmetal Alchemist&quot; được đặt trong một thế giới hư cấu, nơi giả kim thuật l&agrave; một trong những kĩ thuật khoa học ti&ecirc;n tiến nhất con người từng biết đến. V&agrave; anh em nh&agrave; Elric cũng kh&ocirc;ng l&agrave; ngoại lệ. Sau thất bại khi cố gắng đem người mẹ dấu y&ecirc;u từ c&otilde;i chết trở về, người anh Edward mất đi ch&acirc;n tr&aacute;i v&agrave; người em Alphonse mất to&agrave;n bộ cơ thể; bằng nỗ lực đến tuyệt vọng, Edward đ&atilde; hi sinh nốt c&aacute;nh tay phải của m&igrave;nh để gi&agrave;nh lại linh hồn Alphonse v&agrave; chuyển h&oacute;a n&oacute; v&agrave;o trong một bộ gi&aacute;p.</p>', '<table>\n	<tbody>\n		<tr>\n			<th>M&atilde; h&agrave;ng</th>\n			<td>cgkts10db</td>\n		</tr>\n		<tr>\n			<th>Dự Kiến C&oacute; H&agrave;ng</th>\n			<td>28-05-2021</td>\n		</tr>\n		<tr>\n			<th>Ng&agrave;y Dự Kiến Ph&aacute;t H&agrave;nh</th>\n			<td>28-05-2021</td>\n		</tr>\n		<tr>\n			<th>Độ Tuổi</th>\n			<td><a href=\"https://www.fahasa.com/all-category.html?age=749509&amp;fhs_campaign=ATTRIBUTE_PRODUCT\">15 - 18</a></td>\n		</tr>\n		<tr>\n			<th>T&ecirc;n Nh&agrave; Cung Cấp</th>\n			<td><a href=\"https://www.fahasa.com/kim-dong\">Nh&agrave; Xuất Bản Kim Đồng</a></td>\n		</tr>\n		<tr>\n			<th>T&aacute;c giả</th>\n			<td>Hiromu Arakawa</td>\n		</tr>\n		<tr>\n			<th>Người Dịch</th>\n			<td>Hương Giang</td>\n		</tr>\n		<tr>\n			<th>NXB</th>\n			<td>NXB Kim Đồng</td>\n		</tr>\n		<tr>\n			<th>Năm XB</th>\n			<td>2021</td>\n		</tr>\n		<tr>\n			<th>Ng&ocirc;n Ngữ</th>\n			<td><a href=\"https://www.fahasa.com/all-category.html?languages=449750&amp;fhs_campaign=ATTRIBUTE_PRODUCT\">Tiếng Việt</a></td>\n		</tr>\n		<tr>\n			<th>Trọng lượng (gr)</th>\n			<td>250</td>\n		</tr>\n		<tr>\n			<th>K&iacute;ch Thước Bao B&igrave;</th>\n			<td>18 x 13 cm</td>\n		</tr>\n		<tr>\n			<th>Số trang</th>\n			<td>244</td>\n		</tr>\n		<tr>\n			<th>H&igrave;nh thức</th>\n			<td><a href=\"https://www.fahasa.com/all-category.html?book_layout=9&amp;fhs_campaign=ATTRIBUTE_PRODUCT\">B&igrave;a Mềm</a></td>\n		</tr>\n		<tr>\n			<th>Genres</th>\n			<td><a href=\"https://www.fahasa.com/all-category.html?genres=1161213&amp;fhs_campaign=ATTRIBUTE_PRODUCT\">Action&nbsp;</a>,&nbsp;&nbsp;<a href=\"https://www.fahasa.com/all-category.html?genres=1161214&amp;fhs_campaign=ATTRIBUTE_PRODUCT\">Adventure&nbsp;</a>,&nbsp;&nbsp;<a href=\"https://www.fahasa.com/all-category.html?genres=1161215&amp;fhs_campaign=ATTRIBUTE_PRODUCT\">Comedy&nbsp;</a>,&nbsp;&nbsp;<a href=\"https://www.fahasa.com/all-category.html?genres=1161216&amp;fhs_campaign=ATTRIBUTE_PRODUCT\">Drama&nbsp;</a>,&nbsp;&nbsp;<a href=\"https://www.fahasa.com/all-category.html?genres=1161220&amp;fhs_campaign=ATTRIBUTE_PRODUCT\">Fantasy&nbsp;</a>,&nbsp;&nbsp;<a href=\"https://www.fahasa.com/all-category.html?genres=1161232&amp;fhs_campaign=ATTRIBUTE_PRODUCT\">Sci Fi&nbsp;</a>,&nbsp;&nbsp;<a href=\"https://www.fahasa.com/all-category.html?genres=1161235&amp;fhs_campaign=ATTRIBUTE_PRODUCT\">Shounen&nbsp;</a>,&nbsp;&nbsp;<a href=\"https://www.fahasa.com/all-category.html?genres=1161239&amp;fhs_campaign=ATTRIBUTE_PRODUCT\">Supernatural&nbsp;</a>,&nbsp;&nbsp;<a href=\"https://www.fahasa.com/all-category.html?genres=1161240&amp;fhs_campaign=ATTRIBUTE_PRODUCT\">Tragedy</a></td>\n		</tr>\n		<tr>\n			<th>Sản phẩm hiển thị trong</th>\n			<td>\n			<ul>\n				<li><a href=\"https://www.fahasa.com/kim-dong?fhs_campaign=INTERNAL_LINKING\">Nh&agrave; Xuất Bản Kim Đồng</a></li>\n			</ul>\n			</td>\n		</tr>\n	</tbody>\n</table>', '<p>Trong thế giới của những giả kim thuật sư, c&oacute; một tồn tại đ&atilde; đi v&agrave;o huyền thoại v&agrave; trở th&agrave;nh ước mơ bất cứ ai cũng ao kh&aacute;t - đ&oacute; ch&iacute;nh l&agrave; &quot;H&ograve;n đ&aacute; Triết gia&quot;.</p>\n\n<p>Bối cảnh của &quot;Fullmetal Alchemist&quot; được đặt trong một thế giới hư cấu, nơi giả kim thuật l&agrave; một trong những kĩ thuật khoa học ti&ecirc;n tiến nhất con người từng biết đến. V&agrave; anh em nh&agrave; Elric cũng kh&ocirc;ng l&agrave; ngoại lệ. Sau thất bại khi cố gắng đem người mẹ dấu y&ecirc;u từ c&otilde;i chết trở về, người anh Edward mất đi ch&acirc;n tr&aacute;i v&agrave; người em Alphonse mất to&agrave;n bộ cơ thể; bằng nỗ lực đến tuyệt vọng, Edward đ&atilde; hi sinh nốt c&aacute;nh tay phải của m&igrave;nh để gi&agrave;nh lại linh hồn Alphonse v&agrave; chuyển h&oacute;a n&oacute; v&agrave;o trong một bộ gi&aacute;p.</p>\n\n<p>Kể từ ng&agrave;y kinh ho&agrave;ng đ&oacute;, cả hai đ&atilde; quyết t&acirc;m l&ecirc;n đường t&igrave;m kiếm &quot;H&ograve;n đ&aacute; Triết gia&quot; - thứ duy nhất c&oacute; thể gi&uacute;p họ kh&ocirc;i phục lại cơ thể. &quot;Mọi thứ tr&ecirc;n đời đều c&oacute; gi&aacute; của n&oacute;. Để t&igrave;m ra &quot;ch&acirc;n l&iacute;&quot;, ch&uacute;ng t&ocirc;i sẵn s&agrave;ng trả gi&aacute;, kể cả khi c&aacute;i gi&aacute; ấy l&agrave; v&ocirc; vọng...!&quot;</p>\n\n<p>Mời c&aacute;c bạn c&ugrave;ng theo ch&acirc;n anh em Elric kh&aacute;m ph&aacute; thế giới của những GIẢ KIM THUẬT SƯ th&ocirc;ng qua một trong những Manga được y&ecirc;u th&iacute;ch nhất đến từ Nữ t&aacute;c giả Hiromu Arakawa, nay đ&atilde; quay trở lại với phi&ecirc;n bản DELUXE - Fullmetal Edition...!</p>', 26, 'Truyện Tranh', NULL, NULL),
(81, 'Nghĩ Giàu & Làm Giàu (Tái Bản 2020)', 'nghi-giau-lam-giau-tai-ban-2020', 'https://www.youtube.com/watch?v=f_6g1viaM38', '/images/Product/1621653467.jpeg', 110000, 88000, 'đ', 0, 0, 0, '<p><strong>Think and Grow Rich - Nghĩ gi&agrave;u v&agrave; l&agrave;m gi&agrave;u</strong>&nbsp;l&agrave; một trong những cuốn s&aacute;ch b&aacute;n chạy nhất mọi thời đại. Đ&atilde; hơn 60 triệu bản được ph&aacute;t h&agrave;nh với gần trăm ng&ocirc;n ngữ tr&ecirc;n to&agrave;n thế giới v&agrave; được c&ocirc;ng nhận l&agrave; cuốn s&aacute;ch tạo ra nhiều triệu ph&uacute;, một cuốn s&aacute;ch truyền cảm hứng th&agrave;nh c&ocirc;ng nhiều hơn bất cứ cuốn s&aacute;ch kinh doanh n&agrave;o trong lịch sử.</p>\n\n<p>T&aacute;c phẩm n&agrave;y đ&atilde; gi&uacute;p t&aacute;c giả của n&oacute;, Napoleon Hill, được t&ocirc;n vinh bằng danh hiệu &ldquo;người tạo ra những nh&agrave; triệu ph&uacute;&rdquo;. Đ&acirc;y cũng l&agrave; cuốn s&aacute;ch hiếm hoi được đứng trong top của rất nhiều b&igrave;nh chọn theo nhiều ti&ecirc;u ch&iacute; kh&aacute;c nhau - b&igrave;nh chọn của độc giả, của giới chuy&ecirc;n m&ocirc;n, của b&aacute;o ch&iacute;. L&yacute; do để&nbsp;<strong>Think and Grow Rich - Nghĩ gi&agrave;u v&agrave; l&agrave;m gi&agrave;u</strong>&nbsp;c&oacute; được vinh quang n&agrave;y thật hiển nhi&ecirc;n v&agrave; dễ hiểu: Bằng việc đọc v&agrave; &aacute;p dụng những phương ph&aacute;p đơn giản, c&ocirc; đọng n&agrave;y v&agrave;o đời sống của mỗi c&aacute; nh&acirc;n m&agrave; đ&atilde; c&oacute; h&agrave;ng ng&agrave;n người tr&ecirc;n thế giới trở th&agrave;nh triệu ph&uacute; v&agrave; th&agrave;nh c&ocirc;ng bền vững.</p>', '<table>\n	<tbody>\n		<tr>\n			<th>M&atilde; h&agrave;ng</th>\n			<td>8935086844342</td>\n		</tr>\n		<tr>\n			<th>T&ecirc;n Nh&agrave; Cung Cấp</th>\n			<td><a href=\"https://www.fahasa.com/first-news\">FIRST NEWS</a></td>\n		</tr>\n		<tr>\n			<th>T&aacute;c giả</th>\n			<td>Napoleon Hill</td>\n		</tr>\n		<tr>\n			<th>Người Dịch</th>\n			<td>Việt Khương</td>\n		</tr>\n		<tr>\n			<th>NXB</th>\n			<td>NXB Tổng Hợp TPHCM</td>\n		</tr>\n		<tr>\n			<th>Năm XB</th>\n			<td>2020</td>\n		</tr>\n		<tr>\n			<th>Ng&ocirc;n Ngữ</th>\n			<td><a href=\"https://www.fahasa.com/all-category.html?languages=449750&amp;fhs_campaign=ATTRIBUTE_PRODUCT\">Tiếng Việt</a></td>\n		</tr>\n		<tr>\n			<th>Trọng lượng (gr)</th>\n			<td>450</td>\n		</tr>\n		<tr>\n			<th>K&iacute;ch Thước Bao B&igrave;</th>\n			<td>20.5 x 14.5 cm</td>\n		</tr>\n		<tr>\n			<th>Số trang</th>\n			<td>400</td>\n		</tr>\n		<tr>\n			<th>H&igrave;nh thức</th>\n			<td><a href=\"https://www.fahasa.com/all-category.html?book_layout=9&amp;fhs_campaign=ATTRIBUTE_PRODUCT\">B&igrave;a Mềm</a></td>\n		</tr>\n	</tbody>\n</table>\n\n<p>&nbsp;</p>', '<p>Nghĩ Gi&agrave;u &amp; L&agrave;m Gi&agrave;u (T&aacute;i Bản) -&nbsp;<em>(T&aacute;i bản của cuốn &quot;C&aacute;ch Nghĩ Để Th&agrave;nh C&ocirc;ng&quot;)</em></p>\n\n<p><strong>NGHĨ GI&Agrave;U V&Agrave; L&Agrave;M GI&Agrave;U</strong></p>\n\n<p><strong>Think and Grow Rich - Nghĩ gi&agrave;u v&agrave; l&agrave;m gi&agrave;u</strong>&nbsp;l&agrave; một trong những cuốn s&aacute;ch b&aacute;n chạy nhất mọi thời đại. Đ&atilde; hơn 60 triệu bản được ph&aacute;t h&agrave;nh với gần trăm ng&ocirc;n ngữ tr&ecirc;n to&agrave;n thế giới v&agrave; được c&ocirc;ng nhận l&agrave; cuốn s&aacute;ch tạo ra nhiều triệu ph&uacute;, một cuốn s&aacute;ch truyền cảm hứng th&agrave;nh c&ocirc;ng nhiều hơn bất cứ cuốn s&aacute;ch kinh doanh n&agrave;o trong lịch sử.</p>\n\n<p>T&aacute;c phẩm n&agrave;y đ&atilde; gi&uacute;p t&aacute;c giả của n&oacute;, Napoleon Hill, được t&ocirc;n vinh bằng danh hiệu &ldquo;người tạo ra những nh&agrave; triệu ph&uacute;&rdquo;. Đ&acirc;y cũng l&agrave; cuốn s&aacute;ch hiếm hoi được đứng trong top của rất nhiều b&igrave;nh chọn theo nhiều ti&ecirc;u ch&iacute; kh&aacute;c nhau - b&igrave;nh chọn của độc giả, của giới chuy&ecirc;n m&ocirc;n, của b&aacute;o ch&iacute;. L&yacute; do để&nbsp;<strong>Think and Grow Rich - Nghĩ gi&agrave;u v&agrave; l&agrave;m gi&agrave;u</strong>&nbsp;c&oacute; được vinh quang n&agrave;y thật hiển nhi&ecirc;n v&agrave; dễ hiểu: Bằng việc đọc v&agrave; &aacute;p dụng những phương ph&aacute;p đơn giản, c&ocirc; đọng n&agrave;y v&agrave;o đời sống của mỗi c&aacute; nh&acirc;n m&agrave; đ&atilde; c&oacute; h&agrave;ng ng&agrave;n người tr&ecirc;n thế giới trở th&agrave;nh triệu ph&uacute; v&agrave; th&agrave;nh c&ocirc;ng bền vững.</p>\n\n<p>Điều th&uacute; vị nhất l&agrave; c&aacute;c b&iacute; quyết n&agrave;y c&oacute; thể được hiểu v&agrave; &aacute;p dụng bởi bất kỳ một người b&igrave;nh thường n&agrave;o, hoạt động trong bất cứ lĩnh vực n&agrave;o. Qua hơn 70 năm tồn tại, những đ&uacute;c kết về th&agrave;nh c&ocirc;ng của Napoleon Hill đến nay vẫn kh&ocirc;ng hề bị lỗi thời, ngược lại, thời gian ch&iacute;nh l&agrave; minh chứng sống động cho t&iacute;nh đ&uacute;ng đắn của những b&iacute; quyết m&agrave; &ocirc;ng chia sẻ.</p>\n\n<p>Sinh ra trong một gia đ&igrave;nh ngh&egrave;o v&ugrave;ng T&acirc;y Virginia, con đường th&agrave;nh c&ocirc;ng của Napoleon Hill cũng trải qua nhiều thăng trầm. Khởi đầu bằng ch&acirc;n cộng t&aacute;c vi&ecirc;n cho một tờ b&aacute;o địa phương l&uacute;c 15 tuổi, đến năm 19 tuổi Hill trở th&agrave;nh nh&agrave; quản l&yacute; mỏ than trẻ tuổi nhất, sau đ&oacute; bỏ ngang để theo đuổi ng&agrave;nh luật. Napoleon Hill c&ograve;n kinh qua nhiều nghề như kinh doanh gỗ, xe hơi, viết b&aacute;o về kinh doanh&hellip;</p>\n\n<p>Đ&oacute; l&agrave; những c&ocirc;ng việc &ocirc;ng từng nếm trải trước khi 25 tuổi! Song kh&aacute;c với những người th&agrave;nh đạt kh&aacute;c, &ocirc;ng cẩn thận ph&acirc;n t&iacute;ch từng sự kiện trọng đại trong đời m&igrave;nh, r&uacute;t ra những b&agrave;i học, rồi tiếp tục r&uacute;t gọn ch&uacute;ng th&agrave;nh c&aacute;c nguy&ecirc;n tắc căn bản, tổ chức c&aacute;c nguy&ecirc;n tắc ấy th&agrave;nh triết l&yacute; sống v&agrave; r&egrave;n luyện...</p>\n\n<p>Cơ hội đặc biệt đ&atilde; đến với Hill trong một lần phỏng vấn để viết về ch&acirc;n dung Andrew Carnegie - &ocirc;ng &ldquo;vua th&eacute;p&rdquo; huyền thoại của Mỹ đ&atilde; đi l&ecirc;n từ hai b&agrave;n tay trắng. Từ lần phỏng vấn đ&oacute;, Napoleon Hill c&oacute; dịp tiếp cận với những con người th&agrave;nh đạt v&agrave; c&oacute; quyền lực nhất tại Mỹ để t&igrave;m hiểu v&agrave; học hỏi những b&iacute; quyết th&agrave;nh c&ocirc;ng của họ, trong thế so s&aacute;nh v&agrave; kiểm chứng với những c&ocirc;ng thức th&agrave;nh c&ocirc;ng của Andrew Carnegie. &Ocirc;ng muốn qua đ&oacute; c&oacute; thể đ&uacute;c kết v&agrave; viết n&ecirc;n một cuốn s&aacute;ch ghi lại những b&iacute; quyết gi&uacute;p c&aacute;c c&aacute; nh&acirc;n b&igrave;nh thường th&agrave;nh những người th&agrave;nh c&ocirc;ng trong x&atilde; hội.</p>\n\n<p>Để thực hiện cuốn s&aacute;ch n&agrave;y, Napoleon Hill d&agrave;nh hầu như to&agrave;n bộ thời gian v&agrave; c&ocirc;ng sức trong suốt gần ba mươi năm để phỏng vấn hơn 500 người nổi tiếng v&agrave; th&agrave;nh c&ocirc;ng nhất trong nhiều lĩnh vực kh&aacute;c nhau, c&ugrave;ng h&agrave;ng ng&agrave;n doanh nh&acirc;n kh&aacute;c - cả những kẻ thất bại v&agrave; những người th&agrave;nh c&ocirc;ng. Kết quả của những nghi&ecirc;n cứu kh&ocirc;ng mệt mỏi đ&oacute; l&agrave;&nbsp;<strong>Think and Grow Rich - Nghĩ gi&agrave;u v&agrave; l&agrave;m gi&agrave;u</strong>&nbsp;- c&ocirc;ng thức, hay &ldquo;cẩm nang&rdquo; để trở th&agrave;nh vượt trội v&agrave; được x&atilde; hội nể trọng.</p>\n\n<p>Cuốn s&aacute;ch cũng đưa Napoleon Hill v&agrave;o danh s&aacute;ch một trong những t&aacute;c giả c&oacute; t&aacute;c phẩm b&aacute;n chạy nhất thế giới từ trước đến nay. Được viết ra từ v&ocirc; số những c&acirc;u chuyện c&oacute; thật, t&aacute;c phẩm c&oacute; một sức thuyết phục v&agrave; lay động rất lớn. Bạn kh&ocirc;ng chỉ được biết b&iacute; quyết về sự th&agrave;nh c&ocirc;ng của c&aacute;c t&ecirc;n tuổi như Edison - nh&agrave; ph&aacute;t minh lỗi lạc m&agrave; thời gian r&egrave;n luyện trong trường học chỉ&hellip; vỏn vẹn 3 th&aacute;ng; như Henry Ford - người bị coi l&agrave; kh&ocirc;ng c&oacute; học vấn nhưng đ&atilde; trở th&agrave;nh &ocirc;ng tr&ugrave;m trong nền c&ocirc;ng nghiệp xe hơi với một gia t&agrave;i kếch x&ugrave;&hellip; m&agrave; c&ograve;n của rất nhiều c&aacute; nh&acirc;n trong nhiều lĩnh vực kh&aacute;c nhau đ&atilde; đi l&ecirc;n từ con số kh&ocirc;ng.</p>\n\n<p><strong>Think and Grow Rich - Nghĩ gi&agrave;u v&agrave; l&agrave;m gi&agrave;u</strong>&nbsp;l&agrave; cuốn s&aacute;ch đầu ti&ecirc;n đưa ra triết l&yacute; th&agrave;nh đạt - một triết l&yacute; đầy đủ v&agrave; to&agrave;n diện về th&agrave;nh c&ocirc;ng của c&aacute; nh&acirc;n, đồng thời cung cấp cho bạn phương ph&aacute;p để tạo một &yacute; thức th&agrave;nh c&ocirc;ng cũng như đưa ra kế hoạch sơ bộ v&agrave; chi tiết để đạt được th&agrave;nh c&ocirc;ng đ&oacute;. C&aacute;c b&iacute; quyết th&agrave;nh c&ocirc;ng được đề cập đến trong cuốn s&aacute;ch n&agrave;y c&oacute; thể được đ&uacute;c kết ngắn gọn: tất cả bắt nguồn từ c&aacute;ch nghĩ.</p>\n\n<p>Do đ&oacute;, cuốn s&aacute;ch n&agrave;y kh&ocirc;ng chỉ thay đổi những điều bạn nghĩ m&agrave; c&ograve;n c&oacute; thể thay đổi cả c&aacute;ch nghĩ của bạn; kh&ocirc;ng dừng lại ở việc chỉ ra cho bạn thấy bạn phải l&agrave;m g&igrave; m&agrave; c&ograve;n vạch cho bạn biết phải l&agrave;m điều đ&oacute; như thế n&agrave;o để đạt được kh&aacute;t vọng của m&igrave;nh. Ra mắt bạn đọc với phi&ecirc;n bản cao cấp lần n&agrave;y, cuốn s&aacute;ch thay đổi nhiều về h&igrave;nh thức thiết kế b&igrave;a cứng, m&agrave;u n&acirc;u đen, chữ v&agrave;ng &aacute;nh kim dập nổi sang trọng, tinh tế.</p>\n\n<p><strong>B&aacute;o ch&iacute; n&oacute;i g&igrave; về cuốn s&aacute;ch:</strong></p>\n\n<p><em>&ldquo;Nghĩ gi&agrave;u l&agrave;m gi&agrave;u l&agrave; tinh hoa được Napoleon Hill d&agrave;nh to&agrave;n bộ thời gian v&agrave; c&ocirc;ng sức suốt gần 30 năm để phỏng vấn hơn 500 người nổi tiếng v&agrave; th&agrave;nh c&ocirc;ng nhất trong nhiều lĩnh vực, c&ugrave;ng h&agrave;ng ng&agrave;n doanh nh&acirc;n kh&aacute;c. Cuốn s&aacute;ch n&agrave;y c&oacute; gi&aacute; trị vĩnh hằng theo thời gian về t&iacute;nh đ&uacute;ng đắn khi ứng dụng thực tiễn.&rdquo;</em>&nbsp;&ndash;<strong>&nbsp;Học Napoleon Hill &#39;Nghĩ gi&agrave;u l&agrave;m gi&agrave;u&#39; (Một Thế Giới)</strong></p>\n\n<p><em>&quot;Để c&oacute; cảm hứng, h&atilde;y đọc &ldquo;Nghĩ gi&agrave;u v&agrave; l&agrave;m gi&agrave;u!&#39; Đ&oacute; l&agrave; bước đầu ti&ecirc;n để đưa ra chiến lược chiến thắng.&quot;</em>&nbsp;&ndash;&nbsp;<strong>The Sunday Times</strong></p>\n\n<p><strong>Người nổi tiếng n&oacute;i g&igrave; về cuốn s&aacute;ch:</strong></p>\n\n<p><em>&quot;Trong hai mươi lăm năm qua, t&ocirc;i đ&atilde; được ban phước với nhiều may mắn hơn bất kỳ c&aacute; nh&acirc;n n&agrave;o xứng đ&aacute;ng nhưng t&ocirc;i lu&ocirc;n r&ugrave;ng m&igrave;nh khi nghĩ m&igrave;nh sẽ ở đ&acirc;u h&ocirc;m nay, hoặc t&ocirc;i sẽ l&agrave;m g&igrave; nếu kh&ocirc;ng được tiếp x&uacute;c với triết l&yacute; của Napoleon Hill. N&oacute; đ&atilde; thay đổi cuộc đời t&ocirc;i.&quot;</em>&nbsp;-&nbsp;<strong>Og Mandino</strong>, t&aacute;c giả của &ldquo;Người b&aacute;n h&agrave;ng vĩ đại nhất thế giới&rdquo;</p>\n\n<p><em>&ldquo;Đ&acirc;y l&agrave; cuốn s&aacute;ch duy nhất về th&agrave;nh c&ocirc;ng c&aacute; nh&acirc;n từng được viết; n&oacute; l&agrave;m cho t&ocirc;i trở th&agrave;nh một triệu ph&uacute; từ người kh&ocirc;ng c&oacute; g&igrave;.&rdquo;</em>&nbsp;-&nbsp;<strong>Brian Tracy</strong>, t&aacute;c giả của &ldquo;Chinh phục mục ti&ecirc;u&rdquo;</p>\n\n<p><strong>Về t&aacute;c giả</strong></p>\n\n<p><em>Napoleon Hill</em>&nbsp;(1883 - 1970) l&agrave; một t&aacute;c gia người Mỹ, &ocirc;ng được coi l&agrave; một trong những t&aacute;c gia ti&ecirc;u biểu th&agrave;nh c&ocirc;ng nhất trong lịch sử. Napoleon l&agrave; một trong những người đầu ti&ecirc;n s&aacute;ng tạo n&ecirc;n một thể loại văn học mới trong nền văn học hiện đại đ&oacute; l&agrave; văn học để ph&aacute;t triển th&agrave;nh c&ocirc;ng con người. Cuốn s&aacute;ch được biết đến nhiều nhất của &ocirc;ng l&agrave; cuốn Think and Grow Rich (1937), cuốn s&aacute;ch đ&atilde; b&aacute;n được tr&ecirc;n 20 triệu bản in tr&ecirc;n to&agrave;n thế giới (t&iacute;nh tới thời điểm &ocirc;ng mất năm 1970). Cho tới nay cuốn s&aacute;ch n&agrave;y vẫn đang được dịch ra nhiều thứ tiếng tr&ecirc;n thế giới v&agrave; trở th&agrave;nh cuốn s&aacute;ch gối đầu giường của rất nhiều độc giả.</p>\n\n<p>&Ocirc;ng từng được mời l&agrave;m cố vấn cho Tổng thống Mỹ Franklin D.Roosevelt từ năm 1933 đến năm 1936. Napoleon Hill rất nổi tiếng với c&acirc;u n&oacute;i &quot;Những g&igrave; t&acirc;m tr&iacute; c&oacute; thể nhận thức được v&agrave; tin tưởng th&igrave; nhất định t&acirc;m tr&iacute; sẽ l&agrave;m được&quot;. Những th&agrave;nh tựu m&agrave; &ocirc;ng đ&atilde; đạt được cũng như c&aacute;c c&ocirc;ng thức th&agrave;nh c&ocirc;ng m&agrave; &ocirc;ng đề cập tới đều c&oacute; ảnh hưởng rất lớn tới nhiều thế hệ độc giả.</p>', 21, 'Sách kinh tế', NULL, NULL),
(82, 'OVERLORD - Tập 6 (Phiên Bản Manga)', 'overlord-tap-6-phien-ban-manga', NULL, '/images/Product/1621653681.jpeg', 35000, 32000, 'đ', 0, 0, 0, '<p>Nhằm đối ph&oacute; với kẻ địch sở hữu WI, Ainz tiến h&agrave;nh kế hoạch củng cố sức mạnh cho Nazarick. Anh ra lệnh cho thuộc hạ Cocytus tấn c&ocirc;ng l&agrave;ng của Lizardman, t&iacute;nh d&ugrave;ng cơ thể Lizardman để tạo ra những Undead h&ugrave;ng mạnh.</p>\n\n<p>G&atilde; Lizardman Zaryusu quyết t&acirc;m chiến đấu với kẻ th&ugrave; b&iacute; ẩn. Cho rằng c&aacute;c bộ tộc Lizardman cần li&ecirc;n minh, Zaryusu đ&atilde; t&igrave;m đến bộ tộc Red Eye v&agrave; c&oacute; cuộc gặp gỡ định mệnh với n&agrave;ng quyền tộc trưởng của Red Eye l&agrave; Crusch. Cả hai c&ugrave;ng tới bộ tộc Dragon Tusk để mời hợp sức.</p>\n\n<p>Tập 6 n&agrave;y l&agrave; diễn biến trận chiến đầu ti&ecirc;n giữa đội qu&acirc;n của Nazarick với Lizardman. Tưởng chừng lực lượng ch&ecirc;nh lệch, thế trận nghi&ecirc;ng hẳn về Nazarick, nhưng kh&ocirc;ng, những Lizardman anh dũng đ&atilde; l&agrave;m n&ecirc;n bất ngờ&hellip;</p>', '<table>\n	<tbody>\n		<tr>\n			<th>M&atilde; h&agrave;ng</th>\n			<td>8935250704991</td>\n		</tr>\n		<tr>\n			<th>T&ecirc;n Nh&agrave; Cung Cấp</th>\n			<td><a href=\"https://www.fahasa.com/ipm\">IPM</a></td>\n		</tr>\n		<tr>\n			<th>T&aacute;c giả</th>\n			<td>Maruyama Kugane, Miyama Hugin, Oshio Satoshi</td>\n		</tr>\n		<tr>\n			<th>NXB</th>\n			<td>NXB Hồng Đức</td>\n		</tr>\n		<tr>\n			<th>Năm XB</th>\n			<td>2021</td>\n		</tr>\n		<tr>\n			<th>Ng&ocirc;n Ngữ</th>\n			<td><a href=\"https://www.fahasa.com/all-category.html?languages=449750&amp;fhs_campaign=ATTRIBUTE_PRODUCT\">Tiếng Việt</a></td>\n		</tr>\n		<tr>\n			<th>Trọng lượng (gr)</th>\n			<td>200</td>\n		</tr>\n		<tr>\n			<th>K&iacute;ch Thước Bao B&igrave;</th>\n			<td>18 x 13 cm</td>\n		</tr>\n		<tr>\n			<th>Số trang</th>\n			<td>164</td>\n		</tr>\n		<tr>\n			<th>H&igrave;nh thức</th>\n			<td><a href=\"https://www.fahasa.com/all-category.html?book_layout=9&amp;fhs_campaign=ATTRIBUTE_PRODUCT\">B&igrave;a Mềm</a></td>\n		</tr>\n	</tbody>\n</table>', '<p>Nhằm đối ph&oacute; với kẻ địch sở hữu WI, Ainz tiến h&agrave;nh kế hoạch củng cố sức mạnh cho Nazarick. Anh ra lệnh cho thuộc hạ Cocytus tấn c&ocirc;ng l&agrave;ng của Lizardman, t&iacute;nh d&ugrave;ng cơ thể Lizardman để tạo ra những Undead h&ugrave;ng mạnh.</p>\n\n<p>G&atilde; Lizardman Zaryusu quyết t&acirc;m chiến đấu với kẻ th&ugrave; b&iacute; ẩn. Cho rằng c&aacute;c bộ tộc Lizardman cần li&ecirc;n minh, Zaryusu đ&atilde; t&igrave;m đến bộ tộc Red Eye v&agrave; c&oacute; cuộc gặp gỡ định mệnh với n&agrave;ng quyền tộc trưởng của Red Eye l&agrave; Crusch. Cả hai c&ugrave;ng tới bộ tộc Dragon Tusk để mời hợp sức.</p>\n\n<p>Tập 6 n&agrave;y l&agrave; diễn biến trận chiến đầu ti&ecirc;n giữa đội qu&acirc;n của Nazarick với Lizardman. Tưởng chừng lực lượng ch&ecirc;nh lệch, thế trận nghi&ecirc;ng hẳn về Nazarick, nhưng kh&ocirc;ng, những Lizardman anh dũng đ&atilde; l&agrave;m n&ecirc;n bất ngờ&hellip;</p>', 26, 'Truyện Tranh', NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `productsimage`
--

CREATE TABLE `productsimage` (
  `id` int(10) UNSIGNED NOT NULL,
  `image_name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_product` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `settings`
--

CREATE TABLE `settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `map` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nameco` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mail` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `logo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slogan` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fanpage` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `seo_title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `seo_keyword` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `seo_description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fb_app_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `google_analyst` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `settings`
--

INSERT INTO `settings` (`id`, `map`, `nameco`, `address`, `phone`, `mail`, `logo`, `slogan`, `fanpage`, `seo_title`, `seo_keyword`, `seo_description`, `fb_app_id`, `google_analyst`) VALUES
(1, '#', 'Nhà sách trực tuyến FAHASA', 'TP.Thái Bình', '0987196812', 'ntak.ictu@gmail.com', '/images/logos/1621605648.png', 'Mua sách online', 'https://facebook.com/guardianz.of.destiny', 'Nhà sách trực tuyến FAHASA', 'key', 'seo desc', '1235253255225845', '0000');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `slides`
--

CREATE TABLE `slides` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `link` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '#',
  `link_youtube` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '#',
  `image` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `position` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `phone`, `address`, `status`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Khách vãng lai', 'default@gmail.com', '$2y$10$kjpbCmO2vgTld7MNVxMCRO4ub1kn3I0t1seakAUUo02joZSAq9HX6', '000000000', 'shop default user', 1, NULL, NULL, NULL);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admins_email_unique` (`email`);

--
-- Chỉ mục cho bảng `cities`
--
ALTER TABLE `cities`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `dborders`
--
ALTER TABLE `dborders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `dborders_id_user_foreign` (`id_user`);

--
-- Chỉ mục cho bảng `dbordersproduct`
--
ALTER TABLE `dbordersproduct`
  ADD PRIMARY KEY (`id`),
  ADD KEY `dbordersproduct_id_product_foreign` (`id_product`),
  ADD KEY `dbordersproduct_id_dborder_foreign` (`id_dborder`);

--
-- Chỉ mục cho bảng `districts`
--
ALTER TABLE `districts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `provinceid` (`idcity`);

--
-- Chỉ mục cho bảng `listnews`
--
ALTER TABLE `listnews`
  ADD PRIMARY KEY (`id`),
  ADD KEY `listnews_id_modnews_foreign` (`id_modnews`);

--
-- Chỉ mục cho bảng `listproducts`
--
ALTER TABLE `listproducts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `listproducts_id_mod_foreign` (`id_mod`);

--
-- Chỉ mục cho bảng `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `modnews`
--
ALTER TABLE `modnews`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `modproducts`
--
ALTER TABLE `modproducts`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`),
  ADD KEY `news_id_listnews_foreign` (`id_listnews`);

--
-- Chỉ mục cho bảng `oauth_access_tokens`
--
ALTER TABLE `oauth_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_access_tokens_user_id_index` (`user_id`);

--
-- Chỉ mục cho bảng `oauth_auth_codes`
--
ALTER TABLE `oauth_auth_codes`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `oauth_clients`
--
ALTER TABLE `oauth_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_clients_user_id_index` (`user_id`);

--
-- Chỉ mục cho bảng `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_personal_access_clients_client_id_index` (`client_id`);

--
-- Chỉ mục cho bảng `oauth_refresh_tokens`
--
ALTER TABLE `oauth_refresh_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`);

--
-- Chỉ mục cho bảng `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Chỉ mục cho bảng `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `products_list_id_foreign` (`list_id`);

--
-- Chỉ mục cho bảng `productsimage`
--
ALTER TABLE `productsimage`
  ADD PRIMARY KEY (`id`),
  ADD KEY `productsimage_id_product_foreign` (`id_product`);

--
-- Chỉ mục cho bảng `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `slides`
--
ALTER TABLE `slides`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `admins`
--
ALTER TABLE `admins`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `dborders`
--
ALTER TABLE `dborders`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT cho bảng `dbordersproduct`
--
ALTER TABLE `dbordersproduct`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT cho bảng `listnews`
--
ALTER TABLE `listnews`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `listproducts`
--
ALTER TABLE `listproducts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT cho bảng `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT cho bảng `modnews`
--
ALTER TABLE `modnews`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `modproducts`
--
ALTER TABLE `modproducts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT cho bảng `news`
--
ALTER TABLE `news`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT cho bảng `oauth_clients`
--
ALTER TABLE `oauth_clients`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `products`
--
ALTER TABLE `products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=83;

--
-- AUTO_INCREMENT cho bảng `productsimage`
--
ALTER TABLE `productsimage`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `slides`
--
ALTER TABLE `slides`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `dborders`
--
ALTER TABLE `dborders`
  ADD CONSTRAINT `dborders_id_user_foreign` FOREIGN KEY (`id_user`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `dbordersproduct`
--
ALTER TABLE `dbordersproduct`
  ADD CONSTRAINT `dbordersproduct_id_dborder_foreign` FOREIGN KEY (`id_dborder`) REFERENCES `dborders` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `dbordersproduct_id_product_foreign` FOREIGN KEY (`id_product`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `listnews`
--
ALTER TABLE `listnews`
  ADD CONSTRAINT `listnews_id_modnews_foreign` FOREIGN KEY (`id_modnews`) REFERENCES `modnews` (`id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `listproducts`
--
ALTER TABLE `listproducts`
  ADD CONSTRAINT `listproducts_id_mod_foreign` FOREIGN KEY (`id_mod`) REFERENCES `modproducts` (`id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `news`
--
ALTER TABLE `news`
  ADD CONSTRAINT `news_id_listnews_foreign` FOREIGN KEY (`id_listnews`) REFERENCES `listnews` (`id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_list_id_foreign` FOREIGN KEY (`list_id`) REFERENCES `listproducts` (`id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `productsimage`
--
ALTER TABLE `productsimage`
  ADD CONSTRAINT `productsimage_id_product_foreign` FOREIGN KEY (`id_product`) REFERENCES `products` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
