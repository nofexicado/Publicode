-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost:3306
-- Tiempo de generación: 03-08-2020 a las 19:13:34
-- Versión del servidor: 5.7.24
-- Versión de PHP: 7.4.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `zigkart`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `blog_category`
--

CREATE TABLE `blog_category` (
  `blog_cat_id` int(11) NOT NULL,
  `blog_category_name` varchar(500) NOT NULL,
  `blog_category_slug` varchar(500) NOT NULL,
  `blog_category_status` int(20) NOT NULL,
  `drop_status` varchar(20) NOT NULL DEFAULT 'no'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `blog_category`
--

INSERT INTO `blog_category` (`blog_cat_id`, `blog_category_name`, `blog_category_slug`, `blog_category_status`, `drop_status`) VALUES
(11, 'Creative', 'Creative', 1, 'no'),
(12, 'Featured', 'Featured', 1, 'no'),
(13, 'Hobbies', 'Hobbies', 1, 'no'),
(14, 'International', 'International', 1, 'no'),
(15, 'Lifestyle', 'Lifestyle', 1, 'no'),
(16, 'Travel', 'Travel', 1, 'no');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `brands`
--

CREATE TABLE `brands` (
  `brand_id` int(11) NOT NULL,
  `brand_name` varchar(500) NOT NULL,
  `brand_slug` varchar(500) NOT NULL,
  `brand_image` varchar(200) DEFAULT NULL,
  `brand_order` int(50) NOT NULL DEFAULT '0',
  `brand_status` int(50) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `brands`
--

INSERT INTO `brands` (`brand_id`, `brand_name`, `brand_slug`, `brand_image`, `brand_order`, `brand_status`) VALUES
(4, 'Brand 1', 'Brand-1', '1582524845.jpg', 1, 1),
(5, 'Brand 2', 'Brand-2', '1582524863.jpg', 2, 1),
(6, 'Brand 3', 'Brand-3', '1582524874.jpg', 3, 1),
(7, 'Brand 4', 'Brand-4', '1582524886.jpg', 4, 1),
(8, 'Brand 5', 'Brand-5', '1582524897.jpg', 5, 1),
(9, 'Brand 6', 'Brand-6', '1582524909.jpg', 6, 1),
(10, 'Brand 7', 'Brand-7', '1582524922.jpg', 7, 1),
(11, 'Brand 8', 'Brand-8', '1582524932.jpg', 8, 1),
(12, 'Brand 9', 'Brand-9', '1582524941.jpg', 9, 1),
(13, 'Brand 10', 'Brand-10', '1582524951.jpg', 10, 1),
(14, 'Brand 11', 'Brand-11', '1582524960.jpg', 11, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `category`
--

CREATE TABLE `category` (
  `cat_id` int(11) NOT NULL,
  `category_name` varchar(200) NOT NULL,
  `category_slug` varchar(200) NOT NULL,
  `category_image` varchar(200) NOT NULL,
  `category_status` int(50) NOT NULL,
  `display_order` int(50) NOT NULL,
  `drop_status` varchar(50) NOT NULL DEFAULT 'no'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `category`
--

INSERT INTO `category` (`cat_id`, `category_name`, `category_slug`, `category_image`, `category_status`, `display_order`, `drop_status`) VALUES
(19, 'Clothing', 'Clothing', '1596080218.png', 1, 1, 'no'),
(20, 'Electronics', 'Electronics', '1596080211.png', 1, 2, 'no'),
(21, 'Shoes', 'Shoes', '1596080201.png', 1, 3, 'no'),
(22, 'Watches', 'Watches', '1596080191.png', 1, 4, 'no'),
(23, 'Jewellery', 'Jewellery', '1596080182.png', 1, 5, 'no'),
(24, 'Health and Beauty', 'Health-and-Beauty', '1596080174.png', 1, 6, 'no'),
(25, 'Sports', 'Sports', '1596080166.png', 1, 7, 'no'),
(26, 'Home and Garden', 'Home-and-Garden', '1596080151.png', 1, 8, 'no'),
(27, 'Woocommerce', 'Woocommerce', '1596080108.png', 1, 9, 'no'),
(28, 'Informatica', 'Informatica', '1594481341.png', 1, 0, 'yes');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `contact`
--

CREATE TABLE `contact` (
  `cid` int(11) NOT NULL,
  `from_name` varchar(200) NOT NULL,
  `from_email` varchar(200) NOT NULL,
  `message_text` text NOT NULL,
  `contact_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `contact`
--

INSERT INTO `contact` (`cid`, `from_name`, `from_email`, `message_text`, `contact_date`) VALUES
(2, 'dfsa', 'dfsa@dfdsa.com', 'fdsad', '2020-01-07'),
(3, 'dfsa', 'dfsa@dfddsa.com', 'ds', '2020-01-07'),
(4, 'dfsa', 'fdsaf@dfsadfsa.com', 'fdsa', '2020-01-07'),
(6, 'fdsa', 'fdsa@fdsa.com', 'fdsa', '2020-04-01');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `conversation`
--

CREATE TABLE `conversation` (
  `conver_id` int(11) NOT NULL,
  `conver_user_id` int(100) NOT NULL,
  `conver_seller_id` int(100) NOT NULL,
  `conver_order_id` int(100) NOT NULL,
  `conver_text` text NOT NULL,
  `conver_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `conversation`
--

INSERT INTO `conversation` (`conver_id`, `conver_user_id`, `conver_seller_id`, `conver_order_id`, `conver_text`, `conver_date`) VALUES
(29, 7, 8, 247, 'hai', '2020-06-08 13:53:10'),
(30, 7, 8, 268, 'hi', '2020-06-09 05:51:00'),
(33, 7, 8, 271, 'Hello how are you?', '2020-06-09 06:12:29'),
(35, 8, 8, 271, 'i am fine', '2020-06-09 06:34:47'),
(36, 8, 8, 271, 'are you received products?', '2020-06-09 06:35:02'),
(37, 7, 13, 272, 'hello', '2020-06-09 06:52:03'),
(39, 13, 7, 272, 'please transfer amount', '2020-06-09 07:41:09'),
(41, 7, 13, 272, 'ok i will transfer', '2020-06-09 07:43:59'),
(42, 13, 7, 272, 'thank you', '2020-06-09 07:44:29'),
(43, 13, 8, 243, 'hi', '2020-06-09 07:54:15'),
(44, 7, 13, 272, 'hello', '2020-06-09 09:36:22'),
(45, 7, 13, 272, 'are you there?', '2020-06-09 09:38:10'),
(48, 7, 13, 272, 'ww', '2020-06-09 09:39:50');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `country`
--

CREATE TABLE `country` (
  `country_id` int(11) NOT NULL,
  `country_name` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `country`
--

INSERT INTO `country` (`country_id`, `country_name`) VALUES
(5, 'Afghanistan'),
(6, 'Albania'),
(7, 'Algeria'),
(8, 'American Samoa'),
(9, 'Andorra'),
(10, 'Angola'),
(11, 'Anguilla'),
(12, 'Antarctica'),
(13, 'Antigua and Barbuda'),
(14, 'Argentina'),
(15, 'Armenia'),
(16, 'Aruba'),
(17, 'Australia'),
(18, 'Austria'),
(19, 'Azerbaijan'),
(20, 'Bahamas'),
(21, 'Bahrain'),
(22, 'Bangladesh'),
(23, 'Barbados'),
(24, 'Belarus'),
(25, 'Belgium'),
(26, 'Belize'),
(27, 'Benin'),
(28, 'Bermuda'),
(29, 'Bhutan'),
(30, 'Bolivia'),
(31, 'Bosnia and Herzegowina'),
(32, 'Botswana'),
(33, 'Bouvet Island'),
(34, 'Brazil'),
(35, 'British Indian Ocean Territory'),
(36, 'Brunei Darussalam'),
(37, 'Bulgaria'),
(38, 'Burkina Faso'),
(39, 'Burundi'),
(40, 'Cambodia'),
(41, 'Cameroon'),
(42, 'Canada'),
(43, 'Cape Verde'),
(44, 'Cayman Islands'),
(45, 'Central African Republic'),
(46, 'Chad'),
(47, 'Chile'),
(48, 'China'),
(49, 'Christmas Island'),
(50, 'Cocos (Keeling) Islands'),
(51, 'Colombia'),
(52, 'Comoros'),
(53, 'Congo'),
(54, 'Congo, the Democratic Republic of the'),
(55, 'Cook Islands'),
(56, 'Costa Rica'),
(57, 'Cote d \'Ivoire'),
(58, 'Croatia (Hrvatska)'),
(59, 'Cuba'),
(60, 'Cyprus'),
(61, 'Czech Republic'),
(62, 'Denmark'),
(63, 'Djibouti'),
(64, 'Dominica'),
(65, 'Dominican Republic'),
(66, 'East Timor'),
(67, 'Ecuador'),
(68, 'Egypt'),
(69, 'El Salvador'),
(70, 'Equatorial Guinea'),
(71, 'Eritrea'),
(72, 'Estonia'),
(73, 'Ethiopia'),
(74, 'Falkland Islands (Malvinas)'),
(75, 'Faroe Islands'),
(76, 'Fiji'),
(77, 'Finland'),
(78, 'France'),
(79, 'France Metropolitan'),
(80, 'French Guiana'),
(81, 'French Polynesia'),
(82, 'French Southern Territories'),
(83, 'Gabon'),
(84, 'Gambia'),
(85, 'Georgia'),
(86, 'Germany'),
(87, 'Ghana'),
(88, 'Gibraltar'),
(89, 'Greece'),
(90, 'Greenland'),
(91, 'Grenada'),
(92, 'Guadeloupe'),
(93, 'Guam'),
(94, 'Guatemala'),
(95, 'Guinea'),
(96, 'Guinea-Bissau'),
(97, 'Guyana'),
(98, 'Haiti'),
(99, 'Heard and Mc Donald Islands'),
(100, 'Holy See (Vatican City State)'),
(101, 'Honduras'),
(102, 'Hong Kong'),
(103, 'Hungary'),
(104, 'Iceland'),
(105, 'India'),
(106, 'Indonesia'),
(107, 'Iran (Islamic Republic of)'),
(108, 'Iraq'),
(109, 'Ireland'),
(110, 'Israel'),
(111, 'Italy'),
(112, 'Jamaica'),
(113, 'Japan'),
(114, 'Jordan'),
(115, 'Kazakhstan'),
(116, 'Kenya'),
(117, 'Kiribati'),
(118, 'Korea, Democratic People\'s Republic of'),
(119, 'Korea, Republic of'),
(120, 'Kuwait'),
(121, 'Kyrgyzstan'),
(122, 'Lao, People\'s Democratic Republic'),
(123, 'Latvia'),
(124, 'Lebanon'),
(125, 'Lesotho'),
(126, 'Liberia'),
(127, 'Libyan Arab Jamahiriya'),
(128, 'Liechtenstein'),
(129, 'Lithuania'),
(130, 'Luxembourg'),
(131, 'Macau'),
(132, 'Macedonia, The Former Yugoslav Republic of'),
(133, 'Madagascar'),
(134, 'Malawi'),
(135, 'Malaysia'),
(136, 'Maldives'),
(137, 'Mali'),
(138, 'Malta'),
(139, 'Marshall Islands'),
(140, 'Martinique'),
(141, 'Mauritania'),
(142, 'Mauritius'),
(143, 'Mayotte'),
(144, 'Mexico'),
(145, 'Micronesia, Federated States of'),
(146, 'Moldova, Republic of'),
(147, 'Monaco'),
(148, 'Mongolia'),
(149, 'Montserrat'),
(150, 'Morocco'),
(151, 'Mozambique'),
(152, 'Myanmar'),
(153, 'Namibia'),
(154, 'Nauru'),
(155, 'Nepal'),
(156, 'Netherlands'),
(157, 'Netherlands Antilles'),
(158, 'New Caledonia'),
(159, 'New Zealand'),
(160, 'Nicaragua'),
(161, 'Niger'),
(162, 'Nigeria'),
(163, 'Niue'),
(164, 'Norfolk Island'),
(165, 'Northern Mariana Islands'),
(166, 'Norway'),
(167, 'Oman'),
(168, 'Pakistan'),
(169, 'Palau'),
(170, 'Panama'),
(171, 'Papua New Guinea'),
(172, 'Paraguay'),
(173, 'Peru'),
(174, 'Philippines'),
(175, 'Pitcairn'),
(176, 'Poland'),
(177, 'Portugal'),
(178, 'Puerto Rico'),
(179, 'Qatar'),
(180, 'Reunion'),
(181, 'Romania'),
(182, 'Russian Federation'),
(183, 'Rwanda'),
(184, 'Saint Kitts and Nevis'),
(185, 'Saint Lucia'),
(186, 'Saint Vincent and the Grenadines'),
(187, 'Samoa'),
(188, 'San Marino'),
(189, 'Sao Tome and Principe'),
(190, 'Saudi Arabia'),
(191, 'Senegal'),
(192, 'Seychelles'),
(193, 'Sierra Leone'),
(194, 'Singapore'),
(195, 'Slovakia (Slovak Republic)'),
(196, 'Slovenia'),
(197, 'Solomon Islands'),
(198, 'Somalia'),
(199, 'South Africa'),
(200, 'South Georgia and the South Sandwich Islands'),
(201, 'Spain'),
(202, 'Sri Lanka'),
(203, 'St. Helena'),
(204, 'St. Pierre and Miquelon'),
(205, 'Sudan'),
(206, 'Suriname'),
(207, 'Svalbard and Jan Mayen Islands'),
(208, 'Swaziland'),
(209, 'Sweden'),
(210, 'Switzerland'),
(211, 'Syrian Arab Republic'),
(212, 'Taiwan, Province of China'),
(213, 'Tajikistan'),
(214, 'Tanzania, United Republic of'),
(215, 'Thailand'),
(216, 'Togo'),
(217, 'Tokelau'),
(218, 'Tonga'),
(219, 'Trinidad and Tobago'),
(220, 'Tunisia'),
(221, 'Turkey'),
(222, 'Turkmenistan'),
(223, 'Turks and Caicos Islands'),
(224, 'Tuvalu'),
(225, 'Uganda'),
(226, 'Ukraine'),
(227, 'United Arab Emirates'),
(228, 'United Kingdom'),
(229, 'United States'),
(230, 'United States Minor Outlying Islands'),
(231, 'Uruguay'),
(232, 'Uzbekistan'),
(233, 'Vanuatu'),
(234, 'Venezuela'),
(235, 'Vietnam'),
(236, 'Virgin Islands (British)'),
(237, 'Virgin Islands (U.S.)'),
(238, 'Wallis and Futuna Islands'),
(239, 'Western Sahara'),
(240, 'Yemen'),
(241, 'Yugoslavia'),
(242, 'Zambia'),
(243, 'Zimbabwe');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `coupon`
--

CREATE TABLE `coupon` (
  `coupon_id` int(11) NOT NULL,
  `user_id` int(100) NOT NULL,
  `coupon_code` varchar(200) DEFAULT NULL,
  `discount_type` varchar(100) DEFAULT NULL,
  `coupon_value` float NOT NULL,
  `coupon_start_date` varchar(200) DEFAULT NULL,
  `coupon_end_date` varchar(200) DEFAULT NULL,
  `coupon_status` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `coupon`
--

INSERT INTO `coupon` (`coupon_id`, `user_id`, `coupon_code`, `discount_type`, `coupon_value`, `coupon_start_date`, `coupon_end_date`, `coupon_status`) VALUES
(7, 8, 'OFFER10', 'percentage', 10, '2020-01-29 02:47 pm', '2020-04-24 12:00 am', 1),
(8, 8, 'OFFER25', 'percentage', 25, '2020-01-30 04:44 pm', '2020-02-21 12:00 am', 1),
(9, 13, 'DEMO20', 'percentage', 20, '2020-01-30 04:29 pm', '2020-02-14 12:00 am', 1),
(10, 13, 'DEMO50', 'percentage', 50, '2020-01-30 04:36 pm', '2020-02-29 12:00 am', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `keywords`
--

CREATE TABLE `keywords` (
  `keyword_id` int(11) NOT NULL,
  `keyword_token` varchar(200) DEFAULT NULL,
  `keyword_label` mediumtext,
  `keyword_text` mediumtext,
  `language_code` varchar(50) NOT NULL,
  `keyword_parent` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `keywords`
--

INSERT INTO `keywords` (`keyword_id`, `keyword_token`, `keyword_label`, `keyword_text`, `language_code`, `keyword_parent`) VALUES
(1911, 'cMWEtjytyVkPb4p7WMsYD3KVE', 'Add Attribute Type', 'Add Attribute Type', 'en', '0'),
(1912, 'DhEglxBVHE9m4d05gqNw5eezA', '404 Page Not Found!', '404 Page Not Found!', 'en', '0'),
(1913, 'NMSovsMo1fn0zrwjCUhfyQxLq', 'Home', 'Home', 'en', '0'),
(1914, 'o4CQo8QYHb7cKvIBpmEiVkR5L', 'Attribute Type', 'Attribute Type', 'en', '0'),
(1915, 'pX1YOaiM8ZLJRA0ylGxjQXRvb', 'Status', 'Status', 'en', '0'),
(1916, 'QzaOBpngz6dcVBr1CsjvkLVmF', 'Active', 'Active', 'en', '0'),
(1917, '8zAnNm2sO8SudOv1jSjnma9VY', 'InActive', 'InActive', 'en', '0'),
(1918, 'r4mPyhpPODLauPcVdB1StGZBp', 'Display Order', 'Display Order', 'en', '0'),
(1919, 'Mikdm1srBAn2CbC3q3fDbsEhy', 'Submit', 'Submit', 'en', '0'),
(1920, 'aVjnchLOLtB7qeB6FRq4NVRVT', 'Add Attribute Value', 'Add Attribute Value', 'en', '0'),
(1921, 'vrO9m6CGbuPok9Qv5KPyZ32lB', 'Attribute Value', 'Attribute Value', 'en', '0'),
(1922, '7yg1Hc3XGpHyHRxC1lNTeHk15', 'Add Coupon', 'Add Coupon', 'en', '0'),
(1923, '9qkxuDxaYpMsFrCA2gFEF8H18', 'Coupon Code', 'Coupon Code', 'en', '0'),
(1924, 'Kv4ixLAhaXmG0OAaGUF6bY9V4', 'Value', 'Value', 'en', '0'),
(1925, 'j4QGoiI2MRM1hmcsyR9YPvqth', 'Start Date', 'Start Date', 'en', '0'),
(1926, '089HOya9s6tu64OX19fwMPeEg', 'End Date', 'End Date', 'en', '0'),
(1927, 'oMgRADNo0ni0cBqEp1YCEIZmD', 'Add Product', 'Add Product', 'en', '0'),
(1928, 'RUMsgA6AqPfUfCcfdDKYJLe5k', 'Product Name', 'Product Name', 'en', '0'),
(1929, '0LrwaOWOgrNw3dHrfKznjc7Nb', 'SKU', 'SKU', 'en', '0'),
(1930, 'p5ylFda4r8pbjhqOlLHbUS5dP', 'Short Description', 'Short Description', 'en', '0'),
(1931, 'B5SgspUWlglKSEc0FgnOom73g', 'Description', 'Description', 'en', '0'),
(1932, 'dR5AcG41JLqPHfjpMUtZD5PQD', 'Categories', 'Categories', 'en', '0'),
(1933, 'fcBTxlJY8wtJ1nx42WthNdCEA', 'Video Url', 'Video Url', 'en', '0'),
(1934, 'NBzBGPwxVKDzLSl1n5txmsgw9', 'Price', 'Price', 'en', '0'),
(1935, '65ADfNczuHg00cIwUiFfmKpFk', 'Offer Price', 'Offer Price', 'en', '0'),
(1936, 'shcpsgNLfrc8a48E89ADrqNs4', 'Upload Featured Image', 'Upload Featured Image', 'en', '0'),
(1937, 'PGu0bm4k5ueRwyllqZghs2O95', 'Please select file of type .jpg, .png or .jpeg', 'Please select file of type .jpg, .png or .jpeg', 'en', '0'),
(1938, 'U3MJpFrZY5XgeCltSJWcl9FBM', 'Upload Gallery Images', 'Upload Gallery Images', 'en', '0'),
(1939, '53rpm68e5AGYMtiCGkDuUTr1a', 'Tags', 'Tags', 'en', '0'),
(1940, 'pc43hi0TyhXXoHlvqfJF7EUlJ', 'separate tag with commas', 'separate tag with commas', 'en', '0'),
(1941, 'YjudVC1rfikDZpZUSXFkfHehj', 'Allow Seo?', 'Allow Seo?', 'en', '0'),
(1942, 'Eu2JqH8QK7tkato9BAENcHJWT', 'Yes', 'Yes', 'en', '0'),
(1943, 'M8yL8WbtJ7kmvf8f5k9Fhk0gc', 'No', 'No', 'en', '0'),
(1944, 'VlxBpQAcp3gusJxFPNmW0oivg', 'SEO Meta Keywords (max 160 chars)', 'SEO Meta Keywords (max 160 chars)', 'en', '0'),
(1945, 'CXIFX1YDrVfdUrzuriseZVRul', 'SEO Meta Description (max 160 chars)', 'SEO Meta Description (max 160 chars)', 'en', '0'),
(1946, 'Ow0C9eSIdkFLgPauQ6TbJR6Dq', 'Product Type', 'Product Type', 'en', '0'),
(1947, 'jbF1SKOVm3l0CsMeD5LmTqsrY', 'Brand', 'Brand', 'en', '0'),
(1948, 'tqwV8g2fLUDjm61NeikReekXc', 'Return Policy', 'Return Policy', 'en', '0'),
(1949, 'baXfzdk6shfa3qQp0QYe6UY5S', 'Estimate Time ( Product delivery time )', 'Estimate Time ( Product delivery time )', 'en', '0'),
(1950, 'ij3w7X6mnwBNHarP6tjZrXV6j', 'Condition', 'Condition', 'en', '0'),
(1951, 'Cuhv1X0aJeTJOg7Vq7KLOHG4T', 'New', 'New', 'en', '0'),
(1952, 'dFwxzEix6bT33gmfRT6hVJ3Aw', 'Used', 'Used', 'en', '0'),
(1953, '5LcqmNBDp1eWmRTpUaVEcurWe', 'Available Stock', 'Available Stock', 'en', '0'),
(1954, 'pEBBKE4DJZKcdW0i6yzPfQ8vv', 'if leave empty \"No Stock\"', 'if leave empty \"No Stock\"', 'en', '0'),
(1955, 'N908FmSinDBgDPtUVXbaLkyMd', 'Upload File (Zip Format Only)', 'Upload File (Zip Format Only)', 'en', '0'),
(1956, 'hH3Ga0WF5eHEIpOCazqL7Y9Ee', 'Please select file of type .zip', 'Please select file of type .zip', 'en', '0'),
(1957, 'hc3uOilsKeGtwMJlXQI6dOpZL', 'External Url', 'External Url', 'en', '0'),
(1958, 'mdkdYHXkXEA1MrJzY2ldP3yU8', 'Local Shipping Price', 'Local Shipping Price', 'en', '0'),
(1959, 'Clwjdkqc68in3q2woDhyA2nKv', 'if leave empty \"free shipping\"', 'if leave empty \"free shipping\"', 'en', '0'),
(1960, 'GVLYyLVFg2k89cP2UZa53qtDE', 'World Shipping Price', 'World Shipping Price', 'en', '0'),
(1961, '5LEgq9H0cJLmuY5xIElWyd5Ge', 'Flash Deals?', 'Flash Deals?', 'en', '0'),
(1962, 'h4nZVLayQv23MIAKfiFoijJB1', 'Deal Start Date', 'Deal Start Date', 'en', '0'),
(1963, 'nSTwXl4A08gMd9lPUZ3BE8uSf', 'Deal End Date', 'Deal End Date', 'en', '0'),
(1964, 'vqUH6hxcHjT2OnGozJR5Ggnp6', 'Sno', 'Sno', 'en', '0'),
(1965, 'CbJ8EBN4ouy5H6vyS2KNB4QDG', 'Action', 'Action', 'en', '0'),
(1966, 'ShErr8v0rysMexFhBad0wKgoW', 'Edit', 'Edit', 'en', '0'),
(1967, 'rZmTzB4hOwUsHwG0QFlYtMtv8', 'Delete', 'Delete', 'en', '0'),
(1968, 'Ji8EOjQStAPwB00Sw2tWbiXfU', 'Are you sure you want to delete?', 'Are you sure you want to delete?', 'en', '0'),
(1969, 'ZesbOdu8g3xOfVQ9I6sSXzTyS', 'Sorry you can not edit this attribute type', 'Sorry you can not edit this attribute type', 'en', '0'),
(1970, 'tD3RcRp2yPs30qxfEFAOcAp8Z', 'Sorry you can not delete this attribute type', 'Sorry you can not delete this attribute type', 'en', '0'),
(1971, 'NjalaYW0nbkfxXz6bFVvCVoKl', 'Sorry you can not edit this attribute value', 'Sorry you can not edit this attribute value', 'en', '0'),
(1972, '8S7n2Oymnh00T3JAqXL78uNRt', 'Sorry you can not delete this attribute value', 'Sorry you can not delete this attribute value', 'en', '0'),
(1973, 'jSJrgpiiA5vjHycejlK0y25JL', 'Best Sellers', 'Best Sellers', 'en', '0'),
(1975, 'vbGsPyKpMYXagERtVW138iB1K', 'Products', 'Products', 'en', '0'),
(1976, '98brfqf2xfC3oPp5QmmgnDke9', 'Sales', 'Sales', 'en', '0'),
(1977, 'tMuP9bJ1BumhFZq6ils0L7k34', 'View Profile', 'View Profile', 'en', '0'),
(1978, 'KALz38AiUe9imXrLToHoaqiqu', 'Blog', 'Blog', 'en', '0'),
(1979, 'HjaoctynbiGLrFzBdY4PuYYcx', 'Read More', 'Read More', 'en', '0'),
(1980, 'hGcK7GfRyxXAR8qaJn23phmlP', 'Latest Posts', 'Latest Posts', 'en', '0'),
(1981, 'aLNMxf0De70hXM4yMaH4CylSS', 'Transaction Cancelled', 'Transaction Cancelled', 'en', '0'),
(1982, 'FMLi29Citz5LzsD2Bg2sx7zmJ', 'Your payment transaction has been cancelled.', 'Your payment transaction has been cancelled.', 'en', '0'),
(1983, 'DnGDiIX2cOTKcGwzBkzgtFamd', 'Cart', 'Cart', 'en', '0'),
(1984, 'DsxouM7aEOwKT7sKHeWAE4X0x', 'Product', 'Product', 'en', '0'),
(1985, 'RqViweAdS7JxULUeRw6Q40rwn', 'Quantity', 'Quantity', 'en', '0'),
(1986, 'rEldWOdWs3Wx0oIDMKdNIbDK5', 'Total', 'Total', 'en', '0'),
(1987, 'BmJSkmo6hBMOEqSCC09P7wR1c', 'Sold By', 'Sold By', 'en', '0'),
(1988, '2zJhk7bTqP6NJKjv7bWDfCSnr', 'Apply Coupon', 'Apply Coupon', 'en', '0'),
(1989, 'WtozsGUiQOoBCFkJIRzE8tyTR', 'Subtotal', 'Subtotal', 'en', '0'),
(1990, 'mZyrmS67hBRBAnKTIuDpa70Tb', 'Use Coupon Code', 'Use Coupon Code', 'en', '0'),
(1991, '7pzGG7UvZAND990SnP6IZ7rMv', 'Discount Price', 'Discount Price', 'en', '0'),
(1992, 'CyScpkK19OvoTFn2QIfZR5iJQ', 'Are you sure you want to remove coupon code?', 'Are you sure you want to remove coupon code?', 'en', '0'),
(1993, 'DqvOTahDK1NX1CpTC3pLB25V7', 'Processing Fee', 'Processing Fee', 'en', '0'),
(1994, 'tKP7kFT4jswmkIa3ChWRZfhZX', 'Continue Shopping', 'Continue Shopping', 'en', '0'),
(1995, 'nn9KThxSpovbSppbTfe2wyw8a', 'Checkout', 'Checkout', 'en', '0'),
(1996, 'LhObsB7kobkPITBldJKSRo1bT', 'Your cart is empty!', 'Your cart is empty!', 'en', '0'),
(1997, 'P5HxB6a5B52EDMXkC397HcxXN', 'Billing Details', 'Billing Details', 'en', '0'),
(1998, 'rA60bKLduGjng13BkaXP3sgba', 'First Name', 'First Name', 'en', '0'),
(1999, 'ppjWMmQCwld457cquMhDFzAd5', 'Last Name', 'Last Name', 'en', '0'),
(2000, 'UKKiAd8VZAB6JuzuwTpBafyDS', 'Company Name', 'Company Name', 'en', '0'),
(2001, 'd3n4T8YfDMfaYGoCu2Kol5fCy', 'Email Address', 'Email Address', 'en', '0'),
(2002, 'XoH7NqxeIJ48xZpWFxX3kf51u', 'Phone', 'Phone', 'en', '0'),
(2003, 'DZmNLvPx3oPjoDDlIpXmttS5s', 'Address', 'Address', 'en', '0'),
(2004, 'AS5ilJ6CU4THG2gOmUBH9Fnlo', 'Town/City', 'Town/City', 'en', '0'),
(2005, 'L7GigdtnTgA1QFu2Gvyyxv778', 'State', 'State', 'en', '0'),
(2006, 'La0yYN4b6OhlkjePLnh1razru', 'Postcode', 'Postcode', 'en', '0'),
(2007, 'Z6w4KP27cEulkJmqwwKaYwjNp', 'Country', 'Country', 'en', '0'),
(2008, 'BIC7ykN8Kr1r0fnFnk8pdYhsz', 'Different Shipping Address?', 'Different Shipping Address?', 'en', '0'),
(2009, 'slY1w4P1SkBt1oLVEZtMybQ7K', 'Order Notes', 'Order Notes', 'en', '0'),
(2010, 'nQXZeZLLPK2Z1jvh2orvt0FEQ', 'Select a Payment Method', 'Select a Payment Method', 'en', '0'),
(2011, 'dnkM9tY0QdjkOcZN2qFni3aBt', 'Place Order', 'Place Order', 'en', '0'),
(2012, 'YhaFYOu2jLMswzTfmN7E0gvyn', 'Contact', 'Contact', 'en', '0'),
(2013, '9anp0yeleXYCfTTqk9ehHHxHX', 'Get in touch', 'Get in touch', 'en', '0'),
(2014, 'Oetnq47WdqFZ64x87wWpoEMNZ', 'Email', 'Email', 'en', '0'),
(2015, 'BzFehYpaOAlLwdVuuF1Q2havW', 'Full Name', 'Full Name', 'en', '0'),
(2016, 'XIy5fSuLDREQCNaNpHltbJbbM', 'Your Message', 'Your Message', 'en', '0'),
(2017, 'HnE3AnoSzgedjwr8ysPnyNrHA', 'Contact Us', 'Contact Us', 'en', '0'),
(2018, 'V1xA7tvSL928pKqvhLgDLqlbf', 'Name', 'Name', 'en', '0'),
(2019, 'Ls9wcN0EJqiWk862er2Pg2vZq', 'Edit Attribute Type', 'Edit Attribute Type', 'en', '0'),
(2020, 'lQ52JBs6g9Yr2EkHsThs3d1yK', 'Edit Attribute Value', 'Edit Attribute Value', 'en', '0'),
(2021, 'Uz4WqTRPiNwqysJqxb84mnVgH', 'Edit Coupon', 'Edit Coupon', 'en', '0'),
(2022, 'fNkmrfgy9pBUg8W48Gbnorhbn', 'Connect with Us', 'Connect with Us', 'en', '0'),
(2023, '8tMhZEIjGqHxZRpl77PL0uNtU', 'More Info', 'More Info', 'en', '0'),
(2024, 'rJM2rZNft7Z2Bq4Tz61xED4Ob', 'User register', 'User register', 'en', '0'),
(2025, 'edrs2nsC6Mbh6j5y81ad3XfQI', 'Profile Setting', 'Profile Setting', 'en', '0'),
(2026, 'uUG3gLZJXgBiNA47x0fBI9JZt', 'My Orders', 'My Orders', 'en', '0'),
(2027, 'vEvNER3uv5je8mVWovZ2CRnuQ', 'My Wishlist', 'My Wishlist', 'en', '0'),
(2028, 'itW1hgH7JUL8yE0axMiKZVQ9r', 'Pages', 'Pages', 'en', '0'),
(2029, 'nJhae6y9yZwmj400ALRO4kyGj', 'Newsletter', 'Newsletter', 'en', '0'),
(2030, '0VosJ1HbzD7XWH86xtQc8sFlh', 'Your email address', 'Your email address', 'en', '0'),
(2031, 'E0NeumZNF9ZtZAHUzMRHLAaBB', 'Subscribe', 'Subscribe', 'en', '0'),
(2032, 'WTNK3FnBU3CcrdqBlMPDkr2fw', 'Forgot Your Password', 'Forgot Your Password', 'en', '0'),
(2033, 'dw2NWeZ6vlwZVPD06PyMeyWeV', 'Please enter your e-mail address', 'Please enter your e-mail address', 'en', '0'),
(2034, 'zmnxqjQl6M8IUKtgck2krmesO', 'Enter your email address', 'Enter your email address', 'en', '0'),
(2035, '0TPNMFGQ3liOcaj6Rnjw6m3GB', 'Send Password Reset Link', 'Send Password Reset Link', 'en', '0'),
(2036, 'R9vIiYM3cLmFoyNp8YnUlL41q', 'Forgot Password', 'Forgot Password', 'en', '0'),
(2037, 'BqOhhxXyeoW99ZAmeEMocTpAJ', 'You are receiving this email because we received a password reset request for your account', 'You are receiving this email because we received a password reset request for your account', 'en', '0'),
(2038, '16U46QIisbnLQHpVUAieMJVau', 'Reset Password', 'Reset Password', 'en', '0'),
(2039, '6LcZTNmLvjg8FKslOWY012J9v', 'Search your product', 'Search your product', 'en', '0'),
(2040, 'ESyHjP6MpJA5rmqJUcVUoNx7k', 'Shop', 'Shop', 'en', '0'),
(2041, '2SUjyHtD5HnYVx1RfMedZRYjo', 'Login', 'Login', 'en', '0'),
(2042, '7SzUv4W96PjazY25I1bwsBI85', 'My Account', 'My Account', 'en', '0'),
(2043, 'glWSwmgy9JuVDj7pIhKlkIJ0A', 'My Profile', 'My Profile', 'en', '0'),
(2044, 'w9F2zQvTJz9lYAwl57AfnL00Z', 'My Purchase', 'My Purchase', 'en', '0'),
(2045, 'epQFRrzLx8rR6YVHTX3uHE0uf', 'My Wallet', 'My Wallet', 'en', '0'),
(2046, 'r5emGp14PLUOe2cfowQme1pqv', 'My Product', 'My Product', 'en', '0'),
(2047, 'pdL2fblnFvUPWOLDP4QkMQhZE', 'My Coupon', 'My Coupon', 'en', '0'),
(2048, 'AMC28zJG8xl2FlMEN3vXonOb4', 'Logout', 'Logout', 'en', '0'),
(2049, 'OjLjVWtjVnhYzp5bc3puweeBw', 'New Releases', 'New Releases', 'en', '0'),
(2050, 'bu7aXn4mJdJCsHO1j260gTKBR', 'Top Deals', 'Top Deals', 'en', '0'),
(2051, 'bHdKXcQnWOTQvl6YfsXbvirqt', 'Start Selling', 'Start Selling', 'en', '0'),
(2052, 'L9nUodWETY5FzrSysVH89SKNr', 'Track Order', 'Track Order', 'en', '0'),
(2053, 'Tb9dt89CJD8IwNKGijxPVvDRL', 'Wishlist', 'Wishlist', 'en', '0'),
(2054, 'XyUag3RkJybb2rREcfGNFykNG', 'Previous', 'Previous', 'en', '0'),
(2055, '04OznmmNHa5mJtdkHH8fzeOE9', 'Next', 'Next', 'en', '0'),
(2056, 'MsA1yos46TzLaxeyyVK3fUj8M', 'Top Categories', 'Top Categories', 'en', '0'),
(2057, 'xmP2Hs39Z6vjwncLRL2l3FZ7q', 'More', 'More', 'en', '0'),
(2058, 'otf25C1kLKXPMWdwAzm05iFxv', 'Show More', 'Show More', 'en', '0'),
(2059, '4tnC20JksfSaWMAljBNsq4gZA', 'Physical Products', 'Physical Products', 'en', '0'),
(2060, 'bPhjxCbb1DA3pwOtgCt2TGyFD', 'Quick', 'Quick', 'en', '0'),
(2061, 'IaQN10sFlHmFjxXOuwofB0WdK', 'View', 'View', 'en', '0'),
(2062, 'LTXXNoAUfcVo3s6sSV59Bg878', 'Availability', 'Availability', 'en', '0'),
(2063, 'SRnE4OAEM5C696HcfbIgAwuQy', 'In Stock', 'In Stock', 'en', '0'),
(2064, 'KC43hP6R1OeGMpswAVEVLMmnP', 'Out of Stock', 'Out of Stock', 'en', '0'),
(2065, '1CowxGisfiVA6OZxOfdDc4fYS', 'View Details', 'View Details', 'en', '0'),
(2066, 'q40sJJJ65z7lWJ0uLzDoiln5J', 'Add to Wishlist', 'Add to Wishlist', 'en', '0'),
(2067, 'fyLYmY9CdCPQfufpR0Meq4S7X', 'Add to Cart', 'Add to Cart', 'en', '0'),
(2068, 'qWS4slAY7qgUGnftJDbpwBQPu', 'External Products', 'External Products', 'en', '0'),
(2069, 'FoKk2IbyEIUbzlzSaAShSSQCR', 'Digital Products', 'Digital Products', 'en', '0'),
(2070, 'HkvjnNlSXd3VJKDeGnuOQoS3h', 'Flash Deal Products', 'Flash Deal Products', 'en', '0'),
(2071, 'DQWVFYM01adhlzwLfXXKAikvj', 'days', 'days', 'en', '0'),
(2072, 'wHALsmvdwrNZUXFHrnFijDyWS', 'hours', 'hours', 'en', '0'),
(2073, 'odywIQiWzSX6prPcsOtizITWh', 'minutes', 'minutes', 'en', '0'),
(2074, 'uinydQdrsEeoTLUGtyalgeIK7', 'seconds', 'seconds', 'en', '0'),
(2075, '35uvdjO8aOkqw7MjQzLy54V5Y', 'Our Brands', 'Our Brands', 'en', '0'),
(2076, 'o03dEHRXbo0Oe45jgOxgSjk09', 'Order Id', 'Order Id', 'en', '0'),
(2077, 'j7OHlXqrHkLb1bNPw4OvtkxsT', 'Purchase Id', 'Purchase Id', 'en', '0'),
(2078, '0EP5qiOAADa7ptGtbweFhKqtq', 'Quantity & Price', 'Quantity & Price', 'en', '0'),
(2079, 'uag3j3Cy97HUCNgwFZpknvy3P', 'Attributes', 'Attributes', 'en', '0'),
(2080, '2L8WkTVuAFmH2LIl6vj8ciViK', 'Payment Type', 'Payment Type', 'en', '0'),
(2081, 'STN0WgBaYOFWfTmSMVbbQCPPj', 'Order Status', 'Order Status', 'en', '0'),
(2082, 'Ql6soAIXKjHWCEWrUKzmUQxTL', 'Payment Status', 'Payment Status', 'en', '0'),
(2083, '0jA4dYYJh6eQLiaW506wiWoHL', 'More Details', 'More Details', 'en', '0'),
(2084, '8smBZIg5Fcur2P92EQtk4mNSu', 'Completed', 'Completed', 'en', '0'),
(2085, 'fIzOQhu9zlSPTfqsL5hYxaZaa', 'Pending', 'Pending', 'en', '0'),
(2086, 'OGJWIGgyKaKwqy1eZctUQwtUR', 'Waiting for admin approval', 'Waiting for admin approval', 'en', '0'),
(2087, 'HQ7m6VfGT0dk3JBjbuCy6iXrV', 'My Orders Details', 'My Orders Details', 'en', '0'),
(2088, 'jS75U2E4GsIqDOPtfxSX9pJC1', 'Back', 'Back', 'en', '0'),
(2089, 'E1CDMfJ2UTXjuxTIPdcPus2UT', 'Payment Token', 'Payment Token', 'en', '0'),
(2090, 'TeZE98Oa2682tBMVK4TzERQss', 'Shipping Price', 'Shipping Price', 'en', '0'),
(2091, 'KHVWLNhii7LD4gRPAfB3H0hnQ', 'Purchase Date', 'Purchase Date', 'en', '0'),
(2092, 'fEG1nHzuC9r7LEzPOkCEAb6m5', 'Subtotal Price', 'Subtotal Price', 'en', '0'),
(2093, 'E3to6UjSi1vBHLsSLydIer66S', 'Total Price', 'Total Price', 'en', '0'),
(2094, 'mUa7QaK6UXUOcDmcHmEZEWYs2', 'Estimated Delivery time', 'Estimated Delivery time', 'en', '0'),
(2095, 'LVyTx7US2Yk0hnUhbguIV2rp4', 'Shipping Details', 'Shipping Details', 'en', '0'),
(2096, 'dOsh6qtfjUoBbEkEuAUCwWYEG', 'City', 'City', 'en', '0'),
(2097, 'MVuagFh5Ody3um1QK7nFalCyU', 'Other Notes', 'Other Notes', 'en', '0'),
(2098, 'CLPAotxH29DUF9qOoju1FWsgY', 'Order Tracking', 'Order Tracking', 'en', '0'),
(2099, 'waVTlnHt2WlaJrCaPialUcT6u', 'Image', 'Image', 'en', '0'),
(2100, 'pZpM8WQr9ClfQamkn9jjksiV5', 'Flash Deals', 'Flash Deals', 'en', '0'),
(2101, 'uCY76kUubNlzeS9Tl4g3D935a', 'Username', 'Username', 'en', '0'),
(2102, 'OlCMjQgkFViG8HX94smHe9oVH', 'Password', 'Password', 'en', '0'),
(2103, 'eOFDra0Xuy321OB78NMSdl4NV', 'Gender', 'Gender', 'en', '0'),
(2104, 'BjtfhiWxgMBej9o5dgAbVOezN', 'Male', 'Male', 'en', '0'),
(2105, 'XIAxa15ZqPuxTz4PWIM1vgYjI', 'Female', 'Female', 'en', '0'),
(2106, 'UczlLUvMG70AevbAdkpAmTi5f', 'Upload Banner', 'Upload Banner', 'en', '0'),
(2107, 'DYNCWZHw4DukMoyLHB2mVaajR', 'Upload Photo', 'Upload Photo', 'en', '0'),
(2108, 'qFAOjekx8cNy9Rr45a2Igjruz', 'About', 'About', 'en', '0'),
(2109, 'QNPy24g0wRpkz8QpgrFI9XbKo', 'Total Amount', 'Total Amount', 'en', '0'),
(2110, 'fil8Iy288H3qmnU2IzzujbkZ7', 'My Purchase Details', 'My Purchase Details', 'en', '0'),
(2111, 'Tv8HzG4R9jjZPFHuukxSWmTnn', 'Product Details', 'Product Details', 'en', '0'),
(2112, 'QLVwf0m4wrQwqSSd6aMVownl5', 'Vendor', 'Vendor', 'en', '0'),
(2113, 'M9RaEd5nHoCPGmgCL7WmhDL2p', 'Cancel & Refund', 'Cancel & Refund', 'en', '0'),
(2114, 'QCQ079YVzuIqKAdraDvvu0FRO', 'Rating & Reviews', 'Rating & Reviews', 'en', '0'),
(2115, 'Ro0tgsrOorDnAxggqm96fmhzF', 'Refund Request', 'Refund Request', 'en', '0'),
(2116, 'PVGV5NcbT8LfRf32YIn8y4jvY', 'Download File', 'Download File', 'en', '0'),
(2117, 'fMoUzApeuQsHffowSA5kTWs5D', 'Tracking', 'Tracking', 'en', '0'),
(2118, 'zpKAk0doWHiyxYvwDLoZx8cvq', 'Placed', 'Placed', 'en', '0'),
(2119, 'IQNyFXkjjUqRs6NDYkhVzJ1sP', 'Packed', 'Packed', 'en', '0'),
(2120, 'lBJkIbZ8dBHN5Pvah14dpNSkG', 'Shipped', 'Shipped', 'en', '0'),
(2121, 'L0Dl7qI8LJMGT2kmATzsmyVU1', 'Delivered', 'Delivered', 'en', '0'),
(2122, '4ejI4IKopIjPCGmgDDZmm6vk2', 'Rating', 'Rating', 'en', '0'),
(2123, 'MUvz0YMwdrgpl6IdTgSIE4quD', 'Write a review', 'Write a review', 'en', '0'),
(2124, 'le1nXB3rLd7mgjeooji7Torxl', 'Cancel & Refund Request', 'Cancel & Refund Request', 'en', '0'),
(2125, 'ZMcuz8pP9McKDlFkQlFV7xyq0', 'Reason', 'Reason', 'en', '0'),
(2126, 'detoIReO37u2HaDZxNParQ6Ds', 'Message', 'Message', 'en', '0'),
(2127, 'v5eQoM7VKwv8muMfLiwjvmKwT', 'Minimum withdrawal amount is', 'Minimum withdrawal amount is', 'en', '0'),
(2128, 'Ri7mzrrSeTOSW2V6WqbXQpUs0', 'Withdrawal Options', 'Withdrawal Options', 'en', '0'),
(2129, 'iXSPIUONntF1gHUFLBiP8FqQ9', 'Paypal Email ID', 'Paypal Email ID', 'en', '0'),
(2130, 'arUWqk7eStavPjH5PwB8ikSqE', 'Stripe Email ID', 'Stripe Email ID', 'en', '0'),
(2131, 'AstyiIWQnHItdsgYpzXTwGXaC', 'Withdraw Amount', 'Withdraw Amount', 'en', '0'),
(2132, 'IkJrUZIjaBGBTaVY3S6MhqOP5', 'How much amount would you like to Withdraw?', 'How much amount would you like to Withdraw?', 'en', '0'),
(2133, 'PfE2qBcYDQNjDfrjmLxKsW1mX', 'Available balance', 'Available balance', 'en', '0'),
(2134, '2qrG9bSnCUyNfBQKIoeC8LjAJ', 'Submit Withdrawal', 'Submit Withdrawal', 'en', '0'),
(2135, 'V2fFQ0AfoEXFIX8s6abBlFfCn', 'Date', 'Date', 'en', '0'),
(2136, 'bemS3bQaKzE1QAc7uXFwTJkCw', 'Withdrawal Type', 'Withdrawal Type', 'en', '0'),
(2137, 'DGDIdwZ50YjOUGzMTgFQU9Juw', 'Amount', 'Amount', 'en', '0'),
(2138, 'S1Hk0aiiXk5S9eeE89wyIoRy5', 'You are receiving this email newsletter subscription request', 'You are receiving this email newsletter subscription request', 'en', '0'),
(2139, 'v5pOgnFE0F2JQT5RDOUIcfjhv', 'Please confirm to this link', 'Please confirm to this link', 'en', '0'),
(2140, 'SxZ6mD8cfRWkGT72B2o8XvNA1', 'to activate your email subscription.', 'to activate your email subscription.', 'en', '0'),
(2141, '739b6JTNScP83WVPYMCsSbU0l', 'New Order Received', 'New Order Received', 'en', '0'),
(2142, 'EPAEBAN44mym0apbMMIirKpqh', 'Payment Confirmation', 'Payment Confirmation', 'en', '0'),
(2143, 'v0yKegirX5U80NNK7cfT4ipxT', 'Sub Total', 'Sub Total', 'en', '0'),
(2144, 'lYmjo2uvvsFFjciIsqYiHDkwC', 'Ratings', 'Ratings', 'en', '0'),
(2145, '5E8toggkjErCcPWFZhIP1Y44W', 'Qty', 'Qty', 'en', '0'),
(2146, 'VBGw0VlupIftqnftsk0d6OvNL', 'Estimate Delivery Time', 'Estimate Delivery Time', 'en', '0'),
(2147, 'Qk3Txacz9oWY8bbewYmQ49sfA', 'Video', 'Video', 'en', '0'),
(2148, 'duxkQYPTsCnsY61gzO0vbxs9P', 'Buy Now', 'Buy Now', 'en', '0'),
(2149, 'cdywT0tr3QuNcPzNl1rqDMINx', 'Edit Product', 'Edit Product', 'en', '0'),
(2150, 'ZfGh2s17cuTkotbrnQfjOjwQx', 'Share this', 'Share this', 'en', '0'),
(2151, 'aoda5bgwjMvipVNEpEGNhAajf', 'Review', 'Review', 'en', '0'),
(2152, 'PckAhNtI4E8GPqJOJXBp07rgD', 'Related Products', 'Related Products', 'en', '0'),
(2153, 'f4R9BNTmCF6VXb8JqAsU3AxQX', 'New Refund Request', 'New Refund Request', 'en', '0'),
(2154, '0hYi4QCD6WBlrRrE3yA1iQq1t', 'Order Details', 'Order Details', 'en', '0'),
(2155, 'saFdwLvIF3JhK49SO4vyYe2Rj', 'Buyer Details', 'Buyer Details', 'en', '0'),
(2156, 'cwiHCnBaBOeFkV1tLvaoa6JM6', 'Buyer Name', 'Buyer Name', 'en', '0'),
(2157, 'cJJL2Q54fnlgLZwhGBBO0vG0S', 'Buyer Email', 'Buyer Email', 'en', '0'),
(2158, 'ni4Z62Mt513bWc2aCoYC6ZkDw', 'Verify Your Email Address', 'Verify Your Email Address', 'en', '0'),
(2159, 'uhihKEPTDxlrxyTGredtJhEYh', 'Your registered email-id is', 'Your registered email-id is', 'en', '0'),
(2160, 'A47kHJj3pWbYtNjQmm7sawd0r', 'Please click on the below link to verify your email account', 'Please click on the below link to verify your email account', 'en', '0'),
(2161, 'iPeexUNFxOZlvHz10Aa6VVvmH', 'Verify Email', 'Verify Email', 'en', '0'),
(2162, 'Q0Hkjc6vLF0CSawJHeEehBcHH', 'Confirm Password', 'Confirm Password', 'en', '0'),
(2163, '8987Id0XvbVNh6jVLPyepltxe', 'Price : Low to High', 'Price : Low to High', 'en', '0'),
(2164, '7Y3mBJtDQyILf3QYccY5I79Ow', 'Price : High to low', 'Price : High to low', 'en', '0'),
(2165, '9N4YJMPnYbeJ4Cbq5Tyc5KS77', 'Physical', 'Physical', 'en', '0'),
(2166, 'K06RH7QVPpDINUE7vDurQByOP', 'External', 'External', 'en', '0'),
(2167, 'bOp4SkxpY6KgcuM34X9hA3fi1', 'Digital', 'Digital', 'en', '0'),
(2168, 'pq9froUSNGjouH7pqGY5MMQEE', 'Post Tags', 'Post Tags', 'en', '0'),
(2169, 'Jfu55HPmkaP2uipbuMeXD0CA6', 'Share this post', 'Share this post', 'en', '0'),
(2170, '55eF2isFOl3nKZTK2VHrSu95X', 'You must be', 'You must be', 'en', '0'),
(2171, 'SOAWmhPnTG3jWr1Zj9EAtz0sb', 'in to post a comment', 'in to post a comment', 'en', '0'),
(2172, '5SvP4lbUmKmJEzeUJGSqANM75', 'Add comment...', 'Add comment...', 'en', '0'),
(2173, 'WgPm52S3TtzJxz3lVGNO3AKLQ', 'logged', 'logged', 'en', '0'),
(2174, '82AFYwOscp4dfs1tS38HqsQVb', 'Start Sellings', 'Start Sellings', 'en', '0'),
(2175, 'w4egY98tbrK8BivBWR9RPjFXK', 'Become a Seller', 'Become a Seller', 'en', '0'),
(2176, 'VUkScuTQQaNWZPdlo975m9uHv', 'Start making money by selling your Physical, Digital, and External Producs to the thousands of buyers on', 'Start making money by selling your Physical, Digital, and External Producs to the thousands of buyers on', 'en', '0'),
(2177, 'GIRZNPpFD17DiaE7jxIoBhrDl', 'Sign Up Now', 'Sign Up Now', 'en', '0'),
(2178, 'PiVQ4iUxd7NmRxSKFXyw5NrXU', 'Your business is up and running in just a few steps', 'Your business is up and running in just a few steps', 'en', '0'),
(2179, 'oMIraoGdwE0p3zlzAm07IAO0o', 'Sign up', 'Sign up', 'en', '0'),
(2180, '9FytfAEO5CUBitnaffCkyiZq5', 'Upload your product item', 'Upload your product item', 'en', '0'),
(2181, 'onLwyVlcWAyvxVPdTjLNb3yoZ', 'Our review team will review your product item', 'Our review team will review your product item', 'en', '0'),
(2182, 'uK4wuUklhxOjmIhTfEIpDbfBf', 'Once your item has been approved it will appear on', 'Once your item has been approved it will appear on', 'en', '0'),
(2183, 'lnCgGYLFMuCbTMckad56O2wOb', 'Withdrawal request to your earning amount will be transferred', 'Withdrawal request to your earning amount will be transferred', 'en', '0'),
(2184, 'f4jHnlgF2V3fbx6z7j9vTQtVG', 'Enjoy our', 'Enjoy our', 'en', '0'),
(2185, 'GN77X0LA7fpCgiGmOWlJl2Cr8', 'commission rate without any restrictions', 'commission rate without any restrictions', 'en', '0'),
(2186, 'Zt5h4T4fq02SwLMPkA7aoKcK4', 'Receive a commission rate of', 'Receive a commission rate of', 'en', '0'),
(2187, 'kqFZY7KYuoHHk9ndnVoh2WD2z', 'No minimum number of sales required.', 'No minimum number of sales required.', 'en', '0'),
(2188, '4SiBSNCuMgY5QR6Y0zvu7qXmH', 'Unlimited products will be managed.', 'Unlimited products will be managed.', 'en', '0'),
(2189, 'uyuevt3254smDtgoLOSHNSGXF', 'No exclusivity required. Feel free to keep selling your products on your own website.', 'No exclusivity required. Feel free to keep selling your products on your own website.', 'en', '0'),
(2190, 'VtPkTczCevnZFoAEwTkOBjkSf', 'What can you sell?', 'What can you sell?', 'en', '0'),
(2191, 'opqHad8SAdxFcH5UjMLwyHRbF', 'Start your business today', 'Start your business today', 'en', '0'),
(2192, 'eT0GaV6kHnyakPILOfxbRCKJI', 'Payment Success', 'Payment Success', 'en', '0'),
(2193, 'NzFqHVjxwdHZ1Oj5OsBJK12BT', 'Your payment transaction was successful. Thank You!', 'Your payment transaction was successful. Thank You!', 'en', '0'),
(2194, 'xo2XHUMdJPh30yF9iCgrjcoWi', 'Transaction ID', 'Transaction ID', 'en', '0'),
(2195, 'ZeetJLFu7oRIAuzkMVHBAwbvm', 'Your order number', 'Your order number', 'en', '0'),
(2196, 'ZLlhHLgKq8FTl5aQuYMW2HmlY', 'No data found!', 'No data found!', 'en', '0'),
(2197, 'f973W7Cl8m61teSNxAfRfkMN0', 'Profile', 'Profile', 'en', '0'),
(2198, 'p1TqHfAtQnlpbZdImBBVbFAI0', 'Contact Me', 'Contact Me', 'en', '0'),
(2199, 'TM3S37YQzY6CbBISKvsgOyQ6V', 'About Me', 'About Me', 'en', '0'),
(2200, 'XbI8chjV1pZ2366ikpYR6qB8G', 'Phone Number', 'Phone Number', 'en', '0'),
(2201, 'vXCvMsSnBhPR1Lrump0ByWXNd', 'Send Message', 'Send Message', 'en', '0'),
(2202, 'S89fADrpDWMVVvUxUuTrpo6GB', 'New message received', 'New message received', 'en', '0'),
(2203, 'EwB8AE3WRCRIR9SJJXAsnqGwg', 'Message sent from', 'Message sent from', 'en', '0'),
(2204, 'x7JtYNIlRKvrmIdlcJE2gb9Ec', 'No product found!', 'No product found!', 'en', '0'),
(2205, 'KOwdL0nnoFCW7gqMjhFZ3ZmVK', 'New Withdrawal Request', 'New Withdrawal Request', 'en', '0'),
(2206, 'kRdASULvjqVz2BasWAKh8pJLP', 'Withdrawal Amount', 'Withdrawal Amount', 'en', '0'),
(2207, 'Rka9IYOBXYsKy5284cZOo3kwB', 'Please enter your username and password', 'Please enter your username and password', 'en', '0'),
(2208, 'vlCcW9MoZTqyqMnUcosKKnnBi', 'E-Mail Address / Username', 'E-Mail Address / Username', 'en', '0'),
(2209, 'Xkuw3uK2D07RTlKo3l405YRgQ', 'Forgot Password?', 'Forgot Password?', 'en', '0'),
(2210, '9qXXUceIdIebOI6UIdhMI0WeF', 'Don\'t have an account?', 'Don\'t have an account?', 'en', '0'),
(2211, '0lDQMFfRjATqvKxIiWlzZQrIo', 'Login with your social media account', 'Login with your social media account', 'en', '0'),
(2212, 'zF6LcUhOebRg39wQH9eeXYcEE', 'Register', 'Register', 'en', '0'),
(2213, 'FHlkN9bIb6pnAnzUbisDdGAyf', 'Create Your Account', 'Create Your Account', 'en', '0'),
(2214, 'lBmyCERbvi8QMquySzZQbZBYg', 'Please fill the following fields with appropriate', 'Please fill the following fields with appropriate', 'en', '0'),
(2215, 'k8gl9xilWeME7Mz0wHdlKRpHE', 'information to register form', 'information to register form', 'en', '0'),
(2216, 'iqdqpbaxR0SitKdTlgmpKB3UO', 'Your Name', 'Your Name', 'en', '0'),
(2217, 'ZBLuOVXxtEkFeCN8bQoTQNIHC', 'Enter your name', 'Enter your name', 'en', '0'),
(2218, 'zJfSSxjtrKAmWnEWVSTlv0fdQ', 'Enter your username', 'Enter your username', 'en', '0'),
(2219, 'jg0t4oTc4YNq0x0icb02VAp0X', 'User Type', 'User Type', 'en', '0'),
(2220, '3kjvDoNvUTg1GXU435KWQZFH9', 'Customer', 'Customer', 'en', '0'),
(2221, '27muCkP8io4GJXMNG5cRuyKDA', 'Enter your confirm password', 'Enter your confirm password', 'en', '0'),
(2222, 'w3bHPJCXUKpBouXyaCpaacZJZ', 'Captcha', 'Captcha', 'en', '0'),
(2223, 'DOldepikuItCGbmRt62qKAaXX', 'Already have an account?', 'Already have an account?', 'en', '0'),
(2224, 'cMWEtjytyVkPb4p7WMsYD3KVE', 'Add Attribute Type', 'Agregar tipo de atributo', 'es', '1911'),
(2225, 'DhEglxBVHE9m4d05gqNw5eezA', '404 Page Not Found!', '¡404 Pagina no encontrada!', 'es', '1912'),
(2226, 'NMSovsMo1fn0zrwjCUhfyQxLq', 'Home', 'Hogar', 'es', '1913'),
(2227, 'o4CQo8QYHb7cKvIBpmEiVkR5L', 'Attribute Type', 'Tipo de atributo', 'es', '1914'),
(2228, 'pX1YOaiM8ZLJRA0ylGxjQXRvb', 'Status', 'Estado', 'es', '1915'),
(2229, 'QzaOBpngz6dcVBr1CsjvkLVmF', 'Active', 'Activa', 'es', '1916'),
(2230, '8zAnNm2sO8SudOv1jSjnma9VY', 'InActive', 'Inactiva', 'es', '1917'),
(2231, 'r4mPyhpPODLauPcVdB1StGZBp', 'Display Order', 'Orden de visualización', 'es', '1918'),
(2232, 'Mikdm1srBAn2CbC3q3fDbsEhy', 'Submit', 'Enviar', 'es', '1919'),
(2233, 'aVjnchLOLtB7qeB6FRq4NVRVT', 'Add Attribute Value', 'Agregar valor de atributo', 'es', '1920'),
(2234, 'vrO9m6CGbuPok9Qv5KPyZ32lB', 'Attribute Value', 'Valor de atributo', 'es', '1921'),
(2235, '7yg1Hc3XGpHyHRxC1lNTeHk15', 'Add Coupon', 'Añadir cupón', 'es', '1922'),
(2236, '9qkxuDxaYpMsFrCA2gFEF8H18', 'Coupon Code', 'Código promocional', 'es', '1923'),
(2237, 'Kv4ixLAhaXmG0OAaGUF6bY9V4', 'Value', 'Valor', 'es', '1924'),
(2238, 'j4QGoiI2MRM1hmcsyR9YPvqth', 'Start Date', 'Fecha de inicio', 'es', '1925'),
(2239, '089HOya9s6tu64OX19fwMPeEg', 'End Date', 'Fecha final', 'es', '1926'),
(2240, 'oMgRADNo0ni0cBqEp1YCEIZmD', 'Add Product', 'Añadir Producto', 'es', '1927'),
(2241, 'RUMsgA6AqPfUfCcfdDKYJLe5k', 'Product Name', 'nombre del producto', 'es', '1928'),
(2242, '0LrwaOWOgrNw3dHrfKznjc7Nb', 'SKU', 'SKU', 'es', '1929'),
(2243, 'p5ylFda4r8pbjhqOlLHbUS5dP', 'Short Description', 'Breve descripción', 'es', '1930'),
(2244, 'B5SgspUWlglKSEc0FgnOom73g', 'Description', 'Descripción', 'es', '1931'),
(2245, 'dR5AcG41JLqPHfjpMUtZD5PQD', 'Categories', 'Categorias', 'es', '1932'),
(2246, 'fcBTxlJY8wtJ1nx42WthNdCEA', 'Video Url', 'URL del vídeo', 'es', '1933'),
(2247, 'NBzBGPwxVKDzLSl1n5txmsgw9', 'Price', 'Precio', 'es', '1934'),
(2248, '65ADfNczuHg00cIwUiFfmKpFk', 'Offer Price', 'Precio de oferta', 'es', '1935'),
(2249, 'shcpsgNLfrc8a48E89ADrqNs4', 'Upload Featured Image', 'Subir imagen destacada', 'es', '1936'),
(2250, 'PGu0bm4k5ueRwyllqZghs2O95', 'Please select file of type .jpg, .png or .jpeg', 'Seleccione un archivo de tipo .jpg, .png o .jpeg', 'es', '1937'),
(2251, 'U3MJpFrZY5XgeCltSJWcl9FBM', 'Upload Gallery Images', 'Subir imágenes de la galería', 'es', '1938'),
(2252, '53rpm68e5AGYMtiCGkDuUTr1a', 'Tags', 'Etiquetas', 'es', '1939'),
(2253, 'pc43hi0TyhXXoHlvqfJF7EUlJ', 'separate tag with commas', 'etiqueta separada con comas', 'es', '1940'),
(2254, 'YjudVC1rfikDZpZUSXFkfHehj', 'Allow Seo?', 'Permitir Seo?', 'es', '1941'),
(2255, 'Eu2JqH8QK7tkato9BAENcHJWT', 'Yes', 'si', 'es', '1942'),
(2256, 'M8yL8WbtJ7kmvf8f5k9Fhk0gc', 'No', 'No', 'es', '1943'),
(2257, 'VlxBpQAcp3gusJxFPNmW0oivg', 'SEO Meta Keywords (max 160 chars)', 'SEO Meta Keywords (máximo 160 caracteres)', 'es', '1944'),
(2258, 'CXIFX1YDrVfdUrzuriseZVRul', 'SEO Meta Description (max 160 chars)', 'Metadescripción SEO (máximo 160 caracteres)', 'es', '1945'),
(2259, 'Ow0C9eSIdkFLgPauQ6TbJR6Dq', 'Product Type', 'tipo de producto', 'es', '1946'),
(2260, 'jbF1SKOVm3l0CsMeD5LmTqsrY', 'Brand', 'Marca', 'es', '1947'),
(2261, 'tqwV8g2fLUDjm61NeikReekXc', 'Return Policy', 'Politica de devolucion', 'es', '1948'),
(2262, 'baXfzdk6shfa3qQp0QYe6UY5S', 'Estimate Time ( Product delivery time )', 'Tiempo estimado (tiempo de entrega del producto)', 'es', '1949'),
(2263, 'ij3w7X6mnwBNHarP6tjZrXV6j', 'Condition', 'Condición', 'es', '1950'),
(2264, 'Cuhv1X0aJeTJOg7Vq7KLOHG4T', 'New', 'Nueva', 'es', '1951'),
(2265, 'dFwxzEix6bT33gmfRT6hVJ3Aw', 'Used', 'Usada', 'es', '1952'),
(2266, '5LcqmNBDp1eWmRTpUaVEcurWe', 'Available Stock', 'Stock disponible', 'es', '1953'),
(2267, 'pEBBKE4DJZKcdW0i6yzPfQ8vv', 'if leave empty \"No Stock\"', 'Si deja vacía \"Sin Stock\"', 'es', '1954'),
(2268, 'N908FmSinDBgDPtUVXbaLkyMd', 'Upload File (Zip Format Only)', 'Subir archivo (solo formato zip)', 'es', '1955'),
(2269, 'hH3Ga0WF5eHEIpOCazqL7Y9Ee', 'Please select file of type .zip', 'Por favor seleccione un archivo de tipo .zip', 'es', '1956'),
(2270, 'hc3uOilsKeGtwMJlXQI6dOpZL', 'External Url', 'URL externa', 'es', '1957'),
(2271, 'mdkdYHXkXEA1MrJzY2ldP3yU8', 'Local Shipping Price', 'Precio de envío local', 'es', '1958'),
(2272, 'Clwjdkqc68in3q2woDhyA2nKv', 'if leave empty \"free shipping\"', 'si deja vacío \"envío gratis\"', 'es', '1959'),
(2273, 'GVLYyLVFg2k89cP2UZa53qtDE', 'World Shipping Price', 'Precio de envío mundial', 'es', '1960'),
(2274, '5LEgq9H0cJLmuY5xIElWyd5Ge', 'Flash Deals?', 'Ofertas Flash?', 'es', '1961'),
(2275, 'h4nZVLayQv23MIAKfiFoijJB1', 'Deal Start Date', 'Fecha de inicio de la oferta', 'es', '1962'),
(2276, 'nSTwXl4A08gMd9lPUZ3BE8uSf', 'Deal End Date', 'Fecha de finalización del trato', 'es', '1963'),
(2277, 'vqUH6hxcHjT2OnGozJR5Ggnp6', 'Sno', 'Sno', 'es', '1964'),
(2278, 'CbJ8EBN4ouy5H6vyS2KNB4QDG', 'Action', 'Acción', 'es', '1965'),
(2279, 'ShErr8v0rysMexFhBad0wKgoW', 'Edit', 'Editar', 'es', '1966'),
(2280, 'rZmTzB4hOwUsHwG0QFlYtMtv8', 'Delete', 'Eliminar', 'es', '1967'),
(2281, 'Ji8EOjQStAPwB00Sw2tWbiXfU', 'Are you sure you want to delete?', '¿Estás segura de que quieres eliminar?', 'es', '1968'),
(2282, 'ZesbOdu8g3xOfVQ9I6sSXzTyS', 'Sorry you can not edit this attribute type', 'Lo sentimos, no puedes editar este tipo de atributo', 'es', '1969'),
(2283, 'tD3RcRp2yPs30qxfEFAOcAp8Z', 'Sorry you can not delete this attribute type', 'Lo sentimos, no puedes eliminar este tipo de atributo', 'es', '1970'),
(2284, 'NjalaYW0nbkfxXz6bFVvCVoKl', 'Sorry you can not edit this attribute value', 'Lo sentimos, no puedes editar este valor de atributo', 'es', '1971'),
(2285, '8S7n2Oymnh00T3JAqXL78uNRt', 'Sorry you can not delete this attribute value', 'Lo sentimos, no puede eliminar este valor de atributo', 'es', '1972'),
(2286, 'jSJrgpiiA5vjHycejlK0y25JL', 'Best Sellers', 'Las más vendidas', 'es', '1973'),
(2287, 'vbGsPyKpMYXagERtVW138iB1K', 'Products', 'Productos', 'es', '1975'),
(2288, '98brfqf2xfC3oPp5QmmgnDke9', 'Sales', 'Ventas', 'es', '1976'),
(2289, 'tMuP9bJ1BumhFZq6ils0L7k34', 'View Profile', 'Ver perfil', 'es', '1977'),
(2290, 'KALz38AiUe9imXrLToHoaqiqu', 'Blog', 'Blog', 'es', '1978'),
(2291, 'HjaoctynbiGLrFzBdY4PuYYcx', 'Read More', 'Lee mas', 'es', '1979'),
(2292, 'hGcK7GfRyxXAR8qaJn23phmlP', 'Latest Posts', 'últimas publicaciones', 'es', '1980'),
(2293, 'aLNMxf0De70hXM4yMaH4CylSS', 'Transaction Cancelled', 'transacción cancelada', 'es', '1981'),
(2294, 'FMLi29Citz5LzsD2Bg2sx7zmJ', 'Your payment transaction has been cancelled.', 'Su transacción de pago ha sido cancelada.', 'es', '1982'),
(2295, 'DnGDiIX2cOTKcGwzBkzgtFamd', 'Cart', 'Carro', 'es', '1983'),
(2296, 'DsxouM7aEOwKT7sKHeWAE4X0x', 'Product', 'Producto', 'es', '1984'),
(2297, 'RqViweAdS7JxULUeRw6Q40rwn', 'Quantity', 'Cantidad', 'es', '1985'),
(2298, 'rEldWOdWs3Wx0oIDMKdNIbDK5', 'Total', 'Total', 'es', '1986'),
(2299, 'BmJSkmo6hBMOEqSCC09P7wR1c', 'Sold By', 'Vendido por', 'es', '1987'),
(2300, '2zJhk7bTqP6NJKjv7bWDfCSnr', 'Apply Coupon', 'Aplicar cupón', 'es', '1988'),
(2301, 'WtozsGUiQOoBCFkJIRzE8tyTR', 'Subtotal', 'Total parcial', 'es', '1989'),
(2302, 'mZyrmS67hBRBAnKTIuDpa70Tb', 'Use Coupon Code', 'Usar código de cupón', 'es', '1990'),
(2303, '7pzGG7UvZAND990SnP6IZ7rMv', 'Discount Price', 'Precio de descuento', 'es', '1991'),
(2304, 'CyScpkK19OvoTFn2QIfZR5iJQ', 'Are you sure you want to remove coupon code?', '¿Seguro que quieres eliminar el código de cupón?', 'es', '1992'),
(2305, 'DqvOTahDK1NX1CpTC3pLB25V7', 'Processing Fee', 'Cuota de procesamiento', 'es', '1993'),
(2306, 'tKP7kFT4jswmkIa3ChWRZfhZX', 'Continue Shopping', 'Seguir comprando', 'es', '1994'),
(2307, 'nn9KThxSpovbSppbTfe2wyw8a', 'Checkout', 'Revisa', 'es', '1995'),
(2308, 'LhObsB7kobkPITBldJKSRo1bT', 'Your cart is empty!', '¡Tu carrito esta vacío!', 'es', '1996'),
(2309, 'P5HxB6a5B52EDMXkC397HcxXN', 'Billing Details', 'Detalles de facturación', 'es', '1997'),
(2310, 'rA60bKLduGjng13BkaXP3sgba', 'First Name', 'Nombre de pila', 'es', '1998'),
(2311, 'ppjWMmQCwld457cquMhDFzAd5', 'Last Name', 'Apellido', 'es', '1999'),
(2312, 'UKKiAd8VZAB6JuzuwTpBafyDS', 'Company Name', 'nombre de empresa', 'es', '2000'),
(2313, 'd3n4T8YfDMfaYGoCu2Kol5fCy', 'Email Address', 'Dirección de correo electrónico', 'es', '2001'),
(2314, 'XoH7NqxeIJ48xZpWFxX3kf51u', 'Phone', 'Teléfono', 'es', '2002'),
(2315, 'DZmNLvPx3oPjoDDlIpXmttS5s', 'Address', 'Habla a', 'es', '2003'),
(2316, 'AS5ilJ6CU4THG2gOmUBH9Fnlo', 'Town/City', 'Pueblo / ciudad', 'es', '2004'),
(2317, 'L7GigdtnTgA1QFu2Gvyyxv778', 'State', 'Estado', 'es', '2005'),
(2318, 'La0yYN4b6OhlkjePLnh1razru', 'Postcode', 'Código postal', 'es', '2006'),
(2319, 'Z6w4KP27cEulkJmqwwKaYwjNp', 'Country', 'País', 'es', '2007'),
(2320, 'BIC7ykN8Kr1r0fnFnk8pdYhsz', 'Different Shipping Address?', '¿Dirección de envío diferente?', 'es', '2008'),
(2321, 'slY1w4P1SkBt1oLVEZtMybQ7K', 'Order Notes', 'pedidos', 'es', '2009'),
(2322, 'nQXZeZLLPK2Z1jvh2orvt0FEQ', 'Select a Payment Method', 'Seleccione un método de pago', 'es', '2010'),
(2323, 'dnkM9tY0QdjkOcZN2qFni3aBt', 'Place Order', 'Realizar pedido', 'es', '2011'),
(2324, 'YhaFYOu2jLMswzTfmN7E0gvyn', 'Contact', 'Contacto', 'es', '2012'),
(2325, '9anp0yeleXYCfTTqk9ehHHxHX', 'Get in touch', 'Ponerse en contacto', 'es', '2013'),
(2326, 'Oetnq47WdqFZ64x87wWpoEMNZ', 'Email', 'Email', 'es', '2014'),
(2327, 'BzFehYpaOAlLwdVuuF1Q2havW', 'Full Name', 'Nombre completo', 'es', '2015'),
(2328, 'XIy5fSuLDREQCNaNpHltbJbbM', 'Your Message', 'Tu mensaje', 'es', '2016'),
(2329, 'HnE3AnoSzgedjwr8ysPnyNrHA', 'Contact Us', 'Contacta con nosotras', 'es', '2017'),
(2330, 'V1xA7tvSL928pKqvhLgDLqlbf', 'Name', 'Nombre', 'es', '2018'),
(2331, 'Ls9wcN0EJqiWk862er2Pg2vZq', 'Edit Attribute Type', 'Editar tipo de atributo', 'es', '2019'),
(2332, 'lQ52JBs6g9Yr2EkHsThs3d1yK', 'Edit Attribute Value', 'Editar valor de atributo', 'es', '2020'),
(2333, 'Uz4WqTRPiNwqysJqxb84mnVgH', 'Edit Coupon', 'Editar cupón', 'es', '2021'),
(2334, 'fNkmrfgy9pBUg8W48Gbnorhbn', 'Connect with Us', 'Conéctate con nosotros', 'es', '2022'),
(2335, '8tMhZEIjGqHxZRpl77PL0uNtU', 'More Info', 'Más información', 'es', '2023'),
(2336, 'rJM2rZNft7Z2Bq4Tz61xED4Ob', 'User register', 'Registro de usuario', 'es', '2024'),
(2337, 'edrs2nsC6Mbh6j5y81ad3XfQI', 'Profile Setting', 'Ajustes de perfil', 'es', '2025'),
(2338, 'uUG3gLZJXgBiNA47x0fBI9JZt', 'My Orders', 'Mis ordenes', 'es', '2026'),
(2339, 'vEvNER3uv5je8mVWovZ2CRnuQ', 'My Wishlist', 'mi lista de deseos', 'es', '2027'),
(2340, 'itW1hgH7JUL8yE0axMiKZVQ9r', 'Pages', 'Páginas', 'es', '2028'),
(2341, 'nJhae6y9yZwmj400ALRO4kyGj', 'Newsletter', 'Boletin informativo', 'es', '2029'),
(2342, '0VosJ1HbzD7XWH86xtQc8sFlh', 'Your email address', 'Tu correo electrónico', 'es', '2030'),
(2343, 'E0NeumZNF9ZtZAHUzMRHLAaBB', 'Subscribe', 'Suscribir', 'es', '2031'),
(2344, 'WTNK3FnBU3CcrdqBlMPDkr2fw', 'Forgot Your Password', 'Olvidaste tu contraseña', 'es', '2032'),
(2345, 'dw2NWeZ6vlwZVPD06PyMeyWeV', 'Please enter your e-mail address', 'Por favor, introduzca su dirección de correo electrónico', 'es', '2033'),
(2346, 'zmnxqjQl6M8IUKtgck2krmesO', 'Enter your email address', 'Ingrese su dirección de correo electrónico', 'es', '2034'),
(2347, '0TPNMFGQ3liOcaj6Rnjw6m3GB', 'Send Password Reset Link', 'Enviar enlace de restablecimiento de contraseña', 'es', '2035'),
(2348, 'R9vIiYM3cLmFoyNp8YnUlL41q', 'Forgot Password', 'Se te olvidó tu contraseña', 'es', '2036'),
(2349, 'BqOhhxXyeoW99ZAmeEMocTpAJ', 'You are receiving this email because we received a password reset request for your account', 'Recibió este correo electrónico porque recibimos una solicitud de restablecimiento de contraseña para su cuenta', 'es', '2037'),
(2350, '16U46QIisbnLQHpVUAieMJVau', 'Reset Password', 'Restablecer la contraseña', 'es', '2038'),
(2351, '6LcZTNmLvjg8FKslOWY012J9v', 'Search your product', 'Busca tu producto', 'es', '2039'),
(2352, 'ESyHjP6MpJA5rmqJUcVUoNx7k', 'Shop', 'tienda', 'es', '2040'),
(2353, '2SUjyHtD5HnYVx1RfMedZRYjo', 'Login', 'Iniciar sesión', 'es', '2041'),
(2354, '7SzUv4W96PjazY25I1bwsBI85', 'My Account', 'Mi cuenta', 'es', '2042'),
(2355, 'glWSwmgy9JuVDj7pIhKlkIJ0A', 'My Profile', 'Mi perfil', 'es', '2043'),
(2356, 'w9F2zQvTJz9lYAwl57AfnL00Z', 'My Purchase', 'Mi compra', 'es', '2044'),
(2357, 'epQFRrzLx8rR6YVHTX3uHE0uf', 'My Wallet', 'Mi billetera', 'es', '2045'),
(2358, 'r5emGp14PLUOe2cfowQme1pqv', 'My Product', 'Mi producto', 'es', '2046'),
(2359, 'pdL2fblnFvUPWOLDP4QkMQhZE', 'My Coupon', 'Mi cupón', 'es', '2047'),
(2360, 'AMC28zJG8xl2FlMEN3vXonOb4', 'Logout', 'Cerrar sesión', 'es', '2048'),
(2361, 'OjLjVWtjVnhYzp5bc3puweeBw', 'New Releases', 'Nuevos lanzamientos', 'es', '2049'),
(2362, 'bu7aXn4mJdJCsHO1j260gTKBR', 'Top Deals', 'Ofertas principales', 'es', '2050'),
(2363, 'bHdKXcQnWOTQvl6YfsXbvirqt', 'Start Selling', 'Empieza a vender', 'es', '2051'),
(2364, 'L9nUodWETY5FzrSysVH89SKNr', 'Track Order', 'Orden de pista', 'es', '2052'),
(2365, 'Tb9dt89CJD8IwNKGijxPVvDRL', 'Wishlist', 'Lista de deseos', 'es', '2053'),
(2366, 'XyUag3RkJybb2rREcfGNFykNG', 'Previous', 'Previa', 'es', '2054'),
(2367, '04OznmmNHa5mJtdkHH8fzeOE9', 'Next', 'Próxima', 'es', '2055'),
(2368, 'MsA1yos46TzLaxeyyVK3fUj8M', 'Top Categories', 'Categorías principales', 'es', '2056'),
(2369, 'xmP2Hs39Z6vjwncLRL2l3FZ7q', 'More', 'Más', 'es', '2057'),
(2370, 'otf25C1kLKXPMWdwAzm05iFxv', 'Show More', 'Mostrar más', 'es', '2058'),
(2371, '4tnC20JksfSaWMAljBNsq4gZA', 'Physical Products', 'Productos físicos', 'es', '2059'),
(2372, 'bPhjxCbb1DA3pwOtgCt2TGyFD', 'Quick', 'Rápida', 'es', '2060'),
(2373, 'IaQN10sFlHmFjxXOuwofB0WdK', 'View', 'Ver', 'es', '2061'),
(2374, 'LTXXNoAUfcVo3s6sSV59Bg878', 'Availability', 'Disponibilidad', 'es', '2062'),
(2375, 'SRnE4OAEM5C696HcfbIgAwuQy', 'In Stock', 'En stock', 'es', '2063'),
(2376, 'KC43hP6R1OeGMpswAVEVLMmnP', 'Out of Stock', 'Agotado', 'es', '2064'),
(2377, '1CowxGisfiVA6OZxOfdDc4fYS', 'View Details', 'Ver detalles', 'es', '2065'),
(2378, 'q40sJJJ65z7lWJ0uLzDoiln5J', 'Add to Wishlist', 'Añadir a la lista de deseos', 'es', '2066'),
(2379, 'fyLYmY9CdCPQfufpR0Meq4S7X', 'Add to Cart', 'Añadir al carrito', 'es', '2067'),
(2380, 'qWS4slAY7qgUGnftJDbpwBQPu', 'External Products', 'Productos externos', 'es', '2068'),
(2381, 'FoKk2IbyEIUbzlzSaAShSSQCR', 'Digital Products', 'Productos digitales', 'es', '2069'),
(2382, 'HkvjnNlSXd3VJKDeGnuOQoS3h', 'Flash Deal Products', 'Productos Flash Deal', 'es', '2070'),
(2383, 'DQWVFYM01adhlzwLfXXKAikvj', 'days', 'dias', 'es', '2071'),
(2384, 'wHALsmvdwrNZUXFHrnFijDyWS', 'hours', 'horas', 'es', '2072'),
(2385, 'odywIQiWzSX6prPcsOtizITWh', 'minutes', 'minutos', 'es', '2073'),
(2386, 'uinydQdrsEeoTLUGtyalgeIK7', 'seconds', 'segundos', 'es', '2074'),
(2387, '35uvdjO8aOkqw7MjQzLy54V5Y', 'Our Brands', 'Nuestras marcas', 'es', '2075'),
(2388, 'o03dEHRXbo0Oe45jgOxgSjk09', 'Order Id', 'Solicitar ID', 'es', '2076'),
(2389, 'j7OHlXqrHkLb1bNPw4OvtkxsT', 'Purchase Id', 'ID de compra', 'es', '2077'),
(2390, '0EP5qiOAADa7ptGtbweFhKqtq', 'Quantity & Price', 'Cantidad y precio', 'es', '2078'),
(2391, 'uag3j3Cy97HUCNgwFZpknvy3P', 'Attributes', 'Atributos', 'es', '2079'),
(2392, '2L8WkTVuAFmH2LIl6vj8ciViK', 'Payment Type', 'Tipo de pago', 'es', '2080'),
(2393, 'STN0WgBaYOFWfTmSMVbbQCPPj', 'Order Status', 'Estado del pedido', 'es', '2081'),
(2394, 'Ql6soAIXKjHWCEWrUKzmUQxTL', 'Payment Status', 'Estado de pago', 'es', '2082'),
(2395, '0jA4dYYJh6eQLiaW506wiWoHL', 'More Details', 'Más detalles', 'es', '2083'),
(2396, '8smBZIg5Fcur2P92EQtk4mNSu', 'Completed', 'Terminada', 'es', '2084'),
(2397, 'fIzOQhu9zlSPTfqsL5hYxaZaa', 'Pending', 'Pendiente', 'es', '2085'),
(2398, 'OGJWIGgyKaKwqy1eZctUQwtUR', 'Waiting for admin approval', 'Esperando la aprobación del administrador', 'es', '2086'),
(2399, 'HQ7m6VfGT0dk3JBjbuCy6iXrV', 'My Orders Details', 'Detalles de mis pedidos', 'es', '2087'),
(2400, 'jS75U2E4GsIqDOPtfxSX9pJC1', 'Back', 'atrás', 'es', '2088'),
(2401, 'E1CDMfJ2UTXjuxTIPdcPus2UT', 'Payment Token', 'Token de pago', 'es', '2089'),
(2402, 'TeZE98Oa2682tBMVK4TzERQss', 'Shipping Price', 'Precio de envío', 'es', '2090'),
(2403, 'KHVWLNhii7LD4gRPAfB3H0hnQ', 'Purchase Date', 'Fecha de compra', 'es', '2091'),
(2404, 'fEG1nHzuC9r7LEzPOkCEAb6m5', 'Subtotal Price', 'Precio subtotal', 'es', '2092'),
(2405, 'E3to6UjSi1vBHLsSLydIer66S', 'Total Price', 'Precio total', 'es', '2093'),
(2406, 'mUa7QaK6UXUOcDmcHmEZEWYs2', 'Estimated Delivery time', 'Tiempo de entrega estimado', 'es', '2094'),
(2407, 'LVyTx7US2Yk0hnUhbguIV2rp4', 'Shipping Details', 'Detalles de envío', 'es', '2095'),
(2408, 'dOsh6qtfjUoBbEkEuAUCwWYEG', 'City', 'Ciudad', 'es', '2096'),
(2409, 'MVuagFh5Ody3um1QK7nFalCyU', 'Other Notes', 'Otras notas', 'es', '2097'),
(2410, 'CLPAotxH29DUF9qOoju1FWsgY', 'Order Tracking', 'Rastreo de orden', 'es', '2098'),
(2411, 'waVTlnHt2WlaJrCaPialUcT6u', 'Image', 'Imagen', 'es', '2099'),
(2412, 'pZpM8WQr9ClfQamkn9jjksiV5', 'Flash Deals', 'Ofertas Flash', 'es', '2100'),
(2413, 'uCY76kUubNlzeS9Tl4g3D935a', 'Username', 'Nombre de usuario', 'es', '2101'),
(2414, 'OlCMjQgkFViG8HX94smHe9oVH', 'Password', 'Contraseña', 'es', '2102'),
(2415, 'eOFDra0Xuy321OB78NMSdl4NV', 'Gender', 'Género', 'es', '2103'),
(2416, 'BjtfhiWxgMBej9o5dgAbVOezN', 'Male', 'Masculina', 'es', '2104'),
(2417, 'XIAxa15ZqPuxTz4PWIM1vgYjI', 'Female', 'Hembra', 'es', '2105'),
(2418, 'UczlLUvMG70AevbAdkpAmTi5f', 'Upload Banner', 'Subir banner', 'es', '2106'),
(2419, 'DYNCWZHw4DukMoyLHB2mVaajR', 'Upload Photo', 'Subir foto', 'es', '2107'),
(2420, 'qFAOjekx8cNy9Rr45a2Igjruz', 'About', 'Acerca de', 'es', '2108'),
(2421, 'QNPy24g0wRpkz8QpgrFI9XbKo', 'Total Amount', 'Cantidad total', 'es', '2109'),
(2422, 'fil8Iy288H3qmnU2IzzujbkZ7', 'My Purchase Details', 'Detalles de mi compra', 'es', '2110'),
(2423, 'Tv8HzG4R9jjZPFHuukxSWmTnn', 'Product Details', 'Detalles de producto', 'es', '2111'),
(2424, 'QLVwf0m4wrQwqSSd6aMVownl5', 'Vendor', 'Vendedora', 'es', '2112'),
(2425, 'M9RaEd5nHoCPGmgCL7WmhDL2p', 'Cancel & Refund', 'Cancelar y reembolso', 'es', '2113'),
(2426, 'QCQ079YVzuIqKAdraDvvu0FRO', 'Rating & Reviews', 'Calificación y comentarios', 'es', '2114'),
(2427, 'Ro0tgsrOorDnAxggqm96fmhzF', 'Refund Request', 'Petición para reembolso', 'es', '2115'),
(2428, 'PVGV5NcbT8LfRf32YIn8y4jvY', 'Download File', 'Descargar archivo', 'es', '2116'),
(2429, 'fMoUzApeuQsHffowSA5kTWs5D', 'Tracking', 'Rastreo', 'es', '2117'),
(2430, 'zpKAk0doWHiyxYvwDLoZx8cvq', 'Placed', 'Metida', 'es', '2118'),
(2431, 'IQNyFXkjjUqRs6NDYkhVzJ1sP', 'Packed', 'Llena', 'es', '2119'),
(2432, 'lBJkIbZ8dBHN5Pvah14dpNSkG', 'Shipped', 'Enviada', 'es', '2120'),
(2433, 'L0Dl7qI8LJMGT2kmATzsmyVU1', 'Delivered', 'Entregada', 'es', '2121'),
(2434, '4ejI4IKopIjPCGmgDDZmm6vk2', 'Rating', 'Clasificación', 'es', '2122'),
(2435, 'MUvz0YMwdrgpl6IdTgSIE4quD', 'Write a review', 'Escribe una reseña', 'es', '2123'),
(2436, 'le1nXB3rLd7mgjeooji7Torxl', 'Cancel & Refund Request', 'Cancelar y solicitud de reembolso', 'es', '2124'),
(2437, 'ZMcuz8pP9McKDlFkQlFV7xyq0', 'Reason', 'Razón', 'es', '2125'),
(2438, 'detoIReO37u2HaDZxNParQ6Ds', 'Message', 'Mensaje', 'es', '2126'),
(2439, 'v5eQoM7VKwv8muMfLiwjvmKwT', 'Minimum withdrawal amount is', 'El monto mínimo de retiro es', 'es', '2127'),
(2440, 'Ri7mzrrSeTOSW2V6WqbXQpUs0', 'Withdrawal Options', 'Opciones de retiro', 'es', '2128'),
(2441, 'iXSPIUONntF1gHUFLBiP8FqQ9', 'Paypal Email ID', 'ID de correo electrónico de PayPal', 'es', '2129'),
(2442, 'arUWqk7eStavPjH5PwB8ikSqE', 'Stripe Email ID', 'Stripe Email ID', 'es', '2130'),
(2443, 'AstyiIWQnHItdsgYpzXTwGXaC', 'Withdraw Amount', 'Retirar Monto', 'es', '2131'),
(2444, 'IkJrUZIjaBGBTaVY3S6MhqOP5', 'How much amount would you like to Withdraw?', '¿Cuánto le gustaría retirar?', 'es', '2132'),
(2445, 'PfE2qBcYDQNjDfrjmLxKsW1mX', 'Available balance', 'Saldo disponible', 'es', '2133'),
(2446, '2qrG9bSnCUyNfBQKIoeC8LjAJ', 'Submit Withdrawal', 'Enviar retiro', 'es', '2134'),
(2447, 'V2fFQ0AfoEXFIX8s6abBlFfCn', 'Date', 'Fecha', 'es', '2135'),
(2448, 'bemS3bQaKzE1QAc7uXFwTJkCw', 'Withdrawal Type', 'Tipo de retiro', 'es', '2136'),
(2449, 'DGDIdwZ50YjOUGzMTgFQU9Juw', 'Amount', 'Cantidad', 'es', '2137'),
(2450, 'S1Hk0aiiXk5S9eeE89wyIoRy5', 'You are receiving this email newsletter subscription request', 'Está recibiendo esta solicitud de suscripción al boletín por correo electrónico.', 'es', '2138'),
(2451, 'v5pOgnFE0F2JQT5RDOUIcfjhv', 'Please confirm to this link', 'Por favor confirme a este enlace', 'es', '2139'),
(2452, 'SxZ6mD8cfRWkGT72B2o8XvNA1', 'to activate your email subscription.', 'para activar su suscripción de correo electrónico.', 'es', '2140'),
(2453, '739b6JTNScP83WVPYMCsSbU0l', 'New Order Received', 'Nuevo pedido recibido', 'es', '2141'),
(2454, 'EPAEBAN44mym0apbMMIirKpqh', 'Payment Confirmation', 'Confirmación de pago', 'es', '2142'),
(2455, 'v0yKegirX5U80NNK7cfT4ipxT', 'Sub Total', 'Subtotal', 'es', '2143'),
(2456, 'lYmjo2uvvsFFjciIsqYiHDkwC', 'Ratings', 'Calificaciones', 'es', '2144'),
(2457, '5E8toggkjErCcPWFZhIP1Y44W', 'Qty', 'Cantidad', 'es', '2145'),
(2458, 'VBGw0VlupIftqnftsk0d6OvNL', 'Estimate Delivery Time', 'Tiempo estimado de entrega', 'es', '2146'),
(2459, 'Qk3Txacz9oWY8bbewYmQ49sfA', 'Video', 'Vídeo', 'es', '2147'),
(2460, 'duxkQYPTsCnsY61gzO0vbxs9P', 'Buy Now', 'Compra ahora', 'es', '2148'),
(2461, 'cdywT0tr3QuNcPzNl1rqDMINx', 'Edit Product', 'Editar producto', 'es', '2149'),
(2462, 'ZfGh2s17cuTkotbrnQfjOjwQx', 'Share this', 'Compartir este', 'es', '2150'),
(2463, 'aoda5bgwjMvipVNEpEGNhAajf', 'Review', 'revisión', 'es', '2151'),
(2464, 'PckAhNtI4E8GPqJOJXBp07rgD', 'Related Products', 'Productos relacionados', 'es', '2152'),
(2465, 'f4R9BNTmCF6VXb8JqAsU3AxQX', 'New Refund Request', 'Nueva solicitud de reembolso', 'es', '2153'),
(2466, '0hYi4QCD6WBlrRrE3yA1iQq1t', 'Order Details', 'Detalles del pedido', 'es', '2154'),
(2467, 'saFdwLvIF3JhK49SO4vyYe2Rj', 'Buyer Details', 'Detalles del comprador', 'es', '2155'),
(2468, 'cwiHCnBaBOeFkV1tLvaoa6JM6', 'Buyer Name', 'Nombre del comprador', 'es', '2156'),
(2469, 'cJJL2Q54fnlgLZwhGBBO0vG0S', 'Buyer Email', 'Correo electrónico del comprador', 'es', '2157'),
(2470, 'ni4Z62Mt513bWc2aCoYC6ZkDw', 'Verify Your Email Address', 'Verifique su dirección de correo electrónico', 'es', '2158'),
(2471, 'uhihKEPTDxlrxyTGredtJhEYh', 'Your registered email-id is', 'Su identificación de correo electrónico registrada es', 'es', '2159'),
(2472, 'A47kHJj3pWbYtNjQmm7sawd0r', 'Please click on the below link to verify your email account', 'Haga clic en el siguiente enlace para verificar su cuenta de correo electrónico', 'es', '2160'),
(2473, 'iPeexUNFxOZlvHz10Aa6VVvmH', 'Verify Email', 'Verificar correo electrónico', 'es', '2161'),
(2474, 'Q0Hkjc6vLF0CSawJHeEehBcHH', 'Confirm Password', 'Confirmar contraseña', 'es', '2162'),
(2475, '8987Id0XvbVNh6jVLPyepltxe', 'Price : Low to High', 'Precio: Baja a Alta', 'es', '2163'),
(2476, '7Y3mBJtDQyILf3QYccY5I79Ow', 'Price : High to low', 'Precio: Alta a baja', 'es', '2164'),
(2477, '9N4YJMPnYbeJ4Cbq5Tyc5KS77', 'Physical', 'Física', 'es', '2165'),
(2478, 'K06RH7QVPpDINUE7vDurQByOP', 'External', 'Externa', 'es', '2166'),
(2479, 'bOp4SkxpY6KgcuM34X9hA3fi1', 'Digital', 'Digital', 'es', '2167'),
(2480, 'pq9froUSNGjouH7pqGY5MMQEE', 'Post Tags', 'Etiquetas de publicaciones', 'es', '2168'),
(2481, 'Jfu55HPmkaP2uipbuMeXD0CA6', 'Share this post', 'Compartir esta publicacion', 'es', '2169'),
(2482, '55eF2isFOl3nKZTK2VHrSu95X', 'You must be', 'Usted debe ser', 'es', '2170'),
(2483, 'SOAWmhPnTG3jWr1Zj9EAtz0sb', 'in to post a comment', 'para publicar un comentario', 'es', '2171'),
(2484, '5SvP4lbUmKmJEzeUJGSqANM75', 'Add comment...', 'Agregar comentario...', 'es', '2172');
INSERT INTO `keywords` (`keyword_id`, `keyword_token`, `keyword_label`, `keyword_text`, `language_code`, `keyword_parent`) VALUES
(2485, 'WgPm52S3TtzJxz3lVGNO3AKLQ', 'logged', 'registrada', 'es', '2173'),
(2486, '82AFYwOscp4dfs1tS38HqsQVb', 'Start Sellings', 'Iniciar ventas', 'es', '2174'),
(2487, 'w4egY98tbrK8BivBWR9RPjFXK', 'Become a Seller', 'Hazte vendedor', 'es', '2175'),
(2488, 'VUkScuTQQaNWZPdlo975m9uHv', 'Start making money by selling your Physical, Digital, and External Producs to the thousands of buyers on', 'Comience a ganar dinero vendiendo sus productos físicos, digitales y externos a los miles de compradores en', 'es', '2176'),
(2489, 'GIRZNPpFD17DiaE7jxIoBhrDl', 'Sign Up Now', 'Regístrate ahora', 'es', '2177'),
(2490, 'PiVQ4iUxd7NmRxSKFXyw5NrXU', 'Your business is up and running in just a few steps', 'Su negocio está funcionando en unos pocos pasos.', 'es', '2178'),
(2491, 'oMIraoGdwE0p3zlzAm07IAO0o', 'Sign up', 'Regístrate', 'es', '2179'),
(2492, '9FytfAEO5CUBitnaffCkyiZq5', 'Upload your product item', 'Sube tu artículo de producto', 'es', '2180'),
(2493, 'onLwyVlcWAyvxVPdTjLNb3yoZ', 'Our review team will review your product item', 'Nuestro equipo de revisión revisará su artículo de producto', 'es', '2181'),
(2494, 'uK4wuUklhxOjmIhTfEIpDbfBf', 'Once your item has been approved it will appear on', 'Una vez que su artículo haya sido aprobado, aparecerá en', 'es', '2182'),
(2495, 'lnCgGYLFMuCbTMckad56O2wOb', 'Withdrawal request to your earning amount will be transferred', 'Se transferirá la solicitud de retiro a su monto de ganancias', 'es', '2183'),
(2496, 'f4jHnlgF2V3fbx6z7j9vTQtVG', 'Enjoy our', 'Disfruta de nuestra', 'es', '2184'),
(2497, 'GN77X0LA7fpCgiGmOWlJl2Cr8', 'commission rate without any restrictions', 'tasa de comisión sin restricciones', 'es', '2185'),
(2498, 'Zt5h4T4fq02SwLMPkA7aoKcK4', 'Receive a commission rate of', 'Reciba una tasa de comisión de', 'es', '2186'),
(2499, 'kqFZY7KYuoHHk9ndnVoh2WD2z', 'No minimum number of sales required.', 'No se requiere un número mínimo de ventas.', 'es', '2187'),
(2500, '4SiBSNCuMgY5QR6Y0zvu7qXmH', 'Unlimited products will be managed.', 'Se administrarán productos ilimitados.', 'es', '2188'),
(2501, 'uyuevt3254smDtgoLOSHNSGXF', 'No exclusivity required. Feel free to keep selling your products on your own website.', 'No se requiere exclusividad. Siéntase libre de seguir vendiendo sus productos en su propio sitio web.', 'es', '2189'),
(2502, 'VtPkTczCevnZFoAEwTkOBjkSf', 'What can you sell?', '¿Qué puedes vender?', 'es', '2190'),
(2503, 'opqHad8SAdxFcH5UjMLwyHRbF', 'Start your business today', 'Comience su negocio hoy', 'es', '2191'),
(2504, 'eT0GaV6kHnyakPILOfxbRCKJI', 'Payment Success', 'pago exitoso', 'es', '2192'),
(2505, 'NzFqHVjxwdHZ1Oj5OsBJK12BT', 'Your payment transaction was successful. Thank You!', 'Su transacción de pago fue exitosa. ¡Gracias!', 'es', '2193'),
(2506, 'xo2XHUMdJPh30yF9iCgrjcoWi', 'Transaction ID', 'ID de transacción', 'es', '2194'),
(2507, 'ZeetJLFu7oRIAuzkMVHBAwbvm', 'Your order number', 'Su número de orden', 'es', '2195'),
(2508, 'ZLlhHLgKq8FTl5aQuYMW2HmlY', 'No data found!', '¡Datos no encontrados!', 'es', '2196'),
(2509, 'f973W7Cl8m61teSNxAfRfkMN0', 'Profile', 'Perfil', 'es', '2197'),
(2510, 'p1TqHfAtQnlpbZdImBBVbFAI0', 'Contact Me', 'Contáctame', 'es', '2198'),
(2511, 'TM3S37YQzY6CbBISKvsgOyQ6V', 'About Me', 'Sobre mí', 'es', '2199'),
(2512, 'XbI8chjV1pZ2366ikpYR6qB8G', 'Phone Number', 'Número de teléfono', 'es', '2200'),
(2513, 'vXCvMsSnBhPR1Lrump0ByWXNd', 'Send Message', 'Enviar mensaje', 'es', '2201'),
(2514, 'S89fADrpDWMVVvUxUuTrpo6GB', 'New message received', 'Nuevo mensaje recibido', 'es', '2202'),
(2515, 'EwB8AE3WRCRIR9SJJXAsnqGwg', 'Message sent from', 'Mensaje enviado desde', 'es', '2203'),
(2516, 'x7JtYNIlRKvrmIdlcJE2gb9Ec', 'No product found!', '¡No se ha encontrado ningún producto!', 'es', '2204'),
(2517, 'KOwdL0nnoFCW7gqMjhFZ3ZmVK', 'New Withdrawal Request', 'Nueva solicitud de retiro', 'es', '2205'),
(2518, 'kRdASULvjqVz2BasWAKh8pJLP', 'Withdrawal Amount', 'Cantidad de retiro', 'es', '2206'),
(2519, 'Rka9IYOBXYsKy5284cZOo3kwB', 'Please enter your username and password', 'porfavor introduzca su nombre de usuario y contraseña', 'es', '2207'),
(2520, 'vlCcW9MoZTqyqMnUcosKKnnBi', 'E-Mail Address / Username', 'Dirección de correo electrónico / Nombre de usuario', 'es', '2208'),
(2521, 'Xkuw3uK2D07RTlKo3l405YRgQ', 'Forgot Password?', '¿Se te olvidó tu contraseña?', 'es', '2209'),
(2522, '9qXXUceIdIebOI6UIdhMI0WeF', 'Don\'t have an account?', '¿No tienes una cuenta?', 'es', '2210'),
(2523, '0lDQMFfRjATqvKxIiWlzZQrIo', 'Login with your social media account', 'Inicie sesión con su cuenta de redes sociales', 'es', '2211'),
(2524, 'zF6LcUhOebRg39wQH9eeXYcEE', 'Register', 'Registrarse', 'es', '2212'),
(2525, 'FHlkN9bIb6pnAnzUbisDdGAyf', 'Create Your Account', 'Crea tu cuenta', 'es', '2213'),
(2526, 'lBmyCERbvi8QMquySzZQbZBYg', 'Please fill the following fields with appropriate', 'Por favor complete los siguientes campos con', 'es', '2214'),
(2527, 'k8gl9xilWeME7Mz0wHdlKRpHE', 'information to register form', 'información para registrarse en el formulario', 'es', '2215'),
(2528, 'iqdqpbaxR0SitKdTlgmpKB3UO', 'Your Name', 'Tu nombre', 'es', '2216'),
(2529, 'ZBLuOVXxtEkFeCN8bQoTQNIHC', 'Enter your name', 'Introduzca su nombre', 'es', '2217'),
(2530, 'zJfSSxjtrKAmWnEWVSTlv0fdQ', 'Enter your username', 'Ingrese su nombre de usuario', 'es', '2218'),
(2531, 'jg0t4oTc4YNq0x0icb02VAp0X', 'User Type', 'Tipo de usuario', 'es', '2219'),
(2532, '3kjvDoNvUTg1GXU435KWQZFH9', 'Customer', 'Cliente', 'es', '2220'),
(2533, '27muCkP8io4GJXMNG5cRuyKDA', 'Enter your confirm password', 'Ingrese su contraseña de confirmación', 'es', '2221'),
(2534, 'w3bHPJCXUKpBouXyaCpaacZJZ', 'Captcha', 'Captcha', 'es', '2222'),
(2535, 'DOldepikuItCGbmRt62qKAaXX', 'Already have an account?', '¿Ya tienes una cuenta?', 'es', '2223'),
(2536, 'cMWEtjytyVkPb4p7WMsYD3KVE', 'Add Attribute Type', 'أضف نوع السمة', 'ar', '1911'),
(2537, 'DhEglxBVHE9m4d05gqNw5eezA', '404 Page Not Found!', '404 الصفحة غير موجودة!', 'ar', '1912'),
(2538, 'NMSovsMo1fn0zrwjCUhfyQxLq', 'Home', 'الصفحة الرئيسية', 'ar', '1913'),
(2539, 'o4CQo8QYHb7cKvIBpmEiVkR5L', 'Attribute Type', 'نوع السمة', 'ar', '1914'),
(2540, 'pX1YOaiM8ZLJRA0ylGxjQXRvb', 'Status', 'الحالة', 'ar', '1915'),
(2541, 'QzaOBpngz6dcVBr1CsjvkLVmF', 'Active', 'نشيط', 'ar', '1916'),
(2542, '8zAnNm2sO8SudOv1jSjnma9VY', 'InActive', 'غير نشط', 'ar', '1917'),
(2543, 'r4mPyhpPODLauPcVdB1StGZBp', 'Display Order', 'ترتيب العرض', 'ar', '1918'),
(2544, 'Mikdm1srBAn2CbC3q3fDbsEhy', 'Submit', 'إرسال', 'ar', '1919'),
(2545, 'aVjnchLOLtB7qeB6FRq4NVRVT', 'Add Attribute Value', 'أضف قيمة السمة', 'ar', '1920'),
(2546, 'vrO9m6CGbuPok9Qv5KPyZ32lB', 'Attribute Value', 'قيمة السمة', 'ar', '1921'),
(2547, '7yg1Hc3XGpHyHRxC1lNTeHk15', 'Add Coupon', 'أضف عرض', 'ar', '1922'),
(2548, '9qkxuDxaYpMsFrCA2gFEF8H18', 'Coupon Code', 'رمز الكوبون', 'ar', '1923'),
(2549, 'Kv4ixLAhaXmG0OAaGUF6bY9V4', 'Value', 'القيمة', 'ar', '1924'),
(2550, 'j4QGoiI2MRM1hmcsyR9YPvqth', 'Start Date', 'تاريخ البدء', 'ar', '1925'),
(2551, '089HOya9s6tu64OX19fwMPeEg', 'End Date', 'تاريخ الانتهاء', 'ar', '1926'),
(2552, 'oMgRADNo0ni0cBqEp1YCEIZmD', 'Add Product', 'أضف منتج', 'ar', '1927'),
(2553, 'RUMsgA6AqPfUfCcfdDKYJLe5k', 'Product Name', 'اسم المنتج', 'ar', '1928'),
(2554, '0LrwaOWOgrNw3dHrfKznjc7Nb', 'SKU', 'رمز التخزين التعريفي', 'ar', '1929'),
(2555, 'p5ylFda4r8pbjhqOlLHbUS5dP', 'Short Description', 'وصف قصير', 'ar', '1930'),
(2556, 'B5SgspUWlglKSEc0FgnOom73g', 'Description', 'وصف', 'ar', '1931'),
(2557, 'dR5AcG41JLqPHfjpMUtZD5PQD', 'Categories', 'التصنيفات', 'ar', '1932'),
(2558, 'fcBTxlJY8wtJ1nx42WthNdCEA', 'Video Url', 'رابط الفيديو', 'ar', '1933'),
(2559, 'NBzBGPwxVKDzLSl1n5txmsgw9', 'Price', 'السعر', 'ar', '1934'),
(2560, '65ADfNczuHg00cIwUiFfmKpFk', 'Offer Price', 'سعر العرض', 'ar', '1935'),
(2561, 'shcpsgNLfrc8a48E89ADrqNs4', 'Upload Featured Image', 'تحميل صورة مميزة', 'ar', '1936'),
(2562, 'PGu0bm4k5ueRwyllqZghs2O95', 'Please select file of type .jpg, .png or .jpeg', 'يرجى تحديد ملف من نوع .jpg أو .png أو .jpeg', 'ar', '1937'),
(2563, 'U3MJpFrZY5XgeCltSJWcl9FBM', 'Upload Gallery Images', 'تحميل صور المعرض', 'ar', '1938'),
(2564, '53rpm68e5AGYMtiCGkDuUTr1a', 'Tags', 'العلامات', 'ar', '1939'),
(2565, 'pc43hi0TyhXXoHlvqfJF7EUlJ', 'separate tag with commas', 'علامة منفصلة بفواصل', 'ar', '1940'),
(2566, 'YjudVC1rfikDZpZUSXFkfHehj', 'Allow Seo?', 'السماح سيو؟', 'ar', '1941'),
(2567, 'Eu2JqH8QK7tkato9BAENcHJWT', 'Yes', 'نعم', 'ar', '1942'),
(2568, 'M8yL8WbtJ7kmvf8f5k9Fhk0gc', 'No', 'لا', 'ar', '1943'),
(2569, 'VlxBpQAcp3gusJxFPNmW0oivg', 'SEO Meta Keywords (max 160 chars)', 'الكلمات الأساسية لتحسين محركات البحث (بحد أقصى 160 حرفًا)', 'ar', '1944'),
(2570, 'CXIFX1YDrVfdUrzuriseZVRul', 'SEO Meta Description (max 160 chars)', 'وصف SEO Meta (بحد أقصى 160 حرفًا)', 'ar', '1945'),
(2571, 'Ow0C9eSIdkFLgPauQ6TbJR6Dq', 'Product Type', 'نوع المنتج', 'ar', '1946'),
(2572, 'jbF1SKOVm3l0CsMeD5LmTqsrY', 'Brand', 'العلامة التجارية', 'ar', '1947'),
(2573, 'tqwV8g2fLUDjm61NeikReekXc', 'Return Policy', 'سياسة العائدات', 'ar', '1948'),
(2574, 'baXfzdk6shfa3qQp0QYe6UY5S', 'Estimate Time ( Product delivery time )', 'تقدير الوقت (وقت تسليم المنتج)', 'ar', '1949'),
(2575, 'ij3w7X6mnwBNHarP6tjZrXV6j', 'Condition', 'شرط', 'ar', '1950'),
(2576, 'Cuhv1X0aJeTJOg7Vq7KLOHG4T', 'New', 'جديد', 'ar', '1951'),
(2577, 'dFwxzEix6bT33gmfRT6hVJ3Aw', 'Used', 'مستخدم', 'ar', '1952'),
(2578, '5LcqmNBDp1eWmRTpUaVEcurWe', 'Available Stock', 'المخزون المتوفر', 'ar', '1953'),
(2579, 'pEBBKE4DJZKcdW0i6yzPfQ8vv', 'if leave empty \"No Stock\"', 'إذا تركت فارغة \"لا يوجد مخزون\"', 'ar', '1954'),
(2580, 'N908FmSinDBgDPtUVXbaLkyMd', 'Upload File (Zip Format Only)', 'تحميل ملف (تنسيق Zip فقط)', 'ar', '1955'),
(2581, 'hH3Ga0WF5eHEIpOCazqL7Y9Ee', 'Please select file of type .zip', 'يرجى تحديد ملف من نوع .zip', 'ar', '1956'),
(2582, 'hc3uOilsKeGtwMJlXQI6dOpZL', 'External Url', 'عنوان Url خارجي', 'ar', '1957'),
(2583, 'mdkdYHXkXEA1MrJzY2ldP3yU8', 'Local Shipping Price', 'سعر الشحن المحلي', 'ar', '1958'),
(2584, 'Clwjdkqc68in3q2woDhyA2nKv', 'if leave empty \"free shipping\"', 'إذا تركت فارغة \"شحن مجاني\"', 'ar', '1959'),
(2585, 'GVLYyLVFg2k89cP2UZa53qtDE', 'World Shipping Price', 'سعر الشحن العالمي', 'ar', '1960'),
(2586, '5LEgq9H0cJLmuY5xIElWyd5Ge', 'Flash Deals?', 'عروض فلاش؟', 'ar', '1961'),
(2587, 'h4nZVLayQv23MIAKfiFoijJB1', 'Deal Start Date', 'تاريخ بدء الصفقة', 'ar', '1962'),
(2588, 'nSTwXl4A08gMd9lPUZ3BE8uSf', 'Deal End Date', 'تاريخ انتهاء الصفقة', 'ar', '1963'),
(2589, 'vqUH6hxcHjT2OnGozJR5Ggnp6', 'Sno', 'سنو', 'ar', '1964'),
(2590, 'CbJ8EBN4ouy5H6vyS2KNB4QDG', 'Action', 'عمل', 'ar', '1965'),
(2591, 'ShErr8v0rysMexFhBad0wKgoW', 'Edit', 'تعديل', 'ar', '1966'),
(2592, 'rZmTzB4hOwUsHwG0QFlYtMtv8', 'Delete', 'حذف', 'ar', '1967'),
(2593, 'Ji8EOjQStAPwB00Sw2tWbiXfU', 'Are you sure you want to delete?', 'هل أنت متأكد أنك تريد حذف؟', 'ar', '1968'),
(2594, 'ZesbOdu8g3xOfVQ9I6sSXzTyS', 'Sorry you can not edit this attribute type', 'عذرا لا يمكنك تحرير نوع السمة هذا', 'ar', '1969'),
(2595, 'tD3RcRp2yPs30qxfEFAOcAp8Z', 'Sorry you can not delete this attribute type', 'عذرًا ، لا يمكنك حذف نوع السمة هذا', 'ar', '1970'),
(2596, 'NjalaYW0nbkfxXz6bFVvCVoKl', 'Sorry you can not edit this attribute value', 'عذرا لا يمكنك تحرير قيمة هذه السمة', 'ar', '1971'),
(2597, '8S7n2Oymnh00T3JAqXL78uNRt', 'Sorry you can not delete this attribute value', 'عذرًا ، لا يمكنك حذف قيمة هذه السمة', 'ar', '1972'),
(2598, 'jSJrgpiiA5vjHycejlK0y25JL', 'Best Sellers', 'الأفضل مبيعًا', 'ar', '1973'),
(2599, 'vbGsPyKpMYXagERtVW138iB1K', 'Products', 'منتجات', 'ar', '1975'),
(2600, '98brfqf2xfC3oPp5QmmgnDke9', 'Sales', 'مبيعات', 'ar', '1976'),
(2601, 'tMuP9bJ1BumhFZq6ils0L7k34', 'View Profile', 'عرض الصفحة الشخصية', 'ar', '1977'),
(2602, 'KALz38AiUe9imXrLToHoaqiqu', 'Blog', 'مدونة', 'ar', '1978'),
(2603, 'HjaoctynbiGLrFzBdY4PuYYcx', 'Read More', 'اقرأ أكثر', 'ar', '1979'),
(2604, 'hGcK7GfRyxXAR8qaJn23phmlP', 'Latest Posts', 'آخر المشاركات', 'ar', '1980'),
(2605, 'aLNMxf0De70hXM4yMaH4CylSS', 'Transaction Cancelled', 'تم إلغاء المعاملة', 'ar', '1981'),
(2606, 'FMLi29Citz5LzsD2Bg2sx7zmJ', 'Your payment transaction has been cancelled.', 'تم إلغاء معاملة الدفع الخاصة بك.', 'ar', '1982'),
(2607, 'DnGDiIX2cOTKcGwzBkzgtFamd', 'Cart', 'عربة التسوق', 'ar', '1983'),
(2608, 'DsxouM7aEOwKT7sKHeWAE4X0x', 'Product', 'المنتج', 'ar', '1984'),
(2609, 'RqViweAdS7JxULUeRw6Q40rwn', 'Quantity', 'كمية', 'ar', '1985'),
(2610, 'rEldWOdWs3Wx0oIDMKdNIbDK5', 'Total', 'مجموع', 'ar', '1986'),
(2611, 'BmJSkmo6hBMOEqSCC09P7wR1c', 'Sold By', 'تم بيعها من قبل', 'ar', '1987'),
(2612, '2zJhk7bTqP6NJKjv7bWDfCSnr', 'Apply Coupon', 'تطبيق القسيمة', 'ar', '1988'),
(2613, 'WtozsGUiQOoBCFkJIRzE8tyTR', 'Subtotal', 'المجموع الفرعي', 'ar', '1989'),
(2614, 'mZyrmS67hBRBAnKTIuDpa70Tb', 'Use Coupon Code', 'استخدم كود القسيمة', 'ar', '1990'),
(2615, '7pzGG7UvZAND990SnP6IZ7rMv', 'Discount Price', 'سعر الخصم', 'ar', '1991'),
(2616, 'CyScpkK19OvoTFn2QIfZR5iJQ', 'Are you sure you want to remove coupon code?', 'هل أنت متأكد أنك تريد إزالة رمز القسيمة؟', 'ar', '1992'),
(2617, 'DqvOTahDK1NX1CpTC3pLB25V7', 'Processing Fee', 'كلفة المعالجة', 'ar', '1993'),
(2618, 'tKP7kFT4jswmkIa3ChWRZfhZX', 'Continue Shopping', 'مواصلة التسوق', 'ar', '1994'),
(2619, 'nn9KThxSpovbSppbTfe2wyw8a', 'Checkout', 'الدفع', 'ar', '1995'),
(2620, 'LhObsB7kobkPITBldJKSRo1bT', 'Your cart is empty!', 'عربة التسوق فارغة!', 'ar', '1996'),
(2621, 'P5HxB6a5B52EDMXkC397HcxXN', 'Billing Details', 'تفاصيل الفاتورة', 'ar', '1997'),
(2622, 'rA60bKLduGjng13BkaXP3sgba', 'First Name', 'الاسم الاول', 'ar', '1998'),
(2623, 'ppjWMmQCwld457cquMhDFzAd5', 'Last Name', 'الكنية', 'ar', '1999'),
(2624, 'UKKiAd8VZAB6JuzuwTpBafyDS', 'Company Name', 'اسم الشركة', 'ar', '2000'),
(2625, 'd3n4T8YfDMfaYGoCu2Kol5fCy', 'Email Address', 'عنوان البريد الإلكتروني', 'ar', '2001'),
(2626, 'XoH7NqxeIJ48xZpWFxX3kf51u', 'Phone', 'هاتف', 'ar', '2002'),
(2627, 'DZmNLvPx3oPjoDDlIpXmttS5s', 'Address', 'عنوان', 'ar', '2003'),
(2628, 'AS5ilJ6CU4THG2gOmUBH9Fnlo', 'Town/City', 'المدينة / المدينة', 'ar', '2004'),
(2629, 'L7GigdtnTgA1QFu2Gvyyxv778', 'State', 'حالة', 'ar', '2005'),
(2630, 'La0yYN4b6OhlkjePLnh1razru', 'Postcode', 'الرمز البريدي', 'ar', '2006'),
(2631, 'Z6w4KP27cEulkJmqwwKaYwjNp', 'Country', 'بلد', 'ar', '2007'),
(2632, 'BIC7ykN8Kr1r0fnFnk8pdYhsz', 'Different Shipping Address?', 'عنوان شحن مختلف؟', 'ar', '2008'),
(2633, 'slY1w4P1SkBt1oLVEZtMybQ7K', 'Order Notes', 'ترتيب ملاحظات', 'ar', '2009'),
(2634, 'nQXZeZLLPK2Z1jvh2orvt0FEQ', 'Select a Payment Method', 'اختر طريقة الدفع', 'ar', '2010'),
(2635, 'dnkM9tY0QdjkOcZN2qFni3aBt', 'Place Order', 'مكان الامر', 'ar', '2011'),
(2636, 'YhaFYOu2jLMswzTfmN7E0gvyn', 'Contact', 'اتصل', 'ar', '2012'),
(2637, '9anp0yeleXYCfTTqk9ehHHxHX', 'Get in touch', 'ابقى على تواصل', 'ar', '2013'),
(2638, 'Oetnq47WdqFZ64x87wWpoEMNZ', 'Email', 'البريد الإلكتروني', 'ar', '2014'),
(2639, 'BzFehYpaOAlLwdVuuF1Q2havW', 'Full Name', 'الاسم الكامل', 'ar', '2015'),
(2640, 'XIy5fSuLDREQCNaNpHltbJbbM', 'Your Message', 'رسالتك', 'ar', '2016'),
(2641, 'HnE3AnoSzgedjwr8ysPnyNrHA', 'Contact Us', 'اتصل بنا', 'ar', '2017'),
(2642, 'V1xA7tvSL928pKqvhLgDLqlbf', 'Name', 'اسم', 'ar', '2018'),
(2643, 'Ls9wcN0EJqiWk862er2Pg2vZq', 'Edit Attribute Type', 'تحرير نوع السمة', 'ar', '2019'),
(2644, 'lQ52JBs6g9Yr2EkHsThs3d1yK', 'Edit Attribute Value', 'تحرير قيمة السمة', 'ar', '2020'),
(2645, 'Uz4WqTRPiNwqysJqxb84mnVgH', 'Edit Coupon', 'تحرير القسيمة', 'ar', '2021'),
(2646, 'fNkmrfgy9pBUg8W48Gbnorhbn', 'Connect with Us', 'اتصل بنا', 'ar', '2022'),
(2647, '8tMhZEIjGqHxZRpl77PL0uNtU', 'More Info', 'مزيد من المعلومات', 'ar', '2023'),
(2648, 'rJM2rZNft7Z2Bq4Tz61xED4Ob', 'User register', 'سجل المستخدم', 'ar', '2024'),
(2649, 'edrs2nsC6Mbh6j5y81ad3XfQI', 'Profile Setting', 'إعداد ملف التعريف', 'ar', '2025'),
(2650, 'uUG3gLZJXgBiNA47x0fBI9JZt', 'My Orders', 'طلباتي', 'ar', '2026'),
(2651, 'vEvNER3uv5je8mVWovZ2CRnuQ', 'My Wishlist', 'قائمة امنياتي', 'ar', '2027'),
(2652, 'itW1hgH7JUL8yE0axMiKZVQ9r', 'Pages', 'الصفحات', 'ar', '2028'),
(2653, 'nJhae6y9yZwmj400ALRO4kyGj', 'Newsletter', 'النشرة الإخبارية', 'ar', '2029'),
(2654, '0VosJ1HbzD7XWH86xtQc8sFlh', 'Your email address', 'عنوان بريدك الإلكتروني', 'ar', '2030'),
(2655, 'E0NeumZNF9ZtZAHUzMRHLAaBB', 'Subscribe', 'الإشتراك', 'ar', '2031'),
(2656, 'WTNK3FnBU3CcrdqBlMPDkr2fw', 'Forgot Your Password', 'نسيت رقمك السري', 'ar', '2032'),
(2657, 'dw2NWeZ6vlwZVPD06PyMeyWeV', 'Please enter your e-mail address', 'الرجاء إدخال عنوان البريد الإلكتروني الخاص بك', 'ar', '2033'),
(2658, 'zmnxqjQl6M8IUKtgck2krmesO', 'Enter your email address', 'أدخل عنوان بريدك الالكتروني', 'ar', '2034'),
(2659, '0TPNMFGQ3liOcaj6Rnjw6m3GB', 'Send Password Reset Link', 'إرسال رابط إعادة تعيين كلمة السر', 'ar', '2035'),
(2660, 'R9vIiYM3cLmFoyNp8YnUlL41q', 'Forgot Password', 'هل نسيت كلمة المرور', 'ar', '2036'),
(2661, 'BqOhhxXyeoW99ZAmeEMocTpAJ', 'You are receiving this email because we received a password reset request for your account', 'أنت تتلقى هذا البريد الإلكتروني لأننا تلقينا طلب إعادة تعيين كلمة المرور لحسابك', 'ar', '2037'),
(2662, '16U46QIisbnLQHpVUAieMJVau', 'Reset Password', 'إعادة تعيين كلمة المرور', 'ar', '2038'),
(2663, '6LcZTNmLvjg8FKslOWY012J9v', 'Search your product', 'ابحث عن منتجك', 'ar', '2039'),
(2664, 'ESyHjP6MpJA5rmqJUcVUoNx7k', 'Shop', 'متجر', 'ar', '2040'),
(2665, '2SUjyHtD5HnYVx1RfMedZRYjo', 'Login', 'تسجيل الدخول', 'ar', '2041'),
(2666, '7SzUv4W96PjazY25I1bwsBI85', 'My Account', 'حسابي', 'ar', '2042'),
(2667, 'glWSwmgy9JuVDj7pIhKlkIJ0A', 'My Profile', 'ملفي', 'ar', '2043'),
(2668, 'w9F2zQvTJz9lYAwl57AfnL00Z', 'My Purchase', 'شراء بلدي', 'ar', '2044'),
(2669, 'epQFRrzLx8rR6YVHTX3uHE0uf', 'My Wallet', 'محفظتي', 'ar', '2045'),
(2670, 'r5emGp14PLUOe2cfowQme1pqv', 'My Product', 'المنتج الخاص بي', 'ar', '2046'),
(2671, 'pdL2fblnFvUPWOLDP4QkMQhZE', 'My Coupon', 'قسيمتي', 'ar', '2047'),
(2672, 'AMC28zJG8xl2FlMEN3vXonOb4', 'Logout', 'تسجيل خروج', 'ar', '2048'),
(2673, 'OjLjVWtjVnhYzp5bc3puweeBw', 'New Releases', 'الإصدارات الجديدة', 'ar', '2049'),
(2674, 'bu7aXn4mJdJCsHO1j260gTKBR', 'Top Deals', 'أهم الصفقات', 'ar', '2050'),
(2675, 'bHdKXcQnWOTQvl6YfsXbvirqt', 'Start Selling', 'ابدأ بالبيع', 'ar', '2051'),
(2676, 'L9nUodWETY5FzrSysVH89SKNr', 'Track Order', 'ترتيب المسار', 'ar', '2052'),
(2677, 'Tb9dt89CJD8IwNKGijxPVvDRL', 'Wishlist', 'قائمة الرغبات', 'ar', '2053'),
(2678, 'XyUag3RkJybb2rREcfGNFykNG', 'Previous', 'السابق', 'ar', '2054'),
(2679, '04OznmmNHa5mJtdkHH8fzeOE9', 'Next', 'التالى', 'ar', '2055'),
(2680, 'MsA1yos46TzLaxeyyVK3fUj8M', 'Top Categories', 'أهم الفئات', 'ar', '2056'),
(2681, 'xmP2Hs39Z6vjwncLRL2l3FZ7q', 'More', 'أكثر', 'ar', '2057'),
(2682, 'otf25C1kLKXPMWdwAzm05iFxv', 'Show More', 'أظهر المزيد', 'ar', '2058'),
(2683, '4tnC20JksfSaWMAljBNsq4gZA', 'Physical Products', 'المنتجات المادية', 'ar', '2059'),
(2684, 'bPhjxCbb1DA3pwOtgCt2TGyFD', 'Quick', 'بسرعة', 'ar', '2060'),
(2685, 'IaQN10sFlHmFjxXOuwofB0WdK', 'View', 'رأي', 'ar', '2061'),
(2686, 'LTXXNoAUfcVo3s6sSV59Bg878', 'Availability', 'التوفر', 'ar', '2062'),
(2687, 'SRnE4OAEM5C696HcfbIgAwuQy', 'In Stock', 'في المخزن', 'ar', '2063'),
(2688, 'KC43hP6R1OeGMpswAVEVLMmnP', 'Out of Stock', 'إنتهى من المخزن', 'ar', '2064'),
(2689, '1CowxGisfiVA6OZxOfdDc4fYS', 'View Details', 'عرض التفاصيل', 'ar', '2065'),
(2690, 'q40sJJJ65z7lWJ0uLzDoiln5J', 'Add to Wishlist', 'أضف إلى قائمة الامنيات', 'ar', '2066'),
(2691, 'fyLYmY9CdCPQfufpR0Meq4S7X', 'Add to Cart', 'أضف إلى السلة', 'ar', '2067'),
(2692, 'qWS4slAY7qgUGnftJDbpwBQPu', 'External Products', 'المنتجات الخارجية', 'ar', '2068'),
(2693, 'FoKk2IbyEIUbzlzSaAShSSQCR', 'Digital Products', 'المنتجات الرقمية', 'ar', '2069'),
(2694, 'HkvjnNlSXd3VJKDeGnuOQoS3h', 'Flash Deal Products', 'منتجات فلاش فلاش', 'ar', '2070'),
(2695, 'DQWVFYM01adhlzwLfXXKAikvj', 'days', 'أيام', 'ar', '2071'),
(2696, 'wHALsmvdwrNZUXFHrnFijDyWS', 'hours', 'ساعات', 'ar', '2072'),
(2697, 'odywIQiWzSX6prPcsOtizITWh', 'minutes', 'الدقائق', 'ar', '2073'),
(2698, 'uinydQdrsEeoTLUGtyalgeIK7', 'seconds', 'ثواني', 'ar', '2074'),
(2699, '35uvdjO8aOkqw7MjQzLy54V5Y', 'Our Brands', 'ماركاتنا', 'ar', '2075'),
(2700, 'o03dEHRXbo0Oe45jgOxgSjk09', 'Order Id', 'رقم التعريف الخاص بالطلب', 'ar', '2076'),
(2701, 'j7OHlXqrHkLb1bNPw4OvtkxsT', 'Purchase Id', 'معرف الشراء', 'ar', '2077'),
(2702, '0EP5qiOAADa7ptGtbweFhKqtq', 'Quantity & Price', 'سعر الجملة', 'ar', '2078'),
(2703, 'uag3j3Cy97HUCNgwFZpknvy3P', 'Attributes', 'السمات', 'ar', '2079'),
(2704, '2L8WkTVuAFmH2LIl6vj8ciViK', 'Payment Type', 'نوع الدفع', 'ar', '2080'),
(2705, 'STN0WgBaYOFWfTmSMVbbQCPPj', 'Order Status', 'حالة الطلب', 'ar', '2081'),
(2706, 'Ql6soAIXKjHWCEWrUKzmUQxTL', 'Payment Status', 'حالة السداد', 'ar', '2082'),
(2707, '0jA4dYYJh6eQLiaW506wiWoHL', 'More Details', 'المزيد من التفاصيل', 'ar', '2083'),
(2708, '8smBZIg5Fcur2P92EQtk4mNSu', 'Completed', 'منجز', 'ar', '2084'),
(2709, 'fIzOQhu9zlSPTfqsL5hYxaZaa', 'Pending', 'قيد الانتظار', 'ar', '2085'),
(2710, 'OGJWIGgyKaKwqy1eZctUQwtUR', 'Waiting for admin approval', 'في انتظار موافقة المشرف', 'ar', '2086'),
(2711, 'HQ7m6VfGT0dk3JBjbuCy6iXrV', 'My Orders Details', 'تفاصيل طلبياتي', 'ar', '2087'),
(2712, 'jS75U2E4GsIqDOPtfxSX9pJC1', 'Back', 'عودة', 'ar', '2088'),
(2713, 'E1CDMfJ2UTXjuxTIPdcPus2UT', 'Payment Token', 'رمز الدفع', 'ar', '2089'),
(2714, 'TeZE98Oa2682tBMVK4TzERQss', 'Shipping Price', 'سعر الشحن', 'ar', '2090'),
(2715, 'KHVWLNhii7LD4gRPAfB3H0hnQ', 'Purchase Date', 'تاريخ الشراء', 'ar', '2091'),
(2716, 'fEG1nHzuC9r7LEzPOkCEAb6m5', 'Subtotal Price', 'سعر المجموع الفرعي', 'ar', '2092'),
(2717, 'E3to6UjSi1vBHLsSLydIer66S', 'Total Price', 'السعر الكلي', 'ar', '2093'),
(2718, 'mUa7QaK6UXUOcDmcHmEZEWYs2', 'Estimated Delivery time', 'يقدر وقت التسليم', 'ar', '2094'),
(2719, 'LVyTx7US2Yk0hnUhbguIV2rp4', 'Shipping Details', 'تفاصيل الشحن', 'ar', '2095'),
(2720, 'dOsh6qtfjUoBbEkEuAUCwWYEG', 'City', 'مدينة', 'ar', '2096'),
(2721, 'MVuagFh5Ody3um1QK7nFalCyU', 'Other Notes', 'الملاحظات الأخرى', 'ar', '2097'),
(2722, 'CLPAotxH29DUF9qOoju1FWsgY', 'Order Tracking', 'تتبع الطلب', 'ar', '2098'),
(2723, 'waVTlnHt2WlaJrCaPialUcT6u', 'Image', 'صورة', 'ar', '2099'),
(2724, 'pZpM8WQr9ClfQamkn9jjksiV5', 'Flash Deals', 'عروض فلاش', 'ar', '2100'),
(2725, 'uCY76kUubNlzeS9Tl4g3D935a', 'Username', 'اسم المستخدم', 'ar', '2101'),
(2726, 'OlCMjQgkFViG8HX94smHe9oVH', 'Password', 'كلمه السر', 'ar', '2102'),
(2727, 'eOFDra0Xuy321OB78NMSdl4NV', 'Gender', 'جنس', 'ar', '2103'),
(2728, 'BjtfhiWxgMBej9o5dgAbVOezN', 'Male', 'الذكر', 'ar', '2104'),
(2729, 'XIAxa15ZqPuxTz4PWIM1vgYjI', 'Female', 'أنثى', 'ar', '2105'),
(2730, 'UczlLUvMG70AevbAdkpAmTi5f', 'Upload Banner', 'تحميل بانر', 'ar', '2106'),
(2731, 'DYNCWZHw4DukMoyLHB2mVaajR', 'Upload Photo', 'حمل الصورة', 'ar', '2107'),
(2732, 'qFAOjekx8cNy9Rr45a2Igjruz', 'About', 'حول', 'ar', '2108'),
(2733, 'QNPy24g0wRpkz8QpgrFI9XbKo', 'Total Amount', 'المبلغ الإجمالي', 'ar', '2109'),
(2734, 'fil8Iy288H3qmnU2IzzujbkZ7', 'My Purchase Details', 'تفاصيل الشراء الخاصة بي', 'ar', '2110'),
(2735, 'Tv8HzG4R9jjZPFHuukxSWmTnn', 'Product Details', 'تفاصيل المنتج', 'ar', '2111'),
(2736, 'QLVwf0m4wrQwqSSd6aMVownl5', 'Vendor', 'بائع', 'ar', '2112'),
(2737, 'M9RaEd5nHoCPGmgCL7WmhDL2p', 'Cancel & Refund', 'إلغاء واسترداد', 'ar', '2113'),
(2738, 'QCQ079YVzuIqKAdraDvvu0FRO', 'Rating & Reviews', 'التقييم والمراجعات', 'ar', '2114'),
(2739, 'Ro0tgsrOorDnAxggqm96fmhzF', 'Refund Request', 'طلب ارجاع', 'ar', '2115'),
(2740, 'PVGV5NcbT8LfRf32YIn8y4jvY', 'Download File', 'تحميل الملف', 'ar', '2116'),
(2741, 'fMoUzApeuQsHffowSA5kTWs5D', 'Tracking', 'تتبع', 'ar', '2117'),
(2742, 'zpKAk0doWHiyxYvwDLoZx8cvq', 'Placed', 'وضعت', 'ar', '2118'),
(2743, 'IQNyFXkjjUqRs6NDYkhVzJ1sP', 'Packed', 'معباه', 'ar', '2119'),
(2744, 'lBJkIbZ8dBHN5Pvah14dpNSkG', 'Shipped', 'شحنها', 'ar', '2120'),
(2745, 'L0Dl7qI8LJMGT2kmATzsmyVU1', 'Delivered', 'تم التوصيل', 'ar', '2121'),
(2746, '4ejI4IKopIjPCGmgDDZmm6vk2', 'Rating', 'تقييم', 'ar', '2122'),
(2747, 'MUvz0YMwdrgpl6IdTgSIE4quD', 'Write a review', 'أكتب مراجعة', 'ar', '2123'),
(2748, 'le1nXB3rLd7mgjeooji7Torxl', 'Cancel & Refund Request', 'طلب إلغاء واسترداد', 'ar', '2124'),
(2749, 'ZMcuz8pP9McKDlFkQlFV7xyq0', 'Reason', 'السبب', 'ar', '2125'),
(2750, 'detoIReO37u2HaDZxNParQ6Ds', 'Message', 'رسالة', 'ar', '2126'),
(2751, 'v5eQoM7VKwv8muMfLiwjvmKwT', 'Minimum withdrawal amount is', 'الحد الأدنى لمبلغ السحب هو', 'ar', '2127'),
(2752, 'Ri7mzrrSeTOSW2V6WqbXQpUs0', 'Withdrawal Options', 'خيارات الانسحاب', 'ar', '2128'),
(2753, 'iXSPIUONntF1gHUFLBiP8FqQ9', 'Paypal Email ID', 'معرف البريد الإلكتروني باي بال', 'ar', '2129'),
(2754, 'arUWqk7eStavPjH5PwB8ikSqE', 'Stripe Email ID', 'معرف شريط البريد الإلكتروني', 'ar', '2130'),
(2755, 'AstyiIWQnHItdsgYpzXTwGXaC', 'Withdraw Amount', 'سحب المبلغ', 'ar', '2131'),
(2756, 'IkJrUZIjaBGBTaVY3S6MhqOP5', 'How much amount would you like to Withdraw?', 'كم المبلغ الذي ترغب في سحبه؟', 'ar', '2132'),
(2757, 'PfE2qBcYDQNjDfrjmLxKsW1mX', 'Available balance', 'الرصيد المتوفر', 'ar', '2133'),
(2758, '2qrG9bSnCUyNfBQKIoeC8LjAJ', 'Submit Withdrawal', 'تقديم الانسحاب', 'ar', '2134'),
(2759, 'V2fFQ0AfoEXFIX8s6abBlFfCn', 'Date', 'تاريخ', 'ar', '2135'),
(2760, 'bemS3bQaKzE1QAc7uXFwTJkCw', 'Withdrawal Type', 'نوع الانسحاب', 'ar', '2136'),
(2761, 'DGDIdwZ50YjOUGzMTgFQU9Juw', 'Amount', 'كمية', 'ar', '2137'),
(2762, 'S1Hk0aiiXk5S9eeE89wyIoRy5', 'You are receiving this email newsletter subscription request', 'أنت تتلقى طلب الاشتراك في هذه الرسالة الإخبارية عبر البريد الإلكتروني', 'ar', '2138'),
(2763, 'v5pOgnFE0F2JQT5RDOUIcfjhv', 'Please confirm to this link', 'يرجى التأكيد على هذا الرابط', 'ar', '2139'),
(2764, 'SxZ6mD8cfRWkGT72B2o8XvNA1', 'to activate your email subscription.', 'لتنشيط اشتراك البريد الإلكتروني الخاص بك.', 'ar', '2140'),
(2765, '739b6JTNScP83WVPYMCsSbU0l', 'New Order Received', 'تم تلقي طلب جديد', 'ar', '2141'),
(2766, 'EPAEBAN44mym0apbMMIirKpqh', 'Payment Confirmation', 'تأكيد الدفعة', 'ar', '2142'),
(2767, 'v0yKegirX5U80NNK7cfT4ipxT', 'Sub Total', 'المجموع الفرعي', 'ar', '2143'),
(2768, 'lYmjo2uvvsFFjciIsqYiHDkwC', 'Ratings', 'التقييمات', 'ar', '2144'),
(2769, '5E8toggkjErCcPWFZhIP1Y44W', 'Qty', 'الكمية', 'ar', '2145'),
(2770, 'VBGw0VlupIftqnftsk0d6OvNL', 'Estimate Delivery Time', 'تقدير وقت التسليم', 'ar', '2146'),
(2771, 'Qk3Txacz9oWY8bbewYmQ49sfA', 'Video', 'فيديو', 'ar', '2147'),
(2772, 'duxkQYPTsCnsY61gzO0vbxs9P', 'Buy Now', 'اشتري الآن', 'ar', '2148'),
(2773, 'cdywT0tr3QuNcPzNl1rqDMINx', 'Edit Product', 'تحرير المنتج', 'ar', '2149'),
(2774, 'ZfGh2s17cuTkotbrnQfjOjwQx', 'Share this', 'شارك هذا', 'ar', '2150'),
(2775, 'aoda5bgwjMvipVNEpEGNhAajf', 'Review', 'مراجعة', 'ar', '2151'),
(2776, 'PckAhNtI4E8GPqJOJXBp07rgD', 'Related Products', 'منتجات ذات صله', 'ar', '2152'),
(2777, 'f4R9BNTmCF6VXb8JqAsU3AxQX', 'New Refund Request', 'طلب استرداد جديد', 'ar', '2153'),
(2778, '0hYi4QCD6WBlrRrE3yA1iQq1t', 'Order Details', 'تفاصيل الطلب', 'ar', '2154'),
(2779, 'saFdwLvIF3JhK49SO4vyYe2Rj', 'Buyer Details', 'تفاصيل المشتري', 'ar', '2155'),
(2780, 'cwiHCnBaBOeFkV1tLvaoa6JM6', 'Buyer Name', 'اسم المشتري', 'ar', '2156'),
(2781, 'cJJL2Q54fnlgLZwhGBBO0vG0S', 'Buyer Email', 'البريد الإلكتروني للمشتري', 'ar', '2157'),
(2782, 'ni4Z62Mt513bWc2aCoYC6ZkDw', 'Verify Your Email Address', 'تحقق من عنوان بريدك الإلكتروني', 'ar', '2158'),
(2783, 'uhihKEPTDxlrxyTGredtJhEYh', 'Your registered email-id is', 'معرف البريد الإلكتروني المسجل الخاص بك هو', 'ar', '2159'),
(2784, 'A47kHJj3pWbYtNjQmm7sawd0r', 'Please click on the below link to verify your email account', 'يرجى النقر على الرابط أدناه للتحقق من حساب بريدك الإلكتروني', 'ar', '2160'),
(2785, 'iPeexUNFxOZlvHz10Aa6VVvmH', 'Verify Email', 'التحقق من البريد الإلكتروني', 'ar', '2161'),
(2786, 'Q0Hkjc6vLF0CSawJHeEehBcHH', 'Confirm Password', 'تأكيد كلمة المرور', 'ar', '2162'),
(2787, '8987Id0XvbVNh6jVLPyepltxe', 'Price : Low to High', 'السعر من الارخص للاعلى', 'ar', '2163'),
(2788, '7Y3mBJtDQyILf3QYccY5I79Ow', 'Price : High to low', 'السعر الاعلى الى الادنى', 'ar', '2164'),
(2789, '9N4YJMPnYbeJ4Cbq5Tyc5KS77', 'Physical', 'جسدي - بدني', 'ar', '2165'),
(2790, 'K06RH7QVPpDINUE7vDurQByOP', 'External', 'خارجي', 'ar', '2166'),
(2791, 'bOp4SkxpY6KgcuM34X9hA3fi1', 'Digital', 'رقمي', 'ar', '2167'),
(2792, 'pq9froUSNGjouH7pqGY5MMQEE', 'Post Tags', 'نشر العلامات', 'ar', '2168'),
(2793, 'Jfu55HPmkaP2uipbuMeXD0CA6', 'Share this post', 'شارك هذا المنشور', 'ar', '2169'),
(2794, '55eF2isFOl3nKZTK2VHrSu95X', 'You must be', 'يجب ان تكون', 'ar', '2170'),
(2795, 'SOAWmhPnTG3jWr1Zj9EAtz0sb', 'in to post a comment', 'في لنشر تعليق', 'ar', '2171'),
(2796, '5SvP4lbUmKmJEzeUJGSqANM75', 'Add comment...', 'أضف تعليق...', 'ar', '2172'),
(2797, 'WgPm52S3TtzJxz3lVGNO3AKLQ', 'logged', 'تسجيل', 'ar', '2173'),
(2798, '82AFYwOscp4dfs1tS38HqsQVb', 'Start Sellings', 'بدء عمليات البيع', 'ar', '2174'),
(2799, 'w4egY98tbrK8BivBWR9RPjFXK', 'Become a Seller', 'كن بائعًا', 'ar', '2175'),
(2800, 'VUkScuTQQaNWZPdlo975m9uHv', 'Start making money by selling your Physical, Digital, and External Producs to the thousands of buyers on', 'ابدأ في جني الأموال عن طريق بيع المنتجات المادية والرقمية والخارجية لآلاف المشترين في', 'ar', '2176'),
(2801, 'GIRZNPpFD17DiaE7jxIoBhrDl', 'Sign Up Now', 'أفتح حساب الأن', 'ar', '2177'),
(2802, 'PiVQ4iUxd7NmRxSKFXyw5NrXU', 'Your business is up and running in just a few steps', 'عملك جاهز ويعمل في خطوات قليلة فقط', 'ar', '2178'),
(2803, 'oMIraoGdwE0p3zlzAm07IAO0o', 'Sign up', 'سجل', 'ar', '2179'),
(2804, '9FytfAEO5CUBitnaffCkyiZq5', 'Upload your product item', 'قم بتحميل عنصر المنتج الخاص بك', 'ar', '2180'),
(2805, 'onLwyVlcWAyvxVPdTjLNb3yoZ', 'Our review team will review your product item', 'سيقوم فريق المراجعة لدينا بمراجعة عنصر المنتج الخاص بك', 'ar', '2181'),
(2806, 'uK4wuUklhxOjmIhTfEIpDbfBf', 'Once your item has been approved it will appear on', 'بمجرد الموافقة على العنصر الخاص بك ، سيظهر في', 'ar', '2182'),
(2807, 'lnCgGYLFMuCbTMckad56O2wOb', 'Withdrawal request to your earning amount will be transferred', 'سيتم تحويل طلب السحب إلى مبلغ الربح الخاص بك', 'ar', '2183'),
(2808, 'f4jHnlgF2V3fbx6z7j9vTQtVG', 'Enjoy our', 'استمتع لدينا', 'ar', '2184'),
(2809, 'GN77X0LA7fpCgiGmOWlJl2Cr8', 'commission rate without any restrictions', 'سعر العمولة دون أي قيود', 'ar', '2185'),
(2810, 'Zt5h4T4fq02SwLMPkA7aoKcK4', 'Receive a commission rate of', 'الحصول على معدل عمولة قدره', 'ar', '2186'),
(2811, 'kqFZY7KYuoHHk9ndnVoh2WD2z', 'No minimum number of sales required.', 'لا يوجد حد أدنى لعدد المبيعات المطلوبة.', 'ar', '2187'),
(2812, '4SiBSNCuMgY5QR6Y0zvu7qXmH', 'Unlimited products will be managed.', 'سيتم إدارة منتجات غير محدودة.', 'ar', '2188'),
(2813, 'uyuevt3254smDtgoLOSHNSGXF', 'No exclusivity required. Feel free to keep selling your products on your own website.', 'لا حاجة للتفرد. لا تتردد في الاستمرار في بيع منتجاتك على موقع الويب الخاص بك.', 'ar', '2189'),
(2814, 'VtPkTczCevnZFoAEwTkOBjkSf', 'What can you sell?', 'ماذا يمكنك أن تبيع؟', 'ar', '2190'),
(2815, 'opqHad8SAdxFcH5UjMLwyHRbF', 'Start your business today', 'ابدأ عملك اليوم', 'ar', '2191'),
(2816, 'eT0GaV6kHnyakPILOfxbRCKJI', 'Payment Success', 'الدفع الناجح', 'ar', '2192'),
(2817, 'NzFqHVjxwdHZ1Oj5OsBJK12BT', 'Your payment transaction was successful. Thank You!', 'كانت معاملة الدفع الخاصة بك ناجحة. شكرا لكم!', 'ar', '2193'),
(2818, 'xo2XHUMdJPh30yF9iCgrjcoWi', 'Transaction ID', 'رقم المعاملة', 'ar', '2194'),
(2819, 'ZeetJLFu7oRIAuzkMVHBAwbvm', 'Your order number', 'رقم طلبك', 'ar', '2195'),
(2820, 'ZLlhHLgKq8FTl5aQuYMW2HmlY', 'No data found!', 'لاتوجد بيانات!', 'ar', '2196'),
(2821, 'f973W7Cl8m61teSNxAfRfkMN0', 'Profile', 'الملف الشخصي', 'ar', '2197'),
(2822, 'p1TqHfAtQnlpbZdImBBVbFAI0', 'Contact Me', 'اتصل بي', 'ar', '2198'),
(2823, 'TM3S37YQzY6CbBISKvsgOyQ6V', 'About Me', 'عني', 'ar', '2199'),
(2824, 'XbI8chjV1pZ2366ikpYR6qB8G', 'Phone Number', 'رقم الهاتف', 'ar', '2200'),
(2825, 'vXCvMsSnBhPR1Lrump0ByWXNd', 'Send Message', 'أرسل رسالة', 'ar', '2201'),
(2826, 'S89fADrpDWMVVvUxUuTrpo6GB', 'New message received', 'تم استلام رسالة جديدة', 'ar', '2202'),
(2827, 'EwB8AE3WRCRIR9SJJXAsnqGwg', 'Message sent from', 'تم إرسال الرسالة من', 'ar', '2203'),
(2828, 'x7JtYNIlRKvrmIdlcJE2gb9Ec', 'No product found!', 'لم يتم العثور على منتج!', 'ar', '2204'),
(2829, 'KOwdL0nnoFCW7gqMjhFZ3ZmVK', 'New Withdrawal Request', 'طلب سحب جديد', 'ar', '2205'),
(2830, 'kRdASULvjqVz2BasWAKh8pJLP', 'Withdrawal Amount', 'كمية السحب', 'ar', '2206'),
(2831, 'Rka9IYOBXYsKy5284cZOo3kwB', 'Please enter your username and password', 'الرجاء إدخال اسم المستخدم وكلمة المرور الخاصة بك', 'ar', '2207'),
(2832, 'vlCcW9MoZTqyqMnUcosKKnnBi', 'E-Mail Address / Username', 'عنوان البريد الإلكتروني / اسم المستخدم', 'ar', '2208'),
(2833, 'Xkuw3uK2D07RTlKo3l405YRgQ', 'Forgot Password?', 'هل نسيت كلمة المرور؟', 'ar', '2209'),
(2834, '9qXXUceIdIebOI6UIdhMI0WeF', 'Don\'t have an account?', 'لا تملك حساب؟', 'ar', '2210'),
(2835, '0lDQMFfRjATqvKxIiWlzZQrIo', 'Login with your social media account', 'تسجيل الدخول باستخدام حساب وسائل التواصل الاجتماعي الخاص بك', 'ar', '2211'),
(2836, 'zF6LcUhOebRg39wQH9eeXYcEE', 'Register', 'تسجيل', 'ar', '2212'),
(2837, 'FHlkN9bIb6pnAnzUbisDdGAyf', 'Create Your Account', 'أنشئ حسابك', 'ar', '2213'),
(2838, 'lBmyCERbvi8QMquySzZQbZBYg', 'Please fill the following fields with appropriate', 'يرجى ملء الحقول التالية بالشكل المناسب', 'ar', '2214'),
(2839, 'k8gl9xilWeME7Mz0wHdlKRpHE', 'information to register form', 'معلومات لتسجيل النموذج', 'ar', '2215'),
(2840, 'iqdqpbaxR0SitKdTlgmpKB3UO', 'Your Name', 'اسمك', 'ar', '2216'),
(2841, 'ZBLuOVXxtEkFeCN8bQoTQNIHC', 'Enter your name', 'أدخل أسمك', 'ar', '2217'),
(2842, 'zJfSSxjtrKAmWnEWVSTlv0fdQ', 'Enter your username', 'أدخل اسم المستخدم الخاص بك', 'ar', '2218'),
(2843, 'jg0t4oTc4YNq0x0icb02VAp0X', 'User Type', 'نوع المستخدم', 'ar', '2219'),
(2844, '3kjvDoNvUTg1GXU435KWQZFH9', 'Customer', 'الزبون', 'ar', '2220'),
(2845, '27muCkP8io4GJXMNG5cRuyKDA', 'Enter your confirm password', 'أدخل كلمة المرور الخاصة بك', 'ar', '2221'),
(2846, 'w3bHPJCXUKpBouXyaCpaacZJZ', 'Captcha', 'كلمة التحقق', 'ar', '2222'),
(2847, 'DOldepikuItCGbmRt62qKAaXX', 'Already have an account?', 'هل لديك حساب؟', 'ar', '2223'),
(2848, 'PxzuVIodDIME4D44iIz7HXcls', 'Remove', 'Remove', 'en', '0'),
(2849, 'PxzuVIodDIME4D44iIz7HXcls', 'Remove', 'Eliminar', 'es', '2848'),
(2850, 'PxzuVIodDIME4D44iIz7HXcls', 'Remove', 'إزالة', 'ar', '2848'),
(2851, 'QsJtZGhVZODcrvUoHgLGStXEc', 'Your Affiliate Referral Url', 'Your Affiliate Referral Url', 'en', '0'),
(2852, 'QsJtZGhVZODcrvUoHgLGStXEc', 'Your Affiliate Referral Url', 'Su URL de referencia de afiliada', 'es', '2851'),
(2853, 'QsJtZGhVZODcrvUoHgLGStXEc', 'Your Affiliate Referral Url', 'عنوان الإحالة التابع لك', 'ar', '2851'),
(2854, 'yOCerNmnLunoMJ4QoMEkrJ5O7', 'Share Referral Url & Earn Money', 'Share Referral Url & Earn Money', 'en', '0'),
(2855, 'yOCerNmnLunoMJ4QoMEkrJ5O7', 'Share Referral Url & Earn Money', 'Compartir URL de referencia y ganar dinero', 'es', '2854'),
(2856, 'yOCerNmnLunoMJ4QoMEkrJ5O7', 'Share Referral Url & Earn Money', 'شارك Url الإحالة وكسب المال', 'ar', '2854'),
(2857, 'jwUlUYqrYR6YJq1Nb6dOi1Ufd', 'Your Affiliate Referral Earnings', 'Your Affiliate Referral Earnings', 'en', '0'),
(2858, 'jwUlUYqrYR6YJq1Nb6dOi1Ufd', 'Your Affiliate Referral Earnings', 'Sus ganancias por recomendación de afiliados', 'es', '2857'),
(2859, 'jwUlUYqrYR6YJq1Nb6dOi1Ufd', 'Your Affiliate Referral Earnings', 'أرباح الإحالة التابعة لك', 'ar', '2857'),
(2860, 'DrVzHLLeDFqaAHjiANGWUablB', 'Payment Details', 'Payment Details', 'en', '0'),
(2861, '2Z3iwn7BadjSgmDgngOov9OBG', 'Credit Card Number', 'Credit Card Number', 'en', '0'),
(2862, 'YVHm6iHS2UQJZKwJRfEoo5q0L', 'Enter card number', 'Enter card number', 'en', '0'),
(2863, 'ndZa6SgLNCgQzwkRVlJ9yowIF', 'Expiry Month', 'Expiry Month', 'en', '0'),
(2864, 'I241sKo10DXSTJNbQRs1bPveT', 'Expiry Year', 'Expiry Year', 'en', '0'),
(2865, 'envMrG2NrvO2jQh5jLYB3W4OT', 'CVV', 'CVV', 'en', '0'),
(2866, 'diNGyCaCirfm2aPuALijTgP8k', 'Pay Now', 'Pay Now', 'en', '0'),
(2867, 'DrVzHLLeDFqaAHjiANGWUablB', 'Payment Details', 'Detalles del pago', 'es', '2860'),
(2868, 'DrVzHLLeDFqaAHjiANGWUablB', 'Payment Details', 'بيانات الدفع', 'ar', '2860'),
(2869, '2Z3iwn7BadjSgmDgngOov9OBG', 'Credit Card Number', 'Número de tarjeta de crédito', 'es', '2861'),
(2870, '2Z3iwn7BadjSgmDgngOov9OBG', 'Credit Card Number', 'رقم بطاقه الائتمان', 'ar', '2861'),
(2871, 'YVHm6iHS2UQJZKwJRfEoo5q0L', 'Enter card number', 'Ingrese el número de tarjeta', 'es', '2862'),
(2872, 'YVHm6iHS2UQJZKwJRfEoo5q0L', 'Enter card number', 'أدخل رقم البطاقة', 'ar', '2862'),
(2873, 'ndZa6SgLNCgQzwkRVlJ9yowIF', 'Expiry Month', 'Meses de vencimiento', 'es', '2863'),
(2874, 'ndZa6SgLNCgQzwkRVlJ9yowIF', 'Expiry Month', 'شهر انتهاء الصلاحية', 'ar', '2863'),
(2875, 'I241sKo10DXSTJNbQRs1bPveT', 'Expiry Year', 'Año de vencimiento', 'es', '2864'),
(2876, 'I241sKo10DXSTJNbQRs1bPveT', 'Expiry Year', 'سنة انتهاء الصلاحية', 'ar', '2864'),
(2877, 'envMrG2NrvO2jQh5jLYB3W4OT', 'CVV', 'CVV', 'es', '2865'),
(2878, 'envMrG2NrvO2jQh5jLYB3W4OT', 'CVV', 'CVV', 'ar', '2865'),
(2879, 'diNGyCaCirfm2aPuALijTgP8k', 'Pay Now', 'Pagar ahora', 'es', '2866'),
(2880, 'diNGyCaCirfm2aPuALijTgP8k', 'Pay Now', 'ادفع الآن', 'ar', '2866'),
(2881, 'JSlA8emIBO0ekYvGXoWN56uyF', 'Thank You', 'Thank You', 'en', '0'),
(2882, '1KYmzc2ZMEy4qod0jNT7cOVvd', 'Your details has been sent. Once received payment will confirm your order', 'Your details has been sent. Once received payment will confirm your order', 'en', '0'),
(2883, 'I5ixKeCsGhe7wybIDHyMZexE0', 'Your Purchase id', 'Your Purchase id', 'en', '0'),
(2884, 'fALkaKtXyG9tMyEca1NZJhtpV', 'Below are you amount transaction details', 'Below are you amount transaction details', 'en', '0'),
(2885, 'IGgZQU6JNINPFW5xNB5Bb6VSf', 'Bank Details', 'Bank Details', 'en', '0'),
(2886, 'JSlA8emIBO0ekYvGXoWN56uyF', 'Thank You', 'Gracias', 'es', '2881'),
(2887, 'JSlA8emIBO0ekYvGXoWN56uyF', 'Thank You', 'شكرا جزيلا', 'ar', '2881'),
(2888, '1KYmzc2ZMEy4qod0jNT7cOVvd', 'Your details has been sent. Once received payment will confirm your order', 'Tus datos han sido enviados. Una vez recibido el pago confirmaremos su pedido', 'es', '2882'),
(2889, '1KYmzc2ZMEy4qod0jNT7cOVvd', 'Your details has been sent. Once received payment will confirm your order', 'تم إرسال التفاصيل الخاصة بك. بمجرد استلام الدفعة سيؤكد طلبك', 'ar', '2882'),
(2890, 'I5ixKeCsGhe7wybIDHyMZexE0', 'Your Purchase id', 'Su identificación de compra', 'es', '2883'),
(2891, 'I5ixKeCsGhe7wybIDHyMZexE0', 'Your Purchase id', 'معرف الشراء الخاص بك', 'ar', '2883'),
(2892, 'fALkaKtXyG9tMyEca1NZJhtpV', 'Below are you amount transaction details', 'A continuación se detallan los detalles de la transacción.', 'es', '2884'),
(2893, 'fALkaKtXyG9tMyEca1NZJhtpV', 'Below are you amount transaction details', 'فيما يلي تفاصيل المعاملات المبلغ', 'ar', '2884'),
(2894, 'IGgZQU6JNINPFW5xNB5Bb6VSf', 'Bank Details', 'Detalles del banco', 'es', '2885'),
(2895, 'IGgZQU6JNINPFW5xNB5Bb6VSf', 'Bank Details', 'التفاصيل المصرفية', 'ar', '2885'),
(2896, 'JSmipuGjBVcRTA4y6b9lelNkC', 'Be right back', 'Be right back', 'en', '0'),
(2897, 'L14dDgKWAQSURoVStIxgfCFob', 'MAINTENANCE MODE', 'MAINTENANCE MODE', 'en', '0'),
(2898, 'JSmipuGjBVcRTA4y6b9lelNkC', 'Be right back', 'Vuelvo enseguida', 'es', '2896'),
(2899, 'JSmipuGjBVcRTA4y6b9lelNkC', 'Be right back', 'سأعود', 'ar', '2896'),
(2900, 'L14dDgKWAQSURoVStIxgfCFob', 'MAINTENANCE MODE', 'MODO DE MANTENIMIENTO', 'es', '2897'),
(2901, 'L14dDgKWAQSURoVStIxgfCFob', 'MAINTENANCE MODE', 'نمط الصيانة', 'ar', '2897'),
(2902, '1j412M44kMYn9e0isL2uIBzPN', 'Paystack Email ID', 'Paystack Email ID', 'en', '0'),
(2903, '1j412M44kMYn9e0isL2uIBzPN', 'Paystack Email ID', 'ID de correo electrónico de Paystack', 'es', '2902'),
(2904, '1j412M44kMYn9e0isL2uIBzPN', 'Paystack Email ID', 'معرف البريد الإلكتروني Paystack', 'ar', '2902'),
(2912, 'qOmR5DuuU5x0L0LDh8BR1GYu9', 'Conversation', 'Conversation', 'en', '0'),
(2913, 'qOmR5DuuU5x0L0LDh8BR1GYu9', 'Conversation', 'Conversacion', 'es', '2912'),
(2914, 'qOmR5DuuU5x0L0LDh8BR1GYu9', 'Conversation', 'محادثة', 'ar', '2912'),
(2915, 'plUqi7lm4xbT0SI6iQ3HbooXa', 'Start Conversation', 'Start Conversation', 'en', '0'),
(2916, 'plUqi7lm4xbT0SI6iQ3HbooXa', 'Start Conversation', 'Iniciar conversación', 'es', '2915'),
(2917, 'plUqi7lm4xbT0SI6iQ3HbooXa', 'Start Conversation', 'ابدأ المحادثة', 'ar', '2915'),
(2918, 'yPSkdFsVscYFr4S0exubdM6Wa', 'with', 'with', 'en', '0'),
(2919, 'yPSkdFsVscYFr4S0exubdM6Wa', 'with', 'con', 'es', '2918'),
(2920, 'yPSkdFsVscYFr4S0exubdM6Wa', 'with', 'مع', 'ar', '2918'),
(2922, 'g5R0Z6DCHvcZE0xGhP9PiZq2d', 'Verified', 'Verified', 'en', '0'),
(2923, 'g5R0Z6DCHvcZE0xGhP9PiZq2d', 'Verified', 'Verificada', 'es', '2922'),
(2924, 'g5R0Z6DCHvcZE0xGhP9PiZq2d', 'Verified', 'تم التحقق', 'ar', '2922'),
(2925, 'iliKiUPLJtF0HLcYProXfeLjO', 'Unverified', 'Unverified', 'en', '0'),
(2926, 'iliKiUPLJtF0HLcYProXfeLjO', 'Unverified', 'Inconfirmado', 'es', '2925'),
(2927, 'iliKiUPLJtF0HLcYProXfeLjO', 'Unverified', 'لم يتم التحقق منه', 'ar', '2925'),
(2928, '022mqfKyVXYsJNqtdT830mVdJ', 'Type your message...', 'Type your message...', 'en', '0'),
(2929, '022mqfKyVXYsJNqtdT830mVdJ', 'Type your message...', 'Escribe tu mensaje...', 'es', '2928'),
(2930, '022mqfKyVXYsJNqtdT830mVdJ', 'Type your message...', 'اكتب رسالتك ...', 'ar', '2928'),
(2931, 'skZFEwsiBbuC0Tx16zV4NLnch', 'Send', 'Send', 'en', '0'),
(2932, 'skZFEwsiBbuC0Tx16zV4NLnch', 'Send', 'Enviar', 'es', '2931'),
(2933, 'skZFEwsiBbuC0Tx16zV4NLnch', 'Send', 'إرسال', 'ar', '2931'),
(2934, 'mQ5WhxbkzivmDdDcscjqzZCjZ', 'Conversation Message', 'Conversation Message', 'en', '0'),
(2935, 'mQ5WhxbkzivmDdDcscjqzZCjZ', 'Conversation Message', 'Mensaje de conversación', 'es', '2934'),
(2936, 'mQ5WhxbkzivmDdDcscjqzZCjZ', 'Conversation Message', 'رسالة محادثة', 'ar', '2934'),
(2937, 'agnZPwOH4A3nXarinvDBDORiQ', 'Conversation Url', 'Conversation Url', 'en', '0'),
(2938, 'agnZPwOH4A3nXarinvDBDORiQ', 'Conversation Url', 'URL de conversación', 'es', '2937'),
(2939, 'agnZPwOH4A3nXarinvDBDORiQ', 'Conversation Url', 'عنوان Url الخاص بالمحادثة', 'ar', '2937');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `languages`
--

CREATE TABLE `languages` (
  `language_id` int(11) NOT NULL,
  `language_token` varchar(200) DEFAULT NULL,
  `language_name` varchar(200) DEFAULT NULL,
  `language_code` varchar(50) DEFAULT NULL,
  `language_order` int(50) NOT NULL DEFAULT '0',
  `language_default` int(50) NOT NULL DEFAULT '0',
  `language_status` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `languages`
--

INSERT INTO `languages` (`language_id`, `language_token`, `language_name`, `language_code`, `language_order`, `language_default`, `language_status`) VALUES
(8, 'LUcpjXt3myVdhXFETlQa0cNW4', 'English', 'en', 1, 0, '1'),
(15, 'kSYBYuddDTopGtzZtsyWwkKVB', 'Spanish', 'es', 2, 1, '1'),
(16, 'QyZ1T9MbgoEkhz7LHJMHHSNok', 'Arabic', 'ar', 3, 0, '1');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `newsletter`
--

CREATE TABLE `newsletter` (
  `news_id` int(11) NOT NULL,
  `news_email` varchar(200) NOT NULL,
  `news_token` varchar(200) NOT NULL,
  `news_status` int(50) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `newsletter`
--

INSERT INTO `newsletter` (`news_id`, `news_email`, `news_token`, `news_status`) VALUES
(9, 'sample@gmail.com', 'A7MY8C0FAd5xCDyUZwGT624N8', 0),
(10, 'test@test.com', 'QO7gQSWQsexLQgFk5UANRcj2T', 0),
(11, 'test@te3st.com', 'ill5osJViyatFNEb5lJ7FkWBE', 0),
(12, 'tes3t@test.com', 'F0R90bbEMqxCyrBQC2NRuQJhH', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pages`
--

CREATE TABLE `pages` (
  `page_id` int(11) NOT NULL,
  `page_title` varchar(500) NOT NULL,
  `page_desc` mediumtext NOT NULL,
  `page_slug` varchar(200) NOT NULL,
  `main_menu` int(50) NOT NULL,
  `footer_menu` int(50) NOT NULL DEFAULT '0',
  `menu_order` int(50) NOT NULL,
  `page_status` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `pages`
--

INSERT INTO `pages` (`page_id`, `page_title`, `page_desc`, `page_slug`, `main_menu`, `footer_menu`, `menu_order`, `page_status`) VALUES
(7, 'About Us', '&lt;p&gt;Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum&lt;/p&gt;\r\n\r\n&lt;p&gt;Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum&lt;/p&gt;', 'About-Us', 1, 1, 1, 1),
(11, 'Ayuda', '<p>Calificaciones</p>\r\n\r\n<p>¿Cuándo se califica?</p>\r\n\r\n<p>Luego de hacer click en \"Comprar\", se debe calificar como resultó todo. De esta manera vamos a poder saber qué tan responsables y confiables resultaron al momento de Comprar y Vender.</p>\r\n\r\n<p>¿Cómo usar el sistema de calificaciones?</p>\r\n\r\n<p>A. Hay que examinar las calificaciones positivas y negativas que marcan la trayectoria del usuario. B. Consultar los comentarios que ha recibido el usuario por parte de otros miembros de la comunidad y cuáles fueron los motivos de sus calificaciones.</p>\r\n\r\n<p>¿Cómo se calculan los puntos?</p>\r\n\r\n<p>Cada calificación Positiva que un usuario reciba, sumará un punto a su puntaje de reputación. Cada calificación Neutral que un usuario reciba, no sumará ni restará puntos a su puntaje de reputación. Cada calificación Negativa que un usuario reciba, restará un punto a su puntaje de reputación. El total de puntos que aparecen junto a tu nombre están compuestos por las calificaciones que recibiste de otros usuarios únicos. Llamamos \"calificaciones de usuarios únicos\" a la primera calificación que recibas de un usuario. Si este mismo usuario te califica por otras operaciones, éstas ya no suman ni restan en el puntaje general. De esta forma, se evita la formación artificial de puntajes entre \"cómplices\" y que un usuario pueda \"descalificar\" a otro mediante calificaciones negativas repetidas.</p>\r\n\r\n<p>Escala de calificaciones:</p>\r\n\r\n<p>¿Qué pasa si se está en desacuerdo con una calificación recibida? Se debe acceder a la página de “contacto”, colocar en el asunto “Denuncio calificación” y luego explicar los motivos. A la brevedad nos contactaremos con vos. PublicaMás podrá considerar la eliminación de calificaciones o comentarios en los siguientes casos:</p>\r\n\r\n<ul>\r\n	<li>Cuando la opinión o comentario no esté relacionada con una transacción en PublicaMás y esta circunstancia sea evidente.</li>\r\n	<li>Si la calificación, opinión o comentario negativo está en contra de las normas o principios contenidos en los Términos y Condiciones Generales de PublicaMás.</li>\r\n</ul>\r\n\r\n<p> </p>\r\n\r\n<p>Como Vender</p>\r\n\r\n<p>Al momento de registrarse, pueden cargar la dirección URL de todas sus redes sociales, estas aparecerán en sus avisos.<br>\r\nTambién si eligen cargar su WhatsApp, este aparecerá en cada uno de sus avisos.<br>\r\nLas personas interesadas en comunicarse con ustedes, además de poder llamarlos haciendo clic en su número de contacto, también pueden hacer clic en su número de WhatsApp. Este se abrirá directamente junto con un mensaje preestablecido, haciendo referencia del aviso que están interesados y comunicándose directamente por este medio.</p>\r\n\r\n<p>Vender Productos:</p>\r\n\r\n<ul>\r\n	<li>Elegir las categorías en donde quieres publicar.</li>\r\n	<li>Elegir las características y una descripción bien completa.</li>\r\n	<li>Cargá una imagen en el detalle de los avisos, a través de la cual vas a poder graficar todas las características del producto, métodos de pago, formas de envío, etc. Todo lo que desees explicar. Te sugerimos utilizar para armar esta imagen, photoshop o cualquier otra herramienta de edicion de imagenes.</li>\r\n	<li>Cargar fotografias con buena calidad.</li>\r\n</ul>\r\n\r\n<p>¿Cómo cobrar las ventas?</p>\r\n\r\n<p>Se puede elegir cobrar con tarjeta de crédito y otros medios que ofrece Todo Pago, nuestro Partner oficial de pagos. También se puede cobrar por cualquier otro medio que los usuarios acuerden.</p>\r\n\r\n<p>¿Cuáles son los costos para publicar?</p>\r\n\r\n<p>Se puede publicar ilimitadamente productos usados. Productos nuevos se pueden publicar hasta diez gratis, luego se debe pagar el abono mensual.</p>\r\n\r\n<p>¿Cuáles son los costos por venta?</p>\r\n\r\n<p>Si la venta se realiza dentro de la plataforma, se paga un 2% del valor del producto, sea nuevo o usado. De este modo sabemos que el pago de esta comisión es totalmente accesible. Al hacer clic en “Comprar” la venta queda registrada. Luego podrán calificar como resultó todo.</p>\r\n\r\n<p>¿Se puede pausar los avisos?</p>\r\n\r\n<p>Si se pueden pausar. Si te vas de vacaciones, si te quedaste sin stock, o por cualquier otro motivo, podes pausar tu aviso. Considerá que el tiempo de duración online del mismo, igualmente sigue corriendo.</p>\r\n\r\n<p>Editar un aviso</p>\r\n\r\n<p>Se puede editar cualquier detalle de un aviso, inclusive eliminar fotografías y cargar nuevas.</p>\r\n\r\n<p>Renovar</p>\r\n\r\n<p>Una vez finalizada la publicación, esta podrá renovarse. Los avisos podrán conservar todas las características que se hayan cargado.</p>\r\n\r\n<p>Vender vehículos, inmuebles y servicios:</p>\r\n\r\n<ul>\r\n	<li>Elegir las categorías en donde se quiere publicar.</li>\r\n	<li>Elegir las características y una descripción bien completa.</li>\r\n	<li>En el caso de “Inmuebles”, al momento de cargar un aviso se puede colocar la ubicación de donde se encuentra este.</li>\r\n	<li>Cargar fotografias con buena calidad.</li>\r\n</ul>\r\n\r\n<p>¿Cuáles son los costos para vender?</p>\r\n\r\n<p>Podes publicar gratuitamente un aviso a la vez. Si deseas publicar más de un aviso, en la página de “Tipos de avisos” podes ver los costos.</p>\r\n\r\n<p>¿Se puede pausar los avisos?</p>\r\n\r\n<p>Si se pueden pausar. Si te vas de vacaciones, si te quedaste sin stock, o por cualquier otro motivo, podes pausar tu aviso. Considerá que el tiempo de duración online del mismo, igualmente sigue corriendo.</p>\r\n\r\n<p>Editar un aviso</p>\r\n\r\n<p>Se puede editar cualquier detalle de un aviso, inclusive eliminar fotografías y cargar nuevas.</p>\r\n\r\n<p>Renovar</p>\r\n\r\n<p>Una vez finalizada la publicación, esta podrá renovarse. Los avisos podrán conservar todas las características que se hayan cargado.</p>\r\n\r\n<p>Como Comprar</p>\r\n\r\n<p>PublicaMás es la plataforma ideal para encontrar lo que estás buscando.<br>\r\nNosotros no te obligamos a comprar para obtener los datos de los vendedores.<br>\r\n<br>\r\nExisten cuatro tipos de avisos:<br>\r\nVehículos, Inmuebles, Productos y Servicios.<br>\r\n<br>\r\nEn los avisos de vehículos, inmuebles y servicios, vas a encontrar directamente publicadas las redes sociales de los vendedores o prestadores de servicio, su teléfono, WhatsApp y dirección. Si no encontras alguno de estos datos es porque el vendedor no lo cargó.<br>\r\nTambién vas a poder hacer clic dentro del mapa con la ubicación del vendedor y así saber cómo llegar a su ubicación.<br>\r\nEn los avisos de productos, si querés comunicarte con el vendedor, tenés que hacer clic en “Me interesa”. Luego debes loguearte si ya sos usuario, o registrarte rápidamente. Al completar este paso, vas a poder ver todos los datos de contacto del vendedor.<br>\r\nVerificá su reputación y comentarios de otros compradores.<br>\r\nSi deseas comprar el producto a través de la plataforma, podes hacer clic en el botón “Comprar”. Luego elegís como lo queres pagar y completas todos los datos necesarios.<br>\r\nSi hiciste clic en “Comprar”, este producto va a formar parte de “Mis compras” dentro de tu panel de usuario.<br>\r\nUna vez que retires el producto o lo recibas y verifiques el estado del mismo, vas a poder calificar al vendedor.<br>\r\nTené presente que si la compra la concretas por fuera de la plataforma, no vas a poder calificar al vendedor.</p>\r\n\r\n<p>PubliLíderes</p>\r\n\r\n<p>Este programa consiste en exigirles a los usuarios que alcancen un determinado número de requisitos, no solo para incrementar la calidad de sus avisos, sino también para incrementar la calidad de sus servicios de entrega y post venta (si se ofrecen estos dos últimos).<br>\r\nAl aprobar este programa el vendedor pasa a estar certificado como “PubliLíder”.</p>\r\n\r\n<p>¿Cómo se realiza la evaluación de los vendedores?</p>\r\n\r\n<p>Nos comunicamos con los compradores y le realizamos una breve encuesta para saber cuál fue su experiencia de compra con el vendedor que se está evaluando.<br>\r\nA la vez desde el área de Control de Calidad, nos encargamos de analizar el detalle de los avisos, los comentarios de sus compradores y las calificaciones obtenidas.</p>\r\n\r\n<p>Duración de la certificación:</p>\r\n\r\n<p>La certificación se debe renovar cada seis meses, dentro de los treinta días anteriores a su vencimiento. El pedido de renovación debe ser solicitado por el vendedor al área de control de calidad. Si la certificación no se renueva, automáticamente luego de su vencimiento se pierde la misma.<br>\r\nMail de contacto: <a href=\"mailto:controldecalidad@publicamas.com\">controldecalidad@publicamas.com</a></p>\r\n\r\n<p>Costo de la certificación</p>\r\n\r\n<p>El programa de evaluación, la certificación y la renovación de la misma no posee ningún costo.</p>\r\n\r\n<p>Requisitos para ser un PubliLíder</p>\r\n\r\n<p>Se debe tener una antigüedad mayor a 4 meses como usuario, un 99% de calificaciones positivas y aprobar la certificación.</p>\r\n\r\n<p>Tipos de PubliLíderes</p>\r\n\r\n<p>Nosotros no exigimos que los vendedores realicen determinadas cantidades de ventas mensuales, pero sí nos enfocamos en controlar la calidad del servicio que prestan. Es por esto, que ofrecemos una sola clase de certificación, esta se llama “PubliLíder”.<br>\r\nDe esta manera, consideramos que desde PublicaMás estamos contribuyendo al desarrollo de un excelente entorno de servicios para ejercer el comercio electrónico. Dicho entorno consiste en ocuparnos no sólo del desarrollo de mejores prácticas y herramientas a ser utilizadas por compradores y vendedores, sino también de controlar la calidad de los avisos y servicios brindados por nuestros usuarios.</p>\r\n\r\n<p>Tienda</p>\r\n\r\n<p>Se puede crear una “Tienda” (e-commerce) y conservarla a cambio de un pago mensual totalmente accesible.</p>\r\n\r\n<p>¿Cómo se crea?</p>\r\n\r\n<p>Dentro del panel de usuario se debe hacer click en \"Mi Tienda\", luego se va a poder cargar una imagen la cual va a ser el gran cartel virtual de la tienda. Este cartel se va a colocar en la parte superior.<br>\r\nSe puede escribir una descripción bien completa sobre las características de los artículos y/o de los servicios que se ofrecen.<br>\r\nA tu tienda se van a agregar todos tus avisos.</p>\r\n\r\n<p>¿Cómo buscar avisos publicados?</p>\r\n\r\n<p>Cuando los compradores visiten una Tienda, podrán hacer click en los avisos del listado.<br>\r\nTambién podrán buscar utilizando el buscador general o hacer click en las categorías en las cuales se encuentran publicados los avisos.</p>\r\n\r\n<p>¿Por qué crear una Tienda?</p>\r\n\r\n<p>Porque es un modo totalmente organizado y efectivo de poder mostrar todos tus avisos publicados.<br>\r\nAl crear una tienda y tener tu abono al día, en cada uno de tus avisos se coloca un botón que dice “Ir a Tienda”. Un práctico acceso desde todos tus avisos.</p>', 'Ayuda', 0, 1, 2, 1),
(12, 'Terminos y Condiciones', '<p>Este contrato describe los términos y condiciones generales (los \"Términos y Condiciones Generales\") aplicables al uso de los servicios ofrecidos por <strong><strong>Publicamas.com</strong></strong> (\"los Servicios\") dentro del sitio www.<strong>Publicamas.com</strong> (\"<strong>Publicamas.com</strong>\" o el \"sitio\") junto a todos sus otros dominios. Cualquier persona (en adelante \"Usuario\" o en plural \"Usuarios\") que desee acceder y/o usar el sitio o los servicios podrá hacerlo sujetándose a los Términos y Condiciones Generales, junto con todas las demás políticas y principios que rigen <strong>Publicamas.com</strong> y que son incorporados al presente por referencia.<br>\r\nCUALQUIER PERSONA QUE NO ACEPTE ESTOS TÉRMINOS Y CONDICIONES GENERALES, LOS CUALES TIENEN UN CARÁCTER OBLIGATORIO Y VINCULANTE, DEBERÁ ABSTENERSE DE UTILIZAR EL SITIO Y/O LOS SERVICIOS.<br>\r\nEl Usuario debe leer, entender y aceptar todas las condiciones establecidas en los Términos y Condiciones Generales y en las Políticas de Privacidad así como en los demás documentos incorporados a los mismos por referencia, previos a su registración como usuario de <strong>Publicamas.com</strong>.</p>\r\n\r\n<p><br>\r\n<br>\r\n<strong>01 – Capacidad</strong><br>\r\n<br>\r\nLos servicios sólo están disponibles para personas que tengan capacidad legal para contratar. No podrán utilizar los servicios las personas que no tengan esa capacidad, los menores de edad o usuarios de <strong>Publicamas.com</strong> que hayan sido suspendidos temporalmente o inhabilitados definitivamente. Si estás registrando un Usuario como Empresa, debes tener capacidad para contratar a nombre de tal entidad y de obligar a la misma en los términos de este Acuerdo.<br>\r\n<br>\r\n<strong>02 - Registración. </strong><br>\r\n<br>\r\nEs obligatorio completar el formulario de registración en todos sus campos con datos válidos para poder utilizar los servicios que brinda <strong>Publicamas.com</strong>. El futuro Usuario deberá completarlo con su información personal de manera exacta, precisa y verdadera (\"Datos Personales\") y asume el compromiso de actualizar los Datos Personales conforme resulte necesario. <strong>Publicamas.com</strong> podrá utilizar diversos medios para identificar a sus Usuarios, pero <strong>Publicamas.com</strong> no se responsabiliza por la certeza de los Datos Personales provistos por sus Usuarios. Los Usuarios garantizan y responden, en cualquier caso, de la veracidad, exactitud, vigencia y autenticidad de los Datos Personales ingresados.<br>\r\n<strong>Publicamas.com</strong> se reserva el derecho de solicitar algún comprobante y/o dato adicional a efectos de corroborar los Datos Personales, así como de suspender temporal o definitivamente a aquellos Usuarios cuyos datos no hayan podido ser confirmados. En estos casos de inhabilitación, se dará de baja todos los artículos publicados, así como las ofertas realizadas, sin que ello genere algún derecho a resarcimiento.<br>\r\nEl Usuario accederá a su cuenta personal (\"Cuenta\") mediante el ingreso de su Usuario y clave de seguridad personal elegida (\"Clave de Seguridad\"). El Usuario se obliga a mantener la confidencialidad de su Clave de Seguridad.<br>\r\nLa Cuenta es personal, única e intransferible, y está prohibido que un mismo Usuario registre o posea más de una Cuenta. En caso que  <strong>Publicamas.com</strong> detecte distintas Cuentas que contengan datos coincidentes o relacionados, podrá cancelar, suspender o inhabilitarlas. <br>\r\nEl Usuario será responsable por todas las operaciones efectuadas en su Cuenta, pues el acceso a la misma está restringido al ingreso y uso de su Clave de Seguridad, de conocimiento exclusivo del Usuario.</p>\r\n\r\n<p>El Usuario se compromete a notificar a <strong>Publicamas.com</strong> en forma inmediata y por medio idóneo y fehaciente, cualquier uso no autorizado de su Cuenta, así como el ingreso por terceros no autorizados a la misma. Se aclara que está prohibida la venta, cesión o transferencia de la Cuenta (incluyendo la reputación y calificaciones) bajo ningún título.<br>\r\n<strong>Publicamas.com</strong> se reserva el derecho de rechazar cualquier solicitud de registración o de cancelar una registración previamente aceptada, sin que esté obligado a comunicar o exponer las razones de su decisión y sin que ello genere algún derecho a indemnización o resarcimiento.<br>\r\n<br>\r\n<strong>03 - Modificaciones del Acuerdo. </strong><br>\r\n </p>\r\n\r\n<p><strong>Publicamas.com</strong> podrá modificar los Términos y Condiciones Generales en cualquier momento haciendo públicos en el Sitio los términos modificados. Todos los términos modificados entrarán en vigor a los 10 (diez) días de su publicación. Dentro de los 5 (cinco) días siguientes a la publicación de las modificaciones introducidas, el Usuario deberá comunicar por e-mail si no acepta las mismas; en ese caso quedará disuelto el vínculo contractual y será inhabilitado como Usuario. Vencido este plazo, se considerará que el Usuario acepta los nuevos términos y el contrato continuará vinculando a ambas partes.</p>\r\n\r\n<p><br>\r\n<strong><strong>04 - Listado de Bienes. </strong></strong><br>\r\n<br>\r\n<strong>4.1 Publicación de bienes y/o servicios</strong>. El Usuario deberá ofrecer a la venta, los bienes y/o servicios en las categorías y subcategorías apropiadas. Las publicaciones podrán incluir textos descriptivos, gráficos, fotografías y otros contenidos y condiciones pertinentes para la venta del bien o la contratación del servicio, siempre que no violen ninguna disposición de este acuerdo o demás políticas de <strong>Publicamas.com</strong>. El producto ofrecido por el Usuario Vendedor debe ser exactamente descrito en cuanto a sus condiciones y características relevantes. En el caso de que se incluya una fotografía, esta deberá corresponder específicamente al artículo que se ofrece, salvo que se trate de bienes o artículos nuevos o de servicios que por su naturaleza no permiten esa correspondencia. Se entiende y presume que mediante la inclusión del bien o servicio en <strong>Publicamas.com</strong>, el Usuario acepta que tiene la intención y el derecho de vender el bien por él ofrecido, o está facultado para ello por su titular y lo tiene disponible para su entrega inmediata. Se establece que los precios de los artículos publicados deberán ser expresados con IVA incluido cuando corresponda la aplicación del mismo, y en moneda del curso legal. <strong>Publicamas.com</strong> podrá remover cualquier publicación cuyo precio no sea expresado de esta forma para evitar confusiones o malos entendidos en cuanto al precio final.<br>\r\n<br>\r\n<strong>4.2 Artículos Prohibidos</strong>. Sólo podrán ser ingresados en las listas de bienes y/o servicios ofrecidos, aquellos cuya venta no se encuentre tácita o expresamente prohibida en los Términos y Condiciones Generales y demás políticas de <strong>Publicamas.com</strong> o por la ley vigente. <br>\r\n<br>\r\n<strong>4.3. Protección de Propiedad Intelectual</strong>. Quienes sean titulares de derechos podrán identificar y solicitar la remoción de aquellos artículos que a su criterio infrinjan o violen sus derechos. En caso que <strong>Publicamas.com</strong> sospeche que se está cometiendo o se ha cometido una actividad ilícita o infractora de derechos de propiedad intelectual o industrial, <strong>Publicamas.com</strong> se reserva el derecho de adoptar todas las medidas que entienda necesarias.<br>\r\n<br>\r\n<strong>05 - Privacidad de la Información.</strong><br>\r\n<br>\r\nPara utilizar los Servicios ofrecidos por <strong>Publicamas.com</strong>, los Usuarios deberán facilitar determinados datos de carácter personal. Su información personal se procesa y almacena en servidores o medios magnéticos que mantienen altos estándares de seguridad y protección tanto física como tecnológica. Para mayor información sobre la privacidad de los Datos Personales y casos en los que será revelada la información personal, se pueden consultar nuestras Políticas de Privacidad.<br>\r\n<br>\r\n<strong><strong>06 - Obligaciones de los Usuarios. </strong></strong><br>\r\n<br>\r\n<strong>6.1 Obligaciones del Comprador</strong>. Durante el plazo fijado por el Usuario Vendedor, los Usuarios interesados se contactaran con el Usuario Vendedor para informarse sobre los bienes y/o servicios. Las ventas de bienes y  servicios finalizan  una vez que culmina el vencimiento del plazo de la publicación. El Comprador está obligado a comunicarse con el vendedor y completar la operación si ha realizado una oferta por un artículo publicado. Al comprar un artículo el Usuario acepta quedar obligado por las condiciones de venta incluidas en la descripción del artículo. El comprador debe calificar a su contraparte.<br>\r\n<strong>Impuestos. </strong>Tal como lo establece la normativa fiscal vigente, el comprador debe exigir factura o ticket al vendedor como comprobante de la operación. El vendedor no estará obligado a emitir factura o ticket sólo en el caso de tratarse de una persona física que efectúa ventas ocasionalmente. <br>\r\n<br>\r\n<strong>6.2. Obligaciones del Vendedor</strong>. El Usuario Vendedor debe tener capacidad legal para vender el bien objeto de su oferta. <br>\r\nDado que <strong>Publicamas.com</strong> es un punto de encuentro entre comprador y vendedor y no participa de las operaciones que se realizan entre ellos, el Vendedor será responsable por todas las obligaciones y cargas impositivas que correspondan por la venta de sus artículos, sin que pudiera imputársele a <strong>Publicamas.com</strong> algún tipo de responsabilidad por incumplimientos en tal sentido. Cuando el Vendedor haya realizado una venta, deberá calificar a la contraparte. <br>\r\nImpuestos. Como se menciona anteriormente, <strong>Publicamas.com</strong> sólo pone a disposición de los Usuarios un espacio virtual que les permite comunicarse mediante Internet para encontrar una forma de vender o comprar artículos y/o servicios. <strong>Publicamas.com</strong> no tiene participación alguna en el proceso de negociación y perfeccionamiento del contrato definitivo entre las partes. Por eso, <strong>Publicamas.com</strong> no es responsable por el efectivo cumplimiento de las obligaciones fiscales o impositivas establecidas por la ley vigente. <br>\r\n<br>\r\n<br>\r\n<strong>07 – Prohibiciones</strong><br>\r\n<br>\r\nLos Usuarios no podrán: (a) publicar o vender artículos prohibidos por los Términos y Condiciones Generales, demás políticas de <strong>Publicamas.com</strong> o leyes vigentes; (b) insultar o agredir a otros Usuarios; (c) utilizar su reputación, calificaciones, comentarios o réplicas recibidas en el sitio de <strong>Publicamas.com</strong> en cualquier ámbito fuera de <strong>Publicamas.com</strong>.<br>\r\nEste tipo de actividades será investigado por <strong>Publicamas.com</strong> y el infractor podrá ser sancionado con la suspensión o cancelación de la oferta e incluso de su registración como Usuario de <strong>Publicamas.com</strong>, pérdida y/o retiro de calificaciones y/o de cualquier otra forma que estime pertinente, sin perjuicio de las acciones legales a que pueda dar lugar por la configuración de delitos o contravenciones o los perjuicios civiles que pueda causar a los Usuarios oferentes.<br>\r\n<br>\r\n<strong>08 - Violaciones del Sistema o Bases de Datos. </strong><br>\r\n<br>\r\nNo está permitida ninguna acción o uso de dispositivo, software, u otro medio tendiente a interferir tanto en las actividades y operatoria de <strong>Publicamas.com</strong> como en las ofertas, descripciones, cuentas o bases de datos de <strong>Publicamas.com</strong>. Cualquier intromisión, tentativa o actividad violatoria o contraria a las leyes sobre derecho de propiedad intelectual y/o a las prohibiciones estipuladas en este contrato harán pasible a su responsable de las acciones legales pertinentes, y a las sanciones previstas por este acuerdo, así como lo hará responsable de indemnizar los daños ocasionados.<br>\r\n<br>\r\n<strong>09 - Sanciones. Suspensión de operaciones.</strong><br>\r\n<br>\r\nSin perjuicio de otras medidas, <strong>Publicamas.com</strong> advertirá, suspenderá temporal o inhabilitará definitivamente la Cuenta de un Usuario o una publicación e iniciará las acciones que estime pertinentes, y no le prestará sus Servicios si (a) se quebrantara alguna ley, o cualquiera de las estipulaciones de los Términos y Condiciones Generales y demás políticas de <strong>Publicamas.com</strong>; (b) si incumpliera sus compromisos como Usuario; (c) si se incurriera a criterio de <strong>Publicamas.com</strong> en conductas o actos dolosos o fraudulentos; (d) no pudiera verificarse la identidad del Usuario o cualquier información proporcionada por el mismo fuere errónea; (e) <strong>Publicamas.com</strong> entendiera que las publicaciones u otras acciones pueden ser causa de responsabilidad para el Usuario que las publicó, para <strong>Publicamas.com</strong> o para los Usuarios. En el caso de la suspensión o inhabilitación de un Usuario, todos los artículos que tuviera publicados serán removidos del sistema.<br>\r\n<br>\r\n<strong>10 - Responsabilidad. </strong><br>\r\n </p>\r\n\r\n<p><strong>Publicamas.com</strong> pone a disposición de los Usuarios un espacio virtual que les permite ponerse en comunicación mediante Internet para encontrar una forma de vender o comprar servicios o bienes. <strong>Publicamas.com</strong> no es el propietario de los artículos ofrecidos, no tiene posesión de ellos ni los ofrece en venta. <strong>Publicamas.com</strong> no interviene en el perfeccionamiento de las operaciones realizadas entre los Usuarios ni en las condiciones por ellos estipuladas para las mismas, por ello no será responsable respecto de la existencia, calidad, cantidad, estado, integridad o legitimidad de los bienes ofrecidos, adquiridos o enajenados por los Usuarios, así como de la capacidad para contratar de los Usuarios o de la veracidad de los Datos Personales por ellos ingresados. Cada Usuario conoce y acepta ser el exclusivo responsable por los artículos que publica para su venta y por las compras que realiza. <br>\r\nDebido a que <strong>Publicamas.com</strong> no tiene ninguna participación durante todo el tiempo en que el artículo se publica para la venta, ni en la posterior negociación y perfeccionamiento del contrato definitivo entre las partes, no será responsable por el efectivo cumplimiento de las obligaciones asumidas por los Usuarios en el perfeccionamiento de la operación. El Usuario conoce y acepta que al realizar operaciones con otros Usuarios o terceros lo hace bajo su propio riesgo. En ningún caso <strong>Publicamas.com</strong> será responsable por lucro cesante, o por cualquier otro daño y/o perjuicio que haya podido sufrir el Usuario, debido a las operaciones realizadas o no realizadas por artículos publicados a través de <strong>Publicamas.com</strong>. <br>\r\n<strong>Publicamas.com</strong> recomienda actuar con prudencia y sentido común al momento de realizar operaciones con otros Usuarios. El Usuario debe tener presentes, además, los riesgos de contratar con menores o con personas que se valgan de una identidad falsa.<strong>Publicamas.com</strong> no será responsable por la realización de ofertas y/o operaciones con otros Usuarios basadas en la confianza depositada en el sistema o los Servicios brindados por <strong>Publicamas.com</strong>. </p>\r\n\r\n<p>En caso que uno o más Usuarios o algún tercero inicien cualquier tipo de reclamo o acciones legales contra otro u otros Usuarios, todos y cada uno de los Usuarios involucrados en dichos reclamos o acciones eximen de toda responsabilidad a <strong>Publicamas.com</strong> y a sus directores, gerentes, empleados, agentes, operarios, representantes y apoderados.<br>\r\nEn virtud que el usuario vendedor tiene la facultad para eliminar preguntas, se deja aclarado que en ese caso, el usuario será el exclusivo responsable por esa decisión y las consecuencias que pudieran acarrear.<br>\r\n<br>\r\n<strong>11 - Alcance de los servicios de <strong>Publicamas.com</strong>. </strong><br>\r\n </p>\r\n\r\n<p>Este acuerdo no crea ningún contrato de sociedad, de mandato, de franquicia, o relación laboral entre <strong>Publicamas.com</strong> y el Usuario. El Usuario reconoce y acepta que <strong>Publicamas.com</strong> no es parte en ninguna operación, ni tiene control alguno sobre la calidad, seguridad o legalidad de los artículos anunciados, la veracidad o exactitud de los anuncios, la capacidad de los Usuarios para vender o comprar artículos. <strong>Publicamas.com</strong> no puede asegurar que un Usuario completará una operación ni podrá verificar la identidad o Datos Personales ingresados por los Usuarios. </p>\r\n\r\n<p><strong>Publicamas.com</strong> no garantiza la veracidad de la publicidad de terceros que aparezca en el sitio y no será responsable por la correspondencia o contratos que el Usuario celebre con dichos terceros o con otros Usuarios.<br>\r\n<br>\r\n<strong><strong>12 - Fallas en el sistema. </strong></strong><br>\r\n </p>\r\n\r\n<p><strong>Publicamas.com</strong> no se responsabiliza por cualquier daño, perjuicio o pérdida al Usuario causados por fallas en el sistema, en el servidor o en Internet. <strong>Publicamas.com</strong> tampoco será responsable por cualquier virus que pudiera infectar el equipo del Usuario como consecuencia del acceso, uso o examen de su sitio web o a raíz de cualquier transferencia de datos, archivos, imágenes, textos, o audio contenidos en el mismo. Los Usuarios NO podrán imputarle responsabilidad alguna ni exigir pago por lucro cesante, en virtud de perjuicios resultantes de dificultades técnicas o fallas en los sistemas o en Internet. <strong>Publicamas.com</strong> no garantiza el acceso y uso continuado o ininterrumpido de su sitio. El sistema puede eventualmente no estar disponible debido a dificultades técnicas o fallas de Internet, o por cualquier otra circunstancia ajena a <strong>Publicamas.com</strong>; en tales casos se procurará restablecerlo con la mayor celeridad posible sin que por ello pueda imputársele algún tipo de responsabilidad.<br>\r\n<strong>Publicamas.com</strong> no será responsable por ningún error u omisión contenidos en su sitio Web.</p>\r\n\r\n<p><br>\r\n<br>\r\n<strong><strong>13 - Tarifas. Facturación. </strong></strong><br>\r\n<br>\r\nLa registración en Publicamas.com es gratuita. Al publicar productos, servicios, vehículos e inmuebles para la venta, dicha publicación es gratuita.<br>\r\n<br>\r\nSolo se ofrece un servicio de aviso destacado por el cual se debe abonar una tarifa determinada. A través de este pago el aviso será mostrado en los primeros resultados de búsqueda <strong>Publicamas.com</strong> se reserva el derecho de modificar, cambiar, agregar, o eliminar las tarifas vigentes, en cualquier momento, lo cual será notificado a los Usuarios, en la forma establecida en la cláusula 3. Sin embargo, <strong>Publicamas.com</strong> podrá modificar temporalmente la Política de Tarifas y las tarifas por sus servicios por razón de promociones, siendo efectivas estas modificaciones cuando se haga pública la promoción o se realice el anuncio.<br>\r\n<br>\r\nEn caso de haberse facturado cargos que no hubiesen correspondido, el Usuario deberá comunicarse con nuestro equipo de Atención al Cliente para resolver dicha cuestión. <strong>Publicamas.com</strong> se reserva el derecho de tomar las medidas judiciales y extrajudiciales que estime pertinentes para obtener el pago del monto debido.<br>\r\n<br>\r\n<strong>14 - Sistema de calificaciones. </strong><br>\r\n </p>\r\n\r\n<p>Debido a que la verificación de la identidad de los Usuarios en Internet es difícil, <strong>Publicamas.com</strong> no puede confirmar ni confirma la identidad pretendida de cada Usuario. Por ello el Usuario cuenta con un sistema de calificaciones de Usuarios que es actualizado periódicamente por los comentarios ingresados por los Usuarios según las operaciones que hayan realizado. Tanto aquellos Usuarios compradores de una oferta como el vendedor deberán ingresar una calificación informando acerca de la concreción o no de la operación; también podrá ingresar un comentario si así lo desea. Este sistema de calificaciones, además constará de un espacio donde los Usuarios podrán hacer comentarios y réplicas a las calificaciones recibidas y acceder a los mismos. Dichos comentarios serán incluidos bajo exclusiva responsabilidad de los Usuarios que los emitan. <br>\r\n<strong>Publicamas.com</strong> no tiene obligación de verificar la veracidad o exactitud de los mismos y NO se responsabiliza por los dichos allí vertidos por cualquier Usuario, por las ofertas de compras o ventas que los Usuarios realicen teniéndolos en cuenta o por la confianza depositada en las calificaciones de la contraparte o por cualquier otro comentario expresado dentro del sitio o a través de cualquier otro medio incluido el correo electrónico. <strong>Publicamas.com</strong> se reserva el derecho de eliminar aquellos comentarios que sean considerados inadecuados u ofensivos. </p>\r\n\r\n<p><strong>Publicamas.com</strong> mantiene el derecho de excluir a aquellos Usuarios que sean objeto de comentarios negativos provenientes de fuentes distintas.<br>\r\n<br>\r\n<strong>15 - Propiedad intelectual. Enlaces. </strong><br>\r\n<br>\r\nLos contenidos de las páginas relativas a los servicios de <strong>Publicamas.com</strong> como así también los programas, bases de datos, redes, archivos que permiten al Usuario acceder y usar su Cuenta, son de propiedad de <strong>Publicamas.com</strong> y están protegidas por las leyes y los tratados internacionales de derecho de autor, marcas, patentes, modelos y diseños industriales. El uso indebido y la reproducción total o parcial de dichos contenidos quedan prohibidos, salvo autorización expresa y por escrito de <strong>Publicamas.com</strong>. <br>\r\nEl Sitio puede contener enlaces a otros sitios web, lo cual no indica que sean propiedad u operados por <strong>Publicamas.com</strong>. En virtud que <strong>Publicamas.com</strong> no tiene control sobre tales sitios, NO será responsable por los contenidos, materiales, acciones y/o servicios prestados por los mismos, ni por daños o pérdidas ocasionadas por la utilización de los mismos, sean causadas directa o indirectamente. La presencia de enlaces a otros sitios web no implica una sociedad, relación, aprobación, respaldo de <strong>Publicamas.com</strong> a dichos sitios y sus contenidos.<br>\r\n<br>\r\n<strong><strong>16 - Indemnización. </strong></strong><br>\r\n<br>\r\nEl Usuario indemnizará y mantendrá indemne a <strong>Publicamas.com</strong>, sus filiales, empresas controladas y/o controlantes, directivos, administradores, representantes y empleados, por cualquier reclamo o demanda de otros Usuarios o terceros por sus actividades en el Sitio o por su incumplimiento a los Términos y Condiciones Generales y demás Políticas que se entienden incorporadas al presente o por la violación de cualesquiera leyes o derechos de terceros, incluyendo los honorarios de abogados en una cantidad razonable.<br>\r\n<br>\r\n<strong><strong>17 - Jurisdicción y Ley Aplicable. </strong></strong><br>\r\n<br>\r\nEste acuerdo estará regido en todos sus puntos por las leyes vigentes en la República Argentina. <br>\r\nCualquier controversia derivada del presente acuerdo, su existencia, validez, interpretación, alcance o cumplimiento, será sometida al arbitraje del Centro Empresarial de Mediación y Arbitraje, de acuerdo con la reglamentación vigente de dicho tribunal. La sede de dicho arbitraje será la Ciudad Autónoma de Buenos Aires y los procedimientos se llevarán a cabo en idioma castellano.</p>', 'Terminos-y-Condiciones', 0, 1, 3, 1);
INSERT INTO `pages` (`page_id`, `page_title`, `page_desc`, `page_slug`, `main_menu`, `footer_menu`, `menu_order`, `page_status`) VALUES
(13, 'Políticas de Privacidad', '<p>Estas políticas de privacidad (las \"Políticas de Privacidad\") entrarán en vigor desde su aceptación para los nuevos usuarios.<br>\r\nComo parte normal de nuestra actividad recogemos y, en algunos casos, revelamos información sobre nuestros usuarios y visitantes de nuestro sitio Web. Estas Políticas de Privacidad describen la información que <strong>Publicamas.com</strong> recoge sobre sus usuarios y visitantes y lo que puede hacerse con dicha información. Esta política es muy detallada porque es importante que todos los usuarios y visitantes de nuestro sitio Web conozcan las prácticas de <strong>Publicamas.com</strong> de la forma más precisa posible. Al registrarse y/o navegar el sitio Web de <strong>Publicamas.com</strong>, el usuario y/o el visitante presta su consentimiento para que se utilice su información personal de acuerdo a las políticas que se describen a continuación.</p>\r\n\r\n<p><br>\r\n<br>\r\n<strong><strong>La información que recabamos.</strong></strong><br>\r\n<br>\r\nLo primero que se debe hacer para disfrutar de los servicios de <strong>Publicamas.com</strong> es registrarse, suministrando ciertos datos personales (\"Información Personal\") completos y exactos. Podremos solicitar, recabar y almacenar la siguiente Información Personal: Nombre, razón social, C.U.I.T., número de documento o identificación válida, información física de contacto (como número de teléfono domicilio, dirección de e-mail, etc.). <strong>Publicamas.com</strong> podrá confirmar los datos personales suministrados acudiendo a entidades públicas, compañías especializadas o centrales de riesgo, para lo cual nos autorizas expresamente. La información que<strong>Publicamas.com</strong> obtenga de estas entidades será tratada en forma confidencial. <br>\r\nSe acuerda expresamente que en cualquier momento el usuario registrado en <strong>Publicamas.com</strong> podrá solicitar la baja o cierre de su solicitud de registración, y/o el cierre de su cuenta o eliminación de su cuenta e información de la base de datos de<strong>Publicamas.com</strong>.</p>\r\n\r\n<p>Por favor revisa la sección \"Derechos de acceso, cancelación y rectificación de la información personal\" abajo. <br>\r\n<strong>Publicamas.com</strong> recoge y almacena automáticamente cierta información sobre la actividad de los usuarios y visitantes dentro de nuestro sitio web. Tal información puede incluir la URL de la que provienen (estén o no en nuestro sitio web), a qué URL acceden seguidamente (estén o no en nuestro sitio web), qué navegador están usando, y sus direcciones IP. También las páginas visitadas, las búsquedas realizadas, las publicaciones, compras o ventas, calificaciones y réplicas ingresadas, mensajes en los foros, entre otra información que podrá ser almacenada y retenida. <br>\r\nSi los usuarios nos envían correspondencia sean correos electrónicos o cartas, o si otros usuarios o terceros nos envían correspondencia sobre las actividades o sobre los mensajes de otros usuarios en nuestro sitio, podemos recoger y almacenar tal Información Personal, incluyendo direcciones de e-mail. </p>\r\n\r\n<p><br>\r\n<br>\r\n<strong>Uso que hacemos de la información. </strong><br>\r\n<br>\r\nPara suministrar un excelente servicio y para que los usuarios puedan realizar operaciones en forma ágil y segura, <strong>Publicamas.com</strong> requiere cierta información de carácter personal, incluyendo dirección de e-mail. La recolección de información nos permite ofrecer a los usuarios servicios y funcionalidades que se adecuen mejor a sus necesidades y personalizar nuestros servicios para hacer que sus experiencias con <strong>Publicamas.com</strong> sean lo más cómodas posible. La Información Personal que recabamos tiene las siguientes finalidades:<br>\r\nAyudar al comprador y vendedor a entrar en contacto directo en la oportunidad que corresponda. En este caso, <strong>Publicamas.com</strong> suministrará a los interesados sus datos personales (nombre, teléfonos, localidad y correo electrónico), a través de correo electrónico o a través del sitio. La información así conocida por el comprador o el vendedor, sólo podrá ser utilizada a efectos de concluir la operación originada en <strong>Publicamas.com</strong> y no deberá ser empleada por ninguno de ellos con fines publicitarios o promocionales u otras actividades no relacionadas con <strong>Publicamas.com</strong>, salvo la expresa autorización del usuario.<br>\r\nDesarrollar estudios internos sobre los intereses, comportamientos y demografía de los usuarios para comprender mejor sus necesidades e intereses y ofrecer mejores servicios o proveerles información relacionada.<br>\r\nMejorar nuestras iniciativas comerciales y promocionales y analizar las páginas visitadas las búsquedas realizadas por los usuarios, para mejorar nuestra oferta de contenidos y artículos, personalizar dichos contenidos, su presentación y servicios.<br>\r\nEnviar información o mensajes por e-mail sobre nuevos servicios, mostrar publicidad o promociones, banners, de interés para nuestros usuarios, noticias sobre <strong>Publicamas.com</strong>. Los ganadores de las Promociones y/o concursos realizados por <strong>Publicamas.com</strong> autorizan expresamente a difundir sus nombres, datos personales e imágenes y los de sus familias, por los medios y en las formas que consideren convenientes, con fines publicitarios y/o promocionales, sin derecho a compensación alguna.</p>\r\n\r\n<p>Suministrar la información personal de los usuarios a las entidades que intervengan en la resolución de disputas entre los mismos, tales como: Compañías de Seguros, Tribunales de Arbitraje o tribunales competentes para solucionar tales disputas.<br>\r\n<br>\r\n<strong>Confidencialidad de la información. </strong><br>\r\n<br>\r\nUna vez registrado, <strong>Publicamas.com</strong> no venderá, alquilará o compartirá la Información Personal excepto en las formas establecidas en estas políticas. Haremos todo lo que esté a nuestro alcance para proteger la privacidad de la información. Puede suceder que en virtud de órdenes judiciales, o de regulaciones legales, nos veamos obligados a revelar información a las autoridades o terceras partes bajo ciertas circunstancias, o bien en casos que terceras partes puedan interceptar o acceder a cierta información o transmisiones de datos en cuyo caso <strong>Publicamas.com</strong> no responderá por la información que sea revelada. <br>\r\n<br>\r\n<strong>Clave Personal. </strong><br>\r\n </p>\r\n\r\n<p>Para acceder a los servicios reservados únicamente para los usuarios debidamente registrados los usuarios dispondrán de una clave personal. Con ella podrán contactar, vender, calificar, entre otras actividades. Esta clave deberá mantenerla bajo absoluta confidencialidad y, en ningún caso, deberá revelarla o compartirla con otras personas. <br>\r\nEl usuario será responsable de todos los actos que tengan lugar mediante el uso de su Usuario y Clave, lo que incluye hacerse cargo del pago de las tarifas que eventualmente se devenguen o por los perjuicios que puedan sufrir otros usuarios por tal motivo. Si por cualquier razón un usuario creyera que alguien puede conocer su clave, deberá modificarla ingresando desde el menú de navegación en Mi Cuenta y cambiar su clave. </p>\r\n\r\n<p><br>\r\n<strong>Menores de Edad.</strong><br>\r\n<br>\r\nNuestros servicios sólo están disponibles para aquellas personas que tengan capacidad legal para contratar. Por lo tanto, aquellos que no cumplan con esta condición deberán abstenerse de suministrar información personal para ser incluida en nuestras bases de datos. Sin embargo, pueden hacerlo a través de los padres o tutores. <br>\r\n<br>\r\n<strong>El uso de la información por otros Usuarios.</strong><br>\r\n </p>\r\n\r\n<p>Para facilitar la interacción entre todos los miembros de la comunidad de <strong>Publicamas.com</strong>, nuestro servicio permite un acceso limitado a ciertos datos de contacto del resto de usuarios, tales como Nombre de usuario, Teléfonos, Ciudad y dirección de correo electrónico. <br>\r\nLos usuarios sólo podrán utilizar la Información Personal de otros usuarios obtenida en el sitio para: (a) comunicaciones relacionadas con <strong>Publicamas.com</strong> que no constituyan comunicaciones comerciales no solicitadas, (b) reclamaciones sobre fraude, y (c) cualquier otra finalidad a la que el usuario correspondiente consienta expresamente una vez le hayan sido comunicadas previamente la información legalmente requerida.</p>\r\n\r\n<p>Bajo ninguna circunstancia, se debe comunicar Información Personal o dirección de correo electrónico de otro usuario a ningún tercero sin nuestro consentimiento y el del usuario afectado. No se debe agregar a la agenda de direcciones de correo electrónico (física o electrónica) los datos de ningún usuario de <strong>Publicamas.com</strong>, ni siquiera los datos de quienes hayan adquirido algún artículo ofrecido en <strong>Publicamas.com</strong>, sin que medie el consentimiento expreso de tal usuario. <br>\r\n<br>\r\n<strong>Cookies.</strong><br>\r\n </p>\r\n\r\n<p>El usuario y el visitante del sitio Web de <strong>Publicamas.com</strong> conoce y acepta que <strong>Publicamas.com</strong> podrá utilizar un sistema de seguimiento mediante la utilización de cookie (las \"Cookies\"). Las Cookies son pequeños archivos que se instalan en el disco rígido, con una duración limitada en el tiempo que ayudan a personalizar los servicios. También ofrecemos ciertas funcionalidades que sólo están disponibles mediante el empleo de Cookies. Las Cookies se utilizan con el fin de conocer los intereses, el comportamiento y la demografía de quienes visitan o son usuarios de nuestro Sitio Web y de esa forma, comprender mejor sus necesidades e intereses y darles un mejor servicio o proveerle información relacionada. También usaremos la información obtenida por intermedio de las Cookies para analizar las páginas navegadas por el visitante o usuario, las búsquedas realizadas, mejorar nuestras iniciativas comerciales y promocionales, mostrar publicidad o promociones, banners de interés, noticias sobre <strong>Publicamas.com</strong>, perfeccionar nuestra oferta de contenidos y artículos, personalizar dichos contenidos, presentación y servicios; también podremos utilizar Cookies para promover y hacer cumplir las reglas y seguridad del sitio. <strong>Publicamas.com</strong> podrá agregar Cookies en los e-mails que envíe para medir la efectividad de las promociones. <br>\r\nSe establece que la instalación, permanencia y existencia de las Cookies en el computador del usuario depende de su exclusiva voluntad y puede ser eliminada de su computador cuando el usuario así lo desee. Para saber como quitar las Cookies del sistema es necesario revisar la sección Ayuda (Help) del navegador. <br>\r\nAdicionalmente, se pueden encontrar Cookies u otros sistemas similares instalados por terceros en ciertas páginas de nuestro sitio Web. Por ejemplo, al navegar por una página creada por un usuario, puede que exista una Cookie emplazada en tal página. <br>\r\nSe aclara expresamente que estas políticas cubre la utilización de Cookies por este sitio y no la utilización de Cookies por parte de anunciantes. Nosotros no controlamos el uso de Cookies por terceros.</p>\r\n\r\n<p><br>\r\n<br>\r\n<strong>Web Beacons.</strong><br>\r\n<br>\r\nUn Web beacon es una imagen electrónica, también llamada single-pixel (1 x 1) o pixel transparente, que es colocada en código de una página Web. Un Web beacon tiene finalidades similares a las Cookies. Adicionalmente un Web beacon es utilizado para medir patrones de tráfico de los usuarios de una página a otra con el objeto de maximizar como fluye el tráfico a través de la Web. Los usuarios y visitantes del sitio Web de <strong>Publicamas.com</strong> conocen y aceptan que <strong>Publicamas.com</strong> podrá utilizar un sistema de seguimiento mediante la utilización de Web beacons.<br>\r\n<br>\r\n<strong>Orden de autoridades competentes - Requerimientos Legales.</strong><br>\r\n </p>\r\n\r\n<p><strong>Publicamas.com</strong> coopera con las autoridades competentes y con otros terceros para garantizar el cumplimiento de las leyes, por ejemplo en materia de protección de derechos de propiedad industrial e intelectual, prevención del fraude y otras materias. <br>\r\n<strong>Publicamas.com</strong> podrá revelar la Información Personal de sus usuarios bajo requerimiento de la autoridades judiciales o gubernamentales competentes para efectos de investigaciones conducidas por ellas, aunque no exista una orden ni una citación ejecutiva o judicial, o por ejemplo (y sin limitación a este supuesto) cuando se trate de investigaciones de carácter penal o de fraude o las relacionadas con piratería informática o la violación de derechos de autor. En tales situaciones, <strong>Publicamas.com</strong> colaborará con las autoridades competentes con el fin de salvaguardar la integridad y la seguridad de la Comunidad y la de sus usuarios. <br>\r\n<strong>Publicamas.com</strong> puede (y los usuarios lo autorizan expresamente) comunicar cualquier Información Personal sobre sus usuarios con la finalidad de cumplir la normativa aplicable y cooperar con las autoridades competentes en la medida en que discrecionalmente lo entendamos necesario y adecuado en relación con cualquier investigación de un ilícito o un fraude, que pueda exponer a <strong>Publicamas.com</strong> o a sus usuarios a cualquier responsabilidad legal. Además, podemos (y los usuarios lo autorizan expresamente) comunicar su nombre completo, razón  social, domicilio, ciudad, región, código postal, país, número de teléfono, dirección de correo electrónico, etc. en la forma que, a nuestra discreción, entendamos necesaria o adecuada en relación con la investigación del fraude, infracción de derechos de propiedad industrial o intelectual, piratería, o cualquier otra actividad ilegal. Este derecho será ejercido por <strong>Publicamas.com</strong> a efectos de cooperar con el cumplimiento y ejecución de la ley, independientemente que no exista una orden judicial o administrativa al efecto.<br>\r\nAdemás, <strong>Publicamas.com</strong> se reserva el derecho (y nos autorizas expresamente a ello) de comunicar información sobre sus usuarios a otros usuarios, entidades o terceros cuando haya motivos suficientes para considerar que la actividad de un usuario sea sospechosa de intentar o cometer un delito o intentar perjudicar a otras personas. Este derecho será utilizado por <strong>Publicamas.com</strong> a su entera discreción cuando lo considere apropiado o necesario para mantener la integridad y la seguridad de la Comunidad y la de sus usuarios, para hacer cumplir los Términos y Condiciones Generales y demás Políticas del sitio y a efectos de cooperar con la ejecución y cumplimiento de la ley. Este derecho será ejercido por <strong>Publicamas.com</strong> independientemente que no exista una orden judicial o administrativa al efecto.</p>\r\n\r\n<p><br>\r\n<strong>Seguridad. Almacenamiento de la información.</strong><br>\r\n </p>\r\n\r\n<p><strong>Publicamas.com</strong> está obligado a cumplir con toda la normativa aplicable en materia de medidas de seguridad aplicables a la Información Personal. Adicionalmente, <strong>Publicamas.com</strong> usa los estándares de la industria entre materia de protección de la confidencialidad de su Información Personal, incluyendo, en otras medidas, cortafuegos (\"firewalls\") y Secure Socket Layers (\"SSL\"). <strong>Publicamas.com</strong> considera a los datos de sus usuarios como un activo que debe ser protegido de cualquier pérdida o acceso no autorizado. Empleamos diversas técnicas de seguridad para proteger tales datos de accesos no autorizados por usuarios de dentro o fuera de nuestra compañía. Sin embargo, es necesario tener muy en cuenta que la seguridad perfecta no existe en Internet. <br>\r\nPor ello, <strong>Publicamas.com</strong> no se hace responsable por interceptaciones ilegales o violación de sus sistemas o bases de datos por parte de personas no autorizadas. <strong>Publicamas.com</strong>, tampoco se hace responsable por la indebida utilización de la información obtenida por esos medios. <br>\r\nTodos los datos personales de los usuarios serán almacenados en un fichero automatizado de datos personales. El usuario al registrarse en <strong>Publicamas.com</strong> confirma que está informado de la residencia de este fichero. <br>\r\n<br>\r\n<strong>Información en la sección de preguntas y respuestas o foros.</strong><br>\r\n<br>\r\n<strong>Publicamas.com</strong> permite realizar preguntas y respuestas en las publicaciones y además mantiene foros públicos (\"Foros\") que son fáciles de usar y navegar. En estas secciones los usuarios pueden realizar comentarios, dar opiniones, plantear discusiones y temas de su interés en un ambiente amigable, siempre sujetos a las reglas aplicables. <br>\r\nTe recordamos que la Información Personal publicada en la sección de preguntas y respuestas o en los Foros puede ser leída, recolectada o utilizada por cualquier persona. <strong>Publicamas.com</strong> no será responsable por el uso de esa Información Personal publicada por el usuario en estas secciones del sitio.</p>\r\n\r\n<p><br>\r\n<strong>Derechos de acceso, cancelación y rectificación de la información personal.</strong><br>\r\n<br>\r\nLos usuarios tienen reconocidos y podrán ejercitar los derechos de acceder, cancelar y actualizar su Información Personal, incluyendo su dirección de e-mail, así como a oponerse al tratamiento de la misma y a ser informado de las cesiones llevadas a cabo, todo ello de conformidad a lo dispuesto en la normativa aplicable. Conforme se establece en el artículo 14, inciso 3 de la Ley Nº 25.326, el titular de los datos personales tiene la facultad de ejercer el derecho de acceso a los mismos en forma gratuita a intervalos no inferiores a seis meses, salvo que se acredite un interés legítimo al efecto. <br>\r\nLos usuarios garantizan y responden, en cualquier caso, de la veracidad, exactitud, vigencia y autenticidad de la Información Personal facilitada, y se comprometen a mantenerla debidamente actualizada. <br>\r\nUna vez registrado en <strong>Publicamas.com</strong>, el usuario podrá revisar y cambiar la información que nos ha enviado durante el proceso de registración incluyendo:<br>\r\nDirección de correo electrónico. Sin perjuicio de los cambios que realice, <strong>Publicamas.com</strong> conservará la Información Personal anterior por motivos de seguridad y control del fraude.<br>\r\nla información de la registración como: compañía, domicilio, ciudad, región, código postal, número principal de teléfono, número secundario de teléfono, número de fax, correo electrónico, etc. La clave.<br>\r\nEn determinados casos, mantendremos en nuestros archivos Información Personal que nos hayas pedido que retiremos, y ello con la finalidad de resolver disputas o reclamaciones, detectar problemas o incidencias y solucionarlos, y dar cumplimiento a lo dispuesto en los Términos y Condiciones Generales por un período de tiempo determinado por la ley. En cualquier caso, la Información Personal de un usuario no será inmediatamente retirada de nuestros archivos por motivos legales y técnicos, incluyendo sistemas de soportes de seguridad. Por tanto, no se debe esperar que toda la Información Personal sea definitivamente borrada de nuestras bases de datos. <br>\r\nLos usuarios deben actualizar su Información Personal periódicamente conforme vaya cambiando para que los otros usuarios puedan ubicarlos cuando realicen una operación. Para hacer cualquier modificación en la información suministrada en el momento de la Registración, se debe ingresar en la sección Mi cuenta.<br>\r\n<strong>Publicamas.com</strong> podrá modificar en cualquier momento los términos y condiciones de estas Políticas de Privacidad y confidencialidad y/o las prácticas de envío de e-mails. Si decidimos introducir algún cambio material a nuestras Políticas de Privacidad, te notificaremos publicando una versión actualizada de las Políticas en esta sección o mediante el envío de un e-mail o informándolo en la página principal u otras secciones del sitio para mantenerte actualizado de los cambios realizados. <br>\r\nSi hacemos cambios materiales en la forma que tu Información Personal es administrada te notificaremos por e-mail para que puedas tomar una decisión informada respecto si aceptas o no que tu Información Personal sea utilizada de esa forma. Si no aceptas esos términos, en ese caso quedará disuelto el vínculo contractual y tu Información Personal no será usada de otra forma que la que fue informada al momento de recabarse. <br>\r\nSe informa que la Dirección Nacional de Protección de Datos Personales, Órgano de Control de la Ley Nº 25.326, tiene la atribución de atender las denuncias y reclamos que se interpongan con relación al incumplimiento de las normas sobre protección de datos personales. </p>', 'Pol-ticas-de-Privacidad', 0, 1, 4, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) NOT NULL,
  `token` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('vendor@gmail.com', '$2y$10$DudwNnzFgSRTp4JUAezRYOlyI97mHDUNrtGj9Lci3yCXTLASy3EbG', '2019-06-24 05:24:16'),
('admin@admin.com', '$2y$10$S2yqTfG9UXHCWZbIWp/fmOSAB4/abqAbhPXedsr58jDNIftOsrxlK', '2019-06-24 05:49:05');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `post`
--

CREATE TABLE `post` (
  `post_id` int(11) NOT NULL,
  `post_title` varchar(1000) NOT NULL,
  `post_slug` varchar(200) NOT NULL,
  `blog_cat_id` int(100) NOT NULL,
  `post_short_desc` text NOT NULL,
  `post_media_type` varchar(50) NOT NULL DEFAULT 'image',
  `post_image` varchar(200) NOT NULL,
  `post_video` varchar(500) DEFAULT NULL,
  `post_desc` longtext NOT NULL,
  `post_date` date NOT NULL,
  `post_view` int(100) NOT NULL DEFAULT '0',
  `post_tags` text,
  `post_status` int(100) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `post`
--

INSERT INTO `post` (`post_id`, `post_title`, `post_slug`, `blog_cat_id`, `post_short_desc`, `post_media_type`, `post_image`, `post_video`, `post_desc`, `post_date`, `post_view`, `post_tags`, `post_status`) VALUES
(11, 'Ridiculus non et dis fermentum non', 'Ridiculus-non-et-dis-fermentum-non', 15, 'Tortor ac litora phasellus a porta hac vestibulum fringilla taciti gravida adipiscing est litora sed massa per a ut vivamus libero vel. Ridiculus non et dis fermentum non libero per hac vestibulum senectus tortor leo nisl lobortis consectetur senectus habitant facilisi sodales vestibulum potenti nisl a. Ultricies et tortor', 'image', '1568442066.jpg', NULL, '&lt;p&gt;Tortor ac litora phasellus a porta hac vestibulum fringilla taciti gravida adipiscing est litora sed massa per a ut vivamus libero vel. Ridiculus non et dis fermentum non libero per hac vestibulum senectus tortor leo nisl lobortis consectetur senectus habitant facilisi sodales vestibulum potenti nisl a. Ultricies et tortor&lt;/p&gt;\r\n\r\n&lt;p&gt;Tortor ac litora phasellus a porta hac vestibulum fringilla taciti gravida adipiscing est litora sed massa per a ut vivamus libero vel. Ridiculus non et dis fermentum non libero per hac vestibulum senectus tortor leo nisl lobortis consectetur senectus habitant facilisi sodales vestibulum potenti nisl a. Ultricies et tortor&lt;/p&gt;\r\n\r\n&lt;p&gt;Tortor ac litora phasellus a porta hac vestibulum fringilla taciti gravida adipiscing est litora sed massa per a ut vivamus libero vel. Ridiculus non et dis fermentum non libero per hac vestibulum senectus tortor leo nisl lobortis consectetur senectus habitant facilisi sodales vestibulum potenti nisl a. Ultricies et tortor&lt;/p&gt;', '2019-09-14', 19, 'blog,lifestyle,style', 1),
(12, 'Mus viverra sem a a magna consequat', 'Mus-viverra-sem-a-a-magna-consequat', 16, 'Nam venenatis parturient convallis arcu lorem at eros cubilia nulla adipiscing urna sed vestibulum a suscipit. Mus viverra sem a a magna consequat ullamcorper a tristique etiam integer a dui parturient dapibus velit massa a nam feugiat donec.Nibh vestibulum facilisi morbi praesent facilisi vestibulum non facilisis potenti consectetur.', 'video', '1568442193.jpg', 'https://www.youtube.com/watch?v=Bey4XXJAqS8', '<p>Nam venenatis parturient convallis arcu lorem at eros cubilia nulla adipiscing urna sed vestibulum a suscipit. Mus viverra sem a a magna consequat ullamcorper a tristique etiam integer a dui parturient dapibus velit massa a nam feugiat donec.Nibh vestibulum facilisi morbi praesent facilisi vestibulum non facilisis potenti consectetur.</p>\r\n\r\n<p>Nam venenatis parturient convallis arcu lorem at eros cubilia nulla adipiscing urna sed vestibulum a suscipit. Mus viverra sem a a magna consequat ullamcorper a tristique etiam integer a dui parturient dapibus velit massa a nam feugiat donec.Nibh vestibulum facilisi morbi praesent facilisi vestibulum non facilisis potenti consectetur.</p>\r\n\r\n<p>Nam venenatis parturient convallis arcu lorem at eros cubilia nulla adipiscing urna sed vestibulum a suscipit. Mus viverra sem a a magna consequat ullamcorper a tristique etiam integer a dui parturient dapibus velit massa a nam feugiat donec.Nibh vestibulum facilisi morbi praesent facilisi vestibulum non facilisis potenti consectetur.</p>', '2020-06-08', 2, 'travel,lifestyle,blog', 1),
(13, 'Parturient eleifend varius auctor', 'Parturient-eleifend-varius-auctor', 13, 'Accumsan proin aliquet ridiculus sapien parturient eleifend varius auctor dignissim vivamus vivamus a metus nostra curae at et sociosqu leo parturient euismod suspendisse nunc penatibus magna. Adipiscing a condimentum vel proin nisl dignissim class congue malesuada suspendisse primis neque odio at parturient.', 'image', '1568442458.jpg', NULL, '&lt;p&gt;Accumsan proin aliquet ridiculus sapien parturient eleifend varius auctor dignissim vivamus vivamus a metus nostra curae at et sociosqu leo parturient euismod suspendisse nunc penatibus magna. Adipiscing a condimentum vel proin nisl dignissim class congue malesuada suspendisse primis neque odio at parturient.&lt;/p&gt;\r\n\r\n&lt;p&gt;Accumsan proin aliquet ridiculus sapien parturient eleifend varius auctor dignissim vivamus vivamus a metus nostra curae at et sociosqu leo parturient euismod suspendisse nunc penatibus magna. Adipiscing a condimentum vel proin nisl dignissim class congue malesuada suspendisse primis neque odio at parturient.&lt;/p&gt;\r\n\r\n&lt;p&gt;Accumsan proin aliquet ridiculus sapien parturient eleifend varius auctor dignissim vivamus vivamus a metus nostra curae at et sociosqu leo parturient euismod suspendisse nunc penatibus magna. Adipiscing a condimentum vel proin nisl dignissim class congue malesuada suspendisse primis neque odio at parturient.&lt;/p&gt;', '2019-09-14', 5, 'Hobbies,lifestyle,post,blog', 1),
(14, 'Non vestibulum lacus sociosqu hac', 'Non-vestibulum-lacus-sociosqu-hac', 11, 'Aptent ultrices vestibulum scelerisque dui suspendisse adipiscing vestibulum consectetur a class faucibus senectus iaculis hendrerit interdum justo commodo.A eget nunc natoque at dignissim a libero hendrerit a ut bibendum arcu ultrices a magna vitae leo vel id donec duis nulla nulla a adipiscing odio sodales.', 'video', '1568442655.jpg', 'https://www.youtube.com/watch?v=xcJtL7QggTI', '<p>Aptent ultrices vestibulum scelerisque dui suspendisse adipiscing vestibulum consectetur a class faucibus senectus iaculis hendrerit interdum justo commodo.A eget nunc natoque at dignissim a libero hendrerit a ut bibendum arcu ultrices a magna vitae leo vel id donec duis nulla nulla a adipiscing odio sodales.</p>\r\n\r\n<p>Aptent ultrices vestibulum scelerisque dui suspendisse adipiscing vestibulum consectetur a class faucibus senectus iaculis hendrerit interdum justo commodo.A eget nunc natoque at dignissim a libero hendrerit a ut bibendum arcu ultrices a magna vitae leo vel id donec duis nulla nulla a adipiscing odio sodales.</p>\r\n\r\n<p>Aptent ultrices vestibulum scelerisque dui suspendisse adipiscing vestibulum consectetur a class faucibus senectus iaculis hendrerit interdum justo commodo.A eget nunc natoque at dignissim a libero hendrerit a ut bibendum arcu ultrices a magna vitae leo vel id donec duis nulla nulla a adipiscing odio sodales.</p>', '2020-06-08', 20, 'blog,post,creative', 1),
(15, 'Suspendisse a penatibus a varius', 'Suspendisse-a-penatibus-a-varius', 14, 'Susp endisse ullam corper a adipiscing class ullam corper inceptos nisl consequat eros congue ullamcorper suspendisse a penatibus a varius. Montes a platea viva mus ridiculus consequat parturient parturient pretium nascetur at cras porta parturient scelerisque ad mollis at in vivamus risus. Euismod maecenas.', 'image', '1568442786.jpg', NULL, '&lt;p&gt;Susp endisse ullam corper a adipiscing class ullam corper inceptos nisl consequat eros congue ullamcorper suspendisse a penatibus a varius. Montes a platea viva mus ridiculus consequat parturient parturient pretium nascetur at cras porta parturient scelerisque ad mollis at in vivamus risus. Euismod maecenas.&lt;/p&gt;\r\n\r\n&lt;p&gt;Susp endisse ullam corper a adipiscing class ullam corper inceptos nisl consequat eros congue ullamcorper suspendisse a penatibus a varius. Montes a platea viva mus ridiculus consequat parturient parturient pretium nascetur at cras porta parturient scelerisque ad mollis at in vivamus risus. Euismod maecenas.&lt;/p&gt;\r\n\r\n&lt;p&gt;Susp endisse ullam corper a adipiscing class ullam corper inceptos nisl consequat eros congue ullamcorper suspendisse a penatibus a varius. Montes a platea viva mus ridiculus consequat parturient parturient pretium nascetur at cras porta parturient scelerisque ad mollis at in vivamus risus. Euismod maecenas.&lt;/p&gt;', '2019-09-14', 3, 'blog,international,post', 1),
(16, 'Nam venenatis parturient convallis', 'Nam-venenatis-parturient-convallis', 12, 'Nam venenatis parturient convallis arcu lorem at eros cubilia nulla adipiscing urna sed vestibulum a suscipit. Mus viverra sem a a magna consequat ullamcorper a tristique etiam integer a dui parturient dapibus velit massa a nam feugiat donec.Nibh vestibulum facilisi morbi praesent facilisi vestibulum non facilisis potenti consectetur.', 'video', '1568442941.jpg', 'https://www.youtube.com/watch?v=rkAfWfZkfyo', '<p>Nam venenatis parturient convallis arcu lorem at eros cubilia nulla adipiscing urna sed vestibulum a suscipit. Mus viverra sem a a magna consequat ullamcorper a tristique etiam integer a dui parturient dapibus velit massa a nam feugiat donec.Nibh vestibulum facilisi morbi praesent facilisi vestibulum non facilisis potenti consectetur.</p>\r\n\r\n<p>Nam venenatis parturient convallis arcu lorem at eros cubilia nulla adipiscing urna sed vestibulum a suscipit. Mus viverra sem a a magna consequat ullamcorper a tristique etiam integer a dui parturient dapibus velit massa a nam feugiat donec.Nibh vestibulum facilisi morbi praesent facilisi vestibulum non facilisis potenti consectetur.</p>\r\n\r\n<p>Nam venenatis parturient convallis arcu lorem at eros cubilia nulla adipiscing urna sed vestibulum a suscipit. Mus viverra sem a a magna consequat ullamcorper a tristique etiam integer a dui parturient dapibus velit massa a nam feugiat donec.Nibh vestibulum facilisi morbi praesent facilisi vestibulum non facilisis potenti consectetur.</p>', '2020-06-08', 13, 'Travel,cretive,post', 1),
(17, 'Vestibulum fringilla taciti gravida', 'Vestibulum-fringilla-taciti-gravida', 16, 'Tortor ac litora phasellus a porta hac vestibulum fringilla taciti gravida adipiscing est litora sed massa per a ut vivamus libero vel. Ridiculus non et dis fermentum non libero per hac vestibulum senectus tortor leo nisl lobortis consectetur senectus habitant facilisi sodales vestibulum potenti nisl a. Ultricies et tortor', 'image', '1568443072.jpg', NULL, '&lt;p&gt;Tortor ac litora phasellus a porta hac vestibulum fringilla taciti gravida adipiscing est litora sed massa per a ut vivamus libero vel. Ridiculus non et dis fermentum non libero per hac vestibulum senectus tortor leo nisl lobortis consectetur senectus habitant facilisi sodales vestibulum potenti nisl a. Ultricies et tortor&lt;/p&gt;\r\n\r\n&lt;p&gt;Tortor ac litora phasellus a porta hac vestibulum fringilla taciti gravida adipiscing est litora sed massa per a ut vivamus libero vel. Ridiculus non et dis fermentum non libero per hac vestibulum senectus tortor leo nisl lobortis consectetur senectus habitant facilisi sodales vestibulum potenti nisl a. Ultricies et tortor&lt;/p&gt;\r\n\r\n&lt;p&gt;Tortor ac litora phasellus a porta hac vestibulum fringilla taciti gravida adipiscing est litora sed massa per a ut vivamus libero vel. Ridiculus non et dis fermentum non libero per hac vestibulum senectus tortor leo nisl lobortis consectetur senectus habitant facilisi sodales vestibulum potenti nisl a. Ultricies et tortor&lt;/p&gt;', '2019-09-14', 99, 'creative,international,travel,post', 1),
(18, 'Pretium nascetur at cras porta', 'Pretium-nascetur-at-cras-porta', 15, 'Susp endisse ullam corper a adipiscing class ullam corper inceptos nisl consequat eros congue ullamcorper suspendisse a penatibus a varius. Montes a platea viva mus ridiculus consequat parturient parturient pretium nascetur at cras porta parturient scelerisque ad mollis at in vivamus risus. Euismod maecenas.', 'video', '1568443277.jpg', 'https://www.youtube.com/watch?v=m9EClKA1VeQ', '<p>Susp endisse ullam corper a adipiscing class ullam corper inceptos nisl consequat eros congue ullamcorper suspendisse a penatibus a varius. Montes a platea viva mus ridiculus consequat parturient parturient pretium nascetur at cras porta parturient scelerisque ad mollis at in vivamus risus. Euismod maecenas.</p>\r\n\r\n<p>Susp endisse ullam corper a adipiscing class ullam corper inceptos nisl consequat eros congue ullamcorper suspendisse a penatibus a varius. Montes a platea viva mus ridiculus consequat parturient parturient pretium nascetur at cras porta parturient scelerisque ad mollis at in vivamus risus. Euismod maecenas.</p>\r\n\r\n<p>Susp endisse ullam corper a adipiscing class ullam corper inceptos nisl consequat eros congue ullamcorper suspendisse a penatibus a varius. Montes a platea viva mus ridiculus consequat parturient parturient pretium nascetur at cras porta parturient scelerisque ad mollis at in vivamus risus. Euismod maecenas.</p>', '2020-06-08', 60, 'lifestyle,blog,post', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `post_comment`
--

CREATE TABLE `post_comment` (
  `comment_id` int(11) NOT NULL,
  `post_id` int(50) NOT NULL,
  `user_id` int(50) NOT NULL,
  `comment_content` text NOT NULL,
  `comment_date` date NOT NULL,
  `comment_status` int(50) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `post_comment`
--

INSERT INTO `post_comment` (`comment_id`, `post_id`, `user_id`, `comment_content`, `comment_date`, `comment_status`) VALUES
(2, 17, 13, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam', '2019-12-31', 1),
(4, 17, 7, 'ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam', '2019-12-31', 1),
(5, 18, 1, 'jhgkjhjkhjkhk', '2020-07-14', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `product`
--

CREATE TABLE `product` (
  `product_id` int(11) NOT NULL,
  `user_id` int(200) NOT NULL,
  `product_token` varchar(200) NOT NULL,
  `product_name` varchar(500) NOT NULL,
  `product_sku` varchar(200) DEFAULT NULL,
  `product_slug` varchar(500) NOT NULL,
  `product_category` varchar(200) NOT NULL,
  `product_short_desc` text NOT NULL,
  `product_desc` longtext NOT NULL,
  `product_price` float NOT NULL,
  `product_offer_price` float NOT NULL DEFAULT '0',
  `product_image` varchar(200) DEFAULT NULL,
  `product_return_policy` longtext,
  `product_video_url` varchar(500) DEFAULT NULL,
  `product_allow_seo` int(50) NOT NULL DEFAULT '0',
  `product_seo_keyword` text,
  `product_seo_desc` text,
  `product_estimate_time` varchar(200) DEFAULT NULL,
  `product_condition` varchar(200) NOT NULL,
  `product_brand` varchar(100) DEFAULT NULL,
  `product_tags` varchar(500) DEFAULT NULL,
  `product_featured` int(50) NOT NULL DEFAULT '0',
  `product_type` varchar(50) NOT NULL,
  `product_file` varchar(200) DEFAULT NULL,
  `product_external_url` varchar(500) DEFAULT NULL,
  `product_local_shipping_fee` float NOT NULL DEFAULT '0',
  `product_global_shipping_fee` float NOT NULL DEFAULT '0',
  `product_attribute_type` varchar(200) DEFAULT NULL,
  `product_attribute` varchar(500) DEFAULT NULL,
  `product_stock` int(200) NOT NULL DEFAULT '0',
  `flash_deals` int(50) NOT NULL DEFAULT '0',
  `flash_deal_start_date` varchar(200) DEFAULT NULL,
  `flash_deal_end_date` varchar(200) DEFAULT NULL,
  `product_date` date NOT NULL,
  `product_status` int(50) NOT NULL DEFAULT '0',
  `product_drop_status` varchar(50) NOT NULL DEFAULT 'no'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `product`
--

INSERT INTO `product` (`product_id`, `user_id`, `product_token`, `product_name`, `product_sku`, `product_slug`, `product_category`, `product_short_desc`, `product_desc`, `product_price`, `product_offer_price`, `product_image`, `product_return_policy`, `product_video_url`, `product_allow_seo`, `product_seo_keyword`, `product_seo_desc`, `product_estimate_time`, `product_condition`, `product_brand`, `product_tags`, `product_featured`, `product_type`, `product_file`, `product_external_url`, `product_local_shipping_fee`, `product_global_shipping_fee`, `product_attribute_type`, `product_attribute`, `product_stock`, `flash_deals`, `flash_deal_start_date`, `flash_deal_end_date`, `product_date`, `product_status`, `product_drop_status`) VALUES
(4, 8, 'spSsrgcMAdBREUSjANytmY41k', 'Sed do eiusmod tempor incididunt ut', 'product001', 'Sed-do-eiusmod-tempor-incididunt-ut', 'cat-19,subcat-52,subcat-55', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam.', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum</p>', 250, 200, '15770967051.jpg', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum', 'https://www.youtube.com/watch?v=C0DPdy98e4c', 1, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam', '5', 'new', NULL, 'Lorem ipsum,sed do eiusmod', 1, 'physical', '', '', 20, 50, '3,3,4,4,4', '2,5,7,8,9', 10, 0, '', '', '2020-01-27', 1, 'no'),
(5, 8, 'eBQgTMoRQvfmuU8NvJizhEkC5', 'Labore et dolore magna aliqua', 'product002', 'Labore-et-dolore-magna-aliqua', 'cat-27', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>', 15, 10, '15825256521.jpg', '', '', 0, '', '', '', '', '', 'woocommerce,plugin,wp plugin', 1, 'digital', '1577097904147.zip', '', 0, 0, '', '', 1, 0, '', '', '2020-02-24', 1, 'no'),
(6, 8, 'MOE5lCalUFoY3r2x8vAfkdVvc', 'Beatae vitae dicta sunt explicabo', 'product003', 'Beatae-vitae-dicta-sunt-explicabo', 'cat-19,subcat-53', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum</p>', 120, 90, '15771831031.jpg', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum', '', 0, '', '', '10', 'new', NULL, 'women top,women dress', 0, 'external', '', 'http://test.com', 0, 0, '3,3,4,4', '2,5,6,7', 5, 0, '', '', '2020-01-27', 1, 'no'),
(7, 8, 'smONxeE16pbTaBxTzpI8O5CMS', 'Voluptatem sequi nesciunt', 'product004', 'Voluptatem-sequi-nesciunt', 'cat-19,subcat-53', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum</p>', 85, 0, '15771836621.jpg', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam', '', 1, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam', '6', 'used', NULL, 'women dress,top dress', 1, 'physical', '', '', 20, 30, '3,3,4,4', '1,4,7,8', 6, 0, '', '', '2020-01-27', 1, 'no'),
(8, 8, 'd6GxLNzHbpfBqY3P69vp7N1ct', 'Quis autem vel eum iure', 'product005', 'Quis-autem-vel-eum-iure', 'cat-19,subcat-53', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum</p>', 60, 55, '15771846231.jpg', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum', 'https://www.youtube.com/watch?v=C0DPdy98e4c', 0, '', '', '20', 'new', NULL, 'woomen dress,latest collection', 0, 'physical', '', '', 10, 20, '3,3,4', '1,4,6', 10, 0, '', '', '2020-01-27', 1, 'no'),
(9, 8, 'rFHIbGh0Yd8PburkqML5lE5K4', 'Nemo enim ipsam voluptatem', 'product006', 'Nemo-enim-ipsam-voluptatem', 'cat-19,subcat-53', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum</p>', 120, 80, '15771851261.jpg', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum', '', 1, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam', '2', 'new', NULL, 'women dress,latest dress', 1, 'physical', '', '', 25, 35, NULL, '1,3,6,7,8', 2, 0, NULL, NULL, '2019-12-24', 1, 'no'),
(10, 8, 'dvbTgjNMS0Xi1CXRZkR49DOT7', 'Dicta sunt explicabo', 'product006', 'Dicta-sunt-explicabo', 'cat-19,subcat-53', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum</p>', 25, 10, '15771854211.jpg', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum', '', 0, '', '', '10', 'used', NULL, 'cloth,women', 0, 'physical', '', '', 5, 10, '3,4', '3,6', 5, 0, '', '', '2020-01-27', 1, 'no'),
(11, 8, 'wd7bwYLHf3Ics1Ha17obAX5WU', 'Sit voluptatem accusantium', 'product007', 'Sit-voluptatem-accusantium', 'cat-19,subcat-52,subcat-55,cat-25', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum</p>', 65, 0, '15771857111.jpg', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam', 'https://www.youtube.com/watch?v=C0DPdy98e4c', 1, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam', '5', 'new', NULL, 'men shoe,men dress,men cloth', 0, 'physical', '', '', 25, 35, '3,3,3,4,4,4', '1,2,5,7,9,11', 10, 0, '', '', '2020-01-27', 1, 'no'),
(12, 8, 'R56mTWU23DYNEPEZTZqzkhxFg', 'Consectetur adipiscing elit', 'product009', 'Consectetur-adipiscing-elit', 'cat-19,subcat-53,subcat-55,cat-24', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum</p>', 149, 126, '15774418551.jpg', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum', '', 0, '', '', '10', 'new', NULL, 'women dress,trends', 1, 'physical', '', '', 10, 20, '3,4,4,4', '3,7,8,9', 5, 1, '2020-02-03 07:24 pm', '2021-07-31 06:15 am', '2020-02-03', 1, 'no'),
(13, 8, 'DSBHyye2NhED8LdXLQ7DUgOpF', 'Quia consequuntur magni', 'product010', 'Quia-consequuntur-magni', 'cat-19,subcat-52,cat-21', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum</p>', 200, 155, '15774423711.jpeg', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum', 'https://www.youtube.com/watch?v=C0DPdy98e4c', 1, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam', '5', 'used', NULL, 'men shoe,shirts', 0, 'external', '', 'http://dfsf.com', 0, 0, '3,3,3,4,4', '1,2,3,6,9', 2, 0, '', '', '2020-01-27', 1, 'no'),
(14, 8, '8XkmB5R5GLmmkesFa8HTjNFyx', 'Laboris nisi ut aliquip', 'product011', 'Laboris-nisi-ut-aliquip', 'cat-19,subcat-53', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum</p>', 99, 0, '15774435991.jpg', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum', '', 0, '', '', '3', 'new', NULL, 'women,dress,black dress', 0, 'external', '', 'http://google.com', 0, 0, '3,3,3,4,4,4', '3,4,5,7,9,11', 5, 1, '2020-02-03 07:24 pm', '2021-06-11 09:42 am', '2020-02-03', 1, 'no'),
(15, 8, '0AErxGkdVuE7hNTEsWuEbdVlY', 'Duis aute irure dolor', 'product012', 'Duis-aute-irure-dolor', 'cat-19,subcat-52', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>', 125, 0, '15774444281.jpg', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam', '', 1, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam', '15', 'new', NULL, 'men shirt,dresses', 0, 'external', '', 'http://dfsf.com', 0, 0, '4,4,4', '6,7,9', 5, 1, '2020-02-03 06:47 pm', '2021-03-27 12:00 am', '2020-02-03', 1, 'no'),
(16, 13, '9Hyt4vGVaTWQHvxrMcLvKmjl0', 'Consectetur adipg elit', 'product015', 'Consectetur-adipg-elit', 'cat-19,subcat-52', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum</p>', 140, 80, '15774447271.jpeg', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum', 'https://www.youtube.com/watch?v=C0DPdy98e4c', 0, '', '', '10', 'used', NULL, 'men,collection', 1, 'external', '', 'http://dfsf.com', 0, 0, '3,3,4,4', '1,2,6,9', 2, 1, '2020-02-02 07:24 pm', '2020-11-28 08:36 am', '2020-02-03', 1, 'no'),
(17, 13, 'x0HPtJmVT571oLbhjLctxb828', 'Sunt in culpa qui officia', 'product018', 'Sunt-in-culpa-qui-officia', 'cat-19,subcat-53', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum</p>', 125, 75, '15774450851.jpeg', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum', '', 0, '', '', '7', 'new', '13', 'girl dress,yellow dress', 1, 'external', '', 'http://test.com', 0, 0, '3,3,4,4', '2,5,6,7', 10, 1, '2020-02-03 07:24 pm', '2021-05-29 05:31 am', '2020-02-22', 1, 'no'),
(18, 13, 'IJNVlgSr0NiJNu1nTsi5nRsEo', 'Iste natus error sit voluptatem', 'product17', 'Iste-natus-error-sit-voluptatem', 'cat-27', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum</p>', 16, 0, '15825256201.jpg', '', '', 0, '', '', '', '', '', 'woocommerce,wp,shipping', 0, 'digital', '1577445829147.zip', '', 0, 0, '', '', 1, 0, '2020-01-04 04:51 pm', '2020-04-30 07:00 am', '2020-02-24', 1, 'no'),
(19, 13, 't1I1e7HGmSVtX4SdlcJZbBtNG', 'Fugiat nulla pariatur', 'product020', 'Fugiat-nulla-pariatur', 'cat-27', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum</p>', 25, 0, '15825256051.jpg', '', 'https://www.youtube.com/watch?v=C0DPdy98e4c', 0, '', '', '', '', '', 'wp,woocommerce,megamenu', 0, 'digital', '1577445929147.zip', '', 0, 0, '', '', 1, 0, '', '', '2020-02-24', 1, 'no'),
(20, 13, 'cZ7ndKbP3Bq1vgaN1LJzojbLQ', 'Reprehenderit in voluptate', 'product020', 'Reprehenderit-in-voluptate', 'cat-27', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum</p>', 46, 25, '15825255901.jpg', '', '', 0, '', '', '', '', '', '', 0, 'digital', '1577446234147.zip', '', 0, 0, '', '', 1, 0, '', '', '2020-02-24', 1, 'no'),
(21, 13, 'BJLA99sOWVoiYUgT3UJB7WOmk', 'Ut aliquip ex ea commodo', 'product021', 'Ut-aliquip-ex-ea-commodo', 'cat-27', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum</p>', 120, 0, '15825255741.jpg', '', 'https://www.youtube.com/watch?v=C0DPdy98e4c', 0, '', '', '', '', '', '', 0, 'digital', '1577446376147.zip', '', 0, 0, '', '', 1, 0, '', '', '2020-02-24', 1, 'no'),
(22, 13, 'DPD8aBNsXqH5nxEe3fALTVy8T', 'Aute irure dolor', 'product022', 'Aute-irure-dolor', 'cat-27', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum</p>', 100, 50, '15825255581.jpg', '', '', 0, '', '', '', '', '', '', 0, 'digital', '1577446515147.zip', '', 0, 0, '', '', 1, 0, '', '', '2020-02-24', 1, 'no'),
(23, 13, 'NgaS40SEmwCZE9FA33PEKIFn7', 'Omnis iste natus error sit', 'product025', 'Omnis-iste-natus-error-sit', 'cat-19,subcat-53', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum</p>', 140, 100, '15774525681.jpg', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum', '', 1, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam', '10', 'new', NULL, 'deal product,green trends', 1, 'physical', '', '', 20, 50, '3,3,4,4,4', '3,5,9,10,11', 10, 1, '2020-02-03 07:42 pm', '2021-03-27 12:00 am', '2020-02-03', 1, 'no'),
(30, 8, 'B3E7v6Iplf5nxsipneU3VcuH1', 'HH', 'LL', 'HH', 'subcat-52', 'FDSA', '<p>FDSA</p>', 33, 0, '15823442381.jpg', '', '', 0, '', '', '', 'new', '', 'DFS', 0, 'physical', '', '', 0, 0, '', '', 0, 0, '', '', '2020-02-22', 0, 'yes'),
(31, 8, 'RvynR0IbDZAMHTaMQZK2uTKIT', 'VV', 'VD', 'VV', 'subcat-53', 'DA', '<p>FDSA</p>', 88, 0, '15823442991.jpg', '', '', 0, '', '', '', 'new', '', '', 0, 'physical', '', '', 0, 0, '3,4', '2,8', 0, 0, '', '', '2020-02-22', 0, 'yes'),
(32, 8, 'YBIN56KeVRBkutiEZNmN8DH8X', 'WEE', 'FDSA', 'WEE', 'subcat-53', 'FDSA', '<p>FDSADFA</p>', 21, 0, '15823452691.jpg', '', '', 0, '', '', '5', 'new', '', '', 0, 'digital', '1582345835147.zip', '', 0, 0, '', '', 1, 0, '', '', '2020-02-22', 0, 'yes');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `product_attribute`
--

CREATE TABLE `product_attribute` (
  `attribute_id` int(11) NOT NULL,
  `user_id` int(200) NOT NULL,
  `attribute_name` varchar(200) NOT NULL,
  `attribute_slug` varchar(200) NOT NULL,
  `attribute_search` int(50) NOT NULL DEFAULT '0',
  `attribute_status` int(50) NOT NULL,
  `attribute_order` int(50) NOT NULL DEFAULT '0',
  `attribute_drop_status` varchar(50) NOT NULL DEFAULT 'no'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `product_attribute`
--

INSERT INTO `product_attribute` (`attribute_id`, `user_id`, `attribute_name`, `attribute_slug`, `attribute_search`, `attribute_status`, `attribute_order`, `attribute_drop_status`) VALUES
(3, 1, 'Color', 'Color', 1, 1, 1, 'no'),
(4, 1, 'Size', 'Size', 1, 1, 2, 'no'),
(7, 8, 'tes', 'tes', 0, 1, 3, 'yes');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `product_attribute_value`
--

CREATE TABLE `product_attribute_value` (
  `attribute_value_id` int(11) NOT NULL,
  `attribute_id` int(200) NOT NULL,
  `user_id` int(200) NOT NULL,
  `attribute_value` varchar(200) NOT NULL,
  `attribute_value_slug` varchar(200) NOT NULL,
  `attribute_value_status` int(50) NOT NULL,
  `attribute_value_drop_status` varchar(50) NOT NULL DEFAULT 'no'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `product_attribute_value`
--

INSERT INTO `product_attribute_value` (`attribute_value_id`, `attribute_id`, `user_id`, `attribute_value`, `attribute_value_slug`, `attribute_value_status`, `attribute_value_drop_status`) VALUES
(1, 3, 1, 'Black', 'Black', 1, 'no'),
(2, 3, 1, 'White', 'White', 1, 'no'),
(3, 3, 1, 'Green', 'Green', 1, 'no'),
(4, 3, 1, 'Red', 'Red', 1, 'no'),
(5, 3, 1, 'Blue', 'Blue', 1, 'no'),
(6, 4, 1, 'S', 'S', 1, 'no'),
(7, 4, 1, 'M', 'M', 1, 'no'),
(8, 4, 1, 'L', 'L', 1, 'no'),
(9, 4, 1, 'XL', 'XL', 1, 'no'),
(10, 4, 1, 'XXL', 'XXL', 1, 'no'),
(11, 4, 1, 'XXXL', 'XXXL', 1, 'no'),
(15, 4, 8, 'XS', 'XS', 1, 'no');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `product_checkout`
--

CREATE TABLE `product_checkout` (
  `cid` int(11) NOT NULL,
  `purchase_token` varchar(500) DEFAULT NULL,
  `token` varchar(500) DEFAULT NULL,
  `payment_token` varchar(500) DEFAULT NULL,
  `ord_id` varchar(200) DEFAULT NULL,
  `shipping_separate` varchar(200) DEFAULT NULL,
  `order_id_shipping` varchar(200) DEFAULT NULL,
  `user_id` int(200) NOT NULL,
  `shipping_price` varchar(200) DEFAULT NULL,
  `processing_fee` varchar(100) DEFAULT NULL,
  `subtotal` varchar(200) DEFAULT NULL,
  `total` varchar(200) DEFAULT NULL,
  `vendor_amount` varchar(200) DEFAULT NULL,
  `admin_amount` varchar(200) DEFAULT NULL,
  `payment_type` varchar(100) DEFAULT NULL,
  `payment_date` date NOT NULL,
  `payment_approval` int(50) NOT NULL,
  `bill_firstname` varchar(200) DEFAULT NULL,
  `bill_lastname` varchar(200) DEFAULT NULL,
  `bill_companyname` varchar(200) DEFAULT NULL,
  `bill_email` varchar(200) DEFAULT NULL,
  `bill_phone` varchar(200) DEFAULT NULL,
  `bill_country` varchar(200) DEFAULT NULL,
  `bill_address` longtext,
  `bill_city` varchar(200) DEFAULT NULL,
  `bill_state` varchar(200) DEFAULT NULL,
  `bill_postcode` varchar(200) DEFAULT NULL,
  `enable_ship` int(50) DEFAULT NULL,
  `ship_firstname` varchar(200) DEFAULT NULL,
  `ship_lastname` varchar(200) DEFAULT NULL,
  `ship_companyname` varchar(200) DEFAULT NULL,
  `ship_email` varchar(200) DEFAULT NULL,
  `ship_phone` varchar(200) DEFAULT NULL,
  `ship_country` varchar(200) DEFAULT NULL,
  `ship_address` longtext,
  `ship_city` varchar(200) DEFAULT NULL,
  `ship_state` varchar(200) DEFAULT NULL,
  `ship_postcode` varchar(200) DEFAULT NULL,
  `other_notes` longtext,
  `payment_status` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `product_checkout`
--

INSERT INTO `product_checkout` (`cid`, `purchase_token`, `token`, `payment_token`, `ord_id`, `shipping_separate`, `order_id_shipping`, `user_id`, `shipping_price`, `processing_fee`, `subtotal`, `total`, `vendor_amount`, `admin_amount`, `payment_type`, `payment_date`, `payment_approval`, `bill_firstname`, `bill_lastname`, `bill_companyname`, `bill_email`, `bill_phone`, `bill_country`, `bill_address`, `bill_city`, `bill_state`, `bill_postcode`, `enable_ship`, `ship_firstname`, `ship_lastname`, `ship_companyname`, `ship_email`, `ship_phone`, `ship_country`, `ship_address`, `ship_city`, `ship_state`, `ship_postcode`, `other_notes`, `payment_status`) VALUES
(99, '4398780', 'gWSr4jpFMvKJ30WGIQyB7qYEf2ByswiaXZsnMgmZ', '4UJ674381J359490H', '225,226,227', '30,10,0', '225_30,226_10,227_0', 13, '40', '5', '150', '195', NULL, NULL, 'paypal', '2020-02-08', 0, 'fdsa', 'fdsa', 'fdsa', 'fdsafds@fdsa.com', '324', '64', 'fgdsss', 'fdsa', 'fdsa', '324', 1, 'sds', 'fds', 'fdsa', 'fdsafds@fdsa.com', '324', '49', 'fgdsss', 'dfsa', 'fdsafa', '324', 'test', 'completed'),
(101, '7263119', 'gWSr4jpFMvKJ30WGIQyB7qYEf2ByswiaXZsnMgmZ', 'tok_1G9qnrEK1dgPyZAVazm9roSt', '231,232,233', '30,35,0', '231_30,232_35,233_0', 7, '65', '5', '227.8', '297.8', NULL, NULL, 'stripe', '2020-02-08', 0, 'fdsa', 'fdsa', 'fdsa', 'fdsafds@fdsa.com', '324', '10', 'fgdsss', 'fdsa', 'fdsa', '324', 1, 'sds', 'fds', 'fdsa', 'fdsafds@fdsa.com', '324', '31', 'fgdsss', 'dfsa', 'fdsafa', '324', 'test', 'completed'),
(102, '5330973', 'MFyw3b3QOwInL7sejAolaz1SUvIr0dd29KMylu2x', 'tok_1GD5VrEK1dgPyZAVcIqq9U5P', '234,235', '10,50', '234_10,235_50', 7, '60', '5', '310', '375', NULL, NULL, 'stripe', '2020-02-17', 0, 'peter', 'parker', 'yahoo', 'peter@parnke.com', '93838232', '228', '4,welcome street', 'london', 'YNEE', '966556', NULL, '', '', '', '', '', '', '', '', '', '', 'Please quickly place my order', 'completed'),
(103, '9123708', '8PLlWjahsmQZQWgsGouxkwKbKeuAprER9goLSur8', '8N33465154055793W', '236', '35', '236_35', 7, '35', '5', '65', '105', NULL, NULL, 'paypal', '2020-02-19', 0, 'peter', 'parker', 'yahoo', 'peter@parnke.com', '93838232', '20', '4,welcome street', 'london', 'YNEE', '966556', NULL, '', '', '', '', '', '', '', '', '', '', 'sample notes', 'completed'),
(107, '9266446', 'WXyncbYu0EGeN80L0igPU81KfDe3dx6fcOTqULmy', NULL, '241', '30', '241_30', 7, '30', '5', '85', '120', NULL, NULL, 'mollie', '2020-04-01', 0, 'dsa', 'fdsa', 'fdsa', 'demo@gmail.com', '6464655', '18', 'fdsa', 'fdsa', 'fdsa', '32432', NULL, '', '', '', '', '', '', '', '', '', '', 'fdsa', 'completed'),
(108, '1756144', 'ODANIZMRXT1B3GV48TSVbmNfueRRyd0nXNAioQOw', '21F61262A23195029', '244', '20', '244_20', 7, '20', '5', '126', '151', NULL, NULL, 'paypal', '2020-04-27', 0, 'fdsa', 'fdsa', 'fdsa', 'demo@gmail.com', '32423', '17', 'fdsa', 'fdsa', 'fdsa', '32423', NULL, '', '', '', '', '', '', '', '', '', '', 'fdsa', 'completed'),
(109, '7264487', 'ODANIZMRXT1B3GV48TSVbmNfueRRyd0nXNAioQOw', '5RL6849179228633U', '245', '35', '245_35', 7, '35', '5', '80', '120', NULL, NULL, 'paypal', '2020-04-27', 0, 'fdsa', 'fdsa', 'fdsa', 'demo@gmail.com', '32423', '17', 'fdsa', 'fdsa', 'fdsa', '32423', NULL, '', '', '', '', '', '', '', '', '', '', 'fdsa', 'completed'),
(110, '7641309', 'ODANIZMRXT1B3GV48TSVbmNfueRRyd0nXNAioQOw', '2WY17081M69227429', '246', '35', '246_35', 7, '35', '5', '130', '170', NULL, NULL, 'paypal', '2020-04-27', 0, 'fdsa', 'fdsa', 'fdsa', 'demo@gmail.com', '32423', '17', 'fdsa', 'fdsa', 'fdsa', '32423', NULL, '', '', '', '', '', '', '', '', '', '', 'fdsa', 'completed'),
(111, '4621177', 'ODANIZMRXT1B3GV48TSVbmNfueRRyd0nXNAioQOw', 'tok_1GcUNoEK1dgPyZAVbZgOY8qt', '247,248', '10,50', '247_10,248_50', 7, '60', '5', '220', '285', NULL, NULL, 'stripe', '2020-04-27', 0, 'fdsa', 'fdsa', 'fdsa', 'demo@gmail.com', '32423', '17', 'fdsa', 'fdsa', 'fdsa', '32423', NULL, '', '', '', '', '', '', '', '', '', '', 'fdsa', 'completed'),
(112, '5426048', 'ODANIZMRXT1B3GV48TSVbmNfueRRyd0nXNAioQOw', '1N92191213305025E', '249', '20', '249_20', 7, '20', '5', '126', '151', NULL, NULL, 'paypal', '2020-04-27', 0, 'fdsa', 'fdsa', 'fdsa', 'demo@gmail.com', '32423', '17', 'fdsa', 'fdsa', 'fdsa', '32423', NULL, '', '', '', '', '', '', '', '', '', '', 'fdsa', 'completed'),
(113, '9460887', 'ODANIZMRXT1B3GV48TSVbmNfueRRyd0nXNAioQOw', '3VT89387TD431164G', '250', '30', '250_30', 7, '30', '5', '170', '205', NULL, NULL, 'paypal', '2020-04-27', 0, 'fdsa', 'fdsa', 'fdsa', 'demo@gmail.com', '32423', '17', 'fdsa', 'fdsa', 'fdsa', '32423', NULL, '', '', '', '', '', '', '', '', '', '', 'fdsa', 'completed'),
(114, '6747589', 'ODANIZMRXT1B3GV48TSVbmNfueRRyd0nXNAioQOw', 'tok_1GcVSCEK1dgPyZAVjztXBihH', '251', '50', '251_50', 7, '50', '5', '200', '255', NULL, NULL, 'stripe', '2020-04-27', 0, 'fdsa', 'fdsa', 'fdsa', 'demo@gmail.com', '32423', '17', 'fdsa', 'fdsa', 'fdsa', '32423', NULL, '', '', '', '', '', '', '', '', '', '', 'fdsa', 'completed'),
(115, '5645595', 'ODANIZMRXT1B3GV48TSVbmNfueRRyd0nXNAioQOw', 'tok_1GcVW9EK1dgPyZAVgq9ttrEK', '252', '30', '252_30', 7, '30', '5', '170', '205', NULL, NULL, 'stripe', '2020-04-27', 0, 'fdsa', 'fdsa', 'fdsa', 'demo@gmail.com', '32423', '17', 'fdsa', 'fdsa', 'fdsa', '32423', NULL, '', '', '', '', '', '', '', '', '', '', 'fdsa', 'completed'),
(116, '9397865', 'ODANIZMRXT1B3GV48TSVbmNfueRRyd0nXNAioQOw', '4RW30982LX5894205', '253', '10', '253_10', 7, '10', '5', '10', '25', NULL, NULL, 'paypal', '2020-04-27', 0, 'fdsa', 'fdsa', 'fdsa', 'demo@gmail.com', '32423', '17', 'fdsa', 'fdsa', 'fdsa', '32423', NULL, '', '', '', '', '', '', '', '', '', '', 'fdsa', 'completed'),
(117, '3868499', 'ODANIZMRXT1B3GV48TSVbmNfueRRyd0nXNAioQOw', 'tok_1GcVbcEK1dgPyZAV9rylFagR', '254', '50', '254_50', 7, '50', '5', '300', '355', NULL, NULL, 'stripe', '2020-04-27', 0, 'fdsa', 'fdsa', 'fdsa', 'demo@gmail.com', '32423', '17', 'fdsa', 'fdsa', 'fdsa', '32423', NULL, '', '', '', '', '', '', '', '', '', '', 'fdsa', 'completed'),
(118, '1418602', 'ODANIZMRXT1B3GV48TSVbmNfueRRyd0nXNAioQOw', NULL, '255', '30', '255_30', 7, '30', '5', '170', '205', NULL, NULL, 'mollie', '2020-04-27', 0, 'fdsa', 'fdsa', 'fdsa', 'demo@gmail.com', '32423', '17', 'fdsa', 'fdsa', 'fdsa', '32423', NULL, '', '', '', '', '', '', '', '', '', '', 'fdsa', 'completed'),
(119, '1452205', 'ODANIZMRXT1B3GV48TSVbmNfueRRyd0nXNAioQOw', NULL, '256', '35', '256_35', 7, '35', '5', '80', '120', NULL, NULL, 'mollie', '2020-04-27', 0, 'fdsa', 'fdsa', 'fdsa', 'demo@gmail.com', '32423', '17', 'fdsa', 'fdsa', 'fdsa', '32423', NULL, '', '', '', '', '', '', '', '', '', '', 'fdsa', 'completed'),
(120, '4212838', 'ODANIZMRXT1B3GV48TSVbmNfueRRyd0nXNAioQOw', NULL, '257', '10', '257_10', 7, '10', '5', '20', '35', NULL, NULL, 'mollie', '2020-04-27', 0, 'fdsa', 'fdsa', 'fdsa', 'demo@gmail.com', '32423', '17', 'fdsa', 'fdsa', 'fdsa', '32423', NULL, '', '', '', '', '', '', '', '', '', '', 'fdsa', 'pending'),
(121, '6791689', 'TsVH02hsMAwqPxKI79N54isjgq9ArmNTtLlYKDul', NULL, '257,258', '10,35', '257_10,258_35', 7, '45', '5', '85', '135', NULL, NULL, '2checkout', '2020-04-29', 0, 'fdsa', 'fdsa', 'fdsa', 'demo@gmail.com', '32423', '17', 'fdsa', 'fdsa', 'fdsa', '32423', NULL, '', '', '', '', '', '', '', '', '', '', 'fdsa', 'completed'),
(122, '9509776', 'TsVH02hsMAwqPxKI79N54isjgq9ArmNTtLlYKDul', NULL, '259', '10', '259_10', 7, '10', '5', '10', '25', NULL, NULL, '2checkout', '2020-04-29', 0, 'fdsa', 'fdsa', 'fdsa', 'demo@gmail.com', '32423', '17', 'fdsa', 'fdsa', 'fdsa', '32423', NULL, '', '', '', '', '', '', '', '', '', '', 'fdsa', 'completed'),
(123, '5957924', 'TsVH02hsMAwqPxKI79N54isjgq9ArmNTtLlYKDul', '9093753949872', '260', '20', '260_20', 7, '20', '5', '55', '80', NULL, NULL, '2checkout', '2020-04-29', 0, 'fdsa', 'fdsa', 'fdsa', 'demo@gmail.com', '32423', '17', 'fdsa', 'fdsa', 'fdsa', '32423', NULL, '', '', '', '', '', '', '', '', '', '', 'fdsa', 'completed'),
(124, '7661960', 'TsVH02hsMAwqPxKI79N54isjgq9ArmNTtLlYKDul', '9093753949923', '261', '30', '261_30', 7, '30', '5', '170', '205', NULL, NULL, '2checkout', '2020-04-29', 0, 'fdsa', 'fdsa', 'fdsa', 'demo@gmail.com', '32423', '17', 'fdsa', 'fdsa', 'fdsa', '32423', NULL, '', '', '', '', '', '', '', '', '', '', 'fdsa', 'completed'),
(125, '4934676', 'zZOdfJtcOGoj0KaaPrGhDaEUwJzPVLah5RwvhK52', '0', '262', '35', '262_35', 7, '35', '5', '80', '120', NULL, NULL, 'authorize.net', '2020-04-30', 0, 'fdsa', 'fdsa', 'fdsa', 'demo@gmail.com', '32423', '17', 'fdsa', 'fdsa', 'fdsa', '32423', NULL, '', '', '', '', '', '', '', '', '', '', 'fdsa', 'completed'),
(126, '9469006', 'zZOdfJtcOGoj0KaaPrGhDaEUwJzPVLah5RwvhK52', '0', '263', '35', '263_35', 7, '35', '5', '80', '120', NULL, NULL, 'authorize.net', '2020-04-30', 0, 'fdsa', 'fdsa', 'fdsa', 'demo@gmail.com', '32423', '17', 'fdsa', 'fdsa', 'fdsa', '32423', NULL, '', '', '', '', '', '', '', '', '', '', 'fdsa', 'completed'),
(127, '5164611', 'zZOdfJtcOGoj0KaaPrGhDaEUwJzPVLah5RwvhK52', '0', '264', '35', '264_35', 7, '35', '5', '80', '120', NULL, NULL, 'authorize.net', '2020-04-30', 0, 'fdsa', 'fdsa', 'fdsa', 'demo@gmail.com', '32423', '17', 'fdsa', 'fdsa', 'fdsa', '32423', NULL, '', '', '', '', '', '', '', '', '', '', 'fdsa', 'completed'),
(128, '2989406', 'zZOdfJtcOGoj0KaaPrGhDaEUwJzPVLah5RwvhK52', '40048151138', '265', '20', '265_20', 7, '20', '5', '55', '80', NULL, NULL, 'authorize.net', '2020-04-30', 0, 'fdsa', 'fdsa', 'fdsa', 'demo@gmail.com', '32423', '17', 'fdsa', 'fdsa', 'fdsa', '32423', NULL, '', '', '', '', '', '', '', '', '', '', 'fdsa', 'completed'),
(129, '6139180', 'zZOdfJtcOGoj0KaaPrGhDaEUwJzPVLah5RwvhK52', '40048151171', '266', '30', '266_30', 7, '30', '5', '170', '205', NULL, NULL, 'authorize.net', '2020-04-30', 0, 'fdsa', 'fdsa', 'fdsa', 'demo@gmail.com', '32423', '17', 'fdsa', 'fdsa', 'fdsa', '32423', NULL, '', '', '', '', '', '', '', '', '', '', 'fdsa', 'completed'),
(130, '6977784', 'SunFWc1wKplCkXtb3FWg3mcZNcSevkzK6OVrbN5b', NULL, '267', '20', '267_20', 7, '20', '5', '252', '277', NULL, NULL, 'paystack', '2020-04-30', 0, 'fdsa', 'fdsa', 'fdsa', 'demo@gmail.com', '32423', '17', 'fdsa', 'fdsa', 'fdsa', '32423', NULL, '', '', '', '', '', '', '', '', '', '', 'fdsa', 'pending'),
(131, '1430842', 'sYWZNm8ggI0Ju0xbXRDYR4VQrguGAU21fyCU8iCz', 'PvC4rAKoNv5oQQJH4Qkh1R3gu', '267', '20', '267_20', 7, '20', '5', '252', '277', NULL, NULL, 'paystack', '2020-05-01', 0, 'fdsa', 'fdsa', 'fdsa', 'demo@gmail.com', '32423', '17', 'fdsa', 'fdsa', 'fdsa', '32423', NULL, '', '', '', '', '', '', '', '', '', '', 'fdsa', 'completed'),
(132, '9444063', 'sYWZNm8ggI0Ju0xbXRDYR4VQrguGAU21fyCU8iCz', 'XmQOP7YEzwxM32dtRDkCs4H0Z', '268', '30', '268_30', 7, '30', '5', '170', '205', NULL, NULL, 'paystack', '2020-05-01', 0, 'fdsa', 'fdsa', 'fdsa', 'demo@gmail.com', '32423', '17', 'fdsa', 'fdsa', 'fdsa', '32423', NULL, '', '', '', '', '', '', '', '', '', '', 'fdsa', 'completed'),
(133, '8190561', 'sYWZNm8ggI0Ju0xbXRDYR4VQrguGAU21fyCU8iCz', NULL, '269', '35', '269_35', 7, '35', '5', '80', '120', NULL, NULL, 'localbank', '2020-05-01', 0, 'fdsa', 'fdsa', 'fdsa', 'demo@gmail.com', '32423', '17', 'fdsa', 'fdsa', 'fdsa', '32423', NULL, '', '', '', '', '', '', '', '', '', '', 'fdsa', 'completed'),
(134, '2254205', 'UjD05q2tEH98bpQIGmGp311tj7JY343f9Ec9qoGM', NULL, '270', '30', '270_30', 7, '30', '5', '170', '205', NULL, NULL, 'localbank', '2020-05-01', 0, 'fdsa', 'fdsa', 'fdsa', 'demo@gmail.com', '32423', '17', 'fdsa', 'fdsa', 'fdsa', '32423', NULL, '', '', '', '', '', '', '', '', '', '', 'fdsa', 'completed'),
(135, '2322534', 'UjD05q2tEH98bpQIGmGp311tj7JY343f9Ec9qoGM', NULL, '271', '30', '271_30', 7, '30', '5', '85', '120', NULL, NULL, 'localbank', '2020-05-01', 0, 'fdsa', 'fdsa', 'fdsa', 'demo@gmail.com', '32423', '17', 'fdsa', 'fdsa', 'fdsa', '32423', NULL, '', '', '', '', '', '', '', '', '', '', 'fdsa', 'completed'),
(136, '8390547', 'qU4gVdlpPXezPwOdxVg7YmYbLbUOwmJMBU9H2zLR', 'tok_1Gs1IgEK1dgPyZAVp8GZ4IGf', '272', '0', '272_0', 7, '0', '5', '16', '21', NULL, NULL, 'stripe', '2020-06-09', 0, 'fdsa', '324', 'fdsa', 'fdsa@fda.com', '32432', '17', 'fdsa', 'fdsa', 'fdsa', '324', NULL, '', '', '', '', '', '', '', '', '', '', '', 'completed'),
(137, '5294312', '8nVBLVVIlGgza5WLwA2FRfrsULWGaKeRXGuzdje7', NULL, '273,274', '50,20', '273_50,274_20', 1, '70', '5', '255', '330', NULL, NULL, 'localbank', '2020-07-11', 0, 'mauricio', 'figuero', '', 'nofexicado@gmail.com', '15454545854', '19', 'kjdhkdjhdkjhkjh', 'kjhdfkjhduusj', 'kjhdkjhdyhsh', '21545', NULL, '', '', '', '', '', '', '', '', '', '', '', 'pending'),
(138, '3682591', '156lXtgGcGhWgnxBIw279oLcFpXBU59HvGGXZFVY', NULL, '275', '35', '275_35', 1, '35', '5', '80', '120', NULL, NULL, 'localbank', '2020-07-14', 0, 'mauricio', 'figuero', '', 'nofexicado@gmail.com', '15454545854', '12', 'kjdhkdjhdkjhkjh', 'kjhdfkjhduusj', 'kjhdkjhdyhsh', '21545', NULL, '', '', '', '', '', '', '', '', '', '', '', 'pending');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `product_images`
--

CREATE TABLE `product_images` (
  `proimg_id` int(11) NOT NULL,
  `product_token` varchar(200) DEFAULT NULL,
  `product_image` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `product_images`
--

INSERT INTO `product_images` (`proimg_id`, `product_token`, `product_image`) VALUES
(1, 'zmd4BS4J2gdu6nhvxjDJCmTa3', 'qDdga-073403-Pzg.jpg'),
(3, 'zmd4BS4J2gdu6nhvxjDJCmTa3', 'HzynJ-012737-Z61.jpg'),
(4, 'P94t4284opAzraWvzIiurbR1h', 'm5cSC-051220-j2k.jpg'),
(5, 'P94t4284opAzraWvzIiurbR1h', 'b1Rsb-051220-pgx.jpg'),
(6, 'spSsrgcMAdBREUSjANytmY41k', 'OVZXE-102505-koo.jpg'),
(7, 'MOE5lCalUFoY3r2x8vAfkdVvc', 'CZTYW-102504-4KN.jpg'),
(8, 'MOE5lCalUFoY3r2x8vAfkdVvc', 'e7ezX-102504-qIW.jpg'),
(9, 'smONxeE16pbTaBxTzpI8O5CMS', 'QgA0j-103422-hps.jpg'),
(10, 'rFHIbGh0Yd8PburkqML5lE5K4', '3D6Ra-105846-OBf.jpg'),
(11, 'wd7bwYLHf3Ics1Ha17obAX5WU', 'tbLHe-110831-T7v.jpg'),
(12, 'wd7bwYLHf3Ics1Ha17obAX5WU', 'qY88o-110831-pT1.jpg'),
(13, 'R56mTWU23DYNEPEZTZqzkhxFg', 'IbfFg-101735-CaN.jpg'),
(14, 'R56mTWU23DYNEPEZTZqzkhxFg', 'cQB02-101735-GQN.jpg'),
(15, 'R56mTWU23DYNEPEZTZqzkhxFg', '5chp7-101735-Xms.jpg'),
(16, 'DSBHyye2NhED8LdXLQ7DUgOpF', 'mWhf4-102611-EpE.jpeg'),
(17, 'DSBHyye2NhED8LdXLQ7DUgOpF', 'ybfLB-102611-ZYa.jpeg'),
(18, 'DSBHyye2NhED8LdXLQ7DUgOpF', 'OmdUn-102611-umr.jpeg'),
(19, '8XkmB5R5GLmmkesFa8HTjNFyx', 'bli6N-104639-ykJ.jpg'),
(20, '8XkmB5R5GLmmkesFa8HTjNFyx', 'dm40F-104640-7Gn.jpg'),
(21, '0AErxGkdVuE7hNTEsWuEbdVlY', 'Lsgov-110028-ntJ.jpg'),
(23, '9Hyt4vGVaTWQHvxrMcLvKmjl0', 'Rh1Um-110528-lKq.jpeg'),
(24, '9Hyt4vGVaTWQHvxrMcLvKmjl0', 'wLCEO-110528-EJi.jpeg'),
(25, 'x0HPtJmVT571oLbhjLctxb828', 'DPSr3-111125-fvp.jpeg'),
(26, 'x0HPtJmVT571oLbhjLctxb828', 'B5Rls-111126-von.jpeg'),
(27, 'x0HPtJmVT571oLbhjLctxb828', 'zQD4R-111126-46k.jpeg'),
(28, 'NgaS40SEmwCZE9FA33PEKIFn7', 'gwiwY-011608-Ln9.jpg'),
(29, 'NgaS40SEmwCZE9FA33PEKIFn7', '1e8uz-011608-eh0.jpg'),
(30, 'NgaS40SEmwCZE9FA33PEKIFn7', '5da5n-011608-WR8.jpg'),
(31, 'ApZYCqzhYSr1huEd01dz8JGUC', 'U6q1v-095943-KmP.jpg'),
(32, 'ApZYCqzhYSr1huEd01dz8JGUC', 'jostv-095943-PvF.jpg'),
(33, '0AErxGkdVuE7hNTEsWuEbdVlY', '15Nvi-105947-x93.jpg'),
(34, 'OqyWdDAPpKkGvzYZXiWU3mGQo', 'szfHS-111507-EZJ.jpg'),
(35, 'OqyWdDAPpKkGvzYZXiWU3mGQo', '4VsVo-111507-a9m.jpg'),
(36, 'OqyWdDAPpKkGvzYZXiWU3mGQo', 'PbYHM-112712-yFP.jpg');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `product_orders`
--

CREATE TABLE `product_orders` (
  `ord_id` int(11) NOT NULL,
  `user_id` int(200) NOT NULL,
  `product_id` int(200) NOT NULL,
  `product_user_id` int(200) NOT NULL,
  `product_token` varchar(200) NOT NULL,
  `purchase_token` varchar(200) NOT NULL,
  `payment_token` varchar(500) NOT NULL,
  `payment_type` varchar(1000) NOT NULL,
  `token` varchar(1000) NOT NULL,
  `quantity` int(50) NOT NULL,
  `product_attribute` varchar(200) NOT NULL,
  `product_attribute_values` varchar(500) DEFAULT NULL,
  `coupon_key` varchar(200) DEFAULT NULL,
  `coupon_id` varchar(200) DEFAULT NULL,
  `coupon_code` varchar(200) DEFAULT NULL,
  `coupon_type` varchar(200) DEFAULT NULL,
  `coupon_value` varchar(200) DEFAULT NULL,
  `discount_price` float NOT NULL,
  `price` float NOT NULL,
  `shipping_price` float NOT NULL,
  `subtotal` float NOT NULL,
  `total` float NOT NULL,
  `vendor_amount` float NOT NULL,
  `admin_amount` float NOT NULL,
  `order_status` varchar(500) NOT NULL,
  `order_tracking` varchar(200) NOT NULL DEFAULT 'Placed',
  `payment_status` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `product_orders`
--

INSERT INTO `product_orders` (`ord_id`, `user_id`, `product_id`, `product_user_id`, `product_token`, `purchase_token`, `payment_token`, `payment_type`, `token`, `quantity`, `product_attribute`, `product_attribute_values`, `coupon_key`, `coupon_id`, `coupon_code`, `coupon_type`, `coupon_value`, `discount_price`, `price`, `shipping_price`, `subtotal`, `total`, `vendor_amount`, `admin_amount`, `order_status`, `order_tracking`, `payment_status`) VALUES
(225, 13, 7, 8, 'smONxeE16pbTaBxTzpI8O5CMS', '4398780', '4UJ674381J359490H', 'paypal', 'vV8nMB5bolLOzJPrqHfZBR09MFtnXOoQqoNVtCrn', 2, '4,8', 'Color - Red, Size - L', '5e3e8ea3331d8', '8', 'OFFER25', 'percentage', '25', 63.75, 85, 30, 127.5, 157.5, 114.75, 12.75, 'completed', 'Placed', 'payment released to buyer'),
(226, 13, 10, 8, 'dvbTgjNMS0Xi1CXRZkR49DOT7', '4398780', '4UJ674381J359490H', 'paypal', 'vV8nMB5bolLOzJPrqHfZBR09MFtnXOoQqoNVtCrn', 2, '3,6', 'Color - Green, Size - S', '5e3e8ea3331d8', '8', 'OFFER25', 'percentage', '25', 7.5, 10, 10, 15, 25, 13.5, 1.5, 'completed', 'Placed', 'payment released to vendor'),
(227, 13, 5, 8, 'eBQgTMoRQvfmuU8NvJizhEkC5', '4398780', '4UJ674381J359490H', 'paypal', 'vV8nMB5bolLOzJPrqHfZBR09MFtnXOoQqoNVtCrn', 1, '', '', '5e3e8ea3331d8', '8', 'OFFER25', 'percentage', '25', 7.5, 10, 0, 7.5, 7.5, 6.75, 0.75, 'completed', 'Placed', 'payment released to vendor'),
(231, 7, 7, 8, 'smONxeE16pbTaBxTzpI8O5CMS', '7263119', 'tok_1G9qnrEK1dgPyZAVazm9roSt', 'stripe', 't5H8Y15XsUSpPglFDisOsKMb1SnUbqBX5bZdkLxL', 1, '1,7', 'Color - Black, Size - M', NULL, NULL, NULL, NULL, NULL, 0, 85, 30, 85, 115, 76.5, 8.5, 'completed', 'Placed', 'payment released to vendor'),
(232, 7, 11, 8, 'wd7bwYLHf3Ics1Ha17obAX5WU', '7263119', 'tok_1G9qnrEK1dgPyZAVazm9roSt', 'stripe', 't5H8Y15XsUSpPglFDisOsKMb1SnUbqBX5bZdkLxL', 2, '1,7', 'Color - Black, Size - M', NULL, NULL, NULL, NULL, NULL, 0, 65, 35, 130, 165, 117, 13, 'completed', 'Placed', ''),
(233, 7, 18, 13, 'IJNVlgSr0NiJNu1nTsi5nRsEo', '7263119', 'tok_1G9qnrEK1dgPyZAVazm9roSt', 'stripe', 't5H8Y15XsUSpPglFDisOsKMb1SnUbqBX5bZdkLxL', 1, '', '', '5e3e90ecbf8c9', '9', 'DEMO20', 'percentage', '20', 12.8, 16, 0, 12.8, 12.8, 11.52, 1.28, 'completed', 'Placed', 'payment released to buyer'),
(234, 7, 8, 8, 'd6GxLNzHbpfBqY3P69vp7N1ct', '5330973', 'tok_1GD5VrEK1dgPyZAVcIqq9U5P', 'stripe', 'vZigiC2xsFnSEEMwFABdITiRtnuvCbnjWvZJcC87', 2, '4,6', 'Color - Red, Size - S', NULL, NULL, NULL, NULL, NULL, 0, 55, 10, 110, 120, 99, 11, 'completed', 'Placed', 'payment released to buyer'),
(235, 7, 23, 13, 'NgaS40SEmwCZE9FA33PEKIFn7', '5330973', 'tok_1GD5VrEK1dgPyZAVcIqq9U5P', 'stripe', 'vZigiC2xsFnSEEMwFABdITiRtnuvCbnjWvZJcC87', 2, '5,11', 'Color - Blue, Size - XXXL', NULL, NULL, NULL, NULL, NULL, 0, 100, 50, 200, 250, 180, 20, 'completed', 'Placed', 'payment released to buyer'),
(236, 7, 11, 8, 'wd7bwYLHf3Ics1Ha17obAX5WU', '9123708', '8N33465154055793W', 'paypal', 'eERIAKeXZfxbbZuegbuu9O0Bfn4rrSEQZyRy1sYL', 1, '1,7', 'Color - Black, Size - M', NULL, NULL, NULL, NULL, NULL, 0, 65, 35, 65, 100, 58.5, 6.5, 'completed', 'Placed', ''),
(241, 7, 7, 8, 'smONxeE16pbTaBxTzpI8O5CMS', '9266446', '', 'mollie', 'QJWGpTN7MG3z5EHaLKMRwFHC61TLJEpW9vpnBV3u', 1, '1,7', 'Color - Black, Size - M', NULL, NULL, NULL, NULL, NULL, 0, 85, 30, 85, 115, 76.5, 8.5, 'completed', 'Placed', ''),
(242, 13, 7, 8, 'smONxeE16pbTaBxTzpI8O5CMS', '', '', '', '2vIAiN46wrEn72x8vgVefECSwwLyp632LWPOEFRD', 1, '1,7', 'Color - Black, Size - M', NULL, NULL, NULL, NULL, NULL, 0, 85, 0, 0, 0, 0, 0, 'pending', 'Placed', ''),
(243, 8, 23, 13, 'NgaS40SEmwCZE9FA33PEKIFn7', '', '', '', 'E2SVdZZX8hq5TIVZvptpIN0Y8QhAJXcJyDuuuX6v', 2, '3,9', 'Color - Green, Size - XL', NULL, NULL, NULL, NULL, NULL, 0, 100, 0, 0, 0, 0, 0, 'pending', 'Placed', ''),
(244, 7, 12, 8, 'R56mTWU23DYNEPEZTZqzkhxFg', '1756144', '21F61262A23195029', 'paypal', 'AbZEpnrVIHONxCvE4ga3p4QGXIawlDomVTgu7ZwZ', 1, '3,7', 'Color - Green, Size - M', NULL, NULL, NULL, NULL, NULL, 0, 126, 20, 126, 146, 113.4, 12.6, 'completed', 'Placed', ''),
(245, 7, 9, 8, 'rFHIbGh0Yd8PburkqML5lE5K4', '7264487', '5RL6849179228633U', 'paypal', 'AbZEpnrVIHONxCvE4ga3p4QGXIawlDomVTgu7ZwZ', 1, '', '', NULL, NULL, NULL, NULL, NULL, 0, 80, 35, 80, 115, 72, 8, 'completed', 'Placed', ''),
(246, 7, 11, 8, 'wd7bwYLHf3Ics1Ha17obAX5WU', '7641309', '2WY17081M69227429', 'paypal', 'AbZEpnrVIHONxCvE4ga3p4QGXIawlDomVTgu7ZwZ', 2, '1,7', 'Color - Black, Size - M', NULL, NULL, NULL, NULL, NULL, 0, 65, 35, 130, 165, 117, 13, 'completed', 'Placed', ''),
(247, 7, 10, 8, 'dvbTgjNMS0Xi1CXRZkR49DOT7', '4621177', 'tok_1GcUNoEK1dgPyZAVbZgOY8qt', 'stripe', 'AbZEpnrVIHONxCvE4ga3p4QGXIawlDomVTgu7ZwZ', 2, '3,6', 'Color - Green, Size - S', NULL, NULL, NULL, NULL, NULL, 0, 10, 10, 20, 30, 18, 2, 'completed', 'Placed', ''),
(248, 7, 4, 8, 'spSsrgcMAdBREUSjANytmY41k', '4621177', 'tok_1GcUNoEK1dgPyZAVbZgOY8qt', 'stripe', 'AbZEpnrVIHONxCvE4ga3p4QGXIawlDomVTgu7ZwZ', 1, '2,7', 'Color - White, Size - M', NULL, NULL, NULL, NULL, NULL, 0, 200, 50, 200, 250, 180, 20, 'completed', 'Placed', ''),
(249, 7, 12, 8, 'R56mTWU23DYNEPEZTZqzkhxFg', '5426048', '1N92191213305025E', 'paypal', 'AbZEpnrVIHONxCvE4ga3p4QGXIawlDomVTgu7ZwZ', 1, '3,7', 'Color - Green, Size - M', NULL, NULL, NULL, NULL, NULL, 0, 126, 20, 126, 146, 113.4, 12.6, 'completed', 'Placed', ''),
(250, 7, 7, 8, 'smONxeE16pbTaBxTzpI8O5CMS', '9460887', '3VT89387TD431164G', 'paypal', 'AbZEpnrVIHONxCvE4ga3p4QGXIawlDomVTgu7ZwZ', 2, '1,7', 'Color - Black, Size - M', NULL, NULL, NULL, NULL, NULL, 0, 85, 30, 170, 200, 153, 17, 'completed', 'Placed', ''),
(251, 7, 23, 13, 'NgaS40SEmwCZE9FA33PEKIFn7', '6747589', 'tok_1GcVSCEK1dgPyZAVjztXBihH', 'stripe', 'AbZEpnrVIHONxCvE4ga3p4QGXIawlDomVTgu7ZwZ', 2, '3,9', 'Color - Green, Size - XL', NULL, NULL, NULL, NULL, NULL, 0, 100, 50, 200, 250, 180, 20, 'completed', 'Placed', ''),
(252, 7, 7, 8, 'smONxeE16pbTaBxTzpI8O5CMS', '5645595', 'tok_1GcVW9EK1dgPyZAVgq9ttrEK', 'stripe', 'AbZEpnrVIHONxCvE4ga3p4QGXIawlDomVTgu7ZwZ', 2, '1,7', 'Color - Black, Size - M', NULL, NULL, NULL, NULL, NULL, 0, 85, 30, 170, 200, 153, 17, 'completed', 'Placed', ''),
(253, 7, 10, 8, 'dvbTgjNMS0Xi1CXRZkR49DOT7', '9397865', '4RW30982LX5894205', 'paypal', 'AbZEpnrVIHONxCvE4ga3p4QGXIawlDomVTgu7ZwZ', 1, '3,6', 'Color - Green, Size - S', NULL, NULL, NULL, NULL, NULL, 0, 10, 10, 10, 20, 9, 1, 'completed', 'Placed', ''),
(254, 7, 23, 13, 'NgaS40SEmwCZE9FA33PEKIFn7', '3868499', 'tok_1GcVbcEK1dgPyZAV9rylFagR', 'stripe', 'AbZEpnrVIHONxCvE4ga3p4QGXIawlDomVTgu7ZwZ', 3, '3,9', 'Color - Green, Size - XL', NULL, NULL, NULL, NULL, NULL, 0, 100, 50, 300, 350, 270, 30, 'completed', 'Placed', ''),
(255, 7, 7, 8, 'smONxeE16pbTaBxTzpI8O5CMS', '1418602', '', 'mollie', 'AbZEpnrVIHONxCvE4ga3p4QGXIawlDomVTgu7ZwZ', 2, '1,7', 'Color - Black, Size - M', NULL, NULL, NULL, NULL, NULL, 0, 85, 30, 170, 200, 153, 17, 'completed', 'Placed', ''),
(256, 7, 9, 8, 'rFHIbGh0Yd8PburkqML5lE5K4', '1452205', '', 'mollie', 'AbZEpnrVIHONxCvE4ga3p4QGXIawlDomVTgu7ZwZ', 1, '', '', NULL, NULL, NULL, NULL, NULL, 0, 80, 35, 80, 115, 72, 8, 'completed', 'Placed', ''),
(257, 7, 10, 8, 'dvbTgjNMS0Xi1CXRZkR49DOT7', '6791689', '', '2checkout', 'AbZEpnrVIHONxCvE4ga3p4QGXIawlDomVTgu7ZwZ', 2, '3,6', 'Color - Green, Size - S', NULL, NULL, NULL, NULL, NULL, 0, 10, 10, 20, 30, 18, 2, 'completed', 'Placed', ''),
(258, 7, 11, 8, 'wd7bwYLHf3Ics1Ha17obAX5WU', '6791689', '', '2checkout', 'XutXw8oI7hLH92wnRIs6ugqZpVEnNsUkuV9eITkU', 1, '1,7', 'Color - Black, Size - M', NULL, NULL, NULL, NULL, NULL, 0, 65, 35, 65, 100, 58.5, 6.5, 'completed', 'Placed', ''),
(259, 7, 10, 8, 'dvbTgjNMS0Xi1CXRZkR49DOT7', '9509776', '', '2checkout', 'XutXw8oI7hLH92wnRIs6ugqZpVEnNsUkuV9eITkU', 1, '3,6', 'Color - Green, Size - S', NULL, NULL, NULL, NULL, NULL, 0, 10, 10, 10, 20, 9, 1, 'completed', 'Placed', ''),
(260, 7, 8, 8, 'd6GxLNzHbpfBqY3P69vp7N1ct', '5957924', '9093753949872', '2checkout', 'XutXw8oI7hLH92wnRIs6ugqZpVEnNsUkuV9eITkU', 1, '1,6', 'Color - Black, Size - S', NULL, NULL, NULL, NULL, NULL, 0, 55, 20, 55, 75, 49.5, 5.5, 'completed', 'Placed', ''),
(261, 7, 7, 8, 'smONxeE16pbTaBxTzpI8O5CMS', '7661960', '9093753949923', '2checkout', 'XutXw8oI7hLH92wnRIs6ugqZpVEnNsUkuV9eITkU', 2, '1,7', 'Color - Black, Size - M', NULL, NULL, NULL, NULL, NULL, 0, 85, 30, 170, 200, 153, 17, 'completed', 'Placed', ''),
(262, 7, 9, 8, 'rFHIbGh0Yd8PburkqML5lE5K4', '4934676', '0', 'authorize.net', 'rXpzP8fCMlH65qU2gWaJv413sSIxeAtvOOe3Rov2', 1, '', '', NULL, NULL, NULL, NULL, NULL, 0, 80, 35, 80, 115, 72, 8, 'completed', 'Placed', ''),
(263, 7, 9, 8, 'rFHIbGh0Yd8PburkqML5lE5K4', '9469006', '0', 'authorize.net', 'rXpzP8fCMlH65qU2gWaJv413sSIxeAtvOOe3Rov2', 1, '', '', NULL, NULL, NULL, NULL, NULL, 0, 80, 35, 80, 115, 72, 8, 'completed', 'Placed', ''),
(264, 7, 9, 8, 'rFHIbGh0Yd8PburkqML5lE5K4', '5164611', '0', 'authorize.net', 'rXpzP8fCMlH65qU2gWaJv413sSIxeAtvOOe3Rov2', 1, '', '', NULL, NULL, NULL, NULL, NULL, 0, 80, 35, 80, 115, 72, 8, 'completed', 'Placed', ''),
(265, 7, 8, 8, 'd6GxLNzHbpfBqY3P69vp7N1ct', '2989406', '40048151138', 'authorize.net', 'rXpzP8fCMlH65qU2gWaJv413sSIxeAtvOOe3Rov2', 1, '1,6', 'Color - Black, Size - S', NULL, NULL, NULL, NULL, NULL, 0, 55, 20, 55, 75, 49.5, 5.5, 'completed', 'Placed', ''),
(266, 7, 7, 8, 'smONxeE16pbTaBxTzpI8O5CMS', '6139180', '40048151171', 'authorize.net', 'rXpzP8fCMlH65qU2gWaJv413sSIxeAtvOOe3Rov2', 2, '1,7', 'Color - Black, Size - M', NULL, NULL, NULL, NULL, NULL, 0, 85, 30, 170, 200, 153, 17, 'completed', 'Placed', ''),
(267, 7, 12, 8, 'R56mTWU23DYNEPEZTZqzkhxFg', '1430842', 'PvC4rAKoNv5oQQJH4Qkh1R3gu', 'paystack', 'Cix6uXk4JD85XnNemAYYNpNu6V3tQVfHyHOTYS1q', 2, '3,7', 'Color - Green, Size - M', NULL, NULL, NULL, NULL, NULL, 0, 126, 20, 252, 272, 226.8, 25.2, 'completed', 'Placed', ''),
(268, 7, 7, 8, 'smONxeE16pbTaBxTzpI8O5CMS', '9444063', 'XmQOP7YEzwxM32dtRDkCs4H0Z', 'paystack', '07dhE4p85kC0QeYinNisWEQAosWs6XztlvYAeNWG', 2, '4,7', 'Color - Red, Size - M', NULL, NULL, NULL, NULL, NULL, 0, 85, 30, 170, 200, 153, 17, 'completed', 'Placed', ''),
(269, 7, 9, 8, 'rFHIbGh0Yd8PburkqML5lE5K4', '8190561', '', 'localbank', '0sJCoI5NoHzwvRUcnkU1hYm3P1AOWwk6y99imspf', 1, '', '', NULL, NULL, NULL, NULL, NULL, 0, 80, 35, 80, 115, 72, 8, 'completed', 'Placed', 'payment released to vendor'),
(270, 7, 7, 8, 'smONxeE16pbTaBxTzpI8O5CMS', '2254205', '', 'localbank', '9gXaJvr7Clg6yhHpDN8bx1ztEG0oQt94MbCiighG', 2, '1,7', 'Color - Black, Size - M', NULL, NULL, NULL, NULL, NULL, 0, 85, 30, 170, 200, 153, 17, 'completed', 'Placed', 'payment released to buyer'),
(271, 7, 7, 8, 'smONxeE16pbTaBxTzpI8O5CMS', '2322534', '', 'localbank', '9gXaJvr7Clg6yhHpDN8bx1ztEG0oQt94MbCiighG', 1, '1,7', 'Color - Black, Size - M', NULL, NULL, NULL, NULL, NULL, 0, 85, 30, 85, 115, 76.5, 8.5, 'completed', 'Placed', 'payment released to vendor'),
(272, 7, 18, 13, 'IJNVlgSr0NiJNu1nTsi5nRsEo', '8390547', 'tok_1Gs1IgEK1dgPyZAVp8GZ4IGf', 'stripe', 'TMoovoQwv7Ai7ce7KNDDAVz4LOtCDp7gVaSuMTDC', 1, '', '', NULL, NULL, NULL, NULL, NULL, 0, 16, 0, 16, 16, 14.4, 1.6, 'completed', 'Placed', ''),
(275, 1, 9, 8, 'rFHIbGh0Yd8PburkqML5lE5K4', '3682591', '', '', 'JBsm0Mh64FpBAsNsQzzCdQG9zXYoypWqjkRYhc5J', 1, '', '', NULL, NULL, NULL, NULL, NULL, 0, 80, 35, 0, 0, 0, 0, 'pending', 'Placed', ''),
(276, 1, 5, 8, 'eBQgTMoRQvfmuU8NvJizhEkC5', '', '', '', '6Ghgp5GFp2O21wTu5TkAzsOKHoXsAZkbCJCScoYf', 1, '', '', NULL, NULL, NULL, NULL, NULL, 0, 10, 0, 0, 0, 0, 0, 'pending', 'Placed', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `product_rating`
--

CREATE TABLE `product_rating` (
  `rate_id` int(11) NOT NULL,
  `product_id` int(200) NOT NULL,
  `order_id` int(100) NOT NULL,
  `user_id` int(200) NOT NULL,
  `rating` int(200) NOT NULL,
  `review` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `product_rating`
--

INSERT INTO `product_rating` (`rate_id`, `product_id`, `order_id`, `user_id`, `rating`, `review`) VALUES
(8, 11, 236, 7, 5, 'Good Products');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `product_refund`
--

CREATE TABLE `product_refund` (
  `dispute_id` int(11) NOT NULL,
  `purchase_token` int(200) NOT NULL,
  `request_date` date NOT NULL,
  `order_id` int(200) NOT NULL,
  `product_id` int(200) NOT NULL,
  `payment_date` date NOT NULL,
  `buyer_id` int(200) NOT NULL,
  `vendor_id` int(200) NOT NULL,
  `payment` float NOT NULL,
  `payment_type` varchar(200) DEFAULT NULL,
  `reason` longtext,
  `message` longtext NOT NULL,
  `dispute_status` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `product_refund`
--

INSERT INTO `product_refund` (`dispute_id`, `purchase_token`, `request_date`, `order_id`, `product_id`, `payment_date`, `buyer_id`, `vendor_id`, `payment`, `payment_type`, `reason`, `message`, `dispute_status`) VALUES
(20, 5330973, '2020-02-17', 234, 8, '2020-02-17', 7, 8, 110, 'stripe', 'I need my money', 'please i don\'t want this product. i need my money. thanks', 'accepted'),
(21, 5330973, '2020-02-17', 235, 23, '2020-02-17', 7, 13, 200, 'stripe', 'refund my money', 'i need my money', 'declined'),
(22, 5330973, '2020-02-17', 235, 23, '2020-02-17', 7, 13, 200, 'stripe', 'I need my money', 'refund money', 'declined'),
(23, 5330973, '2020-02-17', 235, 23, '2020-02-17', 7, 13, 200, 'stripe', 'I need my money', 'Please refund my money', 'accepted');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `product_withdraw`
--

CREATE TABLE `product_withdraw` (
  `wid` int(11) NOT NULL,
  `user_id` int(100) NOT NULL,
  `withdraw_amount` varchar(200) NOT NULL,
  `withdraw_payment_type` varchar(200) NOT NULL,
  `paypal_id` varchar(200) NOT NULL,
  `stripe_id` varchar(200) NOT NULL,
  `paystack_email` varchar(200) DEFAULT NULL,
  `bank_details` text,
  `bank_account_no` varchar(200) NOT NULL,
  `bank_info` varchar(200) NOT NULL,
  `bank_ifsc` varchar(200) NOT NULL,
  `withdraw_date` date NOT NULL,
  `withdraw_status` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `product_withdraw`
--

INSERT INTO `product_withdraw` (`wid`, `user_id`, `withdraw_amount`, `withdraw_payment_type`, `paypal_id`, `stripe_id`, `paystack_email`, `bank_details`, `bank_account_no`, `bank_info`, `bank_ifsc`, `withdraw_date`, `withdraw_status`) VALUES
(7, 7, '42.8', 'paypal', 'sample@gmail.com', '', NULL, NULL, '', '', '', '2020-02-17', 'paid'),
(8, 7, '70', 'stripe', '', 'new@gmail.com', NULL, NULL, '', '', '', '2020-02-19', 'pending'),
(9, 7, '45', 'localbank', '', '', '', 'Bank Name : Test Bank\r\nBranch Name : Test Branch\r\nBranch Code : 00000\r\nIFSC Code : 63632EF', '', '', '', '2020-05-06', 'pending'),
(10, 7, '50', 'paystack', '', '', 'sample@yahoo.com', '', '', '', '', '2020-05-06', 'pending');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `settings`
--

CREATE TABLE `settings` (
  `sid` int(11) NOT NULL,
  `site_title` varchar(500) NOT NULL,
  `site_desc` mediumtext NOT NULL,
  `site_keywords` mediumtext NOT NULL,
  `site_favicon` varchar(100) NOT NULL,
  `site_logo` varchar(100) NOT NULL,
  `site_header_background` varchar(200) DEFAULT NULL,
  `site_copyright` varchar(500) DEFAULT NULL,
  `office_address` text NOT NULL,
  `office_email` varchar(500) NOT NULL,
  `office_phone` varchar(500) NOT NULL,
  `site_currency_code` varchar(50) DEFAULT NULL,
  `site_currency_symbol` varchar(50) DEFAULT NULL,
  `sender_name` varchar(200) NOT NULL,
  `sender_email` varchar(200) NOT NULL,
  `site_max_image_size` int(100) NOT NULL,
  `site_max_zip_size` int(200) NOT NULL DEFAULT '0',
  `site_admin_commission` float NOT NULL,
  `payment_option` varchar(1000) NOT NULL,
  `withdraw_option` varchar(1000) NOT NULL,
  `paypal_email` varchar(200) NOT NULL,
  `paypal_mode` varchar(100) NOT NULL,
  `stripe_mode` varchar(50) NOT NULL,
  `test_publish_key` varchar(200) NOT NULL,
  `test_secret_key` varchar(200) NOT NULL,
  `live_publish_key` varchar(200) NOT NULL,
  `live_secret_key` varchar(200) NOT NULL,
  `site_minimum_withdrawal` int(50) NOT NULL,
  `facebook_url` varchar(200) NOT NULL,
  `twitter_url` varchar(200) NOT NULL,
  `gplus_url` varchar(200) NOT NULL,
  `pinterest_url` varchar(200) NOT NULL,
  `instagram_url` varchar(200) NOT NULL,
  `site_footer_payment` varchar(500) DEFAULT NULL,
  `site_subscribe_text` text,
  `site_newsletter_display` int(50) NOT NULL DEFAULT '0',
  `site_blog_display` int(50) NOT NULL DEFAULT '0',
  `site_theme_color` varchar(50) DEFAULT NULL,
  `site_button_color` varchar(50) DEFAULT NULL,
  `site_button_hover` varchar(50) DEFAULT NULL,
  `site_section_color` varchar(50) DEFAULT NULL,
  `site_footer_color` varchar(50) DEFAULT NULL,
  `site_copyright_color` varchar(50) DEFAULT NULL,
  `site_loader_image` varchar(200) DEFAULT NULL,
  `site_loader_display` int(50) NOT NULL DEFAULT '0',
  `site_multilanguage` int(50) NOT NULL DEFAULT '0',
  `product_per_page` int(50) NOT NULL DEFAULT '0',
  `post_per_page` int(50) NOT NULL DEFAULT '0',
  `site_home_category` int(50) NOT NULL DEFAULT '0',
  `site_more_category` varchar(500) DEFAULT NULL,
  `site_banner_one` varchar(200) DEFAULT NULL,
  `site_banner_two` varchar(200) DEFAULT NULL,
  `site_banner_one_link` varchar(200) DEFAULT NULL,
  `site_banner_two_link` varchar(200) DEFAULT NULL,
  `site_banner_one_heading` varchar(200) DEFAULT NULL,
  `site_banner_two_heading` varchar(200) DEFAULT NULL,
  `product_approval` int(50) NOT NULL,
  `site_s3_storage` int(200) NOT NULL DEFAULT '0',
  `aws_access_key_id` varchar(200) DEFAULT NULL,
  `aws_secret_access_key` varchar(200) DEFAULT NULL,
  `aws_default_region` varchar(200) DEFAULT NULL,
  `aws_bucket` varchar(200) DEFAULT NULL,
  `facebook_client_id` varchar(200) DEFAULT NULL,
  `facebook_client_secret` varchar(200) DEFAULT NULL,
  `facebook_callback_url` varchar(200) DEFAULT NULL,
  `google_client_id` varchar(200) DEFAULT NULL,
  `google_client_secret` varchar(200) DEFAULT NULL,
  `google_callback_url` varchar(200) DEFAULT NULL,
  `display_social_login` int(50) NOT NULL DEFAULT '0',
  `mail_driver` varchar(200) DEFAULT NULL,
  `mail_port` varchar(200) DEFAULT NULL,
  `mail_password` varchar(200) DEFAULT NULL,
  `mail_host` varchar(200) DEFAULT NULL,
  `mail_username` varchar(200) DEFAULT NULL,
  `mail_encryption` varchar(200) DEFAULT NULL,
  `site_home_physical` int(50) NOT NULL,
  `site_physical_order` varchar(50) NOT NULL DEFAULT 'asc',
  `site_home_external` int(50) NOT NULL,
  `site_external_order` varchar(50) NOT NULL DEFAULT 'asc',
  `site_home_digital` int(50) NOT NULL,
  `site_digital_order` varchar(200) NOT NULL DEFAULT 'asc',
  `site_banner_three` varchar(200) DEFAULT NULL,
  `site_banner_three_heading` varchar(200) DEFAULT NULL,
  `site_banner_three_link` varchar(200) DEFAULT NULL,
  `site_home_deal` int(50) NOT NULL,
  `site_deal_order` varchar(200) NOT NULL DEFAULT 'asc',
  `site_processing_fee` varchar(100) DEFAULT NULL,
  `site_refund_time` varchar(200) DEFAULT NULL,
  `selling_background` varchar(200) DEFAULT NULL,
  `selling_image_one` varchar(200) DEFAULT NULL,
  `selling_image_two` varchar(200) DEFAULT NULL,
  `selling_icon_one` varchar(200) DEFAULT NULL,
  `selling_icon_two` varchar(200) DEFAULT NULL,
  `selling_icon_three` varchar(200) DEFAULT NULL,
  `google_translate` int(50) NOT NULL,
  `site_referral_commission` float NOT NULL,
  `mollie_api_key` varchar(1000) DEFAULT NULL,
  `cookie_popup` int(50) NOT NULL,
  `cookie_popup_text` text,
  `cookie_popup_button` varchar(200) DEFAULT NULL,
  `google_analytics` varchar(200) DEFAULT NULL,
  `display_external_product` int(50) NOT NULL,
  `email_verification` int(50) NOT NULL,
  `two_checkout_mode` varchar(100) DEFAULT NULL,
  `two_checkout_account` varchar(100) DEFAULT NULL,
  `two_checkout_publishable` varchar(500) DEFAULT NULL,
  `two_checkout_private` varchar(500) DEFAULT NULL,
  `authorize_mode` varchar(100) DEFAULT NULL,
  `authorize_login_id` varchar(200) DEFAULT NULL,
  `authorize_trans_key` varchar(200) DEFAULT NULL,
  `paystack_secret_key` varchar(500) DEFAULT NULL,
  `paystack_public_key` varchar(500) DEFAULT NULL,
  `paystack_merchant_email` varchar(500) DEFAULT NULL,
  `local_bank_details` text,
  `maintenance_mode` int(50) NOT NULL,
  `site_home_top_banner` int(50) NOT NULL,
  `site_home_bottom_banner` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `settings`
--

INSERT INTO `settings` (`sid`, `site_title`, `site_desc`, `site_keywords`, `site_favicon`, `site_logo`, `site_header_background`, `site_copyright`, `office_address`, `office_email`, `office_phone`, `site_currency_code`, `site_currency_symbol`, `sender_name`, `sender_email`, `site_max_image_size`, `site_max_zip_size`, `site_admin_commission`, `payment_option`, `withdraw_option`, `paypal_email`, `paypal_mode`, `stripe_mode`, `test_publish_key`, `test_secret_key`, `live_publish_key`, `live_secret_key`, `site_minimum_withdrawal`, `facebook_url`, `twitter_url`, `gplus_url`, `pinterest_url`, `instagram_url`, `site_footer_payment`, `site_subscribe_text`, `site_newsletter_display`, `site_blog_display`, `site_theme_color`, `site_button_color`, `site_button_hover`, `site_section_color`, `site_footer_color`, `site_copyright_color`, `site_loader_image`, `site_loader_display`, `site_multilanguage`, `product_per_page`, `post_per_page`, `site_home_category`, `site_more_category`, `site_banner_one`, `site_banner_two`, `site_banner_one_link`, `site_banner_two_link`, `site_banner_one_heading`, `site_banner_two_heading`, `product_approval`, `site_s3_storage`, `aws_access_key_id`, `aws_secret_access_key`, `aws_default_region`, `aws_bucket`, `facebook_client_id`, `facebook_client_secret`, `facebook_callback_url`, `google_client_id`, `google_client_secret`, `google_callback_url`, `display_social_login`, `mail_driver`, `mail_port`, `mail_password`, `mail_host`, `mail_username`, `mail_encryption`, `site_home_physical`, `site_physical_order`, `site_home_external`, `site_external_order`, `site_home_digital`, `site_digital_order`, `site_banner_three`, `site_banner_three_heading`, `site_banner_three_link`, `site_home_deal`, `site_deal_order`, `site_processing_fee`, `site_refund_time`, `selling_background`, `selling_image_one`, `selling_image_two`, `selling_icon_one`, `selling_icon_two`, `selling_icon_three`, `google_translate`, `site_referral_commission`, `mollie_api_key`, `cookie_popup`, `cookie_popup_text`, `cookie_popup_button`, `google_analytics`, `display_external_product`, `email_verification`, `two_checkout_mode`, `two_checkout_account`, `two_checkout_publishable`, `two_checkout_private`, `authorize_mode`, `authorize_login_id`, `authorize_trans_key`, `paystack_secret_key`, `paystack_public_key`, `paystack_merchant_email`, `local_bank_details`, `maintenance_mode`, `site_home_top_banner`, `site_home_bottom_banner`) VALUES
(1, 'PublicaMas', 'La comunidad de comercio electrónico donde compradores y vendedores se encuentran.\r\nVendé mas, comprá mejor.', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostru', '1594501749.png', '159450180811.png', '1594765748191.jpg', 'Copyright &copy; 2020. All Right Reserved.', 'Fishkill NY 12524. 10401 Bennett Road, Fredonia NY 14063', 'codecanor@gmail.com', '9876543210', 'ARS', '$', 'PublicaMas', 'info@publicamas.com.ar', 2000, 3000, 10, 'paypal,stripe,2checkout,authorize.net,paystack,localbank', 'paypal,stripe,localbank,paystack', 'zujocarper@gmail.com', '0', '0', 'pk_test_2fR28XACHzyFUmp44ah5KKP000BvS2sjXk', 'sk_test_qkIX025z7NxZAJ0dkSqoLwGg00Wbh6fQBU', 'fdsfsewwr', '324324fdsfsa', 40, 'https://facebook.com', 'https://twitter.com', 'https://google.com', 'https://pinterest.com', 'https://instagram.com', '1568377076.png', 'Our latest product trends and industry news straight to your inbox', 0, 0, '#055bdc', '#FF5A00', '#FF5A00', '#F8FCFB', '#fff', '#EAEDED', '15783904046713.gif', 1, 1, 20, 20, 9, '1596080261.png', '159450509132.jpg', '1576591257312.jpg', '#', '#', 'Branded Headphones', 'Makeup Kit', 1, 0, 'AKIAIUNK4MQ3FVQ7O62A', 'IIcMl8vCZ1PWFbqaMa9ArWc1ZBVcef6sNhVJIN0Q', 'us-east-2', 'codecanor', '2466123147039848', '5fd2de273a28f221aa8a07d4ba251b43', 'https://codecanor.com/zigkart/login/facebook/callback', '1062293149843-ups8hoqgd13krguoiu6mlhnehgo3dria.apps.googleusercontent.com', 'fwIUneV1Yej1-XGgbh80PYBe', 'https://codecanor.com/zigkart/login/google/callback', 0, 'mail', '587', 'BHMsjmxqJw8Uj7JMXQ4B52msozuB3vpBm6VDQL2NUHqp', 'email-smtp.us-west-2.amazonaws.com', 'AKIAZ4HNIJDLQN7NO76H', 'SSL', 10, 'asc', 10, 'asc', 10, 'asc', '1577528587302.jpg', 'Sale Used Products', '#', 10, 'asc', '5', '', '1581752970200.jpg', '1581752970201.jpg', '1581752970202.png', '1581752970203.png', '1581752970204.png', '1581752970205.png', 0, 10, NULL, 1, 'Do you like cookies? We use cookies to ensure you get the best experience on our website.', 'Allow Cookies', 'UA-xxxxxx-1', 1, 0, 'false', '901422015', 'C93751D7-D5EC-4D4A-A3FB-CAC61DA3A272', '33C9776D-9812-42B1-80A8-46EBDA7CF048', 'true', '6eceD6T4s', '53PpvG4cW34X7Dc4', 'sk_test_72f75924ee11551c998a5aadf594497c99e1e45d', 'pk_test_2a5a6d36733a2e562f75d25831db9737c3423380', 'demowork@gmail.com', 'Bank Name : Test Bank\r\nBranch Name : Test Branch\r\nBranch Code : 00000\r\nIFSC Code : 63632EF', 0, 1, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `slideshow`
--

CREATE TABLE `slideshow` (
  `slide_id` int(11) NOT NULL,
  `slide_image` varchar(200) NOT NULL,
  `slide_text_position` varchar(200) NOT NULL DEFAULT 'left',
  `slide_title` varchar(200) DEFAULT NULL,
  `slide_desc` text,
  `slide_btn_text` varchar(200) DEFAULT NULL,
  `slide_btn_link` varchar(200) DEFAULT NULL,
  `slide_order` int(100) NOT NULL,
  `slide_status` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `slideshow`
--

INSERT INTO `slideshow` (`slide_id`, `slide_image`, `slide_text_position`, `slide_title`, `slide_desc`, `slide_btn_text`, `slide_btn_link`, `slide_order`, `slide_status`) VALUES
(12, '1594765792.jpg', 'center', 'La comunidad de comercio electrónico donde compradores y vendedores se encuentran.', 'Vendé mas, comprá mejor.', '', '', 0, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `subcategory`
--

CREATE TABLE `subcategory` (
  `subcat_id` int(11) NOT NULL,
  `cat_id` int(50) NOT NULL,
  `subcategory_name` varchar(200) NOT NULL,
  `subcategory_slug` varchar(200) NOT NULL,
  `subcategory_status` int(50) NOT NULL,
  `drop_status` varchar(50) NOT NULL DEFAULT 'no'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `subcategory`
--

INSERT INTO `subcategory` (`subcat_id`, `cat_id`, `subcategory_name`, `subcategory_slug`, `subcategory_status`, `drop_status`) VALUES
(52, 19, 'Mens', 'Mens', 1, 'no'),
(53, 19, 'Womens', 'Womens', 1, 'no'),
(54, 19, 'Kids', 'Kids', 1, 'no'),
(55, 19, 'Specials', 'Specials', 1, 'no'),
(56, 20, 'Desktops', 'Desktops', 1, 'no'),
(57, 20, 'Laptops', 'Laptops', 1, 'no'),
(58, 20, 'Smartphones', 'Smartphones', 1, 'no'),
(59, 20, 'Memory Cards', 'Memory-Cards', 1, 'no'),
(60, 20, 'Network Systems', 'Network-Systems', 1, 'no'),
(61, 20, 'Printers', 'Printers', 1, 'no'),
(62, 25, 'Football', 'Football', 1, 'no'),
(63, 25, 'Basketball', 'Basketball', 1, 'no'),
(64, 25, 'Hockey Stick', 'Hockey-Stick', 1, 'no'),
(65, 25, 'Volleyball', 'Volleyball', 1, 'no');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `provider` varchar(500) DEFAULT NULL,
  `provider_id` varchar(500) DEFAULT NULL,
  `name` varchar(191) NOT NULL,
  `username` varchar(200) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `user_type` varchar(50) DEFAULT NULL,
  `user_country` varchar(200) DEFAULT NULL,
  `user_photo` varchar(100) DEFAULT NULL,
  `user_banner` varchar(200) DEFAULT NULL,
  `user_gender` varchar(100) DEFAULT NULL,
  `user_address` text,
  `user_about` text,
  `user_phone` varchar(200) DEFAULT NULL,
  `user_token` varchar(500) NOT NULL,
  `user_permission` varchar(200) DEFAULT NULL,
  `earnings` float NOT NULL,
  `password` varchar(191) NOT NULL,
  `verified` int(50) NOT NULL DEFAULT '0',
  `referral_by` varchar(50) DEFAULT NULL,
  `referral_amount` float NOT NULL,
  `referral_count` int(50) NOT NULL DEFAULT '0',
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `drop_status` varchar(50) NOT NULL DEFAULT 'no'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `provider`, `provider_id`, `name`, `username`, `email`, `email_verified_at`, `user_type`, `user_country`, `user_photo`, `user_banner`, `user_gender`, `user_address`, `user_about`, `user_phone`, `user_token`, `user_permission`, `earnings`, `password`, `verified`, `referral_by`, `referral_amount`, `referral_count`, `remember_token`, `created_at`, `updated_at`, `drop_status`) VALUES
(1, NULL, NULL, 'admin', 'admin', 'admin@admin.com', NULL, 'admin', NULL, '1561460997.jpg', '1561461056456.jpg', NULL, NULL, NULL, NULL, 'wY8wGc5rFLhA57SpAzw7ZP37m', 'dashboard,settings,block-section,country,manage-categories,products,blog,pages,slideshow,contact,newsletter,languages', 177.5, '$2y$10$s9xCA0cJEMWtMqsdvkMqkuSi6JQ0xvrg6PKVXq46A7GeeMqm741xW', 1, NULL, 0, 0, NULL, '2019-06-17 05:25:51', '2019-09-17 04:58:51', 'no'),
(7, NULL, NULL, 'customer', 'customer', 'customer@gmail.com', NULL, 'customer', '5', '1568640117.png', '', 'male', '', '', '', 'BAkada4tQQW7PvJEcLuyEqZDP', NULL, 305, '$2y$10$PRyMSRQhxH99dfYJeYvJFO9qE4EV5mgiApUuqrdlLR60E4uJcfB.S', 1, NULL, 0, 0, NULL, '2019-09-16 07:51:57', '2020-01-17 06:47:10', 'no'),
(8, NULL, NULL, 'vendor', 'vendor', 'vendor@gmail.com', NULL, 'vendor', '228', '1578484533.jpg', '157848453345.jpg', 'male', '2, sample address, london', '<p>lorem ipsum</p>', '43543434', 'DOJ6XqEmfA3Ra2Oax3MT8xGdA', NULL, 225, '$2y$10$6JypIfGq5ZgT0CuvEVZW/.Sd/nExl3gTM/IzRYXNZFL4QT0aer9D6', 1, NULL, 0, 0, NULL, '2019-09-16 07:53:11', '2020-02-24 02:14:40', 'no'),
(12, NULL, NULL, 'subadmin', 'subadmin', 'subadmin@gmail.com', NULL, 'admin', NULL, '', NULL, NULL, NULL, NULL, NULL, '1KCso1r7XM1iTKpNqhaQAT0IC', 'dashboard,block-section,manage-categories,products,slideshow,contact,newsletter', 0, '$2y$10$QcYp5yYAogBlRnMFvPbCjOJQv8Zfv2eodGDu4otuPDH7JX8Jnoloe', 1, NULL, 0, 0, NULL, '2019-12-22 04:35:53', '2019-12-22 05:15:11', 'no'),
(13, NULL, NULL, 'demo', 'demo', 'demo@gmail.com', NULL, 'vendor', '5', '1591688447.jpg', '', 'male', '', '', '', 'bgTpD0Qbvyxxb5KlrIKwrvYpA', NULL, 157.5, '$2y$10$wyzgCbcJwIp98pkLR.rbke8JloJF5litDuh6edX9RJfJPvkSCCXB2', 1, NULL, 0, 0, NULL, '2019-12-27 05:31:48', '2020-06-09 02:10:47', 'no');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wishlist`
--

CREATE TABLE `wishlist` (
  `wid` int(11) NOT NULL,
  `user_id` int(200) NOT NULL,
  `product_token` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `wishlist`
--

INSERT INTO `wishlist` (`wid`, `user_id`, `product_token`) VALUES
(5, 8, 'x0HPtJmVT571oLbhjLctxb828'),
(6, 8, '9Hyt4vGVaTWQHvxrMcLvKmjl0'),
(7, 7, 'dvbTgjNMS0Xi1CXRZkR49DOT7'),
(8, 7, 't1I1e7HGmSVtX4SdlcJZbBtNG'),
(9, 7, 'IJNVlgSr0NiJNu1nTsi5nRsEo'),
(10, 7, 'spSsrgcMAdBREUSjANytmY41k'),
(11, 7, 'wd7bwYLHf3Ics1Ha17obAX5WU'),
(12, 7, '9Hyt4vGVaTWQHvxrMcLvKmjl0'),
(13, 1, 'wd7bwYLHf3Ics1Ha17obAX5WU'),
(14, 1, 'd6GxLNzHbpfBqY3P69vp7N1ct'),
(15, 1, 'DSBHyye2NhED8LdXLQ7DUgOpF'),
(16, 1, 'dvbTgjNMS0Xi1CXRZkR49DOT7');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `blog_category`
--
ALTER TABLE `blog_category`
  ADD PRIMARY KEY (`blog_cat_id`);

--
-- Indices de la tabla `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`brand_id`);

--
-- Indices de la tabla `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`cat_id`);

--
-- Indices de la tabla `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`cid`);

--
-- Indices de la tabla `conversation`
--
ALTER TABLE `conversation`
  ADD PRIMARY KEY (`conver_id`);

--
-- Indices de la tabla `country`
--
ALTER TABLE `country`
  ADD PRIMARY KEY (`country_id`);

--
-- Indices de la tabla `coupon`
--
ALTER TABLE `coupon`
  ADD PRIMARY KEY (`coupon_id`);

--
-- Indices de la tabla `keywords`
--
ALTER TABLE `keywords`
  ADD PRIMARY KEY (`keyword_id`);

--
-- Indices de la tabla `languages`
--
ALTER TABLE `languages`
  ADD PRIMARY KEY (`language_id`);

--
-- Indices de la tabla `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `newsletter`
--
ALTER TABLE `newsletter`
  ADD PRIMARY KEY (`news_id`);

--
-- Indices de la tabla `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`page_id`);

--
-- Indices de la tabla `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indices de la tabla `post`
--
ALTER TABLE `post`
  ADD PRIMARY KEY (`post_id`);

--
-- Indices de la tabla `post_comment`
--
ALTER TABLE `post_comment`
  ADD PRIMARY KEY (`comment_id`);

--
-- Indices de la tabla `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`product_id`);

--
-- Indices de la tabla `product_attribute`
--
ALTER TABLE `product_attribute`
  ADD PRIMARY KEY (`attribute_id`);

--
-- Indices de la tabla `product_attribute_value`
--
ALTER TABLE `product_attribute_value`
  ADD PRIMARY KEY (`attribute_value_id`);

--
-- Indices de la tabla `product_checkout`
--
ALTER TABLE `product_checkout`
  ADD PRIMARY KEY (`cid`);

--
-- Indices de la tabla `product_images`
--
ALTER TABLE `product_images`
  ADD PRIMARY KEY (`proimg_id`);

--
-- Indices de la tabla `product_orders`
--
ALTER TABLE `product_orders`
  ADD PRIMARY KEY (`ord_id`);

--
-- Indices de la tabla `product_rating`
--
ALTER TABLE `product_rating`
  ADD PRIMARY KEY (`rate_id`);

--
-- Indices de la tabla `product_refund`
--
ALTER TABLE `product_refund`
  ADD PRIMARY KEY (`dispute_id`);

--
-- Indices de la tabla `product_withdraw`
--
ALTER TABLE `product_withdraw`
  ADD PRIMARY KEY (`wid`);

--
-- Indices de la tabla `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`sid`);

--
-- Indices de la tabla `slideshow`
--
ALTER TABLE `slideshow`
  ADD PRIMARY KEY (`slide_id`);

--
-- Indices de la tabla `subcategory`
--
ALTER TABLE `subcategory`
  ADD PRIMARY KEY (`subcat_id`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `wishlist`
--
ALTER TABLE `wishlist`
  ADD PRIMARY KEY (`wid`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `blog_category`
--
ALTER TABLE `blog_category`
  MODIFY `blog_cat_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT de la tabla `brands`
--
ALTER TABLE `brands`
  MODIFY `brand_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT de la tabla `category`
--
ALTER TABLE `category`
  MODIFY `cat_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT de la tabla `contact`
--
ALTER TABLE `contact`
  MODIFY `cid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `conversation`
--
ALTER TABLE `conversation`
  MODIFY `conver_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT de la tabla `country`
--
ALTER TABLE `country`
  MODIFY `country_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=244;

--
-- AUTO_INCREMENT de la tabla `coupon`
--
ALTER TABLE `coupon`
  MODIFY `coupon_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `keywords`
--
ALTER TABLE `keywords`
  MODIFY `keyword_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2940;

--
-- AUTO_INCREMENT de la tabla `languages`
--
ALTER TABLE `languages`
  MODIFY `language_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT de la tabla `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `newsletter`
--
ALTER TABLE `newsletter`
  MODIFY `news_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT de la tabla `pages`
--
ALTER TABLE `pages`
  MODIFY `page_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT de la tabla `post`
--
ALTER TABLE `post`
  MODIFY `post_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT de la tabla `post_comment`
--
ALTER TABLE `post_comment`
  MODIFY `comment_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `product`
--
ALTER TABLE `product`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT de la tabla `product_attribute`
--
ALTER TABLE `product_attribute`
  MODIFY `attribute_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `product_attribute_value`
--
ALTER TABLE `product_attribute_value`
  MODIFY `attribute_value_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT de la tabla `product_checkout`
--
ALTER TABLE `product_checkout`
  MODIFY `cid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=139;

--
-- AUTO_INCREMENT de la tabla `product_images`
--
ALTER TABLE `product_images`
  MODIFY `proimg_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT de la tabla `product_orders`
--
ALTER TABLE `product_orders`
  MODIFY `ord_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=277;

--
-- AUTO_INCREMENT de la tabla `product_rating`
--
ALTER TABLE `product_rating`
  MODIFY `rate_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `product_refund`
--
ALTER TABLE `product_refund`
  MODIFY `dispute_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT de la tabla `product_withdraw`
--
ALTER TABLE `product_withdraw`
  MODIFY `wid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `settings`
--
ALTER TABLE `settings`
  MODIFY `sid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `slideshow`
--
ALTER TABLE `slideshow`
  MODIFY `slide_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT de la tabla `subcategory`
--
ALTER TABLE `subcategory`
  MODIFY `subcat_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=66;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT de la tabla `wishlist`
--
ALTER TABLE `wishlist`
  MODIFY `wid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
