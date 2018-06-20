

INSERT INTO catalogs (`name`,`type_id`)
        VALUES ('Điện thoại', 1);
INSERT INTO catalogs (`name`,`type_id`)
        VALUES ('Laptop', 2);
INSERT INTO catalogs (`name`,`type_id`)
        VALUES ('máy tính bảng',3);

INSERT INTO products  (`name`,`catalog_id`,`price`,`starting_price`,`step_cost`,`is_auto_renew`,`content`,`discount`,`views`,`producer`,`seller_id`,`start_at`,`expire_at` )
     VALUES ('SamSung galaxy J3', 1,3000000,500000,100000,3600000,'Màn hình Supper AMOLED, Camera sau: 13 MP,Camera trước: 8 MP, Bộ nhớ trong: 32GB,Ram: 3GB',10,0,'SamSung',1,'2018-06-06 12:00:00','2018-06-12 12:00:00');
INSERT INTO products   (`name`,`catalog_id`,`price`,`starting_price`,`step_cost`,`is_auto_renew`,`content`,`discount`,`views`,`producer`,`seller_id`,`start_at`,`expire_at` )
     VALUES ('SamSung galaxy J4', 1,5000000,500000,100000,5600000,'Màn hình Supper AMOLED, Camera sau: 13 MP,Camera trước: 5 MP, Bộ nhớ trong: 16GB,Ram: 2GB',10,0,'SamSung',2,'2018-07-06 12:00:00','2018-07-12 12:00:00');
INSERT INTO products   (`name`,`catalog_id`,`price`,`starting_price`,`step_cost`,`is_auto_renew`,`content`,`discount`,`views`,`producer`,`seller_id`,`start_at`,`expire_at` )
     VALUES ('SamSung galaxy J7 Pro', 1,6000000,500000,100000,6600000,'Màn hình Supper AMOLED, Camera sau: 13 MP,Camera trước: 13 MP, Bộ nhớ trong: 32GB,Ram: 3GB',10,0,'SamSung',3,'2018-08-06 12:00:00','2018-08-12 12:00:00');
INSERT INTO products   (`name`,`catalog_id`,`price`,`starting_price`,`step_cost`,`is_auto_renew`,`content`,`discount`,`views`,`producer`,`seller_id`,`start_at`,`expire_at` )
     VALUES ('Iphone 6', 1,6000000,500000,100000,6600000,'Màn hình Supper AMOLED, Camera sau: 8 MP,Camera trước: 1.3 MP, Bộ nhớ trong: 32GB,Ram: 1 GB',10,0,'Iphone',1,'2018-06-13 12:00:00','2018-06-20 12:00:00');

INSERT INTO products   (`name`,`catalog_id`,`price`,`starting_price`,`step_cost`,`is_auto_renew`,`content`,`discount`,`views`,`producer`,`seller_id`,`start_at`,`expire_at` )
     VALUES ('Iphone 7', 1,8000000,500000,100000,8600000,'Màn hình Supper AMOLED, Camera sau: 12 MP,Camera trước: 7 MP, Bộ nhớ trong: 32GB,Ram: 4 GB',10,0,'Iphone',2,'2018-07-13 12:00:00','2018-07-20 12:00:00');

INSERT INTO products   (`name`,`catalog_id`,`price`,`starting_price`,`step_cost`,`is_auto_renew`,`content`,`discount`,`views`,`producer`,`seller_id`,`start_at`,`expire_at` )
     VALUES ('Iphone 8', 1,10000000,500000,100000,10600000,'Màn hình Supper AMOLED, Camera sau: 12 MP,Camera trước: 7 MP, Bộ nhớ trong: 64GB,Ram: 2 GB',10,0,'Iphone',2,'2018-08-13 12:00:00','2018-08-20 12:00:00');


INSERT INTO products   (`name`,`catalog_id`,`price`,`starting_price`,`step_cost`,`is_auto_renew`,`content`,`discount`,`views`,`producer`,`seller_id`,`start_at`,`expire_at` )
     VALUES ('Oppo F5', 1,6000000,500000,100000,6600000,'Màn hình Supper AMOLED, Camera sau: 16 MP,Camera trước: 20 MP, Bộ nhớ trong: 64GB,Ram: 6 GB',10,0,'Oppo',1,'2018-06-21 12:00:00','2018-06-28 12:00:00');
INSERT INTO products   (`name`,`catalog_id`,`price`,`starting_price`,`step_cost`,`is_auto_renew`,`content`,`discount`,`views`,`producer`,`seller_id`,`start_at`,`expire_at` )
     VALUES ('oppo F7', 1,8000000,500000,100000,8600000,'Màn hình Supper AMOLED, Camera sau: 16 MP,Camera trước: 25 MP, Bộ nhớ trong: 128GB,Ram: 6 GB',10,0,'oppo',2,'2018-07-21 12:00:00','2018-07-28 12:00:00');
INSERT INTO products   (`name`,`catalog_id`,`price`,`starting_price`,`step_cost`,`is_auto_renew`,`content`,`discount`,`views`,`producer`,`seller_id`,`start_at`,`expire_at` )
     VALUES ('oppo A83', 1,10000000,500000,100000,10600000,'Màn hình Supper AMOLED, Camera sau: 13 MP,Camera trước: 8 MP, Bộ nhớ trong: 16GB,Ram: 2 GB',10,0,'oppo',3,'2018-08-21 12:00:00','2018-06-28 12:00:00');

INSERT INTO products   (`name`,`catalog_id`,`price`,`starting_price`,`step_cost`,`is_auto_renew`,`content`,`discount`,`views`,`producer`,`seller_id`,`start_at`,`expire_at` )
        VALUES ('DELL', 2,10000000,500000,100000,10600000,'Màn hình Supper AMOLED, Camera sau: 12 MP,Camera trước: 7 MP, Bộ nhớ trong: 64GB,Ram: 2 GB',10,0,'Iphone',2,'2018-08-13 12:00:00','2018-08-20 12:00:00');
