-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 10, 2024 at 09:07 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ecommerce`
--

DELIMITER $$
--
-- Procedures
--
CREATE DEFINER=`root`@`localhost` PROCEDURE `getcat` (IN `cid` INT)   SELECT * FROM categories WHERE cat_id=cid$$

DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `admin_info`
--

CREATE TABLE `admin_info` (
  `admin_id` int(10) NOT NULL,
  `admin_name` varchar(100) NOT NULL,
  `admin_email` varchar(300) NOT NULL,
  `admin_password` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `admin_info`
--

INSERT INTO `admin_info` (`admin_id`, `admin_name`, `admin_email`, `admin_password`) VALUES
(1, 'admin', 'admin@gmail.com', '25f9e794323b453885f5181f1b624d0b');

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `brand_id` int(100) NOT NULL,
  `brand_title` mediumtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`brand_id`, `brand_title`) VALUES
(1, 'HP'),
(2, 'Samsung'),
(3, 'Apple'),
(4, 'motorolla'),
(5, 'LG');

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` int(10) NOT NULL,
  `p_id` int(10) NOT NULL,
  `ip_add` varchar(250) NOT NULL,
  `user_id` int(10) DEFAULT NULL,
  `qty` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `cat_id` int(100) NOT NULL,
  `cat_title` mediumtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`cat_id`, `cat_title`) VALUES
(1, 'Apple'),
(2, 'Samsung'),
(3, 'Huawei'),
(4, 'Oppo'),
(5, 'Nokia'),
(6, 'Xiaomi'),
(7, 'OnePlus'),
(8, 'RealMe'),
(9, 'Vivo'),
(10, 'Google'),
(11, 'Other'),
(12, 'Mobile Accessories');

-- --------------------------------------------------------

--
-- Table structure for table `email_info`
--

