CREATE TABLE IF NOT EXISTS product(
    `id` bigint(20) NOT NULL AUTO_INCREMENT,
    `name` varchar(255) DEFAULT NULL,
    PRIMARY KEY (`id`)
)ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
DELETE FROM product;
-- INSERT INTO product(image_url, name) VALUES ('https://cphapp.rema1000.dk/api/v1/catalog/store/1/item/23420/image/1462221519/600.jpg', 'CREMEFRAICHE');
-- INSERT INTO product(image_url, name) VALUES ('https://cphapp.rema1000.dk/api/v1/catalog/store/1/item/213942/image/1560262700/600.jpg', 'PEPSI MAX');
-- INSERT INTO product(image_url, name) VALUES ('https://cphapp.rema1000.dk/api/v1/catalog/store/1/item/201003/image/1553075410/600.jpg', 'CARLSBERG');
-- INSERT INTO product(image_url, name) VALUES ('https://cphapp.rema1000.dk/api/v1/catalog/store/1/item/400176/image/1569941273/600.jpg', 'HK. OKSEKØD 15-18');
-- INSERT INTO product(image_url, name) VALUES ('https://cphapp.rema1000.dk/api/v1/catalog/store/1/item/212652/image/1549284118/600.jpg', 'COCA COLA');
-- INSERT INTO product(image_url, name) VALUES ('https://cphapp.rema1000.dk/api/v1/catalog/store/1/item/61250/image/1534406146/600.jpg', 'BURGERBOLLER');