INSERT INTO products   (`name`,`catalog_id`,`price`,`starting_price`,`step_cost`,`is_auto_renew`,`content`,`discount`,`views`,`producer`,`seller_id`,`start_at`,`expire_at` )
        VALUES ('ACER', 2,10000000,500000,100000,10600000,'Màn hình Supper AMOLED, Camera sau: 12 MP,Camera trước: 7 MP, Bộ nhớ trong: 64GB,Ram: 2 GB',10,0,'Iphone',2,'2018-06-20 12:00:00','2018-06-28 12:00:00');
INSERT INTO products   (`name`,`catalog_id`,`price`,`starting_price`,`step_cost`,`is_auto_renew`,`content`,`discount`,`views`,`producer`,`seller_id`,`start_at`,`expire_at` )
        VALUES ('lenovo', 2,10000000,500000,100000,10600000,'Màn hình Supper AMOLED, Camera sau: 12 MP,Camera trước: 7 MP, Bộ nhớ trong: 64GB,Ram: 2 GB',10,0,'Iphone',2,'2018-07-06 12:00:00','2018-06-12 12:00:00');



INSERT INTO products   (`name`,`catalog_id`,`price`,`starting_price`,`step_cost`,`is_auto_renew`,`content`,`discount`,`views`,`producer`,`seller_id`,`start_at`,`expire_at` )
        VALUES ('ASUS', 2,10000000,500000,100000,10600000,'Màn hình Supper AMOLED, Camera sau: 12 MP,Camera trước: 7 MP, Bộ nhớ trong: 64GB,Ram: 2 GB',10,0,'Iphone',2,'2018-08-13 12:00:00','2018-08-20 12:00:00');
INSERT INTO products   (`name`,`catalog_id`,`price`,`starting_price`,`step_cost`,`is_auto_renew`,`content`,`discount`,`views`,`producer`,`seller_id`,`start_at`,`expire_at` )
        VALUES ('ASUS', 2,8000000,500000,100000,8600000,'Màn hình Supper AMOLED, Camera sau: 12 MP,Camera trước: 7 MP, Bộ nhớ trong: 64GB,Ram: 2 GB',10,0,'Iphone',2,'2018-08-13 12:00:00','2018-08-20 12:00:00');
INSERT INTO products   (`name`,`catalog_id`,`price`,`starting_price`,`step_cost`,`is_auto_renew`,`content`,`discount`,`views`,`producer`,`seller_id`,`start_at`,`expire_at` )
        VALUES ('ASUS', 2,10000000,500000,100000,10600000,'Màn hình Supper AMOLED, Camera sau: 12 MP,Camera trước: 7 MP, Bộ nhớ trong: 64GB,Ram: 2 GB',10,0,'Iphone',2,'2018-08-13 12:00:00','2018-08-20 12:00:00');






INSERT INTO products   (`name`,`catalog_id`,`price`,`starting_price`,`step_cost`,`is_auto_renew`,`content`,`discount`,`views`,`producer`,`seller_id`,`start_at`,`expire_at` )
        VALUES ('MACBOOK', 2,40000000,500000,100000,40600000,'Màn hình Supper AMOLED, Camera sau: 12 MP,Camera trước: 7 MP, Bộ nhớ trong: 64GB,Ram: 2 GB',10,0,'Iphone',2,'2018-08-13 12:00:00','2018-08-20 12:00:00');
INSERT INTO products   (`name`,`catalog_id`,`price`,`starting_price`,`step_cost`,`is_auto_renew`,`content`,`discount`,`views`,`producer`,`seller_id`,`start_at`,`expire_at` )
        VALUES ('MACBOOK', 2,45000000,500000,100000,45600000,'Màn hình Supper AMOLED, Camera sau: 12 MP,Camera trước: 7 MP, Bộ nhớ trong: 64GB,Ram: 2 GB',10,0,'Iphone',2,'2018-06-06 12:00:00','2018-08-13 12:00:00');
INSERT INTO products   (`name`,`catalog_id`,`price`,`starting_price`,`step_cost`,`is_auto_renew`,`content`,`discount`,`views`,`producer`,`seller_id`,`start_at`,`expire_at` )
        VALUES ('MACBOOK', 2,30000000,500000,100000,30600000,'Màn hình Supper AMOLED, Camera sau: 12 MP,Camera trước: 7 MP, Bộ nhớ trong: 64GB,Ram: 2 GB',10,0,'Iphone',2,'2018-07-13 12:00:00','2018-08-20 12:00:00');





INSERT INTO products   (`name`,`catalog_id`,`price`,`starting_price`,`step_cost`,`is_auto_renew`,`content`,`discount`,`views`,`producer`,`seller_id`,`start_at`,`expire_at` )
        VALUES ('iPad', 3,10000000,500000,100000,10600000,'Màn hình Supper AMOLED, Camera sau: 12 MP,Camera trước: 7 MP, Bộ nhớ trong: 64GB,Ram: 2 GB',10,0,'Iphone',2,'2018-08-13 12:00:00','2018-08-20 12:00:00');

INSERT INTO products   (`name`,`catalog_id`,`price`,`starting_price`,`step_cost`,`is_auto_renew`,`content`,`discount`,`views`,`producer`,`seller_id`,`start_at`,`expire_at` )
        VALUES (' ipad 9.7 inch', 3,15000000,5500000,100000,15600000,'Màn hình Supper AMOLED, Camera sau: 12 MP,Camera trước: 7 MP, Bộ nhớ trong: 64GB,Ram: 2 GB',10,0,'Iphone',2,'2018-07-13 12:00:00','2018-08-20 12:00:00');

INSERT INTO products   (`name`,`catalog_id`,`price`,`starting_price`,`step_cost`,`is_auto_renew`,`content`,`discount`,`views`,`producer`,`seller_id`,`start_at`,`expire_at` )
        VALUES (' ipad 10 inch', 3,25000000,5500000,100000,25600000,'Màn hình Supper AMOLED, Camera sau: 12 MP,Camera trước: 7 MP, Bộ nhớ trong: 64GB,Ram: 2 GB',10,0,'Iphone',2,'2018-06-06 12:00:00','2018-08-12 12:00:00');





