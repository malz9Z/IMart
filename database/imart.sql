-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th6 19, 2023 lúc 08:27 AM
-- Phiên bản máy phục vụ: 10.4.27-MariaDB
-- Phiên bản PHP: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `imart`
--
CREATE DATABASE IF NOT EXISTS `imart` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `imart`;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_brand`
--

CREATE TABLE `tbl_brand` (
  `brand_id` int(20) NOT NULL,
  `brand_name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_brand`
--

INSERT INTO `tbl_brand` (`brand_id`, `brand_name`) VALUES
(1, 'Samsung'),
(2, 'Iphone'),
(3, 'Oppo'),
(4, 'Xiaomi'),
(5, 'Lenovo'),
(6, 'Sony'),
(7, 'HTC'),
(8, 'Acer'),
(9, 'Apple'),
(10, 'MSI');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_cart`
--

CREATE TABLE `tbl_cart` (
  `user_id` int(11) NOT NULL,
  `pro_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_cart`
--

INSERT INTO `tbl_cart` (`user_id`, `pro_id`, `quantity`) VALUES
(25, 40, 1),
(25, 53, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_category`
--

CREATE TABLE `tbl_category` (
  `cat_id` int(30) NOT NULL,
  `cat_name` varchar(100) NOT NULL,
  `status_cat` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_category`
--

INSERT INTO `tbl_category` (`cat_id`, `cat_name`, `status_cat`) VALUES
(0, 'Laptop', 0),
(1, 'Điện thoại', 0),
(2, 'Máy tính bảng', 0),
(3, 'Macbook', 0),
(4, 'Tai nghe', 0),
(6, 'Chuột', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_order`
--

CREATE TABLE `tbl_order` (
  `order_id` int(11) NOT NULL,
  `total_price` int(50) NOT NULL,
  `date` date NOT NULL,
  `transport_fee` int(11) NOT NULL,
  `status` varchar(50) NOT NULL,
  `user_id` int(11) NOT NULL,
  `email` varchar(100) NOT NULL,
  `phone_num` varchar(12) NOT NULL,
  `address` varchar(100) NOT NULL,
  `note` text NOT NULL,
  `httt` varchar(200) NOT NULL,
  `htvc` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_order`
--

INSERT INTO `tbl_order` (`order_id`, `total_price`, `date`, `transport_fee`, `status`, `user_id`, `email`, `phone_num`, `address`, `note`, `httt`, `htvc`) VALUES
(129, 133250000, '2023-05-20', 0, 'Giao hàng thành công', 25, 'pvbkot1@gmail.com', '0383425324', 'Số 16, Phố Nguyên Xá', '', 'Thanh toán tại cửa hàng', 'Giao hàng nhanh'),
(130, 156000000, '2023-05-20', 0, 'Giao hàng thành công', 25, 'pvbkot1@gmail.com', '0383425324', 'Số 16, Phố Nguyên Xá', '', 'Thanh toán tại nhà', 'Giao hàng nhanh'),
(131, 197530000, '2023-06-07', 0, 'Giao hàng thành công', 25, 'pvbkot1@gmail.com', '0383425324', 'Số 16, Phố Nguyên Xá', '', 'Thanh toán tại cửa hàng', 'Giao hàng tiết kiệm'),
(132, 160740000, '2023-06-07', 0, 'Đang giao hàng', 25, 'pvbkot1@gmail.com', '0383425324', 'Số 16, Phố Nguyên Xá', '', 'Thanh toán tại cửa hàng', 'Giao hàng tiết kiệm'),
(133, 83920000, '2023-06-07', 0, 'Phê duyệt', 26, 'manhk3123@gmail.com', '0981123456', 'Ba Vì', '', 'Thanh toán tại cửa hàng', 'Giao hàng tiết kiệm'),
(134, 17465000, '2023-06-07', 0, 'Chờ xử lý', 26, 'manhk3123@gmail.com', '0981123456', 'Ba Vì', '', 'Thanh toán tại cửa hàng', 'Giao hàng tiết kiệm'),
(135, 56500000, '2023-06-07', 0, 'Chờ xử lý', 25, 'pvbkot1@gmail.com', '0383425324', 'Số 16, Phố Nguyên Xá', '', 'Thanh toán tại cửa hàng', 'Giao hàng tiết kiệm'),
(136, 171160000, '2023-06-07', 0, 'Chờ xử lý', 25, 'pvbkot1@gmail.com', '0383425324', 'Số 16, Phố Nguyên Xá', '', 'Thanh toán tại cửa hàng', 'Giao hàng tiết kiệm'),
(137, 106600000, '2023-06-07', 0, 'Giao hàng thành công', 26, 'manhk3123@gmail.com', '0981123456', 'Ba Vì', '', 'Thanh toán tại nhà', 'Giao hàng nhanh'),
(138, 39960000, '2023-06-07', 0, 'Chờ xử lý', 26, 'manhk3123@gmail.com', '0981123456', 'Ba Vì', '', 'Thanh toán tại cửa hàng', 'Giao hàng nhanh'),
(139, 17990000, '2023-06-07', 0, 'Đang giao hàng', 26, 'manhk3123@gmail.com', '0981123456', 'Ba Vì', '', 'Thanh toán tại nhà', 'Giao hàng nhanh'),
(140, 79950000, '2023-06-09', 0, 'Chờ xử lý', 25, 'pvbkot1@gmail.com', '0383425324', 'Số 16, Phố Nguyên Xá', '', 'Thanh toán tại cửa hàng', 'Giao hàng tiết kiệm'),
(141, 26650000, '2023-06-09', 0, 'Chờ xử lý', 27, 'nam453d@gmail.com', '0984225778', 'Nguyễn Xá', '', 'Thanh toán tại cửa hàng', 'Giao hàng tiết kiệm'),
(142, 66000000, '2023-06-09', 0, 'Chờ xử lý', 27, 'nam453d@gmail.com', '0984225778', 'Nguyễn Xá', '', 'Thanh toán tại cửa hàng', 'Giao hàng tiết kiệm'),
(143, 64080000, '2023-06-09', 0, 'Chờ xử lý', 28, 'nnhphuoc@gamil.com', '0865552114', 'Tây Tựu', '', 'Thanh toán tại nhà', 'Giao hàng tiết kiệm'),
(144, 107160000, '2023-06-09', 0, 'Chờ xử lý', 28, 'nnhphuoc@gamil.com', '0865552114', 'Tây Tựu', '', 'Thanh toán tại cửa hàng', 'Giao hàng tiết kiệm'),
(145, 133950000, '2023-06-09', 0, 'Chờ xử lý', 29, 'namlam123@gmail.com', '0963254114', 'hồ tùng mậu', '', 'Thanh toán tại cửa hàng', 'Giao hàng tiết kiệm');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_orderdetail`
--

CREATE TABLE `tbl_orderdetail` (
  `order_id` int(11) NOT NULL,
  `pro_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_orderdetail`
--

INSERT INTO `tbl_orderdetail` (`order_id`, `pro_id`, `quantity`) VALUES
(129, 40, 5),
(130, 41, 10),
(131, 40, 1),
(131, 70, 8),
(132, 48, 6),
(133, 56, 8),
(134, 58, 7),
(135, 44, 10),
(136, 78, 4),
(137, 40, 4),
(138, 67, 4),
(139, 51, 1),
(140, 40, 3),
(141, 40, 1),
(142, 39, 3),
(143, 70, 3),
(144, 48, 4),
(145, 48, 5);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_page`
--

CREATE TABLE `tbl_page` (
  `page_id` int(11) NOT NULL,
  `page_name` varchar(100) NOT NULL,
  `page_slug` text NOT NULL,
  `page_desc` text NOT NULL,
  `page_image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_page`
--

INSERT INTO `tbl_page` (`page_id`, `page_name`, `page_slug`, `page_desc`, `page_image`) VALUES
(3, 'Asus Vivobook 14/15 laptop hàng đầu dành cho giới trẻ trang bị CPU INTEL mới nhất thế hệ thứ 12', 'asus-vivobook-14-15-laptop-hang-dau-danh-cho-gioi-tre-trang-bi-cpu-intel-moi-nhat-the-he-thu-12.html', '<h1><span style=\"font-size:18px;\"><span style=\"font-family:Times New Roman,Times,serif;\">Asus Vivobook 14/15 laptop h&agrave;ng đầu d&agrave;nh cho giới trẻ trang bị CPU INTEL mới nhất thế hệ thứ 12</span></span></h1>\r\n\r\n<p><span style=\"font-size:18px;\"><span style=\"font-family:Times New Roman,Times,serif;\">31-05-2023, 4:31 pm</span></span></p>\r\n\r\n<p><span style=\"font-size:18px;\"><span style=\"font-family:Times New Roman,Times,serif;\">ASUS&nbsp;Việt Nam giới thiệu d&ograve;ng&nbsp;m&aacute;y t&iacute;nh&nbsp;<strong>Vivobook 14/15</strong>&nbsp;mới được trang bị bộ vi xử l&yacute; Intel Core P-series thế hệ thứ 12, sử dụng m&agrave;n h&igrave;nh g&oacute;c nh&igrave;n rộng, độ ph&acirc;n giải Full HD với nhiều t&iacute;nh năng n&acirc;ng cao, thiết kế trẻ trung v&agrave; đột ph&aacute;.</span></span></p>\r\n\r\n<p><span style=\"font-size:18px;\"><span style=\"font-family:Times New Roman,Times,serif;\">H&atilde;y c&ugrave;ng&nbsp;<strong>Laptopworld</strong>&nbsp;t&igrave;m hiểu d&ograve;ng laptop<strong>&nbsp;Asus&nbsp;Vivobook 14/15</strong>&nbsp;c&oacute; g&igrave; nổi bật, mới nhất nh&eacute;.</span></span></p>\r\n\r\n<p><span style=\"font-size:18px;\"><span style=\"font-family:Times New Roman,Times,serif;\"><strong>1. Hiệu năng mạnh mẽ</strong></span></span></p>\r\n\r\n<p><span style=\"font-size:18px;\"><span style=\"font-family:Times New Roman,Times,serif;\"><strong>Asus Vivobook 14/15</strong>&nbsp;l&agrave; người bạn đồng h&agrave;nh h&agrave;ng ng&agrave;y của bạn lu&ocirc;n sẵn s&agrave;ng thực hiện c&aacute;c c&ocirc;ng việc nhẹ nh&agrave;ng trong chương tr&igrave;nh l&agrave;m việc của bạn, cho d&ugrave; đ&oacute; l&agrave; văn ph&ograve;ng hay c&aacute; nh&acirc;n, thuyết tr&igrave;nh hay giải tr&iacute;.&nbsp;Đối với khối lượng c&ocirc;ng việc khắt khe, bộ xử l&yacute; l&ecirc;n đến Intel&nbsp;<sup>&reg;</sup>&nbsp;Core&nbsp;<sup>&trade;</sup>&nbsp;i7 thế hệ thứ 12 mới nhất nhanh hơn đ&aacute;ng kể so với thế hệ trước.&nbsp;V&agrave; với 16 GB bộ nhớ nhanh v&agrave; 512 GB dung lượng lưu trữ SSD tốc độ cao, c&oacute; rất nhiều năng lượng dự trữ khi mọi việc trở n&ecirc;n kh&oacute; khăn.</span></span></p>\r\n\r\n<p><span style=\"font-size:18px;\"><span style=\"font-family:Times New Roman,Times,serif;\"><strong>2. M&agrave;n h&igrave;nh</strong></span></span></p>\r\n\r\n<p><span style=\"font-size:18px;\"><span style=\"font-family:Times New Roman,Times,serif;\">Hiển thị sống động: M&agrave;n h&igrave;nh g&oacute;c nh&igrave;n rộng tr&ecirc;n d&ograve;ng Vivobook mới c&oacute; độ ph&acirc;n giải Full HD gi&uacute;p người d&ugrave;ng dễ d&agrave;ng chia sẻ nội dung với những người xung quanh m&agrave; kh&ocirc;ng bị sai lệch m&agrave;u sắc do g&oacute;c nh&igrave;n.</span></span></p>\r\n\r\n<p><span style=\"font-size:18px;\"><span style=\"font-family:Times New Roman,Times,serif;\">H&atilde;y tận hưởng đ&ocirc;i mắt của bạn với m&agrave;n h&igrave;nh NanoEdge viền mỏng, r&otilde; n&eacute;t của Vivobook 14 (cũng c&oacute; sẵn dưới dạng m&agrave;n h&igrave;nh cảm ứng t&ugrave;y chọn).&nbsp;N&oacute; c&oacute; g&oacute;c nh&igrave;n rộng v&agrave; được chứng nhận T&Uuml;V Rheinland về mức độ &aacute;nh s&aacute;ng xanh dương thấp, giảm nguy cơ mỏi mắt trong c&aacute;c buổi xem marathon.</span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><span style=\"font-size:18px;\"><span style=\"font-family:Times New Roman,Times,serif;\"><strong>3. Bảo vệ sức khỏe</strong></span></span></p>\r\n\r\n<p><span style=\"font-size:18px;\"><span style=\"font-family:Times New Roman,Times,serif;\">Để bảo vệ sức khỏe người d&ugrave;ng v&agrave; giảm sự l&acirc;y lan của vi khuẩn c&oacute; hại, c&aacute;c bề mặt thường xuy&ecirc;n tiếp x&uacute;c tr&ecirc;n m&aacute;y t&iacute;nh x&aacute;ch tay d&ograve;ng Vivobook đều xử l&yacute; qua c&ocirc;ng nghệ ASUS Antibiotics Guard, được khoa học chứng minh l&agrave; c&oacute; thể ức chế hơn 99% sự ph&aacute;t triển của vi khuẩn trong khoảng thời gian 24 giờ.</span></span></p>\r\n\r\n<p><span style=\"font-size:18px;\"><span style=\"font-family:Times New Roman,Times,serif;\"><strong>4. Thiết kế linh hoạt&nbsp;</strong></span></span></p>\r\n\r\n<p><span style=\"font-size:18px;\"><span style=\"font-family:Times New Roman,Times,serif;\">Bản lề phẳng 180 độ gi&uacute;p việc chia sẻ v&agrave; l&agrave;m việc nh&oacute;m trở n&ecirc;n dễ d&agrave;ng.&nbsp;Đ&egrave;n nền b&agrave;n ph&iacute;m t&ugrave;y chọn&nbsp;tr&ecirc;n Vivobook 14 ho&agrave;n hảo để l&agrave;m việc trong m&ocirc;i trường thiếu s&aacute;ng.</span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><span style=\"font-size:18px;\"><span style=\"font-family:Times New Roman,Times,serif;\"><strong>5. Tản nhiệt Asus IceCool</strong></span></span></p>\r\n\r\n<p><span style=\"font-size:18px;\"><span style=\"font-family:Times New Roman,Times,serif;\">Để đảm bảo hiệu suất tối đa v&agrave; giữ cho m&aacute;y lu&ocirc;n m&aacute;t mẻ trong mọi t&igrave;nh huống, hệ thống tản nhiệt ASUS IceCool sử dụng ống dẫn nhiệt k&eacute;p được n&acirc;ng cấp 8 mm v&agrave; 6 mm, kết hợp quạt IceBlade gi&uacute;p tăng tốc truyền nhiệt hiệu quả.</span></span></p>\r\n\r\n<p><span style=\"font-size:18px;\"><span style=\"font-family:Times New Roman,Times,serif;\">Quạt IceBlade c&oacute; 87 c&aacute;nh quạt được l&agrave;m bằng polyme tinh thể lỏng, nhẹ v&agrave; mỏng hơn so với quạt th&ocirc;ng thường, cho ph&eacute;p bộ vi xử l&yacute; mạnh mẽ c&oacute; thể chạy thoải m&aacute;i ở c&ocirc;ng suất tối đa - l&ecirc;n đến tổng TDP 32 W nhưng vẫn rất mượt m&agrave;.</span></span></p>\r\n\r\n<p><span style=\"font-size:18px;\"><span style=\"font-family:Times New Roman,Times,serif;\"><strong>6. An to&agrave;n v&agrave; bảo mật</strong></span></span></p>\r\n\r\n<p><span style=\"font-size:18px;\"><span style=\"font-family:Times New Roman,Times,serif;\"><strong>Asus Vivobook 14/15</strong>&nbsp;rất coi trọng quyền ri&ecirc;ng tư v&agrave; bảo mật của bạn.&nbsp;C&oacute; một tấm chắn ri&ecirc;ng tư t&iacute;ch hợp trượt qua webcam để c&oacute; được sự ri&ecirc;ng tư tức th&igrave;, bảo vệ bạn khỏi những &aacute;nh mắt t&ograve; m&ograve; v&agrave; những sự quấy rầy.</span></span></p>\r\n\r\n<p><span style=\"font-size:18px;\"><span style=\"font-family:Times New Roman,Times,serif;\">Truy cập Vivobook 14/15 của bạn chưa bao giờ dễ d&agrave;ng v&agrave; an to&agrave;n hơn thế.&nbsp;Với cảm biến v&acirc;n tay&nbsp;t&iacute;ch hợp tr&ecirc;n b&agrave;n di chuột v&agrave; Windows Hello, bạn kh&ocirc;ng cần phải nhập mật khẩu mọi l&uacute;c - tất cả những g&igrave; bạn cần chỉ l&agrave; một lần chạm.</span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><span style=\"font-size:18px;\"><span style=\"font-family:Times New Roman,Times,serif;\"><strong>7. N&acirc;ng tầm phong c&aacute;ch</strong></span></span></p>\r\n\r\n<p><span style=\"font-size:18px;\"><span style=\"font-family:Times New Roman,Times,serif;\"><strong>Asus&nbsp;Vivobook 14/15 (X1402/X1502)</strong>&nbsp;mới c&oacute; thiết kế gọn g&agrave;ng v&agrave; m&agrave;u sắc tươi mới. M&aacute;y đủ mỏng để bỏ v&agrave;o ba l&ocirc; một c&aacute;ch thoải m&aacute;i v&agrave; đủ nhẹ để kh&ocirc;ng bao giờ trở th&agrave;nh g&aacute;nh nặng.&nbsp;Vivobook 14/15&nbsp;với m&agrave;u sắc trang nh&atilde; gồm: Xanh lặng quyến rũ, Bạc Icelight nổi bật hoặc Terra Cotta ấm c&uacute;ng</span></span></p>\r\n\r\n<p><span style=\"font-size:18px;\"><span style=\"font-family:Times New Roman,Times,serif;\"><strong>8. WiFi 6</strong></span></span></p>\r\n\r\n<p><span style=\"font-size:18px;\"><span style=\"font-family:Times New Roman,Times,serif;\">Asus&nbsp;cung cấp một loạt c&aacute;c giải ph&aacute;p kết nối kh&ocirc;ng d&acirc;y to&agrave;n diện.&nbsp;Với độ ph&acirc;n giải nhanh l&ecirc;n đến WiFi 6 c&ugrave;ng với c&ocirc;ng nghệ ASUS WiFi Master, Vivobook 14 tăng cường kết nối nhanh ch&oacute;ng v&agrave; ổn định.</span></span></p>\r\n\r\n<p><span style=\"font-size:18px;\"><span style=\"font-family:Times New Roman,Times,serif;\"><strong>9. Cổng kết nối to&agrave;n diện</strong></span></span></p>\r\n\r\n<p><span style=\"font-size:18px;\"><span style=\"font-family:Times New Roman,Times,serif;\"><strong>Vivobook 14/15</strong>&nbsp;gi&uacute;p bạn kết nối đầy đủ với c&aacute;c cổng I / O to&agrave;n diện.&nbsp;C&oacute; một cổng USB-C&nbsp;<sup>&reg;</sup>&nbsp;3.2 Gen 1, hai cổng USB 3.2 Gen 1 Type-A, một cổng USB 2.0, đầu ra HDMI&nbsp;<sup>&reg;</sup>&nbsp;v&agrave; giắc cắm kết hợp &acirc;m thanh - v&igrave; vậy thật dễ d&agrave;ng kết nối tất cả c&aacute;c thiết bị ngoại vi, m&agrave;n h&igrave;nh v&agrave; m&aacute;y chiếu hiện c&oacute; của bạn.</span></span></p>\r\n\r\n<p><span style=\"font-size:18px;\"><span style=\"font-family:Times New Roman,Times,serif;\"><strong>10. &Acirc;m thanh</strong></span></span></p>\r\n\r\n<p><span style=\"font-size:18px;\"><span style=\"font-family:Times New Roman,Times,serif;\">H&atilde;y tận hưởng đ&ocirc;i tai của bạn với hệ thống &acirc;m thanh SonicMaster trong Vivobook 14/15. Với Xử l&yacute; &acirc;m thanh DTS, bạn c&oacute; thể trải nghiệm &acirc;m thanh n&acirc;ng cao qua loa mạnh mẽ để c&oacute; &acirc;m thanh kh&ocirc;ng bị biến dạng v&agrave; &acirc;m trầm s&acirc;u hơn.&nbsp;Xử l&yacute; &acirc;m thanh DTS l&agrave;m cho &acirc;m thanh loa nhỏ lớn hơn v&agrave; hay hơn, đồng thời đưa bạn v&agrave;o giữa h&agrave;nh động.&nbsp;N&oacute; cũng mang lại &acirc;m thanh đ&aacute;ng kinh ngạc cho tai nghe của bạn.</span></span></p>\r\n\r\n<p><span style=\"font-size:18px;\"><span style=\"font-family:Times New Roman,Times,serif;\"><strong>11. T&iacute;nh năng hiện đại d&agrave;nh cho giới trẻ</strong></span></span></p>\r\n\r\n<p><span style=\"font-size:18px;\"><span style=\"font-family:Times New Roman,Times,serif;\">D&ograve;ng sản phẩm mới được t&iacute;ch hợp th&ecirc;m nhiều t&iacute;nh năng bao gồm: Tấm chắn webcam vật l&yacute; nhằm đảm bảo quyền ri&ecirc;ng tư, b&agrave;n ph&iacute;m ASUS ErgoSense mang đến trải nghiệm nhập liệu thoải m&aacute;i, c&ocirc;ng nghệ mic khử ồn Asus Al th&ocirc;ng minh, cảm biến v&acirc;n tay hỗ trợ Windows Hello.&nbsp;</span></span></p>\r\n\r\n<p><span style=\"font-size:18px;\"><span style=\"font-family:Times New Roman,Times,serif;\">Với thiết kế trẻ trung, c&ocirc;ng nghệ hiện đại đi k&egrave;m hiệu năng mạnh mẽ với sức mạnh vi xử l&yacute; intel thế hệ 12 ,&nbsp;<strong>Asus VivoBook 14/15</strong>&nbsp;đồng h&agrave;nh của gen Z khi bước v&agrave;o năm học mới. Đến&nbsp;<strong>Laptopworld</strong>&nbsp;mua ngay bạn nh&eacute;!</span></span></p>\r\n', 'upload/images/3105_vivobook14.1512th-1.jpg');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_post`
--

CREATE TABLE `tbl_post` (
  `post_id` int(11) NOT NULL,
  `post_name` varchar(1000) NOT NULL,
  `post_slug` text NOT NULL,
  `post_decs` text NOT NULL,
  `post_image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_post`
--

INSERT INTO `tbl_post` (`post_id`, `post_name`, `post_slug`, `post_decs`, `post_image`) VALUES
(4, 'MSI Creator series thế hệ 12 mới đã cập bến thị trường Việt Nam', 'msi-creator-series-the-he-12-moi-da-cap-ben-thi-truong-viet-nam.html', '<p><span style=\"font-size:18px;\"><span style=\"font-family:Times New Roman,Times,serif;\">Nếu đang t&igrave;m một chiếc studio di động để l&agrave;m c&ocirc;ng việc thiết kế hay s&aacute;ng tạo ở bất cứ đ&acirc;u, d&ograve;ng laptop Creator của MSI chắc chắn sẽ l&agrave; lựa chọn ho&agrave;n hảo. Kh&ocirc;ng chỉ mang những t&iacute;nh năng chuy&ecirc;n nghiệp d&agrave;nh cho người d&ugrave;ng chuy&ecirc;n nghiệp, Creator series c&ograve;n thể hiện phong c&aacute;ch v&agrave; c&aacute; t&iacute;nh của chủ nh&acirc;n.</span></span></p>\r\n\r\n<p><span style=\"font-size:18px;\"><span style=\"font-family:Times New Roman,Times,serif;\">C&ugrave;ng&nbsp;<strong>Laptopworld</strong>&nbsp;điểm qua một v&agrave;i đặc điểm nổi bật&nbsp;</span></span></p>\r\n\r\n<p><span style=\"font-size:18px;\"><span style=\"font-family:Times New Roman,Times,serif;\"><strong>1. Hiệu năng</strong></span></span></p>\r\n\r\n<p><span style=\"font-size:18px;\"><span style=\"font-family:Times New Roman,Times,serif;\">Vi xử l&iacute; Intel Core thế hệ 12 mới nhất +&nbsp;Card đồ họa NVIDIA RTX 30 series ho&agrave;n hảo cho đồ họa</span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><span style=\"font-size:18px;\"><span style=\"font-family:Times New Roman,Times,serif;\"><strong>2. M&agrave;n h&igrave;nh</strong></span></span></p>\r\n\r\n<p><span style=\"font-size:18px;\"><span style=\"font-family:Times New Roman,Times,serif;\">M&agrave;n h&igrave;nh cảm ứng độ ph&acirc;n giải QHD+ tỉ lệ 16:10.&nbsp;M&agrave;u sắc hiển thị cực ch&iacute;nh x&aacute;c (100% DCI-P3, Delta E &lt; 2)</span></span></p>\r\n\r\n<p><span style=\"font-size:18px;\"><span style=\"font-family:Times New Roman,Times,serif;\"><strong>3. Thiết kế</strong></span></span></p>\r\n\r\n<p><span style=\"font-size:18px;\"><span style=\"font-family:Times New Roman,Times,serif;\">Dựa tr&ecirc;n triết l&yacute; thiết kế lấy con người l&agrave;m trọng t&acirc;m,&nbsp;MSI Creator series kết hợp h&igrave;nh thức tr&ograve;n trịa v&agrave; chất lỏng với c&aacute;c cạnh b&oacute;ng bẩy, kết hợp cả hai thiết kế theo chủ nghĩa hậu hiện đại v&agrave;o vẻ ngo&agrave;i của sản phẩm. Th&acirc;n m&aacute;y CNC trang nh&atilde; v&agrave; phong c&aacute;ch với m&agrave;u sắc độc đ&aacute;o.&nbsp;Trong nhiều loại &aacute;nh s&aacute;ng, m&agrave;u x&aacute;m Mặt Trăng tr&ecirc;n MSI Creator thay đổi giống như pha của mặt trăng, mang đến những chi tiết tinh tế nhưng tuyệt đẹp.</span></span></p>\r\n', 'upload/images/0206_280945196_4948695771865532_656077407214027766_n.jpg');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_product`
--

CREATE TABLE `tbl_product` (
  `pro_id` int(11) NOT NULL,
  `pro_name` varchar(200) NOT NULL,
  `original_price` int(11) NOT NULL,
  `promotional_price` int(11) NOT NULL,
  `quantity` int(11) NOT NULL DEFAULT 100,
  `short_desc` text NOT NULL,
  `detail_desc` text NOT NULL,
  `pro_image` varchar(100) NOT NULL,
  `cat_id` int(11) NOT NULL,
  `brand_id` int(20) NOT NULL,
  `status_pro` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_product`
--

INSERT INTO `tbl_product` (`pro_id`, `pro_name`, `original_price`, `promotional_price`, `quantity`, `short_desc`, `detail_desc`, `pro_image`, `cat_id`, `brand_id`, `status_pro`) VALUES
(39, 'Điện thoại Xiaomi 11pro siêu hot', 23000000, 22000000, 97, '', '', 'upload/images/Galaxy-S22-Ultra.jpg', 1, 1, 0),
(40, 'iPhone 14 Pro Max 128GB', 29990000, 26650000, 54, 'iPhone 14 Pro Max đem đến những trải nghiệm không thể tìm thấy trên mọi thế hệ iPhone trước đó với màu Tím Deep Purple sang trọng, camera 48MP lần đầu xuất hiện, chip A16 Bionic và màn hình “viên thuốc” Dynamic Island linh hoạt, nịnh mắt.', '<h3><span style=\"font-size:20px;\"><strong>iPhone 14 Pro Max một siêu phẩm trong giới smartphone được nhà Táo tung ra thị trường vào tháng 09/2022. Máy trang bị con chip Apple A16 Bionic vô cùng mạnh mẽ, đi kèm theo đó là thiết kế hình màn hình mới, hứa hẹn mang lại những trải nghiệm đầy mới mẻ cho người dùng iPhone.\r\n</strong></span></h3>\r\n\r\n<p>Thiết kế mang dáng vẻ sang trọng và đặc trưng\r\nĐến với thiết kế của iPhone 14 Pro năm nay, hãng vẫn giữ lại nét đặc trưng vốn có từ các đời trước, vẫn mang trong mình ngoại hình vuông vức với các cạnh và mặt lưng vát phẳng. Hiện tại thị hiếu của người dùng về kiểu thiết kế này vẫn đang rất cao, vậy nên theo mình thấy thì đây vẫn sẽ là chiếc điện thoại bắt trend cho trong nhiều năm tiếp theo.</p>\r\n\r\n<p><a href=\"https://cdn.tgdd.vn/Products/Images/42/251192/iphone-14-pro-max-041222-103221.jpg\" onclick=\"return false;\"><img alt=\"Bộ khung điện thoại được làm từ chất liệu thép không gỉ và hoàn thiện theo kiểu bóng nhoáng.\" data-src=\"https://cdn.tgdd.vn/Products/Images/42/251192/iphone-14-pro-max-041222-103221.jpg\" src=\"https://cdn.tgdd.vn/Products/Images/42/251192/iphone-14-pro-max-041222-103221.jpg\" title=\"Iphone 14 \" /></a></p>\r\n\r\n<p>Dòng Pro năm nay được ra mắt với nhiều tùy chọn màu sắc và trong đó nổi bật nhất có lẽ là phiên bản Deep Purple (tím), bởi vì đây là một màu mới nên mang lại độ nhận diện khá cao.</p>\r\n\r\n\r\n', 'upload/images/iphone-14-pro-max-128gb.png', 1, 9, 0),
(41, 'iPhone 12 Pro', 20000000, 15600000, 75, 'Điện thoại iPhone 12 Pro 256 GB khi được ra mắt đã có sự thay đổi lớn về thiết kế bên ngoài và chứa đựng một hiệu năng cực khủng bên trong, kèm theo đó là một loạt các công nghệ ấn tượng về camera, kết nối 5G lần đầu được xuất hiện.\r\n', '<h3><span style=\"font-size:20px;\"><strong>Giống iPhone 5 nhưng ph&oacute;ng to với m&agrave;n h&igrave;nh tr&agrave;n viền</strong></span></h3>\r\n\r\n<p>Kh&ocirc;ng nằm ngo&agrave;i dự đo&aacute;n, iPhone 12 Pro quay lại thiết kế dạng hộp với phần khung viền vu&ocirc;ng vức, mạnh mẽ đ&atilde; từng xuất hiện tr&ecirc;n iPhone 5, đồng thời kết th&uacute;c kỷ nguy&ecirc;n &ldquo;bo cong&rdquo; từ thế hệ iPhone 6.</p>\r\n\r\n<p><a href=\"https://cdn.tgdd.vn/Products/Images/42/228738/iphone-12-pro-256gb-130121-030154.jpg\" onclick=\"return false;\"><img alt=\"Thiết kế vuông vức, mạnh mẽ | iPhone 12 Pro\" data-src=\"https://cdn.tgdd.vn/Products/Images/42/228738/iphone-12-pro-256gb-130121-030154.jpg\" src=\"https://cdn.tgdd.vn/Products/Images/42/228738/iphone-12-pro-256gb-130121-030154.jpg\" title=\"Thiết kế vuông vức, mạnh mẽ | iPhone 12 Pro\" /></a></p>\r\n\r\n<p>Đ&uacute;ng như t&ecirc;n gọi Pro,&nbsp;<a href=\"https://www.thegioididong.com/apple\" target=\"_blank\" title=\"Tham khảo sản phẩm Apple chính hãng tại Thegioididong.com \">Apple</a>&nbsp;sử dụng chất liệu th&eacute;p cao cấp cho phần khung viền thay v&igrave; nh&ocirc;m như tr&ecirc;n&nbsp;<a href=\"https://www.thegioididong.com/dtdd/iphone-12\" target=\"_blank\">điện thoại&nbsp;iPhone 12</a>&nbsp;v&agrave;&nbsp;iPhone 12 Mini, mang đến độ bền vượt trội v&agrave; diện mạo b&oacute;ng bẩy sang trọng hơn.</p>\r\n\r\n<p><a href=\"https://cdn.tgdd.vn/Products/Images/42/228738/iphone-12-pro-256gb-130121-030123.jpg\" onclick=\"return false;\"><img alt=\"Khung viền sử dụng thép không gỉ cao cấp | iPhone 12 Pro\" data-src=\"https://cdn.tgdd.vn/Products/Images/42/228738/iphone-12-pro-256gb-130121-030123.jpg\" src=\"https://cdn.tgdd.vn/Products/Images/42/228738/iphone-12-pro-256gb-130121-030123.jpg\" title=\"Khung viền sử dụng thép không gỉ cao cấp | iPhone 12 Pro\" /></a></p>\r\n\r\n<h3>M&agrave;n h&igrave;nh OLED sắc n&eacute;t, bền bỉ với vật liệu gốm Ceramic cao cấp</h3>\r\n\r\n<p>M&aacute;y trang bị tấm nền Super Retina XDR OLED cho hiển thị m&agrave;u sắc v&ocirc; c&ugrave;ng chuẩn x&aacute;c với kh&ocirc;ng gian m&agrave;u P3, hỗ trợ HDR, True Tone, m&agrave;u đen s&acirc;u tiết kiệm pin hơn, độ s&aacute;ng cao 800 nits ấn tượng ở mọi g&oacute;c nh&igrave;n.</p>\r\n\r\n<p><a href=\"https://cdn.tgdd.vn/Products/Images/42/228738/iphone-12-pro-256gb-130021-030015.jpg\" onclick=\"return false;\"><img alt=\"Màn hình OLED Super Retina XDR hiển thị sắc nét | iPhone 12 Pro\" data-src=\"https://cdn.tgdd.vn/Products/Images/42/228738/iphone-12-pro-256gb-130021-030015.jpg\" src=\"https://cdn.tgdd.vn/Products/Images/42/228738/iphone-12-pro-256gb-130021-030015.jpg\" title=\"Màn hình OLED Super Retina XDR hiển thị sắc nét | iPhone 12 Pro\" /></a></p>\r\n\r\n<p>iPhone 12 Pro vẫn c&oacute; phần khuyết tai thỏ kh&aacute; lớn do chứa cụm cảm biến Face ID&nbsp;nhận diện khu&ocirc;n mặt. Tuy nhi&ecirc;n, điều n&agrave;y kh&ocirc;ng phải l&agrave; trở ngại, c&aacute;c ứng dụng cũng đ&atilde; tối ưu tốt để kh&ocirc;ng bi ảnh hưởng bởi tai thỏ.</p>\r\n\r\n<p><a href=\"https://cdn.tgdd.vn/Products/Images/42/228738/iphone-12-pro-256gb-130221-030225.jpg\" onclick=\"return false;\"><img alt=\"Màn hình trên iPhone 12 Pro có độ cứng gấp 4 lần so với màn hình đời trước  | iPhone 12 Pro\" data-src=\"https://cdn.tgdd.vn/Products/Images/42/228738/iphone-12-pro-256gb-130221-030225.jpg\" src=\"https://cdn.tgdd.vn/Products/Images/42/228738/iphone-12-pro-256gb-130221-030225.jpg\" title=\"Màn hình trên iPhone 12 Pro có độ cứng gấp 4 lần so với màn hình đời trước  | iPhone 12 Pro\" /></a></p>\r\n\r\n<p>Đặc biệt, m&agrave;n h&igrave;nh tr&ecirc;n iPhone 12 Pro c&ograve;n l&agrave; m&agrave;n h&igrave;nh cứng v&agrave; bền nhất tr&ecirc;n c&aacute;c d&ograve;ng iPhone từ trước đến nay, khi phủ một lớp gốm ceramic gi&uacute;p m&agrave;n h&igrave;nh hiển thị của bạn khỏi những vết trầy xước đ&aacute;ng kể cũng như mang lại độ bền cao, tốt hơn gấp 4 lần th&ocirc;ng thường mỗi khi rơi vỡ.</p>\r\n\r\n<p>Xem th&ecirc;m:&nbsp;<a href=\"https://www.thegioididong.com/hoi-dap/mat-kinh-ceramic-shield-tren-iphone-12-la-gi-co-xin-so-nhu-1298900\" target=\"_blank\" title=\"Tìm hiểu về độ bền mặt kinh Ceramic Shield trên iPhone 12 tại Thegioididong.com\" type=\"Tìm hiểu về độ bền mặt kinh Ceramic Shield trên iPhone 12 tại Thegioididong.com\">Mặt k&iacute;nh Ceramic Shield tr&ecirc;n iPhone 12 l&agrave; g&igrave;?</a></p>\r\n\r\n<p><a href=\"https://www.thegioididong.com/dtdd-chong-nuoc-bui\" target=\"_blank\">Điện thoại c&oacute;&nbsp;kh&aacute;ng nước</a>&nbsp;chuẩn IP68, c&oacute; thể chịu nước độ s&acirc;u l&ecirc;n tới 6 m khoảng trong v&ograve;ng 30 ph&uacute;t. V&igrave; vậy, bạn c&oacute; thể y&ecirc;n t&acirc;m sử dụng iPhone 12 Pro ngo&agrave;i trời mưa, hồ bơi, hạn chế rủi ro l&agrave;m đổ, rơi v&agrave;o nước l&agrave;m hư hỏng thiết bị.</p>\r\n\r\n<p><a href=\"https://cdn.tgdd.vn/Products/Images/42/228738/iphone-12-pro-256gb-294420-104406.jpg\" onclick=\"return false;\"><img alt=\"Máy hỗ trợ chống nước, bụi chuẩn IP68 | iPhone 12 Pro\" data-src=\"https://cdn.tgdd.vn/Products/Images/42/228738/iphone-12-pro-256gb-294420-104406.jpg\" src=\"https://cdn.tgdd.vn/Products/Images/42/228738/iphone-12-pro-256gb-294420-104406.jpg\" title=\"Máy hỗ trợ chống nước, bụi chuẩn IP68 | iPhone 12 Pro\" /></a></p>\r\n\r\n<h3>A14 Bionic - &ldquo;Chiến binh&rdquo; hiệu năng kiệt xuất trong l&agrave;ng smartphone</h3>\r\n\r\n<p>iPhone 12 Pro trang bị vi xử l&yacute; A14 Bionic hoạt động tr&ecirc;n tiến tr&igrave;nh 5 nm tối t&acirc;n nhất, chứa đến 11.8 ng&agrave;n tỷ b&oacute;ng b&aacute;n dẫn. Thật kh&ocirc;ng ngoa khi Apple tuy&ecirc;n bố đ&acirc;y l&agrave; con chip mạnh mẽ nhất được trang bị tr&ecirc;n smartphone ở thời điểm hiện tại (10/2020).</p>\r\n\r\n<p>Xem th&ecirc;m:&nbsp;<a href=\"https://www.thegioididong.com/hoi-dap/tim-hieu-ve-chip-apple-a14-bionic-tren-iphone-12-va-ipad-1290695\" target=\"_blank\" title=\"Tìm hiểu về xi xủ lý Apple A14 Bionic mạnh như thế nào tại Thegioididong ?\" type=\"Tìm hiểu về xi xủ lý Apple A14 Bionic mạnh như thế nào tại Thegioididong ?\">T&igrave;m hiểu về chip Apple A14 Bionic tr&ecirc;n iPhone 12 v&agrave; iPad Air 2020</a></p>\r\n\r\n<p><a href=\"https://cdn.tgdd.vn/Products/Images/42/228738/iphone-12-pro-256gb-294520-104503.jpg\" onclick=\"return false;\"><img alt=\"Chip A14 Bionic thách thức mọi giới hạn | iPhone 12 Pro\" data-src=\"https://cdn.tgdd.vn/Products/Images/42/228738/iphone-12-pro-256gb-294520-104503.jpg\" src=\"https://cdn.tgdd.vn/Products/Images/42/228738/iphone-12-pro-256gb-294520-104503.jpg\" title=\"Chip A14 Bionic thách thức mọi giới hạn | iPhone 12 Pro\" /></a></p>\r\n\r\n<p>C&oacute; 6 nh&acirc;n CPU với 2 nh&acirc;n tốc độ cao v&agrave; 4 nh&acirc;n tiết kiệm điện, A14 Bionic mạnh hơn đến 40% so với A13 trước đ&acirc;y. Kết hợp với nh&acirc;n GPU cho c&aacute;c t&aacute;c vụ xử l&yacute; đồ họa như chơi game, xử l&yacute; video trở n&ecirc;n nhanh v&agrave; si&ecirc;u mượt m&agrave;.</p>\r\n\r\n<div class=\"ddict_btn\" style=\"top: 26px; left: 391.888px;\"><img src=\"chrome-extension://bpggmmljdiliancllaapiggllnkbjocb/logo/48.png\" /></div>\r\n', 'upload/images/iphone-12-pro-xam-new-600x600-600x600.jpg', 1, 9, 0),
(42, 'iPhone 13', 22000000, 17500000, 98, 'Trong khi sức hút đến từ bộ 4 phiên bản iPhone 12 vẫn chưa nguội đi, thì hãng điện thoại Apple đã mang đến cho người dùng một siêu phẩm mới iPhone 13 với nhiều cải tiến thú vị sẽ mang lại những trải nghiệm hấp dẫn nhất cho người dùng.', '<h3><span style=\"font-size:20px;\"><strong>Trong khi sức hút đ&ecirc;́n từ b&ocirc;̣ 4 phi&ecirc;n bản&nbsp;iPhone 12&nbsp;v&acirc;̃n chưa ngu&ocirc;̣i đi, th&igrave;&nbsp;<a href=\"https://www.thegioididong.com/dtdd-apple-iphone\">h&atilde;ng điện thoại&nbsp;Apple</a>&nbsp;đ&atilde; mang đến cho người d&ugrave;ng một si&ecirc;u phẩm mới iPhone 13 với&nbsp;nhiều cải tiến th&uacute; vị sẽ mang lại những trải nghiệm hấp dẫn nhất cho người d&ugrave;ng.</strong></span></h3>\r\n\r\n<h3>Hiệu năng vượt trội nhờ chip Apple A15 Bionic</h3>\r\n\r\n<p>Con chip&nbsp;<a href=\"https://www.thegioididong.com/hoi-dap/tim-hieu-chip-apple-a15-bionic-suc-manh-cuc-khung-duoc-he-1339072\" title=\"Tìm hiểu về con chip Apple A15 Bionic\">Apple A15 Bionic</a>&nbsp;si&ecirc;u mạnh được sản xuất tr&ecirc;n quy tr&igrave;nh 5 nm gi&uacute;p&nbsp;<a href=\"https://www.thegioididong.com/dtdd/iphone-13\" target=\"_blank\">điện thoại&nbsp;</a><a href=\"https://www.thegioididong.com/dtdd/iphone-13\" title=\"Tham khảo điện thoại iPhone 13 chính hãng tại thegioididong.com\">iPhone 13</a>&nbsp;đạt hiệu năng ấn tượng, với CPU nhanh hơn 50%,&nbsp;GPU nhanh hơn 30% so với c&aacute;c đối thủ trong c&ugrave;ng ph&acirc;n kh&uacute;c.</p>\r\n\r\n<p><a href=\"https://cdn.tgdd.vn/Products/Images/42/223602/iphone-13-1-1.jpg\" onclick=\"return false;\"><img alt=\"Chip Apple A15 Bionic mạnh mẽ - iPhone 13 128GB\" data-src=\"https://cdn.tgdd.vn/Products/Images/42/223602/iphone-13-1-1.jpg\" src=\"https://cdn.tgdd.vn/Products/Images/42/223602/iphone-13-1-1.jpg\" title=\"Chip Apple A15 Bionic mạnh mẽ - iPhone 13 128GB\" /></a></p>\r\n\r\n<p>Nhờ hiệu năng được cải tiến, người d&ugrave;ng c&oacute; được những trải nghiệm tốt hơn tr&ecirc;n điện thoại khi d&ugrave;ng c&aacute;c ứng dụng chỉnh sửa ảnh hay chiến c&aacute;c tựa game đồ họa cao mượt m&agrave;.</p>\r\n\r\n<p><a href=\"https://cdn.tgdd.vn/Products/Images/42/223602/iphone-13-2.jpg\" onclick=\"return false;\"><img alt=\"Đồ họa mượt mà - iPhone 13 128GB\" data-src=\"https://cdn.tgdd.vn/Products/Images/42/223602/iphone-13-2.jpg\" src=\"https://cdn.tgdd.vn/Products/Images/42/223602/iphone-13-2.jpg\" title=\"Đồ họa mượt mà - iPhone 13 128GB\" /></a></p>\r\n\r\n<p>iPhone 13 trang bị&nbsp;bộ nhớ trong 128 GB&nbsp;dung lượng l&yacute; tưởng&nbsp;cho ph&eacute;p bạn thỏa th&iacute;ch lưu trữ mọi nội dung theo &yacute; muốn m&agrave; kh&ocirc;ng lo nhanh đầy bộ nhớ.</p>\r\n\r\n<p><a href=\"https://cdn.tgdd.vn/Products/Images/42/223602/iphone-13-19.jpg\" onclick=\"return false;\"><img alt=\"Dung lượng bộ nhớ - iPhone 13 128GB\" data-src=\"https://cdn.tgdd.vn/Products/Images/42/223602/iphone-13-19.jpg\" src=\"https://cdn.tgdd.vn/Products/Images/42/223602/iphone-13-19.jpg\" title=\"Dung lượng bộ nhớ - iPhone 13 128GB\" /></a></p>\r\n\r\n<h3>Tốc độ 5G tốt hơn&nbsp;</h3>\r\n\r\n<p>Mạng 5G được cải thiện chất lượng với nhiều băng tần hơn, với 5G gi&uacute;p điện thoại xem trực tuyến hay tải xuống c&aacute;c ứng dụng v&agrave; t&agrave;i liệu đều đạt tốc độ nhanh ch&oacute;ng. Kh&ocirc;ng chỉ vậy, si&ecirc;u phẩm mới n&agrave;y c&ograve;n c&oacute; chế độ dữ liệu th&ocirc;ng minh, tự động ph&aacute;t hiện v&agrave; giảm tải tốc độ mạng để tiết kiệm năng lượng khi kh&ocirc;ng cần d&ugrave;ng tốc độ cao.</p>\r\n\r\n<p><a href=\"https://cdn.tgdd.vn/Products/Images/42/223602/iphone-13-4.jpg\" onclick=\"return false;\"><img alt=\"Hỗ trợ kết nối 5G hiện đại - iPhone 13 128GB\" data-src=\"https://cdn.tgdd.vn/Products/Images/42/223602/iphone-13-4.jpg\" src=\"https://cdn.tgdd.vn/Products/Images/42/223602/iphone-13-4.jpg\" title=\"Hỗ trợ kết nối 5G hiện đại - iPhone 13 128GB\" /></a></p>\r\n\r\n<h3>M&agrave;n h&igrave;nh Super Retina XDR độ s&aacute;ng cao, tiết kiệm pin</h3>\r\n\r\n<p>iPhone 13 sử dụng tấm nền OLED với k&iacute;ch thước m&agrave;n h&igrave;nh 6.1 inch&nbsp;cho chất lượng m&agrave;u sắc v&agrave; chi tiết h&igrave;nh ảnh sắc n&eacute;t, sống động, độ ph&acirc;n giải đạt 1170 x 2532 Pixels.</p>\r\n\r\n<p><a href=\"https://cdn.tgdd.vn/Products/Images/42/223602/iphone-13-6.jpg\" onclick=\"return false;\"><img alt=\"Màn hình OLED 6.1 inch - iPhone 13 128GB\" data-src=\"https://cdn.tgdd.vn/Products/Images/42/223602/iphone-13-6.jpg\" src=\"https://cdn.tgdd.vn/Products/Images/42/223602/iphone-13-6.jpg\" title=\"Màn hình OLED 6.1 inch - iPhone 13 128GB\" /></a></p>\r\n\r\n<p>C&ocirc;ng nghệ m&agrave;n h&igrave;nh Super Retina XDR của m&aacute;y đạt&nbsp;độ s&aacute;ng 800 nits, tối đa l&ecirc;n đến 1200 nits c&ugrave;ng dải m&agrave;u rộng P3, tỷ lệ tương phản lớn gi&uacute;p ổn định tốt m&agrave;u sắc v&agrave; chất lượng h&igrave;nh ảnh hiển thị trong nhiều điều kiện chiếu s&aacute;ng, kể cả m&ocirc;i trường nắng gắt hay &aacute;nh s&aacute;ng ch&oacute;i.</p>\r\n\r\n<p><a href=\"https://cdn.tgdd.vn/Products/Images/42/223602/iphone-13-5.jpg\" onclick=\"return false;\"><img alt=\"Độ sáng đạt 1200 nits - iPhone 13 128GB\" data-src=\"https://cdn.tgdd.vn/Products/Images/42/223602/iphone-13-5.jpg\" src=\"https://cdn.tgdd.vn/Products/Images/42/223602/iphone-13-5.jpg\" title=\"Độ sáng đạt 1200 nits - iPhone 13 128GB\" /></a></p>\r\n\r\n<p>Ph&iacute;a ngo&agrave;i m&agrave;n h&igrave;nh c&ograve;n được phủ lớp oleophobic hạn chế t&igrave;nh trạng b&aacute;m bụi bẩn v&agrave; mồ h&ocirc;i do tay người d&ugrave;ng, giữ m&agrave;n h&igrave;nh lu&ocirc;n sạch v&agrave; tinh tế hơn. V&agrave; trang bị&nbsp;k&iacute;nh cường lực Ceramic Shield gi&uacute;p m&agrave;n h&igrave;nh của m&aacute;y được an to&agrave;n hơn trước những vết xước, va đập trong qu&aacute; tr&igrave;nh sử dụng.</p>\r\n\r\n<p><a href=\"https://cdn.tgdd.vn/Products/Images/42/223602/iphone-13-7.jpg\" onclick=\"return false;\"><img alt=\"Trang bị kính cường lực Ceramic Shield - iPhone 13 128GB\" data-src=\"https://cdn.tgdd.vn/Products/Images/42/223602/iphone-13-7.jpg\" src=\"https://cdn.tgdd.vn/Products/Images/42/223602/iphone-13-7.jpg\" title=\"Trang bị kính cường lực Ceramic Shield - iPhone 13 128GB\" /></a></p>\r\n\r\n<h3>Cụm camera k&eacute;p nổi bật với nhiều cải tiến</h3>\r\n\r\n<p>Cụm camera k&eacute;p ph&iacute;a sau tr&ecirc;n iPhone 13 đều sở hữu độ ph&acirc;n giải 12 MP, camera ch&iacute;nh&nbsp;gi&uacute;p thu được nhiều &aacute;nh s&aacute;ng hơn, tăng khả năng thu s&aacute;ng l&ecirc;n đến 47% n&ecirc;n chất lượng ảnh chụp cũng cải thiện hơn so với bản tiền nhiệm.&nbsp;<a href=\"https://www.thegioididong.com/dtdd-camera-goc-rong\">Điện thoại sở hữu&nbsp;camera g&oacute;c si&ecirc;u rộng</a>&nbsp;cho g&oacute;c nh&igrave;n&nbsp;120 độ gi&uacute;p thu được nhiều chi tiết hơn, dễ d&agrave;ng ghi lại những khung cảnh n&uacute;i non h&ugrave;ng vĩ, ảnh chụp nh&oacute;m đ&ocirc;ng người.</p>\r\n\r\n<p><a href=\"https://cdn.tgdd.vn/Products/Images/42/223602/iphone-13-8.jpg\" onclick=\"return false;\"><img alt=\"Cụm camera sau sắc nét - iPhone 13 128GB\" data-src=\"https://cdn.tgdd.vn/Products/Images/42/223602/iphone-13-8.jpg\" src=\"https://cdn.tgdd.vn/Products/Images/42/223602/iphone-13-8.jpg\" title=\"Cụm camera sau sắc nét - iPhone 13 128GB\" /></a></p>\r\n\r\n<p>Cụm camera cũng được trang bị t&iacute;nh năng chống rung quang học Sensor Shift gi&uacute;p lấy n&eacute;t nhanh ch&oacute;ng, khả năng chụp đ&ecirc;m cũng trở n&ecirc;n r&otilde; n&eacute;t m&agrave; &iacute;t bị nhiễu hạt, hay quay video cũng rất ổn định v&agrave; mượt m&agrave; hơn.</p>\r\n\r\n<p><a href=\"https://cdn.tgdd.vn/Products/Images/42/223602/iphone-13-9.jpg\" onclick=\"return false;\"><img alt=\"Chụp đêm siêu rõ nét - iPhone 13 128GB\" data-src=\"https://cdn.tgdd.vn/Products/Images/42/223602/iphone-13-9.jpg\" src=\"https://cdn.tgdd.vn/Products/Images/42/223602/iphone-13-9.jpg\" title=\"Chụp đêm siêu rõ nét - iPhone 13 128GB\" /></a></p>\r\n\r\n<p>&ldquo;Chế độ điện ảnh&rdquo; cho ph&eacute;p camera tr&ecirc;n iPhone 13 tự động l&agrave;m mờ hậu cảnh trong video để đối tượng lu&ocirc;n được lấy n&eacute;t nổi bật. Đặc biệt người d&ugrave;ng c&oacute; thể thay đổi ti&ecirc;u điểm để chọn chủ thể mong muốn trong khung h&igrave;nh khi sử dụng quay video, nhờ đ&oacute; tạo n&ecirc;n những video chuy&ecirc;n nghiệp, như &yacute; hơn.</p>\r\n\r\n<p><a href=\"https://cdn.tgdd.vn/Products/Images/42/223602/iphone-13-10.jpg\" onclick=\"return false;\"><img alt=\"Chế độ điện ảnh độc đáo - iPhone 13 128GB\" data-src=\"https://cdn.tgdd.vn/Products/Images/42/223602/iphone-13-10.jpg\" src=\"https://cdn.tgdd.vn/Products/Images/42/223602/iphone-13-10.jpg\" title=\"Chế độ điện ảnh độc đáo - iPhone 13 128GB\" /></a></p>\r\n\r\n<p>Chế độ chụp Smart HDR 4 nhận diện tối đa 4 người trong một khung h&igrave;nh, tiến h&agrave;nh tối ưu h&oacute;a &aacute;nh s&aacute;ng v&agrave; tương phản, tone m&agrave;u da cho từng người để ho&agrave;n thiện bức ảnh đẹp m&agrave; kh&ocirc;ng cần qua chỉnh sửa.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<div class=\"ddict_btn\" style=\"top: 71px; left: 1164.81px;\"><img src=\"chrome-extension://bpggmmljdiliancllaapiggllnkbjocb/logo/48.png\" /></div>\r\n', 'upload/images/iphone-13-red-1-600x600.jpg', 1, 9, 0),
(43, 'Samsung Galaxy Note 20', 23990000, 15990000, 99, 'Tháng 8/2020, smartphone Galaxy Note 20 chính thức được lên kệ, với thiết kế camera trước nốt ruồi quen thuộc, cụm camera hình chữ nhật mới lạ cùng với vi xử lý Exynos 990 cao cấp của chính hãng điện thoại Samsung chắc hẳn sẽ mang lại một trải nghiệm thú vị cùng hiệu năng mạnh mẽ.', '<h3><span style=\"font-size:20px;\"><strong>Camera cụm h&igrave;nh chữ nhật độc đ&aacute;o c&ugrave;ng thiết kế mạnh mẽ</strong></span></h3>\r\n\r\n<p><a href=\"https://www.thegioididong.com/dtdd\" target=\"_blank\" title=\"Tham khảo điện thoại kinh doanh tại Thế Giới Di Động\">Điện thoại</a>&nbsp;sở hữu thiết kế khung kim loại chắc chắn, mặt lưng nhựa b&oacute;ng bẩy, kiểu d&aacute;ng mạnh mẽ với những g&oacute;c cạnh vu&ocirc;ng vức nhưng vẫn mang lại cảm gi&aacute;c cầm nắm thoải m&aacute;i.</p>\r\n\r\n<p><a href=\"https://cdn.tgdd.vn/Products/Images/42/218355/samsung-galaxy-note-20-235720-125702.jpg\" onclick=\"return false;\"><img alt=\"Thiết kế mặt lưng nhám sang trọng - Samsung Galaxy Note 20\" data-src=\"https://cdn.tgdd.vn/Products/Images/42/218355/samsung-galaxy-note-20-235720-125702.jpg\" src=\"https://cdn.tgdd.vn/Products/Images/42/218355/samsung-galaxy-note-20-235720-125702.jpg\" title=\"Thiết kế mặt lưng nhám sang trọng - Samsung Galaxy Note 20\" /></a></p>\r\n\r\n<p>Camera của Galaxy Note 20&nbsp;được thiết kế trong cụm h&igrave;nh chữ nhật được đặt gọn ở ph&iacute;a sau bao gồm 1 camera ch&iacute;nh 64 MP, camera g&oacute;c si&ecirc;u rộng 12 MP v&agrave; camera tele 12 MP hỗ trợ người d&ugrave;ng dễ d&agrave;ng lưu lại sắc n&eacute;t những khoảng khắc đ&aacute;ng nhớ c&ugrave;ng gia đ&igrave;nh v&agrave; bạn b&egrave;.</p>\r\n\r\n<p><a href=\"https://cdn.tgdd.vn/Products/Images/42/218355/samsung-galaxy-note-20-235520-015514.jpg\" onclick=\"return false;\"><img alt=\"Cụm 3 camera sau - Samsung Galaxy Note 20\" data-src=\"https://cdn.tgdd.vn/Products/Images/42/218355/samsung-galaxy-note-20-235520-015514.jpg\" src=\"https://cdn.tgdd.vn/Products/Images/42/218355/samsung-galaxy-note-20-235520-015514.jpg\" title=\"Cụm 3 camera sau - Samsung Galaxy Note 20\" /></a></p>\r\n\r\n<p>Camera Galaxy Note 20 hỗ trợ zoom đến 30x ở chế độ chụp b&igrave;nh thường, trong khi đ&oacute;, ở chế độ chụp ban đ&ecirc;m, m&aacute;y vẫn hỗ trợ zoom đến 10x, chi tiết trong điều kiện thiếu s&aacute;ng nhiều nhưng vẫn cho chất lượng h&igrave;nh tốt v&agrave; chi tiết.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img src=\"https://cdn.tgdd.vn/Products/Images/42/218355/samsung-galaxy-note-20-224320-024303.jpg\" />Ảnh chụp g&oacute;c thường 1x tr&ecirc;n Galaxy Note 20</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img src=\"https://cdn.tgdd.vn/Products/Images/42/218355/samsung-galaxy-note-20-224320-024309.jpg\" />Ảnh chụp zoom 5x tr&ecirc;n Galaxy Note 20</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img src=\"https://cdn.tgdd.vn/Products/Images/42/218355/samsung-galaxy-note-20-224320-024315.jpg\" />Ảnh chụp zoom 10x tr&ecirc;n Galaxy Note 20</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Với khả năng quay video chất lượng cao l&ecirc;n đến 8K si&ecirc;u n&eacute;t c&ugrave;ng c&aacute;c t&iacute;nh năng chống rung, lấy n&eacute;t,... th&igrave; việc sở hữu nhiều thước phim xịn mịn bắt mắt l&agrave; điều ho&agrave;n to&agrave;n dễ d&agrave;ng tr&ecirc;n chiếc smartphone n&agrave;y.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img src=\"https://cdn.tgdd.vn/Products/Images/42/218355/samsung-galaxy-note-20-230720-020730.jpg\" />Ảnh chụp camera sau tr&ecirc;n Galaxy Note 20</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img src=\"https://cdn.tgdd.vn/Products/Images/42/218355/samsung-galaxy-note-20-230720-020723.jpg\" />Ảnh chụp đ&ecirc;m tr&ecirc;n Galaxy Note 20</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Samsung Note 20 sở hữu camera trước 10 MP trong thiết kế nốt ruồi quen thuộc gi&uacute;p khung m&agrave;n h&igrave;nh 6.7 inch được sử dụng tối đa gi&uacute;p cho việc xem phim hay chơi game đ&atilde; mắt v&agrave; tập trung hơn.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img src=\"https://cdn.tgdd.vn/Products/Images/42/218355/samsung-galaxy-note-20-230020-020036.jpg\" />Camera trước 10 MP&nbsp;tr&ecirc;n Galaxy Note 20</p>\r\n\r\n<div class=\"ddict_btn\" style=\"top: 27px; left: 421.587px;\"><img src=\"chrome-extension://bpggmmljdiliancllaapiggllnkbjocb/logo/48.png\" /></div>\r\n', 'upload/images/samsung-galaxy-note-20-062220-122200-fix-600x600.jpg', 1, 1, 0),
(44, 'OPPO Reno5 5G', 7990000, 5650000, 73, 'OPPO đã trình làng OPPO Reno5 5G phiên bản kết nối 5G internet siêu nhanh ra thị trường. Chiếc điện thoại với hàng loạt các tính năng nổi bật cùng vẻ ngoài thời thượng giúp tôn lên vẻ sang trọng cho người sở hữu.', '<h3><span style=\"font-size:20px;\"><strong>Từng đường n&eacute;t lấp l&aacute;nh, tỏa s&aacute;ng</strong></span></h3>\r\n\r\n<p>OPPO Reno5 5G c&oacute; cấu tạo c&aacute;c khung viền xung quanh ho&agrave;n to&agrave;n bằng kim loại cao cấp, mặt lưng l&agrave;m từ nhựa. Chiếc điện thoại được thiết kế tổng thể nguy&ecirc;n khối v&ocirc; c&ugrave;ng rắn chắc v&agrave; bo cong mềm mại ở 4 g&oacute;c, mang đến người d&ugrave;ng cảm gi&aacute;c cầm nắm thoải m&aacute;i nhất.</p>\r\n\r\n<p><a href=\"https://cdn.tgdd.vn/Products/Images/42/233460/a22.jpg\" onclick=\"return false;\"><img alt=\"OPPO Reno5 5G | Thiết kế nguyên khối, khung viền kim loại cao cấp\" data-src=\"https://cdn.tgdd.vn/Products/Images/42/233460/a22.jpg\" src=\"https://cdn.tgdd.vn/Products/Images/42/233460/a22.jpg\" title=\"OPPO Reno5 5G | Thiết kế nguyên khối, khung viền kim loại cao cấp\" /></a></p>\r\n\r\n<p>Reno5 5G chỉ sở hữu 2 phi&ecirc;n bản m&agrave;u sắc một c&aacute;ch tối giản cho người d&ugrave;ng lựa chọn l&agrave;: M&agrave;u bạc v&agrave; đen. Trong đ&oacute;, lớp vỏ của m&agrave;u bạc được phủ kết hợp giữa lớp k&iacute;nh Reno Glow v&agrave; lớp nano Picasus cho sắc &aacute;nh kim cương tr&ecirc;n th&acirc;n m&aacute;y, m&agrave;u đen th&igrave; thanh lịch v&agrave; đơn giản.</p>\r\n\r\n<p><a href=\"https://cdn.tgdd.vn/Products/Images/42/233460/a16.jpg\" onclick=\"return false;\"><img alt=\"OPPO Reno5 5G | Màu sắc thanh lịch, tối giản với hai màu bạc và đen\" data-src=\"https://cdn.tgdd.vn/Products/Images/42/233460/a16.jpg\" src=\"https://cdn.tgdd.vn/Products/Images/42/233460/a16.jpg\" title=\"OPPO Reno5 5G | Màu sắc thanh lịch, tối giản với hai màu bạc và đen\" /></a></p>\r\n\r\n<p>Chiếc&nbsp;<a href=\"https://www.thegioididong.com/dtdd-oppo\" target=\"_blank\">điện thoại</a>&nbsp;sở hữu 4 ống k&iacute;nh mặt sau v&agrave; đ&egrave;n LED flash được sắp xếp một c&aacute;ch tinh tế, nằm gọn trong khu&ocirc;n h&igrave;nh chữ nhật, c&ugrave;ng một ống k&iacute;nh selfie với thiết kế đục lỗ sang trọng nằm b&ecirc;n tr&aacute;i m&agrave;n h&igrave;nh.</p>\r\n\r\n<h3>Đem đến sự ch&acirc;n thật trong từng khung h&igrave;nh&nbsp;</h3>\r\n\r\n<p>Reno5 5G trang bị&nbsp;<a href=\"https://www.thegioididong.com/hoi-dap/man-hinh-amoled-la-gi-905766\" target=\"_blank\" title=\"Tìm hiểu về tấm nền AMOLED\">tấm nền&nbsp;</a><a href=\"https://www.thegioididong.com/hoi-dap/man-hinh-amoled-la-gi-905766\" target=\"_blank\" title=\"Màn hình AMOLED là gì?\">AMOLED</a>&nbsp;mang khả năng t&aacute;i tạo m&agrave;u sắc tốt, h&igrave;nh ảnh sắc n&eacute;t v&agrave; rực rỡ, ngo&agrave;i ra c&ograve;n tiết kiệm điện năng đ&aacute;ng kể. C&ocirc;ng nghệ m&agrave;n h&igrave;nh cao cấp sẽ cho người d&ugrave;ng những trải nghiệm tuyệt vời ngay khi nhấc smartphone của bạn l&ecirc;n.</p>\r\n\r\n<p><a href=\"https://cdn.tgdd.vn/Products/Images/42/233460/a10.jpg\" onclick=\"return false;\"><img alt=\"OPPO Reno5 5G | Trang bị tấm nền AMOLED mang hình ảnh sắc nét và rực rỡ\" data-src=\"https://cdn.tgdd.vn/Products/Images/42/233460/a10.jpg\" src=\"https://cdn.tgdd.vn/Products/Images/42/233460/a10.jpg\" title=\"OPPO Reno5 5G | Trang bị tấm nền AMOLED mang hình ảnh sắc nét và rực rỡ\" /></a></p>\r\n\r\n<p>M&agrave;n h&igrave;nh của OPPO Reno5 5G c&oacute;&nbsp;<a href=\"https://www.thegioididong.com/tin-tuc/do-phan-giai-man-hinh-qhd-hd-fullhd-2k-4k-la-gi--592178#fullhd\" target=\"_blank\" title=\"Độ phân giải màn hình qHD, HD, FullHD, 2K, 4K là gì?\">độ ph&acirc;n giải&nbsp;</a><a href=\"https://www.thegioididong.com/tin-tuc/do-phan-giai-man-hinh-qhd-hd-fullhd-2k-4k-la-gi--592178#fullhd\" target=\"_blank\" title=\"Độ phân giải màn hình qHD, HD, FullHD, 2K, 4K là gì?\">Full HD+</a>&nbsp;n&eacute;t đến từng chi tiết, k&iacute;ch thước rộng 6.43 inch cho kh&ocirc;ng gian hiển thị thoải m&aacute;i, &ldquo;đ&atilde; mắt&rdquo; nhất. Từ đ&oacute;, những thao t&aacute;c tr&ecirc;n m&aacute;y được dễ d&agrave;ng v&agrave; l&ocirc;i cuốn.</p>\r\n\r\n<p><a href=\"https://cdn.tgdd.vn/Products/Images/42/233460/a7.jpg\" onclick=\"return false;\"><img alt=\"OPPO Reno5 5G | Màn hình rộng 6.43 inch\" data-src=\"https://cdn.tgdd.vn/Products/Images/42/233460/a7.jpg\" src=\"https://cdn.tgdd.vn/Products/Images/42/233460/a7.jpg\" title=\"OPPO Reno5 5G | Màn hình rộng 6.43 inch\" /></a></p>\r\n\r\n<p>Khởi động nhanh ch&oacute;ng v&agrave; bảo mật tuyệt đối với t&iacute;nh năng&nbsp;bảo mật v&acirc;n tay v&agrave; bảo mật khu&ocirc;n mặt&nbsp;người d&ugrave;ng c&oacute; thể lựa chọn phương ph&aacute;p thuận tiện nhất với m&igrave;nh.</p>\r\n\r\n<p><a href=\"https://cdn.tgdd.vn/Products/Images/42/233460/a8.jpg\" onclick=\"return false;\"><img alt=\"OPPO Reno5 5G | Hỗ trợ tính năng bảo mật vân tay và bảo mật khuôn mặt\" data-src=\"https://cdn.tgdd.vn/Products/Images/42/233460/a8.jpg\" src=\"https://cdn.tgdd.vn/Products/Images/42/233460/a8.jpg\" title=\"OPPO Reno5 5G | Hỗ trợ tính năng bảo mật vân tay và bảo mật khuôn mặt\" /></a></p>\r\n\r\n<p>Bảo vệ vẻ đẹp xuất sắc của m&agrave;n h&igrave;nh Reno5 5G bằng&nbsp;<a href=\"https://www.thegioididong.com/hoi-dap/tim-hieu-kinh-cuong-luc-smartphone-corning-gorilla-glass-3-1288806\" target=\"_blank\" title=\"Tìm hiểu kính cường lực smartphone - Corning Gorilla Glass 3+\">k&iacute;nh cường lực Corning Gorilla Glass 3+</a>&nbsp;được n&acirc;ng cấp cao khả năng chống chịu va đập, trầy xước v&agrave; độ bền theo thời gian mang đến cho bạn chiếc điện thoại chắc chắn, khỏe khoắn.</p>\r\n\r\n<h3>Reno5 5G chi&ecirc;u mộ mọi t&iacute;nh đồ chụp ảnh, checkin hay blogger</h3>\r\n\r\n<p>OPPO đ&atilde; trang bị một hệ thống m&aacute;y ảnh xuất sắc cho chiếc điện thoại của m&igrave;nh gồm 4 ống k&iacute;nh mặt sau bắt mắt. Camera ch&iacute;nh c&oacute; độ ph&acirc;n giải l&ecirc;n đến 64 MP, camera g&oacute;c si&ecirc;u rộng 8 MP, camera macro 2 MP v&agrave; camera đơn sắc 2 MP.&nbsp;</p>\r\n\r\n<p><a href=\"https://cdn.tgdd.vn/Products/Images/42/233460/a5.jpg\" onclick=\"return false;\"><img alt=\"OPPO Reno5 5G | Cụm camera sau gồm 4 ống kính bắt mắt\" data-src=\"https://cdn.tgdd.vn/Products/Images/42/233460/a5.jpg\" src=\"https://cdn.tgdd.vn/Products/Images/42/233460/a5.jpg\" title=\"OPPO Reno5 5G | Cụm camera sau gồm 4 ống kính bắt mắt\" /></a></p>\r\n\r\n<p>D&agrave;n m&aacute;y ảnh nh&agrave;&nbsp;<a href=\"https://www.thegioididong.com/dtdd-oppo\" target=\"_blank\">OPPO</a>&nbsp;sở hữu tất cả c&aacute;c t&iacute;nh năng hỗ trợ l&agrave;m đẹp v&agrave; chỉnh sửa tối ưu nhất, cho bạn những bức ảnh ho&agrave;n hảo đến từng đường n&eacute;t.</p>\r\n\r\n<p><a href=\"https://cdn.tgdd.vn/Products/Images/42/233460/a6.jpg\" onclick=\"return false;\"><img alt=\"OPPO Reno5 5G | Hỗ trợ làm đẹp và chỉnh sửa tối ưu nhất, cho ảnh lung linh\" data-src=\"https://cdn.tgdd.vn/Products/Images/42/233460/a6.jpg\" src=\"https://cdn.tgdd.vn/Products/Images/42/233460/a6.jpg\" title=\"OPPO Reno5 5G | Hỗ trợ làm đẹp và chỉnh sửa tối ưu nhất, cho ảnh lung linh\" /></a></p>\r\n\r\n<p>OPPO Reno5 5G sở hữu trọn vẹn c&aacute;c t&iacute;nh năng quay phim với nhiều chế độ kh&aacute;c nhau từ c&ocirc;ng nghệ si&ecirc;u chống rung đến video hiển thị k&eacute;p gi&uacute;p bạn kh&ocirc;ng bỏ lỡ bất kỳ hoạt động đ&aacute;ng nhớ n&agrave;o.</p>\r\n\r\n<p><a href=\"https://cdn.tgdd.vn/Products/Images/42/233460/a9.jpg\" onclick=\"return false;\"><img alt=\"OPPO Reno5 5G | Giao diện chụp ảnh\" data-src=\"https://cdn.tgdd.vn/Products/Images/42/233460/a9.jpg\" src=\"https://cdn.tgdd.vn/Products/Images/42/233460/a9.jpg\" title=\"OPPO Reno5 5G | Giao diện chụp ảnh\" /></a></p>\r\n\r\n<p>M&aacute;y ảnh selfie mặt trước c&oacute; độ ph&acirc;n giải l&ecirc;n đến 32 MP, với th&ocirc;ng số lớn n&agrave;y camera selfie của Reno5 5G tự h&agrave;o mang những t&iacute;nh năng tốt kh&ocirc;ng thua k&eacute;m g&igrave; với d&agrave;n camera của mặt sau. Hỗ trợ&nbsp;<a href=\"https://www.thegioididong.com/hoi-dap/che-do-lam-dep-beautify-tren-smartphone-tablet-1172231\" target=\"_blank\" title=\"Chế độ làm đẹp (Beautify) trên smartphone, tablet là gì?\">l&agrave;m đẹp</a>&nbsp;nổi bật l&ecirc;n vẻ thanh t&uacute; v&agrave; tự nhi&ecirc;n tr&ecirc;n khu&ocirc;n mặt bạn.</p>\r\n\r\n<h3><a href=\"https://www.thegioididong.com/hoi-dap/tim-hieu-bo-xu-ly-5g-tam-trung-snapdragon-765-765g-1237824\" target=\"_blank\" title=\"Tìm hiểu bộ xử lý 5G tầm trung Snapdragon 765 / 765G\">Snapdragon 765G 8 nh&acirc;n</a>&nbsp;phi&ecirc;n bản chuy&ecirc;n game vượt trội</h3>\r\n\r\n<p>D&ograve;ng chipset 5G tầm trung được trang bị tr&ecirc;n Reno5 5G được ph&aacute;t triển tập trung v&agrave;o hiệu năng gaming mạnh mẽ, bộ xử l&yacute; đồ họa Adreno 620 cung cấp h&igrave;nh ảnh tr&ecirc;n game r&otilde; r&agrave;ng, ch&acirc;n thực.</p>\r\n\r\n<p><a href=\"https://cdn.tgdd.vn/Products/Images/42/233460/765g.jpg\" onclick=\"return false;\"><img alt=\"OPPO Reno5 5G | Chip Snapdragon 765G 8 nhân cùng bộ xử lý đồ họa Adreno 620 mạnh mẽ\" data-src=\"https://cdn.tgdd.vn/Products/Images/42/233460/765g.jpg\" src=\"https://cdn.tgdd.vn/Products/Images/42/233460/765g.jpg\" title=\"OPPO Reno5 5G | Chip Snapdragon 765G 8 nhân cùng bộ xử lý đồ họa Adreno 620 mạnh mẽ\" /></a></p>\r\n\r\n<p>Khi được kiểm tra qua phần mềm Antutu, m&aacute;y cho ra kết quả kh&aacute; ấn tượng với 313.957 điểm ho&agrave;n to&agrave;n đ&aacute;p ứng đủ c&aacute;c t&aacute;c vụ nặng đến từ người d&ugrave;ng, c&aacute;c tựa game đồ hoạ cũng kh&ocirc;ng thể l&agrave;m kh&oacute; được Reno5 5G.</p>\r\n\r\n<div class=\"ddict_btn\" style=\"top: 16px; left: 255.8px;\"><img src=\"chrome-extension://bpggmmljdiliancllaapiggllnkbjocb/logo/48.png\" /></div>\r\n', 'upload/images/oppo-reno5-5g-thumb-600x600.jpg', 1, 3, 0),
(46, 'Laptop Acer Nitro 5 Gaming AN515 45 R6EV R5 5600H', 23990000, 19190000, 99, 'phá cách với diện mạo mạnh mẽ đến từ laptop Acer Nitro 5 Gaming AN515 45 R6EV R5 5600H (NH.QBMSV.006) mang đến cho người dùng hiệu năng ổn định, hỗ trợ bạn trong mọi tác vụ hằng ngày hay chiến những trận game cực căng một cách mượt mà.', '<h3><span style=\"font-size:20px;\"><span style=\"font-family:Times New Roman,Times,serif;\">Ph&aacute; c&aacute;ch với diện mạo mạnh mẽ đến từ&nbsp;<a href=\"https://www.thegioididong.com/laptop/acer-nitro-5-gaming-an515-45-r6ev-r5-nhqbmsv006\" target=\"_blank\" title=\"Laptop Acer Nitro 5 Gaming AN515 45 R6EV R5 5600H/8GB/512GB/144Hz/4GB GTX1650/Win11 (NH.QBMSV.006)\">laptop Acer Nitro 5 Gaming AN515 45 R6EV R5 5600H (NH.QBMSV.006)</a>&nbsp;mang đến cho người d&ugrave;ng hiệu năng ổn định, hỗ trợ bạn trong mọi t&aacute;c vụ hằng ng&agrave;y hay chiến những trận game cực căng một c&aacute;ch mượt m&agrave;.</span></span></h3>\r\n\r\n<h3><span style=\"font-size:20px;\"><span style=\"font-family:Times New Roman,Times,serif;\">Kiểu d&aacute;ng nổi bật, thu h&uacute;t mọi &aacute;nh nh&igrave;n</span></span></h3>\r\n\r\n<p><span style=\"font-size:20px;\"><span style=\"font-family:Times New Roman,Times,serif;\"><a href=\"https://www.thegioididong.com/laptop-acer-nitro\" target=\"_blank\" title=\"Một số laptop Acer Nitro đang kinh doanh tại thegioididong.com\">Laptop Acer Nitro</a>&nbsp;với t&iacute;nh bền bỉ vượt bậc khi được trang bị lớp vỏ nhựa chắc chắn c&ugrave;ng trọng lượng kh&ocirc;ng qu&aacute; nặng cho một chiếc laptop gaming&nbsp;<strong>2.2 kg&nbsp;</strong>v&agrave; d&agrave;y&nbsp;<strong>23.9 mm,&nbsp;</strong>sẵn s&agrave;ng c&ugrave;ng bạn đi đến bất kỳ đ&acirc;u, phục vụ tốt cho cả nhu cầu c&ocirc;ng việc hay giải tr&iacute;, cho ph&eacute;p bạn chiến game ở khắp mọi nơi trong cuộc h&agrave;nh tr&igrave;nh</span></span>.</p>\r\n\r\n<div class=\"ddict_btn\" style=\"top: -7px; left: 485.6px;\"><img src=\"chrome-extension://bpggmmljdiliancllaapiggllnkbjocb/logo/48.png\" /></div>\r\n', 'upload/images/acer-nitro-5-gaming-an515-57-5831-i5-nhqdgsv003-600x600.jpg', 0, 8, 0),
(47, 'Laptop Apple MacBook Air M1 2020 16GB/256GB/7-core GPU (Z124000DE)', 33990000, 29290000, 96, 'Laptop Apple Air M1 2020 có thiết kế đẹp, sang trọng với CPU M1 độc quyền từ Apple cho hiệu năng đồ họa cao, màn hình Retina hiển thị siêu nét cùng với hệ thống bảo mật tối ưu.\r\nHiệu năng ấn tượng đến từ chip M1', '<h3><span style=\"font-size:20px;\"><span style=\"font-family:Times New Roman,Times,serif;\"><a href=\"https://www.thegioididong.com/laptop/apple-macbook-air-m1-2020-z124000de\" target=\"_blank\" title=\"Laptop Apple MacBook Air M1 2020 đang bán tại thegioididong.com\">Laptop Apple Air M1 2020</a>&nbsp;c&oacute; thiết kế đẹp, sang trọng với CPU M1 độc quyền từ Apple cho hiệu năng đồ họa cao, m&agrave;n h&igrave;nh Retina hiển thị si&ecirc;u n&eacute;t c&ugrave;ng với hệ thống bảo mật tối ưu.</span></span></h3>\r\n\r\n<h3><span style=\"font-size:20px;\"><span style=\"font-family:Times New Roman,Times,serif;\">Hiệu năng ấn tượng đến từ chip M1</span></span></h3>\r\n\r\n<p><span style=\"font-size:20px;\"><span style=\"font-family:Times New Roman,Times,serif;\"><a href=\"https://www.thegioididong.com/hoi-dap/tim-hieu-ve-chip-apple-m1-con-chip-arm-5nm-dau-tien-danh-1305955\" target=\"_blank\" title=\"Tìm hiểu về chip Apple M1: Con chip ARM 5nm đầu tiên dành cho máy Mac\">Chip M1</a>&nbsp;được Apple thiết kế d&agrave;nh ri&ecirc;ng cho&nbsp;<a href=\"https://www.thegioididong.com/laptop-apple-macbook\" target=\"_blank\" title=\"Xem thêm một số mẫu MacBook đang được bán tại Thegioididong.com\">MacBook</a>&nbsp;mang đến hiệu năng vượt trội. Thực hiện tốt c&aacute;c t&aacute;c vụ văn ph&ograve;ng tr&ecirc;n c&aacute;c phần mềm như Word, Excel, Powerpoint,... Thiết kế đồ hoạ cũng chuy&ecirc;n nghiệp kh&ocirc;ng k&eacute;m, cho ph&eacute;p bạn chỉnh sửa h&igrave;nh ảnh với dung lượng lớn, kết xuất 2D mượt m&agrave; tr&ecirc;n c&aacute;c phần mềm Photoshop, AI, Figma,...</span></span></p>\r\n\r\n<p><span style=\"font-size:20px;\"><span style=\"font-family:Times New Roman,Times,serif;\">Card đồ họa&nbsp;<strong>GPU 7 nh&acirc;n</strong>&nbsp;đem lại hiệu suất cao đ&aacute;ng kinh ngạc, đồ họa cao hơn gấp&nbsp;<strong>5 lần</strong>, thảo sức s&aacute;ng tạo nội dung, kết xuất 3D ổn định, render video, ph&aacute;t trực tiếp với chất lượng cao với chất ảnh sắc n&eacute;t c&ugrave;ng độ ph&acirc;n giải l&ecirc;n đến&nbsp;<strong>4K</strong>.</span></span></p>\r\n', 'upload/images/apple-macbook-air.jpg', 0, 9, 0),
(48, 'Laptop Lenovo Gaming Legion 5 15ACH6 R7 ', 28790000, 26790000, 77, 'Lenovo Gaming Legion 5 15ACH6 R7 5800H (82JW00KMVN) là phiên bản laptop với kiểu dáng mới lạ cùng hiệu năng vượt trội, sẵn sàng cùng bạn chiến mọi trận game khó nhằn.', '<h3><span style=\"font-family:Times New Roman,Times,serif;\"><span style=\"font-size:20px;\"><a href=\"https://www.thegioididong.com/laptop/lenovo-gaming-legion-5-15ach6-r7-82jw00kmvn\" target=\"_blank\" title=\"Laptop Lenovo Gaming Legion 5 15ACH6 R7 (82JW00KMVN) đang bán tại thegioididong.com\">Lenovo Gaming Legion 5 15ACH6 R7 5800H (82JW00KMVN)</a>&nbsp;l&agrave; phi&ecirc;n bản laptop với kiểu d&aacute;ng mới lạ c&ugrave;ng hiệu năng vượt trội, sẵn s&agrave;ng c&ugrave;ng bạn chiến mọi trận game kh&oacute; nhằn.</span></span></h3>\r\n\r\n<p><span style=\"font-family:Times New Roman,Times,serif;\"><span style=\"font-size:20px;\">&bull;&nbsp;Bộ vi xử l&yacute;&nbsp;<strong>AMD Ryzen 7 5800H</strong>&nbsp;c&ugrave;ng card đồ họa rời&nbsp;<strong>NVIDIA GeForce RTX 3050Ti 4 GB&nbsp;</strong>được trang bị ở chiếc&nbsp;<a href=\"https://www.thegioididong.com/laptop?g=laptop-gaming\" target=\"_blank\" title=\"Một số laptop gaming đang kinh doanh tại thegioididong.com\">laptop gaming</a>&nbsp;hỗ trợ bạn xử l&yacute; nhanh gọn mọi t&aacute;c vụ c&ocirc;ng việc, gi&uacute;p bạn chiến những trận game đầy kịch t&iacute;nh một c&aacute;ch mượt m&agrave;, trơn tru.</span></span></p>\r\n\r\n<p><span style=\"font-family:Times New Roman,Times,serif;\"><span style=\"font-size:20px;\">&bull;&nbsp;<a href=\"https://www.thegioididong.com/laptop-lenovo-gaming-legion\" target=\"_blank\" title=\"Xem thêm laptop Lenovo Gaming Legion đang bán tại thegioididong.com\">Laptop Lenovo Gaming Legion</a>&nbsp;sở hữu m&agrave;n h&igrave;nh&nbsp;<strong>15.6 inch&nbsp;</strong>với độ phủ m&agrave;u&nbsp;<strong>100% sRGB</strong>, c&ocirc;ng nghệ chống ch&oacute;i&nbsp;<strong>Anti Glare&nbsp;</strong>v&agrave; độ s&aacute;ng&nbsp;<strong>300 nits</strong>&nbsp;cho bạn chất lượng h&igrave;nh ảnh ch&acirc;n thực, sắc n&eacute;t.</span></span></p>\r\n\r\n<p><span style=\"font-family:Times New Roman,Times,serif;\"><span style=\"font-size:20px;\">&bull;&nbsp; Tần số qu&eacute;t&nbsp;<strong>165 Hz&nbsp;</strong>mang đến&nbsp;trải nghiệm h&igrave;nh ảnh tuyệt vời, hạn chế tối đa giật, x&eacute; h&igrave;nh, giảm t&aacute;c hại đến mắt của bạn khi chơi game hay nh&igrave;n m&agrave;n h&igrave;nh qu&aacute; l&acirc;u.</span></span></p>\r\n\r\n<p><span style=\"font-family:Times New Roman,Times,serif;\"><span style=\"font-size:20px;\">&bull;&nbsp;<strong>RAM 8 GB&nbsp;</strong>đ&aacute;p ứng tốt nhu cầu đa nhiệm,&nbsp;ổ&nbsp;cứng&nbsp;<strong>SSD 512 GB</strong>&nbsp;cho kh&ocirc;ng gian lưu trữ dữ liệu đủ d&ugrave;ng. Hỗ trợ người d&ugrave;ng th&aacute;o lắp, n&acirc;ng cấp dễ d&agrave;ng khi cần.</span></span></p>\r\n\r\n<p><span style=\"font-family:Times New Roman,Times,serif;\"><span style=\"font-size:20px;\">&bull;&nbsp;Trọng lượng&nbsp;<strong>2.4 kg&nbsp;</strong>v&agrave; mỏng&nbsp;<strong>25.75 mm</strong>,&nbsp;<a href=\"https://www.thegioididong.com/laptop-lenovo\" target=\"_blank\" title=\"Một số laptop Lenovo được kinh doanh tại thegioididong.com\">laptop Lenovo</a>&nbsp;được chế t&aacute;c từ&nbsp;<strong>chất liệu nhựa</strong>&nbsp;bền bỉ, sẵn s&agrave;ng c&ugrave;ng bạn đi đến bất kỳ đ&acirc;u.</span></span></p>\r\n\r\n<p><span style=\"font-family:Times New Roman,Times,serif;\"><span style=\"font-size:20px;\">&bull;&nbsp;<a href=\"https://www.thegioididong.com/laptop\" target=\"_blank\" title=\"Một số laptop được kinh doanh tại thegioididong.com\">Laptop</a>&nbsp;c&ograve;n được trang bị&nbsp;<strong>đ&egrave;n nền</strong>&nbsp;đơn sắc tiện lợi&nbsp;ở b&agrave;n ph&iacute;m<strong>&nbsp;</strong>c&ugrave;ng c&aacute;c cổng kết nối như USB 3.2, 2 cổng USB Type-C, 3 cổng USB 3.2, HDMI v&agrave; LAN (RJ45) hỗ trợ tốt hơn cho nhu cầu truyền xuất th&ocirc;ng tin.</span></span></p>\r\n\r\n<p><span style=\"font-family:Times New Roman,Times,serif;\"><span style=\"font-size:20px;\">&bull;&nbsp;Sự kết hợp của c&ocirc;ng nghệ&nbsp;<strong>Nahimic Audio&nbsp;</strong>v&agrave;&nbsp;<strong>Stereo speakers&nbsp;</strong>mang đến chất &acirc;m to r&otilde;, cho bạn cảm nhận được kh&ocirc;ng gian, vị tr&iacute; của từng &acirc;m thanh.</span></span></p>\r\n', 'upload/images/lenovo-gaming-legion-5-15ith6-i7-82jk00fnvn-180322-100552-600x600.jpg', 0, 5, 0),
(49, 'Laptop Lenovo IdeaPad Gaming 3 15IHU6 i5 ', 20990000, 18890000, 99, 'Gam màu đen huyền bí cùng những chi tiết góc cạnh hầm hố làm nên chiếc laptop Lenovo IdeaPad Gaming 3 15IHU6 i5 (82K10178VN) chuẩn laptop gaming với cấu hình mạnh mẽ của chip Intel Gen 11 và card NVIDIA GTX sẽ làm hài lòng nhu cầu chơi game giải trí cho bạn.', '<h3>Gam m&agrave;u đen huyền b&iacute; c&ugrave;ng những chi tiết g&oacute;c cạnh hầm hố l&agrave;m n&ecirc;n chiếc&nbsp;<a href=\"https://www.thegioididong.com/laptop/lenovo-ideapad-gaming-3-15ihu6-i5-82k10178vn\" target=\"_blank\" title=\"Laptop Lenovo IdeaPad Gaming 3 15IHU6 i5 (82K10178VN) đang bán tại thegioididong.com\">laptop Lenovo IdeaPad Gaming 3 15IHU6 i5 (82K10178VN)</a>&nbsp;chuẩn&nbsp;<a href=\"https://www.thegioididong.com/laptop?g=laptop-gaming\" target=\"_blank\" title=\"Xem thêm laptop gaming đang bán tại thegioididong.com\">laptop gaming</a>&nbsp;với cấu h&igrave;nh mạnh mẽ của chip Intel Gen 11 v&agrave; card NVIDIA GTX sẽ l&agrave;m h&agrave;i l&ograve;ng nhu cầu chơi game giải tr&iacute; cho bạn.</h3>\r\n\r\n<p>&bull;&nbsp;<a href=\"https://www.thegioididong.com/laptop-lenovo\" target=\"_blank\" title=\"Xem thêm laptop Lenovo đang bán tại thegioididong.com\">Laptop Lenovo</a>&nbsp;mang trong m&igrave;nh&nbsp;<strong>CPU Intel Core i5 11300H</strong>&nbsp;mạnh mẽ c&ugrave;ng card m&agrave;n h&igrave;nh rời&nbsp;<strong>NVIDIA GTX 1650 4 GB</strong>&nbsp;sẵn s&agrave;ng c&acirc;n c&aacute;c tựa game hiện h&agrave;nh: GTA V, CS:GO, LOL,... mượt m&agrave; cũng như t&aacute;c vụ Office, chỉnh sửa thiết kế ảnh Adobe với hiệu suất ổn định.</p>\r\n\r\n<p>&bull;&nbsp;<a href=\"https://www.thegioididong.com/laptop\" target=\"_blank\" title=\"Xem thêm laptop đang bán tại thegioididong.com\">Laptop</a>&nbsp;sở hữu&nbsp;<strong>RAM 8 GB&nbsp;</strong>mang lại khả năng đa nhiệm tốt c&aacute;c t&aacute;c vụ nhẹ, chơi game ổn định, khuyến kh&iacute;ch bạn n&ecirc;n n&acirc;ng cấp RAM để m&aacute;y chạy hết c&ocirc;ng suất.&nbsp;<strong>SSD 512 GB</strong>&nbsp;cho kh&ocirc;ng gian lưu trữ vừa đủ, khởi động ứng dụng, m&aacute;y t&iacute;nh nhanh.</p>\r\n\r\n<p>&bull; M&agrave;n h&igrave;nh&nbsp;<a href=\"https://www.thegioididong.com/laptop-lenovo-ideapad-gaming\" target=\"_blank\" title=\"Xem thêm laptop Lenovo IdeaPad Gaming đang bán tại thegioididong.com\">laptop Lenovo IdeaPad Gaming</a>&nbsp;c&oacute; k&iacute;ch thước&nbsp;<strong>15.6 inch</strong>&nbsp;c&ugrave;ng tần số qu&eacute;t&nbsp;<strong>120 Hz</strong>&nbsp;bổ trợ cho trải nghiệm h&igrave;nh ảnh chơi game, hạn chế t&igrave;nh trạng x&eacute; h&igrave;nh.</p>\r\n', 'upload/images/lenovo-ideapad-gaming-3-15ihu6-i5-82k10178vn-030522-104052-600x600.jpg', 0, 5, 0),
(50, 'Laptop Acer Nitro 5 Gaming ', 26490000, 22510000, 100, 'Acer Nitro 5 Gaming AN515 57 54MV i5 (NH.QENSV.003) mang trên mình sức mạnh từ con chip Intel thế hệ 11, card rời cho khả năng tối ưu hoá mọi tác vụ từ đồ hoạ đến game, hứa hẹn sẽ mang đến những trải nghiệm tuyệt vời khó quên cho người dùng.', '<h3><span style=\"font-size:20px;\"><span style=\"font-family:Times New Roman,Times,serif;\">Th&ocirc;ng tin sản phẩm</span></span></h3>\r\n\r\n<h3><span style=\"font-size:20px;\"><span style=\"font-family:Times New Roman,Times,serif;\"><a href=\"https://www.thegioididong.com/laptop/acer-nitro-5-gaming-an515-57-54mv-i5-nhqensv003#top-tskt\" target=\"_blank\" title=\"Acer Nitro 5 Gaming AN515 57 54MV i5 (NH.QENSV.003)\">Acer Nitro 5 Gaming AN515 57 54MV i5 (NH.QENSV.003)</a>&nbsp;mang tr&ecirc;n m&igrave;nh sức mạnh từ con chip&nbsp;<a href=\"https://www.thegioididong.com/laptop-cpu-intel-gen-11\" target=\"_blank\" title=\"Xem thêm laptop CPU gen 11 đang bán tại thegioididong.com\">Intel thế hệ 11</a>, card rời cho khả năng tối ưu ho&aacute; mọi t&aacute;c vụ từ đồ hoạ đến game, hứa hẹn sẽ mang đến những trải nghiệm tuyệt vời kh&oacute; qu&ecirc;n cho người d&ugrave;ng.</span></span></h3>\r\n\r\n<h3><span style=\"font-size:20px;\"><span style=\"font-family:Times New Roman,Times,serif;\">Hiệu năng mạnh mẽ</span></span></h3>\r\n\r\n<p><span style=\"font-size:20px;\"><span style=\"font-family:Times New Roman,Times,serif;\"><a href=\"https://www.thegioididong.com/laptop-acer-nitro\" target=\"_blank\" title=\"Xem thêm laptop Acer Nitro đang bán tại thegioididong.com\">Laptop Acer Nitro</a>&nbsp;5 được trang bị con chip&nbsp;<a href=\"https://www.thegioididong.com/laptop?g=core-i5\" target=\"_blank\" title=\"Xem thêm laptop intel core i5 đang bán tại thegioididong.com\">Intel Core i5</a>&nbsp;<strong>Tiger Lake 11400H</strong>&nbsp;đạt sức mạnh vượt trội với&nbsp;<strong>6 nh&acirc;n 12 luồng</strong>&nbsp;c&oacute; xung nhịp trung b&igrave;nh&nbsp;<strong>2.7 GHz</strong>&nbsp;v&agrave; Turbo Boost &eacute;p xung tối đa l&ecirc;n đến&nbsp;<strong>4.5 GHz</strong>&nbsp;cho khả năng xử l&yacute; mọi t&aacute;c vụ văn ph&ograve;ng một c&aacute;ch ấn lượng hay thỏa m&atilde;n với mọi tựa game phổ biến hiện nay.</span></span></p>\r\n', 'upload/images/acer-nitro-5-gaming-an515-57-54mv-i5-nhqensv003-2-1.jpg', 0, 8, 0),
(51, 'Laptop Acer Aspire A514 54 511G i5 1135G7/8GB/1TB SSD/Win11 (NX.A28SV.009)', 19990000, 17990000, 96, 'Một sự lựa chọn mới mẻ nằm trong phân khúc tầm trung dành cho mọi đối tượng đặc biệt là học sinh, sinh viên hay dân văn phòng chính là chiếc laptop Acer Aspire A514 54 511G i5 (NX.A28SV.009) với hiệu năng mạnh mẽ đến từ con chip Intel thế hệ 11 cùng ổ cứng SSD lên đến 1 TB. ', '<h3>Một sự lựa chọn mới mẻ nằm trong ph&acirc;n kh&uacute;c tầm trung d&agrave;nh cho mọi đối tượng đặc biệt l&agrave; học sinh, sinh vi&ecirc;n hay d&acirc;n văn ph&ograve;ng ch&iacute;nh l&agrave; chiếc&nbsp;<a href=\"https://www.thegioididong.com/laptop/acer-aspire-a514-54-511g-i5-nxa28sv009\" target=\"_blank\" title=\"Laptop Acer Aspire A514 54 511G i5 (NX.A28SV.009)\">laptop Acer Aspire A514 54 511G i5 (NX.A28SV.009)</a>&nbsp;với hiệu năng mạnh mẽ đến từ con chip&nbsp;<strong>Intel thế hệ 11</strong>&nbsp;c&ugrave;ng ổ cứng SSD l&ecirc;n đến&nbsp;<strong>1 TB</strong>.&nbsp;</h3>\r\n\r\n<h3>Ổn định mọi t&aacute;c vụ văn ph&ograve;ng với con chip Intel Gen 11 mạnh mẽ&nbsp;</h3>\r\n\r\n<p>Chiếc&nbsp;<a href=\"https://www.thegioididong.com/laptop-acer\" target=\"_blank\" title=\"Xem thêm các mẫu Laptop Acer hiện đang kinh doanh tại thegioididong.com\">laptop Acer</a>&nbsp;n&agrave;y được trang bị con chip&nbsp;<strong>Intel Core i5 Tiger Lake 1135G7</strong>&nbsp;c&ugrave;ng card t&iacute;ch hợp&nbsp;<strong>Intel Iris Xe Graphics</strong>&nbsp;mang đến hiệu năng l&agrave;m việc tr&ecirc;n c&aacute;c ứng dụng học tập, văn ph&ograve;ng của Office mượt m&agrave; cũng như gi&uacute;p bạn chỉnh sửa h&igrave;nh ảnh, thiết kế đồ họa hay chơi c&aacute;c tựa game giải tr&iacute; đ&igrave;nh đ&aacute;m như LOL ở mức ổn định. M&igrave;nh đ&atilde; thử test con game quốc d&acirc;n&nbsp;<a href=\"https://www.thegioididong.com/game-app/lien-minh-huyen-thoai-game-moba-pho-bien-nhat-the-gioi-221941\" target=\"_blank\" title=\"Link tải game Liên Minh Huyền Thoại\">Li&ecirc;n Minh Huyền Thoại</a>&nbsp;tr&ecirc;n chiếc m&aacute;y n&agrave;y v&agrave; cảm thấy c&aacute;c kỹ năng của con tướng cũng như qu&aacute; tr&igrave;nh tốc biến, biến về,... trong game chỉ nằm ở mức tạm chấp nhận được, n&ecirc;n nếu bạn chỉ chơi game để giải tr&iacute; vui vẻ th&igrave;&nbsp; vẫn ổn nha.</p>\r\n', 'upload/images/acer-aspire-a514-54-511g-i5-nxa28sv009-1.jpg', 0, 8, 0);
INSERT INTO `tbl_product` (`pro_id`, `pro_name`, `original_price`, `promotional_price`, `quantity`, `short_desc`, `detail_desc`, `pro_image`, `cat_id`, `brand_id`, `status_pro`) VALUES
(52, 'Laptop Lenovo V15 G2 ITL i5 1135G7/8GB/512GB', 16890000, 16390000, 90, 'Laptop Lenovo V15 G2 ITL i5 (82KB00R5VN) có thiết kế gam màu đen chủ đạo, viền màn hình mỏng, các chi tiết giả vân cùng hiệu năng mạnh mẽ của dòng chip Intel thế hệ 11, đáp ứng tốt các tác vụ học tập - văn phòng dành cho học sinh, sinh viên và nhân viên văn phòng.', '<h3><span style=\"font-size:20px;\"><span style=\"font-family:Times New Roman,Times,serif;\"><a href=\"https://www.thegioididong.com/laptop/lenovo-v15-g2-itl-i5-82kb00r5vn\" target=\"_blank\" title=\"Laptop Lenovo V15 G2 ITL i5 (82KB00R5VN) đang bán tại thegioididong.com\">Laptop Lenovo V15 G2 ITL i5 (82KB00R5VN)</a>&nbsp;c&oacute; thiết kế gam m&agrave;u đen chủ đạo, viền m&agrave;n h&igrave;nh mỏng, c&aacute;c chi tiết giả v&acirc;n c&ugrave;ng hiệu năng mạnh mẽ của d&ograve;ng chip Intel thế hệ 11, đ&aacute;p ứng tốt c&aacute;c t&aacute;c vụ&nbsp;<a href=\"https://www.thegioididong.com/laptop?g=hoc-tap-van-phong\" target=\"_blank\" title=\"Xem thêm laptop học tập - văn phòng đang bán tại thegioididong.com\">học tập - văn ph&ograve;ng</a>&nbsp;d&agrave;nh cho học sinh, sinh vi&ecirc;n v&agrave; nh&acirc;n vi&ecirc;n văn ph&ograve;ng.</span></span></h3>\r\n\r\n<h3><span style=\"font-size:20px;\"><span style=\"font-family:Times New Roman,Times,serif;\">Thiết kế cứng c&aacute;p, tối giản nhưng tinh tế</span></span></h3>\r\n\r\n<p><span style=\"font-size:20px;\"><span style=\"font-family:Times New Roman,Times,serif;\">Ấn tượng đầu ti&ecirc;n của m&igrave;nh về chiếc m&aacute;y n&agrave;y l&agrave; một m&agrave;u đen to&agrave;n th&acirc;n, ngoại trừ phần logo Lenovo c&oacute; nền xanh dương. Cảm gi&aacute;c cầm nắm kh&aacute; tốt, chắc tay, tuy nhi&ecirc;n m&aacute;y hơi b&aacute;m v&acirc;n tay một ch&uacute;t n&ecirc;n m&igrave;nh khuy&ecirc;n bạn thường xuy&ecirc;n vệ sinh m&aacute;y để c&oacute; vẻ ngo&agrave;i đẹp nhất.</span></span></p>\r\n\r\n<div class=\"ddict_btn\" style=\"top: 118px; left: 623px;\"><span style=\"font-size:20px;\"><span style=\"font-family:Times New Roman,Times,serif;\"><img src=\"chrome-extension://bpggmmljdiliancllaapiggllnkbjocb/logo/48.png\" /></span></span></div>\r\n', 'upload/images/lenovo-v15-g2-itl-i5-82kb00r5vn-2.jpg', 0, 5, 0),
(53, 'Máy tính bảng Samsung Galaxy Tab S8 ', 20990000, 18990000, 99, 'Samsung Galaxy Tab S8 ra mắt và vẫn giữ được đặc trưng của dòng Galaxy Tab S với cấu hình mạnh mẽ, màn hình hiển thị ổn cùng khả năng hỗ trợ bút S Pen hỗ trợ học tập làm việc tốt hơn.', '<h3><span style=\"font-family:Times New Roman,Times,serif;\"><span style=\"font-size:20px;\"><a href=\"https://www.thegioididong.com/may-tinh-bang/samsung-galaxy-tab-s8\" target=\"_blank\" title=\"Tham khảo thông tin sản phẩm tại Thế Giới Di Động\">Samsung Galaxy Tab S8</a>&nbsp;ra mắt v&agrave; vẫn giữ được đặc trưng của d&ograve;ng&nbsp;<a href=\"https://www.thegioididong.com/may-tinh-bang-samsung-galaxy-tab-s\" target=\"_blank\" title=\"Tham khảo thông tin sản phẩm tại Thế Giới Di Động\">Galaxy Tab S</a>&nbsp;với cấu h&igrave;nh mạnh mẽ, m&agrave;n h&igrave;nh hiển thị ổn c&ugrave;ng khả năng hỗ trợ b&uacute;t S Pen hỗ trợ học tập l&agrave;m việc tốt hơn.</span></span></h3>\r\n\r\n<h3><span style=\"font-family:Times New Roman,Times,serif;\"><span style=\"font-size:20px;\">Thiết kế đặc trưng Galaxy Tab S</span></span></h3>\r\n\r\n<p><span style=\"font-family:Times New Roman,Times,serif;\"><span style=\"font-size:20px;\">X&eacute;t về mặt ngoại h&igrave;nh th&igrave; Tab S8 thừa hưởng những thiết kế nổi bật của&nbsp;<a href=\"https://www.thegioididong.com/may-tinh-bang/samsung-galaxy-tab-s7\" target=\"_blank\" title=\"Tham khảo thông tin sản phẩm Samsung Galaxy Tab S7\">Tab S7</a>, về tổng thể th&igrave; Tab S8 l&agrave; phi&ecirc;n bản n&acirc;ng cấp phần cứng b&ecirc;n trong so với Tab S7.</span></span></p>\r\n', 'upload/images/samsung-galaxy-tab-s8-1-2.jpg', 2, 1, 0),
(55, 'Máy tính bảng iPad Air 4 Wifi Cellular 64GB (2020)', 16490000, 15490000, 95, 'Trong sự kiện Time Flies, Apple đã giới thiệu đến người dùng chiếc iPad Air 4 Wifi Cellular 64GB (2020) với thiết kế tương tự iPad Pro, ngoại hình của Air 4 đã được làm mới so với thế hệ iPad Air 3, cấu hình được nâng cấp mạnh mẽ cùng với nhiều cải tiến đáng giá. ', '<h3><span style=\"font-size:20px;\"><span style=\"font-family:Times New Roman,Times,serif;\">Trong sự kiện Time Flies,&nbsp;<a href=\"https://www.thegioididong.com/apple\" target=\"_blank\" title=\"Tham khảo các sản phẩm Apple chính hãng kinh doanh tại thegioididong.com \">Apple&nbsp;</a>đ&atilde; giới thiệu đến người d&ugrave;ng chiếc&nbsp;<a href=\"https://www.thegioididong.com/may-tinh-bang/ipad-air-4-wifi-cellular-64gb-2020\" target=\"_blank\" title=\"Tham khảo iPad Air 4 Wifi Cellular 64GB (2020) kinh doanh tại thegioididong.com\">iPad Air 4 Wifi Cellular 64GB (2020)</a>&nbsp;với thiết kế tương tự&nbsp;<a href=\"https://www.thegioididong.com/may-tinh-bang-apple-ipad-pro\" target=\"_blank\" title=\"Tham khảo iPad Pro kinh doanh tại thegioididong.com\">iPad Pro</a>, ngoại h&igrave;nh của Air 4 đ&atilde; được l&agrave;m mới so với thế hệ&nbsp;<a href=\"https://www.thegioididong.com/may-tinh-bang/ipad-air-105-inch-wifi-2019\" target=\"_blank\" title=\"Tham khảo thông tin iPad Air 3 tại thegioididong.com \">iPad Air 3</a>, cấu h&igrave;nh được n&acirc;ng cấp mạnh mẽ c&ugrave;ng với nhiều cải tiến đ&aacute;ng gi&aacute;.&nbsp;</span></span></h3>\r\n\r\n<h3><span style=\"font-size:20px;\"><span style=\"font-family:Times New Roman,Times,serif;\">M&agrave;n h&igrave;nh&nbsp;Liquid Retina hiển thị m&agrave;u sắc cực chuẩn</span></span></h3>\r\n\r\n<p><span style=\"font-size:20px;\"><span style=\"font-family:Times New Roman,Times,serif;\">iPad Air 4 được trang bị m&agrave;n h&igrave;nh Liquid Retina k&iacute;ch thước 10.9 inch c&oacute; độ ph&acirc;n giải 1640 x 2360 Pixels,&nbsp;được t&iacute;ch hợp c&ocirc;ng nghệ&nbsp;True Tone c&ugrave;ng với dải m&agrave;u P3 chuẩn điện ảnh sẽ mang lại chất lượng hiển thị cao, m&agrave;u sắc tự nhi&ecirc;n gần như s&aacute;t với m&agrave;u sắc gốc.&nbsp;</span></span></p>\r\n', 'upload/images/ipad-air-4-grey-1020x680-org.jpg', 2, 9, 0),
(56, 'Máy tính bảng Xiaomi Pad 5 256GB ', 10990000, 10490000, 91, 'Xiaomi cho ra mắt Xiaomi Pad 5 256GB, chiếc máy tính bảng có thiết kế mỏng nhẹ, thời trang cùng cấu hình hàng đầu đáp ứng hết các nhu cầu của bạn, dù là học tập, giải trí hay làm việc đều trở nên vô cùng trơn tru.', '<h3><span style=\"font-size:20px;\"><span style=\"font-family:Times New Roman,Times,serif;\"><a href=\"https://www.thegioididong.com/may-tinh-bang-xiaomi\" target=\"_blank\" title=\"Tham khảo giá các dòng máy tính bảng Xiaomi chính hãng\">Xiaomi</a>&nbsp;cho ra mắt&nbsp;<a href=\"https://www.thegioididong.com/may-tinh-bang/xiaomi-pad-5-256gb\" target=\"_blank\" title=\"Tham khảo máy tính bảng Xiaomi Pad 5 256 GB chính hãng giá tốt tại TGDĐ\">Xiaomi Pad 5 256GB</a>, chiếc&nbsp;<a href=\"https://www.thegioididong.com/may-tinh-bang\" target=\"_blank\" title=\"Tham khảo các dòng máy tính bảng tablet chính hãng cao cấp tại TGDĐ\">m&aacute;y t&iacute;nh bảng</a>&nbsp;c&oacute; thiết kế mỏng nhẹ, thời trang c&ugrave;ng cấu h&igrave;nh h&agrave;ng đầu đ&aacute;p ứng hết c&aacute;c nhu cầu của bạn, d&ugrave; l&agrave; học tập, giải tr&iacute; hay l&agrave;m việc đều trở n&ecirc;n v&ocirc; c&ugrave;ng trơn tru.</span></span></h3>\r\n\r\n<h3><span style=\"font-size:20px;\"><span style=\"font-family:Times New Roman,Times,serif;\">Giải tr&iacute; cực đ&atilde; với m&agrave;n h&igrave;nh si&ecirc;u n&eacute;t</span></span></h3>\r\n\r\n<p><span style=\"font-size:20px;\"><span style=\"font-family:Times New Roman,Times,serif;\">M&aacute;y t&iacute;nh bảng Xiaomi Pad 5 được trang bị một m&agrave;n h&igrave;nh si&ecirc;u ấn tượng với tấm nền IPS LCD k&iacute;ch thước lớn l&ecirc;n đến 11 inch, hỗ trợ độ ph&acirc;n giải&nbsp;WQHD+ cực n&eacute;t, mang đến khả năng hiển thị sống động, cho bạn đắm ch&igrave;m trong c&aacute;c kh&ocirc;ng gian giải tr&iacute;.</span></span></p>\r\n', 'upload/images/xiaomi-pad-5-1.jpg', 2, 4, 0),
(57, 'Tai nghe Bluetooth AirPods 2 Wireless charge Apple MRXJ2', 5590000, 3490000, 79, 'AirPods 2 - một sản phẩm đã từng làm mưa làm gió trước khi người “anh em” AirPods Pro ra mắt. Đến thời điểm hiện tại, mặc dù không còn hot như Airpods Pro, nhưng Tai nghe Bluetooth AirPods 2 Wireless charge Apple MRXJ2 vẫn còn nhiều đặc điểm khiến sản phẩm này trở nên hấp dẫn và vẫn giữ được vị trí của mình với một lượng fan nhất định.', '<h3><span style=\"font-family:Times New Roman,Times,serif;\"><span style=\"font-size:20px;\">AirPods 2 - một sản phẩm đ&atilde; từng l&agrave;m mưa l&agrave;m gi&oacute; trước khi người &ldquo;anh em&rdquo; AirPods Pro ra mắt. Đến thời điểm hiện tại, mặc d&ugrave; kh&ocirc;ng c&ograve;n hot như Airpods Pro, nhưng&nbsp;<a href=\"https://www.thegioididong.com/tai-nghe/tai-nghe-bluetooth-airpods-2-wireless-charge-mrxj2\" target=\"_blank\" title=\"Tai nghe Bluetooth AirPods 2 Wireless charge Apple MRXJ2\">Tai nghe Bluetooth AirPods 2 Wireless charge Apple MRXJ2</a>&nbsp;vẫn c&ograve;n nhiều đặc điểm khiến sản phẩm n&agrave;y trở n&ecirc;n hấp dẫn v&agrave; vẫn giữ được vị tr&iacute; của m&igrave;nh với một lượng fan nhất định.</span></span></h3>\r\n\r\n<h3><span style=\"font-family:Times New Roman,Times,serif;\"><span style=\"font-size:20px;\">Vẫn l&agrave; mẫu thiết kế bắt mắt, quen thuộc dễ nhận biết của nh&agrave; T&aacute;o</span></span></h3>\r\n\r\n<div class=\"ddict_btn\" style=\"top: 22px; left: 639.75px;\"><img src=\"chrome-extension://bpggmmljdiliancllaapiggllnkbjocb/logo/48.png\" /></div>\r\n', 'upload/images/airpods-2-wireless-charge-apple-mrxj2-1-org.jpg', 4, 9, 0),
(58, 'Tai nghe Bluetooth True Wireless Galaxy Buds Pro Bạc', 4990000, 2495000, 88, 'Tai nghe Bluetooth True Wireless Samsung Buds Pro sở hữu vẻ ngoài đẹp mắt thời thượng với hai màu đen và trắng. Thiết kế mới trên hình dạng tai nghe cổ điển, có khả năng làm giảm bớt sự khó chịu khi sử dụng tai nghe trong nhiều giờ và tai nghe cũng nằm chắc chắn phía trong tai khi bạn tập luyện hay vận động. Đồng thời, các lỗ thoát khí giúp cân bằng áp suất trong tai và tăng lưu lượng không khí, tạo cảm giác mềm mại dễ chịu khi sử dụng.', '<h3><span style=\"font-size:20px;\"><span style=\"font-family:Times New Roman,Times,serif;\">Thiết kế sang trọng, thời thượng c&ugrave;ng hộp sạc đồng nhất m&agrave;u sắc đi k&egrave;m</span></span></h3>\r\n\r\n<p><span style=\"font-size:20px;\"><span style=\"font-family:Times New Roman,Times,serif;\"><a href=\"https://www.thegioididong.com/tai-nghe/bluetooth-true-wireless-galaxy-buds-pro-bac\" target=\"_blank\" title=\"Tai nghe Bluetooth True Wireless Samsung Buds Pro\">Tai nghe Bluetooth True Wireless Samsung Buds Pro</a>&nbsp;sở hữu vẻ ngo&agrave;i đẹp mắt thời thượng với hai m&agrave;u đen v&agrave; trắng. Thiết kế&nbsp;mới tr&ecirc;n h&igrave;nh dạng tai nghe cổ điển, c&oacute; khả năng l&agrave;m giảm bớt sự kh&oacute; chịu khi sử dụng tai nghe trong nhiều giờ v&agrave; tai nghe cũng nằm chắc chắn ph&iacute;a trong tai khi bạn tập luyện hay vận động. Đồng thời, c&aacute;c lỗ tho&aacute;t kh&iacute; gi&uacute;p c&acirc;n bằng &aacute;p suất trong tai v&agrave; tăng lưu lượng kh&ocirc;ng kh&iacute;, tạo cảm gi&aacute;c mềm mại dễ chịu khi sử dụng.</span></span></p>\r\n\r\n<p><span style=\"font-size:20px;\"><span style=\"font-family:Times New Roman,Times,serif;\">Tai nghe c&oacute; thiết kế nhỏ gọn n&ecirc;n bạn dễ d&agrave;ng bỏ v&agrave;o t&uacute;i x&aacute;ch, balo v&agrave; mang theo b&ecirc;n m&igrave;nh di chuyển mọi nơi.&nbsp;Ngo&agrave;i ra, c&oacute; k&egrave;m theo n&uacute;m tai nghe với ba k&iacute;ch thước cho người d&ugrave;ng dễ thay đổi sao cho ph&ugrave; hợp.</span></span></p>\r\n\r\n<div class=\"ddict_btn\" style=\"top: 22px; left: 623px;\"><img src=\"chrome-extension://bpggmmljdiliancllaapiggllnkbjocb/logo/48.png\" /></div>\r\n', 'upload/images/tai-nghe-bluetooth-true-wireless-galaxy-buds-pro-bac-1-org.jpg', 4, 1, 0),
(66, 'Điện thoại Samsung Galaxy S22 5G 256GB ', 23490000, 23190000, 98, 'Galaxy S22 một trong những cái tên được nhiều người dùng quan tâm trong bộ 3 S22 series của nhà Samsung. Có thiết kế mỏng nhẹ, mặt lưng kính sang trọng cùng một cấu hình vô cùng mạnh mẽ, hứa hẹn đây sẽ là chiếc smartphone đáp ứng tốt nhiều nhu cầu của bạn với mức giá dễ tiếp cận.', '<h3><span style=\"font-size:20px;\"><span style=\"font-family:Times New Roman,Times,serif;\"><a href=\"https://www.thegioididong.com/dtdd/samsung-galaxy-s22-256gb\" target=\"_blank\" title=\"Tham khảo điện thoại Galaxy S22+ 256GB kinh doanh tại Thegioididong.com\">Galaxy S22</a>&nbsp;một trong những c&aacute;i t&ecirc;n được nhiều người d&ugrave;ng quan t&acirc;m trong bộ 3 S22 series của nh&agrave;&nbsp;<a href=\"https://www.thegioididong.com/samsung\" target=\"_blank\" title=\"Tham khảo sản phẩm Samsung kinh doanh tại Thegioididong.com\">Samsung</a>. C&oacute; thiết kế mỏng nhẹ, mặt lưng k&iacute;nh sang trọng c&ugrave;ng một cấu h&igrave;nh v&ocirc; c&ugrave;ng mạnh mẽ, hứa hẹn đ&acirc;y sẽ l&agrave; chiếc smartphone đ&aacute;p ứng tốt nhiều nhu cầu của bạn với mức gi&aacute; dễ tiếp cận.</span></span></h3>\r\n\r\n<p><span style=\"font-size:20px;\"><span style=\"font-family:Times New Roman,Times,serif;\">Galaxy S22 cung cấp 3 camera sau, gồm camera ch&iacute;nh 50 MP,&nbsp;<a href=\"https://www.thegioididong.com/dtdd-camera-goc-rong\" target=\"_blank\" title=\"Tham khảo điện thoại có camera góc siêu rộng tại Thegioididong.com\">camera g&oacute;c si&ecirc;u rộng</a>&nbsp;12 MP v&agrave; cuối c&ugrave;ng l&agrave;&nbsp;<a href=\"https://www.thegioididong.com/dtdd-camera-zoom\" target=\"_blank\" title=\"Tham khảo điện thoại có camera tele tại Thegioididong.com\">camera tele</a>&nbsp;10 MP. Trong đ&oacute;, camera ch&iacute;nh c&oacute; cảm biến điểm ảnh lớn nhất c&ugrave;ng Lớp K&iacute;nh Si&ecirc;u Trong giảm l&oacute;e s&aacute;ng v&eacute;n m&agrave;n mọi chi tiết ẩn s&acirc;u, biến những t&aacute;c phẩm về đ&ecirc;m của bạn trở n&ecirc;n nổi bật hơn.</span></span></p>\r\n\r\n<div class=\"ddict_btn\" style=\"top: 14px; left: 629.931px;\"><img src=\"chrome-extension://bpggmmljdiliancllaapiggllnkbjocb/logo/48.png\" /></div>\r\n', 'upload/images/Galaxy-S22-Plus-White-600x600.jpg', 1, 1, 0),
(67, 'Điện thoại iPhone 11 64GB', 11650000, 9990000, 86, 'Apple đã chính thức trình làng bộ 3 siêu phẩm iPhone 11, trong đó phiên bản iPhone 11 64GB có mức giá rẻ nhất nhưng vẫn được nâng cấp mạnh mẽ như iPhone Xr ra mắt trước đó.', '<h3><span style=\"font-size:20px;\"><span style=\"font-family:Times New Roman,Times,serif;\">Apple đ&atilde; ch&iacute;nh thức tr&igrave;nh l&agrave;ng bộ 3 si&ecirc;u phẩm iPhone 11, trong đ&oacute; phi&ecirc;n bản&nbsp;<a href=\"https://www.topzone.vn/iphone/iphone-11\" target=\"_blank\" title=\"Tham khảo thông tin sản phẩm tại TopZone.vn\">iPhone 11 64GB</a>&nbsp;c&oacute; mức gi&aacute; rẻ nhất nhưng vẫn được n&acirc;ng cấp mạnh mẽ như&nbsp;<a href=\"https://www.thegioididong.com/dtdd/iphone-xr-128gb\" target=\"_blank\" title=\"Tham khảo điện thoại iPhone Xr chính hãng\">iPhone Xr</a>&nbsp;ra mắt&nbsp;trước đ&oacute;.</span></span></h3>\r\n\r\n<h3><span style=\"font-size:20px;\"><span style=\"font-family:Times New Roman,Times,serif;\">N&acirc;ng cấp mạnh mẽ về camera</span></span></h3>\r\n\r\n<p><span style=\"font-size:20px;\"><span style=\"font-family:Times New Roman,Times,serif;\">N&oacute;i về n&acirc;ng cấp th&igrave; camera ch&iacute;nh l&agrave; điểm c&oacute; nhiều cải tiến nhất tr&ecirc;n thế hệ&nbsp;<a href=\"https://www.thegioididong.com/dtdd-apple-iphone\" target=\"_blank\" title=\"Tham khảo giá điện thoại smartphone iPhone chính hãng\">iPhone</a>&nbsp;mới.</span></span></p>\r\n\r\n<div class=\"ddict_btn\" style=\"top: -3px; left: 634.222px;\"><img src=\"chrome-extension://bpggmmljdiliancllaapiggllnkbjocb/logo/48.png\" /></div>\r\n', 'upload/images/iphone-xi-xanhla-600x600.jpg', 1, 2, 0),
(68, 'Tai nghe Bluetooth True Wireless Galaxy Buds Pro Bạc', 4990000, 2495000, 96, 'Nâng tầm trải nghiệm âm và chất lượng cuộc gọi với chống ồn chủ động (ANC).\r\nKết nối không dây Bluetooth 5.0 dễ dàng với các thiết bị ngoài, đường truyền ổn định.\r\nChuẩn âm thanh studio với loa 2 chiều AKG mạnh mẽ.\r\nTận hưởng âm thanh vòm lôi cuốn, chuẩn điện ảnh từ 360 Audio.\r\nĐàm thoại rõ ràng với hệ thống 3 mic và bộ phận thu nhận giọng nói (Voice Pickup Unit).\r\nLoa 2 chiều (loa trầm 11mm, loa bổng 6.5mm).\r\nKhả năng kháng nước hiệu quả cùng xếp hạng kháng nước IPX7.\r\nThời gian sử dụng 5 giờ và 13 giờ cùng hộp sạc (bật chống ồn), sử dụng 8 giờ và 20 giờ cùng hộp sạc (tắt chống ồn).', '<h3><span style=\"font-size:20px;\"><span style=\"font-family:Times New Roman,Times,serif;\">Thiết kế sang trọng, thời thượng c&ugrave;ng hộp sạc đồng nhất m&agrave;u sắc đi k&egrave;m</span></span></h3>\r\n\r\n<p><span style=\"font-size:20px;\"><span style=\"font-family:Times New Roman,Times,serif;\"><a href=\"https://www.thegioididong.com/tai-nghe/bluetooth-true-wireless-galaxy-buds-pro-bac\" target=\"_blank\" title=\"Tai nghe Bluetooth True Wireless Samsung Buds Pro\">Tai nghe Bluetooth True Wireless Samsung Buds Pro</a>&nbsp;sở hữu vẻ ngo&agrave;i đẹp mắt thời thượng với hai m&agrave;u đen v&agrave; trắng. Thiết kế&nbsp;mới tr&ecirc;n h&igrave;nh dạng tai nghe cổ điển, c&oacute; khả năng l&agrave;m giảm bớt sự kh&oacute; chịu khi sử dụng tai nghe trong nhiều giờ v&agrave; tai nghe cũng nằm chắc chắn ph&iacute;a trong tai khi bạn tập luyện hay vận động. Đồng thời, c&aacute;c lỗ tho&aacute;t kh&iacute; gi&uacute;p c&acirc;n bằng &aacute;p suất trong tai v&agrave; tăng lưu lượng kh&ocirc;ng kh&iacute;, tạo cảm gi&aacute;c mềm mại dễ chịu khi sử dụng.</span></span></p>\r\n\r\n<p><span style=\"font-size:20px;\"><span style=\"font-family:Times New Roman,Times,serif;\">Tai nghe c&oacute; thiết kế nhỏ gọn n&ecirc;n bạn dễ d&agrave;ng bỏ v&agrave;o t&uacute;i x&aacute;ch, balo v&agrave; mang theo b&ecirc;n m&igrave;nh di chuyển mọi nơi.&nbsp;Ngo&agrave;i ra, c&oacute; k&egrave;m theo n&uacute;m tai nghe với ba k&iacute;ch thước cho người d&ugrave;ng dễ thay đổi sao cho ph&ugrave; hợp.</span></span></p>\r\n', 'upload/images/tai-nghe-bluetooth-true-wireless-galaxy-buds-pro-bac-1-org.jpg', 4, 1, 0),
(69, 'Tai nghe EP Gaming Asus Rog Cetra II Core Đen ', 1290000, 1030000, 94, 'Vỏ nhôm nhẹ cho tai nghe nổi bật, kiểu dáng công thái học đeo dễ chịu.\r\nDriver ASUS Essence mang đến chất âm sống động, tối ưu khi chơi game.\r\nĐộ dài dây 1.3 m, đầu cắm 3.5 mm tương thích Nintendo Switch, Xbox Series X/S, điện thoại, Mac, PC,...\r\n3 phím bấm dễ chỉnh phát/dừng chơi nhạc, tăng/giảm âm lượng.', '<h3>Thiết kế c&ocirc;ng th&aacute;i học, vỏ nh&ocirc;m b&oacute;ng đẹp</h3>\r\n\r\n<p>Củ tai c&oacute; lớp vỏ nh&ocirc;m nhẹ,&nbsp;cho khả năng chịu lực tốt, chống trầy xước. Kiểu d&aacute;ng củ tai hơi nghi&ecirc;ng về ph&iacute;a trước c&ugrave;ng đệm tai v&agrave; m&oacute;c tai chất liệu&nbsp;LSR (cao su silicone lỏng) kết cấu cực mềm tạo n&ecirc;n sự dễ chịu v&agrave; ph&ugrave; hợp tối ưu cho trải nghiệm nghe tốt nhất trong khi chơi game.&nbsp;</p>\r\n', 'upload/images/ep-gaming-asus-rog-cetra-ii-core-den-2-org.jpg', 4, 8, 0),
(70, 'Điện thoại iPhone 13 Pro Max 128GB', 24500000, 21360000, 89, 'Điện thoại iPhone 13 Pro Max 128 GB - siêu phẩm được mong chờ nhất ở nửa cuối năm 2021 đến từ Apple. Máy có thiết kế không mấy đột phá khi so với người tiền nhiệm, bên trong đây vẫn là một sản phẩm có màn hình siêu đẹp, tần số quét được nâng cấp lên 120 Hz mượt mà, cảm biến camera có kích thước lớn hơn, cùng hiệu năng mạnh mẽ với sức mạnh đến từ Apple A15 Bionic, sẵn sàng cùng bạn chinh phục mọi thử thách.', '<h3><a href=\"https://www.thegioididong.com/dtdd/iphone-13-pro-max\">Điện thoại&nbsp;iPhone 13 Pro Max 128 GB</a>&nbsp;- si&ecirc;u phẩm được mong chờ nhất ở nửa cuối năm 2021 đến từ&nbsp;<a href=\"https://www.thegioididong.com/apple\" target=\"_blank\" title=\"Tham khảo giá điện thoại smartphone iPhone chính hãng\">Apple</a>. M&aacute;y c&oacute; thiết kế kh&ocirc;ng mấy đột ph&aacute; khi so với người tiền nhiệm, b&ecirc;n trong đ&acirc;y vẫn l&agrave; một sản phẩm c&oacute; m&agrave;n h&igrave;nh si&ecirc;u đẹp, tần số qu&eacute;t được n&acirc;ng cấp l&ecirc;n 120 Hz mượt m&agrave;, cảm biến camera c&oacute; k&iacute;ch thước lớn hơn, c&ugrave;ng hiệu năng mạnh mẽ với sức mạnh đến từ Apple A15 Bionic, sẵn s&agrave;ng c&ugrave;ng bạn chinh phục mọi thử th&aacute;ch.</h3>\r\n\r\n<h3>Thiết kế đẳng cấp h&agrave;ng đầu</h3>\r\n\r\n<p>iPhone mới kế thừa thiết kế đặc trưng từ&nbsp;iPhone 12 Pro Max khi sở hữu khung viền vu&ocirc;ng vức, mặt lưng k&iacute;nh c&ugrave;ng m&agrave;n h&igrave;nh tai thỏ tr&agrave;n viền nằm ở ph&iacute;a trước.</p>\r\n', 'upload/images/iphone-13-pro-max-1-2.jpg', 1, 2, 0),
(71, 'Điện thoại OPPO Reno7 ', 8990000, 8490000, 100, 'OPPO Reno7 4G ra mắt với một diện mạo vô cùng nổi bật và bộ thông số ấn tượng cả về hiệu suất lẫn khả năng chụp ảnh, nhằm giúp khách hàng có thêm lựa chọn trong phân khúc tầm trung.', '<h3><span style=\"font-size:20px;\"><span style=\"font-family:Times New Roman,Times,serif;\"><a href=\"https://www.thegioididong.com/dtdd/oppo-reno7-4g\" target=\"_blank\">OPPO Reno7 4G</a>&nbsp;ra mắt với một diện mạo v&ocirc; c&ugrave;ng nổi bật v&agrave; bộ th&ocirc;ng số ấn tượng cả về hiệu suất lẫn khả năng chụp ảnh, nhằm gi&uacute;p kh&aacute;ch h&agrave;ng c&oacute; th&ecirc;m lựa chọn trong ph&acirc;n kh&uacute;c tầm trung.</span></span></h3>\r\n\r\n<h3><span style=\"font-size:20px;\"><span style=\"font-family:Times New Roman,Times,serif;\">Diện mạo cao cấp chưa từng c&oacute;</span></span></h3>\r\n\r\n<p><span style=\"font-size:20px;\"><span style=\"font-family:Times New Roman,Times,serif;\">Ấn tượng đầu ti&ecirc;n khi m&agrave; m&igrave;nh nh&igrave;n ngắm trực tiếp chiếc&nbsp;<a href=\"https://www.thegioididong.com/dtdd\" target=\"_blank\">điện thoại</a>&nbsp;OPPO Reno7 4G l&agrave; về vẻ ngo&agrave;i, với mặt lưng được l&agrave;m từ thủy tinh hữu cơ c&ugrave;ng kiểu thiết kế giả da* v&agrave; rất kh&oacute; c&oacute; thể nhận biết được nếu chưa cầm nắm tr&ecirc;n tay, gi&uacute;p thiết bị trở n&ecirc;n cực kỳ cao cấp.</span></span></p>\r\n\r\n<div class=\"ddict_btn\" style=\"top: 14px; left: 572.889px;\"><img src=\"chrome-extension://bpggmmljdiliancllaapiggllnkbjocb/logo/48.png\" /></div>\r\n', 'upload/images/oppo-reno7-4g-1-1.jpg', 1, 3, 0),
(72, 'Điện thoại Samsung Galaxy S21 Ultra 5G 128GB', 32990000, 30990000, 100, 'Sự đẳng cấp được Samsung gửi gắm thông qua chiếc smartphone Galaxy S21 Ultra 5G với hàng loạt sự nâng cấp và cải tiến không chỉ ngoại hình bên ngoài mà còn sức mạnh bên trong, hứa hẹn đáp ứng trọn vẹn nhu cầu ngày càng cao của người dùng.', '<h3><span style=\"font-size:20px;\"><span style=\"font-family:Times New Roman,Times,serif;\">Sự đẳng cấp được&nbsp;Samsung&nbsp;gửi gắm th&ocirc;ng qua chiếc&nbsp;<a href=\"https://www.thegioididong.com/dtdd/samsung-galaxy-s21-ultra\" target=\"_blank\">smartphone Galaxy S21 Ultra 5G</a>&nbsp;với h&agrave;ng loạt sự n&acirc;ng cấp v&agrave; cải tiến kh&ocirc;ng chỉ ngoại h&igrave;nh b&ecirc;n ngo&agrave;i m&agrave; c&ograve;n sức mạnh b&ecirc;n trong, hứa hẹn đ&aacute;p ứng trọn vẹn nhu cầu ng&agrave;y c&agrave;ng cao của người d&ugrave;ng.</span></span></h3>\r\n\r\n<h3><span style=\"font-size:20px;\"><span style=\"font-family:Times New Roman,Times,serif;\">Đột ph&aacute; trong thiết kế thời thượng</span></span></h3>\r\n\r\n<p><span style=\"font-size:20px;\"><span style=\"font-family:Times New Roman,Times,serif;\">Kh&ocirc;ng chỉ đơn thuần phục vụ giao tiếp v&agrave; giải tr&iacute;,&nbsp;Samsung Galaxy S21 Ultra 5G&nbsp;c&ograve;n ch&iacute;nh l&agrave; m&oacute;n phụ kiện thời trang khẳng định vị thế của người sở hữu. Vẻ ngo&agrave;i mảnh mai v&agrave; thon gọn đến bất ngờ chỉ 165.1 x 75.6 x 8.9 mm v&agrave; trọng lượng 228 g d&ugrave; phải &ldquo;v&aacute;c&rdquo; một vi&ecirc;n pin lớn.</span></span></p>\r\n', 'upload/images/samsung-galaxy-s21-ultra-bac-1-org.jpg', 1, 1, 0),
(73, 'Điện thoại Xiaomi Redmi Note 11 Pro', 7490000, 5990000, 100, 'Xiaomi Redmi Note 11 Pro 4G mang trong mình khá nhiều những nâng cấp cực kì sáng giá. Là chiếc điện thoại có màn hình lớn, tần số quét 120 Hz, hiệu năng ổn định cùng một viên pin siêu trâu.', '<h3><span style=\"font-size:20px;\"><span style=\"font-family:Times New Roman,Times,serif;\">Thiết kế cứng c&aacute;p, cầm nắm rất đầm tay</span></span></h3>\r\n\r\n<p><span style=\"font-size:20px;\"><span style=\"font-family:Times New Roman,Times,serif;\">Điểm nổi bật ở phần thiết kế của Redmi Note 11 Pro ch&iacute;nh l&agrave; cụm camera kh&aacute; lớn v&agrave; lồi so với mặt lưng, mặt lưng c&oacute; chất liệu bằng k&iacute;nh đ&atilde; được l&agrave;m phẳng đi. Khung viền bằng nhựa cũng được bo tr&ograve;n v&agrave; v&aacute;t phẳng rất liền mạch, mức độ ho&agrave;n thiện tốt, kh&ocirc;ng c&oacute; hiện tượng ọp ẹp khi m&igrave;nh sử dụng chiếc m&aacute;y n&agrave;y.</span></span></p>\r\n\r\n<div class=\"ddict_btn\" style=\"top: 25px; left: 589.958px;\"><img src=\"chrome-extension://bpggmmljdiliancllaapiggllnkbjocb/logo/48.png\" /></div>\r\n', 'upload/images/xiaomi-redmi-note-11-pro-4g-1-3.jpg', 1, 4, 0),
(74, 'Laptop Lenovo Gaming Legion 5 15ACH6 R7 ', 31990000, 28790000, 99, 'Lenovo Gaming Legion 5 15ACH6 R7 5800H (82JW00KMVN) là phiên bản laptop với kiểu dáng mới lạ cùng hiệu năng vượt trội, sẵn sàng cùng bạn chiến mọi trận game khó nhằn.', '<h3><span style=\"font-size:20px;\"><span style=\"font-family:Times New Roman,Times,serif;\"><a href=\"https://www.thegioididong.com/laptop/lenovo-gaming-legion-5-15ach6-r7-82jw00kmvn\" target=\"_blank\" title=\"Laptop Lenovo Gaming Legion 5 15ACH6 R7 (82JW00KMVN) đang bán tại thegioididong.com\">Lenovo Gaming Legion 5 15ACH6 R7 5800H (82JW00KMVN)</a>&nbsp;l&agrave; phi&ecirc;n bản laptop với kiểu d&aacute;ng mới lạ c&ugrave;ng hiệu năng vượt trội, sẵn s&agrave;ng c&ugrave;ng bạn chiến mọi trận game kh&oacute; nhằn.</span></span></h3>\r\n\r\n<p><span style=\"font-size:20px;\"><span style=\"font-family:Times New Roman,Times,serif;\">&bull;&nbsp;Bộ vi xử l&yacute;&nbsp;<strong>AMD Ryzen 7 5800H</strong>&nbsp;c&ugrave;ng card đồ họa rời&nbsp;<strong>NVIDIA GeForce RTX 3050Ti 4 GB&nbsp;</strong>được trang bị ở chiếc&nbsp;<a href=\"https://www.thegioididong.com/laptop?g=laptop-gaming\" target=\"_blank\" title=\"Một số laptop gaming đang kinh doanh tại thegioididong.com\">laptop gaming</a>&nbsp;hỗ trợ bạn xử l&yacute; nhanh gọn mọi t&aacute;c vụ c&ocirc;ng việc, gi&uacute;p bạn chiến những trận game đầy kịch t&iacute;nh một c&aacute;ch mượt m&agrave;, trơn tru.</span></span></p>\r\n\r\n<p><span style=\"font-size:20px;\"><span style=\"font-family:Times New Roman,Times,serif;\">&bull;&nbsp;<a href=\"https://www.thegioididong.com/laptop-lenovo-gaming-legion\" target=\"_blank\" title=\"Xem thêm laptop Lenovo Gaming Legion đang bán tại thegioididong.com\">Laptop Lenovo Gaming Legion</a>&nbsp;sở hữu m&agrave;n h&igrave;nh&nbsp;<strong>15.6 inch&nbsp;</strong>với độ phủ m&agrave;u&nbsp;<strong>100% sRGB</strong>, c&ocirc;ng nghệ chống ch&oacute;i&nbsp;<strong>Anti Glare&nbsp;</strong>v&agrave; độ s&aacute;ng&nbsp;<strong>300 nits</strong>&nbsp;cho bạn chất lượng h&igrave;nh ảnh ch&acirc;n thực, sắc n&eacute;t.</span></span></p>\r\n\r\n<p><span style=\"font-size:20px;\"><span style=\"font-family:Times New Roman,Times,serif;\">&bull;&nbsp; Tần số qu&eacute;t&nbsp;<strong>165 Hz&nbsp;</strong>mang đến&nbsp;trải nghiệm h&igrave;nh ảnh tuyệt vời, hạn chế tối đa giật, x&eacute; h&igrave;nh, giảm t&aacute;c hại đến mắt của bạn khi chơi game hay nh&igrave;n m&agrave;n h&igrave;nh qu&aacute; l&acirc;u.</span></span></p>\r\n', 'upload/images/lenovo-gaming-legion-5-15ach6-r7-82jw00kmvn-2-1.jpg', 0, 5, 0),
(75, 'Laptop Lenovo Gaming Legion 5 15ACH6 R7 ', 31990000, 28790000, 100, 'Lenovo Gaming Legion 5 15ACH6 R7 5800H (82JW00KMVN) là phiên bản laptop với kiểu dáng mới lạ cùng hiệu năng vượt trội, sẵn sàng cùng bạn chiến mọi trận game khó nhằn.', '<h3><span style=\"font-size:20px;\"><span style=\"font-family:Times New Roman,Times,serif;\"><a href=\"https://www.thegioididong.com/laptop/lenovo-gaming-legion-5-15ach6-r7-82jw00kmvn\" target=\"_blank\" title=\"Laptop Lenovo Gaming Legion 5 15ACH6 R7 (82JW00KMVN) đang bán tại thegioididong.com\">Lenovo Gaming Legion 5 15ACH6 R7 5800H (82JW00KMVN)</a>&nbsp;l&agrave; phi&ecirc;n bản laptop với kiểu d&aacute;ng mới lạ c&ugrave;ng hiệu năng vượt trội, sẵn s&agrave;ng c&ugrave;ng bạn chiến mọi trận game kh&oacute; nhằn.</span></span></h3>\r\n\r\n<p><span style=\"font-size:20px;\"><span style=\"font-family:Times New Roman,Times,serif;\">&bull;&nbsp;Bộ vi xử l&yacute;&nbsp;<strong>AMD Ryzen 7 5800H</strong>&nbsp;c&ugrave;ng card đồ họa rời&nbsp;<strong>NVIDIA GeForce RTX 3050Ti 4 GB&nbsp;</strong>được trang bị ở chiếc&nbsp;<a href=\"https://www.thegioididong.com/laptop?g=laptop-gaming\" target=\"_blank\" title=\"Một số laptop gaming đang kinh doanh tại thegioididong.com\">laptop gaming</a>&nbsp;hỗ trợ bạn xử l&yacute; nhanh gọn mọi t&aacute;c vụ c&ocirc;ng việc, gi&uacute;p bạn chiến những trận game đầy kịch t&iacute;nh một c&aacute;ch mượt m&agrave;, trơn tru.</span></span></p>\r\n\r\n<p><span style=\"font-size:20px;\"><span style=\"font-family:Times New Roman,Times,serif;\">&bull;&nbsp;<a href=\"https://www.thegioididong.com/laptop-lenovo-gaming-legion\" target=\"_blank\" title=\"Xem thêm laptop Lenovo Gaming Legion đang bán tại thegioididong.com\">Laptop Lenovo Gaming Legion</a>&nbsp;sở hữu m&agrave;n h&igrave;nh&nbsp;<strong>15.6 inch&nbsp;</strong>với độ phủ m&agrave;u&nbsp;<strong>100% sRGB</strong>, c&ocirc;ng nghệ chống ch&oacute;i&nbsp;<strong>Anti Glare&nbsp;</strong>v&agrave; độ s&aacute;ng&nbsp;<strong>300 nits</strong>&nbsp;cho bạn chất lượng h&igrave;nh ảnh ch&acirc;n thực, sắc n&eacute;t.</span></span></p>\r\n\r\n<p><span style=\"font-size:20px;\"><span style=\"font-family:Times New Roman,Times,serif;\">&bull;&nbsp; Tần số qu&eacute;t&nbsp;<strong>165 Hz&nbsp;</strong>mang đến&nbsp;trải nghiệm h&igrave;nh ảnh tuyệt vời, hạn chế tối đa giật, x&eacute; h&igrave;nh, giảm t&aacute;c hại đến mắt của bạn khi chơi game hay nh&igrave;n m&agrave;n h&igrave;nh qu&aacute; l&acirc;u.</span></span></p>\r\n\r\n<p><span style=\"font-size:20px;\"><span style=\"font-family:Times New Roman,Times,serif;\">&bull;&nbsp;<strong>RAM 8 GB&nbsp;</strong>đ&aacute;p ứng tốt nhu cầu đa nhiệm,&nbsp;ổ&nbsp;cứng&nbsp;<strong>SSD 512 GB</strong>&nbsp;cho kh&ocirc;ng gian lưu trữ dữ liệu đủ d&ugrave;ng. Hỗ trợ người d&ugrave;ng th&aacute;o lắp, n&acirc;ng cấp dễ d&agrave;ng khi cần.</span></span></p>\r\n\r\n<p><span style=\"font-size:20px;\"><span style=\"font-family:Times New Roman,Times,serif;\">&bull;&nbsp;Trọng lượng&nbsp;<strong>2.4 kg&nbsp;</strong>v&agrave; mỏng&nbsp;<strong>25.75 mm</strong>,&nbsp;<a href=\"https://www.thegioididong.com/laptop-lenovo\" target=\"_blank\" title=\"Một số laptop Lenovo được kinh doanh tại thegioididong.com\">laptop Lenovo</a>&nbsp;được chế t&aacute;c từ&nbsp;<strong>chất liệu nhựa</strong>&nbsp;bền bỉ, sẵn s&agrave;ng c&ugrave;ng bạn đi đến bất kỳ đ&acirc;u.</span></span></p>\r\n\r\n<p><span style=\"font-size:20px;\"><span style=\"font-family:Times New Roman,Times,serif;\">&bull;&nbsp;<a href=\"https://www.thegioididong.com/laptop\" target=\"_blank\" title=\"Một số laptop được kinh doanh tại thegioididong.com\">Laptop</a>&nbsp;c&ograve;n được trang bị&nbsp;<strong>đ&egrave;n nền</strong>&nbsp;đơn sắc tiện lợi&nbsp;ở b&agrave;n ph&iacute;m<strong>&nbsp;</strong>c&ugrave;ng c&aacute;c cổng kết nối như USB 3.2, 2 cổng USB Type-C, 3 cổng USB 3.2, HDMI v&agrave; LAN (RJ45) hỗ trợ tốt hơn cho nhu cầu truyền xuất th&ocirc;ng tin.</span></span></p>\r\n\r\n<p><span style=\"font-size:20px;\"><span style=\"font-family:Times New Roman,Times,serif;\">&bull;&nbsp;Sự kết hợp của c&ocirc;ng nghệ&nbsp;<strong>Nahimic Audio&nbsp;</strong>v&agrave;&nbsp;<strong>Stereo speakers&nbsp;</strong>mang đến chất &acirc;m to r&otilde;, cho bạn cảm nhận được kh&ocirc;ng gian, vị tr&iacute; của từng &acirc;m thanh.</span></span></p>\r\n', 'upload/images/lenovo-gaming-legion-5-15ith6-i7-82jk00fnvn-180322-100552-600x600.jpg', 0, 5, 0),
(76, 'Laptop Acer Swift X SFX16 51G 516Q i5 11320H/16GB/512GB/4GB RTX3050/Win11 (NX.AYKSV.002)', 28990000, 26090000, 100, 'Nếu bạn đang tìm một chiếc laptop đồ hoạ - kỹ thuật với hiệu năng mạnh mẽ cùng thiết kế hiện đại thì laptop Acer Swift X SFX16 51G 516Q i5 (NX.AYKSV.002 ) là sản phẩm xứng đáng để bạn lựa chọn.', '<h3><span style=\"font-size:20px;\"><span style=\"font-family:Times New Roman,Times,serif;\">Nếu bạn đang t&igrave;m một chiếc&nbsp;<a href=\"https://www.thegioididong.com/laptop?g=do-hoa-ky-thuat\" target=\"_blank\" title=\"Các sản phẩm laptop đồ hoạ - kỹ thuật hiện đang kinh doanh tại thegioididong.com\">laptop đồ hoạ - kỹ thuật</a>&nbsp;với hiệu năng mạnh mẽ c&ugrave;ng thiết kế hiện đại th&igrave;&nbsp;<a href=\"https://www.thegioididong.com/laptop/acer-swift-x-sfx16-51g-516q-i5-nxayksv002\" target=\"_blank\" title=\"Laptop Acer Swift X SFX16 51G 516Q i5 (NX.AYKSV.002) đang bán tại thegioididong.com \">laptop Acer Swift X SFX16 51G 516Q i5 (NX.AYKSV.002 )</a>&nbsp;l&agrave; sản phẩm xứng đ&aacute;ng để bạn lựa chọn.</span></span></h3>\r\n\r\n<p><span style=\"font-size:20px;\"><span style=\"font-family:Times New Roman,Times,serif;\">&bull;&nbsp;<a href=\"https://www.thegioididong.com/laptop-acer\" target=\"_blank\" title=\"Các sản phẩm laptop Acer hiện đang kinh doanh tại thegioididong.com\">Laptop Acer</a>&nbsp;mang một hiệu năng mạnh mẽ, xử l&yacute; mượt m&agrave; c&aacute;c t&aacute;c vụ thiết kế đồ hoạ, render video,... tr&ecirc;n c&aacute;c phần mềm Photoshop, AI, Premiere,... hay thỏa sức cho bạn s&aacute;ng tạo nội dung nhờ chip Intel&nbsp;<strong>Core i5 Tiger Lake 11320H</strong>&nbsp;c&ugrave;ng card rời&nbsp;<strong>NVIDIA</strong>&nbsp;<strong>GeForce RTX 3050 4 GB</strong>.</span></span></p>\r\n\r\n<p><span style=\"font-size:20px;\"><span style=\"font-family:Times New Roman,Times,serif;\">&bull;&nbsp;<a href=\"https://www.thegioididong.com/laptop?g=16-gb\" target=\"_blank\" title=\"Các sản phẩm laptop sở hữu RAM 16 GB hiện đang kinh doanh tại thegioididong.com\">Laptop RAM 16 GB</a>&nbsp;v&agrave;&nbsp;<strong>SSD 512 GB</strong>&nbsp;cho đa nhiệm ấn tượng, khởi động m&aacute;y hay mở c&aacute;c ứng dụng nặng nhanh ch&oacute;ng, r&uacute;t ngắn thời gian phản hồi, tối ưu hiệu suất cho m&aacute;y.</span></span></p>\r\n\r\n<p><span style=\"font-size:20px;\"><span style=\"font-family:Times New Roman,Times,serif;\">&bull;&nbsp;M&agrave;n h&igrave;nh trang bị k&iacute;ch thước&nbsp;<strong>16.1 inch</strong>&nbsp;kết hợp với c&ocirc;ng nghệ&nbsp;<strong>IPS</strong>&nbsp;v&agrave;&nbsp;<strong>Acer ComfyView</strong>&nbsp;cho khả năng chống ch&oacute;i tốt, chống &aacute;nh s&aacute;ng xanh, bảo vệ tốt thị gi&aacute;c v&agrave; sức khỏe của bạn, đồng thời mang đến g&oacute;c nh&igrave;n được mở rộng, hiển thị r&otilde; n&eacute;t, ch&acirc;n thật.</span></span></p>\r\n', 'upload/images/acer-swift-x-sfx16-51g-516q-i5-nxayksv002-1-1.jpg', 0, 8, 0),
(77, 'Laptop acer XPS 13 9310 i5 1135G7/8GB/512GB/Cáp/Office H&S/Win11 (70273578)', 41990000, 41490000, 100, 'Laptop Dell XPS 13 9310 i5 1135G7 (70273578) sở hữu thiết kế hiện đại với màu bạc thời thượng cùng hiệu năng mạnh mẽ, xứng danh bạn đồng hành đắc lực trên mọi mặt trận.', '<h3><span style=\"font-size:20px;\"><span style=\"font-family:Times New Roman,Times,serif;\"><a href=\"https://www.thegioididong.com/laptop/dell-xps-13-9310-i5-70273578\" target=\"_blank\" title=\"Laptop Dell XPS 13 9310 i5 1135G7 (70273578) đang bán tại thegioididong.com\">Laptop Dell XPS 13 9310 i5 1135G7 (70273578)</a>&nbsp;sở hữu thiết kế hiện đại với m&agrave;u bạc thời thượng c&ugrave;ng hiệu năng mạnh mẽ, xứng danh bạn đồng h&agrave;nh đắc lực tr&ecirc;n mọi mặt trận.</span></span></h3>\r\n\r\n<p><span style=\"font-size:20px;\"><span style=\"font-family:Times New Roman,Times,serif;\">&bull;&nbsp;<a href=\"https://www.thegioididong.com/laptop-dell\" target=\"_blank\" title=\"Xem thêm laptop Dell đang bán tại thegioididong.com\">Laptop&nbsp;Dell</a>&nbsp;được chế t&aacute;c từ&nbsp;<strong>kim loại</strong>&nbsp;cao cấp với trọng lượng&nbsp;<strong>1.2 kg</strong>&nbsp;v&agrave; d&agrave;y&nbsp;<strong>14.8 mm</strong>&nbsp;c&ugrave;ng những chi tiết được tinh chỉnh tinh tế, sẵn s&agrave;ng phục vụ bạn ở bất kỳ đ&acirc;u.</span></span></p>\r\n\r\n<p><span style=\"font-size:20px;\"><span style=\"font-family:Times New Roman,Times,serif;\">&bull; Nhanh ch&oacute;ng truy cập v&agrave;o thiết bị nhờ&nbsp;<strong>bảo mật v&acirc;n tay</strong>, vừa đảm bảo an to&agrave;n cho c&aacute;c dữ liệu c&aacute; nh&acirc;n, vừa tiết kiệm tối ưu thời gian mở m&aacute;y.</span></span></p>\r\n\r\n<p><span style=\"font-size:20px;\"><span style=\"font-family:Times New Roman,Times,serif;\">&bull; Th&ecirc;m v&agrave;o đ&oacute;, chiếc&nbsp;<a href=\"https://www.thegioididong.com/laptop-dell-xps\" target=\"_blank\" title=\"Xem thêm laptop Dell XPS đang bán tại thegioididong.com\">laptop&nbsp;Dell XPS</a>&nbsp;c&ograve;n được thiết kế dọc hai b&ecirc;n m&aacute;y một số cổng kết nối th&ocirc;ng dụng như&nbsp;2 cổng Thunderbolt 4 USB-C, c&ugrave;ng khe đọc thẻ nhớ Micro SD, đ&aacute;p ứng tốt hơn nhu cầu truyền xuất dữ liệu.</span></span></p>\r\n', 'upload/images/dell-xps-13-9310-i5-70273578-2.jpg', 0, 8, 0),
(78, 'Laptop MacBook Pro 14 M1 Pro 2021 10-core CPU/32GB/512GB/16-core GPU (Z15J001N0)', 51990000, 42790000, 95, 'Khoác lên mình vẻ ngoài mới lạ so với các dòng Mac trước đó, thiết kế màn hình tai thỏ ấn tượng, bắt mắt cùng bộ hiệu năng đỉnh cao M1 Pro mạnh mẽ, MacBook Pro 14 inch M1 Pro 2021 xứng tầm là chiếc laptop cao cấp chuyên dụng dành cho dân kỹ thuật - đồ họa, sáng tạo nội dung', '<h3><span style=\"font-size:20px;\"><span style=\"font-family:Times New Roman,Times,serif;\">Kho&aacute;c l&ecirc;n m&igrave;nh vẻ ngo&agrave;i mới lạ so với c&aacute;c d&ograve;ng Mac trước đ&oacute;, thiết kế m&agrave;n h&igrave;nh tai thỏ ấn tượng, bắt mắt c&ugrave;ng bộ hiệu năng đỉnh cao&nbsp;M1 Pro mạnh mẽ,&nbsp;<a href=\"https://www.thegioididong.com/laptop/macbook-pro-14-inch-m1-pro-2021-10-core-cpu\" target=\"_blank\" title=\"MacBook Pro 14 inch M1 Max 2021 (Z15G) bán tại thegioididong.com\">MacBook Pro 14 inch M1 Pro 2021</a>&nbsp;xứng tầm l&agrave; chiếc&nbsp;<a href=\"https://www.thegioididong.com/laptop?g=cao-cap-sang-trong\" target=\"_blank\" title=\"Xem thêm laptop cao cấp bán tại thegioididong.com\">laptop cao cấp&nbsp;</a>chuy&ecirc;n dụng d&agrave;nh cho d&acirc;n kỹ thuật - đồ họa, s&aacute;ng tạo nội dung.</span></span></h3>\r\n\r\n<h3><span style=\"font-size:20px;\"><span style=\"font-family:Times New Roman,Times,serif;\">Thiết kế hiện đại, đẳng cấp, thời thượng</span></span></h3>\r\n\r\n<p><span style=\"font-size:20px;\"><span style=\"font-family:Times New Roman,Times,serif;\"><a href=\"https://www.thegioididong.com/laptop-apple-macbook\" target=\"_blank\" title=\"Xem thêm MacBook bán tại thegioididong.com\">Apple MacBook</a>&nbsp;<strong>M1 Pro 14 inch&nbsp;</strong>bao bọc bởi lớp vỏ kim loại nguy&ecirc;n khối bằng nh&ocirc;m t&aacute;i chế cứng c&aacute;p, bền bỉ, kiểu d&aacute;ng được cải tiến so với những d&ograve;ng Mac trước đ&acirc;y, phong c&aacute;ch đơn giản m&agrave; đầy tinh tế.&nbsp;<a href=\"https://www.thegioididong.com/laptop\" target=\"_blank\" title=\"Xem thêm laptop bán tại thegioididong.com\">Laptop</a>&nbsp;c&oacute; độ d&agrave;y&nbsp;<strong>15.5 mm&nbsp;</strong>v&agrave; trọng lượng<strong>&nbsp;1.6 kg&nbsp;</strong>kh&aacute; gọn g&agrave;ng, thuận tiện đồng h&agrave;nh c&ugrave;ng bạn mọi l&uacute;c mọi nơi để học tập, l&agrave;m việc, giải tr&iacute; hiệu quả.</span></span></p>\r\n', 'upload/images/macbook-pro-14-inch-m1-pro-2021-10-core-cpu-bac-1.jpg', 0, 9, 0),
(79, 'Máy tính bảng Samsung Galaxy Tab S7', 18990000, 15990000, 98, 'Samsung Galaxy Tab S7 chiếc máy tính bảng có thiết kế tuyệt đẹp, màn hình 120 Hz siêu mượt, camera kép ấn tượng, bút S Pen cùng một hiệu năng mạnh mẽ thuộc top đầu thị trường máy tính bảng Android.', '<h3 id=\"docs-internal-guid-029223d8-7fff-e109-bd00-a48ddce31c96\"><span style=\"font-size:20px;\"><span style=\"font-family:Times New Roman,Times,serif;\"><a href=\"https://www.thegioididong.com/may-tinh-bang/samsung-galaxy-tab-s7\" target=\"_blank\" title=\"Tham khảo giá Máy tính bảng Samsung Galaxy Tab S7 chính hãng\">Samsung Galaxy Tab S7</a>&nbsp;chiếc&nbsp;<a href=\"https://www.thegioididong.com/may-tinh-bang\" title=\"Tham khảo giá máy tính bảng, tablet chính hãng\">m&aacute;y t&iacute;nh bảng</a>&nbsp;c&oacute; thiết kế tuyệt đẹp, m&agrave;n h&igrave;nh 120 Hz si&ecirc;u mượt, camera k&eacute;p ấn tượng, b&uacute;t S Pen c&ugrave;ng một hiệu năng mạnh mẽ thuộc top đầu thị trường m&aacute;y t&iacute;nh bảng Android.</span></span></h3>\r\n\r\n<h3><span style=\"font-size:20px;\"><span style=\"font-family:Times New Roman,Times,serif;\">Thiết kế tr&agrave;n viền cao cấp, thời thượng</span></span></h3>\r\n\r\n<p><span style=\"font-size:20px;\"><span style=\"font-family:Times New Roman,Times,serif;\">Galaxy Tab S7 vẫn giữ nguy&ecirc;n thiết kế kim loại nguy&ecirc;n khối, g&oacute;c cạnh như người tiền nhiệm&nbsp;<a href=\"https://www.thegioididong.com/may-tinh-bang/samsung-galaxy-tab-s6\" target=\"_blank\" title=\"Tham khảo giá Máy tính bảng Samsung Galaxy Tab S6 chính hãng\">Samsung Galaxy Tab S6</a>&nbsp;trước đ&oacute;, cho cảm gi&aacute;c sang trọng v&agrave; cao cấp, cầm v&agrave;o tay rất vừa vặn v&agrave; thoải m&aacute;i</span></span></p>\r\n', 'upload/images/samsung-galaxy-tab-s7-xanh-duong-1-org.jpg', 2, 1, 0),
(80, 'Máy tính bảng iPad Air 4 Wifi Cellular 64GB (2020)', 16490000, 15990000, 100, 'Trong sự kiện Time Flies, Apple đã giới thiệu đến người dùng chiếc iPad Air 4 Wifi Cellular 64GB (2020) với thiết kế tương tự iPad Pro, ngoại hình của Air 4 đã được làm mới so với thế hệ iPad Air 3, cấu hình được nâng cấp mạnh mẽ cùng với nhiều cải tiến đáng giá. ', '<h3><span style=\"font-size:20px;\"><span style=\"font-family:Times New Roman,Times,serif;\">Trong sự kiện Time Flies,&nbsp;<a href=\"https://www.thegioididong.com/apple\" target=\"_blank\" title=\"Tham khảo các sản phẩm Apple chính hãng kinh doanh tại thegioididong.com \">Apple&nbsp;</a>đ&atilde; giới thiệu đến người d&ugrave;ng chiếc&nbsp;<a href=\"https://www.thegioididong.com/may-tinh-bang/ipad-air-4-wifi-cellular-64gb-2020\" target=\"_blank\" title=\"Tham khảo iPad Air 4 Wifi Cellular 64GB (2020) kinh doanh tại thegioididong.com\">iPad Air 4 Wifi Cellular 64GB (2020)</a>&nbsp;với thiết kế tương tự&nbsp;<a href=\"https://www.thegioididong.com/may-tinh-bang-apple-ipad-pro\" target=\"_blank\" title=\"Tham khảo iPad Pro kinh doanh tại thegioididong.com\">iPad Pro</a>, ngoại h&igrave;nh của Air 4 đ&atilde; được l&agrave;m mới so với thế hệ&nbsp;<a href=\"https://www.thegioididong.com/may-tinh-bang/ipad-air-105-inch-wifi-2019\" target=\"_blank\" title=\"Tham khảo thông tin iPad Air 3 tại thegioididong.com \">iPad Air 3</a>, cấu h&igrave;nh được n&acirc;ng cấp mạnh mẽ c&ugrave;ng với nhiều cải tiến đ&aacute;ng gi&aacute;.&nbsp;</span></span></h3>\r\n\r\n<h3><span style=\"font-size:20px;\"><span style=\"font-family:Times New Roman,Times,serif;\">M&agrave;n h&igrave;nh&nbsp;Liquid Retina hiển thị m&agrave;u sắc cực chuẩn</span></span></h3>\r\n\r\n<p><span style=\"font-size:20px;\"><span style=\"font-family:Times New Roman,Times,serif;\">iPad Air 4 được trang bị m&agrave;n h&igrave;nh Liquid Retina k&iacute;ch thước 10.9 inch c&oacute; độ ph&acirc;n giải 1640 x 2360 Pixels,&nbsp;được t&iacute;ch hợp c&ocirc;ng nghệ&nbsp;True Tone c&ugrave;ng với dải m&agrave;u P3 chuẩn điện ảnh sẽ mang lại chất lượng hiển thị cao, m&agrave;u sắc tự nhi&ecirc;n gần như s&aacute;t với m&agrave;u sắc gốc</span></span></p>\r\n', 'upload/images/samsung-galaxy-tab-a7-lite-1-2-org.jpg', 2, 9, 0),
(81, 'Tai nghe Bluetooth Mozard Flex4 Đen Xanh', 350000, 210000, 99, 'Thiết kế nổi bật, kiểu quàng cổ dễ mang theo.\r\nCung cấp thời gian sử dụng đến 8 giờ, sạc trong 1.5 giờ.\r\nKết nối ổn định trong 10 m nhờ công nghệ Bluetooth 4.2.\r\nCó nút điều khiển tiện nghe/nhận cuộc gọi, phát/dừng chơi nhạc, tăng giảm âm lượng,...', '<h3><span style=\"font-size:20px;\"><span style=\"font-family:Times New Roman,Times,serif;\"><a href=\"https://www.thegioididong.com/tai-nghe/tai-nghe-bluetooth-mozard-flex4-den-xanh\" target=\"_blank\" title=\"Tai nghe Bluetooth Mozard Flex4 đen xanh chính hãng giá rẻ bán tại Thế Giới Di Động\">Tai nghe Bluetooth Mozard Flex4 đen xanh</a>&nbsp;c&oacute; kiểu d&aacute;ng gọn g&agrave;ng, thiết kế d&acirc;y tai nghe vừa đủ, c&ugrave;ng sự phối hợp m&agrave;u&nbsp;sắc&nbsp;trẻ trung gi&uacute;p tai nghe th&ecirc;m nổi bật</span></span></h3>\r\n\r\n<div class=\"ddict_btn\" style=\"top: 21px; left: 573.833px;\"><img src=\"chrome-extension://bpggmmljdiliancllaapiggllnkbjocb/logo/48.png\" /></div>\r\n', 'upload/images/tai-nghe-bluetooth-mozard-flex4-den-xanh-2-org.jpg', 4, 7, 0),
(82, 'Tai nghe Bluetooth Mozard K8 ', 450000, 270000, 98, 'Thiết kế đệm tai êm và dày, giúp thoải mái khi đeo.\r\nCó thể kéo giãn tai nghe 3.7 cm để vừa vặn hơn khi sử dụng.\r\nÂm thanh phát ra to rõ, sắc nét, âm trầm dày chắc, đầy nội lực.\r\nTích hợp mic thoại giúp cho giọng nói rõ ràng, tương tác tốt hơn.\r\nChuẩn Bluetooth 4.2 cho khoảng cách đến 10 m.\r\nDung lượng pin 300mAh, thời gian sử dụng 15 giờ, sạc khoảng 2 giờ.\r\nTương thích với các thiết bị chạy hệ điều hành: Android, Windows, iOS', '<h3><span style=\"font-size:20px;\"><span style=\"font-family:Times New Roman,Times,serif;\">Thiết kế đầy c&aacute; t&iacute;nh, 2 phi&ecirc;n bản m&agrave;u xanh - hồng cực kỳ bắt mắt</span></span></h3>\r\n\r\n<p><span style=\"font-size:20px;\"><span style=\"font-family:Times New Roman,Times,serif;\"><a href=\"https://www.thegioididong.com/tai-nghe\" target=\"_blank\" title=\"Tai nghe giá rẻ chính hãng bán tại Thế Giới Di Động\">Tai nghe</a>&nbsp;được l&agrave;m tinh xảo, bộ khung cứng c&aacute;p, c&oacute; hệ thống treo đến chụp tai phủ b&ecirc;n ngo&agrave;i bởi lớp chất liệu mềm mại, đeo v&agrave;o đầu nhẹ nh&agrave;ng, kh&ocirc;ng l&agrave;m mỏi, đau đầu - cổ - tai.</span></span></p>\r\n\r\n<div class=\"ddict_btn\" style=\"top: 15px; left: 579.708px;\"><img src=\"chrome-extension://bpggmmljdiliancllaapiggllnkbjocb/logo/48.png\" /></div>\r\n', 'upload/images/bluetooth-mozard-k8-hong-1-org.jpg', 4, 1, 0),
(83, 'Tai nghe Bluetooth Mozard LE003 Đen', 450000, 270000, 93, 'Thiết kế tiện lợi, đeo 1 bên tai.\r\nKết nối không dây chuẩn Bluetooth 5.0 cho khoảng cách lên đến 10 m.\r\nGiọng thoại rõ nét qua công nghệ giảm tiếng ồn và microphone.\r\nThời gian sử dụng lên đến 8 giờ, thời gian chờ khoảng 100 giờ, thời gian sạc khoảng 2 giờ.', '<h3><span style=\"font-size:20px;\"><span style=\"font-family:Times New Roman,Times,serif;\">Ngoại h&igrave;nh b&oacute;ng bẩy, thời trang, k&iacute;ch thước nhỏ nhắn</span></span></h3>\r\n\r\n<p><span style=\"font-size:20px;\"><span style=\"font-family:Times New Roman,Times,serif;\">Trọng lượng&nbsp;<a href=\"https://www.thegioididong.com/tai-nghe\" target=\"_blank\" title=\"Tai nghe chính hãng, giá rẻ, bán tại Thế Giới Di Động\">tai nghe</a>&nbsp;được duy tr&igrave; ở mức&nbsp;<strong>10g</strong>, rất nhẹ, kh&ocirc;ng tạo g&aacute;nh nặng cho tai của bạn khi đeo l&acirc;u. M&agrave;u đen viền bạc s&aacute;ng đẹp, tuyệt phối với mọi phục trang của bạn từ thường nhật đến đi l&agrave;m, dự tiệc.</span></span></p>\r\n\r\n<div class=\"ddict_btn\" style=\"top: 23px; left: 584.028px;\"><img src=\"chrome-extension://bpggmmljdiliancllaapiggllnkbjocb/logo/48.png\" /></div>\r\n', 'upload/images/bluetooth-mozard-le003-den-1-org.jpg', 4, 1, 0),
(84, 'Tai nghe Bluetooth Mozard S205A Xanh', 450000, 270000, 97, 'Thiết kế màu sắc trang nhã, hợp thời trang, nhỏ gọn.\r\nKhông lo tai nghe rơi nhờ 2 đầu hít nam châm, giữ chắc tai nghe khi đeo trên cổ.\r\nCông nghệ Bluetooth 4.2 cho kết nối ổn định trong phạm vi 10 m, âm thanh mượt mà, tiết kiệm pin.\r\nĐàm thoại 4.5 giờ, nghe nhạc 4 giờ, thời gian chờ đến 105 giờ và chỉ cần 2 giờ để sạc đầy.\r\nTích hợp nhiều nút chức năng tiện lợi, có micro đàm thoại, nhận cuộc gọi dễ dàng.', '<h3><span style=\"font-size:20px;\"><span style=\"font-family:Times New Roman,Times,serif;\"><a href=\"https://www.thegioididong.com/tai-nghe/tai-nghe-bluetooth-mozard-s205a-xanh\" target=\"_blank\" title=\"Tai nghe Bluetooth Mozard S205A xanh chính hãng, giá rẻ, bán tại Thế Giới Di Động\">Tai nghe Bluetooth Mozard S205A xanh</a>&nbsp;c&oacute; thiết kế thể thao, dạng v&ograve;ng cổ, th&iacute;ch hợp cho người hay tập thể thao, thoải m&aacute;i hoạt động m&agrave; kh&ocirc;ng cảm thấy vướng v&iacute;u</span></span></h3>\r\n\r\n<div class=\"ddict_btn\" style=\"top: 22px; left: 586.042px;\"><img src=\"chrome-extension://bpggmmljdiliancllaapiggllnkbjocb/logo/48.png\" /></div>\r\n', 'upload/images/tai-nghe-bluetooth-mozard-s205a-xanh-2-org.jpg', 4, 1, 0);
INSERT INTO `tbl_product` (`pro_id`, `pro_name`, `original_price`, `promotional_price`, `quantity`, `short_desc`, `detail_desc`, `pro_image`, `cat_id`, `brand_id`, `status_pro`) VALUES
(86, 'Điện thoại Samsung Galaxy A23 6GB', 6190000, 6000000, 100, 'Được Samsung cho ra mắt vào 03/2022 - Samsung Galaxy A23 6GB có một thiết kế trẻ trung cùng bộ thông số kỹ thuật khá ấn tượng trong tầm giá, đáp ứng nhu cầu sử dụng cả ngày một cách ổn định nhờ trang bị chipset đến từ nhà Qualcomm và một viên pin dung lượng khủng.', '<h3>Trải nghiệm mượt m&agrave; tr&ecirc;n mọi t&aacute;c vụ</h3>\r\n\r\n<p>Trang bị trong m&aacute;y l&agrave; bộ vi xử l&yacute; Snapdragon 680 8 nh&acirc;n với mức xung nhịp tối đa l&ecirc;n đến 2.4 GHz, cho ra trải nghiệm theo m&igrave;nh đ&aacute;nh gi&aacute; l&agrave; kh&aacute; mượt m&agrave;, thao t&aacute;c c&ocirc;ng việc h&agrave;ng ng&agrave;y như nhắn tin, lướt web nhanh ch&oacute;ng, kh&ocirc;ng thấy xuất hiện t&igrave;nh trạng giật lag.</p>\r\n\r\n<p><a href=\"https://cdn.tgdd.vn/Products/Images/42/274359/samsung-galaxy-a23-6gb-010422-084657.jpg\" onclick=\"return false;\"><img alt=\"Trang bị Snapdragon 680 - Samsung Galaxy A23 6GB\" data-src=\"https://cdn.tgdd.vn/Products/Images/42/274359/samsung-galaxy-a23-6gb-010422-084657.jpg\" src=\"https://cdn.tgdd.vn/Products/Images/42/274359/samsung-galaxy-a23-6gb-010422-084657.jpg\" title=\"Trang bị Snapdragon 680 - Samsung Galaxy A23 6GB\" /></a></p>\r\n\r\n<p>Ở tựa game Li&ecirc;n Qu&acirc;n Mobile m&igrave;nh c&oacute; trải nghiệm tr&ecirc;n Galaxy A23 với mức cấu h&igrave;nh cao c&ugrave;ng chế độ 60 FPS cho ra trải nghiệm tạm ổn, h&igrave;nh ảnh nh&acirc;n vật hiển thị r&otilde; n&eacute;t, ch&acirc;n thực.</p>\r\n\r\n<p>Tuy nhi&ecirc;n trường hợp drop FPS vẫn c&ograve;n xuất hiện tuy nhi&ecirc;n cũng thật sự kh&ocirc;ng đ&aacute;ng kể, khung h&igrave;nh sẽ giao động từ 55 - 60.</p>\r\n\r\n<p>Để cải thiện t&igrave;nh trạng n&agrave;y, m&igrave;nh đ&atilde; chuyển mức cấu h&igrave;nh xuống thấp hơn cho thấy m&aacute;y hoạt động ổn định hẳn v&agrave; đồng nghĩa với việc chất lượng h&igrave;nh ảnh sẽ bị giảm đi.</p>\r\n\r\n<p><a href=\"https://cdn.tgdd.vn/Products/Images/42/274359/samsung-galaxy-a23-6gb-010422-084700.jpg\" onclick=\"return false;\"><img alt=\"Cấu hình Liên Quân Mobile - Samsung Galaxy A23 6GB\" data-src=\"https://cdn.tgdd.vn/Products/Images/42/274359/samsung-galaxy-a23-6gb-010422-084700.jpg\" src=\"https://cdn.tgdd.vn/Products/Images/42/274359/samsung-galaxy-a23-6gb-010422-084700.jpg\" title=\"Cấu hình Liên Quân Mobile - Samsung Galaxy A23 6GB\" /></a></p>\r\n\r\n<p>Tr&ograve; chơi thứ 2 m&igrave;nh c&oacute; thử qua l&agrave; PUBG Mobile, ở mức đồ họa mượt v&agrave; tốc độ khung h&igrave;nh cao cho ra những ph&uacute;t gi&acirc;y chiến game kh&aacute; ổn, t&igrave;nh trạng giật lag, tụt khung h&igrave;nh vẫn xảy ra khi m&igrave;nh tham chiến ở c&aacute;c vị tr&iacute; đ&ocirc;ng kẻ địch với tốc độ khung h&igrave;nh dao động tầm 25 - 29 FPS.</p>\r\n\r\n<p><a href=\"https://cdn.tgdd.vn/Products/Images/42/274359/samsung-galaxy-a23-6gb-010422-084702.jpg\" onclick=\"return false;\"><img alt=\"Cấu hình PUBG Moblie - Samsung Galaxy A23 6GB\" data-src=\"https://cdn.tgdd.vn/Products/Images/42/274359/samsung-galaxy-a23-6gb-010422-084702.jpg\" src=\"https://cdn.tgdd.vn/Products/Images/42/274359/samsung-galaxy-a23-6gb-010422-084702.jpg\" title=\"Cấu hình PUBG Moblie - Samsung Galaxy A23 6GB\" /></a></p>\r\n\r\n<p>Galaxy A23 sở hữu&nbsp;<a href=\"https://www.thegioididong.com/dtdd-ram-6gb\" target=\"_blank\">RAM 6 GB</a>&nbsp;gi&uacute;p m&igrave;nh thao t&aacute;c c&aacute;c c&ocirc;ng việc h&agrave;ng ng&agrave;y kh&aacute; tốt, đa nhiệm mượt m&agrave; v&agrave; kh&ocirc;ng thấy xuất hiện việc tải lại ứng dụng khi mở nhiều app c&ugrave;ng một l&uacute;c. Để hỗ trợ cho c&aacute;c t&aacute;c vụ n&acirc;ng cao đ&ograve;i hỏi RAM khủng, Samsung hỗ trợ cho m&aacute;y t&iacute;nh năng &ldquo;RAM Plus&rdquo; gi&uacute;p mở rộng bộ nhớ l&ecirc;n đến 10 GB (6 GB mặc định + 4 GB mở rộng).</p>\r\n', 'upload/images/samsung-galaxy-a23-xanh-thumb-600x600.jpg', 1, 1, 0),
(89, 'Samsung Galaxy M53', 12490000, 12000000, 100, 'Có lẽ 2022 là một năm bùng nổ của nhà Samsung, khi hãng liên tục trình làng nhiều sản phẩm có cấu hình mạnh mẽ cùng một mức giá bán hợp lý trên thị trường smartphone tầm trung và giá rẻ, tiêu biểu trong số đó có Samsung Galaxy M53 được xem là cái tên được cộng đồng người dùng tích cực quan tâm và săn đón kể cả khi chưa ra mắt.', '<h3>Nổi bật với ngoại h&igrave;nh đầy ấn tượng</h3>\r\n\r\n<p>Samsung đ&atilde; tr&igrave;nh l&agrave;ng Galaxy M53 với ba phi&ecirc;n bản m&agrave;u v&ocirc; c&ugrave;ng đẹp mắt như m&igrave;nh đang cầm tr&ecirc;n tay, với tone m&agrave;u c&oacute; hơi sẫm đi một t&iacute; l&agrave;m to&aacute;t l&ecirc;n một vẻ huyền b&iacute; đầy cuốn h&uacute;t v&agrave; thanh lịch.</p>\r\n\r\n<p><a href=\"https://cdn.tgdd.vn/Products/Images/42/247364/samsung-galaxy-m53-160522-052736.jpg\" onclick=\"return false;\"><img alt=\"Màu sắc thanh lịch - Samsung Galaxy M53\" data-src=\"https://cdn.tgdd.vn/Products/Images/42/247364/samsung-galaxy-m53-160522-052736.jpg\" src=\"https://cdn.tgdd.vn/Products/Images/42/247364/samsung-galaxy-m53-160522-052736.jpg\" title=\"Màu sắc thanh lịch - Samsung Galaxy M53\" /></a></p>\r\n\r\n<p>Ấn tượng đầu ti&ecirc;n khi nh&igrave;n thấy Galaxy M53 l&agrave; một vẻ ngo&agrave;i tr&ocirc;ng cực kỳ cao cấp, l&agrave;m m&igrave;nh li&ecirc;n tưởng đến một thiết bị ho&agrave;n thiện từ nh&ocirc;m nguy&ecirc;n khối, nhưng thực ra mặt lưng của m&aacute;y được l&agrave;m từ nhựa c&ugrave;ng với hiệu ứng giả kim loại nh&igrave;n rất l&agrave; bắt mắt, cầm nắm tr&ecirc;n tay cũng gi&uacute;p m&igrave;nh trở n&ecirc;n nổi bật hơn.</p>\r\n\r\n<p><a href=\"https://cdn.tgdd.vn/Products/Images/42/247364/samsung-galaxy-m53-160522-052738.jpg\" onclick=\"return false;\"><img alt=\"Vẻ ngoài cao cấp - Samsung Galaxy M53\" data-src=\"https://cdn.tgdd.vn/Products/Images/42/247364/samsung-galaxy-m53-160522-052738.jpg\" src=\"https://cdn.tgdd.vn/Products/Images/42/247364/samsung-galaxy-m53-160522-052738.jpg\" title=\"Vẻ ngoài cao cấp - Samsung Galaxy M53\" /></a></p>\r\n\r\n<p>Mặt lưng của m&aacute;y cũng c&oacute; một độ nh&aacute;m nhẹ, cho ra cảm gi&aacute;c sờ rất l&agrave; th&iacute;ch trong qu&aacute; tr&igrave;nh sử dụng. Tuy nhi&ecirc;n sau khi sử dụng Galaxy M53 một thời gian, m&igrave;nh cảm thấy mặt lưng của m&aacute;y vẫn xuất hiện t&igrave;nh trạng b&aacute;m dấu v&acirc;n tay v&agrave; mồ h&ocirc;i.</p>\r\n\r\n<p><a href=\"https://cdn.tgdd.vn/Products/Images/42/247364/samsung-galaxy-m53-160522-052740.jpg\" onclick=\"return false;\"><img alt=\"Mặt lưng óng ánh - Samsung Galaxy M53\" data-src=\"https://cdn.tgdd.vn/Products/Images/42/247364/samsung-galaxy-m53-160522-052740.jpg\" src=\"https://cdn.tgdd.vn/Products/Images/42/247364/samsung-galaxy-m53-160522-052740.jpg\" title=\"Mặt lưng óng ánh - Samsung Galaxy M53\" /></a></p>\r\n\r\n<p>Galaxy M53 được bao bọc bởi một bộ khung kim loại chắc chắn, gi&uacute;p m&aacute;y trở n&ecirc;n bền bỉ hơn trong qu&aacute; tr&igrave;nh sử dụng cũng như to&aacute;t l&ecirc;n một vẻ nh&igrave;n cao cấp. B&ecirc;n cạnh đ&oacute; Samsung cũng đ&atilde; gia c&ocirc;ng phần khung n&agrave;y c&oacute; hơi cong đi một ch&uacute;t, gi&uacute;p qu&aacute; tr&igrave;nh cầm nắm sử dụng trở n&ecirc;n dễ chịu hơn hẳn, được xem l&agrave; một điểm m&agrave; m&igrave;nh rất l&agrave; ưng.</p>\r\n', 'upload/images/samsung-galaxy-m53-nau-thumb-600x600.jpg', 1, 1, 1),
(92, 'Điện thoại Xiaomi sss11pro', 39990000, 100000, 500, 'xấu', '<p>rất đẹp</p>\r\n', 'upload/images/avat.jpg', 1, 8, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_status`
--

CREATE TABLE `tbl_status` (
  `status_id` int(11) NOT NULL,
  `status_name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_status`
--

INSERT INTO `tbl_status` (`status_id`, `status_name`) VALUES
(1, 'Chờ xử lý'),
(2, 'Đang giao hàng'),
(3, 'Giao hàng thành công'),
(4, 'Đã hủy');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_user`
--

CREATE TABLE `tbl_user` (
  `user_id` int(20) NOT NULL,
  `username` varchar(30) NOT NULL,
  `pass` varchar(100) NOT NULL,
  `fullname` varchar(100) NOT NULL,
  `email` varchar(40) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `phone_num` varchar(15) NOT NULL,
  `address` varchar(100) NOT NULL,
  `rule_user` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_user`
--

INSERT INTO `tbl_user` (`user_id`, `username`, `pass`, `fullname`, `email`, `gender`, `phone_num`, `address`, `rule_user`) VALUES
(25, 'bac123', '4a1c248e5dd3b24c97ab1b6543254756', 'Phan Viet Bac', 'pvbkot1@gmail.com', 'Nam', '0383425324', 'Số 16, Phố Nguyên Xá', 0),
(26, 'manh1234', 'e6ef6ad19456eb81454ce80a889d8d6e', 'Nguyễn Đức Mạnh', 'manhk3123@gmail.com', 'Nam', '0981123456', 'Ba Vì', 0),
(27, 'quan123', '480ce092c37de8dcdacb3a8603ea868a', 'Đoàn Hải Quân', 'Quan453d@gmail.com', 'Nam', '0984225778', 'Nguyễn Xá', 0),
(28, 'phuoc123', '5c0c2f13beccc706349003e100c30a58', 'Bùi Minh Phước', 'nnhphuoc@gamil.com', 'Nam', '0865552114', 'Tây Tựu', 0),
(29, 'lam123', 'ac34c42d3198293cbb5ffb8bca3539d2', 'Nguyễn Nam Lâm', 'namlam123@gmail.com', 'Nam', '0963254114', 'hồ tùng mậu', 0),
(30, 'Cuoi0526', '25f9e794323b453885f5181f1b624d0b', 'Đoàn Hải Quân', 'doanhaiquan0526@gmail.com', 'Nam', '0365285506', 'Phường Lê Hồng Phong Xã Phù Vân Tp. Phủ Lý Tỉnh Hà Nam Việt Nam - Đại học Công Nghiệp Hà Nội cơ sở 3', 0),
(31, 'admin123', '25f9e794323b453885f5181f1b624d0b', 'admin', 'admin@gmail.com', 'Nam', '0987654321', 'admin', 1);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `tbl_brand`
--
ALTER TABLE `tbl_brand`
  ADD PRIMARY KEY (`brand_id`);

--
-- Chỉ mục cho bảng `tbl_cart`
--
ALTER TABLE `tbl_cart`
  ADD KEY `fk_proid` (`user_id`),
  ADD KEY `fk_proidd` (`pro_id`);

--
-- Chỉ mục cho bảng `tbl_category`
--
ALTER TABLE `tbl_category`
  ADD PRIMARY KEY (`cat_id`);

--
-- Chỉ mục cho bảng `tbl_order`
--
ALTER TABLE `tbl_order`
  ADD PRIMARY KEY (`order_id`),
  ADD KEY `fk_user` (`user_id`);

--
-- Chỉ mục cho bảng `tbl_orderdetail`
--
ALTER TABLE `tbl_orderdetail`
  ADD KEY `tbl_orderid` (`order_id`),
  ADD KEY `fkpro` (`pro_id`);

--
-- Chỉ mục cho bảng `tbl_page`
--
ALTER TABLE `tbl_page`
  ADD PRIMARY KEY (`page_id`);

--
-- Chỉ mục cho bảng `tbl_post`
--
ALTER TABLE `tbl_post`
  ADD PRIMARY KEY (`post_id`);

--
-- Chỉ mục cho bảng `tbl_product`
--
ALTER TABLE `tbl_product`
  ADD PRIMARY KEY (`pro_id`),
  ADD KEY `fk_catid` (`cat_id`),
  ADD KEY `fk_brand_id` (`brand_id`);

--
-- Chỉ mục cho bảng `tbl_status`
--
ALTER TABLE `tbl_status`
  ADD PRIMARY KEY (`status_id`);

--
-- Chỉ mục cho bảng `tbl_user`
--
ALTER TABLE `tbl_user`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `tbl_brand`
--
ALTER TABLE `tbl_brand`
  MODIFY `brand_id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT cho bảng `tbl_category`
--
ALTER TABLE `tbl_category`
  MODIFY `cat_id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `tbl_order`
--
ALTER TABLE `tbl_order`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=146;

--
-- AUTO_INCREMENT cho bảng `tbl_page`
--
ALTER TABLE `tbl_page`
  MODIFY `page_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `tbl_post`
--
ALTER TABLE `tbl_post`
  MODIFY `post_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `tbl_product`
--
ALTER TABLE `tbl_product`
  MODIFY `pro_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=93;

--
-- AUTO_INCREMENT cho bảng `tbl_status`
--
ALTER TABLE `tbl_status`
  MODIFY `status_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `tbl_user`
--
ALTER TABLE `tbl_user`
  MODIFY `user_id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `tbl_cart`
--
ALTER TABLE `tbl_cart`
  ADD CONSTRAINT `fk_proidd` FOREIGN KEY (`pro_id`) REFERENCES `tbl_product` (`pro_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_userid` FOREIGN KEY (`user_id`) REFERENCES `tbl_user` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `tbl_order`
--
ALTER TABLE `tbl_order`
  ADD CONSTRAINT `fk_user` FOREIGN KEY (`user_id`) REFERENCES `tbl_user` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `tbl_orderdetail`
--
ALTER TABLE `tbl_orderdetail`
  ADD CONSTRAINT `fkpro` FOREIGN KEY (`pro_id`) REFERENCES `tbl_product` (`pro_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tbl_orderid` FOREIGN KEY (`order_id`) REFERENCES `tbl_order` (`order_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `tbl_product`
--
ALTER TABLE `tbl_product`
  ADD CONSTRAINT `fk_brand_id` FOREIGN KEY (`brand_id`) REFERENCES `tbl_brand` (`brand_id`),
  ADD CONSTRAINT `fk_catid` FOREIGN KEY (`cat_id`) REFERENCES `tbl_category` (`cat_id`);
--
-- Cơ sở dữ liệu: `phpmyadmin`
--
CREATE DATABASE IF NOT EXISTS `phpmyadmin` DEFAULT CHARACTER SET utf8 COLLATE utf8_bin;
USE `phpmyadmin`;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `pma__bookmark`
--

CREATE TABLE `pma__bookmark` (
  `id` int(10) UNSIGNED NOT NULL,
  `dbase` varchar(255) NOT NULL DEFAULT '',
  `user` varchar(255) NOT NULL DEFAULT '',
  `label` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `query` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Bookmarks';

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `pma__central_columns`
--

CREATE TABLE `pma__central_columns` (
  `db_name` varchar(64) NOT NULL,
  `col_name` varchar(64) NOT NULL,
  `col_type` varchar(64) NOT NULL,
  `col_length` text DEFAULT NULL,
  `col_collation` varchar(64) NOT NULL,
  `col_isNull` tinyint(1) NOT NULL,
  `col_extra` varchar(255) DEFAULT '',
  `col_default` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Central list of columns';

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `pma__column_info`
--

CREATE TABLE `pma__column_info` (
  `id` int(5) UNSIGNED NOT NULL,
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `table_name` varchar(64) NOT NULL DEFAULT '',
  `column_name` varchar(64) NOT NULL DEFAULT '',
  `comment` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `mimetype` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `transformation` varchar(255) NOT NULL DEFAULT '',
  `transformation_options` varchar(255) NOT NULL DEFAULT '',
  `input_transformation` varchar(255) NOT NULL DEFAULT '',
  `input_transformation_options` varchar(255) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Column information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `pma__designer_settings`
--

CREATE TABLE `pma__designer_settings` (
  `username` varchar(64) NOT NULL,
  `settings_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Settings related to Designer';

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `pma__export_templates`
--

CREATE TABLE `pma__export_templates` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) NOT NULL,
  `export_type` varchar(10) NOT NULL,
  `template_name` varchar(64) NOT NULL,
  `template_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved export templates';

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `pma__favorite`
--

CREATE TABLE `pma__favorite` (
  `username` varchar(64) NOT NULL,
  `tables` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Favorite tables';

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `pma__history`
--

CREATE TABLE `pma__history` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(64) NOT NULL DEFAULT '',
  `db` varchar(64) NOT NULL DEFAULT '',
  `table` varchar(64) NOT NULL DEFAULT '',
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp(),
  `sqlquery` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='SQL history for phpMyAdmin';

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `pma__navigationhiding`
--

CREATE TABLE `pma__navigationhiding` (
  `username` varchar(64) NOT NULL,
  `item_name` varchar(64) NOT NULL,
  `item_type` varchar(64) NOT NULL,
  `db_name` varchar(64) NOT NULL,
  `table_name` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Hidden items of navigation tree';

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `pma__pdf_pages`
--

CREATE TABLE `pma__pdf_pages` (
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `page_nr` int(10) UNSIGNED NOT NULL,
  `page_descr` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='PDF relation pages for phpMyAdmin';

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `pma__recent`
--

CREATE TABLE `pma__recent` (
  `username` varchar(64) NOT NULL,
  `tables` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Recently accessed tables';

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `pma__relation`
--

CREATE TABLE `pma__relation` (
  `master_db` varchar(64) NOT NULL DEFAULT '',
  `master_table` varchar(64) NOT NULL DEFAULT '',
  `master_field` varchar(64) NOT NULL DEFAULT '',
  `foreign_db` varchar(64) NOT NULL DEFAULT '',
  `foreign_table` varchar(64) NOT NULL DEFAULT '',
  `foreign_field` varchar(64) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Relation table';

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `pma__savedsearches`
--

CREATE TABLE `pma__savedsearches` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) NOT NULL DEFAULT '',
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `search_name` varchar(64) NOT NULL DEFAULT '',
  `search_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved searches';

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `pma__table_coords`
--

CREATE TABLE `pma__table_coords` (
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `table_name` varchar(64) NOT NULL DEFAULT '',
  `pdf_page_number` int(11) NOT NULL DEFAULT 0,
  `x` float UNSIGNED NOT NULL DEFAULT 0,
  `y` float UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table coordinates for phpMyAdmin PDF output';

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `pma__table_info`
--

CREATE TABLE `pma__table_info` (
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `table_name` varchar(64) NOT NULL DEFAULT '',
  `display_field` varchar(64) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `pma__table_uiprefs`
--

CREATE TABLE `pma__table_uiprefs` (
  `username` varchar(64) NOT NULL,
  `db_name` varchar(64) NOT NULL,
  `table_name` varchar(64) NOT NULL,
  `prefs` text NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Tables'' UI preferences';

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `pma__tracking`
--

CREATE TABLE `pma__tracking` (
  `db_name` varchar(64) NOT NULL,
  `table_name` varchar(64) NOT NULL,
  `version` int(10) UNSIGNED NOT NULL,
  `date_created` datetime NOT NULL,
  `date_updated` datetime NOT NULL,
  `schema_snapshot` text NOT NULL,
  `schema_sql` text DEFAULT NULL,
  `data_sql` longtext DEFAULT NULL,
  `tracking` set('UPDATE','REPLACE','INSERT','DELETE','TRUNCATE','CREATE DATABASE','ALTER DATABASE','DROP DATABASE','CREATE TABLE','ALTER TABLE','RENAME TABLE','DROP TABLE','CREATE INDEX','DROP INDEX','CREATE VIEW','ALTER VIEW','DROP VIEW') DEFAULT NULL,
  `tracking_active` int(1) UNSIGNED NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Database changes tracking for phpMyAdmin';

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `pma__userconfig`
--

CREATE TABLE `pma__userconfig` (
  `username` varchar(64) NOT NULL,
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `config_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User preferences storage for phpMyAdmin';

--
-- Đang đổ dữ liệu cho bảng `pma__userconfig`
--

INSERT INTO `pma__userconfig` (`username`, `timevalue`, `config_data`) VALUES
('root', '2019-10-21 13:37:09', '{\"Console\\/Mode\":\"collapse\"}');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `pma__usergroups`
--

CREATE TABLE `pma__usergroups` (
  `usergroup` varchar(64) NOT NULL,
  `tab` varchar(64) NOT NULL,
  `allowed` enum('Y','N') NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User groups with configured menu items';

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `pma__users`
--

CREATE TABLE `pma__users` (
  `username` varchar(64) NOT NULL,
  `usergroup` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Users and their assignments to user groups';

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `pma__central_columns`
--
ALTER TABLE `pma__central_columns`
  ADD PRIMARY KEY (`db_name`,`col_name`);

--
-- Chỉ mục cho bảng `pma__column_info`
--
ALTER TABLE `pma__column_info`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `db_name` (`db_name`,`table_name`,`column_name`);

--
-- Chỉ mục cho bảng `pma__designer_settings`
--
ALTER TABLE `pma__designer_settings`
  ADD PRIMARY KEY (`username`);

--
-- Chỉ mục cho bảng `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_user_type_template` (`username`,`export_type`,`template_name`);

--
-- Chỉ mục cho bảng `pma__favorite`
--
ALTER TABLE `pma__favorite`
  ADD PRIMARY KEY (`username`);

--
-- Chỉ mục cho bảng `pma__history`
--
ALTER TABLE `pma__history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `username` (`username`,`db`,`table`,`timevalue`);

--
-- Chỉ mục cho bảng `pma__navigationhiding`
--
ALTER TABLE `pma__navigationhiding`
  ADD PRIMARY KEY (`username`,`item_name`,`item_type`,`db_name`,`table_name`);

--
-- Chỉ mục cho bảng `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  ADD PRIMARY KEY (`page_nr`),
  ADD KEY `db_name` (`db_name`);

--
-- Chỉ mục cho bảng `pma__recent`
--
ALTER TABLE `pma__recent`
  ADD PRIMARY KEY (`username`);

--
-- Chỉ mục cho bảng `pma__relation`
--
ALTER TABLE `pma__relation`
  ADD PRIMARY KEY (`master_db`,`master_table`,`master_field`),
  ADD KEY `foreign_field` (`foreign_db`,`foreign_table`);

--
-- Chỉ mục cho bảng `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_savedsearches_username_dbname` (`username`,`db_name`,`search_name`);

--
-- Chỉ mục cho bảng `pma__table_coords`
--
ALTER TABLE `pma__table_coords`
  ADD PRIMARY KEY (`db_name`,`table_name`,`pdf_page_number`);

--
-- Chỉ mục cho bảng `pma__table_info`
--
ALTER TABLE `pma__table_info`
  ADD PRIMARY KEY (`db_name`,`table_name`);

--
-- Chỉ mục cho bảng `pma__table_uiprefs`
--
ALTER TABLE `pma__table_uiprefs`
  ADD PRIMARY KEY (`username`,`db_name`,`table_name`);

--
-- Chỉ mục cho bảng `pma__tracking`
--
ALTER TABLE `pma__tracking`
  ADD PRIMARY KEY (`db_name`,`table_name`,`version`);

--
-- Chỉ mục cho bảng `pma__userconfig`
--
ALTER TABLE `pma__userconfig`
  ADD PRIMARY KEY (`username`);

--
-- Chỉ mục cho bảng `pma__usergroups`
--
ALTER TABLE `pma__usergroups`
  ADD PRIMARY KEY (`usergroup`,`tab`,`allowed`);

--
-- Chỉ mục cho bảng `pma__users`
--
ALTER TABLE `pma__users`
  ADD PRIMARY KEY (`username`,`usergroup`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `pma__column_info`
--
ALTER TABLE `pma__column_info`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `pma__history`
--
ALTER TABLE `pma__history`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  MODIFY `page_nr` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- Cơ sở dữ liệu: `sinhvien`
--
CREATE DATABASE IF NOT EXISTS `sinhvien` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `sinhvien`;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `thongtin`
--

CREATE TABLE `thongtin` (
  `id` int(10) NOT NULL,
  `hoten` varchar(30) NOT NULL,
  `gioitinh` varchar(10) NOT NULL,
  `hinhanh` varchar(20) NOT NULL,
  `quequan` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `thongtin`
--

INSERT INTO `thongtin` (`id`, `hoten`, `gioitinh`, `hinhanh`, `quequan`) VALUES
(1, 'Nguyen Van G', 'Nam', 'anh1.png', 'Nghe An'),
(2, 'Nguyen Van B', 'Nam', 'anh2.png', 'Ha Noi'),
(3, 'Nguyen Van C', 'Nam', 'anh3.png', 'Ha Noi');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `thongtin`
--
ALTER TABLE `thongtin`
  ADD PRIMARY KEY (`id`);
--
-- Cơ sở dữ liệu: `test`
--
CREATE DATABASE IF NOT EXISTS `test` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `test`;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
