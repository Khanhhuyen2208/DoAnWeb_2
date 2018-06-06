INSERT INTO `catalogs` (`created_at`, `updated_at`, `type_id`, `name`, `is_parent`) VALUES (NOW(), NOW(), '1', 'Điện thoại', '1');
INSERT INTO `catalogs` (`created_at`, `updated_at`, `type_id`, `name`, `is_parent`) VALUES (NOW(), NOW(), '2', 'Ba lô, túi xách', '1');
INSERT INTO `catalogs` (`created_at`, `updated_at`, `type_id`, `name`, `is_parent`) VALUES (NOW(), NOW(), '3', 'Laptop', '1');
INSERT INTO `catalogs` (`created_at`, `updated_at`, `type_id`, `name`, `is_parent`) VALUES (NOW(), NOW(), '4', 'Rượu', '1');


/* users */
INSERT INTO `users` (`id`, `name`, `email`, `password`, `address`, `phone_number`, `is_admin`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'admin@gmail.com', '48690', '135 Trần Hưng Đạo', '0869052629', 1, '2018-01-05 14:21:34', '2018-01-06 23:07:01'),
(2, 'testman', 'test@gmail.com', '48690', '227 Nguyễn Văn Cừ', '123456789', 0, '2018-01-05 14:23:36', '2018-01-05 14:23:36'),
(3, 'testman2', 'test2@gmail.com', '48690', '227 Nguyễn Văn Cừ', '123456789', 0, '2018-01-05 14:23:36', '2018-01-05 14:23:36');

/* transactions */
INSERT INTO `transactions` (`id`, `created_at`, `updated_at`, `status`, `user_id`, `amount`) VALUES
(1, '2018-01-07 03:20:57', '2018-01-07 03:20:57', 1, 1, 250000),
(2, '2018-01-07 03:20:57', '2018-01-07 03:20:57', 0, 1, 900000),
(3, '2018-01-07 03:20:57', '2018-01-07 01:53:03', 0, 2, 6690000),
(6, '2018-01-07 03:05:21', '2018-01-07 04:09:50', 1, 3, 58805000),
(7, '2018-01-07 03:05:21', '2018-01-07 04:09:50', 1, 3, 58805000),
(8, '2018-01-07 04:11:46', '2018-01-07 04:13:13', 1, 3, 1200000),
(9, '2018-01-07 04:25:32', '2018-01-07 04:25:32', 0, 3, 10790000);