INSERT INTO products   (`name`,`catalog_id`,`price`,`starting_price`,`step_cost`,`is_auto_renew`,`content`,`discount`,`views`,`producer`,`seller_id`,`start_at`,`expire_at` )
        VALUES ('ASUS SonicMaster 1', 3,40000000,500000,100000,40600000,'Màn hình Supper AMOLED, Camera sau: 12 MP,Camera trước: 7 MP, Bộ nhớ trong: 64GB,Ram: 2 GB',10,0,'Iphone',2,'2018-08-13 12:00:00','2018-08-20 12:00:00');

INSERT INTO products   (`name`,`catalog_id`,`price`,`starting_price`,`step_cost`,`is_auto_renew`,`content`,`discount`,`views`,`producer`,`seller_id`,`start_at`,`expire_at` )
        VALUES ('ASUS SonicMaster 2', 3,30000000,500000,100000,30600000,'Màn hình Supper AMOLED, Camera sau: 12 MP,Camera trước: 7 MP, Bộ nhớ trong: 64GB,Ram: 2 GB',10,0,'Iphone',2,'2018-07-20 12:00:00','2018-07-28 12:00:00');

INSERT INTO products   (`name`,`catalog_id`,`price`,`starting_price`,`step_cost`,`is_auto_renew`,`content`,`discount`,`views`,`producer`,`seller_id`,`start_at`,`expire_at` )
        VALUES ('ASUS SonicMaster 3', 3,20000000,500000,100000,20600000,'Màn hình Supper AMOLED, Camera sau: 12 MP,Camera trước: 7 MP, Bộ nhớ trong: 64GB,Ram: 2 GB',10,0,'Iphone',2,'2018-06-06 12:00:00','2018-06-12 12:00:00');



INSERT INTO products   (`name`,`catalog_id`,`price`,`starting_price`,`step_cost`,`is_auto_renew`,`content`,`discount`,`views`,`producer`,`seller_id`,`start_at`,`expire_at` )
        VALUES (' Huawei Media pad M3', 3,10000000,500000,100000,10600000,'Màn hình Supper AMOLED, Camera sau: 12 MP,Camera trước: 7 MP, Bộ nhớ trong: 64GB,Ram: 2 GB',10,0,'Iphone',2,'2018-08-13 12:00:00','2018-08-20 12:00:00');
INSERT INTO products   (`name`,`catalog_id`,`price`,`starting_price`,`step_cost`,`is_auto_renew`,`content`,`discount`,`views`,`producer`,`seller_id`,`start_at`,`expire_at` )
        VALUES ('Huawei Media pad M2', 3,30000000,500000,100000,30600000,'Màn hình Supper AMOLED, Camera sau: 12 MP,Camera trước: 7 MP, Bộ nhớ trong: 64GB,Ram: 2 GB',10,0,'Iphone',2,'2018-07-20 12:00:00','2018-07-28 12:00:00');

INSERT INTO products   (`name`,`catalog_id`,`price`,`starting_price`,`step_cost`,`is_auto_renew`,`content`,`discount`,`views`,`producer`,`seller_id`,`start_at`,`expire_at` )
        VALUES ('Huawei Media pad M1', 3,20000000,500000,100000,20600000,'Màn hình Supper AMOLED, Camera sau: 12 MP,Camera trước: 7 MP, Bộ nhớ trong: 64GB,Ram: 2 GB',10,0,'Iphone',2,'2018-06-06 12:00:00','2018-06-12 12:00:00');


INSERT INTO users(`name`,`email`,`password`,`address`,`phone_number`,`role`) 
        VALUES('Phạm Thị Hậu','phamthihau@gmail.com','0000','Trần đình Xu -Quận 1','01638297196',0);
        -- 0:Admin phamthihau@gmail.com
INSERT INTO users(`name`,`email`,`password`,`address`,`phone_number`,`role`) 
        VALUES('Nguyễn Thị Khánh Huyền ','khanhhuyen@gmail.com','0000','Trần Hưng đạo -Quận 1','016382956789',1);
INSERT INTO users(`name`,`email`,`password`,`address`,`phone_number`,`role`) 
        VALUES('Min ','min@gmail.com','0000','Trần đình Xu -Quận 1','016382971900',1);
INSERT INTO users(`name`,`email`,`password`,`address`,`phone_number`,`role`) 
        VALUES('sun','sun@gmail.com','0000','Trần đình Xu -Quận 1','016382971900',1);

        -- 1:nguoiban khanhhuyen@gmail.com
INSERT INTO users(`name`,`email`,`password`,`address`,`phone_number`,`role`) 
        VALUES('Phan ThịThu hiền ','thuhien@gmail.com','0000','Trần hưng đạo-Quận 1','016382123456',2);
        -- 2:nguoimua thuhien@gmail.com
INSERT INTO users(`name`,`email`,`password`,`address`,`phone_number`,`role`) 
        VALUES('Nguyễn Thị Thúy hằng ','thuyhang@gmail.com','0000','Trần đình Xu -Quận 1','016382971900',2);
INSERT INTO users(`name`,`email`,`password`,`address`,`phone_number`,`role`) 
        VALUES('Nguyễn Đăng khương ','dangkhuong@gmail.com','0000','Trần đình Xu -Quận 1','016382971900',2);
INSERT INTO users(`name`,`email`,`password`,`address`,`phone_number`,`role`) 
        VALUES('Nguyễn Bá Hưng','bahung@gmail.com','0000','Trần đình Xu -Quận 1','016382971900',2);



