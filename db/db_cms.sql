-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Mar 24, 2020 at 06:16 PM
-- Server version: 5.7.26
-- PHP Version: 7.3.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_cms`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_category`
--

CREATE TABLE `tbl_category` (
  `category_id` int(11) NOT NULL,
  `category_name` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_category`
--

INSERT INTO `tbl_category` (`category_id`, `category_name`) VALUES
(1, 'Men'),
(2, 'Women'),
(3, 'Kids'),
(4, 'Shoes'),
(5, 'Gear'),
(6, 'Electronics'),
(7, 'Fan Wear');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_category_product`
--

CREATE TABLE `tbl_category_product` (
  `category_product_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_category_product`
--

INSERT INTO `tbl_category_product` (`category_product_id`, `category_id`, `product_id`) VALUES
(1, 1, 1),
(2, 1, 2),
(3, 1, 3),
(4, 1, 4),
(5, 1, 5),
(6, 2, 6),
(7, 2, 7),
(8, 2, 8),
(9, 2, 9),
(10, 2, 10),
(11, 3, 11),
(12, 3, 12),
(13, 3, 13),
(14, 3, 14),
(15, 3, 15),
(16, 4, 16),
(17, 4, 17),
(18, 4, 18),
(19, 4, 19),
(20, 4, 20),
(21, 5, 21),
(22, 5, 22),
(23, 5, 23),
(24, 5, 24),
(25, 5, 25),
(26, 6, 26),
(27, 6, 27),
(28, 6, 28),
(29, 6, 29),
(30, 6, 30),
(31, 7, 31),
(32, 7, 32),
(33, 7, 33),
(34, 7, 34),
(35, 7, 35);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_product`
--

CREATE TABLE `tbl_product` (
  `product_id` int(11) NOT NULL,
  `product_name` varchar(100) NOT NULL,
  `product_desc` text NOT NULL,
  `product_price` decimal(10,2) NOT NULL,
  `product_image` varchar(30) NOT NULL DEFAULT 'default.png'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_product`
--

INSERT INTO `tbl_product` (`product_id`, `product_name`, `product_desc`, `product_price`, `product_image`) VALUES
(1, 'Nike Sportswear Men\'s Club BB Full Zip Hoodie', 'The Nike Sportswear Club Fleece Hoodie combines soft fabric with simple street style for an everyday look you’ll really want to wear every day. With a full zipper that goes to the chin, it’s the perfect extra layer on a chilly day.', '68.00', 'men1.png'),
(2, 'Champion Men\'s Graphic Jersey Shorts', 'Men’s Champion graphic jersey lightweight short offers relaxed comfort for all day wear.', '30.00', 'men2.png'),
(3, 'Helly Hansen Men\'s Sirdal Hooded Insulator Jacket', 'A staple piece for any age. A warm, versatile insulator that works great as a stand alone layer or under your favorite shell.', '125.98', 'men3.png'),
(4, 'Marmot Men\'s Ridgefield Jacket - Bright Steel', 'The heavyweight Men’s Ridgefield Long-Sleeve Shirt lives between shirt and jacket and right at the base of cold weather. High-pile bonded shearling provides warmth and comfort while the polyester dries quickly to keep you comfortable. A zippered chest pocket keeps the essentials accessible. Elastic binding at the hem and cuffs prevents drafts.', '124.99', 'men4.png'),
(5, 'Nike Sportswear Men\'s Club BB Cargo Pants - Black', 'The Nike Sportswear Club Fleece Cargo Pants put an athletic spin on the classic cargo style. Made from soft brushed fabric, they’re comfortable for all-day wear.', '68.00', 'men5.png'),
(6, 'Under Armour Women\'s HeatGear© Armour Double Strap Studio Tank', 'HeatGear® Armour is Under Armour’s original performance base layer—the layer you put on first and take off last. It’s tight to wick away sweat and quick-drying to keep you cool. No athlete can go without it.', '34.99', 'women1.png'),
(7, 'Columbia Women\'s Hillsdale™ Spring Reversible Jacket', 'Go for twice the style and double the protection in reversible, waterproof fabric that breathes. An extra-comfortable stretch ensures you enjoy active days without restriction. A removable hood and light layer of insulation keeps you ready for rain and wind.', '99.98', 'women2.png'),
(8, 'Speedo Women\'s Endurance Side Shirred Tank Plus Size Swimsuit', 'Daily swimmers and casual water lovers alike will benefit from this performance-enhanced swimsuit designed to flatter. Endurance+ engineering delivers chlorine-resistant fabric with four-way stretch for a long-lasting fit that won’t sag or bag. Built-in cups provide smooth support and coverage, while shirred sides and placed compression technology at the waist create a slimming effect.', '94.99', 'women3.png'),
(9, 'Nike Women\'s Yoga Tights - Black', 'Bring confidence to your practice with the Nike Yoga Tights. They combine quick-drying fabric with plenty of stretch to let you move through your flow with ease.', '59.97', 'women4.png'),
(10, 'Helly Hansen Women\'s Sirdal Insulated Vest', 'A staple piece for any age. A warm, versatile insulator that works great as a stand alone layer or under your favorite shell.', '90.98', 'women5.png'),
(11, 'Helly Hansen Boys\' Twister Insulated Jacket', 'The JR Twister Jacket is the perfect all-around jacket for outdoor adventures. With bold colour choices and hi-vis details, you’ll never lose track of your young ones.', '219.99', 'kid1.png'),
(12, 'Helly Hansen Girls\' Barrier Down Reverisble Hooded Jacket', 'A \"must-have\" piece for any youngster who loves the great outdoors. Perfect for laying with a shell jacket or wearing as a stand-alone performance layer.', '89.98', 'kid2.png'),
(13, 'Columbia Girls\' Adventure Ride Bib Pant', 'These bibs are all about rugged toughness and ideal fit. The reinforced knees and seat add extra durability right where an adventure rider needs it most. Meanwhile internal leg gaiters and adjustable waist tabs, suspenders, and OUTGROW™ fit system work together to provide the perfect fit, year after year.', '69.98', 'kid3.png'),
(14, 'Columbia Youth Adventure Ride Bib Pant - Navy', 'These bibs are all about rugged toughness and ideal fit. The reinforced knees and seat add extra durability right where an adventure rider needs it most. Meanwhile internal leg gaiters and adjustable waist tabs, suspenders, and OUTGROW™ fit system work together to provide the perfect fit, year after year.', '69.98', 'kid4.png'),
(15, 'adidas Boys\' MH Bos Pullover Hoodie', 'For school, play and sport, this juniors\' pullover hoodie is an essential for young athletes. The pullover has a kangaroo pocket for stashing small essentials. A rubber adidas Badge of Sport sits proudly on the front.', '54.99', 'kid5.png'),
(16, 'ASICS Women\'s GEL Excite 7 Trail Running Shoes', 'The ASICS Women’s GEL Excite 7 Trail Running Shoe is a lightweight offering that introduces an improved fit in the forefoot to generate prolonged comfort no matter the distance.\r\n \r\nDesigned with a technical mesh upper, the GEL-EXCITE™ 7 running shoe delivers excellent airflow throughout the interior to keep feet cool during a run. This style implements an ORTHOLITE™ sockliner in the footbed to maintain a lightweight feel that also helps keep feet dry and comfortable.', '109.99', 'shoe1.png'),
(17, 'Nike Women\'s Revolution 5 Running Shoes', 'The Nike Women’s Revolution 5 Running Shoe cushions your stride with soft foam to keep you running in comfort. Lightweight knit material wraps your foot in breathable support, while a minimalist design fits in anywhere your day takes you.', '87.99', 'shoe2.png'),
(18, 'ASICS Men\'s Cumulus 20 Running Shoes - Red/Blue', 'A favorite for 20 years and counting. The ASICS Men’s Cumulus 20 Running Shoe celebrates its 20th anniversary with premium technology and a refined design that offers optimal support and comfort for runners of all levels. A FlyteFoam® midsole teams up with rearfoot and forefoot GEL for all day comfort.', '159.99', 'shoe3.png'),
(19, 'Salomon Women\'s X Ultra 3 Mid Gore-Tex Hiking Boots - Shadow/Gray', 'Specially designed to accommodate women, the best selling Salomon X Ultra 3 Mid Gore-Tex® have evolved into an even more effective hiking boot. Thanks to Descent Control technology, this boot efficiently tackles technical hikes and really shines during tough descents. Wear this pair and head downhill with a spring in your step, even in wet conditions.', '199.99', 'shoe4.png'),
(20, 'Merrell Women\'s Terran Lattice II Sandals - Dusty Olive', 'Breathable mesh-and-leather sandals with a bright pop of color keep your feet feeling as cool and carefree as you look wearing them.', '71.97', 'shoe5.png'),
(21, 'CCM Jetspeed FT470 Senior Hockey Skates', 'The new Jetspeed FT470 features a lightweight composite construction providing players with excellent heel lock and great fit. The new quick release SpeedBlade XS1 holder allows for quick and easy blade swaps with the assurance of a tight runner-holder connection for maximum energy transfer.', '399.99', 'gear1.png'),
(22, 'Salomon X Access 60 Wide Women\'s Ski Boots 2019/20 - Black/White', 'The Salomon X Access 60 Wide uses Oversized Pivot and Twinframe technologies in a last 104mm, providing strong performance and a great fit for all day fun.', '148.98', 'gear2.png'),
(23, 'Nike FA19 Strike Size 4 Soccer Ball - White/Black', 'The Premium League Strike Soccer Ball is ready for everyday play with high-contrast graphics to help you track it and a 12-panel design for true and accurate flight.', '35.00', 'gear3.png'),
(24, 'Nike Heritage 2.0 Backpack', 'The Nike Heritage 2.0 Backpack combines simplicity and functionality with its clean design. Padded shoulder straps add an element of comfort while you carry your gear.', '42.00', 'gear4.png'),
(25, 'Nike Hyperdiamond 12.5\" H-Web Softball Glove', 'NEW from Nike. Experience and enjoy this superior high quality glove that provides comfort and support with a secure fit and an extra deep pocket. Be game-ready the moment you slide on this adjustable, full-grain leather glove.', '199.99', 'gear5.png'),
(26, 'Fitbit Versa 2 Smartwatch - Petal Pink', 'Meet Fitbit Versa 2​™​—a smartwatch that elevates every moment. Use your voice to create alarms, set bedtime reminders or check the weather with Amazon Alexa Built-in.​ Take your look from the gym to the office with its modern and versatile design. Control your favourite playlists and podcasts with Spotify. ​Plus get Fitbit Pay​™​, daily in-app sleep quality scores, notifications, 24/7 heart rate and store 300+ songs for an experience that revolves around you.', '249.95', 'electronic1.png'),
(27, 'GoPro HERO8 Black Action Camera', 'This is HERO8 Black—the most versatile, unshakable HERO camera ever. A streamlined design makes it more pocketable than ever, and swapping mounts takes just seconds, thanks to built-in folding fingers. And with the optional Media Mod, you get ultimate expandability to add more lighting, pro audio and even another screen. There’s also game-changing HyperSmooth 2.0 stabilization with jaw-dropping slo-mo.', '469.98', 'electronic2.png'),
(28, 'Beats Studio 3 Wireless Headphones', 'Premium sound with fine-tuned acoustics and Pure ANC Beats Studio3 Wireless headphones deliver a premium listening experience with Pure Adaptive Noise Cancelling (Pure ANC) to actively block external noise, and real-time audio calibration to preserve clarity, range and emotion. It continuously pinpoints external sounds to block while automatically responding to individual fit in real-time, optimizing sound output to preserve a premium listening experience the way artists intended.', '279.96', 'electronic3.png'),
(29, 'Fitbit Aria Air Smart Scale', 'Get a more complete picture of your health with the Fitbit Aria Air smart scale. This easy to use smart scale displays your weight and syncs it to the Fitbit app where you can view your BMI, track your trends over time and see how things like activity and nutrition impact your goals.', '69.95', 'electronic4.png'),
(30, 'Apple Watch Series 4 GPS + Cellular, 40mm Gold Aluminum Case with Pink Sport Band', 'Fundamentally redesigned and re-engineered. The largest Apple Watch display yet. Built-in electrical heart sensor. New Digital Crown with haptic feedback. Low and high heart rate notifications. Fall detection and Emergency SOS. New Breathe watch faces. Automatic workout detection. New yoga and hiking workouts. Advanced features for runners like cadence and pace alerts. New head-to-head competitions. Activity sharing with friends. Personalized coaching. Monthly challenges and achievement awards. Built-in cellular1 lets you use Walkie-Talkie, make phone calls and send messages. Stream Apple Music2 and Apple Podcasts. And use Siri in all-new ways—even while you’re away from your phone. With Apple Watch Series 4, you can do it all with just your watch.', '518.98', 'electronic5.png'),
(31, 'Toronto Blue Jays Fanatics Men\'s Bichette Player Tee', 'Introduce some bold MLB team swag into your wardrobe with this unique Toronto Blue Jays Fanatics Men’s Bichette Player Tee. You’ll easily look like the most dedicated Jays fan wherever you go this season when you sport this at the diamond, in the streets or in the stands. Officially Licensed by MLB.', '34.99', 'fanwear1.png'),
(32, 'Toronto Maple Leafs Mitch Marner Authentic Home Hockey Jersey', 'Emblazoned with a Maple Leaf’s tackle-twill crest and Number 16’s name and number on the back, the Toronto Maple Leafs Mitch Marner Authentic Pro Home Hockey Jersey lets everyone know which player you love best. Members of Leaf Nation can stay cool and comfortable during every game in this authentic replica hockey jersey, thanks to its heat-managing, moisture-wicking climalite® technology.', '249.99', 'fanwear2.png'),
(33, 'Toronto Raptors Nike Men\'s Serge Ibaka Swingman Jersey', 'Based on the authentic NBA jersey, the Icon Edition Swingman (Toronto Raptors) Men’s Nike NBA Connected Jersey lets you rep your team while helping keep you cool and comfortable through every move.', '130.00', 'fanwear3.png'),
(34, 'Hamilton Tiger-Cats New Era Men\'s Brushed Poly 1/4 Zip Top', 'Celebrate your Canadian Football League allegiance when you put on this Hamilton Tiger-Cats New Era Men’s Brushed Poly 1/4 Zip Top. The bold Tiger-Cats graphics will show your CFL team pride whether on the field, on the streets or in the stands! Officially Licensed by the CFL.', '67.99', 'fanwear4.png'),
(35, 'Toronto FC Men\'s adidas 2018/19 Replica Away Jersey', 'Created for supporters, this jersey keeps you comfortable as you roar Toronto FC to victory on the road. Built from soft fabric that keeps you cool and dry, it has a slightly looser fit than the shirts the club’s players wear on the pitch. An \"All for One\" graphic celebrates the city’s togetherness, while a woven team badge stands out on the chest. ', '109.99', 'fanwear5.png'),
(36, 'Hoodie', 'soft', '20.99', 'default.png');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user`
--

CREATE TABLE `tbl_user` (
  `user_id` int(11) NOT NULL,
  `user_fname` varchar(250) NOT NULL,
  `user_name` varchar(250) NOT NULL,
  `user_pass` varchar(250) NOT NULL,
  `user_email` varchar(250) NOT NULL,
  `user_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `user_ip` varchar(50) NOT NULL DEFAULT 'no',
  `count` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_user`
--

INSERT INTO `tbl_user` (`user_id`, `user_fname`, `user_name`, `user_pass`, `user_email`, `user_date`, `user_ip`, `count`) VALUES
(1, 'Victoria', 'vcollier', '123', 'v.collier@hotmail.com', '2020-03-13 18:45:58', '::1', 0),
(3, 'Renata', 'rcunha', '123', 'r_cunha@fanshaweonline.ca', '2020-03-13 18:46:21', 'no', 0),
(4, 'Laura', 'lcollier', '123', 'vcollier09@gmail.com', '2020-03-15 15:31:54', 'no', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_category`
--
ALTER TABLE `tbl_category`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `tbl_category_product`
--
ALTER TABLE `tbl_category_product`
  ADD PRIMARY KEY (`category_product_id`);

--
-- Indexes for table `tbl_product`
--
ALTER TABLE `tbl_product`
  ADD PRIMARY KEY (`product_id`);

--
-- Indexes for table `tbl_user`
--
ALTER TABLE `tbl_user`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_category`
--
ALTER TABLE `tbl_category`
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tbl_category_product`
--
ALTER TABLE `tbl_category_product`
  MODIFY `category_product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `tbl_product`
--
ALTER TABLE `tbl_product`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `tbl_user`
--
ALTER TABLE `tbl_user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