/* product */
INSERT INTO `products` (`id`, `created_at`, `updated_at`, `catalog_id`, `name`, `price`, `content`, `discount`, `image_link`, `views`, `producer`, `sold`, `remaining_quantity`) VALUES
(1, '2018-01-06 08:21:35', '2018-01-06 08:21:35', 1, 'SAMSUNG GALAXY J3 VÀNG', 2900000, 'Màn hình : Super AMOLED, 5 inches\r\nHĐH: Android\r\nCPU: Quad Core 1.3GHz\r\nCamera: 8MP, 5MP\r\nPin: 2600 mAh', 0, 'images/dienthoai/dt100.jpg',  0, 'SAMSUNG',5,50),
(2, '2018-01-06 08:39:31', '2018-01-06 08:39:31', 1, 'SAMSUNG GALAXY J7 PRIME ĐEN', 5450000, 'Màn hình : 5.5 inches\r\nHĐH: Android\r\nCPU: Octa-core 1.6 GHz\r\nCamera: 13 MP, 8 MP\r\nPin: 3300mAh\r\n', 0, 'images/dienthoai/dt101.jpg',  0, 'SAMSUNG',1,10),
(3, '2018-01-06 08:39:31', '2018-01-06 08:39:31', 1, 'SAMSUNG GALAXY J7 PRIME VÀNG\r\n', 5490000, 'Màn hình : 5.5 inches\r\nHĐH: Android\r\nCPU: Octa-core 1.6 GHz\r\nCamera: 13 MP, 8 MP\r\nPin: 3300mAh\r\n', 0, 'images/dienthoai/dt102.jpg',  0, 'SAMSUNG',4,30),
(4, '2018-01-06 08:39:31', '2018-01-06 08:39:31', 1, 'SAMSUNG GALAXY J3 PRO VÀNG\r\n', 4490000, 'Màn hình TFT 5\ HD\r\nBộ nhớ RAM 2GB/Bộ nhớ trong 16GB\r\nVi xử lý 4 nhân 1.4GHz\r\nCamera trước/sau: 5MP/13MP\r\nHệ điều hành Android 7.0', 0, 'images/dienthoai/dt103.png',  0, 'SAMSUNG',0,20),
(5, '2018-01-06 08:39:31', '2018-01-06 08:39:31', 1, 'SAMSUNG GALAXY J3 PRO XANH\r\n', 4490000, 'Màn hình TFT 5\ HD\r\nBộ nhớ RAM 2GB/Bộ nhớ trong 16GB\r\nVi xử lý 4 nhân 1.4GHz\r\nCamera trước/sau: 5MP/13MP\r\nHệ điều hành Android 7.0', 0, 'images/dienthoai/dt104.png',  0, 'SAMSUNG',12,50),
(6, '2018-01-06 08:39:31', '2018-01-06 08:39:31', 1, 'SAMSUNG GALAXY NODE8 VÀNG\r\n', 22490000, 'Màn hình: 6.3\" Super AMOLED\r\nHệ điều hành: Android 7.1\r\nCPU: Octa-core\r\nPin: Li-Ion 3300 mAh\r\nCamera sau: dual 12MP - trước: 8MP\r\nChipset: Exynos 8895 Octa', 0, 'images/dienthoai/dt105.png',  0, 'SAMSUNG',5,19),
(7, '2018-01-06 08:39:31', '2018-01-06 08:39:31', 1, 'SAMSUNG GALAXY A8 2018 VÀNG\r\n', 10990000, 'Thiết kế kim loại nguyên khối\r\nMàn hình Super AMOLED 5.6\r\nRAM 4 GB, bộ nhớ trong 32GB\r\nVi xử lý Exynos 7880 8 nhân\r\nKháng nước, chống bụi IP68\r\nSạc nhanh qua cổng USB type C', 0, 'images/dienthoai/dt106.jpg',  0, 'SAMSUNG',1,12),
(8, '2018-01-06 08:39:31', '2018-01-06 08:39:31', 1, 'OPPO F5 YOUTH VÀNG\r\n', 6190000, 'Tích hợp bảo mật vân tay\r\nThiết kế mỏng nhẹ, dày chỉ 7.5mm\r\nMàn hình 6 sắc nét, độ phân giải Full HD+\r\nVi xử lý Helio P23 hiệu năng cao\r\nRAM 3GB, Bộ nhớ trong 32 GB', 0, 'images/dienthoai/dt107.jpg',  0, 'OPPO',0,10),
(9, '2018-01-06 08:39:31', '2018-01-06 08:39:31', 1, 'OPPO F3 VÀNG\r\n', 6090000, 'Màn hình: 5.5 inches, Full HD\r\nHĐH: Android 6.0\r\nCPU: 1.5 GHz\r\nCamera: trước 16 MP + 8 MP, sau 13MP\r\nPin: 3200 mAh', 0, 'images/dienthoai/dt108.png',  0, 'OPPO',2,10),
(10, '2018-01-06 08:39:31', '2018-01-06 08:39:31', 1, 'OPPO F3 VÀNG HỒNG\r\n', 6090000, 'Màn hình: 5.5 inches, Full HD\r\nHĐH: Android 6.0\r\nCPU: 1.5 GHz\r\nCamera: trước 16 MP + 8 MP, sau 13MP\r\nPin: 3200 mAh', 0, 'images/dienthoai/dt109.png',  0, 'OPPO',5,10),
(11, '2018-01-06 08:39:31', '2018-01-06 08:39:31', 1, 'OPPO F3 ĐEN\r\n', 6090000, 'Màn hình: 5.5 inches, Full HD\r\nHĐH: Android 6.0\r\nCPU: 1.5 GHz\r\nCamera: trước 16 MP + 8 MP, sau 13MP\r\nPin: 3200 mAh', 0, 'images/dienthoai/dt110.png',  0, 'OPPO',5,10),
(12, '2018-01-06 08:39:31', '2018-01-06 08:39:31', 1, 'SAMSUNG GALAXY J7 PRO ĐEN\r\n', 6990000, 'Màn hình:SuperAMOLED FullHD\r\nCamera trước và sau:13 MP\r\nChip 8 nhân 1,6 GHz\r\nRAM 3GB\r\nHệ điều hành Android 7 Nougat', 0, 'images/dienthoai/dt111.png',  0,'SAMSUNG',5,20),
(13, '2018-01-06 08:39:31', '2018-01-06 08:39:31', 1, 'SAMSUNG GALAXY J7 PRO VÀNG\r\n', 6990000, 'Màn hình: SuperAMOLED Full HD\r\nCamera trước và sau: 13 MP\r\nChip 8 nhân tốc độ 1,6 GHz/ RAM 3GB\r\nHệ điều hành Android 7 Nougat', 0, 'images/dienthoai/dt112.png',  0,'SAMSUNG',4,11),
(14, '2018-01-06 08:39:31', '2018-01-06 08:39:31', 1, 'SAMSUNG GALAXY J7 PRO XANH\r\n', 6990000, 'Màn hình: SuperAMOLED Full HD\r\nCamera trước và sau: 13 MP\r\nChip 8 nhân tốc độ 1,6 GHz/ RAM 3GB\r\nHệ điều hành Android 7 Nougat', 0, 'images/dienthoai/dt113.png',  0, 'SAMSUNG',1,16),
(15, '2018-01-06 08:39:31', '2018-01-06 08:39:31', 1, 'SAMSUNG GALAXY J7 PRO XANH\r\n', 6990000, 'Màn hình: SuperAMOLED Full HD\r\nCamera trước và sau: 13 MP\r\nChip 8 nhân tốc độ 1,6 GHz/ RAM 3GB\r\nHệ điều hành Android 7 Nougat', 0, 'images/dienthoai/dt114.jpg',  0, 'SAMSUNG',3,10),
(16, '2018-01-06 08:39:31', '2018-01-06 08:39:31', 1, 'SAMSUNG GALAXY J3 PRO\r\n', 4490000, 'Màn hình TFT 5\ HD\r\nBộ nhớ RAM 2GB/Bộ nhớ trong 16GB\r\nVi xử lý 4 nhân 1.4GHz\r\nCamera trước/sau: 5MP/13MP\r\nHệ điều hành Android 7.0', 0, 'images/dienthoai/dt115.png',  0, 'SAMSUNG',5,23),
(17, '2018-01-06 09:09:02', '2018-01-06 09:09:02', 2, 'TÚI ĐEO CHÉO PHỐI MÀU CLASSIC\r\n', 355000, 'Chất liệu: Da PU\r\nKích thước: Ngang 21cm * Cao 20cm * Rộng 11cm', 0, 'images/tuixach/tx100.jpg',  0, 'CHINA',1,23),
(18, '2018-01-06 09:09:02', '2018-01-06 09:09:02', 2, 'TÚI ĐEO CHÉO CLASSIC NỔI BẬT\r\n', 385000, 'Chất liệu: Da PU\r\nKích thước: Ngang 23cm * Cao 15cm * Rộng 6.5cm', 0, 'images/tuixach/tx101.jpg',  0, 'CHINA',2,23),
(19, '2018-01-06 09:09:02', '2018-01-06 09:09:02', 2, 'TÚI ĐEO CHÉO PHỐI DA CÁ TÍNH\r\n', 335000, 'Chất liệu: Da PU\r\nKích thước: Ngang 17cm * Cao 15cm * Rộng 9cm', 0, 'images/tuixach/tx102.jpg',  0, 'CHINA',10,40),
(20, '2018-01-06 09:09:02', '2018-01-06 09:09:02', 2, 'TÚI ĐEO CHÉO CÁ TÍNH\r\n', 345000, 'Chất liệu: Da PU\r\nKích thước: Ngang 23cm * Cao 15cm * Rộng 10cm.', 0, 'images/tuixach/tx103.jpg',  0, 'CHINA',5,50),
(21, '2018-01-06 09:09:02', '2018-01-06 09:09:02', 2, 'TÚI ĐEO CHÉO PHỐI MÀU THANH LỊCH\r\n', 305000, 'Chất liệu: Da PU\r\nKích thước: Ngang 24cm * Cao 15cm * Rộng 8cm', 0, 'images/tuixach/tx104.jpg',  0, 'CHINA',9,11),
(22, '2018-01-06 09:09:02', '2018-01-06 09:09:02', 2, 'TÚI ĐEO CHÉO KHOE TRÒN LỤC GIÁC\r\n', 385000, 'Chất liệu: Da PU\r\nKích thước: Ngang 27cm * Cao 20cm * Rộng 10cm.', 0, 'images/tuixach/tx105.jpg',  0, 'CHINA',1,23),
(23, '2018-01-06 09:09:02', '2018-01-06 09:09:02', 2, 'TÚI ĐEO CHÉO XINH XẮN\r\n', 335000, 'Chất liệu: Da PU\r\nKích thước: Ngang 18cm * Cao 12cm', 0, 'images/tuixach/tx106.jpg',  0, 'CHINA',2,20),
(24, '2018-01-06 09:09:02', '2018-01-06 09:09:02', 2, 'TÚI ĐEO CHÉO PHỐI DA ĐỘC ĐÁO\r\n', 345000, 'Chất liệu: Da PU\r\nKích thước: Ngang 23cm * Cao 26cm', 0, 'images/tuixach/tx107.jpg',  0, 'CHINA',5,19),
(25, '2018-01-06 09:09:02', '2018-01-06 09:09:02', 2, 'TÚI ĐEO CHÉO NỮ TÍNH\r\n', 400000, 'Chất liệu: Da PU\r\nKích thước: Ngang 24cm * Cao 23cm * Rộng 12cm', 0, 'images/tuixach/tx108.jpg',  0, 'CHINA',2,22),
(26, '2018-01-06 09:09:02', '2018-01-06 09:09:02', 2, 'TÚI ĐEO CHÉO KHÓA 3D\r\n', 345000, 'Chất liệu: Da PU\r\nKích thước: Ngang 20cm * Cao 18cm * Rộng 12cm', 0, 'images/tuixach/tx109.jpg',  0, 'CHINA',1,3),
(27, '2018-01-06 09:09:02', '2018-01-06 09:09:02', 2, 'TÚI MINI SANG TRỌNG\r\n', 390000, 'Chất liệu: Da PU\r\nKích thước: Ngang 20cm * Cao 11cm.', 0, 'images/tuixach/tx110.jpg',  0, 'CHINA',5,23),
(28, '2018-01-06 09:09:02', '2018-01-06 09:09:02', 2, 'TÚI ĐEO CHÉO PHỐI MÀU NỔI BẬT\r\n', 350000, 'Chất liệu: Da PU\r\nKích thước: Ngang 19cm * Cao 13cm * Rộng 8cm', 0, 'images/tuixach/tx111.jpg',  0, 'CHINA',10,23),
(29, '2018-01-06 09:09:02', '2018-01-06 09:09:02', 2, 'TÚI ĐEO CHÉO THỜI TRANG\r\n', 350000, 'Chất liệu: Da PU\r\nKích thước: Ngang 22cm * Cao 14cm * Rộng 9cm.', 0, 'images/tuixach/tx112.jpg',  0, 'CHINA',12,23),
(30, '2018-01-06 09:09:02', '2018-01-06 09:09:02', 2, 'TÚI CLASSIC THANH LỊCH\r\n', 390000, 'Chất liệu: Da PU\r\nKích thước: Ngang 23cm * Cao 17cm * Rộng 10cm.', 0, 'images/tuixach/tx113.jpg',  0, 'CHINA',2,23),
(31, '2018-01-06 09:09:02', '2018-01-06 09:09:02', 2, 'TÚI 2IN1 PHONG CÁCH\r\n', 390000, 'Chất liệu: Da Suede\r\nKích thước: Ngang 23m * Cao 20cm * Rộng 10cm.', 0, 'images/tuixach/tx114.jpg',  0, 'CHINA',0,23),
(32, '2018-01-06 09:09:02', '2018-01-06 09:09:02', 2, 'TÚI ĐEO CHÉO PHỐI MÀU VÀ CHẤT LIỆU\r\n', 360000, 'Chất liệu: Da PU\r\nKích thước: Ngang 27cm * Cao 20cm * Rộng 11cm.', 0, 'images/tuixach/tx115.jpg',  0, 'CHINA',0,23),
(33, '2018-01-06 09:09:02', '2018-01-06 09:09:02', 2, 'TÚI CÔNG SỞ NỮ TÍNH\r\n', 370000, 'Chất liệu: Da PU\r\nKích thước: Ngang 24cm * Cao 22cm * Rộng 11cm', 0, 'images/tuixach/tx116.jpg',  0, 'CHINA',0,23),
(34, '2018-01-06 09:09:02', '2018-01-06 09:09:02', 2, 'TÚI FASHION CÁ TÍNH\r\n', 425000, 'Chất liệu: Da PU\r\nKích thước: Ngang 24cm * Cao 17cm * Rộng 9cm', 0, 'images/tuixach/tx117.jpg',  0, 'CHINA',0,23),
(35, '2018-01-06 09:09:02', '2018-01-06 09:09:02', 2, 'TÚI ĐEO CHÉO KHÓA KÉO DỌC\r\n', 425000, 'Chất liệu: Da PU\r\nKích thước: Ngang 25cm * Cao 23cm', 0, 'images/tuixach/tx118.jpg',  0, 'CHINA',0,20),
(36, '2018-01-06 09:09:02', '2018-01-06 09:09:02', 2, 'TÚI ĐEO CHÉO ĐỘC ĐÁO\r\n', 365000, 'Chất liệu: Da PU\r\nKích thước: Ngang 18cm * Cao 15cm', 0, 'images/tuixach/tx119.jpg',  0, 'CHINA',0,20),
(37, '2018-01-06 09:10:28', '2018-01-06 09:10:28', 2, 'TÚI CÔNG SỞ ĐA NGĂN\r\n', 365000, 'Chất liệu: Da PU\r\nKích thước: Ngang 19cm * Cao 12cm * Rộng 7.5cm', 0, 'images/tuixach/tx120.jpg',  0, 'CHINA',0,20),
(38, '2018-01-06 09:37:57', '2018-01-06 09:37:57', 3, 'Asus E502NA-GO021\r\n', 5990000, 'Màn Hình : 15.6 inchLED Back-litCPU : Intel, Celeron, 1.10 GHzRam : 4 GB,\r\n DDR3L, 1333 MHzVGA : Intel HD Graphics ShareHĐH : ENDLESSNặng : 1.86 Kg\r\n', 0, 'images/laptop/lt100.jpg',  0, 'ASUS',0,10),
(39, '2018-01-06 09:37:57', '2018-01-06 09:37:57', 3, 'Dell V3468\r\n', 10790000, 'Màn Hình : 14 inchHDCPU : Intel, Core i3, 2.4 GhzRam : 4 GB, \r\nDDR4, 2133 MHzVGA : Intel HD Graphics ShareHĐH : UbuntuNặng : 1.96 kg', 0, 'images/laptop/lt101.png',  0, 'DELL',1,20),
(40, '2018-01-06 09:37:57', '2018-01-06 09:37:57', 3, 'MSI GL62M 7RDX – 1036XVN\r\n', 18990000, '\"Màn Hình : 15.6 inchWide-ViewCPU : Intel, Core i5, 2.50 GHzRam : 4 GB,\r\n DDR4, 2133 MHzVGA : NVIDIA Geforce GTX 1050 2 GBHĐH : Free DOSNặng : 2.2 Kg\"\r\n', 0, 'images/laptop/lt102.png',  0, 'MSI',0,10),
(41, '2018-01-06 09:37:57', '2018-01-06 09:37:57', 3, 'MSI GL62M 7RDX-1817XVN\r\n', 20000000, 'Màn Hình : 15.6 inchWide-ViewCPU : Intel, Core i5, 2.50 GHzRam : 8 GB,\r\n DDR4, 2133 MHzVGA : NVIDIA Geforce GTX 1050 2 GBHĐH : Free DOSNặng : 2.2 Kg', 0, 'images/laptop/lt103.png',  0, 'MSI',10,20),
(42, '2018-01-06 09:37:57', '2018-01-06 09:37:57', 3, 'MSI GL62M 7RDX-1816XVN\r\n', 25990000, 'Màn Hình : 15.6 inchWide-ViewCPU : Intel, Core i7, 2.80 GHzRam : 8 GB,\r\n DDR4, 2400MHzVGA : NVIDIA Geforce GTX 1050 4 GBHĐH : Free DOSNặng : 2.2 Kg', 0, 'images/laptop/lt104.png',  0, 'MSI',2,20),
(43, '2018-01-06 09:37:57', '2018-01-06 09:37:57', 3, 'Dell Vostro V5568/i5-7200U (2.5GHz) \r\n', 16000000, 'Màn Hình : 15.6 inch HD  Anti-Glare LEDCPU : Intel, Core i5, 2.50 GHzRam : 4 GB,\r\n DDR4, 2133 MHzVGA : Intel(R) HD 620 GraphicsHĐH : ubuntuNặng : 2.0Kg', 0, 'images/laptop/lt105.png',  0,'DELL',1,10),
(44, '2018-01-06 09:37:57', '2018-01-06 09:37:57', 3, 'Dell Vostro V5568/i5-7200U/Win10\r\n', 16990000, 'Màn Hình : 15.6 inchHD LEDCPU : Intel, Core i5, 2.50 GHzRam : 4 GB, \r\nDDR4, 2133 MHzVGA : Intel® HD Graphics 620 ShareHĐH : Windows 10Nặng : 1.98Kg', 0, 'images/laptop/lt106.png',  0, 'DELL',2,10),
(45, '2018-01-06 09:37:57', '2018-01-06 09:37:57', 3, 'Dell Inspiron N3567/i5-7200U\r\n', 14500000, 'Màn Hình : 15.6 inchTruelife LED-Backlit DisplayCPU : Intel, Core i5-7200URam : 4 GB, \r\nDDR4, 2133 MHzVGA : AMD Radeon Graphics 2 GBHĐH : Ubuntu Linux 16.04Nặng : 2.30 Kg', 0, 'images/laptop/lt107.png',  0,'DELL',0,20),
(46, '2018-01-06 09:37:57', '2018-01-06 09:37:57', 3, 'MSI GL62 7RD - 675XVN\r\n', 23000000, 'Màn Hình : 15.6 incheDP Vivid Color 94%CPU : Intel, Core i7, 2.80 GHzRam : 8 GB, \r\nDDR4, 2400MHzVGA : NVIDIA Geforce GTX 1050 2 GBHĐH : Free DOSNặng : 2.3kg', 0, 'images/laptop/lt108.png',  0,'MSI',0,22),
(47, '2018-01-06 09:37:57', '2018-01-06 09:37:57', 3, 'HP Envy 13-ad076TU\r\n', 20000000, 'Màn Hình : 13.3 inchFHD IPS BrightView micro-edge WLED-backlitCPU : Intel, Core i5, 2.50 GHzRam : 4 GB, LPDDR3, 1866 MHzVGA : Intel HD Graphics 620 ShareHĐH : Windows 10 Home Single ', 0, 'images/laptop/lt109.png',  0, 'HP',0,30),
(48, '2018-01-06 09:37:57', '2018-01-06 09:37:57', 3, 'ASUS ROG FX503VD-E4119T/i7-7700HQ \r\n', 25490000, 'Màn Hình : 15.6 inch Full HDCPU : Intel Core i7-7700HQRam : 8 GB, DDR4, 2400MHzVGA : NVIDIA Geforce GTX 1050 4 GBHĐH : Window 10 Home 64 SLNặng : 2.57 Kg', 0, 'images/laptop/lt110.jpg',  0,'ASUS',4,12),
(49, '2018-01-06 09:37:57', '2018-01-06 09:37:57', 3, 'Dell Precision 15 M7510\r\n', 41000000, 'CPU Intel Core i7-6820HQ (2.70Ghz up to 3.60Ghz, 8M cache)\r\nHệ điều hành Windows 7 Professional 64 (Windows 10 Pro 64 downgrade)\r\nKích thước màn hình 15.6\" UltraSharp FHD IPS 1920*1080 Wide', 0, 'images/laptop/lt111.jpg',  0,'DELL',0,20),
(50, '2018-01-06 09:37:57', '2018-01-06 09:37:57', 3, 'Dell Precision 7710 Workstation\r\n', 43500000, 'CPU Intel Core i7-6820HQ (2.70Ghz up to 3.60Ghz, 8M cache)\r\nHệ điều hành Windows 7 Professional 64 (Windows 10 Pro 64 downgrade)\r\nKích thước màn hình 17.3\" UltraSharp FHD IPS (1920x1080) \r\n', 0, 'images/laptop/lt112.JPG',  0,'DELL',5,20),
(51, '2018-01-06 09:37:57', '2018-01-06 09:37:57', 3, 'Dell Precision M3800\r\n', 39000000, 'CPU 4th Generation Core i7 - 4712HQ Processor (6M Cache, 2.30Ghz up to 3.2 GHz)\r\nHệ điều hành Windows 7 Professional 64bit\r\n', 0, 'images/laptop/lt113.jpg',  0,'DELL',0,20),
(52, '2018-01-06 09:37:57', '2018-01-06 09:37:57', 3, 'Laptop Xiaomi MiBook Air 13.3 inch ( i5 )\r\n', 22300000, 'Màn hình: 13,3 inch (1920×1080).\r\n– CPU: Intel Core i5-6200u Dual Core, Up to 3.0GHz\r\n– SSD: 256GB có 1 khe M2 trống để mở rộng dung lượng nếu cần.', 0, 'images/laptop/lt114.jpg',  0,'XIAOMI',2,20),
(53, '2018-01-06 09:37:57', '2018-01-06 09:37:57', 3, 'Dell Precision 7510 New Dell\r\n', 30000000, 'CPU\r\n Intel Core i7 6820HQ (8 x 2.7Ghz, Turbo Bost 3.6Ghz, 8MB Cache)\r\n RAM\r\n 16GB DDR4 2133 MHz, up to 32GB\r\n Hard Disk\r\n HDD 1000GB 7200rpm', 0, 'images/laptop/lt115.JPG',  0,'DELL',9,12),
(54, '2018-01-06 09:37:57', '2018-01-06 09:37:57', 3, 'Dell Inspiron N7460-N4I5259W\r\n', 53000000, 'CPU Intel® Core™ i5-7200U (2.5GHz upto 3.1 GHz, 2Cores, 4Threads, 3MB Cache, FSB 4GT/s)\r\nRAM 4GB DDR4 2133MHz (1x4GB) + 1 slot Ram.', 0, 'images/laptop/lt116.jpg',  0,'DELL',0,12),
(55, '2018-01-06 09:37:57', '2018-01-06 09:37:57', 3, 'Asus ROG Strix Hero GL503VM-GZ219T\r\n', 40000000, 'CPU Intel® Core™ i7-7700HQ (2.8GHz upto 3.8GHz, 4Cores, 8Threads, 6MB cache, FSB 8GT/s)\r\nRAM 8GB DDR4 2400MHz (1x8GB), 2 slot Ram, Max 32GB\r\n', 0, 'images/laptop/lt117.JPG',  0,'ASUS',5,20),
(56, '2018-01-06 09:37:57', '2018-01-06 09:37:57', 3, 'MSI GE63VR 7RE-088XVN Raider\r\n', 50000000, 'CPU Intel® Core™ i7-7700HQ (2.8GHz upto 3.8GHz, 4Cores, 8Threads, 6MB cache, FSB 8GT/s)', 0, 'images/laptop/lt118.JPG',  0,'MSI',2,20),
(57, '2018-01-06 09:51:52', '2018-01-06 09:51:52', 4, 'RƯỢU CHAMPAGNE GH MUMM BRUT CORDON ROUGE (750ML / 12%)\r\n', 1200000, 'Rượu Champagne G.H Mumm Brut Cordon Rouge, với hương vị cam quýt và các loại trái cây tươi đã làm hài lòng người thưởng thức hàng trăm năm qua. ', 0, 'images/ruou/r100.jpg',  0,'PHÁP',0,10),
(58, '2018-01-06 09:51:52', '2018-01-06 09:51:52', 4, 'RƯỢU CHAMPAGNE PERRIER-JOUET 2008 BRUT (750ML / 12.5%)\r\n', 5500000, 'Rượu Champagne Perrier-Jouet  Belle Epoque 2008 Brut, chai rượu được các nghệ nhân vẻ thủ công.\r\n Vintage: 2008 được phối trộn từ: 50% Chardonnay', 0, 'images/ruou/r101.jpg',  0,'PHÁP',2,10),
(59, '2018-01-06 09:51:52', '2018-01-06 09:51:52', 4, 'RƯỢU VANG ALBERT BICHOT POUILLY FUISSE (750ML / 13.5%)\r\n', 1050000, 'Rượu Vang Albert Bichot Pouilly Fuisse, Burgundy, Pháp', 0, 'images/ruou/r102.jpg',  0,'PHÁP',0,10),
(60, '2018-01-06 09:51:52', '2018-01-06 09:51:52', 4, 'RƯỢU VANG ALICANTO TRADICION SAUVIGNON BLANC (750ML / 14%)\r\n', 170000, 'Rượu Vang ALICANTO Tradicion Sauvignon Blanc, rượu vang trắng 100% Sauvignon Blanc, tại vùng nho: Valle de Rapel – VI Región - Chile.', 0, 'images/ruou/r103.jpg',  0,'PHÁP',3,10),
(61, '2018-01-06 09:51:52', '2018-01-06 09:51:52', 4, 'RƯỢU VANG ALTOS DEL PLATA CHARDONNAY (750ML / 13.7%)\r\n', 400000, 'Rượu Vang Altos Del Plata Chardonnay (TERRAZAS Chardonnay): Moet Hennessy mang đến loại rượu vang được sản xuất từ những cây nho sống ở độ cao 1,200 m', 0, 'images/ruou/r104.jpg',  0,'PHÁP',6,10),
(62, '2018-01-06 09:51:52', '2018-01-06 09:51:52', 4, 'RƯỢU VANG CF SEMIS (750ML / 14%)\r\n', 1050000, 'Rượu vang trắng Ý Collefrisio Semis Blanco Terre Di Chieti, được làm từ các nho: Trebbiano, Falanghina và Pecorino.', 0, 'images/ruou/r105.jpg',  0,'PHÁP',5,10),
(63, '2018-01-06 09:51:52', '2018-01-06 09:51:52', 4, 'RƯỢU VANG CLOUDY BAY CHARDONNAY (750ML / 13%)\r\n', 1000000, 'Cloudy Bay là nhãn hiệu hàng đầu tại NewZealand, một trong 5 xưởng vang đàu tiên thành lập tại Malborough, nơi có khí hậu lý tưởng và kỹ thuật canh tác hoàn hảo cho việc trồng nho.', 0, 'images/ruou/r106.jpg',  0,'PHÁP',0,10),
(64, '2018-01-06 09:51:52', '2018-01-06 09:51:52', 4, 'RƯỢU VANG ELDERTON EDEN VALLEY (750ML / 13%)\r\n', 600000, 'Rượu Vang Elderton Eden Valley Marsanne Rousanne, vang trắng, Úc. Vintage: 2013, Marsanne (57%) và Roussanne (43%)', 0, 'images/ruou/r107.jpg',  0,'PHÁP',0,10),
(65, '2018-01-06 09:51:52', '2018-01-06 09:51:52', 4, 'RƯỢU VANG GIESEN THE BROTHERS SAUVIGNON BLANC (750ML / 13.5%)\r\n', 560000, 'Rượu Vang trắng Giesen The Brothers Sauvignon Blanc đến từ New Zealand với hương vị thơm ngát (một số vị nói nó thơm nhi nước hoa)', 0, 'images/ruou/r108.jpg',  0,'PHÁP',1,10),
(66, '2018-01-06 09:51:52', '2018-01-06 09:51:52', 4, 'RƯỢU VANG CAPE MENTELLE SAUVIGNON BLANC (750ML / 12.5%)\r\n', 650000, 'Rượu vang Cape Mentelle Sauvignon Blanc là một sản phẩm xinh xắn từ các vườn nho của Moet Hennessy nằm ở tiểu Wallcliffe của sông Margaret.', 0, 'images/ruou/r109.jpg',  0,'PHÁP',0,10),
(67, '2018-01-06 09:51:52', '2018-01-06 09:51:52', 4, 'RƯỢU VANG MANCURA ETNIA SAUVIGNON BLANC (750ML / 13%)\r\n', 300000, 'Rượu Vang Mancura Etnia Sauvignon Blanc, Vang trắng, Central Valley, Chile', 0, 'images/ruou/r110.jpg',  0,'PHÁP',3,10),
(68, '2018-01-06 09:51:52', '2018-01-06 09:51:52', 4, 'RƯỢU VANG MOUTONNE CHABLIS GRAND CRU (750ML / 12.5%)\r\n', 3800000, 'Rượu Vang Moutonne Chablis Grand Cru, Monopole, Burgundy, Pháp. Vintage: 2007 còn 1 chai/Vintage: 2014\r\n', 0, 'images/ruou/r111.jpg',  0,'PHÁP',0,10),
(69, '2018-01-06 09:51:52', '2018-01-06 09:51:52', 4, 'RƯỢU VANG NỔ LUNA SAUVIGNON BLANC ', 360000, 'Rượu vang nổ/ Sparkling wine Luna de Murviedro Brut với 100% nho Sauvignon Blanc, là một chai Sparkling (hay gọi chung Champagne) ', 0, 'images/ruou/r112.jpg',  0,'PHÁP',5,10),
(70, '2018-01-06 09:51:52', '2018-01-06 09:51:52', 4, 'RƯỢU VANG RIBBONWOOD SAUVIGNON BLANC ', 570000, 'Rượu vang Ribbonwood Marlborough Sauvignon Blanc, NewZealand', 0, 'images/ruou/r113.jpg',  0,'PHÁP',9,10),
(71, '2018-01-06 09:51:52', '2018-01-06 09:51:52', 4, 'RƯỢU VANG RIBBONWOOD SAUVIGNON BLANC_SP ', 600000, 'Rượu vang Ribbonwood Marlborough Sauvignon Blanc, NewZealand', 0, 'images/ruou/r114.jpg',  0,'PHÁP',0,10),
(72, '2018-01-06 09:51:52', '2018-01-06 09:51:52', 4, 'RƯỢU VANG SIEGEL SPECIAL RESERVE VIOGNIER ', 390000, 'Rượu Vang Siegel Special Reserve Viognier được làm từ 100% nho Viognier, rượu có màu vàng nhạt ánh với tông màu xanh lá cây. Hương thơm của bưởi, đào trắng và hương hoa. ', 0, 'images/ruou/r115.jpg',  0,'PHÁP',0,10);