INSERT INTO images(`product_id`,`image_link`) VALUES (1,'https://cdn.tgdd.vn/Products/Images/42/73908/samsung-galaxy-j3-2-400x460.png');
INSERT INTO images(`product_id`,`image_link`) VALUES (2,'https://www.proandroid.com/wp-content/uploads/2018/02/Galaxy-j3-dorado.jpg');
INSERT INTO images(`product_id`,`image_link`) VALUES (3,'http://www.pakbuyer.com/wp-content/uploads/2017/10/J7-2017-_013-front-1.jpg');
INSERT INTO images(`product_id`,`image_link`) VALUES (4,'https://www.slickwraps.com/media/catalog/product/cache/1/image/491x491/9df78eab33525d08d6e5fb8d27136e95/g/l/glitterpink_1_1.jpg');
INSERT INTO images(`product_id`,`image_link`) VALUES (5,'https://img.grouponcdn.com/deal/2yRZPjQNkyEEbFMN6NdTicmggunP/2y-2048x1229/v1/c700x420.jpg');
INSERT INTO images(`product_id`,`image_link`) VALUES (6,'https://s.aolcdn.com/hss/storage/midas/2b956a6d6cd04fe19cec5741dbaf84ca/206280856/iPhone8-iPhone8PLUS-PRODUCT-RED_front-back_041018.jpg');
INSERT INTO images(`product_id`,`image_link`) VALUES (7,'http://www.syncios.com/images/article/transfer-messages-to-oppo-f5-image.jpg');
INSERT INTO images(`product_id`,`image_link`) VALUES (8,'https://cdn2.gsmarena.com/vv/pics/oppo/oppo-f7-cph1819-1.jpg');
INSERT INTO images(`product_id`,`image_link`) VALUES (9,'http://stcv4.hnammobile.com//downloads/c/5.jpg');
INSERT INTO images(`product_id`,`image_link`) VALUES (10,'http://harrismastore.co.id/imgs/files/product_image/pic6B605DE31DDBCE82D60C0B687B5BCCC4.jpg');
INSERT INTO images(`product_id`,`image_link`) VALUES (11,'https://gadgetsdukaan.com/8368-large_default/apple-macbook-pro-core-i7-16gb-256gb-touch-bar-mptu2hna-15-inch-28ghz-radeon-pro-555-with-2gb-of-gddr5.jpg');
INSERT INTO images(`product_id`,`image_link`) VALUES (12,'http://www.kimhengcenter.com.kh/wp-content/uploads/2015/08/3147.jpg');
INSERT INTO images(`product_id`,`image_link`) VALUES (13,'https://cdn3.tgdd.vn/Products/Images/522/101993/ipad-mini-4-wifi-128gb-321-400x400.jpg');
INSERT INTO images(`product_id`,`image_link`) VALUES (14,'http://d2pa5gi5n2e1an.cloudfront.net/global/images/product/tablets/ASUS_MeMO_Pad/ASUS_MeMO_Pad_L_1.jpg');
INSERT INTO images(`product_id`,`image_link`) VALUES (15,'https://www.naijatechguide.com/wp-content/uploads/2017/07/huawei-mediapad-m3-featured.jpg');
INSERT INTO images(`product_id`,`image_link`) VALUES (16,'https://znews-photo-td.zadn.vn/w660/Uploaded/rik_rdcvcvwt_wc/2017_03_23/ipd1_1.jpg');
INSERT INTO images(`product_id`,`image_link`) VALUES (17,'http://ttnn.com.vn/wp-content/uploads/img_5458539bb7955.png');
INSERT INTO images(`product_id`,`image_link`) VALUES (18,'https://cdn-gd-v1.webbnc.net/useruploads/userfiles//510277/images/3-cach-ket-noi-iphone-voi-tivi-1.jpg');
INSERT INTO images(`product_id`,`image_link`) VALUES (19,'http://phukiendexinh.com/uploads/images/acer/B1-730/bao-da-Acer-Iconia-One-7-B1-7303.JPG');
INSERT INTO images(`product_id`,`image_link`) VALUES (20,'https://laptopg7.vn/images/companies/1/Image%20laptop/Acer/Acer%20Aspire%20Switch%2010-01.jpg');
INSERT INTO images(`product_id`,`image_link`) VALUES (21,'https://laptopg7.vn/images/companies/1/Image%20laptop/Acer/Acer%20Aspire%20Switch%2010-01.jpg');
INSERT INTO images(`product_id`,`image_link`) VALUES (22,'http://ttnn.com.vn/wp-content/uploads/img_5458539bb7955.png');
INSERT INTO images(`product_id`,`image_link`) VALUES (23,'https://cdn-gd-v1.webbnc.net/useruploads/userfiles//510277/images/3-cach-ket-noi-iphone-voi-tivi-1.jpg');
INSERT INTO images(`product_id`,`image_link`) VALUES (24,'http://phukiendexinh.com/uploads/images/acer/B1-730/bao-da-Acer-Iconia-One-7-B1-7303.JPG');
INSERT INTO images(`product_id`,`image_link`) VALUES (25,'https://laptopg7.vn/images/companies/1/Image%20laptop/Acer/Acer%20Aspire%20Switch%2010-01.jpg');
INSERT INTO images(`product_id`,`image_link`) VALUES (26,'https://laptopg7.vn/images/companies/1/Image%20laptop/Acer/Acer%20Aspire%20Switch%2010-01.jpg');
INSERT INTO images(`product_id`,`image_link`) VALUES (27,'https://www.jbhifi.com.au/FileLibrary/ProductResources/Images/223284-L-LO.jpg');
INSERT INTO images(`product_id`,`image_link`) VALUES (28,'https://www.jbhifi.com.au/FileLibrary/ProductResources/Images/223284-L-LO.jpg');


