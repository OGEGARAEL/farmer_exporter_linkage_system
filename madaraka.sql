-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 12, 2024 at 11:11 PM
-- Server version: 10.5.12-MariaDB-1
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `madaraka`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `category_name` varchar(100) NOT NULL,
  `active` int(1) NOT NULL DEFAULT 0,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `slug` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `category_name`, `active`, `date`, `slug`) VALUES
(1, 'Mombasa', 1, '2024-02-02 20:50:21', 'mombasa'),
(2, 'Nairobi', 1, '2024-02-02 22:36:32', 'nairobi');

-- --------------------------------------------------------

--
-- Table structure for table `countries`
--

CREATE TABLE `countries` (
  `id` int(11) NOT NULL,
  `country` varchar(50) NOT NULL,
  `disabled` tinyint(4) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `countries`
--

INSERT INTO `countries` (`id`, `country`, `disabled`) VALUES
(1, 'Kenya', 0);

-- --------------------------------------------------------

--
-- Table structure for table `details`
--

CREATE TABLE `details` (
  `id` int(11) NOT NULL,
  `phone` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `address` varchar(100) NOT NULL,
  `regNo` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `details`
--

INSERT INTO `details` (`id`, `phone`, `email`, `address`, `regNo`) VALUES
(1, '0712345678', 'jackmutiso37@gmail.com', 'jj', 'inte'),
(2, '0712345678', 'jackmutiso37@gmail.com', 'jj', 'inte'),
(3, '0712345678', 'jackmutiso37@gmail.com', 'kaba', 'inte/mg'),
(4, '0712345678', 'jackmutiso37@gmail.com', 'kaba', 'inte/mg'),
(5, '0712345678', 'jackmutiso37@gmail.com', 'kaba', 'inte/mg'),
(6, '0712345678', 'jackmutiso37@gmail.com', 'kaba', 'inte/mg'),
(7, '0712345678', 'jackmutiso37@gmail.com', 'jj', 'inte'),
(8, '997536363', 'jack@gmail.com', 'nairobi', 'inte'),
(9, '8876544', 'jackmutiso37@gmail.com', 'iiii', 'econ'),
(10, '0976544', 'john@gmail.com', 'kiba', 'maths'),
(11, '254702830006', 'john@gmail.com', 'kk', '00l'),
(12, '0745378674', 'jack@gmail.com', 'kabarak', 'it'),
(13, '075343332', 'john@gmail.com', 'arusha', 'eco'),
(14, '087363534', 'mahlihep@gmail.com', 'kabaraka', 'cs/mg'),
(15, '0101480104', 'oriel@gmail.com', 'Kericho', 'ede/mg');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) NOT NULL,
  `user_id` varchar(50) DEFAULT NULL,
  `order_id` bigint(20) NOT NULL,
  `seller` varchar(255) NOT NULL,
  `session_id` varchar(30) NOT NULL,
  `username` varchar(20) NOT NULL,
  `email` varchar(30) DEFAULT NULL,
  `phone` varchar(20) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `order_id`, `seller`, `session_id`, `username`, `email`, `phone`, `date`) VALUES
(8, '1', 80734409, '8', 'Zb2M1GRGLc_XQ8p3xys3EAAAAAA', 'Jacob mutiso Muasa', 'jackmutiso37@gmail.com', '0101480104', '2024-02-02 22:46:12'),
(9, '1', 81238358, '1', 'Zb69RNuX7wjf5gH9js1kQgAAAAI', 'Frasha', 'jackmutiso37@gmail.com', '0101888888', '2024-02-03 08:25:08'),
(10, '13', 66535520, '13', 'Zb6PUePtFOJ94ULO57zvdAAAAAk', 'Cesur', 'cesurelvis@gmail.com', '0100386448', '2024-02-03 05:09:05');

-- --------------------------------------------------------

--
-- Table structure for table `permission_table`
--

