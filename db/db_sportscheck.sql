-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Apr 03, 2020 at 12:44 AM
-- Server version: 5.7.26
-- PHP Version: 7.3.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_sportscheck`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_category`
--

CREATE TABLE `tbl_category` (
  `category_id` int(11) UNSIGNED NOT NULL,
  `category_name` varchar(125) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_category`
--

INSERT INTO `tbl_category` (`category_id`, `category_name`) VALUES
(2, 'Hats'),
(3, 'Bikes'),
(4, 'NhlJerseys'),
(5, 'NbaJerseys'),
(6, 'NflJerseys'),
(7, 'RunningShoes'),
(8, 'Gear');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_colour`
--

CREATE TABLE `tbl_colour` (
  `colour_id` int(11) NOT NULL,
  `colour_name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_colour`
--

INSERT INTO `tbl_colour` (`colour_id`, `colour_name`) VALUES
(1, 'Blue'),
(2, 'Orange'),
(3, 'Pink'),
(4, 'Yellow'),
(5, 'White'),
(6, 'Black'),
(7, 'Red'),
(8, 'Green'),
(9, 'Brown'),
(10, 'Peach'),
(11, 'Navy');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_price`
--

CREATE TABLE `tbl_price` (
  `price_id` int(11) NOT NULL,
  `price_name` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_price`
--

INSERT INTO `tbl_price` (`price_id`, `price_name`) VALUES
(1, '$249.99'),
(2, '$159.99'),
(3, '$829.99'),
(4, '$159.99'),
(5, '$699.99'),
(6, '$28.00'),
(7, '$29.99'),
(8, '$25.99'),
(9, '$22.00'),
(10, '$29.99'),
(11, '$79.98'),
(12, '$87.99'),
(13, '$109.99'),
(14, '$79.98'),
(15, '$169.99'),
(16, '$84.99'),
(17, '$130.00'),
(18, '$130.00'),
(19, '$130.00'),
(20, '$130.00'),
(21, '$249.99'),
(22, '$199.99'),
(23, '$149.99'),
(24, '$129.99'),
(25, '$149.99'),
(26, '$84.99'),
(27, '$150.00'),
(28, '$150.00'),
(29, '$150.00'),
(30, '$150.00'),
(31, '$42.99'),
(32, '$24.99'),
(33, '$179.99'),
(34, '$39.99'),
(35, '$30.00');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_products`
--

CREATE TABLE `tbl_products` (
  `product_id` int(11) UNSIGNED NOT NULL,
  `product_name` varchar(150) NOT NULL,
  `product_img` varchar(75) NOT NULL,
  `product_description` varchar(2000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_products`
--

INSERT INTO `tbl_products` (`product_id`, `product_name`, `product_img`, `product_description`) VALUES
(1, 'Men\'s Blue Hybrid Bike', 'bike1.png', 'There are so many reasons to ride a bike. Whether you’re looking to stay fit, have fun exploring your city, commuting to work or school or keeping it green while getting errands done, the Men\'s GT Transeo Comp 2019 - Blue blends all of your needs into one sleek ride. With a suspension fork to smooth out the bumps in the road or pathway, space for racks so you can carry extra loads, this bike is ready to cover all of the bases.\r\n\r\nThe GT Transeo Comp also features a better component set compared to the Sport model for those who want an upgraded ride.'),
(2, 'Women\'s Blue Mountain Bike', 'bike2.png', 'The Nakamura Inspire is an excellent choice entry level mountain bike. The hardtail design, quality components and an 18 speed drivetrain provides the rider with a versatile bike that is great for riding around the neighborhood and on recreational trails.'),
(3, 'Kid\'s Orange Training Bike', 'bike3.png', 'The Schwinn Backdraft 16\" Kid’s Bike makes learning to ride easy and will grow with your child. The sturdy steel frame provides durability and the coaster brake and front brake ensure secure stopping. A quick release seat adjusts for fast growing kids and training wheels provide stability. The Backdraft features all new Schwinn SmartStart geometry, which means that the bike has been carefully designed to match a kid’s body type to create a more comfortable, ideal riding position. This includes a lighter bike frame for added control, smaller grip handles to match smaller hands, a more narrow pedal position to match narrow kid hips and much more! Other kids bikes are just shrunken down version of adult bikes, so typically the grips are too large, the pedals are to wide and the seats are too large. With this great riding experience, the Scorch is a parent and child favorite. You probably learned how to ride on a Schwinn all those years ago. Now it’s time your child does too. '),
(4, 'Kid\'s Pink Training Bike', 'bike4.png', 'A great choice for teaching your youngster how to ride a bike, the 16\" Jasmine sidewalk bike from Schwinn features a grown-up look that’s great for showing off around the neighborhood. It’s outfitted with an enclosed chain guard to help prevent snags and dirty pant cuffs. The rear coaster-style brake makes stopping a breeze for new cyclists, and the Jasmine also includes a front caliper brake which allows the child to learn how to use a handbrake safely. We’ve included training wheels for stability while your little one learns the invaluable skill of bike riding, and a tool-free adjustable seat post that lets your child grow with the bike. And we’re only just getting to the best part. The Jasmine features all new Schwinn SmartStart geometry, a complete redesign of bike geometry that matches a kid’s body type to create a more comfortable, ideal riding position. This includes a lighter bike frame for added control, smaller grip handles to match smaller hands, and a more narrow pedal position to match narrow kid hips! Other kids bikes are just shrunken down versions of adult bikes, so typically the grips are too large, the pedals too wide, and the seats are too big. With this great riding experience, the Scorch is a parent and child favorite. You probably learned how to ride on a Schwinn all those years ago. Now it’s time your child does too.'),
(5, 'Men\'s Yellow Mountain Bike', 'bike5.png', 'Technologically speaking, MX bikes are especially innovative. Allow us to explain the technological concepts and details behind Orbea’s MX line. They’re real fun machines and they come with quality components, even for entry level models. All Orbea MX models come with hydraulic brakes because powerful and reliable stopping power is essential when you’re ripping down your new favorite trail. A lightweight, hardtail frame ensures pedalling up to that trail is still enjoyable.The Orbea MX-60 model comes with 27.5\" wheels and the most entry-level components of the MX lineup in order to provide the best price to those who are looking for a bike that has reliable components without breaking the bank.'),
(6, 'Marucci Baseball', 'sport1.png', 'The Marucci AP5 Pro Model wood bat is built for power with a large, explosive barrel primed for some heavy mashing. A tapered knob and handle allow for more control in the hands while still maintaining that end-loaded feel power hitters crave.'),
(7, 'Spalding Basketball', 'sport2.png', 'The Spalding Z i/O Excel Basketball has a composite leather cover and foam backed design for improved feel and gripability.\r\n'),
(8, 'Nike Youth Football', 'sport3.png', 'The Nike Vapor 24/7 Youth Football is built and sized right for our future starts. '),
(9, 'Pink Ringside MMA Boxing Gloves', 'sport4.png', 'MMA fight gloves meet all state regulations for professional competition. 5-ounce weight as mandated by state athletic commissions. Full 3/4-inch padding that allows increased safety of the hands and opponent. Open palm that allows full gripping capabilities. Synthetic leather construction for resiliency.'),
(10, 'Adidas Soccer Ball', 'sport5.png', 'This adidas Tango Glider Soccer Ball is built with a durable machine-stitched body which gives it a soft touch along with a butyl bladder for best air retention.'),
(11, 'Men\'s Black Nike Hat', 'hat1.png', 'Polish up your look in the Nike Classic99 Hat. Its soft sweatband and stretchy material help maximize your comfort, so you can stay focused on your game.'),
(12, 'Men\'s Navy Adidas Hat', 'hat2.png', 'With a perfectly pre-curved brim, this baseball cap comes ready to wear. It’s made of comfortable cotton, with a large embroidered Trefoil front and centre. An adjustable strap in back lets you customise the fit.'),
(13, 'Men\'s Navy Under Armour Hat', 'hat3.png', 'The third generation of the most popular UA hat. Performance materials, classic fit, and our signature HeatGear sweatband make this an easy favorite.\r\n'),
(14, 'Women\'s Peach Adidas Hat ', 'hat4.png', 'This relaxed cap is designed with a traditional six-panel construction to bring ease and comfort to your everyday workout. It’s made of cotton-blend fabric and features a moisture-wicking sweatband. The back strap is adjustable to ensure a perfect fit.\r\n'),
(15, 'Women\'s White Nike Hat ', 'hat5.png', 'Classic and comfortable, the Nike Sportswear Heritage86 Women’s Cap features a 6-panel design made from cotton twill fabric and an adjustable closure for a snug, secure fit.'),
(16, 'Women\'s Black Nike Running Shoes ', 'shoe1.png', 'The Nike Women’s Revolution 5 Running Shoe cushions your stride with soft foam to keep you running in comfort. Lightweight knit material wraps your foot in breathable support, while a minimalist design fits in anywhere your day takes you.'),
(17, 'Women\'s Black and Blue Under Armour Running Shoes', 'shoe2.png', 'The Under Armour Women’s Charged Escape 3 Running Shoe is neutral for runners who need a balance of flexibility and cushioning. Its lightweight upper hugs the foot for breathable, flexible support.'),
(18, 'Women\'s Black and Rose Gold Asics Running Shoes', 'shoe3.png', 'The ASICS Women’s GEL Excite 7 Trail Running Shoe is a lightweight offering that introduces an improved fit in the forefoot to generate prolonged comfort no matter the distance.\r\n \r\nDesigned with a technical mesh upper, the GEL-EXCITE™ 7 running shoe delivers excellent airflow throughout the interior to keep feet cool during a run. This style implements an ORTHOLITE™ sockliner in the footbed to maintain a lightweight feel that also helps keep feet dry and comfortable.\r\n \r\nThe AMPLIFOAM™ application in the midsole works in conjunction with GEL™ technology to offer a cushioned underfoot that injects a stronger rebound into your stride.\r\n \r\nVersatile for runners looking for a shoe that excels in comfort and response, the GEL-EXCITE™ 7 model is a recommended selection for those who want to keep things simple.\r\n\r\n- Men\'s Black and White Running Shoes / Every run leads right up to game day. Keeping that in mind, these versatile adidas shoes feature energised cushioning and a locked-down fit for nimble agility. Underfoot, a turf-inspired outsole delivers great grip no matter where you’re prepping to play.'),
(19, 'Men\'s Blue and Black Asics Running Shoes ', 'shoe4.png', 'Push yourself to your limits with the ASICS Men\'s GT 2000 7 Running Shoes, these stylish running shoe for men are engineered to give maximum support and protection with every step. Energised cushioning on the sole helps you run further while SpEVA foam reduces impact and helps minimise the strain on your body, as well as giving you extra bounce with each stride.'),
(20, 'Men\'s Black and White Running Shoes', 'shoe5.png', 'Every run leads right up to game day. Keeping that in mind, these versatile adidas shoes feature energised cushioning and a locked-down fit for nimble agility. Underfoot, a turf-inspired outsole delivers great grip no matter where you’re prepping to play.'),
(21, 'Milwaukee Bucks Nike Antetokounmpo Statement Swingman Jersey', 'jersey1.png', 'Techknit. Directly inspired by the on court jersey, premium double knit mesh material, classic construction and trim details tailored fit. '),
(22, 'New York Knicks Nike RJ Barrett Icon Swingman Jersey', 'jersey2.png', 'Based on the authentic NBA jersey, the Icon Edition Swingman (New York Knicks) Men’s Nike NBA Connected Jersey lets you rep your team while helping keep you cool and comfortable through every move.'),
(23, 'Los Angeles Lakers LeBron James Association Swingman Jersey', 'jersey3.png', 'Based on the authentic NBA jersey, the Association Edition Swingman Jersey (Los Angeles Lakers) Men’s Nike NBA Connected Jersey lets you rep your team while helping keep you cool and comfortable through every move.'),
(24, 'Youth Toronto Raptors Nike Hardwood Classics Pascal Siakam Jersey', 'jersey4.png', 'Your little one will get pumped up for the big Toronto Raptors game when you buy them this Youth Toronto Raptors Nike Hardwood Classics Pascal Siakam Jersey. The Raptors team colours and bright graphics make this a must-have for the next big game of hoops. Officially Licensed by the NBA.'),
(25, 'Boston Celtics Kyrie Irving Swingman Basketball Jersey', 'jersey5.png', 'Based on the authentic NBA jersey, the Boston Celtics Nike Icon Edition Swingman Men’s NBA Jersey lets you rep your team while helping keep you cool and comfortable through every move.'),
(26, 'Chicago Bears Men\'s Nike Mack Limited Jersey', 'shirt1.png', 'The NFL Chicago Bears Limited Men’s Football Jersey delivers unparalleled fit and style at the stadium or on the street. Sweat-wicking technology offers up cool comfort, while the twill lettering adds an authentic touch.'),
(27, 'Dallas Cowboys Ezekiel Elliot Limited Football Jersey ', 'shirt2.png', 'Made for the passionate fan looking for a jersey that combines authentic team detailing with everyday style.'),
(28, 'Atlanta Falcons Julio Jones Limited Football Jersey', 'shirt3.png', 'The Atlanta Falcons Julio Jones Limited Football Jersey is made for the passionate fan looking for a jersey that combines authentic team detailing with everyday style.'),
(29, 'Green Bay Packers Aaron Rodgers Limited Football Jersey ', 'shirt4.png', 'The Green Bay Packers Aaron Rodgers Limited Football Jersey is made for the passionate fan looking for a jersey that combines authentic team detailing with everyday style.'),
(30, 'New England Patriots Tom Brady Limited Football Jersey', 'shirt5.png', 'Made for the passionate fan looking for a jersey that combines authentic team detailing with everyday style.'),
(31, 'Toronto Maple Leafs Auston Matthews Authentic Away Hockey Jersey', 'hockey1.png', 'Not only is it a new hockey season but also a brand new hockey jersey to support your favorite NHL team. The new adidas NHL Toronto Maple Leafs Auston Matthews Authentic Away Hockey Jersey is the perfect way to show off your fandom for the Leafs Nation.'),
(32, 'Montreal Canadiens adidas Authentic Away Jersey', 'hockey2.png', 'Practise the chip-and-chase style of your favourite team in this adidas adizero authentic Pro Canadiens jersey. Featuring the official colours of away games, the hockey sweater is made of sweat-wicking climalite® to keep you dry.'),
(33, 'Boston Bruins Fanatics Breakaway Home Hockey Jersey', 'hockey3.png', 'When the puck drops represent your favourite team with the new Boston Bruins Breakaway hockey jersey by Fanatics. All new fit and fabrics make it the most comfortable jersey you can wear to the game or wherever you are.'),
(34, 'Pittsburgh Penguins Youth Crosby Home Jersey', 'hockey4.png', 'Support your favourite team with pride by wearing officially licensed gear. The Pittsburgh Penguins Youth Crosby Home Jersey is perfect to pull on for the game and is a stylish way to cheer on your team. Featuring name and number printing, design based on adult version.'),
(35, 'New York Rangers Fanatics Replica Home Hockey Jersey ', 'hockey5.png', 'When the puck drops represent your favourite team with the new Breakaway jersey by Fanatics. All new fit and fabrics make it the most comfortable jersey you can wear to the game or wherever you are.');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_products_category`
--

CREATE TABLE `tbl_products_category` (
  `product_category_id` int(11) UNSIGNED NOT NULL,
  `product_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_products_category`
--

INSERT INTO `tbl_products_category` (`product_category_id`, `product_id`, `category_id`) VALUES
(1, 1, 3),
(2, 2, 3),
(3, 3, 3),
(4, 4, 3),
(5, 5, 3),
(6, 6, 8),
(7, 7, 8),
(8, 8, 8),
(9, 9, 8),
(10, 10, 8),
(11, 11, 2),
(12, 12, 2),
(13, 13, 2),
(14, 14, 2),
(15, 15, 2),
(16, 16, 7),
(17, 17, 7),
(18, 18, 7),
(19, 19, 7),
(20, 20, 7),
(21, 21, 5),
(22, 22, 5),
(23, 23, 5),
(24, 24, 5),
(25, 25, 5),
(26, 26, 6),
(27, 27, 6),
(28, 28, 6),
(29, 29, 6),
(30, 30, 6),
(31, 31, 4),
(32, 32, 4),
(33, 33, 4),
(34, 34, 4),
(35, 35, 4),
(39, 43, 2);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_products_colour`
--

CREATE TABLE `tbl_products_colour` (
  `product_colour_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `colour_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_products_colour`
--

INSERT INTO `tbl_products_colour` (`product_colour_id`, `product_id`, `colour_id`) VALUES
(1, 1, 1),
(2, 1, 2),
(3, 2, 2),
(4, 3, 4),
(5, 5, 4),
(6, 6, 6),
(7, 7, 9),
(8, 8, 9),
(9, 9, 3),
(10, 10, 5),
(11, 11, 6),
(12, 12, 11),
(13, 13, 12),
(14, 14, 10),
(15, 15, 5),
(16, 16, 6),
(17, 17, 1),
(18, 18, 6),
(19, 19, 1),
(20, 20, 6),
(21, 21, 6),
(22, 22, 1),
(23, 23, 5),
(24, 24, 5),
(25, 25, 8),
(26, 26, 11),
(27, 27, 11),
(28, 28, 7),
(29, 29, 8),
(30, 30, 11),
(31, 31, 5),
(32, 32, 5),
(33, 33, 4),
(34, 34, 4),
(35, 35, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_products_price`
--

CREATE TABLE `tbl_products_price` (
  `product_price_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `price_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_products_price`
--

INSERT INTO `tbl_products_price` (`product_price_id`, `product_id`, `price_id`) VALUES
(1, 2, 249),
(2, 4, 160),
(3, 5, 830),
(4, 3, 160),
(5, 1, 700),
(6, 11, 28),
(7, 13, 30),
(8, 12, 26),
(9, 15, 22),
(10, 14, 30),
(11, 18, 80),
(12, 16, 88),
(13, 17, 110),
(14, 20, 80),
(15, 18, 170),
(16, 24, 85),
(17, 22, 130),
(18, 23, 130),
(19, 21, 130),
(20, 25, 130),
(21, 31, 250),
(22, 32, 200),
(23, 33, 150),
(24, 34, 130),
(25, 35, 150),
(26, 29, 85),
(27, 28, 150),
(28, 26, 150),
(29, 27, 150),
(30, 30, 150),
(31, 7, 43),
(32, 10, 25),
(33, 7, 180),
(34, 9, 40),
(35, 8, 30);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user`
--

CREATE TABLE `tbl_user` (
  `user_id` mediumint(8) UNSIGNED NOT NULL,
  `user_fname` varchar(250) NOT NULL,
  `user_name` varchar(250) NOT NULL,
  `user_pass` varchar(250) NOT NULL,
  `user_email` varchar(250) NOT NULL,
  `user_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `user_ip` varchar(50) NOT NULL DEFAULT 'no'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_user`
--

INSERT INTO `tbl_user` (`user_id`, `user_fname`, `user_name`, `user_pass`, `user_email`, `user_date`, `user_ip`) VALUES
(1, 'Natalie', 'Nat123', 'Nat', 'natalie@gmail.com', '2020-03-09 19:59:10', 'no'),
(2, 'Liam', 'Liam', 'Liam', 'Liam@gmail.com', '2020-03-09 19:59:29', '::1'),
(4, 'ma', 'ma', 'ma', 'sarahcway9@gmail.com', '2020-03-29 01:20:07', '::1');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_category`
--
ALTER TABLE `tbl_category`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `tbl_colour`
--
ALTER TABLE `tbl_colour`
  ADD PRIMARY KEY (`colour_id`);

--
-- Indexes for table `tbl_price`
--
ALTER TABLE `tbl_price`
  ADD PRIMARY KEY (`price_id`);

--
-- Indexes for table `tbl_products`
--
ALTER TABLE `tbl_products`
  ADD PRIMARY KEY (`product_id`);

--
-- Indexes for table `tbl_products_category`
--
ALTER TABLE `tbl_products_category`
  ADD PRIMARY KEY (`product_category_id`);

--
-- Indexes for table `tbl_products_colour`
--
ALTER TABLE `tbl_products_colour`
  ADD PRIMARY KEY (`product_colour_id`);

--
-- Indexes for table `tbl_products_price`
--
ALTER TABLE `tbl_products_price`
  ADD PRIMARY KEY (`product_price_id`);

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
  MODIFY `category_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tbl_colour`
--
ALTER TABLE `tbl_colour`
  MODIFY `colour_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `tbl_price`
--
ALTER TABLE `tbl_price`
  MODIFY `price_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `tbl_products`
--
ALTER TABLE `tbl_products`
  MODIFY `product_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT for table `tbl_products_category`
--
ALTER TABLE `tbl_products_category`
  MODIFY `product_category_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `tbl_products_colour`
--
ALTER TABLE `tbl_products_colour`
  MODIFY `product_colour_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `tbl_products_price`
--
ALTER TABLE `tbl_products_price`
  MODIFY `product_price_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `tbl_user`
--
ALTER TABLE `tbl_user`
  MODIFY `user_id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