INSERT INTO images(`product_id`,`image_link`) VALUES (1,'https://cdn.tgdd.vn/Files/2017/12/26/1053362/oppo-a83_600x542.jpg');
INSERT INTO images(`product_id`,`image_link`) VALUES (2,'https://phukiengiare.com/images/detailed/30/op-lung-samsung-galaxy-j3-hieu-nillkin-san-1.jpg');
INSERT INTO images(`product_id`,`image_link`) VALUES (3,'https://cdn.fptshop.com.vn/Uploads/Originals/2016/2/16/635912328431385072_j3-g1.jpg');
INSERT INTO images(`product_id`,`image_link`) VALUES (4,'https://f5mobile.vn/wp-content/uploads/2015/09/toan-bo-hinh-anh-iphone-6s-va-iphone-6s-plus.jpg');
INSERT INTO images(`product_id`,`image_link`) VALUES (5,'https://tintuc.shopdunk.com/wp-content/uploads/2017/05/hinh-anh-iphone-8-dang-tin-cay-tu-bao-uy-tin-min.jpg');
INSERT INTO images(`product_id`,`image_link`) VALUES (6,'http://iworld.com/wp-content/uploads/2017/11/iphone-x-silver-box.jpg');
INSERT INTO images(`product_id`,`image_link`) VALUES (7,'http://www.syncios.com/images/article/transfer-messages-to-oppo-f5-image.jpg');
INSERT INTO images(`product_id`,`image_link`) VALUES (8,'https://cdn2.gsmarena.com/vv/pics/oppo/oppo-f7-cph1819-1.jpg');
INSERT INTO images(`product_id`,`image_link`) VALUES (9,'https://cdn.tgdd.vn/Files/2017/12/26/1053362/anh-minh-hoa_800x450.jpg');
INSERT INTO images(`product_id`,`image_link`) VALUES (10,'http://techphonevn.com/img/h360/oppo-a83.png');
INSERT INTO images(`product_id`,`image_link`) VALUES (11,'https://media.wired.com/photos/59e952e4f572231fe56c3937/master/w_582,c_limit/rosegold-macbook-1.jpg');
INSERT INTO images(`product_id`,`image_link`) VALUES (12,'http://d2pa5gi5n2e1an.cloudfront.net/global/images/product/laptops/Dell_Inspiron_14_3420/Dell_Inspiron_14_3420_L_1.jpg');
INSERT INTO images(`product_id`,`image_link`) VALUES (13,'http://phatthanhmobile.com/upload/sanpham/thumbs/293-may-tinh-bang-acer-iconia-b1-721-chinh-hang.png');
INSERT INTO images(`product_id`,`image_link`) VALUES (14,'https://lh6.googleusercontent.com/-CPbS2qejnX8/TQLY6eaeRFI/AAAAAAAAF6g/53JpBfQDm5c/s1600/ipad__full.jpg');
INSERT INTO images(`product_id`,`image_link`) VALUES (15,'http://i.a4vn.com/2013/5/5/ban-sao-ipad-mini-cua-acer-gia-169-usd-b1fbc3.jpg');
INSERT INTO images(`product_id`,`image_link`) VALUES (16,'http://i.a4vn.com/2013/9/9/thuc-te-acer-iconia-a3-may-tinh-bang-10-inch-gia-re-4f9f6a.jpg');
INSERT INTO images(`product_id`,`image_link`) VALUES (17,'http://www.technofileonline.com/images/Acer%20200.jpg');
INSERT INTO images(`product_id`,`image_link`) VALUES (18,'https://www.didongviet.vn/pub/media/catalog/product//u/n/untitled-2.jpg');
INSERT INTO images(`product_id`,`image_link`) VALUES (19,'http://laptopno1.com/Upload/Img/Products/Z1-611_gallery_02.png');
INSERT INTO images(`product_id`,`image_link`) VALUES (20,'https://cdn.nguyenkimmall.com/images/thumbnails/200/150/detailed/150/may-tinh-xach-tay-acer-aspire-e5-771-01.jpg');
INSERT INTO images(`product_id`,`image_link`) VALUES (21,'https://laptopg7.vn/images/companies/1/Image%20laptop/Acer/Acer%20Aspire%20Switch%2010-01.jpg');
INSERT INTO images(`product_id`,`image_link`) VALUES (22,'http://ttnn.com.vn/wp-content/uploads/img_5458539bb7955.png');
INSERT INTO images(`product_id`,`image_link`) VALUES (23,'https://cdn-gd-v1.webbnc.net/useruploads/userfiles//510277/images/3-cach-ket-noi-iphone-voi-tivi-1.jpg');
INSERT INTO images(`product_id`,`image_link`) VALUES (24,'http://phukiendexinh.com/uploads/images/acer/B1-730/bao-da-Acer-Iconia-One-7-B1-7303.JPG');
INSERT INTO images(`product_id`,`image_link`) VALUES (25,'https://laptopg7.vn/images/companies/1/Image%20laptop/Acer/Acer%20Aspire%20Switch%2010-01.jpg');
INSERT INTO images(`product_id`,`image_link`) VALUES (26,'https://laptopg7.vn/images/companies/1/Image%20laptop/Acer/Acer%20Aspire%20Switch%2010-01.jpg');
INSERT INTO images(`product_id`,`image_link`) VALUES (27,'https://www.jbhifi.com.au/FileLibrary/ProductResources/Images/223284-L-LO.jpg');

