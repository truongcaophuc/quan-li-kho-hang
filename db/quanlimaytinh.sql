-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th5 12, 2024 lúc 08:19 AM
-- Phiên bản máy phục vụ: 10.4.32-MariaDB
-- Phiên bản PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `quanlimaytinh`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `account`
--

CREATE TABLE `account` (
  `fullName` varchar(50) DEFAULT NULL,
  `userName` varchar(50) NOT NULL,
  `password` varchar(60) DEFAULT NULL,
  `role` varchar(50) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `account`
--

INSERT INTO `account` (`fullName`, `userName`, `password`, `role`, `status`, `email`) VALUES
('Admin', 'admin', '$2a$12$Y87zSnx.tpFvieylSeXuo.agjb7swi3UVnoo6KVMY9xP5STj4zJhm', 'Admin', 1, 'admin@gmail.com'),
('Trương Cao Phúc', 'caophuc', '$2a$12$89As1J0AB0yrqGjnQUHtpevc6voGyvzAd8OvzkS1vGDo3YPO2P.Ia', 'Nhân viên nhập', 1, '21521300@gm.uit.edu.vn'),
('Nguyễn Gia Phú', 'giaphu', '$2a$12$PhiTGBbHjHoB3dbS6BmCC.rzdMCBqDrdK9Y8Ae8GPcKe1RpHiWARO', 'Nhân viên xuất', 1, '20520692@gm.uit.edu.vn'),
('Nguyễn Tấn Quốc', 'tanquoc', '$2a$12$myOaq0kATMzNkbxgzQEkPu8ht2K0pXOGzZMZo6nSBowq6EyoLo7tS', 'Quản lý kho', 1, '20520724@gm.uit.edu.vn');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `chitietphieunhap`
--

CREATE TABLE `chitietphieunhap` (
  `maPhieu` varchar(50) NOT NULL,
  `maMay` varchar(50) NOT NULL,
  `soLuong` int(11) DEFAULT NULL,
  `donGia` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `chitietphieuxuat`
--

CREATE TABLE `chitietphieuxuat` (
  `maPhieu` varchar(50) NOT NULL,
  `maMay` varchar(50) NOT NULL,
  `soLuong` int(11) DEFAULT NULL,
  `donGia` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `maytinh`
--

CREATE TABLE `maytinh` (
  `maMay` varchar(50) NOT NULL,
  `tenMay` varchar(100) DEFAULT NULL,
  `soLuong` int(11) NOT NULL DEFAULT 0,
  `tenCpu` varchar(50) NOT NULL DEFAULT '0',
  `ram` varchar(50) NOT NULL DEFAULT '0',
  `cardManHInh` varchar(50) DEFAULT NULL,
  `gia` double NOT NULL DEFAULT 0,
  `mainBoard` varchar(50) DEFAULT NULL,
  `congSuatNguon` int(11) DEFAULT NULL,
  `loaiMay` varchar(50) DEFAULT NULL,
  `rom` varchar(50) DEFAULT NULL,
  `kichThuocMan` double DEFAULT NULL,
  `dungLuongPin` varchar(50) DEFAULT NULL,
  `xuatXu` varchar(50) DEFAULT NULL,
  `trangThai` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `maytinh`
--

INSERT INTO `maytinh` (`maMay`, `tenMay`, `soLuong`, `tenCpu`, `ram`, `cardManHInh`, `gia`, `mainBoard`, `congSuatNguon`, `loaiMay`, `rom`, `kichThuocMan`, `dungLuongPin`, `xuatXu`, `trangThai`) VALUES
('LP10', 'Laptop Lenovo IdeaPad Gaming 3', 36, 'Intel Core i5 12500H', '16 GB', 'NVIDIA GeForce RTX 3050', 23490000, NULL, NULL, 'Laptop', '512 GB', 15.6, '4 Cell', 'Trung Quốc', 0),
('LP12', 'Laptop MSI Modern 14 B11MOU-1028VN', 23, 'Intel Core i3 115G4', '8 GB', 'Intel UHD Graphics', 13090000, NULL, NULL, 'Laptop', '256 GB', 14, '3 Cell', 'Trung Quốc', 0),
('LP13', 'Laptop HP 15s-fq2663TU', 0, 'Intel Core i3 1115G4', '4 GB', 'Intel UHD Graphics', 9990000, NULL, NULL, 'Laptop', '256 GB', 15.6, '3 Cell', 'Trung Quốc', 1),
('LP14', 'Laptop Lenovo IdeaPad 5 Pro 16IAH7', 0, 'Intel Core i5 12500H', '16 GB', 'Intel Iris Xe Graphics', 22490000, NULL, NULL, 'Laptop', '512 GB', 16, '4 Cell', 'Trung Quốc', 1),
('LP15', 'Laptop Lenovo IdeaPad 5 Pro 16IAH7', 0, 'Intel Core i7 12700H', '16 GB', 'Intel Iris Xe Graphics', 25190000, NULL, NULL, 'Laptop', '512 GB', 16, '75 Wh', 'Trung Quốc', 1),
('LP16', 'Laptop Acer Nitro Gaming AN515-57-54MV', 0, 'Intel Core i5 11400H', '8', 'NVIDIA GeForce RTX 3050', 22990000, NULL, NULL, 'Laptop', '512 GB', 15.6, '4 Cell ', 'Trung Quốc', 1),
('LP17', 'Laptop MSI Gaming Katana GF66 12UCK-815VN', 0, 'Intel Core i5 12450H', '8 GB', 'Intel UHD Graphics', 23190000, NULL, NULL, 'Laptop', '512 GB', 15.6, '53.5 Wh', 'Trung Quốc', 1),
('LP18', 'Laptop Asus TUF Gaming FX517ZC-HN077W', 0, 'Intel Core i5 12450H', '8 GB', 'NVIDIA GeForce RTX 3050', 24990000, NULL, NULL, 'Laptop', '512 GB', 15.6, '4 Cell', 'Trung Quốc', 1),
('LP19', 'Laptop HP Gaming Victus 16-e0175AX', 0, 'AMD Ryzen 5 5600H', '8 GB', 'NVIDIA GeForce RTX 3050 Ti', 19490000, NULL, NULL, 'Laptop', '512 GB', 16.1, '4 Cell', 'Trung Quốc', 1),
('LP20', 'Laptop MSI GF63 Thin 11UC-444VN', 0, 'Intel Core i5 11400H', '8 GB', 'NVIDIA GeForce RTX 3050', 20790000, NULL, NULL, 'Laptop', '512 GB', 15.6, '3 Cell', 'Trung Quốc', 1),
('LP21', 'Laptop Asus TUF Gaming FX517ZE-HN045W', 0, 'Intel Core i5 12450H', '8 GB', 'NVIDIA GeForce RTX 3050 Ti', 25990000, NULL, NULL, 'Laptop', '512 GB', 15.6, '4 Cell', 'Trung Quốc', 1),
('LP22', 'Laptop Lenovo Yoga Slim 7 Pro 14IHU5O', 0, 'Intel Core i5 11300H', '16 GB', 'Intel Iris Xe Graphics', 23490000, NULL, NULL, 'Laptop', '512 GB', 14, '4 Cell ', 'Trung Quốc', 1),
('LP23', 'Laptop Gigabyte U4 UD-50VN823SO', 0, 'Intel Core i5 1155G7', '16 GB', 'Intel Iris Xe Graphics', 15690000, NULL, NULL, 'Laptop', '512 GB', 14, '36 Wh', 'Trung Quốc', 1),
('LP24', 'Laptop Dell Vostro V5410 i5', 0, 'Intel Core i5 11320H', '8 GB', 'Intel Iris Xe Graphics', 21490000, NULL, NULL, 'Laptop', '512 GB', 14, '4 Cell', 'Trung Quốc', 1),
('LP25', 'Laptop MSI Gaming GF63 Thin 11SC-666VN', 0, 'Intel Core i5 11400H', '8 GB', 'NVIDIA GeForce GTX 1650', 18390000, NULL, NULL, 'Laptop', '512 GB', 15.6, '3 Cell', 'Trung Quốc', 1),
('LP3', 'Lenovo ThinkPad E14', 0, 'Intel Core i5 11G352', '8GB', 'OnBoard', 15000000, NULL, NULL, 'Laptop', '521GB', 14, '45Wh', 'Trung Quốc', 1),
('LP4', 'Lenovo Ideapad 3 15ITL6', 0, 'Intel Core i3 1115G4', '8GB', 'Onboard', 10690000, NULL, NULL, 'Laptop', '512GB', 15.6, '35Wh', 'Trung Quốc', 1),
('LP5', 'Gigabyte Gaming G5 GD', 0, 'Intel Core i5 11400H', '16GB', 'NVIDIA GeForce RTX 3050 4GB', 19290000, NULL, NULL, 'Laptop', '512GB', 15.6, '50Wh', 'Trung Quốc', 1),
('LP6', 'MSI Gaming GF63 Thin 11SC-1090VN', 0, 'Intel Core i5 11400H', '8GB', 'NVIDIA GeForce GTX 1650 4GB', 17490000, NULL, NULL, 'Laptop', '512GB', 15.6, '50Wh', 'Trung Quốc', 1),
('LP7', 'Laptop Asus TUF Gaming FX506LHB-HN188W', 0, 'Intel Core i5 10300H', '8 GB', 'NVIDIA GeForce GTX 1650', 17490000, NULL, NULL, 'Laptop', '512 GB', 15.6, '3 Cell', 'Trung Quốc', 1),
('LP8', 'Laptop MSI Gaming GF63 Thin 11SC-1090VN', 0, 'Intel Core i5 11400H', '8 GB', 'NVIDIA GeForce GTX 1650 4GB', 18390000, NULL, NULL, 'Laptop', '512 GB', 15.6, '3 Cell', 'Trung Quốc', 1),
('LP9', 'Laptop Asus TUF Gaming FA506IHRB-HN019W', 0, 'AMD Ryzen 5 4600H', '8 GB', 'NVIDIA GeForce GTX 1650', 16490000, NULL, NULL, 'Laptop', '512 GB', 12, '3 cell', 'Trung Quốc', 1),
('PC06', 'PC E-Power Office 08', 0, 'Intel Core i5 11400', '16 GB', 'Intel UHD Graphics 730', 9690000, 'Intel H510', 9690000, 'PC - Lắp ráp', '240 GB', NULL, NULL, 'Việt Nam', 1),
('PC1', 'PC E-Power Office 04', 0, 'Intel Core i3 10105', '8GB', 'Intel HD Graphics 630', 7090000, 'Intel H510', 5000, 'PC - Lắp ráp', '240GB', 0, '0.0', 'Việt Nam', 1),
('PC2', 'PC E-Power Office 05', 0, 'Intel Core i5 10400', '8 GB', 'Intel UHD Graphics 630', 8290000, 'Intel H510', 300, 'PC - Lắp ráp', '8 GB', NULL, NULL, 'Việt Nam', 1),
('PC3', 'PC E-Power Office 07', 0, 'Intel Core i5 11400', '8 GB', 'Intel UHD Graphics 730', 8990000, 'Intel H510', 8990000, 'PC - Lắp ráp', '240 GB', NULL, NULL, 'Việt Nam', 1),
('PC30', 'ASUS Vivobook', 0, ' Ryzen 7 5800H ', '16GB', 'GTX 3060', 25000000, NULL, NULL, 'Laptop', '512GB', 24, '3000', 'Việt Nam', 1),
('PC4', 'PC Gaming E-Power G1650', 0, 'Intel Core i3 10100F', '8 GB', 'Intel UHD Graphics 730', 11990000, 'Intel H510', 300, 'PC - Lắp ráp', '240 GB', NULL, NULL, 'Việt Nam', 1),
('PC5', 'PC E-Power Office 06', 0, 'Intel Core i5 10400', '16 GB', 'Intel HD Graphics 630', 9190000, 'Intel H510', 200, 'PC - Lắp ráp', '240 GB', NULL, NULL, 'Việt Nam', 1),
('PC7', 'PC Acer Aspire AS-XC780 DT.B8ASV.006', 0, ' Intel Core i5-7400', '4GB', ' Intel HD Graphics 630 / GeForce GT 720 2GB', 11200000, 'Intel H510', 300, 'PC - Lắp ráp', '1TB', NULL, NULL, 'Việt Nam', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nhacungcap`
--

CREATE TABLE `nhacungcap` (
  `maNhaCungCap` varchar(50) NOT NULL,
  `tenNhaCungCap` varchar(50) DEFAULT NULL,
  `Sdt` varchar(50) DEFAULT NULL,
  `diaChi` varchar(150) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `nhacungcap`
--

INSERT INTO `nhacungcap` (`maNhaCungCap`, `tenNhaCungCap`, `Sdt`, `diaChi`) VALUES
('ANPHAT', 'Công Ty TNHH Điều Khiển Tự Động An Phát', '02835109735', '86/21 Phan Tây Hồ, P. 7, Q. Phú Nhuận TP. Hồ Chí Minh'),
('CODO', 'Công Ty TNHH Thương Mại Dịch Vụ Hoàng Cố Đô', '02838115345', '622/16/5 Cộng Hòa, Phường 13, Quận Tân Bình, TP HCM		'),
('FPT', 'Công Ty Cổ Phần Bán Lẻ Kỹ Thuật Số FPT', '02873023456', '261 - 263 Khánh Hội, P2, Q4, TP. Hồ Chí Minh'),
('HACOM', 'Công ty Cổ phần đầu tư công nghệ HACOM', '1900 1903', 'Số 129 - 131, phố Lê Thanh Nghị, Phường Đồng Tâm, Quận Hai Bà Trưng, Hà Nội'),
('HOANGPHAT', 'Công Ty TNHH Thương Mại Hoàng Phát Hải Phòng', '02253250888', 'Số 4, Lô 2A Lê Hồng Phong, Ngô Quyền, Tp. Hải Phòng'),
('PHONGVU', 'Công ty cổ phần dịch vụ - thương mại Phong Vũ', '0967567567', 'Tầng 5, Số 117-119-121 Nguyễn Du, Phường Bến Thành, Quận 1, Thành Phố Hồ Chí Minh'),
('TGDĐ', 'Công ty cổ phần Thế Giới Di Động', '028 38125960', '128 Trần Quang Khải, P. Tân Định, Q.1, TP.Hồ Chí Minh'),
('VIETSTARS', 'Công ty CP Công nghệ Thương mại Dịch vụ Vietstars', '090 469 0212', ' Số 109 Lê Thanh Nghị  TP Hải dương');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `phieunhap`
--

CREATE TABLE `phieunhap` (
  `maPhieu` varchar(50) NOT NULL,
  `thoiGianTao` timestamp NULL DEFAULT NULL,
  `nguoiTao` varchar(50) DEFAULT NULL,
  `maNhaCungCap` varchar(50) DEFAULT NULL,
  `tongTien` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `phieuxuat`
--

CREATE TABLE `phieuxuat` (
  `maPhieu` varchar(50) NOT NULL,
  `thoiGianTao` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `nguoiTao` varchar(50) NOT NULL,
  `tongTien` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `account`
--
ALTER TABLE `account`
  ADD PRIMARY KEY (`userName`) USING BTREE;

--
-- Chỉ mục cho bảng `chitietphieunhap`
--
ALTER TABLE `chitietphieunhap`
  ADD PRIMARY KEY (`maPhieu`,`maMay`),
  ADD KEY `FK_ChiTietPhieuNhap_MayTinh` (`maMay`);

--
-- Chỉ mục cho bảng `chitietphieuxuat`
--
ALTER TABLE `chitietphieuxuat`
  ADD PRIMARY KEY (`maPhieu`,`maMay`),
  ADD KEY `FK_ChiTietPhieuXuat_MayTinh` (`maMay`);

--
-- Chỉ mục cho bảng `maytinh`
--
ALTER TABLE `maytinh`
  ADD PRIMARY KEY (`maMay`);

--
-- Chỉ mục cho bảng `nhacungcap`
--
ALTER TABLE `nhacungcap`
  ADD PRIMARY KEY (`maNhaCungCap`);

--
-- Chỉ mục cho bảng `phieunhap`
--
ALTER TABLE `phieunhap`
  ADD PRIMARY KEY (`maPhieu`),
  ADD KEY `FK_PhieuNhap_NhaCungCap` (`maNhaCungCap`),
  ADD KEY `FK_PhieuNhap_Account` (`nguoiTao`);

--
-- Chỉ mục cho bảng `phieuxuat`
--
ALTER TABLE `phieuxuat`
  ADD PRIMARY KEY (`maPhieu`),
  ADD KEY `FK_PhieuXuat_Account` (`nguoiTao`);

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `chitietphieunhap`
--
ALTER TABLE `chitietphieunhap`
  ADD CONSTRAINT `FK_ChiTietPhieuNhap_MayTinh` FOREIGN KEY (`maMay`) REFERENCES `maytinh` (`maMay`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `FK_ChiTietPhieuNhap_PhieuNhap` FOREIGN KEY (`maPhieu`) REFERENCES `phieunhap` (`maPhieu`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Các ràng buộc cho bảng `chitietphieuxuat`
--
ALTER TABLE `chitietphieuxuat`
  ADD CONSTRAINT `FK_ChiTietPhieuXuat_MayTinh` FOREIGN KEY (`maMay`) REFERENCES `maytinh` (`maMay`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `FK_ChiTietPhieuXuat_PhieuXuat` FOREIGN KEY (`maPhieu`) REFERENCES `phieuxuat` (`maPhieu`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Các ràng buộc cho bảng `phieunhap`
--
ALTER TABLE `phieunhap`
  ADD CONSTRAINT `FK_PhieuNhap_Account` FOREIGN KEY (`nguoiTao`) REFERENCES `account` (`userName`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `FK_PhieuNhap_NhaCungCap` FOREIGN KEY (`maNhaCungCap`) REFERENCES `nhacungcap` (`maNhaCungCap`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Các ràng buộc cho bảng `phieuxuat`
--
ALTER TABLE `phieuxuat`
  ADD CONSTRAINT `FK_PhieuXuat_Account` FOREIGN KEY (`nguoiTao`) REFERENCES `account` (`userName`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
