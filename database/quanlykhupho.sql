-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th8 09, 2022 lúc 08:41 PM
-- Phiên bản máy phục vụ: 10.4.24-MariaDB
-- Phiên bản PHP: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `quanlykhupho`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `hodan`
--

CREATE TABLE `hodan` (
  `maHoDan` varchar(20) NOT NULL,
  `soThanhVien` int(3) NOT NULL,
  `soNha` int(4) NOT NULL,
  `maKhuPho` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `hodan`
--

INSERT INTO `hodan` (`maHoDan`, `soThanhVien`, `soNha`, `maKhuPho`) VALUES
('HD01', 1, 1, 'KP01'),
('HD02', 1, 2, 'KP02'),
('HD03', 1, 3, 'KP03');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `khupho`
--

CREATE TABLE `khupho` (
  `maKhuPho` varchar(20) NOT NULL,
  `tenKhuPho` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `khupho`
--

INSERT INTO `khupho` (`maKhuPho`, `tenKhuPho`) VALUES
('KP01', 'KIM DONG'),
('KP02', 'GIAP BAT'),
('KP03', 'TRUONG DINH'),
('KP04', 'Giai Phong');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nguoi`
--

CREATE TABLE `nguoi` (
  `maNguoi` varchar(20) NOT NULL,
  `hoVaTen` varchar(20) NOT NULL,
  `tuoi` int(3) NOT NULL,
  `namSinh` int(4) NOT NULL,
  `maHoDan` varchar(20) NOT NULL,
  `ngheNghiep` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `nguoi`
--

INSERT INTO `nguoi` (`maNguoi`, `hoVaTen`, `tuoi`, `namSinh`, `maHoDan`, `ngheNghiep`) VALUES
('NG01', 'Trinh Hoang Test1', 80, 1942, 'HD01', 'trieu phu'),
('NG02', 'Trinh Hoang Test2', 90, 1932, 'HD02', 'ty phu'),
('NG03', 'Trinh Hoang Test3', 100, 1922, 'HD03', 'chu tich');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `useritem`
--

CREATE TABLE `useritem` (
  `tenTaiKhoan` varchar(20) NOT NULL,
  `matKhau` varchar(20) NOT NULL,
  `vaiTro` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `useritem`
--

INSERT INTO `useritem` (`tenTaiKhoan`, `matKhau`, `vaiTro`) VALUES
('Admintest', '1', 'admin'),
('Usertest', '1', 'user');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `hodan`
--
ALTER TABLE `hodan`
  ADD PRIMARY KEY (`maHoDan`),
  ADD KEY `maKhuPho` (`maKhuPho`);

--
-- Chỉ mục cho bảng `khupho`
--
ALTER TABLE `khupho`
  ADD PRIMARY KEY (`maKhuPho`);

--
-- Chỉ mục cho bảng `nguoi`
--
ALTER TABLE `nguoi`
  ADD PRIMARY KEY (`maNguoi`),
  ADD KEY `maHoDan` (`maHoDan`);

--
-- Chỉ mục cho bảng `useritem`
--
ALTER TABLE `useritem`
  ADD PRIMARY KEY (`tenTaiKhoan`);

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `hodan`
--
ALTER TABLE `hodan`
  ADD CONSTRAINT `hodan_ibfk_1` FOREIGN KEY (`maKhuPho`) REFERENCES `khupho` (`maKhuPho`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `nguoi`
--
ALTER TABLE `nguoi`
  ADD CONSTRAINT `nguoi_ibfk_1` FOREIGN KEY (`maHoDan`) REFERENCES `hodan` (`maHoDan`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