INSERT INTO images(`product_id`,`image_link`) VALUES (1,'https://cdn.tgdd.vn/Files/2017/12/26/1053362/oppo-a83-1_600x613.jpg');
INSERT INTO images(`product_id`,`image_link`) VALUES (2,'https://www.gizmochina.com/wp-content/uploads/2018/02/Samsung-Galaxy-J3-2018-USA-500x500.jpg');
INSERT INTO images(`product_id`,`image_link`) VALUES (3,'https://hoanghamobile.com/Uploads/Originals/2017/07/14/201707141137582419_j3-pro2.png;width=720;height=500;watermark=logo;crop=auto;quality=80;format=jpg');
INSERT INTO images(`product_id`,`image_link`) VALUES (4,'https://www.slickwraps.com/media/catalog/product/cache/1/image/491x491/9df78eab33525d08d6e5fb8d27136e95/g/l/glitterpink_1_1.jpg');
INSERT INTO images(`product_id`,`image_link`) VALUES (5,'https://img.grouponcdn.com/deal/2yRZPjQNkyEEbFMN6NdTicmggunP/2y-2048x1229/v1/c700x420.jpg');
INSERT INTO images(`product_id`,`image_link`) VALUES (6,'https://s.aolcdn.com/hss/storage/midas/2b956a6d6cd04fe19cec5741dbaf84ca/206280856/iPhone8-iPhone8PLUS-PRODUCT-RED_front-back_041018.jpg');
INSERT INTO images(`product_id`,`image_link`) VALUES (7,'http://www.syncios.com/images/article/transfer-messages-to-oppo-f5-image.jpg');
INSERT INTO images(`product_id`,`image_link`) VALUES (8,'https://cdn2.gsmarena.com/vv/pics/oppo/oppo-f7-cph1819-1.jpg');
INSERT INTO images(`product_id`,`image_link`) VALUES (9,'https://cdn.tgdd.vn/Files/2017/12/26/1053362/anh-minh-hoa_800x450.jpg');
INSERT INTO images(`product_id`,`image_link`) VALUES (10,'http://harrismastore.co.id/imgs/files/product_image/pic6B605DE31DDBCE82D60C0B687B5BCCC4.jpg');
INSERT INTO images(`product_id`,`image_link`) VALUES (11,'https://gadgetsdukaan.com/8368-large_default/apple-macbook-pro-core-i7-16gb-256gb-touch-bar-mptu2hna-15-inch-28ghz-radeon-pro-555-with-2gb-of-gddr5.jpg');
INSERT INTO images(`product_id`,`image_link`) VALUES (12,'http://www.kimhengcenter.com.kh/wp-content/uploads/2015/08/3147.jpg');
INSERT INTO images(`product_id`,`image_link`) VALUES (13,'https://cdn3.tgdd.vn/Products/Images/522/101993/ipad-mini-4-wifi-128gb-321-400x400.jpg');
INSERT INTO images(`product_id`,`image_link`) VALUES (14,'http://d2pa5gi5n2e1an.cloudfront.net/global/images/product/tablets/ASUS_MeMO_Pad/ASUS_MeMO_Pad_L_1.jpg');
INSERT INTO images(`product_id`,`image_link`) VALUES (15,'https://www.naijatechguide.com/wp-content/uploads/2017/07/huawei-mediapad-m3-featured.jpg');
INSERT INTO images(`product_id`,`image_link`) VALUES (16,'https://znews-photo-td.zadn.vn/w660/Uploaded/rik_rdcvcvwt_wc/2017_03_23/ipd1_1.jpg');
INSERT INTO images(`product_id`,`image_link`) VALUES (17,'http://ttnn.com.vn/wp-content/uploads/img_5458539bb7955.png');
INSERT INTO images(`product_id`,`image_link`) VALUES (18,'https://cdn-gd-v1.webbnc.net/useruploads/userfiles//510277/images/3-cach-ket-noi-iphone-voi-tivi-1.jpg');
INSERT INTO images(`product_id`,`image_link`) VALUES (19,'http://phukiendexinh.com/uploads/images/acer/B1-730/bao-da-Acer-Iconia-One-7-B1-7303.JPG');
INSERT INTO images(`product_id`,`image_link`) VALUES (20,'https://laptopg7.vn/images/companies/1/Image%20laptop/Acer/Acer%20Aspire%20Switch%2010-01.jpg');
INSERT INTO images(`product_id`,`image_link`) VALUES (21,'https://laptopg7.vn/images/companies/1/Image%20laptop/Acer/Acer%20Aspire%20Switch%2010-01.jpg');
INSERT INTO images(`product_id`,`image_link`) VALUES (22,'http://ttnn.com.vn/wp-content/uploads/img_5458539bb7955.png');
INSERT INTO images(`product_id`,`image_link`) VALUES (23,'https://cdn-gd-v1.webbnc.net/useruploads/userfiles//510277/images/3-cach-ket-noi-iphone-voi-tivi-1.jpg');
INSERT INTO images(`product_id`,`image_link`) VALUES (24,'http://phukiendexinh.com/uploads/images/acer/B1-730/bao-da-Acer-Iconia-One-7-B1-7303.JPG');
INSERT INTO images(`product_id`,`image_link`) VALUES (25,'https://laptopg7.vn/images/companies/1/Image%20laptop/Acer/Acer%20Aspire%20Switch%2010-01.jpg');
INSERT INTO images(`product_id`,`image_link`) VALUES (26,'https://laptopg7.vn/images/companies/1/Image%20laptop/Acer/Acer%20Aspire%20Switch%2010-01.jpg');
INSERT INTO images(`product_id`,`image_link`) VALUES (27,'https://www.jbhifi.com.au/FileLibrary/ProductResources/Images/223284-L-LO.jpg');
INSERT INTO images(`product_id`,`image_link`) VALUES (28,'https://www.jbhifi.com.au/FileLibrary/ProductResources/Images/223284-L-LO.jpg');












INSERT INTO auctions (`product_id`,`user_id`) VALUES (1,5 );
INSERT INTO auctions (`product_id`,`user_id`) VALUES (2,6);
INSERT INTO auctions (`product_id`,`user_id`) VALUES (3,8);
INSERT INTO auctions (`product_id`,`user_id`) VALUES (4,7 );
INSERT INTO auctions (`product_id`,`user_id`) VALUES (5, 5);
INSERT INTO auctions (`product_id`,`user_id`) VALUES (6, 6);
INSERT INTO auctions (`product_id`,`user_id`) VALUES (7, 7);
INSERT INTO auctions (`product_id`,`user_id`) VALUES (8,8 );
INSERT INTO auctions (`product_id`,`user_id`) VALUES (9, 5);
INSERT INTO auctions (`product_id`,`user_id`) VALUES (10,6 );
INSERT INTO auctions (`product_id`,`user_id`) VALUES (11,7 );
INSERT INTO auctions (`product_id`,`user_id`) VALUES (12,8 );
INSERT INTO auctions (`product_id`,`user_id`) VALUES (13, 6);
INSERT INTO auctions (`product_id`,`user_id`) VALUES (14, 5);
INSERT INTO auctions (`product_id`,`user_id`) VALUES (15, 8);
INSERT INTO auctions (`product_id`,`user_id`) VALUES (15, 8);
INSERT INTO auctions (`product_id`,`user_id`) VALUES (16, 8);
INSERT INTO auctions (`product_id`,`user_id`) VALUES (17, 8);
INSERT INTO auctions (`product_id`,`user_id`) VALUES (18, 8);
INSERT INTO auctions (`product_id`,`user_id`) VALUES (19, 6);
INSERT INTO auctions (`product_id`,`user_id`) VALUES (20, 5);
INSERT INTO auctions (`product_id`,`user_id`) VALUES (21, 8);
INSERT INTO auctions (`product_id`,`user_id`) VALUES (22, 8);
INSERT INTO auctions (`product_id`,`user_id`) VALUES (23, 5);
INSERT INTO auctions (`product_id`,`user_id`) VALUES (24, 6);
INSERT INTO auctions (`product_id`,`user_id`) VALUES (25, 7);
INSERT INTO auctions (`product_id`,`user_id`) VALUES (26, 7);
INSERT INTO auctions (`product_id`,`user_id`) VALUES (27, 6);

