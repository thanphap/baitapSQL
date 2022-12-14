/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

DROP TABLE IF EXISTS `food`;
CREATE TABLE `food` (
  `food_id` int NOT NULL AUTO_INCREMENT,
  `food_name` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `price` float NOT NULL,
  `desc` varchar(255) NOT NULL,
  `type_id` int NOT NULL,
  PRIMARY KEY (`food_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

DROP TABLE IF EXISTS `food_type`;
CREATE TABLE `food_type` (
  `type_id` int NOT NULL AUTO_INCREMENT,
  `type_name` varchar(255) NOT NULL,
  PRIMARY KEY (`type_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

DROP TABLE IF EXISTS `like_res`;
CREATE TABLE `like_res` (
  `user_id` int NOT NULL,
  `res_id` int NOT NULL,
  `date_like` datetime NOT NULL,
  PRIMARY KEY (`user_id`,`res_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

DROP TABLE IF EXISTS `order`;
CREATE TABLE `order` (
  `user_id` int NOT NULL,
  `food_id` int NOT NULL,
  `amount` int NOT NULL,
  `code` varchar(255) NOT NULL,
  `arr_sub_id` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

DROP TABLE IF EXISTS `rate_res`;
CREATE TABLE `rate_res` (
  `user_id` int NOT NULL,
  `res_id` int NOT NULL,
  `amount` int NOT NULL,
  `date_rate` datetime NOT NULL,
  PRIMARY KEY (`user_id`,`res_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

DROP TABLE IF EXISTS `restaurant`;
CREATE TABLE `restaurant` (
  `res_id` int NOT NULL AUTO_INCREMENT,
  `res_name` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `desc` varchar(255) NOT NULL,
  PRIMARY KEY (`res_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

DROP TABLE IF EXISTS `sub_food`;
CREATE TABLE `sub_food` (
  `sub_id` int NOT NULL AUTO_INCREMENT,
  `sub_name` varchar(255) NOT NULL,
  `sub_price` float NOT NULL,
  `food_id` int NOT NULL,
  PRIMARY KEY (`sub_id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `full_name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `user_id` int NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

INSERT INTO `food` (`food_id`, `food_name`, `image`, `price`, `desc`, `type_id`) VALUES
(1, 'M?? Qu???ng', 'https://upload.wikimedia.org/wikipedia/commons/d/d4/M%C3%AC_Qu%E1%BA%A3ng_Qu%E1%BA%A3ng_Nam.jpg', 15, '...', 1);
INSERT INTO `food` (`food_id`, `food_name`, `image`, `price`, `desc`, `type_id`) VALUES
(2, 'B??n b??', 'https://upload.wikimedia.org/wikipedia/commons/0/00/Bun-Bo-Hue-from-Huong-Giang-2011.jpg', 15, '...', 1);
INSERT INTO `food` (`food_id`, `food_name`, `image`, `price`, `desc`, `type_id`) VALUES
(3, 'B??n M???m', 'https://cdn.tgdd.vn/2021/09/CookProduct/BunmamnemmienTrung(5)-1200x676.jpg', 15, '...', 1);
INSERT INTO `food` (`food_id`, `food_name`, `image`, `price`, `desc`, `type_id`) VALUES
(4, 'Khoai t??y chi??n', 'https://cdn.daynauan.info.vn/wp-content/uploads/2021/11/cach-lam-khoai-tay-chien.jpg', 5, '...', 2),
(5, 'X??c x??ch', 'https://winemart.vn/wp-content/uploads/2020/01/Sakura.jpg', 5, '...', 2),
(6, ' S??p g??', 'https://cdn.tgdd.vn/2021/10/CookRecipe/Avatar/sup-ga-thumbnail.jpg', 15, '...', 1);

INSERT INTO `food_type` (`type_id`, `type_name`) VALUES
(1, 'Ch??nh');
INSERT INTO `food_type` (`type_id`, `type_name`) VALUES
(2, 'Khai v???');
INSERT INTO `food_type` (`type_id`, `type_name`) VALUES
(3, 'Rau');

INSERT INTO `like_res` (`user_id`, `res_id`, `date_like`) VALUES
(1, 1, '2022-12-01 08:23:44');
INSERT INTO `like_res` (`user_id`, `res_id`, `date_like`) VALUES
(1, 2, '2022-12-02 10:23:44');
INSERT INTO `like_res` (`user_id`, `res_id`, `date_like`) VALUES
(2, 2, '2022-12-03 15:23:44');
INSERT INTO `like_res` (`user_id`, `res_id`, `date_like`) VALUES
(2, 3, '2022-12-03 09:23:44'),
(3, 2, '2022-12-04 08:23:44'),
(4, 1, '2022-12-04 14:23:44'),
(5, 1, '2022-12-05 07:23:44'),
(6, 3, '2022-12-05 10:23:44'),
(6, 4, '2022-12-05 16:23:44');

INSERT INTO `order` (`user_id`, `food_id`, `amount`, `code`, `arr_sub_id`) VALUES
(1, 1, 3, '121', '[1, 2]');
INSERT INTO `order` (`user_id`, `food_id`, `amount`, `code`, `arr_sub_id`) VALUES
(1, 2, 4, '122', '[2, 3]');
INSERT INTO `order` (`user_id`, `food_id`, `amount`, `code`, `arr_sub_id`) VALUES
(2, 1, 2, '123', '[1, 3]');
INSERT INTO `order` (`user_id`, `food_id`, `amount`, `code`, `arr_sub_id`) VALUES
(3, 2, 3, '124', '[1, 2, 3]');

INSERT INTO `rate_res` (`user_id`, `res_id`, `amount`, `date_rate`) VALUES
(1, 1, 2, '2022-12-01 13:23:44');
INSERT INTO `rate_res` (`user_id`, `res_id`, `amount`, `date_rate`) VALUES
(1, 2, 1, '2022-12-03 13:23:44');
INSERT INTO `rate_res` (`user_id`, `res_id`, `amount`, `date_rate`) VALUES
(2, 1, 2, '2022-12-02 13:23:44');
INSERT INTO `rate_res` (`user_id`, `res_id`, `amount`, `date_rate`) VALUES
(3, 3, 2, '2022-12-04 13:23:44');

INSERT INTO `restaurant` (`res_id`, `res_name`, `image`, `desc`) VALUES
(1, 'Citron', 'https://cdn.tgdd.vn/Files/2022/06/24/1442170/10-nha-hang-da-nang-view-dep-cuc-hap-dan-thuc-khach-202206241704027108.jpg', '...');
INSERT INTO `restaurant` (`res_id`, `res_name`, `image`, `desc`) VALUES
(2, 'Ngon Th??? Hoa', 'https://cdn.tgdd.vn/Files/2022/06/24/1442170/10-nha-hang-da-nang-view-dep-cuc-hap-dan-thuc-khach-202206241723157952.jpg', '...');
INSERT INTO `restaurant` (`res_id`, `res_name`, `image`, `desc`) VALUES
(3, 'Madame L??n', 'https://cdn.tgdd.vn/Files/2022/06/24/1442170/10-nha-hang-da-nang-view-dep-cuc-hap-dan-thuc-khach-202206242040143504.jpg', '...');
INSERT INTO `restaurant` (`res_id`, `res_name`, `image`, `desc`) VALUES
(4, 'Le Gourmet ??? Samdi Hotel', 'https://cdn.tgdd.vn/Files/2022/06/24/1442170/10-nha-hang-da-nang-view-dep-cuc-hap-dan-thuc-khach-202206242049021939.jpg', '...');

INSERT INTO `sub_food` (`sub_id`, `sub_name`, `sub_price`, `food_id`) VALUES
(1, 'g??', 15, 1);
INSERT INTO `sub_food` (`sub_id`, `sub_name`, `sub_price`, `food_id`) VALUES
(2, 't??i', 15, 2);
INSERT INTO `sub_food` (`sub_id`, `sub_name`, `sub_price`, `food_id`) VALUES
(3, 'th???t', 17, 3);
INSERT INTO `sub_food` (`sub_id`, `sub_name`, `sub_price`, `food_id`) VALUES
(4, 'th???t', 17, 1),
(5, 'gi??', 20, 2),
(6, 'kh??', 17, 2),
(7, 'ch???', 15, 3),
(8, 'ch???m x???t', 4, 4),
(9, 'b?? t???i', 6, 4),
(10, 'l???n', 6, 5),
(11, 'b??', 8, 5);

INSERT INTO `user` (`full_name`, `email`, `password`, `user_id`) VALUES
('Hoang', 'hoang@gmail.com', '1234', 1);
INSERT INTO `user` (`full_name`, `email`, `password`, `user_id`) VALUES
('Loc', 'loc@gmail.com', '1234', 2);
INSERT INTO `user` (`full_name`, `email`, `password`, `user_id`) VALUES
('Quang', 'quang@gmail.com', '1234', 3);
INSERT INTO `user` (`full_name`, `email`, `password`, `user_id`) VALUES
('Huy', 'huy@gmail.com', '1234', 4),
('Thanh', 'thanh@gmail.com', '1234', 5),
('Long', 'long@gmail.com', '1234', 6),
('Thien', 'thien@gmail.com', '1234', 7);


/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;