-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Apr 03, 2024 at 06:11 PM
-- Server version: 10.5.20-MariaDB
-- PHP Version: 7.3.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `id21638322_blackidatabase`
--
CREATE DATABASE IF NOT EXISTS `id21638322_blackidatabase` DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci;
USE `id21638322_blackidatabase`;

-- --------------------------------------------------------

--
-- Table structure for table `blog_posts`
--
-- Creation: Mar 31, 2024 at 01:59 AM
--

CREATE TABLE IF NOT EXISTS `blog_posts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `author` varchar(255) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `blog_posts`
--

INSERT INTO `blog_posts` (`id`, `title`, `content`, `author`, `date`) VALUES
(1, 'Happy republic day', 'Happy republic day', 'mk', '2024-01-26 19:35:15');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--
-- Creation: Jan 28, 2024 at 08:09 PM
-- Last update: Jan 28, 2024 at 08:09 PM
--

CREATE TABLE IF NOT EXISTS `orders` (
  `id` int(15) NOT NULL AUTO_INCREMENT,
  `product_code` varchar(255) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `product_desc` varchar(255) NOT NULL,
  `price` int(10) NOT NULL,
  `units` int(5) NOT NULL,
  `total` int(15) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp(),
  `email` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--
-- Creation: Mar 31, 2024 at 01:59 AM
--

CREATE TABLE IF NOT EXISTS `products` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `product_code` varchar(60) NOT NULL,
  `product_name` varchar(60) NOT NULL,
  `product_desc` tinytext NOT NULL,
  `product_img_name` varchar(60) NOT NULL,
  `qty` int(5) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `product_code` (`product_code`)
) ENGINE=InnoDB AUTO_INCREMENT=159 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `product_code`, `product_name`, `product_desc`, `product_img_name`, `qty`, `price`) VALUES
(1, 'BI-HD100', 'HDMI CABLE 2.0 VERSION (4K@60Hz) 1 Meter', 'This HDMI cable is designed for high-performance applications, supporting 4K resolution at 60Hz. Ideal for a variety of uses, this 1-meter cable ensures a seamless audio and video experience. Enhance your connectivity with this reliable HDMI cable.', 'hdmi4k.jpeg', 10, 699.00),
(2, 'BI-HD150', 'HDMI CABLE 2.0 VERSION (4K@60Hz) 1.5 Meter', 'Experience top-notch video and audio quality with this 1.5-meter HDMI cable. Designed for 4K resolution at 60Hz, this cable provides a reliable and high-speed connection. Perfect for various applications, it delivers a superior multimedia experience.', 'hdmi4k.jpeg', 10, 722.00),
(3, 'BI-HD200', 'HDMI CABLE 2.0 VERSION (4K@60Hz) 2 Meter', 'Connect your devices seamlessly with this 2-meter HDMI cable. With support for 4K resolution at 60Hz, it ensures a crisp and clear display. Versatile and high-performing, this cable is suitable for a wide range of applications.', 'hdmi4k.jpeg', 10, 800.00),
(4, 'BI-HD300', 'HDMI CABLE 2.0 VERSION (4K@60Hz) 3 Meter', 'Enjoy superior audio and video quality with this 3-meter HDMI cable. Designed for 4K resolution at 60Hz, it provides a reliable connection for various devices. Whether for home entertainment or professional use, this cable delivers outstanding performance', 'hdmi4k.jpeg', 10, 950.00),
(5, 'BI-HD500', 'HDMI CABLE 2.0 VERSION (4K@30Hz) 5 Meter', 'Extend your reach with this 5-meter HDMI cable. Supporting 4K resolution at 30Hz, it offers flexibility for different setups. This cable is suitable for a variety of applications, providing a high-quality and stable connection over longer distances.', 'hdmi4k.jpeg', 10, 1330.00),
(6, 'BI-HD750', 'HDMI CABLE 2.0 VERSION (4K@30Hz) 7.5 Meter', 'Experience reliable connectivity with this 7.5-meter HDMI cable. Ideal for setups that require longer cable lengths, it supports 4K resolution at 30Hz. Ensure a smooth and uninterrupted multimedia experience with this high-quality HDMI cable.', 'hdmi4k.jpeg', 10, 2699.00),
(7, 'BI-HD1000', 'HDMI CABLE 2.0 VERSION (4K@30Hz) 10 Meter', 'This 10-meter HDMI cable provides an extended reach for your audio and video needs. With support for 4K resolution at 30Hz, it offers reliable and high-quality connectivity over longer distances. Perfect for various applications, this cable ensures a supe', 'hdmi4k.jpeg', 10, 2810.00),
(8, 'BI-HD1500', 'HDMI CABLE 2.0 VERSION (4K@30Hz) 15 Meter', 'Connect devices over longer distances with this 15-meter HDMI cable. Designed for 4K resolution at 30Hz, it delivers excellent performance for various applications. Enjoy a reliable and high-quality audio and video experience with this versatile HDMI cabl', 'hdmi4k.jpeg', 10, 4180.00),
(9, 'BI-HD2000', 'HDMI CABLE 2.0 VERSION (4K@30Hz) 20 Meter', 'Ensure seamless connectivity with this 20-meter HDMI cable. With support for 4K resolution at 30Hz, it is ideal for setups that require longer cable lengths. This cable provides a stable and high-quality connection for a wide range of applications.', 'hdmi4k.jpeg', 10, 7599.00),
(10, 'BI-MNHD200', 'MINI HDMI TO HDMI CABLE 2 METER 4K@60Hz', 'Experience high-definition multimedia with this 2-meter Mini HDMI to HDMI cable. Designed for 4K resolution at 60Hz, it ensures superior audio and video quality. Ideal for connecting your devices seamlessly.', 'MNHD200.jpeg', 10, 1249.00),
(11, 'BI-MCHD200', 'MICRO HDMI TO HDMI CABLE 4K@60Hz', 'Connect your devices with this Micro HDMI to HDMI cable, offering 4K resolution at 60Hz. Ideal for high-performance applications, this cable ensures a reliable and high-quality connection for your multimedia needs.', 'mchd200.jpeg', 10, 1299.00),
(12, 'BI-HDO10M', 'HDMI 2.0 OPTICAL CABLE (AOC) 4K@60Hz 10 Meter', 'Upgrade your audio and video experience with this 10-meter HDMI 2.0 Optical Cable. Offering 4K resolution at 60Hz, it ensures a clear and immersive multimedia experience over longer distances.', 'hdo.jpg', 5, 8208.00),
(13, 'BI-HDO15M', 'HDMI 2.0 OPTICAL CABLE (AOC) 4K@60Hz 15 Meter', 'Extend your reach with this 15-meter HDMI 2.0 Optical Cable. Designed for 4K resolution at 60Hz, it provides a reliable and high-quality connection for various applications.', 'hdo.jpg', 5, 8979.00),
(14, 'BI-HDO20M', 'HDMI 2.0 OPTICAL CABLE (AOC) 4K@60Hz 20 Meter', 'Experience exceptional audio and video quality with this 20-meter HDMI 2.0 Optical Cable. Ideal for setups that require longer cable lengths, it supports 4K resolution at 60Hz.', 'hdo.jpg', 5, 9822.00),
(15, 'BI-HDO25M', 'HDMI 2.0 OPTICAL CABLE (AOC) 4K@60Hz 25 Meter', 'Enhance your connectivity with this 25-meter HDMI 2.0 Optical Cable. Providing 4K resolution at 60Hz, it delivers a stable and high-quality connection for a variety of applications.', 'hdo.jpg', 5, 10999.00),
(16, 'BI-HDO30M', 'HDMI 2.0 OPTICAL CABLE (AOC) 4K@60Hz 30 Meter', 'Ensure a seamless audio and video experience with this 30-meter HDMI 2.0 Optical Cable. Designed for 4K resolution at 60Hz, it is perfect for professional and home entertainment setups.', 'hdo.jpg', 5, 11646.00),
(17, 'BI-HDO40M', 'HDMI 2.0 OPTICAL CABLE (AOC) 4K@60Hz 40 Meter', 'This 40-meter HDMI 2.0 Optical Cable provides reliable connectivity over longer distances. Supporting 4K resolution at 60Hz, it ensures a superior multimedia experience for various applications.', 'hdo.jpg', 5, 13397.00),
(18, 'BI-HDO50M', 'HDMI 2.0 OPTICAL CABLE (AOC) 4K@60Hz 50 Meter', 'Connect your devices with this 50-meter HDMI 2.0 Optical Cable. Offering 4K resolution at 60Hz, it is suitable for professional setups and applications that require an extended reach.', 'hdo.jpg', 5, 14943.00),
(19, 'BI-HDO60M', 'HDMI 2.0 OPTICAL CABLE (AOC) 4K@60Hz 60 Meter', 'Experience unparalleled audio and video quality with this 60-meter HDMI 2.0 Optical Cable. Ideal for setups that demand longer cable lengths, it supports 4K resolution at 60Hz.', 'hdo.jpg', 5, 18172.00),
(20, 'BI-HDO80M', 'HDMI 2.0 OPTICAL CABLE (AOC) 4K@60Hz 80 Meter', 'Extend your connectivity with this 80-meter HDMI 2.0 Optical Cable. Designed for 4K resolution at 60Hz, it ensures a stable and high-quality connection over extended distances.', 'hdo.jpg', 5, 20908.00),
(21, 'BI-HDO100M', 'HDMI 2.0 OPTICAL CABLE (AOC) 4K@60Hz 100 Meter', 'Ensure reliable connectivity over long distances with this 100-meter HDMI 2.0 Optical Cable. Supporting 4K resolution at 60Hz, it is perfect for professional and commercial setups.', 'hdo.jpg', 5, 24483.00),
(22, 'BI-HD8K-150', 'HDMI 2.1 Ultra High Speed Cable 8k@60Hz 1.5 Meter', 'Experience the future of high-speed connectivity with this 1.5-meter HDMI 2.1 Ultra High Speed Cable. Perfect for 8K resolution at 60Hz, it delivers superior audio and video quality for your advanced multimedia needs.', 'hd8k.jpg', 10, 1425.00),
(23, 'BI-HD8K-300', 'HDMI 2.1 Ultra High Speed Cable 8k@60Hz 3 Meter', 'Upgrade your home entertainment system with this 3-meter HDMI 2.1 Ultra High Speed Cable. Designed for 8K resolution at 60Hz, it ensures a smooth and immersive viewing experience for high-performance setups.', 'hd8k.jpg', 10, 2025.00),
(24, 'BI-HD8K-500', 'HDMI 2.1 Ultra High Speed Cable 8k@60Hz 5 Meter', 'Connect your devices with this 5-meter HDMI 2.1 Ultra High Speed Cable. Offering 8K resolution at 60Hz, it provides a reliable and high-quality connection for your advanced multimedia applications.', 'hd8k.jpg', 10, 3675.00),
(25, 'BI-HDO-8K-10M', 'HDMI 2.1 Ultra High Speed Cable 8k@60Hz Optical Fibre Cable ', 'Experience unparalleled audio and video quality with this 10-meter HDMI 2.1 Ultra High Speed Fiber Optic Cable. Designed for 8K resolution at 60Hz, it ensures a stable and high-quality connection over longer distances.', 'hdo8k.jpeg', 5, 9699.00),
(26, 'BI-HDO-8K-15M', 'HDMI 2.1 Ultra High Speed Cable 8k@60Hz Optical Fibre Cable ', 'Upgrade your connectivity with this 15-meter HDMI 2.1 Ultra High Speed Fiber Optic Cable. Supporting 8K resolution at 60Hz, it is ideal for professional setups and applications that demand longer cable lengths.', 'hdo8k.jpeg', 5, 10469.00),
(27, 'BI-HDO-8K-20M', 'HDMI 2.1 Ultra High Speed Cable 8k@60Hz Optical Fibre Cable ', 'Extend your reach with this 20-meter HDMI 2.1 Ultra High Speed Fiber Optic Cable. Designed for 8K resolution at 60Hz, it ensures a reliable and high-quality connection for various multimedia applications.', 'hdo8k.jpeg', 5, 11399.00),
(28, 'BI-HDO-8K-25M', 'HDMI 2.1 Ultra High Speed Cable 8k@60Hz Optical Fibre Cable ', 'Ensure a seamless audio and video experience with this 25-meter HDMI 2.1 Ultra High Speed Fiber Optic Cable. Ideal for setups that demand longer cable lengths, it supports 8K resolution at 60Hz.', 'hdo8k.jpeg', 5, 12999.00),
(29, 'BI-HDO-8K-30M', 'HDMI 2.1 Ultra High Speed Cable 8k@60Hz Optical Fibre Cable ', 'Connect your devices over extended distances with this 30-meter HDMI 2.1 Ultra High Speed Fiber Optic Cable. Supporting 8K resolution at 60Hz, it is perfect for professional and commercial setups.', 'hdo8k.jpeg', 5, 14899.00),
(30, 'BI-HDV', 'HDMI TO VGA CONVERTER', 'Convert HDMI signals to VGA with this HDMI to VGA Converter. Ideal for connecting modern devices to VGA-equipped displays, it ensures compatibility and flexibility in various setups.', 'hdv.jpeg', 10, 599.00),
(31, 'BI-HDVA', 'HDMI TO VGA CONVERTER WITH AUDIO', 'This HDMI to VGA Converter with Audio allows you to connect HDMI devices to VGA displays with audio support. Perfect for presentations and multimedia setups, it provides a versatile solution for your connectivity needs.', 'hdva.jpg', 10, 1770.00),
(32, 'BI-VHDA', 'VGA TO HDMI CONVERTER WITH AUDIO & USB POWER', 'This VGA to HDMI Converter with Audio and USB Power enables you to convert VGA signals to HDMI with audio support. The USB power feature adds convenience, making it suitable for a variety of setups.', 'vhda.jpg', 10, 1549.00),
(33, 'BI-HDDP', 'HDMI TO DISPLAY PORT CONVERTER', 'Connect HDMI devices to Display Port displays with this HDMI to Display Port Converter. Enjoy seamless connectivity and high-quality audio and video transmission for your multimedia needs.', 'hddp.jpg', 10, 6099.00),
(34, 'BI-HDAV', 'HDMI TO AV CONVERTER', 'Convert HDMI signals to AV with this HDMI to AV Converter. Ideal for connecting modern devices to AV-equipped displays, it ensures compatibility and flexibility in various setups.', 'hdav.jpg', 10, 1699.00),
(35, 'BI-AVHD', 'AV TO HDMI CONVERTER', 'This AV to HDMI Converter allows you to connect AV devices to HDMI displays. Perfect for upgrading older AV equipment, it provides a versatile solution for your connectivity needs.', 'avhd.jpg', 10, 2099.00),
(36, 'BI-HXU50', 'HDMI EXTENDER 1080p with USB over Cat6 50 Meter', 'Extend HDMI signals over long distances with this HDMI Extender. With USB support over Cat6, its perfect for various applications and the included power supply ensures reliable performance.', 'hxu50.jpeg', 5, 12399.00),
(37, 'BI-HX60', 'HDMI EXTENDER 1080P@60Hz OVER CAT 6E', 'Extend HDMI signals up to 60 meters over Cat6 cables with this HDMI Extender. It comes with a 1-year replacement warranty and includes a single-side adapter on the transmitter side for easy installation.', 'hx60.jpg', 5, 4104.00),
(38, 'BI-HX100', 'HDMI EXTENDER 4k@30Hz OVER CAT 6E', 'Extend HDMI signals up to 100 meters over Cat5e cables with this HDMI Extender. Supporting 4K@30Hz, its suitable for various setups, and the included power supply ensures reliable performance.', 'hx100.jpg', 5, 12540.00),
(39, 'BI-HX150', 'HDMI EXTENDER 150 METER 1080P@60Hz', 'Extend HDMI signals up to 150 meters at 1080P@60Hz with this HDMI Extender. It comes with a 1-year replacement warranty and includes two units with adapters for your convenience.', 'hx150.jpeg', 5, 16499.00),
(40, 'BI-HD102', 'HDMI SPLITTER 1 INPUT 2 OUTPUT (1.4 VERSION - 4K@30Hz)', 'This HDMI Splitter allows you to distribute one HDMI signal to two displays. With 4K@30Hz support, its suitable for various multimedia setups, and it comes with a 1-year warranty.', 'hd102.jpg', 5, 5016.00),
(41, 'BI-HD104', 'HDMI SPLITTER 1 INPUT 4 OUTPUT (1.4 VERSION - 4K@30Hz)', 'Distribute one HDMI signal to four displays with this HDMI Splitter. With 4K@30Hz support, its ideal for home theaters and commercial setups, and it comes with a 1-year warranty.', 'hd104.jpg', 5, 6384.00),
(42, 'BI-HD108', 'HDMI SPLITTER 1 INPUT 8 OUTPUT (2.0 VERSION - 4K@60Hz)', 'This HDMI Splitter allows you to distribute one HDMI signal to eight displays. With 4K@60Hz support, its suitable for high-performance setups, and it comes with a 1-year warranty.', 'hd108.jpg', 5, 11400.00),
(43, 'BI-HD2KVM', 'HDMI 2 IN 1 OUT KVM SWITCH 4K@30Hz', 'Switch between two HDMI sources with this HDMI KVM Switch. With 4K@30Hz support, its ideal for multitasking and comes with a 1-year replacement warranty.', 'hd2kvm.jpeg', 5, 12399.00),
(44, 'BI-HD301', 'HDMI SWITCHER 3 INPUT 1 OUTPUT (1.4 VERSION - 4K@30Hz)', 'Switch between three HDMI sources with this HDMI Switcher. With 4K@30Hz support, its perfect for home entertainment setups, and it comes with a 1-year warranty.', 'hd301.jpg', 5, 2736.00),
(45, 'BI-HD501', 'HDMI SWITCHER 5 INPUT 1 OUTPUT (1.4 VERSION - 4K@30Hz)', 'Switch between five HDMI sources with this HDMI Switcher. With 4K@30Hz support, its suitable for complex multimedia setups, and it comes with a 1-year warranty.', 'hd501.jpg', 5, 3192.00),
(46, 'BI-HD401Q', 'HDMI 4 PORT QUAD SCREEN MULTI VIEWER (1080P)', 'Experience a versatile display with this HDMI Quad Screen Multi Viewer. It allows you to view up to four HDMI sources on one screen in 1080P resolution, perfect for surveillance and monitoring setups.', 'hd401q.jpg', 5, 11999.00),
(47, 'BI-HD402', 'HDMI 4 IN 2 OUT MATRIX SWITCHER 1080P', 'Switch between four HDMI sources and distribute them to two displays with this HDMI Matrix Switcher. It supports 1080P resolution and is suitable for various multimedia setups.', 'hd402.jpg', 5, 14999.00),
(48, 'BI-HD404', 'HDMI 4 IN 4 OUT MATRIX SWITCHER (4K@30Hz) WITH RS232 CONTROL', 'Create a sophisticated multimedia setup with this HDMI Matrix Switcher. It allows you to switch between four HDMI sources and distribute them to four displays with 4K@30Hz support and RS232 control.', 'hd404.jpg', 5, 24999.00),
(49, 'BI-VGA200', 'VGA CABLE 2 METER', 'Connect your devices with this VGA Cable. With a length of 2 meters, it provides flexibility in setting up your displays for optimal viewing.', 'vga.jpg', 10, 836.00),
(50, 'BI-VGA300', 'VGA CABLE 3 METER', 'Extend your display setup with this 3-meter VGA Cable. Ideal for connecting various devices, it ensures reliable signal transmission for a clear picture.', 'vga.jpg', 10, 950.00),
(51, 'BI-VGA500', 'VGA CABLE 5 METER', 'This 5-meter VGA Cable is perfect for longer connections between devices. It ensures a stable connection and high-quality video transmission for your displays.', 'vga.jpg', 10, 1330.00),
(52, 'BI-VGA1000', 'VGA CABLE 10 METER', 'Extend your VGA connections up to 10 meters with this VGA Cable. It provides flexibility in setup and reliable signal quality for your displays.', 'vga.jpg', 10, 2280.00),
(53, 'BI-VGA1500', 'VGA CABLE 15 METER', 'This 15-meter VGA Cable is suitable for extended display setups. Ensure a clear and stable connection for your devices with this reliable VGA cable.', 'vga.jpg', 10, 3420.00),
(54, 'BI-VGA2000', 'VGA CABLE 20 METER', 'Connect devices over longer distances with this 20-meter VGA Cable. It provides flexibility in setup and ensures high-quality video transmission for your displays.', 'vga.jpg', 10, 5130.00),
(55, 'BI-VGA3000', 'VGA CABLE 30 METER', 'For extensive display setups, use this 30-meter VGA Cable. It ensures reliable signal transmission over longer distances, maintaining video quality for your displays.', 'vga.jpg', 10, 6650.00),
(56, 'BI-VGAA200', 'VGA CABLE WITH AUDIO 2 METER', 'Enjoy both video and audio with this VGA Cable with Audio. With a length of 2 meters, its perfect for connecting your devices while ensuring high-quality audio output.', 'vgaa.jpg', 10, 1140.00),
(57, 'BI-VGAA300', 'VGA CABLE WITH AUDIO 3 METER', 'This VGA Cable with Audio is 3 meters long, providing you with audio support along with video. Ideal for multimedia setups, it ensures a complete audio-visual experience.', 'vgaa.jpg', 10, 1330.00),
(58, 'BI-VGAA500', 'VGA CABLE WITH AUDIO 5 METER', 'Connect your devices with this 5-meter VGA Cable with Audio. Enjoy both video and audio transmission over longer distances, ensuring a comprehensive multimedia experience.', 'vgaa.jpg', 10, 1390.00),
(59, 'BI-VGAA1000', 'VGA CABLE WITH AUDIO 10 METER', 'For extended multimedia setups, use this VGA Cable with Audio. With a length of 10 meters, it provides flexibility in positioning your devices while ensuring high-quality audio and video transmission.', 'vgaa.jpg', 10, 2470.00),
(60, 'BI-VGAA1500', 'VGA CABLE WITH AUDIO 15 METER', 'Create comprehensive multimedia setups with this 15-meter VGA Cable with Audio. It ensures high-quality video and audio transmission over longer distances for your displays.', 'vgaa.jpg', 10, 3800.00),
(61, 'BI-DVI150', 'DVI-D (24+1) MALE TO MALE CABLE 1.5 METER', 'Connect DVI-enabled devices with this DVI-D Cable. With a length of 1.5 meters, its suitable for various setups, ensuring high-quality video transmission.', 'dvi.jpg', 10, 991.00),
(62, 'BI-DVI300', 'DVI-D (24+1) MALE TO MALE CABLE 3 METER', 'This 3-meter DVI-D Cable is ideal for connecting devices with DVI ports. It ensures reliable signal transmission and high-quality video output for your displays.', 'dvi.jpg', 10, 1454.00),
(63, 'BI-DVI500', 'DVI-D (24+1) MALE TO MALE CABLE 5 METER', 'Extend your DVI connections with this 5-meter DVI-D Cable. It provides flexibility in setup while ensuring a stable and high-quality video signal for your displays.', 'dvi.jpg', 10, 2199.00),
(64, 'BI-DVI1000', 'DVI-D (24+1) MALE TO MALE CABLE 10 METER', 'For longer DVI connections, use this 10-meter DVI-D Cable. It ensures reliable signal transmission and high-quality video output, making it suitable for various multimedia setups.', 'dvi.jpg', 10, 4085.00),
(65, 'BI-DVI1500', 'DVI-D (24+1) MALE TO MALE CABLE 15 METER', 'Extend DVI connections up to 15 meters with this DVI-D Cable. Featuring metal connectors, it ensures durability and reliable signal transmission for your displays.', 'dvi.jpg', 10, 5415.00),
(66, 'BI-HDDVI200', 'DVI-D (24+1) TO HDMI CABLE 1080P 2 Meter', 'Connect DVI to HDMI with this cable. With a length of 2 meters, it supports 1080P resolution, making it suitable for high-definition multimedia setups.', 'hddvi.jpg', 10, 851.00),
(67, 'BI-HDDVI300', 'DVI-D (24+1) TO HDMI CABLE 1080P 3 Meter', 'This DVI to HDMI Cable is 3 meters long, providing flexibility in connecting DVI and HDMI devices. It supports 1080P resolution for clear and detailed video output.', 'hddvi.jpg', 10, 991.00),
(68, 'BI-HDDVI500', 'DVI-D (24+1) TO HDMI CABLE 1080P 5 Meter', 'Extend your DVI to HDMI connections with this 5-meter cable. It supports 1080P resolution, ensuring high-quality video output for your multimedia setups.', 'hddvi.jpg', 10, 1322.00),
(69, 'BI-DVHD', 'DVI 24+1 TO HDMI CONVERTER', 'Convert DVI to HDMI with this converter. It allows you to connect DVI devices to HDMI displays, providing versatility in your multimedia setups.', 'dvhd.jpeg', 10, 399.00),
(70, 'BI-DP150', 'DISPLAY PORT 1.2 VERSION CABLE 4K@60Hz 1.5 METER', 'Experience high-quality video with this 1.5-meter DisplayPort cable. It supports 4K@60Hz resolution, providing clear and detailed visuals for your displays.', 'dp.jpg', 10, 1322.00),
(71, 'BI-DP300', 'DISPLAY PORT 1.2 VERSION CABLE 4K@60Hz 3 METER', 'Extend your DisplayPort connections with this 3-meter cable. It supports 4K@60Hz resolution, ensuring a superior viewing experience for your multimedia setups.', 'dp.jpg', 10, 1652.00),
(72, 'BI-DP500', 'DISPLAY PORT 1.2 VERSION CABLE 4K@30Hz 5 METER', 'This 5-meter DisplayPort cable allows you to connect devices over longer distances. It supports 4K@30Hz resolution, delivering reliable video output for your displays.', 'dp.jpg', 10, 1982.00),
(73, 'BI-DP1000', 'DISPLAY PORT 1.2 VERSION CABLE 4K@30Hz 10 METER', 'For extended DisplayPort connections, use this 10-meter cable. It supports 4K@30Hz resolution, ensuring high-quality video transmission for your multimedia setups.', 'dp.jpg', 10, 3895.00),
(74, 'BI-DP1500', 'DISPLAY PORT 1.2 VERSION CABLE 4K@30Hz 15 METER', 'Connect devices over even longer distances with this 15-meter DisplayPort cable. It supports 4K@30Hz resolution, providing reliable video output for your displays.', 'dp.jpg', 10, 5225.00),
(75, 'BI-DPHD180', 'DISPLAY PORT TO HDMI CABLE 1.8 METER (4k@30hz)', 'Convert DisplayPort to HDMI with this cable. With a length of 1.8 meters, it supports 4K@30Hz resolution for clear and detailed video output.', 'dphd180.jpg', 10, 1799.00),
(76, 'BI-DPHD300', 'DISPLAY PORT TO HDMI CABLE 3 METER (4k@60hz)', 'This 3-meter DisplayPort to HDMI cable supports 4K@60Hz resolution. Connect your devices and enjoy high-quality video output for your multimedia setups.', 'dphd300.jpg', 10, 1799.00),
(77, 'BI-MDP150', 'MINI DISPLAY PORT TO DISPLAY PORT CABLE 4K@60Hz 1.5 METER', 'Connect Mini DisplayPort to DisplayPort with this 1.5-meter cable. It supports 4K@60Hz resolution, ensuring high-quality video transmission for your displays.', 'mdpdp.jpg', 10, 1156.00),
(78, 'BI-MDP300', 'MINI DISPLAY PORT TO DISPLAY PORT CABLE 4K@60Hz 3 METER', 'Extend your Mini DisplayPort to DisplayPort connections with this 3-meter cable. It supports 4K@60Hz resolution, providing flexibility in your display setups.', 'mdpdp.jpg', 10, 1404.00),
(79, 'BI-MDPHD180', 'MINI DISPLAY PORT TO HDMI CABLE 1.8 METER (4K@30Hz)', 'Convert Mini DisplayPort to HDMI with this 1.8-meter cable. It supports 4K@30Hz resolution, making it suitable for various multimedia setups.', 'mdphd180.jpg', 10, 1949.00),
(80, 'BI-MDPHD', 'MINI DISPLAY PORT TO HDMI FEMALE CONVERTER', 'This Mini DisplayPort to HDMI Female Converter allows you to connect Mini DisplayPort devices to HDMI displays. Ensure versatility in your multimedia setups.', 'mdphd4k.jpg', 10, 1549.00),
(81, 'BI-MDPV', 'MINI DISPLAY PORT TO VGA CONVERTER', 'Connect Mini DisplayPort to VGA with this converter. It allows you to use VGA displays with your Mini DisplayPort-enabled devices, ensuring compatibility in various setups.', 'mdpv.jpg', 10, 1699.00),
(82, 'BI-MDP401', 'MINI DISPLAY PORT TO HDMI / VGA / DVI / AUDIO & POWER', 'This versatile Mini DisplayPort adapter supports HDMI, VGA, DVI, audio, and power connections. Ensure flexibility in your multimedia setups with this all-in-one solution.', 'mdp401.jpg', 10, 3498.00),
(83, 'BI-DPHD', 'DISPLAY PORT TO HDMI', 'Convert DisplayPort to HDMI with this converter. It allows you to connect DisplayPort-enabled devices to HDMI displays, ensuring compatibility in various multimedia setups.', 'dphd.jpg', 10, 1549.00),
(84, 'BI-DPV', 'DISPLAY PORT TO VGA CONVERTER', 'Connect DisplayPort to VGA with this converter. It enables the use of VGA displays with your DisplayPort-enabled devices, providing flexibility in your display setups.', 'dpv.jpg', 10, 1500.00),
(85, 'BI-DP401', 'DISPLAY PORT TO HDMI / VGA / DVI / AUDIO & POWER', 'This DisplayPort adapter supports HDMI, VGA, DVI, audio, and power connections. Ensure versatility in your multimedia setups with this all-in-one solution.', 'dp401.jpg', 10, 3598.00),
(86, 'BI-U3V', 'USB 3.0 TO VGA CONVERTER', 'Experience high-quality video output with this USB 3.0 to VGA converter. Connect your devices to VGA displays with ease.', 'u3v.jpg', 10, 3399.00),
(87, 'BI-U3HV', 'USB 3.0 TO HDMI & VGA (Simultaneous Display with extended an', 'This USB 3.0 to HDMI & VGA converter allows simultaneous display with extended and mirror modes. Enjoy versatile connectivity for your multimedia needs.', 'u3hv.jpg', 10, 4799.00),
(88, 'BI-U3UL', 'USB 3.0 TO GIGABIT LAN WITH 3*USB 3.0', 'Enhance your connectivity with this USB 3.0 to Gigabit LAN converter. It also features three additional USB 3.0 ports for versatile usage.', 'u3ul.jpg', 10, 4300.00),
(89, 'BI-U2L', 'USB 2.0 TO LAN (10/100 Mbps)', 'Connect to LAN networks with this USB 2.0 to LAN converter. It supports speeds of 10/100 Mbps for reliable network connectivity.', 'u2l.jpg', 10, 1499.00),
(90, 'BI-U3GL', 'USB 3.0 TO GIGABIT LAN (10/100/1000 Mbps)', 'Experience high-speed network connectivity with this USB 3.0 to Gigabit LAN converter. It supports speeds of 10/100/1000 Mbps for efficient data transfer.', 'U3GL.jpg', 10, 2999.00),
(91, 'BI-U3TC', 'USB 3.0 (3.1) MALE TO TYPE-C FEMALE CONVERTER', 'Convert USB 3.0 (3.1) to Type-C with this compact converter. Ensure compatibility with various devices and enjoy efficient data transfer.', 'u3tc.jpg', 10, 899.00),
(92, 'BI-UM200', 'USB 2.0 TO MICRO CABLE 2 METER (NYLON BRAIDED & METAL CONNEC', 'Charge and sync your devices with this durable USB 2.0 to Micro cable. The nylon braided design and metal connectors ensure long-lasting performance.', 'um200.jpg', 10, 425.00),
(93, 'BI-U2MF150', 'USB 2.0 EXTENSION CABLE 1.5 METER', 'Extend your USB connections with this 1.5-meter USB 2.0 extension cable. It ensures reliable data transfer and is suitable for various devices.', 'u2mf.jpeg', 10, 270.00),
(94, 'BI-U2MF300', 'USB 2.0 EXTENSION CABLE 3 METER', 'Extend USB connections over longer distances with this 3-meter USB 2.0 extension cable. Ensure flexible connectivity for your devices.', 'u2mf.jpeg', 10, 375.00),
(95, 'B-U2MF500', 'USB 2.0 EXTENSION CABLE 5 METER', 'Connect devices over even longer distances with this 5-meter USB 2.0 extension cable. It provides reliable data transfer for your USB-enabled devices.', 'u2mf.jpeg', 10, 600.00),
(96, 'BI-U2MF1000', 'USB 2.0 EXTENSION CABLE 10 METER', 'For extended USB connections, use this 10-meter USB 2.0 extension cable. Ensure flexibility in your device setups with this reliable extension.', 'u2mfwa.jpg', 10, 1875.00),
(97, 'BI-U2MF1500', 'USB 2.0 EXTENSION CABLE 15 METER', 'Connect USB devices over longer distances with this 15-meter USB 2.0 extension cable. It ensures reliable data transfer for various applications.', 'u2mfwa.jpg', 10, 2775.00),
(98, 'BI-U2MF2000', 'USB 2.0 EXTENSION CABLE 20 METER', 'Extend USB connections up to 20 meters with this USB 2.0 extension cable. Ensure flexibility in your device setups with reliable data transfer.', 'u2mfwa.jpg', 10, 4417.00),
(99, 'BI-UP150', 'USB 2.0 PRINTER CABLE 1.5 METER', 'Connect your printers with this 1.5-meter USB 2.0 printer cable. Ensure reliable data transfer for efficient printing and connectivity.', 'up.jpg', 10, 270.00),
(100, 'BI-UP300', 'USB 2.0 PRINTER CABLE 3 METER', 'Extend your printer connections with this 3-meter USB 2.0 printer cable. It provides reliable data transfer for efficient and flexible printing setups.', 'up.jpg', 10, 375.00),
(101, 'BI-UP500', 'USB 2.0 PRINTER CABLE 5 METER', 'Connect printers over longer distances with this 5-meter USB 2.0 printer cable. Ensure efficient printing setups with reliable data transfer.', 'up.jpg', 10, 600.00),
(102, 'BI-USBRS232', 'USB TO SERIAL RS232 1.5 METER (PL2303)', 'Connect serial devices with this USB to Serial RS232 cable. The PL2303 chipset ensures reliable data transfer for your serial connections.', 'usbrs232.jpeg', 10, 2499.00),
(103, 'BI-USFF', 'USB TO SERIAL FEMALE CABLE WITH FTDI CHIPSET (1.5 METER)', 'Connect serial devices with this USB to Serial Female cable. The FTDI chipset ensures reliable data transfer over a 1.5-meter distance.', 'USFF.jpg', 10, 2925.00),
(104, 'BI-U3MF500', 'USB 3.0 EXTENSION CABLE 5 METER (5Gbps)', 'Extend your USB 3.0 connections with this 5-meter extension cable. It supports speeds up to 5Gbps for efficient data transfer.', 'u3mfactive.jpg', 10, 5700.00),
(105, 'BI-U3MF1500', 'USB 3.0 EXTENSION CABLE 15 METER (5Gbps)', 'Connect USB 3.0 devices over longer distances with this 15-meter extension cable. It supports speeds up to 5Gbps for efficient data transfer.', 'u3mfwa.jpg', 10, 13650.00),
(106, 'BI-U3MF1000', 'USB 3.0 EXTENSION CABLE 10 METER (5Gbps)', 'Extend USB 3.0 connections with this 10-meter extension cable. It supports speeds up to 5Gbps for efficient data transfer.', 'u3mfactive.jpg', 10, 9750.00),
(107, 'BI-U3MF2000', 'USB 3.0 EXTENSION CABLE 20 METER (5Gbps)', 'Connect USB 3.0 devices over even longer distances with this 20-meter extension cable. It supports speeds up to 5Gbps for efficient data transfer.', 'u3mfwa.jpg', 10, 14499.00),
(108, 'BI-U3MM500', 'USB 3.0 MALE TO MALE CABLE 5 METER (5Gbps)', 'Connect USB 3.0 devices with this 5-meter male to male cable. It supports speeds up to 5Gbps for efficient data transfer.', 'u3mm.jpeg', 10, 6999.00),
(109, 'BI-U3MM1000', 'USB 3.0 MALE TO MALE CABLE 10 METER (5Gbps)', 'Extend USB 3.0 connections with this 10-meter male to male cable. It supports speeds up to 5Gbps for efficient data transfer.', 'u3mm.jpeg', 10, 4999.00),
(110, 'BI-U3MM200', 'USB 3.0 MALE TO MALE CABLE 2 METER', 'Connect your USB 3.0-enabled devices with this 2-meter male-to-male cable. It supports high-speed data transfer, ensuring reliable connections over short distances.', 'u3mm200.jpg', 10, 799.00),
(111, 'BI-U3MF200', 'USB 3.0 MALE TO FEMALE CABLE 2 METER', 'Extend your USB 3.0 connections with this 2-meter male-to-female cable. It supports high-speed data transfer and provides additional reach for your USB 3.0-enabled devices.', 'u3mf200.jpg', 10, 999.00),
(112, 'BI-U3-4H', 'USB 3.0 4 PORT HUB', 'Expand your USB connections with this 4-port USB 3.0 hub. It allows you to connect multiple USB devices to a single USB 3.0 port, providing convenience and flexibility in your setups.', 'u34h.jpg', 10, 1425.00),
(113, 'BI-U3-4H1M', 'USB 3.0 4 PORT HUB AND 1 METER CABLE TYPE HUB', 'This USB 3.0 hub includes 4 ports and comes with a 1-meter cable type hub. It provides additional convenience with the integrated cable, ensuring easy connections for your USB devices.', 'u34h1m.jpg', 10, 1999.00),
(114, 'BI-U3-7H', 'USB 3.0 7 PORT HUB WITH POWER.', 'Power up your USB connections with this 7-port USB 3.0 hub. It includes power support, ensuring stable and reliable connections for your USB devices.', 'u37h.jpg', 10, 4050.00),
(115, 'BI-U3-7H1M', 'USB 3.0 7 PORT HUB WITH POWER AND 1 METER CABLE TYPE HUB', 'Enhance your USB connectivity with this 7-port USB 3.0 hub that comes with power support and a 1-meter cable type hub. It provides convenient and reliable connections for your USB devices.', 'u37h1m.jpeg', 10, 4499.00),
(116, 'BI-TCL200', 'TYPE-C TO LIGHTING CABLE 2 METER (APPLE MFI CERTIFIED) NYLON', 'Charge and sync your Apple devices with this Type-C to Lighting cable. It features a 2-meter length, Apple MFI certification, and a durable design with nylon braiding and metal connectors.', 'tcl200.jpg', 10, 2272.00),
(117, 'BI-U3TC200', 'USB 3.0 TO TYPE-C CABLE 2 METER (5GBPS). NYLON BRAIDED & MET', 'Connect your USB 3.0 devices to Type-C ports with this high-speed cable. It features a 2-meter length, 5Gbps data transfer, and a durable design with nylon braiding and metal connectors.', 'u3tc200.jpg', 10, 799.00),
(118, 'BI-UCHDCC', 'TYPE-C TO HARDISK CABLE 0.5 METER (5GBPS)', 'Connect your Type-C devices to hard disks with this cable. It features a 0.5-meter length and supports 5Gbps data transfer, ensuring efficient connectivity for your hard disks.', 'uchdcc.jpeg', 10, 599.00),
(119, 'BI-TCP180', 'TYPE-C TO PRINTER CABLE 1.8 METER', 'Connect your Type-C devices to printers with this 1.8-meter cable. It ensures reliable and efficient printing connections with Type-C compatibility.', 'tcp180.jpeg', 10, 599.00),
(120, 'BI-TCDP180', 'TYPE-C MALE TO DISPLAY PORT MALE CABLE 1.8 METER (4K@60Hz)', 'Experience high-quality display connectivity with this Type-C to Display Port cable. It features a 1.8-meter length and supports 4K resolution at 60Hz for an enhanced visual experience.', 'tcdp180.jpg', 10, 3120.00),
(121, 'BI-TCHDC', 'TYPE-C MALE TO HDMI MALE CABLE 1.8 METER (4K@60Hz)', 'Connect your Type-C devices to HDMI displays with this cable. It features a 1.8-meter length and supports 4K resolution at 60Hz for high-quality video output.', 'tchdc.jpg', 10, 3999.00),
(122, 'BI-TCMU3F500', 'TYPE-C MALE TO USB 3.0 FEMALE 5 METER 5Gbps / Power Option (', 'Extend your Type-C connections with this cable featuring a Type-C male connector on one end and USB 3.0 female connector on the other. It supports 5Gbps data transfer and provides power, although the adapter is not included.', 'tcmu3f500.jpg', 10, 5899.00),
(123, 'BI-TCMM150', 'Type-C Male to Male Cable 1.5 Meter (4k@60Hz & 20Gbps)', 'Connect your Type-C devices with this high-quality cable supporting 4K resolution at 60Hz and a data transfer rate of 20Gbps. It features a durable design and a 1.5-meter length for flexible connectivity.', 'tcmm150.jpeg', 10, 1999.00),
(124, 'BI-TCMM300', 'Type-C Male to Male Cable 3 Meter (4k@60Hz & 10Gbps)', 'Experience high-quality video and data transfer with this Type-C to Type-C cable. It supports 4K resolution at 60Hz and features a 3-meter length for versatile connectivity.', 'tcmm300.jpeg', 10, 2899.00),
(125, 'BI-TCMF150', 'Type-C Male to Female Cable 1.5 Meter (4k@60Hz & 20Gbps)', 'Extend your Type-C connections with this cable featuring a Type-C male connector on one end and Type-C female connector on the other. It supports 4K resolution at 60Hz and offers a 1.5-meter length for flexible usage.', 'tcmf150.jpg', 10, 1999.00),
(126, 'BI-TCMF300', 'Type-C Male to Female Cable 3 Meter (4k@60Hz & 100Gbps)', 'Extend your Type-C connections with this cable featuring a Type-C male connector on one end and Type-C female connector on the other. It supports 4K resolution at 60Hz and offers a high data transfer rate of 100Gbps with a 3-meter length for versatile usa', 'tcmf300.jpg', 10, 2899.00),
(127, 'BI-T4MM100', 'Type-C Thunderbolt 4 Male to Male Cable 1 Meter (8k@60Hz & 4', 'Experience Thunderbolt 4 connectivity with this Type-C to Type-C cable. It supports 8K resolution at 60Hz and provides a high data transfer rate of 40Gbps with a 1-meter length for efficient connectivity.', 't4mm100.jpg', 10, 2999.00),
(128, 'BI-TCHD', 'TYPE-C TO HDMI 4K@60Hz CONVERTER (ALUMINIUM BODY) (3840*2160', 'Connect your Type-C devices to HDMI displays with this converter. It supports 4K resolution at 60Hz and features an aluminum body for durability and style.', 'tchd.jpg', 10, 3775.00),
(129, 'BI-TCVGA', 'TYPE-C TO VGA CONVERTER', 'Transform your Type-C output to VGA with this converter. It enables you to connect Type-C devices to VGA displays, offering versatility in your connectivity options.', 'tcv.jpg', 10, 2599.00),
(130, 'BI-TCDP', 'TYPE-C TO DISPLAY PORT CONVERTER (4k@60Hz)', 'Connect your Type-C devices to Display Port displays with this converter. It supports 4K resolution at 60Hz for high-quality visuals.', 'tcdp.jpg', 10, 2499.00),
(131, 'BI-TCDVIU', 'TYPE-C TO DVI WITH USB 3.0 (4k@30Hz)', 'Experience DVI connectivity with this Type-C to DVI converter. It supports 4K resolution at 30Hz and features an additional USB 3.0 port for expanded connectivity.', 'tcdivu3.jpg', 10, 3399.00),
(132, 'BI-TCL', 'TYPE-C TO LAN (10/100 Mbps)', 'Connect your Type-C devices to LAN networks with this Type-C to LAN converter. It supports 10/100 Mbps Ethernet speeds for reliable network connections.', 'tcl.jpeg', 10, 1799.00),
(133, 'BI-TCGL', 'TYPE-C TO GIGABIT LAN ADAPTER (10/100/1000Mbps)', 'Upgrade your Type-C connectivity with this Gigabit LAN adapter. It supports high-speed Gigabit Ethernet with a Type-C connection.', 'tcgl.jpg', 10, 3499.00),
(134, 'BI-TC-2.5GL', 'TYPE-C TO 2.5G GIGABIT LAN ADAPTER (100/1000/2500Mbps)', 'Experience ultra-fast network speeds with this Type-C to 2.5G Gigabit LAN adapter. It supports data rates up to 2500 Mbps for high-performance networking.', 'tc2.5gl.jpg', 10, 6499.00),
(135, 'BI-TCO', 'Type-C to USB 3.0 OTG Converter', 'Enable On-The-Go (OTG) connectivity with this Type-C to USB 3.0 converter. It allows you to connect USB peripherals to your Type-C devices for enhanced functionality.', 'tco.jpg', 10, 599.00),
(136, 'BI-TC-4H', 'TYPE-C TO USB 3.0 4 PORT HUB', 'Expand your Type-C connectivity with this 4-port USB 3.0 hub. It allows you to connect multiple USB devices to your Type-C-enabled devices.', 'tc4h.jpg', 10, 2025.00),
(137, 'BI-TC-4H1M', 'TYPE-C TO USB 3.0 4 PORT HUB AND 1 METER CABLE TYPE HUB', 'Enhance your Type-C connectivity with this 4-port USB 3.0 hub, including a 1-meter cable for added convenience. Connect multiple USB devices to your Type-C-enabled devices.', 'tc4h1m.jpeg', 10, 2099.00),
(138, 'BI-2TC2U3', 'TYPE-C TO 2*TYPE-C & 2*USB3', 'Enjoy versatile Type-C connectivity with this hub featuring two Type-C and two USB 3.0 ports. Note: All ports support data transfer up to 5Gbps and do not support display functions.', '2tc2u3.jpeg', 10, 3299.00),
(139, 'BI-TC301-A', 'TYPE-C TO HDMI / USB3.0*3 / USB-C & PD', 'Connect multiple peripherals with this Type-C hub featuring HDMI, USB 3.0, USB-C, and PD ports. It provides a convenient solution for expanding your Type-C device connectivity.', 'tc301a.jpg', 10, 4999.00),
(140, 'BI-TCUL', 'TYPE-C TO GIGABIT LAN WITH 3*USB 3.0 PORT', 'Upgrade your Type-C connectivity with this hub featuring a Gigabit LAN port and three USB 3.0 ports. It provides high-speed data transfer and network connectivity.', 'tcul.jpg', 10, 4400.00),
(141, 'BI-TC2HDMI', 'TYPE-C TO DUAL HDMI WITH USB 2.0', 'Connect two HDMI displays with this Type-C hub that includes USB 2.0 connectivity. Enjoy extended or mirrored displays with ease.', 'tc2hd2.jpg', 10, 6325.00),
(142, 'BI-TC401', 'Type-C to HDMI / VGA / USB 3.0 / PD', 'This versatile Type-C hub supports HDMI, VGA, USB 3.0, and PD connections. It offers a convenient solution for connecting your Type-C-enabled devices to various peripherals.', 'tc401.jpg', 10, 4299.00),
(143, 'BI-TC501', 'TYPE-C 5 IN 1 DOCKING STATION', 'Transform your Type-C device into a powerful workstation with this 5-in-1 docking station. It features HDMI, VGA, USB 3.0, Gigabit LAN, PD, and USB-C ports for versatile connectivity.', 'tc501.jpg', 10, 8999.00),
(144, 'BI-TC601', 'TYPE-C 6 IN 1 DOCKING STATION', 'Enhance your productivity with this 6-in-1 docking station for Type-C devices. It features HDMI, VGA, DP, USB 3.0, Gigabit LAN, and PD ports for comprehensive connectivity.', 'tc601.jpg', 10, 12600.00),
(145, 'BI-TC-HUGP', 'Type-C to HDMI / USB 3.0 / Gigabit Lan & PD', 'Experience multifunctional connectivity with this Type-C hub featuring HDMI, USB 3.0, Gigabit LAN, and PD ports. Its an ideal solution for expanding your Type-C device capabilities.', 'tchugp.jpeg', 10, 5899.00),
(146, 'BI-TC701-S', 'Type-C 7 in Docking station for Microsoft Pro', 'Optimize your Microsoft Pro with this 7-in-1 docking station. It provides HDMI, USB 3.0, Gigabit LAN, and more for seamless connectivity.', 'tc701s.jpg', 10, 6899.00),
(147, 'BI-TC801', 'Type-C 8 In 1 Docking Station', 'Create a versatile workstation with this 8-in-1 docking station. It features dual HDMI, USB 3.0, USB 2.0, card reader, Gigabit LAN, and PD ports for enhanced connectivity.', 'tc801.jpg', 10, 10999.00),
(148, 'BI-TC1001', 'TYPE-C 10 In 1 Hub', 'Maximize your Type-C device connectivity with this 10-in-1 hub. It features HDMI, VGA, Gigabit LAN, USB 3.0, USB 2.0, card reader, and PD ports for comprehensive functionality.', 'tc1001.jpg', 10, 10999.00),
(149, 'BI-U3701', 'USB 3.0 / TYPE-C TO DUAL HDMI,VGA, GIGABIT LAN, CARD READER ', 'Enjoy dual extended displays with this versatile hub. It supports dual HDMI, VGA, Gigabit LAN, card reader, USB 3.0, and audio functionalities for enhanced productivity.', 'u3701.jpg', 10, 19999.00),
(150, 'BI-TC1101', 'TYPE-C TO DUAL HDMI , DP , GIGABIT LAN , CARD READER , USB 3', 'Unlock triple extended displays with this advanced Type-C hub. It features dual HDMI, DP, Gigabit LAN, card reader, USB 3.0, and audio ports. Display Link software required for triple extended output.', 'tc1101.jpg', 10, 26999.00),
(151, 'BI-DTP150', 'DESKTOP POWER CORD 1.5 METER', '250V - 10Amps', 'dtp.jpg', 10, 449.00),
(152, 'BI-DTP200', 'DESKTOP POWER CORD 2 METER', '250V - 10Amps', 'dtp.jpg', 10, 549.00),
(153, 'BI-DTP300', 'DESKTOP POWER CORD 3 METER', '250V - 10Amps', 'dtp.jpg', 10, 649.00),
(154, 'BI-DTP500', 'DESKTOP POWER CORD 5 METER', '250V - 10Amps', 'dtp.jpg', 10, 899.00),
(155, 'BI-DTP1000', 'DESKTOP POWER CORD 10 METER', '250V - 10Amps', 'dtp.jpg', 10, 1449.00),
(156, 'BI-DTP1500', 'DESKTOP POWER CORD 15 METER', '250V - 10Amps', 'dtp.jpg', 10, 2099.00),
(157, 'BI-LTP150', 'LAPTOP POWER CORD 1.5 METER', '250V - 10Amps', 'ltp.jpg', 10, 449.00),
(158, 'BI-U3-2.5GL', 'USB 3.0 TO 2.5 GIGABIT LAN (upto 2500 Mbps)', 'Experience high-speed network connectivity with this USB 3.0 to 2.5 Gigabit LAN converter. It supports speeds upto 2500 Mbps for efficient data transfer.', 'u32.5gl.jpg', 10, 5999.00);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--
-- Creation: Mar 31, 2024 at 01:59 AM
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fname` varchar(255) NOT NULL,
  `lname` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `city` varchar(100) NOT NULL,
  `pin` int(6) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(15) NOT NULL,
  `type` varchar(20) NOT NULL DEFAULT 'user',
  `registration_date` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `fname`, `lname`, `address`, `city`, `pin`, `email`, `password`, `type`, `registration_date`) VALUES
(5, 'mehul', 'kothari', 'admin', 'indiae', 56004, 'mehulkothariofficial@gmail.com', 'qwertyas1234', 'user', '2023-12-07 20:56:54'),
(6, 'admin', 'admin', 'admin', 'mumbai', 560004, 'admin@admin.com', 'admin123', 'user', '2024-01-28 18:56:04');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