INSERT INTO auctions (`product_id`,`user_id`) VALUES (10,6 );
INSERT INTO auctions (`product_id`,`user_id`) VALUES (11,7 );
INSERT INTO auctions (`product_id`,`user_id`) VALUES (12,8 );
INSERT INTO auctions (`product_id`,`user_id`) VALUES (13, 6);
INSERT INTO auctions (`product_id`,`user_id`) VALUES (14, 5);
INSERT INTO auctions (`product_id`,`user_id`) VALUES (15, 8);
INSERT INTO auctions (`product_id`,`user_id`) VALUES (15, 5);

INSERT INTO auctions (`product_id`,`user_id`) VALUES (1,8 );
INSERT INTO auctions (`product_id`,`user_id`) VALUES (2,5);
INSERT INTO auctions (`product_id`,`user_id`) VALUES (3,7);
INSERT INTO auctions (`product_id`,`user_id`) VALUES (4,8 );
INSERT INTO auctions (`product_id`,`user_id`) VALUES (5, 8);
INSERT INTO auctions (`product_id`,`user_id`) VALUES (6, 6);
INSERT INTO auctions (`product_id`,`user_id`) VALUES (7,8 );
INSERT INTO auctions (`product_id`,`user_id`) VALUES (8,7 );
INSERT INTO auctions (`product_id`,`user_id`) VALUES (9,7);
INSERT INTO auctions (`product_id`,`user_id`) VALUES (10,8 );
INSERT INTO auctions (`product_id`,`user_id`) VALUES (11,5);

INSERT INTO auctions (`product_id`,`user_id`) VALUES (24, 5);
INSERT INTO auctions (`product_id`,`user_id`) VALUES (25, 6);
INSERT INTO auctions (`product_id`,`user_id`) VALUES (26, 5);
INSERT INTO auctions (`product_id`,`user_id`) VALUES (27, 5);


INSERT INTO auctions (`product_id`,`user_id`) VALUES (1,6 );
INSERT INTO auctions (`product_id`,`user_id`) VALUES (2,8);
INSERT INTO auctions (`product_id`,`user_id`) VALUES (3,8);
INSERT INTO auctions (`product_id`,`user_id`) VALUES (4,5 );
INSERT INTO auctions (`product_id`,`user_id`) VALUES (5, 6);
INSERT INTO auctions (`product_id`,`user_id`) VALUES (6, 8);
INSERT INTO auctions (`product_id`,`user_id`) VALUES (7, 5);
INSERT INTO auctions (`product_id`,`user_id`) VALUES (8,5 );
INSERT INTO auctions (`product_id`,`user_id`) VALUES (9, 7);
INSERT INTO auctions (`product_id`,`user_id`) VALUES (10,7 );
INSERT INTO auctions (`product_id`,`user_id`) VALUES (11,6 );
INSERT INTO auctions (`product_id`,`user_id`) VALUES (12,5 );
INSERT INTO auctions (`product_id`,`user_id`) VALUES (13, 5);
INSERT INTO auctions (`product_id`,`user_id`) VALUES (14, 6);
INSERT INTO auctions (`product_id`,`user_id`) VALUES (15, 7);
INSERT INTO auctions (`product_id`,`user_id`) VALUES (15, 6);
INSERT INTO auctions (`product_id`,`user_id`) VALUES (16, 7);
INSERT INTO auctions (`product_id`,`user_id`) VALUES (17, 6);
INSERT INTO auctions (`product_id`,`user_id`) VALUES (18, 5);
INSERT INTO auctions (`product_id`,`user_id`) VALUES (19, 8);
INSERT INTO auctions (`product_id`,`user_id`) VALUES (20, 8);
INSERT INTO auctions (`product_id`,`user_id`) VALUES (21, 7);
INSERT INTO auctions (`product_id`,`user_id`) VALUES (22, 8);
INSERT INTO auctions (`product_id`,`user_id`) VALUES (23, 7);
INSERT INTO auctions (`product_id`,`user_id`) VALUES (24, 5);
INSERT INTO auctions (`product_id`,`user_id`) VALUES (25, 8);
INSERT INTO auctions (`product_id`,`user_id`) VALUES (26, 5);






INSERT INTO favorites (`product_id`,`user_id`) VALUES (1,5 );
INSERT INTO favorites (`product_id`,`user_id`) VALUES (2,6);
INSERT INTO favorites (`product_id`,`user_id`) VALUES (3,8);
INSERT INTO favorites (`product_id`,`user_id`) VALUES (4,7 );
INSERT INTO favorites (`product_id`,`user_id`) VALUES (5, 5);
INSERT INTO favorites (`product_id`,`user_id`) VALUES (6, 6);
INSERT INTO favorites (`product_id`,`user_id`) VALUES (7, 7);
INSERT INTO favorites (`product_id`,`user_id`) VALUES (8,8 );
INSERT INTO favorites (`product_id`,`user_id`) VALUES (9, 5);
INSERT INTO favorites (`product_id`,`user_id`) VALUES (10,6 );
INSERT INTO favorites (`product_id`,`user_id`) VALUES (11,7 );
INSERT INTO favorites (`product_id`,`user_id`) VALUES (12,8 );
INSERT INTO favorites (`product_id`,`user_id`) VALUES (13, 6);
INSERT INTO favorites (`product_id`,`user_id`) VALUES (14, 5);
INSERT INTO favorites (`product_id`,`user_id`) VALUES (15, 8);