CREATE TABLE `permission_table` (
  `id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL,
  `permission` varchar(255) NOT NULL,
  `disabled` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `permission_table`
--

INSERT INTO `permission_table` (`id`, `role_id`, `permission`, `disabled`) VALUES
(1, 1, 'view_category', 1),
(2, 1, 'add_category', 1),
(3, 1, 'edit_category', 1),
(4, 1, 'delete_category', 1),
(5, 2, 'view_category', 1),
(6, 2, 'add_category', 1),
(7, 2, 'edit_category', 1),
(8, 2, 'delete_category', 1),
(9, 2, 'view_products', 1),
(10, 2, 'add_product', 1),
(11, 1, 'add_product', 0),
(12, 1, 'edit_product', 0),
(13, 1, 'delete_product', 0),
(14, 1, 'view_products', 1),
(15, 1, 'view_product', 0),
(16, 1, 'view_user', 1),
(17, 1, 'edit_role', 1),
(18, 1, 'view_role', 1),
(19, 1, 'add_role', 1),
(20, 1, 'delete_role', 1),
(21, 1, 'add_user', 1),
(22, 1, 'edit_user', 1),
(23, 1, 'view_order', 0),
(24, 1, 'delete_order', 0),
(25, 1, 'view_dashboard', 1),
(26, 1, 'view_about', 1);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `user_id` int(255) NOT NULL,
  `category_id` varchar(50) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `quantity` varchar(255) NOT NULL,
  `description` varchar(1500) NOT NULL,
  `image` varchar(1024) DEFAULT NULL,
  `approved` int(1) NOT NULL DEFAULT 0,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `user_id`, `category_id`, `product_name`, `phone`, `quantity`, `description`, `image`, `approved`, `date`) VALUES
(1, 1, '1', 'Hass', '300', '32', 'The distribution of preferences indexes was investigated among latent classes, which were regressed on the socio-demographic variables covariates using multinomial logistic regression. The results suggest that the desirable attributes for choosing avocado were taste, consistency (ready to eat) and affordable price. In addition, five consumer profiles in the Italian context were defined (named Hedonistic, Avocado fruit lovers, Sustainability sensitive, Value for money and Health sensitive) and characterized in terms of preferences and socio-demographic features. The study addresses a topic that has already been explored, but with an unexploited approach (latent class analysis combined with best–worst choice modeling). Therefore, the results help fill the gap in the existing literature by enriching it with a study that characterizes avocado consumers\' preferences considering their heterogeneity in terms of perception and socio-demographic characteristics.\r\n                                        ', 'uploads/1706907046pexels-valerie-b-3029520.jpg', 0, '2024-02-02 22:03:45'),
(2, 1, '1', 'Maluma', '254745378674', '200', 'The Maluma is a dark-purple avocado that was discovered in the 1990s in South Africa. This variety grows slowly, but the trees bear a lot of fruit.\r\n\r\nThough only one or two varieties are best known, hundreds of types exist around the world, primarily differing in size, color, shape, texture, and flavor.          ', 'uploads/1706907737pexels-valerie-b-3029520.jpg', 0, '2024-02-02 22:05:54'),
(3, 1, '1', 'Reed', '0101888888', '100', 'The Reed is only available during the summer months. It has a lighter, more subtle flavor and is about the size of a softball. As the Reed ripens, its skin remains the same green color, unlike other types.\r\n\r\nThey’re rich in vitamins and minerals, as well as antioxidants, unsaturated fats, and fiber, which may help lower your risk of various chronic diseases and improve your health.\r\n\r\nThough only one or two varieties are best known, hundreds of types exist around the world, primarily differing in size, color, shape, texture, and flavor.\r\n\r\nThe most popular and widely available type of avocado is the Hass. However, if you come across another variety, it would likely have a similar nutritional composition.\r\n                                        ', 'uploads/1706908277pexels-valerie-b-3029520.jpg', 0, '2024-02-02 22:04:42'),
(4, 4, '1', 'Green Avacado', '0101480104', '100', '    Consumption of the avocado fruit and its availability in the retail market has increased in recent decades and with it the desire to learn more about the market and consumer choices. This research aims to explore the consumers\' preference heterogeneity toward avocado fruit in Italy assessing their personal eating orientation and socio-demographic factors. To achieve this purpose, the answers of 817 Italian consumer of avocado were collected using a structured questionnaire shared online at national level. A survey based on the best–worst method was conducted to assess the declared preferences of individuals toward a set of intrinsic, extrinsic and credence attributes of avocado, as well as a latent class analysis of subject preferences indexes was applied to identify different clusters of individuals.\r\n                                                            ', 'uploads/1706908817istockphoto-962648580-1024x1024.jpg', 0, '2024-02-02 21:57:13'),
(5, 8, '2', 'Brogden', '0101480104', '200', 'While you may only see a few types of avocado at your local grocery store, hundreds of varieties grow around the world. Though many hybrids exist, all avocados can be traced to either Guatemalan, Mexican, or West Indian origin (1, 13Trusted Source, 14Trusted Source).\r\n\r\nThe fruits are categorized as either A-type or B-type cultivars. The difference lies in the opening times and pollination behaviors of the avocado tree flowers. The type of cultivar has little effect on consumers and matters more to those who grow avocados.\r\n\r\nAvocados are partially self-pollinating through a process called dichogamy. A-type flowers bloom as females in the morning and shed pollen as males in the afternoon. Oppositely, B-type flowers receive pollen in the afternoon and shed it in the morning (15).\r\n\r\nMany varieties share similar features, with slight differences in size, coloring, flavor, shape, and peak growing season.\r\n                    ', 'uploads/1706913475pexels-valerie-b-3029520.jpg', 0, '2024-02-02 20:37:55'),
(8, 13, '1', 'Avokado', '0100386448', '233', 'Highly nutritious avocado\r\n                    ', 'uploads/1706986006Avocadolg.jpeg', 0, '2024-02-03 16:46:46'),
(10, 13, '2', 'Dadokado', '023234234', '235', 'Highly recommended avocado of all times.\r\n                    ', 'uploads/1706987169Avokado.jpeg', 0, '2024-02-03 17:06:09'),
(11, 13, '2', 'Sendros', '0754678989', '21', 'Get healthy with this nutritious fruit\r\n                    ', 'uploads/1706987234Avo2.jpg', 0, '2024-02-03 17:07:14');

-- --------------------------------------------------------

--
-- Table structure for table `reset`
--

CREATE TABLE `reset` (
  `id` int(11) NOT NULL,
  `email` varchar(100) NOT NULL,
  `code` varchar(10) NOT NULL,
  `expire` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `reset`
--

INSERT INTO `reset` (`id`, `email`, `code`, `expire`) VALUES
(1, 'jackmutiso37@gmail.com', '16379', 1680452408),
(2, 'jackmutiso37@gmail.com', '46095', 1680452473);

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(11) NOT NULL,
  `role` varchar(40) NOT NULL,
  `disabled` tinyint(4) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `role`, `disabled`) VALUES
(1, 'User', 1),
(2, 'admin', 1);

-- --------------------------------------------------------

--
-- Table structure for table `state`
--

CREATE TABLE `state` (
  `id` int(11) NOT NULL,
  `state` varchar(50) NOT NULL,
  `disabled` tinyint(4) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `state`
--

INSERT INTO `state` (`id`, `state`, `disabled`) VALUES
(1, 'Nakuru', 0),
(2, 'Nairobi', 0),
(3, 'Machakos', 0),
(4, 'Mombasa', 0),
(5, 'Meru', 0),
(6, 'Eldoret', 0),
(7, 'Thika', 0),
(8, 'Kitale', 0);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` varchar(255) DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `role` int(1) NOT NULL DEFAULT 0,
  `password` varchar(255) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `email`, `role`, `password`, `date`) VALUES
