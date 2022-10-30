-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1:3306
-- Thời gian đã tạo: Th10 30, 2022 lúc 10:58 AM
-- Phiên bản máy phục vụ: 5.7.36
-- Phiên bản PHP: 7.4.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `xekhach`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `admin_lienhe`
--

DROP TABLE IF EXISTS `admin_lienhe`;
CREATE TABLE IF NOT EXISTS `admin_lienhe` (
  `Mã` int(11) NOT NULL AUTO_INCREMENT,
  `admin_id` int(11) NOT NULL,
  `lh_id` int(11) NOT NULL,
  `is_checked` int(11) NOT NULL,
  PRIMARY KEY (`Mã`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `admin_lienhe`
--

INSERT INTO `admin_lienhe` (`Mã`, `admin_id`, `lh_id`, `is_checked`) VALUES
(1, 1, 1, 1),
(2, 1, 3, 1),
(3, 1, 2, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `bus_model`
--

DROP TABLE IF EXISTS `bus_model`;
CREATE TABLE IF NOT EXISTS `bus_model` (
  `Mã` int(11) NOT NULL AUTO_INCREMENT,
  `Tên_Loại` varchar(255) NOT NULL,
  `Loại_ghế` int(11) NOT NULL,
  `Số_ghế` int(11) NOT NULL,
  `Số_hàng` int(11) NOT NULL,
  `Số_cột` int(11) NOT NULL,
  `Sơ_đồ` varchar(255) NOT NULL,
  `Mã_nhân_viên_tạo` int(11) NOT NULL,
  `Mã_nhân_viên_chỉnh_sửa` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`Mã`),
  UNIQUE KEY `Tên_Loại` (`Tên_Loại`),
  UNIQUE KEY `Sơ_đồ` (`Sơ_đồ`),
  KEY `Mã_nhân_viên_chỉnh_sửa` (`Mã_nhân_viên_chỉnh_sửa`),
  KEY `Mã_nhân_viên_tạo` (`Mã_nhân_viên_tạo`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `bus_model`
--

INSERT INTO `bus_model` (`Mã`, `Tên_Loại`, `Loại_ghế`, `Số_ghế`, `Số_hàng`, `Số_cột`, `Sơ_đồ`, `Mã_nhân_viên_tạo`, `Mã_nhân_viên_chỉnh_sửa`, `created_at`, `updated_at`) VALUES
(6, 'Ghe Ngoi', 0, 47, 12, 6, '100000110011110011110011110011110011110011110011110011110011110011111111', 1, 1, '2018-10-24 08:15:10', '2018-10-24 08:15:10'),
(7, 'Giuong Nam', 1, 41, 13, 5, '10000101011010110101101011010111111101011010110101101011010111111', 1, 1, '2018-10-24 08:20:42', '2018-10-24 08:20:42');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `chuyen_xe`
--

DROP TABLE IF EXISTS `chuyen_xe`;
CREATE TABLE IF NOT EXISTS `chuyen_xe` (
  `Mã` int(11) NOT NULL AUTO_INCREMENT,
  `Mã_nhân_viên_tạo` int(11) NOT NULL,
  `Mã_lộ_trình` int(11) NOT NULL,
  `Mã_tài_xế` int(11) NOT NULL,
  `Mã_xe` int(11) NOT NULL,
  `Ngày_xuất_phát` date NOT NULL,
  `Giờ_xuất_phát` time NOT NULL,
  `Trạng_thái` int(11) NOT NULL DEFAULT '0',
  `Tiền_vé` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `is_del` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`Mã`),
  KEY `Mã_lộ_trình` (`Mã_lộ_trình`),
  KEY `Mã_tài_xế` (`Mã_tài_xế`),
  KEY `Mã_xe` (`Mã_xe`),
  KEY `Mã_nhân_viên_tạo` (`Mã_nhân_viên_tạo`)
) ENGINE=InnoDB AUTO_INCREMENT=54 DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `chuyen_xe`
--

INSERT INTO `chuyen_xe` (`Mã`, `Mã_nhân_viên_tạo`, `Mã_lộ_trình`, `Mã_tài_xế`, `Mã_xe`, `Ngày_xuất_phát`, `Giờ_xuất_phát`, `Trạng_thái`, `Tiền_vé`, `created_at`, `updated_at`, `is_del`) VALUES
(50, 1, 10, 3, 6, '2022-10-30', '06:30:00', 0, 275000, '2022-10-29 04:49:01', '2022-10-29 05:18:37', 1),
(51, 1, 10, 5, 7, '2022-10-30', '09:30:00', 0, 275000, '2022-10-29 04:54:52', '2022-10-30 05:33:26', 1),
(52, 1, 11, 3, 9, '2022-10-30', '09:30:00', 0, 275000, '2022-10-29 05:14:00', '2022-10-29 05:14:53', 1),
(53, 1, 10, 8, 10, '2022-10-30', '07:45:00', 0, 275000, '2022-10-30 05:51:24', '2022-10-30 05:51:24', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `customer`
--

DROP TABLE IF EXISTS `customer`;
CREATE TABLE IF NOT EXISTS `customer` (
  `Mã` int(11) NOT NULL AUTO_INCREMENT,
  `Tên` varchar(255) DEFAULT NULL,
  `Tên_không_dấu` varchar(255) NOT NULL,
  `Ngày_sinh` date DEFAULT NULL,
  `Giới tính` set('0','1','2') DEFAULT NULL,
  `Địa chỉ` tinytext,
  `Password` varchar(255) NOT NULL,
  `Email` varchar(255) DEFAULT NULL,
  `Sđt` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`Mã`),
  UNIQUE KEY `Sđt` (`Sđt`),
  UNIQUE KEY `Email` (`Email`)
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `customer`
--

INSERT INTO `customer` (`Mã`, `Tên`, `Tên_không_dấu`, `Ngày_sinh`, `Giới tính`, `Địa chỉ`, `Password`, `Email`, `Sđt`, `created_at`, `updated_at`) VALUES
(37, 'Nguyễn Thanh Phong', 'Nguyen Thanh Phong', '1994-02-20', '1', 'Bạc Liêu', 'e10adc3949ba59abbe56e057f20f883e', 'thanhphong@gmail.com', '0912445566', '2022-10-29 16:23:24', '2022-10-29 16:23:24');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `dondatve`
--

DROP TABLE IF EXISTS `dondatve`;
CREATE TABLE IF NOT EXISTS `dondatve` (
  `Mã` varchar(255) NOT NULL,
  `Mã_nhân_viên_đặt` int(11) DEFAULT NULL,
  `Mã_khách_hàng` int(11) NOT NULL,
  `Mã_chuyến_xe` int(11) NOT NULL,
  `Vị_trí_đặt` varchar(255) NOT NULL,
  `Trạng_thái` int(11) NOT NULL DEFAULT '0',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`Mã`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `duong_di`
--

DROP TABLE IF EXISTS `duong_di`;
CREATE TABLE IF NOT EXISTS `duong_di` (
  `Mã` int(11) NOT NULL AUTO_INCREMENT,
  `Mã_Trạm_Start` int(11) NOT NULL,
  `Mã_Trạm_End` int(11) NOT NULL,
  `Tọa_độ_detail` text NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`Mã`),
  KEY `Mã_Trạm_Start` (`Mã_Trạm_Start`),
  KEY `Mã_Trạm_End` (`Mã_Trạm_End`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `employee`
--

DROP TABLE IF EXISTS `employee`;
CREATE TABLE IF NOT EXISTS `employee` (
  `Mã` int(11) NOT NULL AUTO_INCREMENT,
  `Họ_Tên` varchar(255) NOT NULL,
  `Ngày_sinh` date NOT NULL,
  `Giới_tính` set('0','1','2') DEFAULT NULL,
  `Địa_chỉ` tinytext NOT NULL,
  `Username` varchar(255) DEFAULT NULL,
  `Password` varchar(255) NOT NULL,
  `Email` varchar(255) NOT NULL,
  `Loại_NV` set('QTV','QLDV','TX') NOT NULL,
  `Chi_nhánh` varchar(255) DEFAULT NULL,
  `Bằng_lái` varchar(255) DEFAULT NULL,
  `Sđt` varchar(255) NOT NULL,
  `Date_Starting` date NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`Mã`),
  UNIQUE KEY `Email` (`Email`),
  UNIQUE KEY `Sđt` (`Sđt`),
  UNIQUE KEY `Username` (`Username`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `employee`
--

INSERT INTO `employee` (`Mã`, `Họ_Tên`, `Ngày_sinh`, `Giới_tính`, `Địa_chỉ`, `Username`, `Password`, `Email`, `Loại_NV`, `Chi_nhánh`, `Bằng_lái`, `Sđt`, `Date_Starting`, `created_at`, `updated_at`) VALUES
(1, 'Hứa Thạch Vĩnh Trung', '1994-02-08', '1', 'Hòa Bình, Bạc Liêu', 'huatrung', 'e8d84babe8692cb0bc9de6d3318b12a0', 'huavinhtrung94@gmail.com', 'QTV', 'Bạc Liêu', NULL, '0912468036', '2022-10-29', '2022-10-29 01:55:14', '2022-10-29 01:55:14'),
(3, 'Phan Anh Sơn', '1993-05-11', '1', 'Quảng Ngãi', 'tx_anhson', 'd41d8cd98f00b204e9800998ecf8427e', 'phananhson@email.com', 'TX', 'Hồ Chí Minh', '12345678', '0967676767', '2018-10-08', '2018-10-10 09:11:31', '2018-12-15 11:33:38'),
(5, 'Văn Hoang', '1988-01-10', '1', '402/33 Xô Viết Nghệ TĨnh', 'tx_vanhoang', 'd41d8cd98f00b204e9800998ecf8427e', 'vanhoang@gmail.com', 'TX', 'HCMC', '123321', '0909321123', '2018-10-31', '2018-10-31 07:46:15', '2018-12-20 03:12:48'),
(8, 'Lê Tuấn Anh', '1998-11-06', '1', 'Hậu Giang', 'tx_lta', 'e10adc3949ba59abbe56e057f20f883e', 'tuananh98@gmail.com', 'TX', 'Hậu Giang', '6111998', '0912445572', '2022-10-25', '2022-10-30 05:32:54', '2022-10-30 05:32:54');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `gioi_thieu`
--

DROP TABLE IF EXISTS `gioi_thieu`;
CREATE TABLE IF NOT EXISTS `gioi_thieu` (
  `gt_id` int(10) NOT NULL AUTO_INCREMENT,
  `noidung` text CHARACTER SET utf8 NOT NULL,
  `id_admin_created` int(10) NOT NULL,
  `id_admin_changed` int(10) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`gt_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `gioi_thieu`
--

INSERT INTO `gioi_thieu` (`gt_id`, `noidung`, `id_admin_created`, `id_admin_changed`, `created_at`, `updated_at`) VALUES
(1, '<p>test 1 tsdasdhsadkasdhlsakdksaldklsh</p>\r\n\r\n<p>dsad</p>\r\n\r\n<p>sadsadasd</p>\r\n\r\n<p>s</p>\r\n\r\n<p>d&aacute;</p>\r\n\r\n<p>dsdas</p>\r\n\r\n<p>dsa</p>\r\n\r\n<p>s</p>\r\n\r\n<p>d</p>\r\n\r\n<p>đ</p>', 1, 1, '2018-11-15 17:16:18', '2018-12-05 13:34:49');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `lienhe`
--

DROP TABLE IF EXISTS `lienhe`;
CREATE TABLE IF NOT EXISTS `lienhe` (
  `lh_id` int(10) NOT NULL AUTO_INCREMENT,
  `ho_ten` varchar(255) CHARACTER SET utf8 NOT NULL,
  `email` varchar(255) CHARACTER SET utf8 NOT NULL,
  `dien_thoai` varchar(255) CHARACTER SET utf8 NOT NULL,
  `tieu_de` varchar(255) CHARACTER SET utf8 NOT NULL,
  `noi_dung` text CHARACTER SET utf8 NOT NULL,
  `ngay_dang` datetime NOT NULL,
  `is_checked` int(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`lh_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `lienhe`
--

INSERT INTO `lienhe` (`lh_id`, `ho_ten`, `email`, `dien_thoai`, `tieu_de`, `noi_dung`, `ngay_dang`, `is_checked`) VALUES
(1, 'nguyen thhanh nhan', '51202526@gmail.com', '0989671651', 'testtesttestttesttesttesttesttesttesttesttesttesttesttesttesttesttestesttesttesttesttesttesttesttesttesttesttest', 'test', '2018-11-16 03:40:35', 0),
(2, 'Nguyen Thanh Nhan', 'nhan51202526@gmail.com', '0989671651', 'test', 'tetstsdasd', '2018-11-28 17:55:48', 0),
(3, 'Nguyễn Thanh Phong', 'aaa@gmail.com', '0912445566', 'Test', 'Test thông báo', '2022-10-29 17:01:06', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `lo_trinh`
--

DROP TABLE IF EXISTS `lo_trinh`;
CREATE TABLE IF NOT EXISTS `lo_trinh` (
  `Mã` int(11) NOT NULL AUTO_INCREMENT,
  `Mã_nhân_viên_tạo` int(11) NOT NULL,
  `Mã_nhân_viên_chỉnh_sửa` int(11) NOT NULL,
  `Nơi_đi` varchar(255) NOT NULL,
  `Nơi_đến` varchar(255) NOT NULL,
  `Các_trạm_dừng_chân` varchar(255) NOT NULL,
  `Thời_gian_đi_dự_kiến` int(11) NOT NULL DEFAULT '0',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`Mã`),
  KEY `Mã_nhân_viên_chỉnh_sửa` (`Mã_nhân_viên_chỉnh_sửa`),
  KEY `Mã_nhân_viên_tạo` (`Mã_nhân_viên_tạo`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `lo_trinh`
--

INSERT INTO `lo_trinh` (`Mã`, `Mã_nhân_viên_tạo`, `Mã_nhân_viên_chỉnh_sửa`, `Nơi_đi`, `Nơi_đến`, `Các_trạm_dừng_chân`, `Thời_gian_đi_dự_kiến`, `created_at`, `updated_at`) VALUES
(10, 1, 1, 'Bạc Liêu', 'TP.Hồ Chí Minh', '1', 22800, '2022-10-29 04:46:45', '2022-10-29 04:46:45'),
(11, 1, 1, 'Bạc Liêu', 'An Giang', '1', 22500, '2022-10-29 05:10:59', '2022-10-29 05:19:25'),
(12, 1, 1, 'Bạc Liêu', 'Cà Mau', '3', 8400, '2022-10-30 05:29:19', '2022-10-30 05:29:19'),
(13, 1, 1, 'Bạc Liêu', 'Đà Lạt', '1', 40500, '2022-10-30 05:30:07', '2022-10-30 05:30:07');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `news`
--

DROP TABLE IF EXISTS `news`;
CREATE TABLE IF NOT EXISTS `news` (
  `news_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` varchar(255) CHARACTER SET utf8 NOT NULL,
  `image` varchar(255) NOT NULL,
  `introduce` text CHARACTER SET utf8 NOT NULL,
  `content` longtext CHARACTER SET utf8 NOT NULL,
  `check_slide` int(11) NOT NULL,
  `id_admin_created` int(10) NOT NULL,
  `id_admin_changed` int(10) NOT NULL,
  `is_disabled` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`news_id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `news`
--

INSERT INTO `news` (`news_id`, `title`, `image`, `introduce`, `content`, `check_slide`, `id_admin_created`, `id_admin_changed`, `is_disabled`, `created_at`, `updated_at`) VALUES
(1, 'Mã Vũng Mới Cho Các Tỉnh Thành Trong 3 Đợt Thay Đổi Năm 2017', '1543856022-mavung.jpg', 'Bắt đầu từ 0h ngày 11/2/2017, 13 tỉnh thành đầu tiên trên cả nước sẽ tiến hành chuyển đổi sang mã vùng điện thoại cố định mới giai đoạn 1. Thời gian quay số song song từ 11/2/2017 đến 12/3/2017. Thời gian duy trì âm báo từ 13/3/2017 đến 14/4/2017.', '<p>C&aacute;c tỉnh n&agrave;y gồm Sơn La, Lai Ch&acirc;u, L&agrave;o Cai, Điện Bi&ecirc;n, Y&ecirc;n B&aacute;i, Quảng B&igrave;nh, Quảng Trị, Thừa Thi&ecirc;n - Huế, Quảng Nam, Đ&agrave; Nẵng, Thanh Ho&aacute;, Nghệ An, H&agrave; Tĩnh. C&aacute;c m&atilde; v&ugrave;ng mới được quy định cụ thể như sau:</p>\r\n\r\n<p><img alt=\"\" src=\"/lvtn/public/images/tintuc/files/mavung.jpg\" style=\"height:410px; width:850px\" /></p>\r\n\r\n<p>Giai đoạn 2 bắt đầu chuyển đổi từ 0h ng&agrave;y 15/04/2017, &aacute;p dụng cho 23 tỉnh, th&agrave;nh phố. Thời gian quay số song song từ 15/4/2017 đến 14/5/2017. Thời gian duy tr&igrave; &acirc;m b&aacute;o từ 15/5/2017 đến 16/6/2017. C&aacute;c m&atilde; v&ugrave;ng mới của 23 tỉnh th&agrave;nh chuyển đổi giai đoạn 2 được quy định cụ thể như sau:</p>\r\n\r\n<p><img alt=\"\" src=\"/lvtn/public/images/tintuc/files/mavung2.jpg\" style=\"height:613px; width:850px\" />Giai đoạn 3 bắt đầu từ 0h ng&agrave;y 17/06/2017 &aacute;p dụng cho 23 tỉnh, th&agrave;nh phố cuối c&ugrave;ng. Thời gian quay số song song từ 17/6/2017 đến 16/7/2017. Thời gian duy tr&igrave; &acirc;m b&aacute;o từ 17/7/2017 đến 31/8/2017.&nbsp;C&aacute;c m&atilde; v&ugrave;ng mới của 23 tỉnh th&agrave;nh chuyển đổi giai đoạn 3&nbsp;được quy định cụ thể như sau:</p>\r\n\r\n<p><img alt=\"\" src=\"/lvtn/public/images/tintuc/files/mavung3.jpg\" style=\"height:617px; width:850px\" /></p>\r\n\r\n<p>Ri&ecirc;ng 4 tỉnh Vĩnh Ph&uacute;c, Ph&uacute; Thọ, H&ograve;a B&igrave;nh v&agrave; H&agrave; Giang được giữ nguy&ecirc;n m&atilde; v&ugrave;ng.</p>\r\n\r\n<p><em>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; (Theo&nbsp;http://vietnamnet.vn)</em></p>\r\n\r\n<p>&nbsp;</p>', 0, 1, 1, 0, '2018-11-15 09:10:29', '2018-12-04 05:12:45'),
(3, 'Chương Trình Tặng Vé Tết Đinh Dậu 2017 Cho Sinh Viên', 'vetet.jpg', 'Sáng 18/01, tại Bến xe Cầu Rào, Thành đoàn – Hội Sinh viên Việt Nam thành phố phối hợp với Sở Giao thông vận tải Hải Phòng tổ chức chương trình “Hỗ trợ sinh viên học tập tại Hải Phòng về quê đón Tết Nguyên đán 2017”.', '<p>Tới dự chương tr&igrave;nh c&oacute; c&aacute;c đồng ch&iacute;: Trần Quang Tường - Ủy vi&ecirc;n Ban Chấp h&agrave;nh Trung ương Đo&agrave;n, Th&agrave;nh ủy vi&ecirc;n, B&iacute; thư Th&agrave;nh đo&agrave;n; Nguyễn B&igrave;nh Minh - Ủy vi&ecirc;n Ban Chấp h&agrave;nh Trung ương Đo&agrave;n, Ph&oacute; Trưởng Ban Thanh ni&ecirc;n Trường học Trung ương Đo&agrave;n; B&ugrave;i Thị Ngọc - Ph&oacute; B&iacute; thư Thường trực Th&agrave;nh đo&agrave;n; Ủy vi&ecirc;n Ban Thư k&yacute; Trung ương Hội Sinh vi&ecirc;n Việt Nam; Phạm Văn Huy - Ph&oacute; Gi&aacute;m đốc Sở Giao th&ocirc;ng vận tải Hải Ph&ograve;ng.</p>\r\n\r\n<p><img alt=\"\" src=\"/lvtn/public/images/tintuc/files/vetet.jpg\" style=\"height:735px; width:980px\" />Tại Chương tr&igrave;nh, Th&agrave;nh đo&agrave;n - Sở Giao th&ocirc;ng vận tải - Hội Sinh vi&ecirc;n Việt Nam th&agrave;nh phố v&agrave; c&aacute;c doanh nghiệp vận tải Ho&agrave;ng Long, Hải &Acirc;u ...&nbsp;đ&atilde; trao tặng hơn 690 v&eacute; xe miễn ph&iacute; cho sinh vi&ecirc;n về 27 tỉnh, th&agrave;nh phố. Ngo&agrave;i những tấm v&eacute; nghĩa t&igrave;nh, hơn 170 bạn sinh vi&ecirc;n c&oacute; ho&agrave;n cảnh kh&oacute; khăn c&ograve;n được nhận những suất qu&agrave; Tết, những phần qu&agrave; &yacute; nghĩa gi&uacute;p c&aacute;c bạn trở về b&ecirc;n gia đ&igrave;nh trong những ng&agrave;y xu&acirc;n th&ecirc;m đầm ấm.</p>\r\n\r\n<p>Đ&acirc;y l&agrave; năm thứ 5 chương tr&igrave;nh được tổ chức nhằm hỗ trợ v&agrave; tạo điều kiện cho sinh vi&ecirc;n c&oacute; ho&agrave;n cảnh kh&oacute; khăn đang theo học tại c&aacute;c trường Đại học, Cao đẳng tr&ecirc;n địa b&agrave;n th&agrave;nh phố Hải Ph&ograve;ng về qu&ecirc; sum họp c&ugrave;ng gia đ&igrave;nh trong dịp Tết Nguy&ecirc;n đ&aacute;n. Qua đ&oacute;, thể hiện sự quan t&acirc;m, chia sẻ của x&atilde; hội, đ&atilde; tạo hiệu ứng t&iacute;ch cực v&agrave; lan tỏa trong sinh vi&ecirc;n v&agrave; cộng đồng. Tổng gi&aacute; trị của đợt hỗ trợ dịp Tết Nguy&ecirc;n đ&aacute;n Đinh Dậu 2017 cho sinh vi&ecirc;n l&agrave; gần 200 triệu đồng.</p>\r\n\r\n<p><img alt=\"\" src=\"/lvtn/public/images/tintuc/files/vetet2.jpg\" style=\"height:735px; width:980px\" />&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;<em>(Theo http://thanhdoanhaiphong.gov.vn)</em></p>', 0, 1, 1, 0, '2018-11-15 10:12:50', '2018-11-15 10:12:50'),
(5, 'Chuyển Tuyến Hải Phòng ↔ Hồ Chí Minh, Vũng Tàu Về Bến Thượng Lý - Hải Phòng Từ 22/11/2017', 'tintuc3.jpg', 'Thông báo chuyển về BẾN XE THƯỢNG LÝ-HẢI PHÒNG từ 22/11/2017\r\nBẾN XE THƯỢNG LÝ: SỐ 52 ĐƯỜNG HÀ NỘI (SỞ DẦU) - HỒNG BÀNG.', '<p>Xe kh&aacute;ch Ho&agrave;ng Long k&iacute;nh b&aacute;o tới qu&yacute; kh&aacute;ch h&agrave;ng chuyển bến xe từ 22/11/2017 :<br />\r\n- Theo sự động vi&ecirc;n, định hướng từ Ủy Ban nh&acirc;n d&acirc;n Th&agrave;nh phố v&agrave; quy hoạch của Sở giao th&ocirc;ng vận tải Hải Ph&ograve;ng.</p>\r\n\r\n<p>- Kể từ 22/11/2017, Xe kh&aacute;ch Ho&agrave;ng Long chuyển to&agrave;n bộ tuyến đi c&aacute;c tỉnh miền trung, miền nam từ bến xe Niệm Nghĩa về BẾN XE THƯỢNG L&Yacute; :</p>\r\n\r\n<p><strong>Hải Ph&ograve;ng &harr;&nbsp;HỒ CH&Iacute; MINH<br />\r\nHải Ph&ograve;ng &harr; VŨNG T&Agrave;U&nbsp;<br />\r\nHải Ph&ograve;ng &harr; Đ&Agrave; NẴNG</strong></p>\r\n\r\n<p>C&aacute;c tuyến đi tới c&aacute;c tỉnh, th&agrave;nh phố tr&ecirc;n to&agrave;n Quốc như:&nbsp;<br />\r\n<em><strong>Ninh B&igrave;nh &rarr; Thanh H&oacute;a &rarr; Vinh, Nghệ An&rarr; H&agrave; Tĩnh &rarr; Đồng Hới, Quảng B&igrave;nh &rarr; Quảng Trị&nbsp;&rarr; Huế &rarr; Quảng Nam &rarr; Quảng Ng&atilde;i &rarr; B&igrave;nh Đ&igrave;nh, Quy Nhơn, Ph&uacute; Y&ecirc;n &rarr; Nha Trang, Cam Ranh,Kh&aacute;nh H&ograve;a &rarr; Phan Rang, Phan Thiết, B&igrave;nh Thuận &rarr; Đồng Nai &hellip; cũng sẽ xuất ph&aacute;t tại Bến xe Thượng L&yacute; v&agrave; ngược lại.&nbsp;</strong></em><br />\r\n- Ho&agrave;ng Long hiện đ&atilde; mở th&ecirc;m văn ph&ograve;ng chuyển ph&aacute;t nhanh h&agrave;ng h&oacute;a, b&aacute;n v&eacute; c&aacute;c tuyến ngắn v&agrave; tuyến miền trung, miền nam tại vị tr&iacute;&nbsp;<strong>cổng ch&iacute;nh Bến xe Thượng L&yacute;</strong>.<br />\r\n- Mọi hoạt động kh&aacute;c của xe kh&aacute;ch Ho&agrave;ng Long tr&ecirc;n địa b&agrave;n Hải Ph&ograve;ng kh&ocirc;ng thay đổi.&nbsp;<br />\r\n- Tuyến Hải Ph&ograve;ng- H&agrave; Nội vẫn hoạt động b&igrave;nh thường tại bến xe Niệm Nghĩa.</p>\r\n\r\n<p>- Mọi chi tiết xin li&ecirc;n hệ tổng đ&agrave;i<strong>&nbsp;02253.920.920&nbsp;</strong>24/7 Ho&agrave;ng Long sẽ tư vấn trực tiếp đến qu&yacute; kh&aacute;ch.</p>\r\n\r\n<p><img alt=\"\" src=\"/lvtn/public/images/tintuc/files/tintuc3.jpg\" style=\"height:638px; width:960px\" /></p>', 0, 1, 1, 0, '2018-11-15 10:17:40', '2018-11-15 10:17:40'),
(17, 'Đà Lạt – Thiên đường du lịch nghỉ dưỡng của Việt Nam', 'canh-dep-da-lat.jpg', 'Đà Lạt là một thành phố trực thuộc tỉnh và tỉnh lị tỉnh Lâm Đồng, nằm trên cao nguyên Lâm Viên, ở độ cao 1.500 m so với mặt nước biển và diện tích tự nhiên: 393,29 km².\r\nVới nhiều cảnh quan đẹp, Đà Lạt là một trong những thành phố du lịch nổi tiếng nhất của Việt Nam. Trong thời Pháp thuộc, tên tiếng Latin Dat Aliis Laetitiam Aliis Temperiem có nghĩa là “cho những người này niềm vui, cho những người khác sự mát mẻ”. Đà Lạt được mệnh danh là : thành phố hoa, thành phố tình yêu, thành phố mùa xuân, thành phố sương mù.', '<p><strong>1. Giới thiệu:</strong><br />\r\nĐ&agrave; Lạt l&agrave; một th&agrave;nh phố trực thuộc tỉnh v&agrave; tỉnh lị tỉnh L&acirc;m Đồng, nằm tr&ecirc;n cao nguy&ecirc;n L&acirc;m Vi&ecirc;n, ở độ cao 1.500 m so với mặt nước biển v&agrave; diện t&iacute;ch tự nhi&ecirc;n: 393,29 km&sup2;.<br />\r\nVới nhiều cảnh quan đẹp, Đ&agrave; Lạt l&agrave; một trong những th&agrave;nh phố du lịch nổi tiếng nhất của Việt Nam. Trong thời Ph&aacute;p thuộc, t&ecirc;n tiếng Latin Dat Aliis Laetitiam Aliis Temperiem c&oacute; nghĩa l&agrave; &ldquo;cho những người n&agrave;y niềm vui, cho những người kh&aacute;c sự m&aacute;t mẻ&rdquo;. Đ&agrave; Lạt được mệnh danh l&agrave; : th&agrave;nh phố hoa, th&agrave;nh phố t&igrave;nh y&ecirc;u, th&agrave;nh phố m&ugrave;a xu&acirc;n, th&agrave;nh phố sương m&ugrave;.</p>\r\n\r\n<p><img alt=\"\" src=\"/lvtn/public/images/tintuc/files/anh%201.jpg\" style=\"height:591px; width:739px\" /></p>\r\n\r\n<p><strong>2. Vị tr&iacute; địa l&yacute;:</strong></p>\r\n\r\n<p>Th&agrave;nh phố Đ&agrave; Lạt nằm trong cao nguy&ecirc;n Lang Biang, ph&iacute;a Bắc tỉnh L&acirc;m Đồng, Về ph&iacute;a Bắc, Đ&agrave; Lạt gi&aacute;p với huyện Lạc Dương, về ph&iacute;a Đ&ocirc;ng v&agrave; Đ&ocirc;ng Nam gi&aacute;p với huyện Đơn Dương, về ph&iacute;a T&acirc;y v&agrave; T&acirc;y Nam gi&aacute;p với hai huyện L&acirc;m H&agrave; v&agrave; Đức Trọng.<br />\r\nH&agrave;ng trăm năm trước đ&acirc;y, Đ&agrave; Lạt l&agrave; địa b&agrave;n cư tr&uacute; của người Lạch, vốn l&agrave; cư d&acirc;n của to&agrave;n bộ cao nguy&ecirc;n Lang Biang. Đ&agrave; Lạt c&oacute; diện t&iacute;ch hơn 400 km&sup2;, bao bọc bởi c&aacute;c đỉnh n&uacute;i cao v&agrave; d&atilde;y n&uacute;i li&ecirc;n tiếp:</p>\r\n\r\n<p>a/ Ph&iacute;a Bắc v&agrave; T&acirc;y Bắc giới hạn bởi d&atilde;y Chorơmui, Yộ Đa Myut (1.816 m), T&acirc;y Bắc dựa v&agrave;o ch&acirc;n d&atilde;y n&uacute;i Chư Yang Kae (1.921 m), thuộc quần sơn Lang Biang m&agrave; đỉnh cao nhất l&agrave; Chư Yang Sinh (1.408 m).<br />\r\nb/ Ph&iacute;a Đ&ocirc;ng l&agrave; ch&acirc;n d&atilde;y n&uacute;i Bi Doup (2.278 m) dốc xuống cao nguy&ecirc;n Dran.<br />\r\nc/ Ph&iacute;a Đ&ocirc;ng Nam chắn bởi d&atilde;y Cho Proline (1.629 m).<br />\r\nd/ Ph&iacute;a Nam v&agrave; T&acirc;y Nam c&oacute; d&atilde;y n&uacute;i Voi (1.754 m) v&agrave; Y&agrave;ng Sơreng bao bọc. Địa h&igrave;nh: Cao trung b&igrave;nh so với mặt biển l&agrave; 1.500 m. Nơi cao nhất trong trung t&acirc;m th&agrave;nh phố l&agrave; Nh&agrave; Bảo T&agrave;ng (1.532 m), nơi thấp nhất l&agrave; thung lũng Nguyễn Tri Phương (1.398,2 m).</p>\r\n\r\n<p>B&ecirc;n trong cao nguy&ecirc;n, địa h&igrave;nh Đ&agrave; Lạt ph&acirc;n th&agrave;nh hai bậc r&otilde; rệt:<br />\r\n+ Bậc địa h&igrave;nh thấp l&agrave; v&ugrave;ng trung t&acirc;m c&oacute; dạng như một l&ograve;ng chảo bao gồm c&aacute;c d&atilde;y đồi đỉnh tr&ograve;n, dốc thoải c&oacute; độ cao tương đối 25-100 m, lượn s&oacute;ng nhấp nh&ocirc;, độ ph&acirc;n cắt yếu, độ cao trung b&igrave;nh khoảng 1.500 m.<br />\r\n+ Bao quanh khu vực l&ograve;ng chảo n&agrave;y l&agrave; c&aacute;c đỉnh n&uacute;i với độ cao khoảng 1.700 m tạo th&agrave;nh v&agrave;nh đai che chắn gi&oacute; cho v&ugrave;ng trung t&acirc;m. Ph&iacute;a Đ&ocirc;ng Bắc c&oacute; hai n&uacute;i thấp: h&ograve;n &Ocirc;ng (L&aacute;p B&ecirc; Bắc 1.738 m) v&agrave; h&ograve;n Bộ (L&aacute;p B&ecirc; Nam 1.709 m). Ở ph&iacute;a Bắc, ngự trị cao nguy&ecirc;n Lang Biang l&agrave; d&atilde;y n&uacute;i B&agrave; (Lang Biang) h&ugrave;ng vĩ, cao 2.169 m, k&eacute;o d&agrave;i theo trục Đ&ocirc;ng Bắc &ndash; T&acirc;y Nam từ suối Đa Sar (đổ v&agrave;o Đa Nhim) đến Đa Me (đổ v&agrave;o Đạ Đờng). Ph&iacute;a Đ&ocirc;ng &aacute;n ngữ bởi d&atilde;y n&uacute;i đỉnh Gi&oacute; H&uacute; (1.644 m). Về ph&iacute;a T&acirc;y Nam, c&aacute;c d&atilde;y n&uacute;i hướng v&agrave;o T&agrave; Nung giữa d&atilde;y Y&agrave;ng Sơreng m&agrave; c&aacute;c đỉnh cao ti&ecirc;u biểu l&agrave; Pin Hatt (1.691 m) v&agrave; You Lou Rouet (1.632 m).</p>\r\n\r\n<p>B&ecirc;n ngo&agrave;i cao nguy&ecirc;n l&agrave; c&aacute;c dốc n&uacute;i từ hơn 1.700 m đột ngột đổ xuống c&aacute;c cao nguy&ecirc;n b&ecirc;n dưới c&oacute; độ cao từ 700 m đến 900 m.</p>\r\n\r\n<p>Kh&iacute; hậu: Do ảnh hưởng của độ cao v&agrave; rừng th&ocirc;ng bao bọc, Đ&agrave; Lạt mang nhiều đặc t&iacute;nh của miền &ocirc;n đới. Nhiệt độ trung b&igrave;nh 18&ndash;21&deg;C, nhiệt độ cao nhất chưa bao giờ qu&aacute; 30&deg;C v&agrave; thấp nhất kh&ocirc;ng dưới 5&deg;C.<br />\r\nCh&iacute;nh th&ocirc;ng Đ&agrave; Lạt gi&uacute;p cho Đ&agrave; Lạt th&ecirc;m phần m&aacute;t mẻ</p>\r\n\r\n<p>Đ&agrave; Lạt c&oacute; hai m&ugrave;a r&otilde; rệt. M&ugrave;a mưa từ th&aacute;ng 5 đến th&aacute;ng 10, m&ugrave;a nắng từ th&aacute;ng 11 đến th&aacute;ng 4. M&ugrave;a h&egrave; thường c&oacute; mưa v&agrave;o buổi chiều, đ&ocirc;i khi c&oacute; mưa đ&aacute;.<br />\r\nLượng mưa trung b&igrave;nh năm l&agrave; 1562 mm v&agrave; độ ẩm 82%.<br />\r\nĐ&agrave; Lạt kh&ocirc;ng bao giờ c&oacute; b&atilde;o, chỉ c&oacute; gi&oacute; lớn do ảnh hưởng b&atilde;o từ biển thổi v&agrave;o v&igrave; sườn đ&ocirc;ng kh&ocirc;ng c&oacute; n&uacute;i che chắn.</p>\r\n\r\n<p><img alt=\"\" src=\"/lvtn/public/images/tintuc/files/anh%202.jpg\" style=\"height:759px; width:1024px\" /></p>\r\n\r\n<p><strong>3. Tiềm năng du lịch:</strong></p>\r\n\r\n<p>Được v&iacute; như một Tiểu Paris, Đ&agrave; Lạt từng mộng mơ v&agrave; n&ecirc;n thơ nhờ c&aacute;i lạnh cao nguy&ecirc;n ban đ&ecirc;m, sương m&ugrave; buổi sớm v&agrave; những dải rừng th&ocirc;ng bao quanh th&agrave;nh phố. Kh&ocirc;ng gian n&agrave;y tuy vậy đ&atilde; phần n&agrave;o bị mất đi c&aacute;i chất Ph&aacute;p trong c&aacute;c kiến tr&uacute;c biệt thự thiếu chăm s&oacute;c hay bị sửa đổi kh&ocirc;ng ph&ugrave; hợp.<br />\r\nDu lịch tuy l&agrave; một thế mạnh song cũng l&agrave; yếu tố l&agrave;m thay đổi Đ&agrave; Lạt theo hướng đ&ocirc; thị h&oacute;a.</p>\r\n\r\n<p>Đồi C&ugrave; nằm giữa trung t&acirc;m th&agrave;nh phố Đ&agrave; Lạt nằm kế b&ecirc;n l&agrave; Hồ Xu&acirc;n Hương do vậy thường được nhắc đến như một địa danh d&iacute;nh liền nhau &ndash; nhiều người cho rằng Đ&agrave; Lạt sẽ k&eacute;m phần mỹ lệ nếu thiếu Đồi C&ugrave; v&agrave; hồ Xu&acirc;n Hương. Năm 1942, khi thiết kế đồ &aacute;n quy hoạch th&agrave;nh phố Đ&agrave; Lạt, kiến tr&uacute;c sư Lagisquet đ&atilde; khoanh v&ugrave;ng Đồi C&ugrave; như một khu vực bất khả x&acirc;m phạm nhằm tạo một tầm nh&igrave;n tho&aacute;ng đ&atilde;ng cho Đ&agrave; Lạt. Về sau, một kiến tr&uacute;c sư người Anh đ&atilde; thiết kế biến Đồi C&ugrave; th&agrave;nh s&acirc;n golf 9 lỗ kh&aacute; nổi tiếng của v&ugrave;ng Đ&ocirc;ng Nam &Aacute; v&agrave; hiện nay Đồi C&ugrave; đ&atilde; được n&acirc;ng cấp th&agrave;nh s&acirc;n golf 18 lỗ. T&ecirc;n Đồi C&ugrave; kh&ocirc;ng r&otilde; c&oacute; từ bao giờ, v&agrave; v&igrave; sao gọi l&agrave; &ldquo;Đồi C&ugrave;&rdquo; lại c&oacute; hai hướng l&yacute; giải, c&oacute; người cho rằng những quả đồi thoai thoải nơi đ&acirc;y khi nh&igrave;n từ xa giống như tấm lưng trần của những con c&ugrave; khổng lồ n&ecirc;n đ&atilde; v&iacute; von gọi l&agrave; &ldquo;Đồi C&ugrave;&rdquo;; cũng c&oacute; người giải th&iacute;ch sở dĩ c&oacute; t&ecirc;n &ldquo;Đồi C&ugrave;&rdquo; v&igrave; nơi đ&acirc;y l&agrave; một địa điểm chơi golf hay c&ograve;n gọi l&agrave; đ&aacute;nh c&ugrave;.</p>\r\n\r\n<p>Hồ Xu&acirc;n Hương nằm ngay trung t&acirc;m th&agrave;nh phố Đ&agrave; Lạt v&agrave; b&ecirc;n cạnh Đồi C&ugrave;. Hồ thực chất l&agrave; hồ nh&acirc;n tạo được x&acirc;y dựng v&agrave;o năm 1919 do s&aacute;ng kiến của Cunhac. Để tạo th&agrave;nh hồ, người ta đắp một c&aacute;i đập chắn d&ograve;ng suối chảy qua thung lũng, hồ c&oacute; diện t&iacute;ch mặt nước rộng 25 ha, chu vi d&agrave;i 5,1 km. Xung quanh hồ nhiều kiến tr&uacute;c độc đ&aacute;o c&oacute; gi&aacute; trị nghệ thuật, thẩm mỹ cao được x&acirc;y dựng như kh&aacute;ch sạn Palace, thao trường L&acirc;m Vi&ecirc;n, nh&agrave; nghỉ C&ocirc;ng Đo&agrave;n, Nh&agrave; h&agrave;ng Thanh Thủy, Thủy Tạ&hellip; Trước kia hồ c&oacute; t&ecirc;n gọi Grand Lac (hồ lớn). V&agrave;o buổi s&aacute;ng sớm sương m&ugrave; hiện l&ecirc;n rất đẹp v&agrave; thơ mộng.</p>\r\n\r\n<p><img alt=\"\" src=\"/lvtn/public/images/tintuc/files/anh%203.jpg\" style=\"height:368px; width:550px\" /></p>\r\n\r\n<p>Hồ Suối V&agrave;ng l&agrave; hồ nước ngọt lớn nhất tại Đ&agrave; Lạt, cung cấp nước sinh hoạt cho th&agrave;nh phố qua đập tr&agrave;n của c&ocirc;ng ty cấp nước Đ&agrave; Lạt. Thung lũng Suối V&agrave;ng c&ograve;n l&agrave; điểm đến du lịch nổi tiếng với vườn hoa v&agrave; rừng th&ocirc;ng.</p>\r\n\r\n<p>C&ocirc;ng vi&ecirc;n hoa Đ&agrave; Lạt nằm quanh tr&ecirc;n bờ ph&iacute;a Bắc của hồ Xu&acirc;n Hương, tr&ecirc;n thung lũng của Đồi C&ugrave;. Trước đ&acirc;y c&ocirc;ng vi&ecirc;n hoa Đ&agrave; Lạt c&oacute; t&ecirc;n l&agrave; B&iacute;ch C&acirc;u, hiện nay diện t&iacute;ch của c&ocirc;ng vi&ecirc;n hoa được mở rộng tới 7000 m&sup2;, với c&aacute;ch bố tr&iacute; tho&aacute;ng đ&atilde;ng, tạo ấn tượng cho người chợt gh&eacute;. C&aacute;c loại hoa v&agrave; c&acirc;y cảnh nổi tiếng của Đ&agrave; Lạt được trồng tỉa chăm s&oacute;c chu đ&aacute;o, cảnh sắc tươi m&aacute;t, phong ph&uacute; bốn m&ugrave;a. H&agrave;ng năm thường tổ chức lễ hội hoa v&agrave; l&agrave; th&ocirc;ng điệp nhằm mời gọi, thu h&uacute;t c&aacute;c nh&agrave; đầu tư trong nước v&agrave; nước ngo&agrave;i ph&aacute;t triển Đ&agrave; Lạt v&agrave; c&aacute;c v&ugrave;ng phụ cận trở th&agrave;nh trung t&acirc;m sản xuất, xuất khẩu hoa của cả nước v&agrave; khu vực Đ&ocirc;ng Nam &Aacute;.</p>\r\n\r\n<p>C&aacute;c điểm tham quan du lịch kh&aacute;c:</p>\r\n\r\n<ul>\r\n	<li>Đỉnh Lang Biang</li>\r\n	<li>Hồ Than Thở</li>\r\n	<li>Th&aacute;c Cam Ly</li>\r\n	<li>Th&aacute;c Datanla</li>\r\n	<li>Th&aacute;c Hang Cọp</li>\r\n	<li>Th&aacute;c Prenn</li>\r\n	<li>Th&aacute;c Pongour</li>\r\n	<li>Thung lũng T&igrave;nh Y&ecirc;u</li>\r\n	<li>Đồi Mộng Mơ.</li>\r\n	<li>Thung Lũng V&agrave;ng (gần Hồ Dan Kia)</li>\r\n	<li>Hồ Tuyền L&acirc;m</li>\r\n	<li>Khu Biệt thự Trần Lệ Xu&acirc;n&nbsp;</li>\r\n</ul>\r\n\r\n<p><img alt=\"\" src=\"/lvtn/public/images/tintuc/files/dalat/anh%204.jpg\" style=\"height:768px; width:1024px\" /></p>\r\n\r\n<p><img alt=\"\" src=\"/lvtn/public/images/tintuc/files/dalat/anh%205.jpg\" style=\"height:529px; width:800px\" /></p>', 1, 1, 1, 0, '2018-11-30 18:01:04', '2018-11-30 18:01:04'),
(18, 'Vẻ đẹp đặc biệt của thành phố Hồ Chí Minh được hãng tin BBC hết lời khen ngợi', 'anh ho chi minh.jpg', 'Mới đây, hãng tin BBC đã đăng tải một bài viết giới thiệu về vẻ đẹp đặc biệt của Sài Gòn – một thành phố đáng để đặt chân tới với những trải nghiệm đầy thú vị cùng sự thân thiện từ con người nơi đây.', '<p>Lần đầu đặt ch&acirc;n tới th&agrave;nh phố Hồ Ch&iacute; Minh, hay c&ograve;n được gọi với c&aacute;i t&ecirc;n th&acirc;n mật kh&aacute;c l&agrave; S&agrave;i G&ograve;n, c&oacute; lẽ nhiều du kh&aacute;ch sẽ cảm thấy kh&aacute; sốc trước t&igrave;nh trạng &quot;hỗn loạn&quot; tại khu vực sầm uất nhất Việt Nam.</p>\r\n\r\n<p><img alt=\"\" src=\"/lvtn/public/images/tintuc/files/dalat/HCM/hcm1.jpg\" style=\"height:263px; width:600px\" /></p>\r\n\r\n<p>&quot;Những đ&aacute;m đ&ocirc;ng v&agrave; d&ograve;ng xe cộ hỗn loạn c&oacute; thể khiến cho nhiều du kh&aacute;ch cảm thấy nản l&ograve;ng v&agrave; muốn t&igrave;m tới nơi kh&aacute;c ngay lập tức. Tuy nhi&ecirc;n, đ&oacute; l&agrave; một sai lầm cực k&igrave; lớn.&quot;, anh James Clark, một người Australia sống tại S&agrave;i G&ograve;n từ năm 2012 chia sẻ.</p>\r\n\r\n<p>Mặc d&ugrave; giao th&ocirc;ng ở đ&acirc;y c&oacute; phần đi&ecirc;n rồ, song nếu c&oacute; cơ hội vi vu khắp c&aacute;c con phố nhỏ tr&ecirc;n một chiếc xe m&aacute;y đời cũ n&agrave;o đ&oacute; th&igrave; bạn sẽ thấy mọi chuyện kh&aacute;c xa so với tưởng tượng ban đầu.</p>\r\n\r\n<p>Đa phần c&aacute;c phương tiện đều di chuyển với tốc độ rất chậm, v&agrave; hiếm khi thấy vụ ẩu đả n&agrave;o xảy ra giữa đường lớn.</p>\r\n\r\n<p>B&ecirc;n cạnh sự đ&ocirc;ng đ&uacute;c vốn c&oacute;, S&agrave;i G&ograve;n c&ograve;n mang trong m&igrave;nh n&eacute;t dung dị rất &quot;đời&quot; khiến con người ta chợt cảm thấy y&ecirc;u v&agrave; thấy nhớ mỗi khi phải chia xa.&nbsp;Tất nhi&ecirc;n, bạn cần phải c&oacute; kha kh&aacute; thời gian để hiểu, hay đơn giản hơn l&agrave; để th&iacute;ch với th&agrave;nh phố n&agrave;y.</p>\r\n\r\n<p><img alt=\"\" src=\"/lvtn/public/images/tintuc/files/dalat/HCM/hcm2.jpg\" style=\"height:380px; width:600px\" /></p>\r\n\r\n<p>Anh Baker &ndash; một người Anh định cư ở S&agrave;i G&ograve;n từng n&oacute;i: &quot;Bạn c&oacute; thể kh&aacute;m ph&aacute; được một th&agrave;nh phố với c&aacute; t&iacute;nh ri&ecirc;ng, t&iacute;nh c&aacute;ch ri&ecirc;ng c&ugrave;ng kh&ocirc;ng gian ẩm thực với mức gi&aacute;&nbsp;rẻ nhất h&agrave;nh tinh nếu chịu d&agrave;nh thời gian cho n&oacute;.&quot;</p>\r\n\r\n<p>Ngo&agrave;i ra, con người nơi đ&acirc;y cũng dễ thương lắm. Họ chẳng hề tỏ ra ki&ecirc;u k&igrave; hay kh&oacute; gần như bạn vẫn nghĩ, m&agrave; ngược lại, t&iacute;nh c&aacute;ch th&acirc;n thiện xuất ph&aacute;t từ tấm l&ograve;ng nhiệt th&agrave;nh sẽ khiến du kh&aacute;ch kh&ocirc;ng t&agrave;i n&agrave;o qu&ecirc;n được.</p>\r\n\r\n<p>&quot;C&oacute; dịp v&ograve;ng vo mọi ng&otilde; ng&aacute;ch b&eacute; x&iacute;u dưới c&aacute;i nắng ngọt ng&agrave;o của miền Nam, bạn sẽ thấy lối sống của người d&acirc;n bản xứ tương đối b&igrave;nh thản.&quot;, c&ocirc; Kelsey Cheng (Chicago, Mỹ) cho biết.</p>\r\n\r\n<p>Cũng theo anh Barker, người d&acirc;n S&agrave;i G&ograve;n thường rất thẳng thắn v&agrave; trực tiếp. Đ&acirc;y l&agrave; một n&eacute;t t&iacute;nh c&aacute;ch kh&aacute; kh&aacute;c biệt nếu so s&aacute;nh với sự th&acirc;n thiện thường thấy tại nhiều đất nước kh&aacute;c, v&iacute; dụ như Th&aacute;i Lan chẳng hạn.</p>\r\n\r\n<p><img alt=\"\" src=\"/lvtn/public/images/tintuc/files/dalat/HCM/hcm3.jpeg\" style=\"height:346px; width:600px\" /></p>\r\n\r\n<p>Lần đầu đặt ch&acirc;n tới th&agrave;nh phố Hồ Ch&iacute; Minh, hay c&ograve;n được gọi với c&aacute;i t&ecirc;n th&acirc;n mật kh&aacute;c l&agrave; S&agrave;i G&ograve;n, c&oacute; lẽ nhiều du kh&aacute;ch sẽ cảm thấy kh&aacute; sốc trước t&igrave;nh trạng &quot;hỗn loạn&quot; tại khu vực sầm uất nhất Việt Nam.</p>\r\n\r\n<p><a href=\"https://kenh14cdn.com/2017/1-1490678261402.jpg\" target=\"_blank\"><img alt=\"Vẻ đẹp đặc biệt của thành phố Hồ Chí Minh được hãng tin BBC hết lời khen ngợi - Ảnh 1.\" src=\"https://kenh14cdn.com/2017/1-1490678261402.jpg\" /></a></p>\r\n\r\n<p>Th&agrave;nh phố Hồ Ch&iacute; Minh l&agrave; điểm đến l&yacute; tưởng của rất nhiều du kh&aacute;ch trong v&agrave; ngo&agrave;i nước.</p>\r\n\r\n<p>&quot;Những đ&aacute;m đ&ocirc;ng v&agrave; d&ograve;ng xe cộ hỗn loạn c&oacute; thể khiến cho nhiều du kh&aacute;ch cảm thấy nản l&ograve;ng v&agrave; muốn t&igrave;m tới nơi kh&aacute;c ngay lập tức. Tuy nhi&ecirc;n, đ&oacute; l&agrave; một sai lầm cực k&igrave; lớn.&quot;, anh James Clark, một người Australia sống tại S&agrave;i G&ograve;n từ năm 2012 chia sẻ.</p>\r\n\r\n<p>Mặc d&ugrave; giao th&ocirc;ng ở đ&acirc;y c&oacute; phần đi&ecirc;n rồ, song nếu c&oacute; cơ hội vi vu khắp c&aacute;c con phố nhỏ tr&ecirc;n một chiếc xe m&aacute;y đời cũ n&agrave;o đ&oacute; th&igrave; bạn sẽ thấy mọi chuyện kh&aacute;c xa so với tưởng tượng ban đầu.</p>\r\n\r\n<p>Đa phần c&aacute;c phương tiện đều di chuyển với tốc độ rất chậm, v&agrave; hiếm khi thấy vụ ẩu đả n&agrave;o xảy ra giữa đường lớn.</p>\r\n\r\n<p>B&ecirc;n cạnh sự đ&ocirc;ng đ&uacute;c vốn c&oacute;, S&agrave;i G&ograve;n c&ograve;n mang trong m&igrave;nh n&eacute;t dung dị rất &quot;đời&quot; khiến con người ta chợt cảm thấy y&ecirc;u v&agrave; thấy nhớ mỗi khi phải chia xa.&nbsp;Tất nhi&ecirc;n, bạn cần phải c&oacute; kha kh&aacute; thời gian để hiểu, hay đơn giản hơn l&agrave; để th&iacute;ch với th&agrave;nh phố n&agrave;y.</p>\r\n\r\n<p><a href=\"https://kenh14cdn.com/2017/2-1490678261403.jpg\" target=\"_blank\"><img alt=\"Vẻ đẹp đặc biệt của thành phố Hồ Chí Minh được hãng tin BBC hết lời khen ngợi - Ảnh 2.\" src=\"https://kenh14cdn.com/2017/2-1490678261403.jpg\" /></a></p>\r\n\r\n<p>Tại nhiều thời điểm, đường phố nơi đ&acirc;y bỗng trở n&ecirc;n b&igrave;nh y&ecirc;n đến lạ.</p>\r\n\r\n<p>Anh Baker &ndash; một người Anh định cư ở S&agrave;i G&ograve;n từng n&oacute;i: &quot;Bạn c&oacute; thể kh&aacute;m ph&aacute; được một th&agrave;nh phố với c&aacute; t&iacute;nh ri&ecirc;ng, t&iacute;nh c&aacute;ch ri&ecirc;ng c&ugrave;ng kh&ocirc;ng gian ẩm thực với mức gi&aacute;&nbsp;rẻ nhất h&agrave;nh tinh nếu chịu d&agrave;nh thời gian cho n&oacute;.&quot;</p>\r\n\r\n<p>Ngo&agrave;i ra, con người nơi đ&acirc;y cũng dễ thương lắm. Họ chẳng hề tỏ ra ki&ecirc;u k&igrave; hay kh&oacute; gần như bạn vẫn nghĩ, m&agrave; ngược lại, t&iacute;nh c&aacute;ch th&acirc;n thiện xuất ph&aacute;t từ tấm l&ograve;ng nhiệt th&agrave;nh sẽ khiến du kh&aacute;ch kh&ocirc;ng t&agrave;i n&agrave;o qu&ecirc;n được.</p>\r\n\r\n<p>&quot;C&oacute; dịp v&ograve;ng vo mọi ng&otilde; ng&aacute;ch b&eacute; x&iacute;u dưới c&aacute;i nắng ngọt ng&agrave;o của miền Nam, bạn sẽ thấy lối sống của người d&acirc;n bản xứ tương đối b&igrave;nh thản.&quot;, c&ocirc; Kelsey Cheng (Chicago, Mỹ) cho biết.</p>\r\n\r\n<p>Cũng theo anh Barker, người d&acirc;n S&agrave;i G&ograve;n thường rất thẳng thắn v&agrave; trực tiếp. Đ&acirc;y l&agrave; một n&eacute;t t&iacute;nh c&aacute;ch kh&aacute; kh&aacute;c biệt nếu so s&aacute;nh với sự th&acirc;n thiện thường thấy tại nhiều đất nước kh&aacute;c, v&iacute; dụ như Th&aacute;i Lan chẳng hạn.</p>\r\n\r\n<p><a href=\"https://kenh14cdn.com/2017/3-1490678261405.jpeg\" target=\"_blank\"><img alt=\"Vẻ đẹp đặc biệt của thành phố Hồ Chí Minh được hãng tin BBC hết lời khen ngợi - Ảnh 3.\" src=\"https://kenh14cdn.com/2017/3-1490678261405.jpeg\" /></a></p>\r\n\r\n<p>S&agrave;i G&ograve;n về đ&ecirc;m với &aacute;nh đ&egrave;n lung linh hắt ra từ những t&ograve;a nh&agrave; cao ốc hiện đại.</p>\r\n\r\n<p>Mặc d&ugrave; một số &iacute;t sẽ cảm thấy h&agrave;nh động đ&oacute; kh&aacute; v&ocirc; duy&ecirc;n, song những người d&acirc;n đang sinh sống tại đ&acirc;y lại nghĩ rằng: &quot;Nhờ vậy m&agrave; ch&uacute;ng tui c&oacute; thể dễ d&agrave;ng hiểu được người kh&aacute;c muốn g&igrave; hay kh&ocirc;ng muốn g&igrave;.&quot;</p>\r\n\r\n<p>Nếu giải th&iacute;ch theo c&aacute;ch đơn giản th&igrave; ở H&agrave; Nội, đ&ocirc;i khi người ta n&oacute;i &quot;c&oacute;&quot; nhưng thực chất lại l&agrave; &quot;kh&ocirc;ng&quot;, c&ograve;n tại th&agrave;nh phố Hồ Ch&iacute; Minh th&igrave; &quot;c&oacute;&quot; l&agrave; &quot;c&oacute;&quot; m&agrave; &quot;kh&ocirc;ng&quot; chắc chắn sẽ l&agrave; &quot;kh&ocirc;ng&quot;.</p>\r\n\r\n<p>Những người nước ngo&agrave;i sống l&acirc;u năm ở đ&acirc;y cũng khẳng định S&agrave;i G&ograve;n l&agrave; một th&agrave;nh phố v&ocirc; c&ugrave;ng năng động, đặc biệt l&agrave; thế hệ trẻ lu&ocirc;n tr&agrave;n đầy ước mơ v&agrave; ho&agrave;i b&atilde;o m&atilde;nh liệt.</p>\r\n\r\n<p>&quot;Những người trẻ c&oacute; vẻ muốn trở th&agrave;nh doanh nh&acirc;n hơn l&agrave; đi l&agrave;m nh&agrave; nước. Họ đều mang b&ecirc;n m&igrave;nh chiếc smartphone v&agrave; đi lại vội v&atilde; tr&ecirc;n đường.&quot;, c&ocirc; Consul Alan Murray - một người Anh đ&atilde; sống tại th&agrave;nh phố Hồ Ch&iacute; Minh hơn 10 năm chia sẻ.</p>\r\n\r\n<p><img alt=\"\" src=\"/lvtn/public/images/tintuc/files/dalat/HCM/hcm4.jpg\" style=\"height:354px; width:600px\" /></p>\r\n\r\n<p>Mặc d&ugrave; sống nhanh v&agrave; c&oacute; phần hối hả, thế nhưng cư d&acirc;n tại đ&acirc;y lại v&ocirc; c&ugrave;ng nhiệt th&agrave;nh v&agrave; lu&ocirc;n sẵn s&agrave;ng dừng lại để gi&uacute;p đỡ c&aacute;c ho&agrave;n cảnh kh&oacute; khăn trong cuộc sống.</p>\r\n\r\n<p>&quot;Trong những ng&agrave;y đầu ti&ecirc;n tới đ&acirc;y, t&ocirc;i đ&atilde; bị lạc tại Quận 3. Khi đ&oacute;, t&ocirc;i t&igrave;m tới một nơi ph&aacute;t wifi miễn ph&iacute; để gọi Grab Bike nhưng lại kh&ocirc;ng thể n&agrave;o giao tiếp được với t&agrave;i xế. Hơi hoảng, t&ocirc;i liền đưa chiếc điện thoại của m&igrave;nh cho một người đ&agrave;n &ocirc;ng đứng b&ecirc;n cạnh v&agrave; &ocirc;ng ấy đ&atilde; gi&uacute;p t&ocirc;i n&oacute;i chuyện.</p>\r\n\r\n<p>T&ocirc;i cứ nghĩ người d&acirc;n v&ugrave;ng Midwest (một trong bốn v&ugrave;ng lớn tại Mỹ) l&agrave; th&acirc;n thiện nhất rồi, n&agrave;o ngờ người Việt Nam lại c&agrave;ng th&acirc;n thiện hơn nữa.&quot;, c&ocirc; Cheng kể lại.</p>\r\n\r\n<p>C&ograve;n anh An Dương - trưởng ph&ograve;ng c&ocirc;ng nghệ của c&ocirc;ng ty khởi nghiệp cung cấp dịch vụ t&igrave;m kiếm th&ocirc;ng tin du lịch TourMega v&agrave; l&agrave; một người d&acirc;n bản địa cũng đồng &yacute; với lời nhận x&eacute;t tr&ecirc;n.</p>\r\n\r\n<p>&quot;Người S&agrave;i G&ograve;n thường sẵn s&agrave;ng cho đi m&agrave; kh&ocirc;ng cần nhận lại bất cứ điều g&igrave;. Bạn sẽ thấy v&ocirc; số b&igrave;nh tr&agrave; đ&aacute; miễn ph&iacute; đặt tại nhiều con đường lớn nhỏ để gi&uacute;p đỡ những người b&aacute;n h&agrave;ng rong đang vất vả mưu sinh ngo&agrave;i cuộc sống.&nbsp;Ai nấy đều sẵn l&ograve;ng hỗ trợ người kh&aacute;c một c&aacute;ch nhiệt t&igrave;nh như với người th&acirc;n của m&igrave;nh vậy&quot;.</p>\r\n\r\n<p><img alt=\"\" src=\"/lvtn/public/images/tintuc/files/dalat/HCM/hcm5.jpg\" style=\"height:395px; width:600px\" /></p>\r\n\r\n<p>C&aacute;ch tốt nhất để thăm th&uacute; th&agrave;nh phố Hồ Ch&iacute; Minh l&agrave; vi vu tr&ecirc;n một chiếc xe m&aacute;y. Sử dụng phương tiện n&agrave;y, bạn c&oacute; thể tạm thời dừng lại v&agrave; gửi xe một c&aacute;ch dễ d&agrave;ng, từ đ&oacute; c&oacute; thể kh&aacute;m ph&aacute; những địa điểm vui chơi th&uacute; vị cũng như thưởng thức c&aacute;c qu&aacute;n ăn hấp dẫn b&ecirc;n lề đường.</p>\r\n\r\n<p>Anh Barker cho biết, một m&oacute;n ăn m&agrave; du kh&aacute;ch nước ngo&agrave;i kh&ocirc;ng n&ecirc;n bỏ qua khi tới đ&acirc;y l&agrave; m&oacute;n &quot;b&uacute;n thịt nướng&quot;, hay c&ograve;n gọi l&agrave; &quot;b&uacute;n chả&quot; theo c&aacute;ch n&oacute;i của những địa phương ở ph&iacute;a Bắc.</p>\r\n\r\n<p>&quot;Bạn c&oacute; thể t&igrave;m thấy những qu&aacute;n ăn đường phố tại mọi g&oacute;c đường, mọi con phố tr&ecirc;n khắp S&agrave;i G&ograve;n n&agrave;y. Việc bạn cần l&agrave;m ch&iacute;nh l&agrave; k&eacute;o một chiếc ghế nhựa về ph&iacute;a m&igrave;nh, ngồi xuống v&agrave; thưởng thức hương vị hấp dẫn từ b&aacute;t hủ tiếu g&otilde;, t&agrave;u hũ n&oacute;ng hay c&agrave; ph&ecirc; sữa đ&aacute;. Chỉ đơn giản c&oacute; thế m&agrave; th&ocirc;i&quot; .</p>\r\n\r\n<p><strong>Những địa điểm nhất định phải đến khi gh&eacute; thăm S&agrave;i G&ograve;n</strong></p>\r\n\r\n<p><strong><img alt=\"\" src=\"/lvtn/public/images/tintuc/files/dalat/HCM/hcm6.jpg\" style=\"height:401px; width:600px\" /></strong></p>\r\n\r\n<p>To&agrave;n bộ th&agrave;nh phố Hồ Ch&iacute; Minh được chia l&agrave;m 24 quận. Đa phần người nước ngo&agrave;i đều bắt đầu định cư tại Quận 1 &ndash; nơi được mệnh danh l&agrave; &quot;thi&ecirc;n đường&quot; mua sắm với những khu chợ nổi tiếng như Bến Th&agrave;nh hay c&aacute;c con phố lớn với h&agrave;ng loạt hoạt động sầm uất về đ&ecirc;m.</p>\r\n\r\n<p>Cứ thử một lần gh&eacute; tới đường B&ugrave;i Viện hoặc Phạm Ngũ L&atilde;o sau 10 giờ tối m&agrave; xem, bạn sẽ tha hồ được tụ tập với du kh&aacute;ch bốn phương v&agrave; giao lưu đến tận l&uacute;c trời s&aacute;ng trong h&agrave;ng loạt qu&aacute;n pub, qu&aacute;n c&agrave; ph&ecirc;, qu&aacute;n bia tươi lề đường với &aacute;nh đ&egrave;n s&aacute;ng rực.</p>\r\n\r\n<p>Anh Baker chia sẻ: &quot;Khu vực Đa Kao thuộc Quận 1 l&agrave; nơi ưa th&iacute;ch nhất của t&ocirc;i. Nơi n&agrave;y c&oacute; rất nhiều cửa h&agrave;ng ẩm thực để thưởng thức, v&agrave; từ đ&acirc;y c&oacute; thể đi tới to&agrave;n bộ c&aacute;c địa điểm th&uacute; vị kh&aacute;c thuộc trung t&acirc;m th&agrave;nh phố.&quot;</p>\r\n\r\n<p><img alt=\"\" src=\"/lvtn/public/images/tintuc/files/dalat/HCM/hcm7.png\" style=\"height:401px; width:600px\" /></p>\r\n\r\n<p>Khu vực Quận 2 gần s&ocirc;ng S&agrave;i G&ograve;n l&agrave; một v&ugrave;ng mới được ph&aacute;t triển với nhiều qu&aacute;n ăn, khu mua sắm v&agrave; cao ốc đắt tiền. Trong đ&oacute;, người nước ngo&agrave;i thường t&igrave;m tới phường Thảo Điền để tận hưởng cuộc sống tiện nghi nhất m&agrave; chẳng cần lặn lội tới c&aacute;c điểm vui chơi xa x&ocirc;i kh&aacute;c.</p>\r\n\r\n<p>Ngo&agrave;i ra, nếu muốn định cư l&acirc;u d&agrave;i hoặc c&oacute; con nhỏ th&igrave; họ lại lựa chọn Quận 7. Bởi đa phần những ng&ocirc;i trường quốc tế chất lượng cao c&ugrave;ng hệ thống nh&agrave; ở phong ph&uacute; đều tập trung hết ở khu vực n&agrave;y.</p>\r\n\r\n<p><strong>Từ S&agrave;i G&ograve;n, bạn c&oacute; thể vi vu c&aacute;c địa danh nổi tiếng trong v&ograve;ng &quot;một nốt nhạc&quot;</strong></p>\r\n\r\n<p><strong><img alt=\"\" src=\"/lvtn/public/images/tintuc/files/dalat/HCM/hcm8.jpg\" style=\"height:257px; width:600px\" /></strong></p>\r\n\r\n<p>Những người muốn đi du lịch trong ng&agrave;y thường lựa chọn c&aacute;c b&atilde;i biển tuyệt đẹp tại Vũng T&agrave;u (khoảng 93km về ph&iacute;a Đ&ocirc;ng Nam) hay khu vực miền T&acirc;y (khoảng 200km về ph&iacute;a T&acirc;y Nam).</p>\r\n\r\n<p>Tuy nhi&ecirc;n, c&ugrave;ng với sự hiện đại của dịch vụ h&agrave;ng kh&ocirc;ng, du kh&aacute;ch cũng c&oacute; thể đi xa hơn nữa để thỏa sức ngắm nh&igrave;n những địa danh &quot;kh&ocirc;ng đến th&igrave; ph&iacute;&quot; ở Việt Nam.</p>\r\n\r\n<p><img alt=\"\" src=\"/lvtn/public/images/tintuc/files/dalat/HCM/hcm9.jpg\" style=\"height:337px; width:600px\" /></p>\r\n\r\n<p>Chỉ mất 1 giờ bay, bạn sẽ được đặt ch&acirc;n tới đảo ngọc Ph&uacute; Quốc &ndash; một trong những điểm hẹn hấp dẫn với b&atilde;i biển xanh biếc, khu rừng mưa nhiệt đới nguy&ecirc;n thủy c&ugrave;ng đời sống ẩm thực, &acirc;m nhạc v&agrave; lễ hội đang hết sức ph&aacute;t triển.</p>\r\n\r\n<p>Nếu muốn tr&aacute;nh c&aacute;i n&oacute;ng bỏng r&aacute;t của miền biển, du kh&aacute;ch cũng c&oacute; thể gh&eacute; thăm Đ&agrave; Lạt (khoảng 300km về ph&iacute;a Đ&ocirc;ng Bắc) - nơi được mệnh danh l&agrave; th&agrave;nh phố của m&ugrave;a xu&acirc;n vĩnh cửu với điều kiện thời tiết m&aacute;t mẻ quanh năm, hay tỉnh Đắk Lắk (khoảng 350km về ph&iacute;a Đ&ocirc;ng Bắc) với những th&aacute;c nước tuyệt đẹp, sản phẩm c&agrave; ph&ecirc; nổi tiếng v&agrave; cơ hội kh&aacute;m ph&aacute; sự đa dạng về văn h&oacute;a của hơn 40 tộc người kh&aacute;c nhau.</p>\r\n\r\n<p><img alt=\"\" src=\"/lvtn/public/images/tintuc/files/dalat/HCM/hcm11/hcm13.jpg\" style=\"height:378px; width:600px\" /></p>\r\n\r\n<p>Do đ&acirc;y l&agrave; một vị tr&iacute; chiến lược kh&aacute; quan trọng của to&agrave;n khu vực n&ecirc;n từ th&agrave;nh phố Hồ Ch&iacute; Minh, bạn c&oacute; thể dễ d&agrave;ng đ&aacute;p m&aacute;y bay tới những khu vực nổi tiếng kh&aacute;c tại Đ&ocirc;ng Nam &Aacute; như Bangkok, Kuala Lumpur hay Singapore với thời gian bay chưa đầy 2 giờ đồng hồ.</p>\r\n\r\n<p><strong>Mức gi&aacute; th&acirc;n thiện với t&uacute;i tiền của bạn</strong></p>\r\n\r\n<p><strong><img alt=\"\" src=\"/lvtn/public/images/tintuc/files/dalat/HCM/hcm11/hcm11.jpg\" style=\"height:354px; width:600px\" /></strong></p>\r\n\r\n<p>Nếu so s&aacute;nh với những th&agrave;nh phố kh&aacute;c ở c&aacute;c nước phương T&acirc;y, cuộc sống tại th&agrave;nh phố Hồ Ch&iacute; Minh sẽ khiến bạn cảm thấy rất dễ chịu với mức gi&aacute; kh&ocirc;ng thể &quot;th&acirc;n thiện&quot; hơn.</p>\r\n\r\n<p>Đặc biệt, việc t&igrave;m kiếm địa điểm ăn uống b&ecirc;n ngo&agrave;i thực sự kh&aacute; dễ d&agrave;ng v&agrave; ph&ugrave; hợp với t&uacute;i tiền của số đ&ocirc;ng &ndash; chỉ chưa tới 80.000 đồng cho một bữa ăn thật ngon miệng.</p>\r\n\r\n<p><img alt=\"\" src=\"/lvtn/public/images/tintuc/files/dalat/HCM/hcm11/hcm12.jpg\" style=\"height:330px; width:600px\" /></p>\r\n\r\n<p>Chi ph&iacute; thu&ecirc; nh&agrave; ở đ&acirc;y cũng rất rẻ, chỉ từ 6,8 triệu đồng mỗi th&aacute;ng l&agrave; bạn đ&atilde; c&oacute; thể sở hữu một căn hộ chung cư tiện nghi cho một người, rẻ hơn tới 85% so với c&aacute;c th&agrave;nh phố lớn kh&aacute;c tại Mỹ.</p>\r\n\r\n<p>&quot;Bạn c&oacute; thể ti&ecirc;u tiền theo nhiều c&aacute;ch kh&aacute;c nhau. Nhưng nếu chỉ thu&ecirc; một căn hộ b&igrave;nh thường v&agrave; ăn uống kh&ocirc;ng qu&aacute; phung ph&iacute; th&igrave; chỉ cần chưa tới 1.000 USD (khoảng 23 triệu đồng) l&agrave; đủ để sống thoải m&aacute;i ở đ&acirc;y rồi.&quot;, anh Clark khẳng định.</p>', 1, 1, 1, 0, '2018-11-30 18:19:45', '2018-11-30 18:19:45'),
(20, 'ĐẠI TIỆC SALE OFF LÊN ĐẾN 50%', '1667126946-A7300035-HDR-min-1024x683.jpg', 'GIỜ VÀNG FLASHSALE, GIẢM NGAY 50% GIÁ VÉ XE VÀO 12H – 13H NGÀY 18.10', '<p>D&ograve;ng xe giường nằm rộng r&atilde;i, thiết kế sang trọng v&agrave; ri&ecirc;ng tư tham gia Flash Sale th&aacute;ng 10 với h&agrave;ng loạt m&atilde; ưu đ&atilde;i giảm gi&aacute; hấp dẫn:</p>\r\n\r\n<p><img alt=\"\" src=\"https://phongphulimousine.com/wp-content/uploads/2022/10/A7300023-HDR-min-1024x683.jpg\" style=\"height:683px; width:1024px\" /></p>\r\n\r\n<p><img alt=\"\" src=\"https://phongphulimousine.com/wp-content/uploads/2022/10/A7309914-HDR-min-1024x683.jpg\" style=\"height:683px; width:1024px\" /></p>\r\n\r\n<p>LƯU &Yacute;:- Mỗi kh&aacute;ch h&agrave;ng sử dụng m&atilde; giảm gi&aacute; thuộc chương tr&igrave;nh tối đa 01 lần.- Mỗi m&atilde; giảm tối đa 250K, &aacute;p dụng một lần đặt v&eacute; được đặt tối đa 01 v&eacute;.</p>\r\n\r\n<p>Nhập m&atilde; giảm gi&aacute; ở bước thanh to&aacute;n khi đặt v&eacute; tại Website/App VeXeRe v&agrave; Web/App nh&agrave; xe Phong Ph&uacute; &ndash; Số lượng m&atilde; giảm gi&aacute; c&oacute; hạn.</p>\r\n\r\n<p>Chương tr&igrave;nh sẽ kết th&uacute;c khi m&atilde; đ&atilde; được sử dụng hết.- V&eacute; c&oacute; sử dụng m&atilde; giảm gi&aacute; thuộc chương tr&igrave;nh kh&ocirc;ng được ho&agrave;n/hủy/đổi/trả.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>', 1, 1, 1, 0, '2018-11-30 18:30:53', '2022-10-30 17:50:06');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `thong_ke`
--

DROP TABLE IF EXISTS `thong_ke`;
CREATE TABLE IF NOT EXISTS `thong_ke` (
  `Mã` int(11) NOT NULL AUTO_INCREMENT,
  `Tháng` int(11) NOT NULL,
  `Năm` int(11) NOT NULL,
  `Số_chuyến_xe` int(11) NOT NULL,
  `Chi_phí` int(11) NOT NULL,
  `Doanh_thu` int(11) NOT NULL,
  `created__at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`Mã`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tinh`
--

DROP TABLE IF EXISTS `tinh`;
CREATE TABLE IF NOT EXISTS `tinh` (
  `Mã` int(11) NOT NULL AUTO_INCREMENT,
  `Tên` varchar(255) NOT NULL,
  `Tên_không_dấu` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`Mã`),
  UNIQUE KEY `Tên` (`Tên`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `tinh`
--

INSERT INTO `tinh` (`Mã`, `Tên`, `Tên_không_dấu`, `created_at`, `updated_at`) VALUES
(1, 'An Giang', 'An Giang', '2018-09-27 06:37:58', '2018-12-05 03:05:27'),
(2, 'Quảng Ngãi', 'Quang Ngai', '2018-10-09 17:13:46', '2018-10-09 17:13:46'),
(3, 'Quảng Nam', 'Quang Nam', '2018-10-09 10:42:25', '2018-10-09 10:54:53'),
(6, 'Đà Nẵng', 'Da Nang', '2018-10-09 11:09:39', '2018-10-09 11:09:39'),
(7, 'TP.Hồ Chí Minh', 'TP.Ho Chi Minh', '2018-10-24 04:43:03', '2018-10-24 07:27:13'),
(8, 'Bạc Liêu', 'Bac Lieu', '2018-10-24 07:00:11', '2018-10-24 07:00:11'),
(9, 'Bảo Lộc', 'Bao Loc', '2018-10-24 07:00:21', '2018-10-24 07:00:21'),
(10, 'Lâm Đồng', 'Lam Dong', '2018-10-24 07:00:32', '2018-10-24 07:00:32'),
(11, 'Nha Trang', 'Nha Trang', '2018-10-24 07:01:24', '2018-10-24 07:01:24'),
(12, 'Phan Thiết', 'Phan Thiet', '2018-10-24 07:01:36', '2018-10-24 07:01:36'),
(13, 'Cà Mau', 'Ca Mau', '2018-10-24 07:01:42', '2018-10-24 07:01:42'),
(14, 'Cần Thơ', 'Can Tho', '2018-10-24 07:01:50', '2018-10-24 07:01:50'),
(15, 'Đồng Tháp', 'Dong Thap', '2018-10-24 07:01:59', '2018-10-24 07:01:59'),
(16, 'Châu Đốc', 'Chau Doc', '2018-10-24 07:02:14', '2018-10-24 07:02:14'),
(17, 'Đà Lạt', 'Da Lat', '2018-10-24 07:05:43', '2018-10-24 07:05:43'),
(18, 'Hà Nội', 'Ha Noi', '2018-10-24 07:05:52', '2018-10-24 07:05:52'),
(19, 'Kiên Giang', 'Kien Giang', '2018-10-24 07:06:02', '2018-10-24 07:06:02'),
(20, 'Huế', 'Hue', '2018-10-24 07:06:11', '2018-10-24 07:06:11'),
(21, 'Nam Định', 'Nam Dinh', '2018-10-24 07:06:24', '2018-10-24 07:06:24'),
(22, 'Bình Định', 'Binh Dinh', '2018-10-24 07:06:46', '2018-10-24 07:06:46'),
(23, 'Sóc Trăng', 'Soc Trang', '2018-10-24 07:07:32', '2018-10-24 07:07:32'),
(24, 'Trà Vinh', 'Tra Vinh', '2018-10-24 07:07:46', '2018-10-24 07:07:46'),
(25, 'Vũng Tàu', 'Vung Tau', '2018-10-24 07:07:58', '2018-10-24 07:07:58'),
(26, 'Bến Tre', 'Ben Tre', '2018-10-24 07:08:14', '2018-10-24 07:08:14'),
(27, 'Tuy Hòa', 'Tuy Hoa', '2018-10-24 07:08:38', '2018-10-24 07:08:38'),
(28, 'Đắk Lắk', 'Dak Lak', '2018-10-24 07:09:17', '2018-10-24 07:09:17'),
(29, 'Đắk Nông', 'Dak Nong', '2018-10-24 07:09:25', '2018-10-24 07:09:25'),
(30, 'Tây Ninh', 'Tay Ninh', '2018-10-31 07:42:36', '2018-10-31 07:42:36');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tram_dung`
--

DROP TABLE IF EXISTS `tram_dung`;
CREATE TABLE IF NOT EXISTS `tram_dung` (
  `Mã` int(11) NOT NULL AUTO_INCREMENT,
  `Tên` varchar(255) NOT NULL,
  `Tọa_độ` varchar(255) NOT NULL,
  `Mã_nhân_viên_tạo` int(11) NOT NULL,
  `Mã_nhân_viên_chỉnh_sửa` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`Mã`),
  UNIQUE KEY `Tên` (`Tên`),
  UNIQUE KEY `Tọa_độ` (`Tọa_độ`),
  KEY `Mã_nhân_viên_tạo` (`Mã_nhân_viên_tạo`),
  KEY `Mã_nhân_viên_chỉnh_sửa` (`Mã_nhân_viên_chỉnh_sửa`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `tram_dung`
--

INSERT INTO `tram_dung` (`Mã`, `Tên`, `Tọa_độ`, `Mã_nhân_viên_tạo`, `Mã_nhân_viên_chỉnh_sửa`, `created_at`, `updated_at`) VALUES
(1, 'Trường Đại Học Ngân Hàng', '10.860252,106.761847', 1, 1, '2018-10-08 13:25:29', '2018-12-06 11:52:34'),
(3, 'Minh Khải', '9.51234260888589,105.87316811084747', 1, 1, '2018-10-08 11:58:21', '2022-10-30 05:34:14');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `ve`
--

DROP TABLE IF EXISTS `ve`;
CREATE TABLE IF NOT EXISTS `ve` (
  `Mã` int(11) NOT NULL AUTO_INCREMENT,
  `Mã_chuyến_xe` int(11) NOT NULL,
  `Mã_nhân_viên_đặt` int(11) DEFAULT NULL,
  `Mã_khách_hàng` int(11) DEFAULT NULL,
  `Mã_đặt_vé` varchar(255) DEFAULT NULL,
  `Vị_trí_ghế` varchar(255) NOT NULL,
  `Trạng_thái` int(11) NOT NULL DEFAULT '0',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `is_hide` tinyint(1) NOT NULL DEFAULT '0',
  `Thời_điểm_chọn` datetime DEFAULT NULL,
  PRIMARY KEY (`Mã`),
  KEY `Mã_chuyến_xe` (`Mã_chuyến_xe`),
  KEY `Mã_khách_hàng` (`Mã_khách_hàng`),
  KEY `Mã_nhân_viên_đặt` (`Mã_nhân_viên_đặt`)
) ENGINE=InnoDB AUTO_INCREMENT=5322 DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `ve`
--

INSERT INTO `ve` (`Mã`, `Mã_chuyến_xe`, `Mã_nhân_viên_đặt`, `Mã_khách_hàng`, `Mã_đặt_vé`, `Vị_trí_ghế`, `Trạng_thái`, `created_at`, `updated_at`, `is_hide`, `Thời_điểm_chọn`) VALUES
(5191, 50, NULL, NULL, NULL, 'A-1', 0, '2022-10-29 04:49:01', '2022-10-29 04:49:01', 0, NULL),
(5192, 50, NULL, NULL, NULL, 'A-2', 0, '2022-10-29 04:49:01', '2022-10-29 04:49:01', 0, NULL),
(5193, 50, NULL, NULL, NULL, 'A-3', 0, '2022-10-29 04:49:01', '2022-10-29 04:49:01', 0, NULL),
(5194, 50, NULL, NULL, NULL, 'A-4', 0, '2022-10-29 04:49:01', '2022-10-29 04:49:01', 0, NULL),
(5195, 50, NULL, NULL, NULL, 'A-5', 0, '2022-10-29 04:49:01', '2022-10-29 04:49:01', 0, NULL),
(5196, 50, NULL, NULL, NULL, 'A-6', 0, '2022-10-29 04:49:01', '2022-10-29 04:49:01', 0, NULL),
(5197, 50, NULL, NULL, NULL, 'A-7', 0, '2022-10-29 04:49:01', '2022-10-29 04:49:01', 0, NULL),
(5198, 50, NULL, NULL, NULL, 'A-8', 0, '2022-10-29 04:49:01', '2022-10-29 04:49:01', 0, NULL),
(5199, 50, NULL, NULL, NULL, 'A-9', 0, '2022-10-29 04:49:01', '2022-10-29 04:49:01', 0, NULL),
(5200, 50, NULL, NULL, NULL, 'A-10', 0, '2022-10-29 04:49:01', '2022-10-29 04:49:01', 0, NULL),
(5201, 50, NULL, NULL, NULL, 'A-11', 0, '2022-10-29 04:49:01', '2022-10-29 04:49:01', 0, NULL),
(5202, 50, NULL, NULL, NULL, 'A-12', 0, '2022-10-29 04:49:01', '2022-10-29 04:49:01', 0, NULL),
(5203, 50, NULL, NULL, NULL, 'A-13', 0, '2022-10-29 04:49:01', '2022-10-29 04:49:01', 0, NULL),
(5204, 50, NULL, NULL, NULL, 'A-14', 0, '2022-10-29 04:49:01', '2022-10-29 04:49:01', 0, NULL),
(5205, 50, NULL, NULL, NULL, 'A-15', 0, '2022-10-29 04:49:01', '2022-10-29 04:49:01', 0, NULL),
(5206, 50, NULL, NULL, NULL, 'A-16', 0, '2022-10-29 04:49:01', '2022-10-29 04:49:01', 0, NULL),
(5207, 50, NULL, NULL, NULL, 'A-17', 0, '2022-10-29 04:49:01', '2022-10-29 04:49:01', 0, NULL),
(5208, 50, NULL, NULL, NULL, 'A-18', 0, '2022-10-29 04:49:01', '2022-10-29 04:49:01', 0, NULL),
(5209, 50, NULL, NULL, NULL, 'A-19', 0, '2022-10-29 04:49:01', '2022-10-29 04:49:01', 0, NULL),
(5210, 50, NULL, NULL, NULL, 'A-20', 0, '2022-10-29 04:49:01', '2022-10-29 04:49:01', 0, NULL),
(5211, 50, NULL, NULL, NULL, 'A-21', 0, '2022-10-29 04:49:01', '2022-10-29 04:49:01', 0, NULL),
(5212, 50, NULL, NULL, NULL, 'A-22', 0, '2022-10-29 04:49:01', '2022-10-29 04:49:01', 0, NULL),
(5213, 50, NULL, NULL, NULL, 'A-23', 0, '2022-10-29 04:49:01', '2022-10-29 04:49:01', 0, NULL),
(5214, 50, NULL, NULL, NULL, 'A-24', 0, '2022-10-29 04:49:01', '2022-10-29 04:49:01', 0, NULL),
(5215, 50, NULL, NULL, NULL, 'A-25', 0, '2022-10-29 04:49:01', '2022-10-29 04:49:01', 0, NULL),
(5216, 50, NULL, NULL, NULL, 'A-26', 0, '2022-10-29 04:49:01', '2022-10-29 04:49:01', 0, NULL),
(5217, 50, NULL, NULL, NULL, 'A-27', 0, '2022-10-29 04:49:01', '2022-10-29 04:49:01', 0, NULL),
(5218, 50, NULL, NULL, NULL, 'A-28', 0, '2022-10-29 04:49:01', '2022-10-29 04:49:01', 0, NULL),
(5219, 50, NULL, NULL, NULL, 'A-29', 0, '2022-10-29 04:49:01', '2022-10-29 04:49:01', 0, NULL),
(5220, 50, NULL, NULL, NULL, 'A-30', 0, '2022-10-29 04:49:01', '2022-10-29 04:49:01', 0, NULL),
(5221, 50, NULL, NULL, NULL, 'A-31', 0, '2022-10-29 04:49:01', '2022-10-29 04:49:01', 0, NULL),
(5222, 50, NULL, NULL, NULL, 'A-32', 0, '2022-10-29 04:49:01', '2022-10-29 04:49:01', 0, NULL),
(5223, 50, NULL, NULL, NULL, 'A-33', 0, '2022-10-29 04:49:01', '2022-10-29 04:49:01', 0, NULL),
(5224, 50, NULL, NULL, NULL, 'A-34', 0, '2022-10-29 04:49:01', '2022-10-29 04:49:01', 0, NULL),
(5225, 50, NULL, NULL, NULL, 'A-35', 0, '2022-10-29 04:49:01', '2022-10-29 04:49:01', 0, NULL),
(5226, 50, NULL, NULL, NULL, 'A-36', 0, '2022-10-29 04:49:01', '2022-10-29 04:49:01', 0, NULL),
(5227, 50, NULL, NULL, NULL, 'A-37', 0, '2022-10-29 04:49:01', '2022-10-29 04:49:01', 0, NULL),
(5228, 50, NULL, NULL, NULL, 'A-38', 0, '2022-10-29 04:49:01', '2022-10-29 04:49:01', 0, NULL),
(5229, 50, NULL, NULL, NULL, 'A-39', 0, '2022-10-29 04:49:01', '2022-10-29 04:49:01', 0, NULL),
(5230, 50, NULL, NULL, NULL, 'A-40', 0, '2022-10-29 04:49:01', '2022-10-29 04:49:01', 0, NULL),
(5231, 50, NULL, NULL, NULL, 'A-41', 0, '2022-10-29 04:49:01', '2022-10-29 04:49:01', 0, NULL),
(5232, 50, NULL, NULL, NULL, 'A-42', 0, '2022-10-29 04:49:01', '2022-10-29 04:49:01', 0, NULL),
(5233, 50, NULL, NULL, NULL, 'A-43', 0, '2022-10-29 04:49:01', '2022-10-29 04:49:01', 0, NULL),
(5234, 50, NULL, NULL, NULL, 'A-44', 0, '2022-10-29 04:49:01', '2022-10-29 04:49:01', 0, NULL),
(5235, 50, NULL, NULL, NULL, 'A-45', 0, '2022-10-29 04:49:01', '2022-10-29 04:49:01', 0, NULL),
(5236, 50, NULL, NULL, NULL, 'A-46', 0, '2022-10-29 04:49:01', '2022-10-29 04:49:01', 0, NULL),
(5237, 51, NULL, NULL, NULL, 'A-1', 0, '2022-10-29 04:54:52', '2022-10-29 04:54:52', 0, NULL),
(5238, 51, NULL, NULL, NULL, 'A-2', 0, '2022-10-29 04:54:52', '2022-10-29 04:54:52', 0, NULL),
(5239, 51, NULL, NULL, NULL, 'A-3', 0, '2022-10-29 04:54:52', '2022-10-29 04:54:52', 0, NULL),
(5240, 51, NULL, NULL, NULL, 'A-4', 0, '2022-10-29 04:54:52', '2022-10-29 04:54:52', 0, NULL),
(5241, 51, NULL, NULL, NULL, 'A-5', 0, '2022-10-29 04:54:52', '2022-10-29 04:54:52', 0, NULL),
(5242, 51, NULL, NULL, NULL, 'A-6', 0, '2022-10-29 04:54:52', '2022-10-29 04:54:52', 0, NULL),
(5243, 51, NULL, NULL, NULL, 'A-7', 0, '2022-10-29 04:54:52', '2022-10-29 04:54:52', 0, NULL),
(5244, 51, NULL, NULL, NULL, 'A-8', 0, '2022-10-29 04:54:52', '2022-10-29 04:54:52', 0, NULL),
(5245, 51, NULL, NULL, NULL, 'A-9', 0, '2022-10-29 04:54:52', '2022-10-29 04:54:52', 0, NULL),
(5246, 51, NULL, NULL, NULL, 'A-10', 0, '2022-10-29 04:54:52', '2022-10-29 04:54:52', 0, NULL),
(5247, 51, NULL, NULL, NULL, 'A-11', 0, '2022-10-29 04:54:52', '2022-10-29 04:54:52', 0, NULL),
(5248, 51, NULL, NULL, NULL, 'A-12', 0, '2022-10-29 04:54:52', '2022-10-29 04:54:52', 0, NULL),
(5249, 51, NULL, NULL, NULL, 'A-13', 0, '2022-10-29 04:54:52', '2022-10-29 04:54:52', 0, NULL),
(5250, 51, NULL, NULL, NULL, 'A-14', 0, '2022-10-29 04:54:52', '2022-10-29 04:54:52', 0, NULL),
(5251, 51, NULL, NULL, NULL, 'A-15', 0, '2022-10-29 04:54:52', '2022-10-29 04:54:52', 0, NULL),
(5252, 51, NULL, NULL, NULL, 'A-16', 0, '2022-10-29 04:54:52', '2022-10-29 04:54:52', 0, NULL),
(5253, 51, NULL, NULL, NULL, 'A-17', 0, '2022-10-29 04:54:52', '2022-10-29 04:54:52', 0, NULL),
(5254, 51, NULL, NULL, NULL, 'A-18', 0, '2022-10-29 04:54:52', '2022-10-29 04:54:52', 0, NULL),
(5255, 51, NULL, NULL, NULL, 'A-19', 0, '2022-10-29 04:54:52', '2022-10-29 04:54:52', 0, NULL),
(5256, 51, NULL, NULL, NULL, 'A-20', 0, '2022-10-29 04:54:52', '2022-10-29 04:54:52', 0, NULL),
(5257, 51, NULL, NULL, NULL, 'B-1', 0, '2022-10-29 04:54:52', '2022-10-29 04:54:52', 0, NULL),
(5258, 51, NULL, NULL, NULL, 'B-2', 0, '2022-10-29 04:54:52', '2022-10-29 04:54:52', 0, NULL),
(5259, 51, NULL, NULL, NULL, 'B-3', 0, '2022-10-29 04:54:52', '2022-10-29 04:54:52', 0, NULL),
(5260, 51, NULL, NULL, NULL, 'B-4', 0, '2022-10-29 04:54:52', '2022-10-29 04:54:52', 0, NULL),
(5261, 51, NULL, NULL, NULL, 'B-5', 0, '2022-10-29 04:54:52', '2022-10-29 04:54:52', 0, NULL),
(5262, 51, NULL, NULL, NULL, 'B-6', 0, '2022-10-29 04:54:52', '2022-10-29 04:54:52', 0, NULL),
(5263, 51, NULL, NULL, NULL, 'B-7', 0, '2022-10-29 04:54:52', '2022-10-29 04:54:52', 0, NULL),
(5264, 51, NULL, 37, NULL, 'B-8', 1, '2022-10-29 04:54:52', '2022-10-29 04:54:52', 0, '2022-10-29 16:56:54'),
(5265, 51, NULL, NULL, NULL, 'B-9', 0, '2022-10-29 04:54:52', '2022-10-29 04:54:52', 0, NULL),
(5266, 51, NULL, NULL, NULL, 'B-10', 0, '2022-10-29 04:54:52', '2022-10-29 04:54:52', 0, NULL),
(5267, 51, NULL, NULL, NULL, 'B-11', 0, '2022-10-29 04:54:52', '2022-10-29 04:54:52', 0, NULL),
(5268, 51, NULL, NULL, NULL, 'B-12', 0, '2022-10-29 04:54:52', '2022-10-29 04:54:52', 0, NULL),
(5269, 51, NULL, NULL, NULL, 'B-13', 0, '2022-10-29 04:54:52', '2022-10-29 04:54:52', 0, NULL),
(5270, 51, NULL, NULL, NULL, 'B-14', 0, '2022-10-29 04:54:52', '2022-10-29 04:54:52', 0, NULL),
(5271, 51, NULL, NULL, NULL, 'B-15', 0, '2022-10-29 04:54:52', '2022-10-29 04:54:52', 0, NULL),
(5272, 51, NULL, NULL, NULL, 'B-16', 0, '2022-10-29 04:54:52', '2022-10-29 04:54:52', 0, NULL),
(5273, 51, NULL, NULL, NULL, 'B-17', 0, '2022-10-29 04:54:52', '2022-10-29 04:54:52', 0, NULL),
(5274, 51, NULL, NULL, NULL, 'B-18', 0, '2022-10-29 04:54:52', '2022-10-29 04:54:52', 0, NULL),
(5275, 51, NULL, NULL, NULL, 'B-19', 0, '2022-10-29 04:54:52', '2022-10-29 04:54:52', 0, NULL),
(5276, 51, NULL, NULL, NULL, 'B-20', 0, '2022-10-29 04:54:52', '2022-10-29 04:54:52', 0, NULL),
(5277, 52, NULL, NULL, NULL, 'A-1', 0, '2022-10-29 05:14:00', '2022-10-29 05:14:00', 0, NULL),
(5278, 52, NULL, NULL, NULL, 'A-2', 0, '2022-10-29 05:14:00', '2022-10-29 05:14:00', 0, NULL),
(5279, 52, NULL, NULL, NULL, 'A-3', 0, '2022-10-29 05:14:00', '2022-10-29 05:14:00', 0, NULL),
(5280, 52, NULL, NULL, NULL, 'A-4', 0, '2022-10-29 05:14:00', '2022-10-29 05:14:00', 0, NULL),
(5281, 52, NULL, NULL, NULL, 'A-5', 0, '2022-10-29 05:14:00', '2022-10-29 05:14:00', 0, NULL),
(5282, 53, NULL, NULL, NULL, 'A-1', 0, '2022-10-30 05:51:24', '2022-10-30 05:51:24', 0, NULL),
(5283, 53, NULL, NULL, NULL, 'A-2', 0, '2022-10-30 05:51:24', '2022-10-30 05:51:24', 0, NULL),
(5284, 53, NULL, NULL, NULL, 'A-3', 0, '2022-10-30 05:51:24', '2022-10-30 05:51:24', 0, NULL),
(5285, 53, NULL, NULL, NULL, 'A-4', 0, '2022-10-30 05:51:24', '2022-10-30 05:51:24', 0, NULL),
(5286, 53, NULL, NULL, NULL, 'A-5', 0, '2022-10-30 05:51:24', '2022-10-30 05:51:24', 0, NULL),
(5287, 53, NULL, NULL, NULL, 'A-6', 0, '2022-10-30 05:51:24', '2022-10-30 05:51:24', 0, NULL),
(5288, 53, NULL, NULL, NULL, 'A-7', 0, '2022-10-30 05:51:24', '2022-10-30 05:51:24', 0, NULL),
(5289, 53, NULL, NULL, NULL, 'A-8', 0, '2022-10-30 05:51:24', '2022-10-30 05:51:24', 0, NULL),
(5290, 53, NULL, NULL, NULL, 'A-9', 0, '2022-10-30 05:51:24', '2022-10-30 05:51:24', 0, NULL),
(5291, 53, NULL, NULL, NULL, 'A-10', 0, '2022-10-30 05:51:24', '2022-10-30 05:51:24', 0, NULL),
(5292, 53, NULL, NULL, NULL, 'A-11', 0, '2022-10-30 05:51:24', '2022-10-30 05:51:24', 0, NULL),
(5293, 53, NULL, NULL, NULL, 'A-12', 0, '2022-10-30 05:51:24', '2022-10-30 05:51:24', 0, NULL),
(5294, 53, NULL, NULL, NULL, 'A-13', 0, '2022-10-30 05:51:24', '2022-10-30 05:51:24', 0, NULL),
(5295, 53, NULL, NULL, NULL, 'A-14', 0, '2022-10-30 05:51:24', '2022-10-30 05:51:24', 0, NULL),
(5296, 53, NULL, NULL, NULL, 'A-15', 0, '2022-10-30 05:51:24', '2022-10-30 05:51:24', 0, NULL),
(5297, 53, NULL, NULL, NULL, 'A-16', 0, '2022-10-30 05:51:24', '2022-10-30 05:51:24', 0, NULL),
(5298, 53, NULL, NULL, NULL, 'A-17', 0, '2022-10-30 05:51:24', '2022-10-30 05:51:24', 0, NULL),
(5299, 53, NULL, NULL, NULL, 'A-18', 0, '2022-10-30 05:51:24', '2022-10-30 05:51:24', 0, NULL),
(5300, 53, NULL, 37, NULL, 'A-19', 1, '2022-10-30 05:51:24', '2022-10-30 05:51:24', 0, '2022-10-30 17:55:40'),
(5301, 53, NULL, 37, NULL, 'A-20', 1, '2022-10-30 05:51:24', '2022-10-30 05:51:24', 0, '2022-10-30 17:55:41'),
(5302, 53, NULL, NULL, NULL, 'B-1', 0, '2022-10-30 05:51:24', '2022-10-30 05:51:24', 0, NULL),
(5303, 53, NULL, NULL, NULL, 'B-2', 0, '2022-10-30 05:51:24', '2022-10-30 05:51:24', 0, NULL),
(5304, 53, NULL, NULL, NULL, 'B-3', 0, '2022-10-30 05:51:24', '2022-10-30 05:51:24', 0, NULL),
(5305, 53, NULL, NULL, NULL, 'B-4', 0, '2022-10-30 05:51:24', '2022-10-30 05:51:24', 0, NULL),
(5306, 53, NULL, NULL, NULL, 'B-5', 0, '2022-10-30 05:51:24', '2022-10-30 05:51:24', 0, NULL),
(5307, 53, NULL, NULL, NULL, 'B-6', 0, '2022-10-30 05:51:24', '2022-10-30 05:51:24', 0, NULL),
(5308, 53, NULL, NULL, NULL, 'B-7', 0, '2022-10-30 05:51:24', '2022-10-30 05:51:24', 0, NULL),
(5309, 53, NULL, NULL, NULL, 'B-8', 0, '2022-10-30 05:51:24', '2022-10-30 05:51:24', 0, NULL),
(5310, 53, NULL, NULL, NULL, 'B-9', 0, '2022-10-30 05:51:24', '2022-10-30 05:51:24', 0, NULL),
(5311, 53, NULL, NULL, NULL, 'B-10', 0, '2022-10-30 05:51:24', '2022-10-30 05:51:24', 0, NULL),
(5312, 53, NULL, NULL, NULL, 'B-11', 0, '2022-10-30 05:51:24', '2022-10-30 05:51:24', 0, NULL),
(5313, 53, NULL, NULL, NULL, 'B-12', 0, '2022-10-30 05:51:24', '2022-10-30 05:51:24', 0, NULL),
(5314, 53, NULL, NULL, NULL, 'B-13', 0, '2022-10-30 05:51:24', '2022-10-30 05:51:24', 0, NULL),
(5315, 53, NULL, NULL, NULL, 'B-14', 0, '2022-10-30 05:51:24', '2022-10-30 05:51:24', 0, NULL),
(5316, 53, NULL, NULL, NULL, 'B-15', 0, '2022-10-30 05:51:24', '2022-10-30 05:51:24', 0, NULL),
(5317, 53, NULL, NULL, NULL, 'B-16', 0, '2022-10-30 05:51:24', '2022-10-30 05:51:24', 0, NULL),
(5318, 53, NULL, NULL, NULL, 'B-17', 0, '2022-10-30 05:51:24', '2022-10-30 05:51:24', 0, NULL),
(5319, 53, NULL, NULL, NULL, 'B-18', 0, '2022-10-30 05:51:24', '2022-10-30 05:51:24', 0, NULL),
(5320, 53, NULL, NULL, NULL, 'B-19', 0, '2022-10-30 05:51:24', '2022-10-30 05:51:24', 0, NULL),
(5321, 53, NULL, NULL, NULL, 'B-20', 0, '2022-10-30 05:51:24', '2022-10-30 05:51:24', 0, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `xe`
--

DROP TABLE IF EXISTS `xe`;
CREATE TABLE IF NOT EXISTS `xe` (
  `Mã` int(11) NOT NULL AUTO_INCREMENT,
  `Biển_số` varchar(255) NOT NULL,
  `Mã_loại_xe` int(11) NOT NULL,
  `Ngày_bảo_trì_gần_nhất` date NOT NULL,
  `Ngày_bảo_trì_tiếp_theo` date NOT NULL,
  `location` tinytext,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`Mã`),
  UNIQUE KEY `Biển_số` (`Biển_số`),
  KEY `Mã_loại_xe` (`Mã_loại_xe`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `xe`
--

INSERT INTO `xe` (`Mã`, `Biển_số`, `Mã_loại_xe`, `Ngày_bảo_trì_gần_nhất`, `Ngày_bảo_trì_tiếp_theo`, `location`, `created_at`, `updated_at`) VALUES
(6, '51H1-34215', 6, '2018-10-04', '2018-10-18', '10.860252,106.761847', '2018-10-14 09:10:08', '2018-12-13 07:19:42'),
(7, '77A2-00011', 7, '2018-01-10', '2019-01-01', '10.859915,106.760239', '2018-10-25 08:22:03', '2018-10-25 08:22:03'),
(9, '94A2-00011', 6, '2022-10-29', '2023-11-24', NULL, '2022-10-29 05:11:54', '2022-10-29 05:19:57'),
(10, '94A1-00011', 7, '2022-10-29', '2023-11-07', NULL, '2022-10-29 05:23:33', '2022-10-29 05:23:33');

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `bus_model`
--
ALTER TABLE `bus_model`
  ADD CONSTRAINT `bus_model_ibfk_1` FOREIGN KEY (`Mã_nhân_viên_tạo`) REFERENCES `employee` (`Mã`),
  ADD CONSTRAINT `bus_model_ibfk_2` FOREIGN KEY (`Mã_nhân_viên_chỉnh_sửa`) REFERENCES `employee` (`Mã`);

--
-- Các ràng buộc cho bảng `chuyen_xe`
--
ALTER TABLE `chuyen_xe`
  ADD CONSTRAINT `chuyen_xe_ibfk_1` FOREIGN KEY (`Mã_lộ_trình`) REFERENCES `lo_trinh` (`Mã`),
  ADD CONSTRAINT `chuyen_xe_ibfk_2` FOREIGN KEY (`Mã_tài_xế`) REFERENCES `employee` (`Mã`),
  ADD CONSTRAINT `chuyen_xe_ibfk_3` FOREIGN KEY (`Mã_xe`) REFERENCES `xe` (`Mã`),
  ADD CONSTRAINT `chuyen_xe_ibfk_4` FOREIGN KEY (`Mã_nhân_viên_tạo`) REFERENCES `employee` (`Mã`);

--
-- Các ràng buộc cho bảng `duong_di`
--
ALTER TABLE `duong_di`
  ADD CONSTRAINT `duong_di_ibfk_1` FOREIGN KEY (`Mã_Trạm_Start`) REFERENCES `tram_dung` (`Mã`),
  ADD CONSTRAINT `duong_di_ibfk_2` FOREIGN KEY (`Mã_Trạm_End`) REFERENCES `tram_dung` (`Mã`);

--
-- Các ràng buộc cho bảng `lo_trinh`
--
ALTER TABLE `lo_trinh`
  ADD CONSTRAINT `lo_trinh_ibfk_1` FOREIGN KEY (`Mã_nhân_viên_tạo`) REFERENCES `employee` (`Mã`),
  ADD CONSTRAINT `lo_trinh_ibfk_2` FOREIGN KEY (`Mã_nhân_viên_chỉnh_sửa`) REFERENCES `employee` (`Mã`);

--
-- Các ràng buộc cho bảng `tram_dung`
--
ALTER TABLE `tram_dung`
  ADD CONSTRAINT `tram_dung_ibfk_1` FOREIGN KEY (`Mã_nhân_viên_tạo`) REFERENCES `employee` (`Mã`),
  ADD CONSTRAINT `tram_dung_ibfk_2` FOREIGN KEY (`Mã_nhân_viên_chỉnh_sửa`) REFERENCES `employee` (`Mã`);

--
-- Các ràng buộc cho bảng `ve`
--
ALTER TABLE `ve`
  ADD CONSTRAINT `ve_ibfk_1` FOREIGN KEY (`Mã_nhân_viên_đặt`) REFERENCES `employee` (`Mã`),
  ADD CONSTRAINT `ve_ibfk_2` FOREIGN KEY (`Mã_khách_hàng`) REFERENCES `customer` (`Mã`),
  ADD CONSTRAINT `ve_ibfk_3` FOREIGN KEY (`Mã_chuyến_xe`) REFERENCES `chuyen_xe` (`Mã`);

--
-- Các ràng buộc cho bảng `xe`
--
ALTER TABLE `xe`
  ADD CONSTRAINT `xe_ibfk_1` FOREIGN KEY (`Mã_loại_xe`) REFERENCES `bus_model` (`Mã`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