INSERT INTO blacklists (`product_id`,`user_id`) VALUES (1,5 );
INSERT INTO blacklists (`product_id`,`user_id`) VALUES (2,6);
INSERT INTO blacklists (`product_id`,`user_id`) VALUES (3,8);
INSERT INTO blacklists (`product_id`,`user_id`) VALUES (4,7 );
INSERT INTO blacklists (`product_id`,`user_id`) VALUES (5, 5);
INSERT INTO blacklists (`product_id`,`user_id`) VALUES (6, 6);
INSERT INTO blacklists (`product_id`,`user_id`) VALUES (7, 7);
INSERT INTO blacklists (`product_id`,`user_id`) VALUES (8,8 );
INSERT INTO blacklists (`product_id`,`user_id`) VALUES (9, 5);
INSERT INTO blacklists (`product_id`,`user_id`) VALUES (10,6 );
INSERT INTO blacklists (`product_id`,`user_id`) VALUES (11,7 );
INSERT INTO blacklists (`product_id`,`user_id`) VALUES (12,8 );
INSERT INTO blacklists (`product_id`,`user_id`) VALUES (13, 6);
INSERT INTO blacklists (`product_id`,`user_id`) VALUES (14, 5);
INSERT INTO blacklists (`product_id`,`user_id`) VALUES (15, 8);

-- rate:<1: good 2: normal 3: bad
INSERT INTO winners (`product_id`,`user_id`,`seller_id`,`rate`,`comment`) VALUES (1,5,1,1,'good' );
INSERT INTO winners (`product_id`,`user_id`,`seller_id`,`rate`,`comment`) VALUES (2,6,1,2,'normal');
INSERT INTO winners (`product_id`,`user_id`,`seller_id`,`rate`,`comment`) VALUES (3,8,1,3,'bad');
INSERT INTO winners (`product_id`,`user_id`,`seller_id`,`rate`,`comment`) VALUES (4,7,1,1,'good' );
INSERT INTO winners (`product_id`,`user_id`,`seller_id`,`rate`,`comment`) VALUES (5, 5,1,2,'normal');
INSERT INTO winners (`product_id`,`user_id`,`seller_id`,`rate`,`comment`) VALUES (6, 6,1,1,'good');
INSERT INTO winners (`product_id`,`user_id`,`seller_id`,`rate`,`comment`) VALUES (7, 7,1,1,'good');
INSERT INTO winners (`product_id`,`user_id`,`seller_id`,`rate`,`comment`) VALUES (8,8 ,1,1,'good');
INSERT INTO winners (`product_id`,`user_id`,`seller_id`,`rate`,`comment`) VALUES (9, 5,1,3,'bad');
INSERT INTO winners (`product_id`,`user_id`,`seller_id`,`rate`,`comment`) VALUES (10,6,1,2,'normal' );
INSERT INTO winners (`product_id`,`user_id`,`seller_id`,`rate`,`comment`) VALUES (11,7,1,1,'good' );
INSERT INTO winners (`product_id`,`user_id`,`seller_id`,`rate`,`comment`) VALUES (12,8,1,3,'bad' );
INSERT INTO winners (`product_id`,`user_id`,`seller_id`,`rate`,`comment`) VALUES (13, 6,1,1,'good');
INSERT INTO winners (`product_id`,`user_id`,`seller_id`,`rate`,`comment`) VALUES (14, 5,1,2,'normal');
INSERT INTO winners (`product_id`,`user_id`,`seller_id`,`rate`,`comment`) VALUES (15, 8,1,3,'bad');

INSERT INTO bidlogs (`product_id`,`buyer_id`,`price`) VALUES (1,2,3000000);
INSERT INTO bidlogs (`product_id`,`buyer_id`,`price`) VALUES (2,2,5000000);
INSERT INTO bidlogs (`product_id`,`buyer_id`,`price`) VALUES (3,2,6000000);
INSERT INTO bidlogs (`product_id`,`buyer_id`,`price`) VALUES (4,2,6000000);
INSERT INTO bidlogs (`product_id`,`buyer_id`,`price`) VALUES (5,2,8000000);
INSERT INTO bidlogs (`product_id`,`buyer_id`,`price`) VALUES (6,2,10000000);
INSERT INTO bidlogs (`product_id`,`buyer_id`,`price`) VALUES (7,2,6000000);
INSERT INTO bidlogs (`product_id`,`buyer_id`,`price`) VALUES (8,2,8000000);
INSERT INTO bidlogs (`product_id`,`buyer_id`,`price`) VALUES (9,2,10000000);
INSERT INTO bidlogs (`product_id`,`buyer_id`,`price`) VALUES (10,2,10000000);
INSERT INTO bidlogs (`product_id`,`buyer_id`,`price`) VALUES (11,2,40000000);
INSERT INTO bidlogs (`product_id`,`buyer_id`,`price`) VALUES (12,2,10000000);
INSERT INTO bidlogs (`product_id`,`buyer_id`,`price`) VALUES (13,2,10000000);
INSERT INTO bidlogs (`product_id`,`buyer_id`,`price`) VALUES (14,2,40000000);
INSERT INTO bidlogs (`product_id`,`buyer_id`,`price`) VALUES (15,2,10000000);
INSERT INTO bidlogs (`product_id`,`buyer_id`,`price`) VALUES (16,2,10000000);
INSERT INTO bidlogs (`product_id`,`buyer_id`,`price`) VALUES (17,2,10000000);
INSERT INTO bidlogs (`product_id`,`buyer_id`,`price`) VALUES (18,2,6000000);
INSERT INTO bidlogs (`product_id`,`buyer_id`,`price`) VALUES (19,2,8000000);
INSERT INTO bidlogs (`product_id`,`buyer_id`,`price`) VALUES (20,2,10000000);
INSERT INTO bidlogs (`product_id`,`buyer_id`,`price`) VALUES (21,2,10000000);
INSERT INTO bidlogs (`product_id`,`buyer_id`,`price`) VALUES (22,2,8000000);
INSERT INTO bidlogs (`product_id`,`buyer_id`,`price`) VALUES (23,2,6000000);
INSERT INTO bidlogs (`product_id`,`buyer_id`,`price`) VALUES (24,2,8000000);
INSERT INTO bidlogs (`product_id`,`buyer_id`,`price`) VALUES (25,2,40000000);
INSERT INTO bidlogs (`product_id`,`buyer_id`,`price`) VALUES (26,2,25000000);
INSERT INTO bidlogs (`product_id`,`buyer_id`,`price`) VALUES (27,2,9000000);