CREATE TABLE `email_info` (
  `email_id` int(100) NOT NULL,
  `email` mediumtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `email_info`
--

INSERT INTO `email_info` (`email_id`, `email`) VALUES
(3, 'admin@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `logs`
--

CREATE TABLE `logs` (
  `id` int(11) NOT NULL,
  `user_id` varchar(50) NOT NULL,
  `action` varchar(50) NOT NULL,
  `date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `order_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `qty` int(11) NOT NULL,
  `trx_id` varchar(255) NOT NULL,
  `p_status` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `orders_info`
--

CREATE TABLE `orders_info` (
  `order_id` int(10) NOT NULL,
  `user_id` int(11) NOT NULL,
  `f_name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `city` varchar(255) NOT NULL,
  `state` varchar(255) NOT NULL,
  `zip` int(10) NOT NULL,
  `cardname` varchar(255) NOT NULL,
  `cardnumber` varchar(20) NOT NULL,
  `expdate` varchar(255) NOT NULL,
  `prod_count` int(15) DEFAULT NULL,
  `total_amt` int(15) DEFAULT NULL,
  `cvv` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `orders_info`
--

INSERT INTO `orders_info` (`order_id`, `user_id`, `f_name`, `email`, `address`, `city`, `state`, `zip`, `cardname`, `cardnumber`, `expdate`, `prod_count`, `total_amt`, `cvv`) VALUES
(1, 27, 'OGUTU GRACE', 'ogutugrace@gmail.com', 'KAMUNDE -B3, APARTMENT', 'NAIROBI', 'Nairobi', 3001, 'visa', '1234432132141243', '02/29', 1, 0, 650);

-- --------------------------------------------------------

--
-- Table structure for table `order_products`
--

CREATE TABLE `order_products` (
  `order_pro_id` int(10) NOT NULL,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `qty` int(15) DEFAULT NULL,
  `amt` int(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `order_products`
--

INSERT INTO `order_products` (`order_pro_id`, `order_id`, `product_id`, `qty`, `amt`) VALUES
(91, 1, 84, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `product_id` int(100) NOT NULL,
  `product_cat` int(100) NOT NULL,
  `product_brand` int(100) NOT NULL,
  `product_title` varchar(255) NOT NULL,
  `product_price` int(100) NOT NULL,
  `product_desc` mediumtext NOT NULL,
  `product_image` mediumtext NOT NULL,
  `product_keywords` mediumtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`product_id`, `product_cat`, `product_brand`, `product_title`, `product_price`, `product_desc`, `product_image`, `product_keywords`) VALUES
(84, 2, 2, 'SAMSUNG A35', 0, 'Samsung Galaxy A35 5G\r\nSamsung Galaxy A35 5G price in Kenya is from Kes 40,500 for 6GB/128GB. It replaces the Galaxy A34 5G, its predecessor. The handset weighs 209g, measures 161.7 x 78 x 8.2 mm (6.37 x 3.07 x 0.32 in), and features a 6.6-inch Super AMOLED, 120Hz, 1000 nits (HBM) display. The display has 1080 x 2340 pixels, a 19.5:9 ratio (~390 ppi density) and the screen comes with a Corning Gorilla Glass Victus+ protector. Galaxy A35 runs on Android 14, One UI 6.1 OS, and is powered by an Octa-core Exynos 1380 (5 nm) chipset. Anchored the device for optimal performance are 128GB 6GB RAM, 128GB 8GB RAM, and 256GB 8GB RAM besides microSDXC (uses shared SIM slot) for additional memory.\r\n\r\nFor optics, the Galaxy A35 has a 50MP + 8MP + 5MP main triple camera set up, and 13 MP, f/2.2, (wide), 1/3.06?, 1.12µm single, front camera for selfie and video chatting.  It is a 5G-enabled device with Bluetooth 5.3, Wi-Fi 802.11, NFC wireless connectivity, and supporting USB Type-C 2.0, OTG wired connectivity. The handset is powered by a 5,000mAh non-removable battery, supporting 25W fast charging but no wireless or reverse charging. Buy Samsung Galaxy A35 at Phoneplace Kenya, available in Iceblue, Lilac, and Navy colorways.\r\n\r\nSamsung Galaxy A35 Unique Selling Features\r\nElegant Design and Durability: With an IP67 rating for dust and water resistance, the Galaxy A35 is designed to withstand the elements.\r\nEnhanced Nightography: Equipped with advanced AI Image Signal Processing, Galaxy A35 5G captures clearer and more vibrant photos even in poor lighting conditions.\r\nSuper AMOLED Display: a 6.6-inch Full HD+ Super AMOLED display, featuring a 120Hz refresh rate and up to 1,000 nits brightness offers an immersive and vivid viewing experience.\r\nRobust Performance: Powered by a 5nm octa-core Exynos 1380 SoC, it offers smooth and efficient performance3.\r\nA Versatile Camera System: the triple camera setup with unique features like optical image stabilization (OIS) and video digital image stabilization (VDIS) ensures crisp photos and videos.\r\nGuaranteed Security: Samsung Knox Vault provides flagship-level security, protecting your data more effectively.\r\nLong-Lasting Battery: A 5,000mAh battery with 25W fast charging keeps you powered throughout the day.\r\nThese features are engineered to provide a premium experience at a budget-friendly price point, making the Samsung Galaxy A35 a compelling choice if you are looking for quality, sophistication, great performance, and innovation.\r\n\r\nSamsung Galaxy A35 Features, Specifications, and Price In Kenya\r\nModel	Samsung\r\nModel Name	Galaxy A35 5G\r\nModels	SM-A356E, SM-A356E/DS, SM-A356B, SM-A356B/DS\r\nStatus	\r\nAnnounced: 11 March 2024\r\nMarket availability: to be released soon.\r\nOperating System	Android 14, One UI 6\r\nMeasurement	161.7 x 78 x 8.2 mm (6.37 x 3.07 x 0.32 in)\r\nWeight	209g\r\nSIM	Single SIM (Nano-SIM, eSIM) or Hybrid Dual SIM (Nano-SIM, dual stand-by\r\nDisplay	\r\nSize: 6.6 inches, 106.9 cm2 (~84.8% screen-to-body ratio)\r\nType: Super AMOLED, HDR10+\r\nResolution: 1080 x 2340 pixels, 19.5:9 ratio (~390 ppi density)\r\nRefresh Rate: 120Hz\r\nProtection: Corning Gorilla Glass Victus+\r\nAlways on Display\r\nProcessing Unit	\r\nCPU: Octa-core (4×2.4 GHz Cortex-A78 & 4×2.0 GHz Cortex-A55)\r\nChipset: Exynos 1380 (5nm)\r\nGPU: Mali-G68 MP5\r\nCamera Set Up	Main Camera\r\n50 MP, f/1.8, (wide), 1/1.96?, PDAF, OIS\r\n8 MP, f/2.2, 123?, (ultrawide), 1/4.0?, 1.12µm\r\n5 MP, f/2.4, (macro)\r\nFeatures: LED flash, panorama, HDR\r\n\r\nVideo: 4K@30fps, 1080p@30/60fps, gyro-EIS\r\n\r\nSelfie Camera\r\n\r\n·       13 MP, f/2.2, (wide), 1/3.06?, 1.12µm\r\n\r\nVideo: 4K@30fps, 1080p@30/60fps\r\n\r\nAudio support	\r\nLoudspeaker: Yes, with stereo speakers\r\n3.5mm jack: No\r\nRadio: No\r\nMemory	\r\nRAM: 6GB, 8GB\r\nInternal Memory: 128GB, 256GB\r\nmicroSDXC (uses shared SIM slot)\r\nCommunication	\r\nNetwork: 5G, with HSPA, LTE, 5G speeds\r\nWLAN: Wi-Fi 802.11 a/b/g/n/ac/6, dual-band, Wi-Fi Direct\r\nBluetooth: 5.3, A2DP, LE\r\nPositioning: GPS, GALILEO, GLONASS, BDS, QZSS\r\nNFC: Yes (market/region dependent)\r\nUSB: USB Type-C 2.0, OTG\r\nSensors	Fingerprint (under display, optical), accelerometer, gyro, compass, barometer\r\nColor Variants	Ice Blue, Lilac, Navy\r\nBattery	5,000mAh with 25W wired fast charger\r\nPrice	\r\n256GB/8GB-Kes 48,500\r\n128GB/6GB-Kes 40,500', '1719827860_Samsung-Galaxy-A35-5G-Icecube.jpg', 'SMARTPHONE,SAMSUNG,GALAXY A SERIES'),
(89, 1, 1, 'Apple Pods', 0, 'Airpods Pro 2 in Kenya\r\nThe AirPods Pro 2 price in Kenya is Ksh 32,500. The AirPods Pro (2nd generation) have been re-engineered to deliver up to 2x more Active Noise Cancellation. Adaptive Transparency reduces external noise, while Personalized Spatial Audio immerses you in sound. A single charge delivers up to 6 hours of battery life. And Touch control lets you easily adjust volume with a swipe. The revamped MagSafe Charging Case is a marvel on its own with Precision Finding, a built-in speaker, and a lanyard loop. Buy the Airpods Pro 2 at Phoneplace.\r\n\r\nAirPods Pro 2nd generation specifications\r\nBrand\r\nApple\r\nModel\r\nAirPods Pro (2nd generation)\r\nAnnounced\r\nSeptember 2022\r\nReleased\r\nSeptember 2022\r\nEarpiece Design	In-Ear (Intra-Aural)\r\nDriver Type	Dynamic\r\nActive Noise Cancellation	Yes\r\nControls/Microphone Location	Controls: Left Earpiece, Right Earpiece:\r\nMicrophone: Left Earpiece, Right Earpiece\r\nFull Remote OS Support	iOS\r\nSensors	Accelerometer, Touch\r\nNumber of Voice Mics	3\r\nBluetooth	5.3\r\nSupported Audio Codecs	AAC\r\nMaximum Paired Devices	2\r\nWireless Chipset	Apple H2\r\nBattery Runtime	6 Hours (BT+ANC), 4.5 Hours (Talk)\r\nWireless Charging	Lightning, Qi\r\nColor	White\r\nWater Resistance	Resistant\r\nIP Rating	IPX4\r\nEarphones dimensions	1.2 x 0.9 x 0.9″ / 30.9 x 21.8 x 24 mm (Each)\r\nCharging Case dimensions	2.4 x 1.8 x 0.9″ / 60.6 x 45.2 x 21.7 mm\r\nEarphones Weight	0.2 oz / 5.3 g (Each)\r\nCharging Case Weight	1.8 oz / 50.8 g\r\nPrice in Kenya	Ksh 37,500\r\nAirpods Pro 2 An Overview\r\nThe AirPod Pro 2 are better designed and promises better battery life and stronger performance compared to its predecessors. The Apple H2 Chip, an improvement to the H1 Chip brings along many upgrades on the AirPod Pro 2.  Enjoy the New Adaptive Transparency Mode, Richer Bass Performance, an upgraded charging case that can be charged wirelessly using the Apple Watch Charger, and a longer-lasting battery (when the ANC is off and on).', '1719832901_Apple-Airpods-Pro-2.jpg', 'Apple,AirPods');

-- --------------------------------------------------------

--
-- Table structure for table `user_info`
--

CREATE TABLE `user_info` (
  `user_id` int(10) NOT NULL,
  `first_name` varchar(100) NOT NULL,
  `last_name` varchar(100) NOT NULL,
  `email` varchar(300) NOT NULL,
  `password` varchar(300) NOT NULL,
  `mobile` varchar(10) NOT NULL,
  `address1` varchar(300) NOT NULL,
  `address2` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `user_info`
--

INSERT INTO `user_info` (`user_id`, `first_name`, `last_name`, `email`, `password`, `mobile`, `address1`, `address2`) VALUES
(27, 'OGUTU', 'GRACE', 'ogutugrace@gmail.com', 'adhiambo20.', '0114869858', 'Gathiga', 'APARTMENT');

--
-- Triggers `user_info`
--
DELIMITER $$
CREATE TRIGGER `after_user_info_insert` AFTER INSERT ON `user_info` FOR EACH ROW BEGIN 
INSERT INTO user_info_backup VALUES(new.user_id,new.first_name,new.last_name,new.email,new.password,new.mobile,new.address1,new.address2);
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `user_info_backup`
--

CREATE TABLE `user_info_backup` (
  `user_id` int(10) NOT NULL,
  `first_name` varchar(100) NOT NULL,
  `last_name` varchar(100) NOT NULL,
  `email` varchar(300) NOT NULL,
  `password` varchar(300) NOT NULL,
  `mobile` varchar(10) NOT NULL,
  `address1` varchar(300) NOT NULL,
  `address2` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `user_info_backup`
--

INSERT INTO `user_info_backup` (`user_id`, `first_name`, `last_name`, `email`, `password`, `mobile`, `address1`, `address2`) VALUES
(27, 'OGUTU', 'GRACE', 'ogutugrace@gmail.com', 'adhiambo20.', '0114869858', 'Gathiga', 'APARTMENT');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin_info`
--
ALTER TABLE `admin_info`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`brand_id`);

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`cat_id`);

--
-- Indexes for table `email_info`
--
ALTER TABLE `email_info`
  ADD PRIMARY KEY (`email_id`);

--
-- Indexes for table `logs`
--
ALTER TABLE `logs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`order_id`);

--
-- Indexes for table `orders_info`
--
ALTER TABLE `orders_info`
  ADD PRIMARY KEY (`order_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `order_products`
--
ALTER TABLE `order_products`
  ADD PRIMARY KEY (`order_pro_id`),
  ADD KEY `order_products` (`order_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`product_id`);

--
-- Indexes for table `user_info`
--
ALTER TABLE `user_info`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `user_info_backup`
--
ALTER TABLE `user_info_backup`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin_info`
--
ALTER TABLE `admin_info`
  MODIFY `admin_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `brand_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=153;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `cat_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `email_info`
--
ALTER TABLE `email_info`
  MODIFY `email_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `logs`
--
ALTER TABLE `logs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `orders_info`
--
ALTER TABLE `orders_info`
  MODIFY `order_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `order_products`
--
ALTER TABLE `order_products`
  MODIFY `order_pro_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=92;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `product_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=90;

--
-- AUTO_INCREMENT for table `user_info`
--
ALTER TABLE `user_info`
  MODIFY `user_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `user_info_backup`
--
ALTER TABLE `user_info_backup`
  MODIFY `user_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `orders_info`
--
ALTER TABLE `orders_info`
  ADD CONSTRAINT `user_id` FOREIGN KEY (`user_id`) REFERENCES `user_info` (`user_id`);

--
-- Constraints for table `order_products`
--
ALTER TABLE `order_products`
  ADD CONSTRAINT `order_products` FOREIGN KEY (`order_id`) REFERENCES `orders_info` (`order_id`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `product_id` FOREIGN KEY (`product_id`) REFERENCES `products` (`product_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