/* orders */
INSERT INTO `orders` (`id`, `created_at`, `updated_at`, `transaction_id`, `product_id`, `quantity`, `amount`) VALUES
(1, '2018-01-07 03:20:57', '2018-01-07 03:20:57', 1, 1, 1, 100000),
(2, '2018-01-07 03:20:57', '2018-01-07 03:20:57', 1, 2, 1, 150000),
(3, '2018-01-07 03:20:57', '2018-01-07 03:20:57', 2, 1, 6, 600000),
(4, '2018-01-07 03:20:57', '2018-01-07 03:20:57', 2, 2, 2, 300000),
(5, '2018-01-07 03:20:58', '2018-01-07 03:20:58', 3, 1, 3, 300000),
(6, '2018-01-07 03:20:58', '2018-01-07 03:20:58', 3, 2, 6, 900000),
(7, '2018-01-07 01:49:07', '2018-01-07 01:49:07', 3, 3, 1, 5490000),
(8, '2018-01-07 01:52:20', '2018-01-07 01:52:20', 3, 3, 1, 5490000),
(9, '2018-01-07 01:53:03', '2018-01-07 01:53:03', 3, 3, 1, 5490000),
(12, '2018-01-07 02:00:35', '2018-01-07 02:00:35', 6, 3, 1, 5490000),
(13, '2018-01-07 02:56:41', '2018-01-07 02:56:41', 6, 18, 1, 385000),
(14, '2018-01-07 03:04:42', '2018-01-07 03:04:42', 6, 19, 1, 335000),
(15, '2018-01-07 03:05:21', '2018-01-07 03:05:21', 7, 17, 1, 355000),
(16, '2018-01-07 03:07:36', '2018-01-07 03:07:36', 7, 54, 1, 53000000),
(17, '2018-01-07 04:09:50', '2018-01-07 04:09:50', 7, 2, 1, 5450000),
(18, '2018-01-07 04:11:46', '2018-01-07 04:11:46', 8, 57, 1, 1200000),
(19, '2018-01-07 04:25:32', '2018-01-07 04:25:32', 9, 39, 1, 10790000);
