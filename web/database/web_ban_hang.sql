-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 28, 2022 at 03:46 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.0.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `web_ban_hang`
--

-- --------------------------------------------------------

--
-- Table structure for table `baiviet`
--

CREATE TABLE `baiviet` (
  `id` int(11) NOT NULL,
  `nguoi_tao` int(11) DEFAULT NULL,
  `danhmuc_id` int(11) DEFAULT NULL,
  `hinh_anh` varchar(300) CHARACTER SET utf8 DEFAULT NULL,
  `tieu_de` varchar(200) CHARACTER SET utf8 DEFAULT NULL,
  `noi_dung` text CHARACTER SET utf8 DEFAULT NULL,
  `thu_tu` int(11) DEFAULT NULL,
  `ngay_tao` datetime DEFAULT NULL,
  `trang_thai` varchar(30) CHARACTER SET utf8 DEFAULT NULL,
  `ngay_cap_nhat` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `baiviet`
--

INSERT INTO `baiviet` (`id`, `nguoi_tao`, `danhmuc_id`, `hinh_anh`, `tieu_de`, `noi_dung`, `thu_tu`, `ngay_tao`, `trang_thai`, `ngay_cap_nhat`) VALUES
(1, 1, 3, 'public/uploads/sanpham/Galaxy-S22-Ultra-Burgundy-600x600.jpg', 'Điện thoại thông minh', 'Điện thoại thông minh', 1, '2022-06-12 00:00:00', 'công bố', NULL),
(2, 1, 1, 'public/uploads/sanpham/Galaxy-S22-Ultra-Burgundy-600x600.jpg', '', '', NULL, '2022-06-13 08:31:05', 'công bố', NULL),
(3, 1, 3, 'public/uploads/sanpham/Galaxy-S22-Ultra-Burgundy-600x600.jpg', 'Tiêu đề bài viết', '<p>Tiêu đề bài viết</p>', NULL, '2022-06-13 08:31:32', 'công bố', NULL),
(4, 1, 1, 'public/uploads/sanpham/Galaxy-S22-Ultra-Burgundy-600x600.jpg', 'Trải nghiệm với Galaxy S22: Chiếc điện thoại tốt nhưng đang bị lãng quên', '<p>Trải nghiệm với Galaxy S22: Chiếc điện thoại tốt nhưng đang bị lãng quên<img src=\"http://lara-ecommerce.local/public/uploads/screenshot from 20220608 155220_7fbd9516e3bf22f96197358a04457f5c.jpg\"></p>', NULL, '2022-06-13 09:13:36', 'công bố', NULL),
(5, 1, 1, 'public/uploads/6018396_trainghiem_galaxys22_tinhte7_e39c1c71f773a269e411c8bd1f2cf38b.jpg', 'Trải nghiệm với Galaxy S22: Chiếc điện thoại tốt nhưng đang bị lãng quên', '<p>Mình rất yêu thích điện thoại nhỏ gọn và thời buổi này để tìm ra một chiếc điện thoại <a href=\"https://tinhte.vn/tag/android\">Android</a> nhỏ gọn mà mạnh mẽ thực sự rất khó. Khi <a href=\"https://tinhte.vn/tag/samsung\">Samsung</a> giới thiệu bộ ba điện thoại và trong số đó có <a href=\"https://tinhte.vn/tag/galaxy-s22\">Galaxy S22</a>, 6.1\" vừa vặn và mình đã yêu thích ngay, dẫu biết rằng nó sẽ là chiếc điện thoại kém hấp dẫn nhất với người dùng và sẽ bị lãng quên ngay khi mở bán.&nbsp;</p><p><img src=\"https://photo2.tinhte.vn/data/attachment-files/2022/06/6018395_cover_trainghiem_galaxyS22_tinhte16.jpg\" alt=\"Trải nghiệm với Galaxy S22: Chiếc điện thoại tốt nhưng đang bị lãng quên\"><br>Trong khoảng thời gian vừa qua được <a href=\"https://tinhte.vn/tag/trai-nghiem\">trải nghiệm</a> Galaxy S22, chiếc điện thoại này đem lại cho mình nhiều cảm xúc, không chỉ về thiết kế, màn hình hay cấu hình mà là cảm giác cầm nắm, cảm hứng khi sử dụng và đặc biệt là camera quá tốt cho một chiếc điện thoại nhỏ gọn.</p><h2><strong>Thiết kế cân xứng như được sinh ra cho Galaxy S22</strong></h2><p><br><img src=\"https://photo2.tinhte.vn/data/attachment-files/2022/06/6018396_trainghiem_galaxyS22_tinhte7.jpg\" alt=\"trainghiem_galaxyS22_tinhte7.jpg\"><br><br>Xét về thiết kế của Galaxy S22 trong thế giới Android hiện tại có thể nói là khác biệt, nhỏ gọn và gần như chỉ còn Samsung là cho ra mắt điện thoại nhỏ gọn mà thôi. Và kiểu thiết kế đối xứng và đều đặn này lại vô cùng phù hợp với Galaxy S22, hơn cả S22+ vì S22+ có màn hình to hơn, nặng hơn và thao tác một tay chắc chắn không thể thoải mái bằng S22. &nbsp;<br><img src=\"https://photo2.tinhte.vn/data/attachment-files/2022/06/6018403_trainghiem_galaxyS22_tinhte24.jpg\" alt=\"trainghiem_galaxyS22_tinhte24.jpg\"><br><br>Thêm nữa, việc cầm nắm gọn gàng trong tay và có thể thao tác bằng một tay nên khi mình gõ bàn phím và cầm máy bằng một tay tự tin hơn hẳn. Phần viền màn hình cũng được Samsung xử lý rất tốt, không bị chạm nhầm khi gõ phím hay khi phải với lên các góc xa ở trên.</p>', NULL, '2022-06-13 09:14:53', 'công bố', '2022-06-13 05:43:23');

-- --------------------------------------------------------

--
-- Table structure for table `binhluan`
--

CREATE TABLE `binhluan` (
  `id` int(11) NOT NULL,
  `nguoi_binh_luan` int(11) DEFAULT NULL,
  `noi_dung` varchar(200) CHARACTER SET utf8 DEFAULT NULL,
  `so_luong_sao` double DEFAULT NULL,
  `trang_thai` int(11) DEFAULT NULL,
  `ngay_tao` datetime DEFAULT NULL,
  `ngay_sua` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `binhluan_sanpham`
--

CREATE TABLE `binhluan_sanpham` (
  `id` int(11) NOT NULL,
  `ma_san_pham` int(11) DEFAULT NULL,
  `ma_binh_luan` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `chitiet_donhang`
--

CREATE TABLE `chitiet_donhang` (
  `id` int(11) NOT NULL,
  `donhang_id` int(11) DEFAULT NULL,
  `sanpham_id` int(11) DEFAULT NULL,
  `so_luong` int(11) DEFAULT NULL,
  `don_gia` int(11) DEFAULT NULL,
  `thanh_tien` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `chitiet_donhang`
--

INSERT INTO `chitiet_donhang` (`id`, `donhang_id`, `sanpham_id`, `so_luong`, `don_gia`, `thanh_tien`) VALUES
(1, 1, 10, 3, 12890000, 38670000),
(2, 2, 10, 4, 12890000, 51560000),
(3, 2, 12, 1, 28990000, 28990000),
(4, 3, 10, 4, 12890000, 51560000),
(5, 3, 12, 2, 28990000, 57980000),
(6, 4, 10, 4, 12890000, 51560000),
(7, 4, 12, 2, 28990000, 57980000),
(8, 5, 6, 1, 1290000, 1290000),
(9, 5, 9, 3, 25290000, 75870000),
(10, 5, 4, 2, 11690000, 23380000),
(11, 6, 9, 1, 25290000, 25290000),
(12, 7, 44, 1, 12999000, 12999000),
(13, 8, 44, 1, 12999000, 12999000),
(14, 9, 44, 1, 12999000, 12999000),
(15, 10, 9, 11, 25290000, 278190000),
(16, 11, 9, 2, 25290000, 50580000),
(17, 12, 44, 1, 12999000, 12999000),
(18, 12, 38, 1, 6390000, 6390000),
(19, 12, 6, 1, 1290000, 1290000),
(20, 13, 47, 1, 6390000, 6390000),
(21, 17, 47, 1, 6390000, 6390000),
(22, 31, 4, 1, 11690000, 11690000),
(23, 31, 8, 1, 1290000, 1290000),
(24, 33, 3, 1, 25999000, 25999000),
(25, 34, 3, 1, 25999000, 25999000),
(26, 35, 3, 1, 25999000, 25999000),
(27, 36, 3, 1, 25999000, 25999000),
(28, 37, 3, 1, 25999000, 25999000),
(29, 38, 3, 1, 25999000, 25999000),
(30, 39, 3, 4, 25999000, 103996000),
(31, 40, 4, 2, 11690000, 23380000);

-- --------------------------------------------------------

--
-- Table structure for table `danhmuc`
--

CREATE TABLE `danhmuc` (
  `id` int(11) NOT NULL,
  `ten_danh_muc` varchar(30) CHARACTER SET utf8 DEFAULT NULL,
  `hinh_anh` varchar(200) DEFAULT NULL,
  `thu_tu` int(11) DEFAULT NULL,
  `noi_bat` int(11) DEFAULT NULL,
  `ngay_tao` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `danhmuc`
--

INSERT INTO `danhmuc` (`id`, `ten_danh_muc`, `hinh_anh`, `thu_tu`, `noi_bat`, `ngay_tao`) VALUES
(1, 'Máy tính và Laptop', 'fa-desktop', 1, 1, '2022-05-24 00:00:00'),
(2, 'Ảnh kỹ thuật số', 'fa-camera', 2, 1, '2022-05-24 00:00:00'),
(3, 'Điện thoại di động', 'fa-phone', 3, 1, '2022-05-24 00:00:00'),
(4, 'Tivi', 'fa-television', 4, 1, '2022-05-24 00:00:00'),
(5, 'Âm thanh', 'fa-volume-up', 1, 1, '2022-05-24 00:00:00'),
(6, 'Đòng hồ thông minh', 'fa-clock-o', 1, 1, '2022-05-24 00:00:00'),
(7, 'Máy tính bảng', 'fa-phone', 1, 0, '2022-05-24 00:00:00'),
(8, 'Demo', 'fa-desktop', 1, 0, '2022-05-24 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `donhang`
--

CREATE TABLE `donhang` (
  `id` int(11) NOT NULL,
  `ma_don_hang` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `nguoi_dat` int(11) DEFAULT NULL,
  `ho_ten` varchar(30) CHARACTER SET utf8 DEFAULT NULL,
  `phi_giao_hang` int(11) DEFAULT NULL,
  `dia_chi` varchar(200) CHARACTER SET utf8 DEFAULT NULL,
  `so_dien_thoai` varchar(11) DEFAULT NULL,
  `thanh_tien` int(11) DEFAULT NULL,
  `tong_tien` int(11) DEFAULT NULL,
  `phuong_thuc_thanh_toan` varchar(30) CHARACTER SET utf8 DEFAULT 'Nhận hàng',
  `ghi_chu` varchar(200) CHARACTER SET utf8 DEFAULT NULL,
  `trang_thai` int(2) DEFAULT NULL,
  `ngay_dat` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `donhang`
--

INSERT INTO `donhang` (`id`, `ma_don_hang`, `nguoi_dat`, `ho_ten`, `phi_giao_hang`, `dia_chi`, `so_dien_thoai`, `thanh_tien`, `tong_tien`, `phuong_thuc_thanh_toan`, `ghi_chu`, `trang_thai`, `ngay_dat`) VALUES
(1, 'DA189AD', 2, 'Minh ', 71500, '126 Nguyễn Thiện Thành, Phường 5, TP Trà Vinh', '039991234', 38670000, 38741500, 'Nhận hàng', 'Téts', 1, '2022-02-06 20:59:47'),
(2, 'NHAGD1', 7, 'Quốc ', 0, '', '039991235', 80550000, 80550000, 'Nhận hàng', '', 1, '2022-03-06 21:35:24'),
(3, 'AKSS812', 8, 'Minh', 49500, '126 Nguyễn Thiện Thành, Phường 5, TP Trà Vinh', '039991236', 109540000, 109540000, 'Thẻ ngân hàng', '', 2, '2022-03-07 19:54:42'),
(4, 'HAHNJS1', 9, 'Quang ', 49500, '126 Nguyễn Thiện Thành, Phường 5, TP Trà Vinh', '039991237', 109540000, 109540000, 'Thẻ ngân hàng', '', 1, '2022-04-07 19:57:47'),
(5, 'HSYLOA2', 10, 'Minh', 214500, '126 Nguyễn Thiện Thành, Phường 5, TP Trà Vinh', '039991238', 100540000, 100540000, 'Nhận hàng', '', 1, '2022-04-10 20:40:24'),
(6, 'JLSHGA1', 10, 'Minh', 71500, '126 Nguyễn Thiện Thành, Phường 5, TP Trà Vinh', '039991456', 25290000, 25290000, 'Thẻ ngân hàng', '', 0, '2022-04-10 20:41:57'),
(7, '2NDP6AN', 16, 'Kiên', 49500, 'Trường Đại Học Trà Vinh', '039999173', 12999000, 12999000, 'Nhận hàng', '', 0, '2022-05-12 16:44:54'),
(8, 'FFACQIS', 16, 'Kiên', 214500, 'Trường Đại Học Trà Vinh', '039991923', 12999000, 12999000, 'Thẻ ngân hàng', '', 0, '2022-06-12 16:58:12'),
(9, 'GYD39G7', 17, 'Lê', 71500, 'Đại Học Trà Vinh', '039991249', 12999000, 13070500, 'Thanh toán khi nhận hàng', '', 1, '2022-06-12 20:04:41'),
(10, 'RLFFFLI', 19, 'Minh ', 0, 'Lương Hòa, Châu Thành District, Trà Vinh Province, Tra Vinh, Vietnam', '039995812', 278190000, 278190000, 'Thanh toán khi nhận hàng', '', 0, '2022-06-21 19:37:01'),
(11, '3KXVBTZ', 20, 'Mai', 0, 'Tra Vinh', '039998171', 50580000, 50580000, 'Thanh toán khi nhận hàng', '', 0, '2022-06-23 13:59:29'),
(12, 'YHISAAF', 21, 'Minh ', 71500, 'Tra Vinh', '039999182', 20679000, 20750500, 'Thanh toán khi nhận hàng', '', 0, '2022-06-28 10:06:04'),
(13, 'JTXTTEJ', 22, 'Dolorum quasi optio', 128700, 'Recusandae Aut volu', '039991822', 6390000, 6518700, 'Thẻ ngân hàng', 'Est eum et qui Nam a', 0, '2022-07-05 16:31:31'),
(14, 'G8BvBrbZ', 1, 'Minh Lá»±c', 0, 'Tra Vinh', '0128238389', 100000, 100000, NULL, 'Test', 2, '2022-08-16 00:00:00'),
(15, 'ymgAVp9F', NULL, 'User 001', 0, 'Tra Vinh', '0128183812', 0, 0, NULL, 'Tra Vinh', 0, '2022-08-16 00:00:00'),
(16, 'QoiMtHAb', NULL, 'Thai Sang', 0, 'Tra Vinh', '0128238323', 0, 0, NULL, 'Ok', 0, '2022-08-27 00:00:00'),
(17, 'cGJ6hErY', NULL, 'Hoai Nam', 0, 'Tra Vinh', '0128238389', 25999000, 25999000, NULL, 'OK', 0, '2022-08-27 00:00:00'),
(18, 'Rra0rWE0', NULL, 'Quoc Huy', 0, 'Tra Vinh', '01282383811', 49379000, 49379000, 'Thanh toán khi nhận hàng', 'OK', 0, '2022-08-27 00:00:00'),
(19, 'j2unHoQB', NULL, 'Trong Nhan', 0, 'Tra Vinh', '0128183812', 2580000, 2580000, 'Thanh toán khi nhận hàng', 'asda', 0, '2022-08-27 00:00:00'),
(20, 'P7lqHCR3', NULL, 'Quoc Dam', 0, 'Tra Vinh', '01282383812', 12980000, 12980000, 'Thanh toán khi nhận hàng', 'Test', 0, '2022-08-27 00:00:00'),
(21, 'ul9B5PzQ', NULL, 'Cong Nha', 0, 'Tra Vinh', '0128183812', 11690000, 11690000, 'Thanh toán khi nhận hàng', 'OK', 0, '2022-08-27 00:00:00'),
(22, 'W2mhtzz8', NULL, 'Quoc Anh', 0, 'Tra Vinh', '01282383812', 11690000, 11690000, 'Thanh toán khi nhận hàng', 'asd', 0, '2022-08-27 00:00:00'),
(23, 'C1n0ZT7v', NULL, 'Minh Nhat', 0, 'Tra Vinh', '01282383812', 25999000, 25999000, 'Thanh toán khi nhận hàng', 'ok', 0, '2022-08-27 00:00:00'),
(24, 'iffuduTT', NULL, 'VU Luan', 0, 'Tra Vinh', '0128183815', 11690000, 11690000, 'Thanh toán khi nhận hàng', 'Teset', 0, '2022-08-27 00:00:00'),
(25, 'Ms8UROjl', NULL, 'Quoc Hung', 0, 'Tra', '0128183812', 25999000, 25999000, 'Thanh toán khi nhận hàng', 'OK', 0, '2022-08-27 00:00:00'),
(26, 'UtoGpmnO', NULL, 'Quoc Hung', 0, 'Tra', '0128183812', 25999000, 25999000, 'Thanh toán khi nhận hàng', 'OK', 0, '2022-08-27 00:00:00'),
(27, 'NRHxI03J', NULL, 'Thanh Binh', 0, 'Son La', '01282383811', 11690000, 11690000, 'Thanh toán khi nhận hàng', 'OK', 0, '2022-08-27 00:00:00'),
(28, 'uwobzU0k', NULL, 'Quoc Huy', 0, 'Thai Nguyen', '01282383892', 1290000, 1290000, 'Thanh toán khi nhận hàng', 'OK', 0, '2022-08-27 00:00:00'),
(29, 'H5VnuFRu', NULL, 'Minh Nhut', 0, 'Tra Vinh', '0128238389', 9190000, 9190000, 'Thanh toán khi nhận hàng', 'OK', 0, '2022-08-27 00:00:00'),
(30, '55rhR1xM', NULL, 'Duy Thong', 0, 'Thai Nguyen', '01282383812', 20880000, 20880000, 'Thanh toán khi nhận hàng', 'ok', 0, '2022-08-27 00:00:00'),
(31, 'nJKRPyi8', NULL, 'Di Phong', 0, 'An Giang', '0128183817', 12980000, 12980000, 'Thanh toán khi nhận hàng', 'OK', 0, '2022-08-27 00:00:00'),
(32, 'PTAE7Ezo', NULL, 'Minh Chien', 0, 'Ninh Thuan', '012823834', 20880000, 20880000, 'Thanh toán khi nhận hàng', 'OK', 0, '2022-08-27 00:00:00'),
(33, 'PdhPOLXL', NULL, 'User 003', 0, 'An Giang', '01282383892', 25999000, 25999000, 'Thanh toán khi nhận hàng', 'OK', 1, '2022-08-27 00:00:00'),
(34, 'bs8GPoQp', NULL, 'Thanh Duy', 0, 'Tra Vinh', '0128238382', 25999000, 25999000, 'Thanh toán khi nhận hàng', 'OK', 0, '2022-08-27 00:00:00'),
(35, 'ETsz01Kg', NULL, 'Yen Ngoc', 0, 'Thai Nguyen', '0128183812', 25999000, 25999000, 'Thanh toán khi nhận hàng', 'Ok', 0, '2022-08-27 00:00:00'),
(36, '7Z6YRk8c', NULL, 'Nguyen Vu', 0, 'Hoa Binh', '0128238389', 25999000, 25999000, 'Thanh toán khi nhận hàng', 'OK', 0, '2022-08-27 00:00:00'),
(37, 'A11jjN0e', NULL, 'Minh Lá»±c', 0, 'Son La', '01282383812', 25999000, 25999000, 'Thanh toán online', 'ok', 0, '2022-08-27 00:00:00'),
(38, 'as2j1E5x', NULL, 'Hoai Nam', 0, 'Hoa Binh', '0128183812', 25999000, 25999000, 'Thanh toán online', 'Test', 1, '2022-08-28 00:00:00'),
(39, 'nTDjCgva', NULL, '', 0, '', '', 103996000, 103996000, 'Thanh toán online', '', 2, '2022-08-28 00:00:00'),
(40, 'BZ39s8ct', NULL, '', 0, '', '', 23380000, 23380000, 'Thanh toán online', '', 2, '2022-08-28 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `hinhanh`
--

CREATE TABLE `hinhanh` (
  `id` int(11) NOT NULL,
  `duong_dan` varchar(400) CHARACTER SET utf8 DEFAULT NULL,
  `ngay_tao` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `hinhanh`
--

INSERT INTO `hinhanh` (`id`, `duong_dan`, `ngay_tao`) VALUES
(2, 'public/uploads/sanpham/Galaxy-S22-Ultra-Burgundy-600x600.jpg', '2022-05-25 00:00:00'),
(3, 'public/uploads/sanpham/macbook-air-m1-2020-gray-600x600.jpg', '2022-05-25 00:00:00'),
(4, 'public/uploads/sanpham/iphone-13-pro-max-gold-1-600x600.jpg', '2022-05-25 00:00:00'),
(5, 'public/uploads/sanpham/iphone-se-2020-trang-600x600-200x200.jpg', '2022-05-25 00:00:00'),
(6, 'public/uploads/sanpham/iphone-xi-xanhla-200x200.jpg', '2022-05-25 00:00:00'),
(7, 'public/uploads/sanpham/iphone-xr-128gb-600x600.jpg', '2022-05-25 00:00:00'),
(8, 'public/uploads/sanpham/oppo-reno7-z-5g-thumb-1-1-600x600.jpg', '2022-05-25 00:00:00'),
(9, 'public/uploads/sanpham/realme-c35-thumb-new-600x600.jpg', '2022-05-25 00:00:00'),
(10, 'public/uploads/sanpham/tai-nghe-bluetooth-tws-realme-buds-q-rma215-den-avatar-1-600x600.jpg', '2022-05-25 00:00:00'),
(11, 'public/uploads/sanpham/xiaomi-redmi-note-7-xanh-duong-new-600x600-200x200.jpg', '2022-05-25 00:00:00'),
(12, 'public/uploads/sanpham/936943183.jpeg', '2022-05-25 00:00:00'),
(13, 'public/uploads/sanpham/q0x7rhal2jxos.jpg', '2022-05-25 00:00:00'),
(14, 'public/uploads/sanpham/samsung-galaxy-s22-ultra-note.jpg', '2022-05-25 00:00:00'),
(15, 'public/uploads/sanpham/samsunggalaxyzfold35g256gb9_b1c508a14184b2d5eb38811be917b571.jpg', '2022-05-25 00:00:00'),
(16, 'public/uploads/sanpham/samsunggalaxyzfold35g256gb30_42dbaf2831b153c46b1b0da79a24d32d.jpg', '2022-05-25 00:00:00'),
(17, 'public/uploads/sanpham/samsunggalaxyzfold318_2b09ae22ef05a13a0d0d53e988d0eb88.jpg', '2022-05-25 00:00:00'),
(18, 'public/uploads/sanpham/samsunggalaxyzfold325_a954dbb0c7347d1e3d8f18470e8c08a8.jpg', '2022-05-25 00:00:00'),
(19, 'public/uploads/sanpham/samsunggalaxyzfold325_a954dbb0c7347d1e3d8f18470e8c08a8.jpg', '2022-05-30 00:00:00'),
(20, 'public/uploads/sanpham/samsunggalaxyzfold325_a954dbb0c7347d1e3d8f18470e8c08a8.jpg', '2022-05-30 00:00:00'),
(21, 'public/uploads/sanpham/samsunggalaxyzfold325_a954dbb0c7347d1e3d8f18470e8c08a8.jpg', '2022-05-30 00:00:00'),
(22, 'public/uploads/sanpham/samsunggalaxyzfold325_a954dbb0c7347d1e3d8f18470e8c08a8.jpg', '2022-05-30 00:00:00'),
(23, 'public/uploads/sanpham/samsunggalaxyzfold325_a954dbb0c7347d1e3d8f18470e8c08a8.jpg', '2022-06-01 00:00:00'),
(24, 'public/uploads/sanpham/samsunggalaxyzfold325_a954dbb0c7347d1e3d8f18470e8c08a8.jpg', '2022-06-01 00:00:00'),
(25, 'public/uploads/sanpham/samsunggalaxyzfold325_a954dbb0c7347d1e3d8f18470e8c08a8.jpg', '2022-06-01 00:00:00'),
(26, 'public/uploads/cap2dautypecmicro1mevaluspankerb5_acef344248a299baad52eb5abaab4a20.jpg', '2022-06-01 00:00:00'),
(27, 'public/uploads/cap2dautypecmicro1mevaluspankerb5_597a4e159d910e355d31dae80808bc42.jpg', '2022-06-01 00:00:00'),
(34, 'public/uploads/xiaomiredminote8white1200x200_ff6a80441e1d5a4d715185cf5e04d355.jpg', '2022-06-03 00:00:00'),
(35, 'public/uploads/xiaomiredminote8white1200x200_b52355704b01391fc90e5a993cb4a7f3.jpg', '2022-06-03 00:00:00'),
(36, 'public/uploads/3ffdb7dbfafd5f8330783e1df20747f6_9dcf7a2910cf54c378bc32778ab1f697.png', '2022-06-03 00:00:00'),
(37, 'public/uploads/note11s3_ff0f7636844ffb853ec40b453e12d2d3.png', '2022-06-03 00:00:00'),
(38, 'public/uploads/download_dbdfad21ae8e0dbefb0984218581a758.jpeg', '2022-06-03 00:00:00'),
(39, 'public/uploads/1631822665_img_1606164_a1be8acf84ee7e0cb55fee7a29c69566.jpg', '2022-06-03 00:00:00'),
(40, 'public/uploads/samsunggalaxyzfold325_9803ba7e1830cee39ac64726a0a5ccba.jpg', '2022-06-21 00:00:00'),
(41, 'public/uploads/screencapturelaraecommercelocaladmindonhang2022062516_48_39_fd75a876649b431cf96284650c97ad1c.png', '2022-06-28 00:00:00'),
(42, 'public/uploads/600_6pro_xtmobile (1)_e2928696de947c5f183444e7251436c0.jpg', '2022-08-01 00:00:00'),
(43, 'public/uploads/600_note_10_plus_anh_cuc_quang_1_a3142a71cf7905a195b2cb64f28ec5d0.jpg', '2022-08-01 00:00:00'),
(44, 'public/uploads/600_600x600_crop_pin_energizer_ue10043gy_10000_mah_xtmobile_e51130fb3cbc94c63cf7f58e0b6a9704.jpg', '2022-08-01 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `hinhanh_sanpham`
--

CREATE TABLE `hinhanh_sanpham` (
  `id` int(11) NOT NULL,
  `sanpham_id` int(11) DEFAULT NULL,
  `hinhanh_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `hinhanh_sanpham`
--

INSERT INTO `hinhanh_sanpham` (`id`, `sanpham_id`, `hinhanh_id`) VALUES
(1, 3, 2),
(2, 4, 6),
(3, 5, 8),
(4, 6, 9),
(5, 8, 10),
(6, 9, 3),
(7, 10, 6),
(8, 11, 4),
(9, 12, 5),
(10, 13, 7),
(11, 26, 11),
(12, 27, 11),
(13, 3, 12),
(14, 3, 13),
(15, 3, 14),
(16, 30, 15),
(17, 30, 16),
(18, 30, 17),
(19, 30, 18),
(20, 31, 19),
(21, 31, 20),
(22, 31, 21),
(23, 31, 22),
(24, 37, 23),
(25, 38, 24),
(26, 39, 25),
(27, 40, 26),
(28, 41, 27),
(29, 42, 34),
(30, 43, 35),
(31, 44, 39),
(32, 46, 40),
(33, 47, 41);

-- --------------------------------------------------------

--
-- Table structure for table `kehoach`
--

CREATE TABLE `kehoach` (
  `id` int(11) NOT NULL,
  `nguoi_thuc_hien` int(11) DEFAULT NULL,
  `noi_dung_cong_viec` varchar(255) DEFAULT NULL,
  `trang_thai` int(11) DEFAULT NULL,
  `ngay_tao` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `luotxem`
--

CREATE TABLE `luotxem` (
  `id` int(11) NOT NULL,
  `baiviet_id` int(11) DEFAULT NULL,
  `so_luong` int(11) DEFAULT NULL,
  `ngay_lap` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `luotxem`
--

INSERT INTO `luotxem` (`id`, `baiviet_id`, `so_luong`, `ngay_lap`) VALUES
(1, 1, 12, '2022-06-12 00:00:00'),
(2, 2, 63, '2022-06-12 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `nhacungcap`
--

CREATE TABLE `nhacungcap` (
  `id` int(11) NOT NULL,
  `ten_nha_cung_cap` varchar(200) CHARACTER SET utf8 DEFAULT NULL,
  `ten_lien_he` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `so_dien_thoai` varchar(20) DEFAULT NULL,
  `dia_chi` varchar(200) CHARACTER SET utf8 DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `website` varchar(100) DEFAULT NULL,
  `ngay_tao` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `nhacungcap`
--

INSERT INTO `nhacungcap` (`id`, `ten_nha_cung_cap`, `ten_lien_he`, `so_dien_thoai`, `dia_chi`, `email`, `website`, `ngay_tao`) VALUES
(1, 'Apple', 'Apple', '03999xxxx', 'Apple Inc', 'supports@apple.com', 'https://support.apple.com/', NULL),
(2, 'Samsung', 'Samsung', '03888xxxx', 'Samsung', 'supports@samsung.com', 'https://samsung.com', NULL),
(3, 'Oppo', 'Oppo', '03777xxxx', 'Oppo', 'supports@oppo.com', 'https://oppo.com', '2022-05-23 00:00:00'),
(4, 'Xiaomi', 'Xiaomi', '03666xxxx', 'Xiaomi', 'supports@xiaomi.com', 'https://mi.com', '2022-05-23 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `sanpham`
--

CREATE TABLE `sanpham` (
  `id` int(11) NOT NULL,
  `hinh_anh` varchar(200) CHARACTER SET utf8 DEFAULT NULL,
  `ma_san_pham` varchar(30) DEFAULT NULL,
  `danhmuc_id` int(11) DEFAULT NULL,
  `nhacungcap_id` int(11) DEFAULT NULL,
  `ten_san_pham` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `mo_ta_ngan` varchar(300) CHARACTER SET utf8 DEFAULT NULL,
  `mo_ta_chi_tiet` varchar(4000) CHARACTER SET utf8 DEFAULT NULL,
  `gia_cuoi_cung` double DEFAULT NULL,
  `gia_san_pham` double DEFAULT NULL,
  `so_luong` int(11) DEFAULT NULL,
  `la_san_pham_noi_bat` int(11) DEFAULT NULL,
  `la_san_pham_giam_gia` int(11) DEFAULT NULL,
  `la_san_pham_moi` int(11) DEFAULT NULL,
  `ngay_tao` datetime DEFAULT NULL,
  `nguoi_tao` int(11) DEFAULT NULL,
  `trang_thai` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sanpham`
--

INSERT INTO `sanpham` (`id`, `hinh_anh`, `ma_san_pham`, `danhmuc_id`, `nhacungcap_id`, `ten_san_pham`, `mo_ta_ngan`, `mo_ta_chi_tiet`, `gia_cuoi_cung`, `gia_san_pham`, `so_luong`, `la_san_pham_noi_bat`, `la_san_pham_giam_gia`, `la_san_pham_moi`, `ngay_tao`, `nguoi_tao`, `trang_thai`) VALUES
(3, 'public/uploads/sanpham/Galaxy-S22-Ultra-Burgundy-600x600.jpg', 'S22U220522', 3, 2, 'Điện thoại Samsung Galaxy S22 Ultra 5G 128GB ', 'Galaxy S22 Ultra 5G chiếc smartphone cao cấp nhất trong bộ 3 Galaxy S22 series mà Samsung đã cho ra mắt. Tích hợp bút S Pen hoàn hảo trong thân máy, trang bị vi xử lý mạnh mẽ cho các tác vụ sử dụng vô cùng mượt mà và nổi bật hơn với cụm camera không viền độc đáo mang đậm dấu ấn riêng.', 'Sở hữu một diện mạo đầy nổi bật\nGalaxy S22 Ultra 5G được kế thừa form thiết kế từ những dòng Note trước đây của hãng đem đến cho bạn có cảm giác vừa mới lạ vừa hoài niệm. Trọng lượng của máy khoảng 228 g cho cảm giác cầm nắm đầm tay, khi cầm máy trần thì hơi có cảm giác dễ trượt.Phần mặt lưng được làm nhám nên hạn chế tốt việc bám dấu vân tay, có thiết kế cũng khá đơn giản nhưng vẫn toát lên vẻ sang trọng và cao cấp của chiếc máy. Cụm camera sau trên Galaxy S22 Ultra 5G được thiết kế trần tạo cảm giác gọn gàng và cũng tạo nên một điểm nhấn độc đáo cho chiếc máy.', 25999000, 23999000, 0, 1, 1, 1, '2022-05-22 00:00:00', 1, 1),
(4, 'public/uploads/sanpham/iphone-xi-xanhla-200x200.jpg', 'IP11220522', 3, 1, 'Điện thoại iPhone 11 64GB', 'Apple đã chính thức trình làng bộ 3 siêu phẩm iPhone 11, trong đó phiên bản iPhone 11 64GB có mức giá rẻ nhất nhưng vẫn được nâng cấp mạnh mẽ như iPhone Xr ra mắt trước đó.', NULL, 11690000, 11490000, 12, 1, 1, 3, '2022-05-22 00:00:00', 1, 1),
(5, 'public/uploads/sanpham/oppo-reno7-z-5g-thumb-1-1-600x600.jpg', 'OPR7220522', 3, 3, 'Điện thoại OPPO Reno7 Z 5G', 'OPPO đã trình làng mẫu Reno7 Z 5G với thiết kế OPPO Glow độc quyền, camera mang hiệu ứng như máy DSLR chuyên nghiệp cùng viền sáng kép, máy có một cấu hình mạnh mẽ và đạt chứng nhận xếp hạng A về độ mượt.', 'OPPO đã trình làng mẫu Reno7 Z 5G với thiết kế OPPO Glow độc quyền, camera mang hiệu ứng như máy DSLR chuyên nghiệp cùng viền sáng kép, máy có một cấu hình mạnh mẽ và đạt chứng nhận xếp hạng A về độ mượt.', 9190000, 9090000, 14, 1, 1, NULL, '2022-05-22 00:00:00', 1, 1),
(6, 'public/uploads/sanpham/realme-c35-thumb-new-600x600.jpg', 'RC35220522', 3, 3, 'Điện thoại Realme C35 64GB ', 'Realme C35 thuộc phân khúc giá rẻ được nhà Realme cho ra mắt với thiết kế trẻ trung, dung lượng pin lớn cùng camera hỗ trợ nhiều tính năng. Đây sẽ là thiết bị liên lạc, giải trí và làm việc ổn định,… cho các nhu cầu sử dụng của bạn.', 'Realme C35 sở hữu 2 màu sắc trẻ trung: Đen tuyền và xanh huyền ảo với một thiết kế vô cùng độc đáo, khung bezel bo góc làm bằng vật liệu 2D phát sáng linh động, mang đến hiệu ứng màu ấn tượng khi thay đổi góc nhìn.', 1290000, 4290000, 46, 1, 1, NULL, '2022-05-22 00:00:00', 1, 1),
(8, 'public/uploads/sanpham/tai-nghe-bluetooth-tws-realme-buds-q-rma215-den-avatar-1-600x600.jpg', 'PK0013220522', 5, 3, 'Tai nghe Bluetooth True Wireless Realme Buds Q RMA215 Đen', 'Chất liệu polymer tổng hợp, trọng lượng 3.6 g/tai nghe. Driver bass lớn 10 mm, âm thanh sống động với Dynamic Bass Boost. Kết nối nhanh chóng qua Bluetooth 5.0 được hỗ trợ từ chip R1Q.', 'Màu đen đơn giản, thiết kế tinh xảo, lấy cảm hứng từ viên đá cuội. Tai nghe Bluetooth True Wireless Realme Buds Q RMA215 đen sở hữu đường cong G3 hoàn thiện, bề mặt được làm nhám từ công nghệ tia lửa 9 µm cho cảm giác cầm tay nghe như đang cầm 1 viên đá cuội nhỏ xinh thực sự, cực thoải mái và thích thú. Trọng lượng 3.6 g/tai nghe nhẹ hơn cả trang giấy A4 (4.3 g), chất liệu polymer tổng hợp PC - ABS bền nhẹ, kết cấu coracoid, đeo vào tai gọn gàng, không cảm giác vướng víu. Hộp sạc thiết kế bo tròn, gọn đẹp, đóng mở thuận tiện.', 1290000, 1290000, 23, 0, 1, NULL, '2022-05-22 00:00:00', 1, 1),
(9, 'public/uploads/sanpham/macbook-air-m1-2020-gray-600x600.jpg', 'APPLE0001', 1, 1, 'Apple MacBook Air M1 256GB 2020 I Chính hãng Apple Việt Nam', 'Macbook Air M1 2020 - Sang trọng, tinh tế.', 'Macbook Air M1 2020 - Sang trọng, tinh tế, hiệu năng khủng\nLà dòng sản phẩm có thiết kế mỏng nhẹ, sang trọng và tinh tế cùng với đó là giá thành phải chăng nên MacBook Air đã thu hút được đông đảo người dùng yêu thích và lựa chọn. Một trong những phiên bản mới nhất mà khách hàng không thể bỏ qua khi đến với CellphoneS đó là MacBook Air M1. Dưới đây là chi tiết về thiết kế, cấu hình của máy.\n\nThiết kế tinh tế, chất liệu nhôm bền bỉ\nMacBook Air 2020 M1 mới vẫn luôn tuân thủ triết lý thiết kế với những đường nét đơn nhưng vô cùng sang trọng. Máy có độ mỏng nhẹ chỉ 1,29kg và các cạnh tràn viền khiến thiết bị trở nên đẹp hơn và cao cấp hơn.Vỏ nhôm bên ngoài mang đến sự bền bỉ vượt trội theo thời gian. Các cổng vẫn được thiết kế tương tự như phiên bản trước đó được ra mắt hồi tháng 3 năm 2020.', 25290000, 23290000, 16, 1, 1, 0, '2022-05-25 00:00:00', 1, 1),
(10, 'public/uploads/sanpham/iphone-xi-xanhla-200x200.jpg', 'APPLE0002', 3, 1, 'Điện thoại iPhone 11 64GB', 'Apple đã chính thức trình làng bộ 3 siêu phẩm iPhone 11, trong đó phiên bản iPhone 11 64GB có mức giá rẻ nhất nhưng vẫn được nâng cấp mạnh mẽ như iPhone Xr ra mắt trước đó.', 'Apple đã chính thức trình làng bộ 3 siêu phẩm iPhone 11, trong đó phiên bản iPhone 11 64GB có mức giá rẻ nhất nhưng vẫn được nâng cấp mạnh mẽ như iPhone Xr ra mắt trước đó.\nNâng cấp mạnh mẽ về camera\nNói về nâng cấp thì camera chính là điểm có nhiều cải tiến nhất trên thế hệ iPhone mới.\n\nĐiện thoại iPhone 11 64GB | Thiết kế nhiều màu sắc\n\nNếu như trước đây iPhone Xr chỉ có một camera thì nay với iPhone 11 chúng ta sẽ có tới hai camera ở mặt sau.\n\nĐiện thoại iPhone 11 64GB | Camera sau\n\nNgoài camera chính vẫn có độ phân giải 12 MP thì chúng ta sẽ có thêm một camera góc siêu rộng và cũng với độ phân giải tương tự.', 12890000, 12890000, 15, 0, 1, 1, '2022-05-25 00:00:00', 1, 1),
(11, 'public/uploads/sanpham/iphone-13-pro-max-gold-1-600x600.jpg', 'APPLE0003', 3, 1, 'Điện thoại iPhone 13 Pro Max 128GB', 'Màn hình:\n\nOLED6.7\"Super Retina XDR\nHệ điều hành:\n\niOS 15\nCamera sau:\n\n3 camera 12 MP\nCamera trước:\n\n12 MP\nChip:\n\nApple A15 Bionic\nRAM:\n\n6 GB\nBộ nhớ trong:\n\n128 GB\nSIM:\n\n1 Nano SIM & 1 eSIMHỗ trợ 5G\nPin, Sạc:\n\n4352 mAh20 W', 'Điện thoại iPhone 13 Pro Max 128 GB - siêu phẩm được mong chờ nhất ở nửa cuối năm 2021 đến từ Apple. Máy có thiết kế không mấy đột phá khi so với người tiền nhiệm, bên trong đây vẫn là một sản phẩm có màn hình siêu đẹp, tần số quét được nâng cấp lên 120 Hz mượt mà, cảm biến camera có kích thước lớn hơn, cùng hiệu năng mạnh mẽ với sức mạnh đến từ Apple A15 Bionic, sẵn sàng cùng bạn chinh phục mọi thử thách.\nThiết kế đẳng cấp hàng đầu\niPhone mới kế thừa thiết kế đặc trưng từ iPhone 12 Pro Max khi sở hữu khung viền vuông vức, mặt lưng kính cùng màn hình tai thỏ tràn viền nằm ở phía trước.\n\nThiết kế vuông vức đặc trưng - iPhone 13 Pro Max 128GB\n\nVới iPhone 13 Pro Max phần tai thỏ đã được thu gọn lại 20% so với thế hệ trước, không chỉ giải phóng nhiều không gian hiển thị hơn mà còn giúp mặt trước chiếc điện thoại trở nên hấp dẫn hơn mà vẫn đảm bảo được hoạt động của các cảm biến.', 25690000, 25590000, 25, 1, 1, 1, '2022-05-25 00:00:00', 1, 1),
(12, 'public/uploads/sanpham/iphone-se-2020-trang-600x600-200x200.jpg', 'APPLE0004', 3, 1, 'Điện thoại iPhone SE 64GB (2020) (Hộp mới)', 'Màn hình:\n\nIPS LCD4.7\"Retina HD\nHệ điều hành:\n\niOS 15\nCamera sau:\n\n12 MP\nCamera trước:\n\n7 MP\nChip:\n\nApple A13 Bionic\nRAM:\n\n3 GB\nBộ nhớ trong:\n\n64 GB\nSIM:\n\n1 Nano SIM & 1 eSIMHỗ trợ 4G\nPin, Sạc:\n\n1821 mAh18 W', ' Điện thoại iPhone SE 2020 đã bất ngờ ra mắt với thiết kế 4.7 inch nhỏ gọn, chip A13 Bionic mạnh mẽ như trên iPhone 11 và đặc biệt sở hữu mức giá tốt chưa từng có.\nThiết kế nhỏ gọn và cao cấp\n Điện thoại trang bị cảm biến vân tay Touch ID huyền thoại đã quay trở lại trên iPhone SE 2020, cùng với đó là thiết kế gần như sao y của iPhone 8. \n\nmặt lưng Điện thoại iPhone SE (2020)\n\nĐiểm khác biệt dễ thấy nhất là logo Apple trên mặt lưng nay đã dời ra chính giữa thay vì đặt lệch ở nửa trên như trên smartphone đàn anh.\n\nBên cạnh sự sang trọng vốn có từ chất liệu kim loại và kính, chiếc điện thoại iPhone mới này cũng có khả năng chống nước tiêu chuẩn IP67 giúp hạn chế rủi ro hư hỏng do văng nước, đi mưa.\n\niPhone SE 2020 vẫn có kích thước 4.7 inch, tỉ lệ màn hình cũ 16:9 và các cạnh viền vẫn dày. Tuy nhiên kích thước chung của máy vẫn thuộc hàng nhỏ gọn, cực kì vừa vặn và dễ sử dụng bằng một tay.\n\nKích thước máy nhỏ gọn dễ cầm - iPhone SE 64GB (2020)\n\nApple trang bị cho SE 2020 màn hình có độ phân giải HD (1334 x 750-pixel) đạt chuẩn Retina, hỗ trợ đầy đủ các công nghệ True Tone, Haptic Touch, và HDR10,…', 28990000, 28790000, 6, 1, 0, 1, '2022-05-25 00:00:00', 1, 1),
(13, 'public/uploads/sanpham/iphone-xr-128gb-600x600.jpg', 'APPLE0005', 3, 1, 'Điện thoại iPhone XR 128GB', 'Màn hình:\n\nIPS LCD6.1\"Liquid Retina\nHệ điều hành:\n\niOS 15\nCamera sau:\n\n12 MP\nCamera trước:\n\n7 MP\nChip:\n\nApple A12 Bionic\nRAM:\n\n3 GB\nBộ nhớ trong:\n\n128 GB\nSIM:\n\n1 Nano SIM & 1 eSIMHỗ trợ 4G\nPin, Sạc:\n\n2942 mAh15 W', 'Được xem là phiên bản iPhone giá rẻ đầy hoàn hảo, iPhone Xr 128GB khiến người dùng có nhiều sự lựa chọn hơn về màu sắc đa dạng nhưng vẫn sở hữu cấu hình mạnh mẽ và thiết kế sang trọng.\nMàn hình tràn viền công nghệ LCD - True Tone\nThay vì sở hữu màn hình OLED truyền thống, chiếc smartphone này sở hữu màn hình LCD.\n\nBù lại với công nghệ True Tone cùng màn hình tràn viền rộng tới 6.1 inch, mọi trải nghiệm trên máy vẫn đem lại sự thích thú và hoàn hảo, như dòng cao cấp khác của Apple.\n\nMàn hình điện thoại iPhone Xr chính hãng\n\nNgoài ra, Apple cũng giới thiệu rằng, iPhone Xr được trang bị một loại công nghệ mới có tên Liquid Retina. Máy có độ phân giải 1792 x 828 Pixels cùng 1.4 triệu điểm ảnh.\n\nMượt mà mọi trải nghiệm nhờ chip Apple A12\nVới mỗi lần ra mắt, Apple lại giới thiệu một con chip mới và Apple A12 Bionic là con chip đầu tiên sản xuất với tiến trình 7nm được tích hợp trên iPhone Xr.\n\nChip A12 trên điện thoại iPhone Xr chính hãng\n\nApple A12 được tích hợp trí tuệ thông minh nhân tạo, mọi phản hồi trên máy đều nhanh chóng và gần như là ngay lập tức, kể cả khi bạn chơi game hay thao tác bình thường.\n\niOS trên điện thoại iPhone Xr chính hãng\n\nHơn nữa với AI trên Apple A12, iPhone Xr có thể ghi nhớ được thao tác hằng ngày của bạn để hoàn thiện và hỗ trợ người dùng tốt hơn.', 23890000, 22890000, 1, 1, 1, 1, '2022-05-25 00:00:00', 1, NULL),
(26, 'public/uploads/sanpham/xiaomi-redmi-note-7-xanh-duong-new-600x600-200x200.jpg', 'REDMI0001', 3, 3, 'Xiaomi Redmi Note 7', 'Xiaomi Redmi Note 7', 'Xiaomi Redmi Note 7', 4100000, 4100000, 25, 0, 0, 1, '2022-05-29 00:00:00', 1, 0),
(27, 'public/uploads/sanpham/xiaomi-redmi-note-7-xanh-duong-new-600x600-200x200.jpg', 'REDMI0001', 3, 3, 'Xiaomi Redmi Note 7', 'Xiaomi Redmi Note 7', 'Xiaomi Redmi Note 7', 4100000, 4100000, 25, 0, 0, 1, '2022-05-29 00:00:00', 1, 0),
(28, 'public/uploads/sanpham/xiaomi-redmi-note-7-xanh-duong-new-600x600-200x200.jpg', 'REDMI0001', 3, 3, 'Xiaomi Redmi Note 7', 'Xiaomi Redmi Note 7', 'Xiaomi Redmi Note 7', 4100000, 4100000, 12, 0, 0, 1, '2022-05-29 00:00:00', 1, 0),
(29, 'public/uploads/sanpham/image-removebg-preview-3.png', 'REDMI0002', 3, 3, 'Xiaomi Redmi Note 9', 'Xiaomi Redmi Note 9', 'Xiaomi Redmi Note 9', 3890000, 3890000, 5, 0, 0, 1, '2022-05-29 00:00:00', 1, 1),
(30, 'public/uploads/sanpham/samsunggalaxyzfold35g256gb9_b1c508a14184b2d5eb38811be917b571.jpg', 'SAMSUNG0001', 3, 2, 'Điện thoại Samsung Galaxy Z Fold3 5G 256GB', 'Galaxy Z Fold3 5G, chiếc điện thoại được nâng cấp toàn diện về nhiều mặt, đặc biệt đây là điện thoại màn hình gập đầu tiên trên thế giới có camera ẩn (08/2021). Sản phẩm sẽ là một “cú hit” của Samsung góp phần mang đến những trải nghiệm mới cho người dùng.', 'Galaxy Z Fold3 5G, chiếc điện thoại được nâng cấp toàn diện về nhiều mặt, đặc biệt đây là điện thoại màn hình gập đầu tiên trên thế giới có camera ẩn (08/2021). Sản phẩm sẽ là một “cú hit” của Samsung góp phần mang đến những trải nghiệm mới cho người dùng.\r\nThiết kế nâng tầm smartphone màn hình gập\r\nCó thể thấy mẫu smartphone Galaxy Z Fold3 lần này vẫn giữ nguyên ngoại hình cùng cơ chế màn hình gập mở dạng quyển sách như của tiền nhiệm, \"hô biến\" chiếc smartphone thành một chiếc máy tính bảng mini một cách dễ dàng và ngược lại.\r\n\r\nSamsung Galaxy Z Fold3 5G | Thiết kế nâng tầm smartphone màn hình gập\r\n\r\nKhung viền sử dụng hợp kim nhôm Armor Aluminum cứng cáp, bền bỉ hơn 10% so với các vật liệu trước đây Samsung từng sản xuất. Với cấu tạo chắc chắn sẽ giúp bạn yên tâm tận hưởng các hoạt động yêu thích một cách trọn vẹn nhất.\r\n\r\nSamsung Galaxy Z Fold3 5G | Khung viền cao cấp, độ bền cao\r\n\r\nBộ khớp nối bản lề được thiết kế mới giúp kết nối bộ khung của Galaxy Z Fold3 hoàn hảo hơn, tăng cao độ bền khi đóng mở liên tục và cố định cực kỳ chắc chắn cho bạn trải nghiệm sử dụng thoải mái nhất.\r\n\r\nSamsung Galaxy Z Fold3 5G | Kết cấu khung viền chắc chắn\r\n\r\nMặt lưng của Z Fold3 5G được làm nhám hơn so với mặt lưng trên Z Fold2 5G, điều này giúp hạn chế bám bẩn, mồ hôi hay dấu vân tay trong quá trình chúng ta sử dụng máy. ', 38980000, 36980000, 3, 1, 0, 1, '2022-05-29 00:00:00', 1, 1),
(31, 'public/uploads/sanpham/laptop-acer-travelmate-b3-tmb311-1.png', 'ACER0001', 3, 1, 'Laptop Acer TravelMate B3 TMB311 31 P49D N5030/4GB/256GB/Win11 (NX.VNFSV.005)', 'Acer TravelMate B3 TMB311 31 P49D (NX.VNFSV.005) là mẫu laptop được thiết kế dành cho các em học sinh thuộc phân khúc giá thấp với vẻ ngoài mang phong cách tối giản, bền bỉ cùng hiệu năng ổn định, phục vụ tốt cho nhu cầu học tập.', 'Acer TravelMate B3 TMB311 31 P49D (NX.VNFSV.005) là mẫu laptop được thiết kế dành cho các em học sinh thuộc phân khúc giá thấp với vẻ ngoài mang phong cách tối giản, bền bỉ cùng hiệu năng ổn định, phục vụ tốt cho nhu cầu học tập.\r\nThiết kế đơn giản, chắc chắn\r\nAcer TravelMate B3 được chế tác từ chất liệu nhựa cứng cáp, trọng lượng 1.4 kg và độ dày 20.99 mm, gọn gàng để các bé đặt ở bất kỳ đâu trong không gian phòng học, phòng khách,... để học trực tuyến mà không lo chiếm quá nhiều diện tích.\r\n\r\nAcer TravelMate B3 TMB311 31 P49D N5030 (NX.VNFSV.005) - Thiết kế\r\n\r\nĐặc biệt, chiếc máy tính này trang bị bàn phím có các rãnh thoát nước và dãy phím được gia công chắc chắn không thể gỡ ra được nhưng dễ thay lắp khi hư hỏng, bậc phụ huynh yên tâm khi bé lỡ làm đổ nước hay khi ngồi học một mình. ', 11000000, 12999000, 17, 1, 0, 1, '2022-05-30 00:00:00', 1, 1),
(37, 'public/uploads/sanpham/xiaomi-redmi-note-11s-trang-thumb-600x600.jpg', 'XIAOMI0001', 3, 3, 'Điện thoại Xiaomi Redmi Note 11S', 'Có một thiết kế khung viền thời thượng, một hiệu năng đầy mạnh mẽ cũng như được tích hợp nhiều tiện ích đầy hữu ích. Xiaomi Redmi Note 11S sẵn sàng đem đến cho bạn những trải nghiệm vô cùng hoàn hảo về chơi game, các tác vụ sử dụng hằng ngày hay sự ấn tượng từ vẻ đẹp bên ngoài.', 'Có một thiết kế khung viền thời thượng, một hiệu năng đầy mạnh mẽ cũng như được tích hợp nhiều tiện ích đầy hữu ích. Xiaomi Redmi Note 11S sẵn sàng đem đến cho bạn những trải nghiệm vô cùng hoàn hảo về chơi game, các tác vụ sử dụng hằng ngày hay sự ấn tượng từ vẻ đẹp bên ngoài.\r\nẤn tượng với màn hình AMOLED 6.43 inch\r\nMàn hình của Redmi Note 11S được thiết kế dạng nốt ruồi cho không gian hiển thị rộng lớn với các viền khá mỏng giúp máy trở nên đẹp và thanh thoát hơn.\r\n\r\nXiaomi Redmi Note 11S - Màn hình AMOLED 6.43 inch\r\n\r\nDù chỉ thuộc phân khúc giá tầm trung nhưng Xiaomi đã trang bị cho Note 11S tấm nền AMOLED mang lại khả năng hiển thị tốt, màu đen sâu hơn, độ tương phản cao và còn nâng cao khả năng hiển thị màu sắc sống động nhờ dải màu rộng DCI-P3. Nên có thể nói dù xem phim trên YouTube hay chơi game thì mình thật sự cảm thấy mãn nhãn với màn hình này.\r\n\r\nXiaomi Redmi Note 11S - Độ sáng cao 1000 nits\r\n\r\nSong song với đó là tần số quét cao 90 Hz nên các thao tác vuốt, lướt đều mượt mà. Độ sáng màn hình lên đến 1000 nits cùng công nghệ chống chói Sunlight Display nên khi sử dụng ngoài trời nắng thì màn hình vẫn hiển thị rất tốt.\r\n\r\nẢnh chụp đẹp và siêu rõ nét với hệ thống bốn camera AI 108 MP\r\nẢnh chụp bởi Redmi Note 11S ở điều kiện đủ sáng thu lại chi tiết tốt, màu sắc tươi tắn, độ tương phản cao. Hình ảnh sau khi chụp xong đều được xử lý lại, chụp ngược sáng cũng không bị cháy sáng nhờ tích hợp HDR và AI.\r\n\r\nĐặc biệt là hình ảnh khi chụp ở chế độ chụp đêm cũng rất tuyệt vời, cân bằng được ánh sáng và bù sáng tốt cho các vùng quá tối. ', 6390000, 6390000, 12, 0, 0, 1, '2022-06-01 00:00:00', 1, 1),
(38, 'public/uploads/sanpham/xiaomi-redmi-note-11s-trang-thumb-600x600.jpg', 'XIAOMI0001', 3, 3, 'Điện thoại Xiaomi Redmi Note 11S', 'Có một thiết kế khung viền thời thượng, một hiệu năng đầy mạnh mẽ cũng như được tích hợp nhiều tiện ích đầy hữu ích. Xiaomi Redmi Note 11S sẵn sàng đem đến cho bạn những trải nghiệm vô cùng hoàn hảo về chơi game, các tác vụ sử dụng hằng ngày hay sự ấn tượng từ vẻ đẹp bên ngoài.', 'Có một thiết kế khung viền thời thượng, một hiệu năng đầy mạnh mẽ cũng như được tích hợp nhiều tiện ích đầy hữu ích. Xiaomi Redmi Note 11S sẵn sàng đem đến cho bạn những trải nghiệm vô cùng hoàn hảo về chơi game, các tác vụ sử dụng hằng ngày hay sự ấn tượng từ vẻ đẹp bên ngoài.\r\nẤn tượng với màn hình AMOLED 6.43 inch\r\nMàn hình của Redmi Note 11S được thiết kế dạng nốt ruồi cho không gian hiển thị rộng lớn với các viền khá mỏng giúp máy trở nên đẹp và thanh thoát hơn.\r\n\r\nXiaomi Redmi Note 11S - Màn hình AMOLED 6.43 inch\r\n\r\nDù chỉ thuộc phân khúc giá tầm trung nhưng Xiaomi đã trang bị cho Note 11S tấm nền AMOLED mang lại khả năng hiển thị tốt, màu đen sâu hơn, độ tương phản cao và còn nâng cao khả năng hiển thị màu sắc sống động nhờ dải màu rộng DCI-P3. Nên có thể nói dù xem phim trên YouTube hay chơi game thì mình thật sự cảm thấy mãn nhãn với màn hình này.\r\n\r\nXiaomi Redmi Note 11S - Độ sáng cao 1000 nits\r\n\r\nSong song với đó là tần số quét cao 90 Hz nên các thao tác vuốt, lướt đều mượt mà. Độ sáng màn hình lên đến 1000 nits cùng công nghệ chống chói Sunlight Display nên khi sử dụng ngoài trời nắng thì màn hình vẫn hiển thị rất tốt.\r\n\r\nẢnh chụp đẹp và siêu rõ nét với hệ thống bốn camera AI 108 MP\r\nẢnh chụp bởi Redmi Note 11S ở điều kiện đủ sáng thu lại chi tiết tốt, màu sắc tươi tắn, độ tương phản cao. Hình ảnh sau khi chụp xong đều được xử lý lại, chụp ngược sáng cũng không bị cháy sáng nhờ tích hợp HDR và AI.\r\n\r\nĐặc biệt là hình ảnh khi chụp ở chế độ chụp đêm cũng rất tuyệt vời, cân bằng được ánh sáng và bù sáng tốt cho các vùng quá tối. ', 6390000, 6390000, 4, 0, 0, 1, '2022-06-01 00:00:00', 1, 1),
(39, 'public/uploads/sanpham/cap-2-dau-type-c-micro-1m-evalu-spanker-b-xam-2-org.jpg', 'CAPSAC0001', 3, 4, 'Cáp 2 đầu Type C Micro 1m eValu Spanker B', 'Đặc điểm nổi bật  Tích hợp cùng một lúc 2 cổng kết nối Micro USB và Type C. Giúp tiết kiệm chi phí tối đa cho người dùng. Dùng để chép dữ liệu hay sạc pin (dùng với adapter riêng). Chỉ hỗ trợ các thiết bị sử dụng cổng Type C để truyền dữ liệu qua kết nối USB 2.0.', 'Dây cáp 2 đầu Micro USB và Type C\r\nVới sự phổ biến của cổng kết nối Type C ngày càng nhiều người biết đến, thì dây cáp với 2 đầu Micro USB và Type C sẽ giúp người dùng tiết kiệm chi phí nhiều hơn, cũng tránh được tình trạng làm mất dây lẻ tẻ.\r\n\r\nCáp 2 đầu Type C Micro 1m eValu Spanker B\r\n\r\nThân dây được bọc bằng lớp vải nilon giúp dây hạn chế bị đứt gãy tốt hơn so với những loại khác.\r\n\r\nThân dây được bọc bằng lớp vải nilon giúp dây hạn chế bị đứt gãy tốt hơn so với những loại khác.\r\n\r\nĐiều chỉnh dòng điện sạc nhanh tối đa 2.4A\r\nĐiều chỉnh dòng điện sạc nhanh tối đa 2.4A - Cáp 2 đầu Type C Micro 1m eValu Spanker B\r\n\r\nBạn có thể sạc cùng 1 lúc 2 thiết bị khác nhau như điện thoại hay máy tính bảng. Có thể kết hợp cùng với adapter hay dùng laptop để sạc.\r\n\r\nCáp 2 đầu Type C Micro 1m eValu Spanker B\r\n\r\nDùng để truyền dữ liệu chỉ dành cho thiết bị có cổng Type C\r\nLưu ý: dây cáp không dùng để truyền dữ liệu cho điện thoại sử dụng cổng Micro USB.\r\n\r\nCáp 2 đầu Type C Micro 1m eValu Spanker B \r\nTư vấn mẹo hay cho bạn:', 75000, 75000, 46, 0, 0, 1, '2022-06-01 00:00:00', 1, 1),
(40, 'public/uploads/sanpham/cap-2-dau-type-c-micro-1m-evalu-spanker-b-xam-2-org.jpg', 'CAPSAC0001', 3, 4, 'Cáp 2 đầu Type C Micro 1m eValu Spanker B', 'Đặc điểm nổi bật  Tích hợp cùng một lúc 2 cổng kết nối Micro USB và Type C. Giúp tiết kiệm chi phí tối đa cho người dùng. Dùng để chép dữ liệu hay sạc pin (dùng với adapter riêng). Chỉ hỗ trợ các thiết bị sử dụng cổng Type C để truyền dữ liệu qua kết nối USB 2.0.', 'Dây cáp 2 đầu Micro USB và Type C\r\nVới sự phổ biến của cổng kết nối Type C ngày càng nhiều người biết đến, thì dây cáp với 2 đầu Micro USB và Type C sẽ giúp người dùng tiết kiệm chi phí nhiều hơn, cũng tránh được tình trạng làm mất dây lẻ tẻ.\r\n\r\nCáp 2 đầu Type C Micro 1m eValu Spanker B\r\n\r\nThân dây được bọc bằng lớp vải nilon giúp dây hạn chế bị đứt gãy tốt hơn so với những loại khác.\r\n\r\nThân dây được bọc bằng lớp vải nilon giúp dây hạn chế bị đứt gãy tốt hơn so với những loại khác.\r\n\r\nĐiều chỉnh dòng điện sạc nhanh tối đa 2.4A\r\nĐiều chỉnh dòng điện sạc nhanh tối đa 2.4A - Cáp 2 đầu Type C Micro 1m eValu Spanker B\r\n\r\nBạn có thể sạc cùng 1 lúc 2 thiết bị khác nhau như điện thoại hay máy tính bảng. Có thể kết hợp cùng với adapter hay dùng laptop để sạc.\r\n\r\nCáp 2 đầu Type C Micro 1m eValu Spanker B\r\n\r\nDùng để truyền dữ liệu chỉ dành cho thiết bị có cổng Type C\r\nLưu ý: dây cáp không dùng để truyền dữ liệu cho điện thoại sử dụng cổng Micro USB.\r\n\r\nCáp 2 đầu Type C Micro 1m eValu Spanker B \r\nTư vấn mẹo hay cho bạn:', 75000, 75000, 12, 0, 0, 1, '2022-06-01 00:00:00', 1, 1),
(41, 'public/uploads/sanpham/cap-2-dau-type-c-micro-1m-evalu-spanker-b-xam-2-org.jpg', 'CAPSAC0001', 3, 4, 'Cáp 2 đầu Type C Micro 1m eValu Spanker B', 'Đặc điểm nổi bật  Tích hợp cùng một lúc 2 cổng kết nối Micro USB và Type C. Giúp tiết kiệm chi phí tối đa cho người dùng. Dùng để chép dữ liệu hay sạc pin (dùng với adapter riêng). Chỉ hỗ trợ các thiết bị sử dụng cổng Type C để truyền dữ liệu qua kết nối USB 2.0.', 'Dây cáp 2 đầu Micro USB và Type C\r\nVới sự phổ biến của cổng kết nối Type C ngày càng nhiều người biết đến, thì dây cáp với 2 đầu Micro USB và Type C sẽ giúp người dùng tiết kiệm chi phí nhiều hơn, cũng tránh được tình trạng làm mất dây lẻ tẻ.\r\n\r\nCáp 2 đầu Type C Micro 1m eValu Spanker B\r\n\r\nThân dây được bọc bằng lớp vải nilon giúp dây hạn chế bị đứt gãy tốt hơn so với những loại khác.\r\n\r\nThân dây được bọc bằng lớp vải nilon giúp dây hạn chế bị đứt gãy tốt hơn so với những loại khác.\r\n\r\nĐiều chỉnh dòng điện sạc nhanh tối đa 2.4A\r\nĐiều chỉnh dòng điện sạc nhanh tối đa 2.4A - Cáp 2 đầu Type C Micro 1m eValu Spanker B\r\n\r\nBạn có thể sạc cùng 1 lúc 2 thiết bị khác nhau như điện thoại hay máy tính bảng. Có thể kết hợp cùng với adapter hay dùng laptop để sạc.\r\n\r\nCáp 2 đầu Type C Micro 1m eValu Spanker B\r\n\r\nDùng để truyền dữ liệu chỉ dành cho thiết bị có cổng Type C\r\nLưu ý: dây cáp không dùng để truyền dữ liệu cho điện thoại sử dụng cổng Micro USB.\r\n\r\nCáp 2 đầu Type C Micro 1m eValu Spanker B \r\nTư vấn mẹo hay cho bạn:', 75000, 75000, 12, 0, 0, 1, '2022-06-01 00:00:00', 1, 1),
(42, 'public/uploads/sanpham/xiaomi-redmi-note-8-white-1-200x200.jpg', 'REDMI0002', 3, 4, 'Xiaomi Redmi Note 8', 'Xiaomi Redmi Note 8', 'Xiaomi Redmi Note 8', 4590000, 4590000, 6, 0, 1, 1, '2022-06-03 00:00:00', 1, 1),
(43, 'public/uploads/sanpham/xiaomi-redmi-note-8-white-1-200x200.jpg', 'REDMI0002', 3, 4, 'Xiaomi Redmi Note 8', 'Xiaomi Redmi Note 8', 'Xiaomi Redmi Note 8', 4590000, 4590000, 1, 0, 1, 1, '2022-06-03 00:00:00', 1, 1),
(44, 'public/uploads/sanpham/gopro.jpg', 'GOPRO0001', 2, 4, 'GoPro - HERO7 Black HD Waterproof Action', 'GoPro - HERO7 Black HD Waterproof Action', 'GoPro - HERO7 Black HD Waterproof Action', 12999000, 12999000, 5, 0, 1, 1, '2022-06-03 00:00:00', 1, 1),
(46, 'public/uploads/sanpham/vn-galaxy-s22-ultra-s908-sm-s908edrdxxv-530768553.webp', 'SAMSUNG0003', 3, 2, 'Samsung Galaxy Note 22 Ultra', 'Samsung Galaxy Note 22 Ultra', '<p>Samsung Galaxy Note 22 Ultra</p>', 33000000, 33000000, NULL, 1, 0, 1, '2022-06-21 00:00:00', 1, 1),
(47, 'public/uploads/sanpham/redminote7.jpg', 'REDMI0002', 1, 4, 'Xiaomi Redmi Note 7', 'Xiaomi Redmi Note 7', 'Xiaomi Redmi Note 7', 6390000, 6390000, NULL, 0, 0, 1, '2022-06-28 00:00:00', 1, 1),
(48, 'public/uploads/sanpham/vn-galaxy-s22-ultra-s908-sm-s908edrdxxv-530768553.webp', 'SS0023', 2, 2, 'Samsung Galaxy S21', 'Samsung Galaxy S21', 'Samsung Galaxy S21', 230000, 100000, 121, NULL, NULL, NULL, '2022-08-06 00:00:00', 1, 1),
(49, 'public/uploads/sanpham/vn-galaxy-s22-ultra-s908-sm-s908edrdxxv-530768553.webp', 'SS0023', 2, 2, 'Samsung Galaxy S21', 'Samsung Galaxy S21', 'Samsung Galaxy S21', 230000, 100000, 121, NULL, NULL, NULL, '2022-08-06 00:00:00', 1, 1),
(50, 'public/uploads/sanpham/vn-galaxy-s22-ultra-s908-sm-s908edrdxxv-530768553.webp', 'SS0023', 2, 2, 'Samsung Galaxy S21', 'Samsung Galaxy S21', 'Samsung Galaxy S21', 230000, 100000, 121, NULL, NULL, NULL, '2022-08-06 00:00:00', 1, 1),
(51, 'public/uploads/sanpham/vn-galaxy-s22-ultra-s908-sm-s908edrdxxv-530768553.webp', 'SS0012', 3, 2, 'Galaxy Note 22 Ultra', 'Galaxy Note 22 Ultra', 'Galaxy Note 22 Ultra', 21999000, 23000000, 20, NULL, NULL, NULL, '2022-08-06 00:00:00', 1, 1),
(52, 'public/uploads/sanpham/vn-galaxy-s22-ultra-s908-sm-s908edrdxxv-530768553.webp', 'SS0012', 3, 2, 'Galaxy Note 22 Ultra', 'Galaxy Note 22 Ultra', 'Galaxy Note 22 Ultra', 21999000, 23000000, 20, NULL, NULL, NULL, '2022-08-06 00:00:00', 1, 1),
(53, 'public/uploads/sanpham/vn-galaxy-s22-ultra-s908-sm-s908edrdxxv-530768553.webp', 'SS0012', 3, 2, 'Galaxy Note 22 Ultra', 'Galaxy Note 22 Ultra', 'Galaxy Note 22 Ultra', 21999000, 23000000, 20, NULL, NULL, NULL, '2022-08-06 00:00:00', 1, 1),
(54, 'public/uploads/sanpham/note-11pro-7.png', 'XM0012', 3, 4, 'Xiami Redmi Note 11', 'Xiami Redmi Note 11', 'Xiami Redmi Note 11', 12999000, 14000000, 12, NULL, NULL, NULL, '2022-08-06 00:00:00', 1, 1),
(55, 'public/uploads/sanpham/600_google_pixel_6_xtmobile.jpg', 'GG0012', 3, 1, 'Google Pixel 6', 'Google Pixel 6', 'Google Pixel 6', 11999000, 12900000, 12, NULL, NULL, NULL, '2022-08-06 00:00:00', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `taikhoan`
--

CREATE TABLE `taikhoan` (
  `id` int(11) NOT NULL,
  `ho_ten` varchar(50) DEFAULT NULL,
  `so_dien_thoai` varchar(11) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `mat_khau` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `ngay_tao` datetime DEFAULT NULL,
  `quyen` int(11) DEFAULT NULL,
  `dia_chi` varchar(200) CHARACTER SET utf8 DEFAULT NULL,
  `ma_xa` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `taikhoan`
--

INSERT INTO `taikhoan` (`id`, `ho_ten`, `so_dien_thoai`, `email`, `mat_khau`, `ngay_tao`, `quyen`, `dia_chi`, `ma_xa`) VALUES
(1, 'admin', '03999xxxx', 'admin@luccui.com', 'f3ed11bbdb94fd9ebdefbaf646ab94d3', '2022-03-24 00:00:00', 1, NULL, NULL),
(2, '03888xxxx', '03888xxxx', 'luccui2k@gmail.com', 'f3ed11bbdb94fd9ebdefbaf646ab94d3', '2022-04-06 20:59:47', 0, NULL, NULL),
(3, '03777xxxx', '03777xxxx', 'quochuy1@gmail.com', 'f3ed11bbdb94fd9ebdefbaf646ab94d3', '2022-02-06 21:32:41', 0, NULL, NULL),
(4, '03777xxxx', '03778xxxx', 'quochuy2@gmail.com', 'f3ed11bbdb94fd9ebdefbaf646ab94d3', '2022-01-06 21:33:41', 0, NULL, NULL),
(5, '03777xxxx', '03779xxxx', 'quochuy3@gmail.com', 'f3ed11bbdb94fd9ebdefbaf646ab94d3', '2022-06-06 21:33:48', 0, NULL, NULL),
(6, '03777xxxx', '03771xxxx', '4@gmail.com', 'f3ed11bbdb94fd9ebdefbaf646ab94d3', '2022-06-06 21:34:15', 0, NULL, NULL),
(7, '03777xxxx', '03772xxxx', 'quochuy@gmail.com', 'f3ed11bbdb94fd9ebdefbaf646ab94d3', '2022-06-06 21:35:24', 0, NULL, NULL),
(8, '03666xxxx', '03666xxxx', 'minhnhut@gmail.com', 'f3ed11bbdb94fd9ebdefbaf646ab94d3', '2022-05-07 19:54:41', 0, NULL, NULL),
(9, '03555xxxx', '03555xxxx', 'quangvinh@gmail.com', 'f3ed11bbdb94fd9ebdefbaf646ab94d3', '2022-06-07 19:57:47', 0, NULL, NULL),
(10, '03881xxxx', '03881xxxx', 'luccui123@gmail.com', 'f3ed11bbdb94fd9ebdefbaf646ab94d3', '2022-06-10 20:41:57', 0, 'Tra Vinh', 580807),
(16, 'kienthanhbinh', '0387910345', 'kienthanhbinh@gmail.com', 'f3ed11bbdb94fd9ebdefbaf646ab94d3', '2022-06-12 16:58:12', 0, 'Trường Đại Học Trà Vinh', 140208),
(17, '039017394', '039017394', 'leha@gmail.com', 'f3ed11bbdb94fd9ebdefbaf646ab94d3', '2022-06-12 20:04:41', 0, 'Đại Học Trà Vinh', 580807),
(19, '03456789', '03456789', 'minhluc123@gmail.com', 'f3ed11bbdb94fd9ebdefbaf646ab94d3', '2022-06-21 19:37:01', 0, 'Lương Hòa, Châu Thành District, Trà Vinh Province, Tra Vinh, Vietnam', 580807),
(20, '0390929201', '0390929201', 'maihoang@gmail.com', 'f3ed11bbdb94fd9ebdefbaf646ab94d3', '2022-06-23 13:59:29', 0, 'Tra Vinh', 580807),
(21, '0398819023', '0398819023', 'lam@gmail.com', 'f3ed11bbdb94fd9ebdefbaf646ab94d3', '2022-06-28 10:06:04', 0, 'Tra Vinh', 580807),
(22, '0399940293', '0399940293', 'qijulazug@mailinator.com', 'f3ed11bbdb94fd9ebdefbaf646ab94d3', '2022-07-05 16:31:31', 0, 'Recusandae Aut volu', 450603),
(23, NULL, '039994231', 'zonakutum@mailinator.com', 'f3ed11bbdb94fd9ebdefbaf646ab94d3', '2022-08-13 00:00:00', 0, NULL, 0),
(24, 'Min Luc', '02391824', 'qasizucupy@mailinator.com', 'f3ed11bbdb94fd9ebdefbaf646ab94d3', '2022-08-13 00:00:00', 0, NULL, 0),
(25, 'User 001', '012948172', 'bemecuho@mailinator.com', 'f3ed11bbdb94fd9ebdefbaf646ab94d3', '2022-08-13 00:00:00', 0, NULL, 0),
(26, 'Luc 124', '0128238389', 'kyma@mailinator.com', 'f3ed11bbdb94fd9ebdefbaf646ab94d3', '2022-08-13 00:00:00', 0, NULL, 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `baiviet`
--
ALTER TABLE `baiviet`
  ADD PRIMARY KEY (`id`),
  ADD KEY `nguoi_tao` (`nguoi_tao`),
  ADD KEY `danhmuc_id` (`danhmuc_id`);

--
-- Indexes for table `binhluan`
--
ALTER TABLE `binhluan`
  ADD PRIMARY KEY (`id`),
  ADD KEY `nguoi_binh_luan` (`nguoi_binh_luan`);

--
-- Indexes for table `binhluan_sanpham`
--
ALTER TABLE `binhluan_sanpham`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ma_san_pham` (`ma_san_pham`),
  ADD KEY `ma_binh_luan` (`ma_binh_luan`);

--
-- Indexes for table `chitiet_donhang`
--
ALTER TABLE `chitiet_donhang`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `danhmuc`
--
ALTER TABLE `danhmuc`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `donhang`
--
ALTER TABLE `donhang`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hinhanh`
--
ALTER TABLE `hinhanh`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hinhanh_sanpham`
--
ALTER TABLE `hinhanh_sanpham`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sanpham_id` (`sanpham_id`),
  ADD KEY `hinhanh_id` (`hinhanh_id`);

--
-- Indexes for table `kehoach`
--
ALTER TABLE `kehoach`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `luotxem`
--
ALTER TABLE `luotxem`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `nhacungcap`
--
ALTER TABLE `nhacungcap`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sanpham`
--
ALTER TABLE `sanpham`
  ADD PRIMARY KEY (`id`),
  ADD KEY `danhmuc_id` (`danhmuc_id`),
  ADD KEY `nhacungcap_id` (`nhacungcap_id`),
  ADD KEY `nguoi_tao` (`nguoi_tao`);

--
-- Indexes for table `taikhoan`
--
ALTER TABLE `taikhoan`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `so_dien_thoai` (`so_dien_thoai`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `baiviet`
--
ALTER TABLE `baiviet`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `binhluan`
--
ALTER TABLE `binhluan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `binhluan_sanpham`
--
ALTER TABLE `binhluan_sanpham`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `chitiet_donhang`
--
ALTER TABLE `chitiet_donhang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `danhmuc`
--
ALTER TABLE `danhmuc`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `donhang`
--
ALTER TABLE `donhang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `hinhanh`
--
ALTER TABLE `hinhanh`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `hinhanh_sanpham`
--
ALTER TABLE `hinhanh_sanpham`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `kehoach`
--
ALTER TABLE `kehoach`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `luotxem`
--
ALTER TABLE `luotxem`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `nhacungcap`
--
ALTER TABLE `nhacungcap`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `sanpham`
--
ALTER TABLE `sanpham`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- AUTO_INCREMENT for table `taikhoan`
--
ALTER TABLE `taikhoan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `baiviet`
--
ALTER TABLE `baiviet`
  ADD CONSTRAINT `baiviet_ibfk_1` FOREIGN KEY (`nguoi_tao`) REFERENCES `taikhoan` (`id`),
  ADD CONSTRAINT `baiviet_ibfk_2` FOREIGN KEY (`danhmuc_id`) REFERENCES `danhmuc` (`id`);

--
-- Constraints for table `binhluan`
--
ALTER TABLE `binhluan`
  ADD CONSTRAINT `binhluan_ibfk_1` FOREIGN KEY (`nguoi_binh_luan`) REFERENCES `taikhoan` (`id`);

--
-- Constraints for table `binhluan_sanpham`
--
ALTER TABLE `binhluan_sanpham`
  ADD CONSTRAINT `binhluan_sanpham_ibfk_1` FOREIGN KEY (`ma_san_pham`) REFERENCES `taikhoan` (`id`),
  ADD CONSTRAINT `binhluan_sanpham_ibfk_2` FOREIGN KEY (`ma_binh_luan`) REFERENCES `binhluan` (`id`);

--
-- Constraints for table `hinhanh_sanpham`
--
ALTER TABLE `hinhanh_sanpham`
  ADD CONSTRAINT `hinhanh_sanpham_ibfk_1` FOREIGN KEY (`sanpham_id`) REFERENCES `sanpham` (`id`),
  ADD CONSTRAINT `hinhanh_sanpham_ibfk_2` FOREIGN KEY (`hinhanh_id`) REFERENCES `hinhanh` (`id`);

--
-- Constraints for table `sanpham`
--
ALTER TABLE `sanpham`
  ADD CONSTRAINT `sanpham_ibfk_1` FOREIGN KEY (`danhmuc_id`) REFERENCES `danhmuc` (`id`),
  ADD CONSTRAINT `sanpham_ibfk_2` FOREIGN KEY (`nhacungcap_id`) REFERENCES `nhacungcap` (`id`),
  ADD CONSTRAINT `sanpham_ibfk_3` FOREIGN KEY (`nguoi_tao`) REFERENCES `taikhoan` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