(1, 'Jack', 'jackmutiso37@gmail.com', 2, '12345', '2023-04-02 16:12:18'),
(3, 'Cesur', 'cesurelvis@gmail.com', 2, 'elvis123', '2023-03-23 08:18:56'),
(4, 'Stacy', 'stacia@gmail.com', 1, '12345', '2023-03-13 05:16:55'),
(6, 'Glady', 'kamaugladys@gmail.com', 1, '12345', '2023-03-18 09:10:50'),
(8, 'newone', 'new@gmail.com', 1, '12345', '2023-03-19 06:19:42'),
(9, 'jair', 'mahlihep@gmail.com ', 1, 'MAAHLO@7', '2023-03-22 19:26:07'),
(10, 'jair', 'mahlihep@gmail.com ', 1, 'MAAHLO@7', '2023-03-22 19:26:58'),
(13, 'Cesur ', 'cesurelvis@gmail.com', 1, 'elvis123', '2023-04-02 11:02:14'),
(14, 'newone', 'jackmutiso@gmail.com', 1, '12345', '2024-02-02 17:57:47');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `details`
--
ALTER TABLE `details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `permission_table`
--
ALTER TABLE `permission_table`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reset`
--
ALTER TABLE `reset`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `state`
--
ALTER TABLE `state`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `countries`
--
ALTER TABLE `countries`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `details`
--
ALTER TABLE `details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `permission_table`
--
ALTER TABLE `permission_table`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `reset`
--
ALTER TABLE `reset`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `state`
--
ALTER TABLE `state`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
