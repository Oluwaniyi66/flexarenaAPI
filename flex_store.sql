-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 29, 2023 at 05:36 PM
-- Server version: 10.4.19-MariaDB
-- PHP Version: 8.0.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `flex_store`
--

-- --------------------------------------------------------

--
-- Table structure for table `blogs`
--

CREATE TABLE `blogs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `author` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content1` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `content2` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `content3` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `img1_vid1` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `img2_vid2` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `vid_url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `blogs`
--

INSERT INTO `blogs` (`id`, `title`, `author`, `image`, `category`, `content1`, `content2`, `content3`, `img1_vid1`, `img2_vid2`, `created_at`, `updated_at`, `vid_url`) VALUES
(1, 'Teacher allegedly abducts and rapes student in Jigawa', 'Ropo flex', '1641479626_blog2.jpg', 'entertainment', 'A  38-year-old school teacher has been arrested by the police in Jigawa state for allegedly abducting and raping his student. \r\n\r\nZubairu Musa who is a classroom teacher at Government Day Senior Secondary School, Wurno, reportedly carried out the act on January 1.', 'The suspect reportedly confessed to the crime while being interrogated. Jigawa police spokesperson, ASP Lawan Shiisu Adam said in a statement; \r\n\r\n\r\n\r\nOn January 3, 2022, at about 1745hrs, one Sabiu Sa’idu of Wurno Village Birnin Kudu LGA, reported that on January 1, 2022, at about 1600hrs one Zubairu Musa abducted his student and raped her.\r\n\r\nThe suspect, who is a classroom teacher at Government Day Senior Secondary School, Wurno, abducted his female student from Wurno Village to one house in Dutse metropolis, spent the night and had carnal knowledge of her.\r\nBoth the victim and suspect were taken to the Sexual Assault Referral Center at Dutse General Hospital for medical examination.', 'Musa will be charged to court at the conclusion of investigation.', '1641479626_blog1.jpeg', '1641479626_blog2.jpg', '2022-01-06 13:33:46', '2022-01-06 13:33:46', 'https://www.youtube.com/watch?v=loCyrCdfFtU'),
(2, 'Video of Prophet Nigel Gaisie in bed with TikTok female celebrity surfaces', 'Charles Johnson', '1641479967_blog3.webp', 'music', 'A video of founder and leader of Prophetic Hill Chapel, Prophet Nigel Gaisie in bed with a TikTok female celebrity has surfaced online.', 'Prior to this, the popular controversial Ghanaian cleric has been accused of being a \"womanizer.\" Ghanaian music star, Mzbel had also accused him of trying to sleep with her, an allegation he countered.', 'The lady Gaisie was spotted in bed with, is very popular for posting seductive videos of herself on TikTok. She is often seen twerking and smoking shisha most times.\r\n\r\n \r\n\r\nThe TikTok star\'s relationship with the \"Man of God\" is however unclear. Watch the video below..........', '1641479967_blog3.webp', '1641479967_blog1.jpeg', '2022-01-06 13:39:27', '2022-01-06 13:39:27', 'https://www.youtube.com/watch?v=BJwRRI9Eky0'),
(3, 'Woman said to have birthed Davido\'s second son reacts to allegations that she threw shade at Chioma Rowland', 'Akindele Segun', '1641480098_blog4.jpg', 'religion', 'Larissa London, the mother of a boy said to be Davido\'s second son, has reacted to reports that she threw shade at Chioma Rowland, the mother of Davido\'s first son.', 'Larissa went viral last year when she welcomed a baby boy and named him Dawson which means \"son of David\"', 'Larissa London, the mother of a boy said to be Davido\'s second son, has reacted to reports that she threw shade at Chioma Rowland, the mother of Davido\'s first son.', '1641480098_blog2.jpg', '1641480098_blog3.webp', '2022-01-06 13:41:38', '2022-01-06 13:41:38', 'https://www.youtube.com/watch?v=m6yASruHhgc'),
(4, 'Sylvester Oromoni: Autopsy report exonerates house masters and the students from murder - Police', 'Ropo flex', '1641480199_blog3.webp', 'politics', 'The Lagos State Commissioner of Police, Hakeem Odumosu, has said that the two autopsies carried out on 11-year-old Dowen college student, Sylvester Oromoni,  did not show that he was murdered.\r\n\r\n \r\n\r\nVanguard reports that Odumosu in an interview said two autopsies were carried out on Oromoni\'s body and both dismissed any allegation of murder. He was, however, quick to add that investigation was still ongoing, part of which was the toxicology test that needed to be conducted on the corpse.', '” We are not at the peak yet.  But we have done  our investigation and have sent the report to the Directorate of Public Prosecution, DPP for legal advise on those arrested and DPP has replied. We have gone through the medical aspect  which is the post mortem.\r\n\r\nPost mortem was carried out in Delta and Lagos states.  The first one done in Delta State was only witnessed by parents of the deceased.\r\n\r\nBut after I held a meeting with the parties concerned, at the instance and directive of Governor Babajide Sanwo-Olu  and my Inspector- General of Police, IGP Alkali Usman Baba, the second post mortem was carried out in Lagos.\r\n\r\nThe corpse was brought from Delta State to Lagos, where the Post mortem was carried out with all the parties involved , that is : parents of the deceased, parents of the students accused, the school authority  and government. These were the four parties that witnessed the post mortem. And the result is out.\r\n\r\nThe report of the Post Mortem did not bring out the issue of murder on anybody.\r\n\r\nBesides the result of the autopsy, the court order that we got has elapsed  and we have released the house master and others on bail,  because there was nothing that indicted them of murder.\r\n\r\nIt is only a murder case that is not bailable. Every other offences are bailable. They have been in custody for more than twenty days and that is infringing on their fundamental human rights. Since medical and legal reports have not indicted them so far, I think there is need to allow them have their freedom because bail is not the end of the case.\r\n\r\nAnother forensic test known as toxicology , will be carried out on the corpse.\r\n\r\nBy the way, the  Toxicology test is to determine the concoction that was allegedly forced into the deceased mouth which peeled his lips. \r\n\r\nToxicology test was being done in Nigeria before, precisely at the Lagos State medical facility in Lagos Island. But after the EndASRS crisis, it is conducted outside the country.\r\n\r\nUntil that one is effectively done, we won’t know the final report. But with the interim report, nothing showed  murder”Odumosu said', 'Recall that the deceased, who was a Junior Secondary School 2 student of Dowen College and a boarder, was rushed to his parent\'s home in Warri, Delta State two months ago, owing to some injuries he sustained after he was allegedly attacked by some of his seniors. The school however dismissed the claim. According to them, he was injured during a football match. He died on November 30.\r\n\r\n \r\n\r\nThe police began an investigation into the incident. Five of the students whose names Sylvester allegedly mentioned before passing were arrested alongside three housemasters. They have however, been released on bail.', '1641480199_blog4.jpg', '1641480199_blog2.jpg', '2022-01-06 13:43:19', '2022-01-06 13:43:19', 'https://www.youtube.com/watch?v=tw6_ZRzUJZ0'),
(5, 'Battle of Deeper Life Sisters: Female members of Deeper Life Church fight over \'revelation\'', 'Admin', '1641480315_blog6.webp', 'religion', 'A female member of the Deeper Life Church has called out another female member of the church and controversial preacher, Sister Kate over her recent \"revelation\". \r\n\r\n \r\n\r\nSister Kate had repeatedly claimed to have witnessed rapture over 40 times and has shared some of the things that can \'hinder people from making heaven.\' Some of them include tying wrappers while baring the upper part of the body, wearing lipstick, weavon, trouser, flowery clothes, shoes with shiny objects, jewelries, clothes which exposes some parts of the body and many others.', 'A member of the church who has now countered the claim, accused Sister Kate of not backing up her revelation with the scripture. Describing Sister Kate as \"annoying\", she also asked if the Jesus she claimed she saw is the one seen in posters in Africa.', 'The Deeper Life member went on to ask the female preacher to \"shut up\". Watch the video below.......................', '1641480315_blog4.jpg', '1641480315_blog5.jpg', '2022-01-06 13:45:15', '2022-01-06 13:45:15', 'https://www.youtube.com/watch?v=iHIO1XQa4LU'),
(6, 'Accra slay queen, \'Kylie Jenner\' fights taxi driver over fare charges', 'Isreal Kenny', '1641480417_blog7.jpeg', 'comedy', 'Accra\'s very own \"Kylie Jenner\'\' has been seen in a video shared online fighting a taxi driver over the fare charges she was given.\r\n\r\n \r\n\r\nLocal news platforms in Ghana reported that the fight ensued after the driver refused to accept the money the slay queen decided to pay him.', 'It was alleged that the lady felt the driver wanted to cheat her by charging an \'\'outrageous fare\'\' for the ride. She insisted that she would not pay the driver more than what she thought was the due fare.', 'It did not sit well with the Yango driver who demanded that he be paid the full amount as shown on the app. This degenerated into a physical altercation.', '1641480417_blog6.webp', '1641480417_blog2.jpg', '2022-01-06 13:46:57', '2022-01-06 13:46:57', 'https://www.youtube.com/watch?v=i1dqmmgAeKo'),
(7, 'Kanye West spotted with mystery girl on hotel balcony before almost naked woman steps out of same hotel balcony', 'James Bond', '1641480589_blog9.jpg', 'dance', 'Billionaire rapper, Kanye West was spotted with a mystery girl on a hotel balcony in Miami over the weekend before another scantily-clad woman was spotted out on her own on the same balcony.', 'This comes as he and estranged wife, Kim Kardashian continue their legal proceedings to divorce while she\'s in a relationship with comedian Pete Davidson.\r\n\r\nOn the same day Kanye was spotted with the unknown girl he was then\r\nalso spotted on a date night with actress Julia Fox.', 'Though Kanye and the mystery girl kept their distance as they leaned against the balcony railing with their attention elsewhere.\r\n\r\n \r\n\r\nKim filed for divorce from Kanye in early 2021 following six years of marriage and four children together.', '1641480589_blog8.jpg', '1641480589_blog10.jpg', '2022-01-06 13:49:49', '2022-01-06 13:49:49', 'https://www.youtube.com/watch?v=-NZcW28JrC0'),
(8, 'Davido’s first baby mama, Sophia Momodu breaks down in tears as she reacts to allegation of fighting the singer’s second baby...', 'King Solomon', '1641480677_blog8.jpg', 'sport', 'Davido\'s first baby mama, Sophia Momodu broke down in tears as she reacted to allegation of fighting the singer’s second baby mama, Amanda in a club over him.\r\n\r\n \r\n\r\nAccording to Sophia, all she did was arrange for their girls to be with their father and get the love they deserve from him.', 'The mother of one who accused social media users of toying with her emotions in the last six years, went on to ask if they want her to raise her daughter in hate.', 'Davido\'s first baby mama, Sophia Momodu broke down in tears as she reacted to allegation of fighting the singer’s second baby mama, Amanda in a club over him.\r\n\r\n \r\n\r\nAccording to Sophia, all she did was arrange for their girls to be with their father and get the love they deserve from him.', '1641480677_blog7.jpeg', '1641480677_blog2.jpg', '2022-01-06 13:51:17', '2022-01-06 13:51:17', 'https://www.youtube.com/watch?v=tZuI4lXZPXs'),
(9, 'Nigerian govt denies reports of plans to disengage workers', 'Admin', '1641482032_blog11.jpg', 'politics', 'The Federal Government has debunked reports about an imminent disengagement of civil servants due to the economic cash crunch.\r\n\r\nThis refutal was made by the Minister of Finance, Budget and National Planning, Zainab Ahmed, during the NTA’s ‘Good Morning Nigeria’ programme on Thursday.', 'According to Ahmed, President Muhammadu Buhari has always advocated for workers’ welfare and will never mandate a mass disengagement of the nation’s public workforce.\r\n\r\nAhmed said the government would reduce overheads by ensuring that government agencies are merged.', 'She added, “Mr President doesn’t want to disengage staff. That is what he has directed from the beginning of his administration. He also directed that we pay salaries. The Federal Government has never failed in paying salaries and he said we must always pay pensions.', '1641482032_blog8.jpg', '1641482032_blog2.jpg', '2022-01-06 14:13:52', '2022-01-06 14:13:52', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `blog_comments`
--

CREATE TABLE `blog_comments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `blog_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `blog_comments`
--

INSERT INTO `blog_comments` (`id`, `blog_id`, `name`, `email`, `comment`, `created_at`, `updated_at`) VALUES
(1, 9, 'Charles Johnson', 'charlesjohnson@gmail.com', 'I\'m really not amazed seeing this as we all know that we have a failed government. This is why all our youths that are supposed to develop the country are travelling out.', '2022-01-21 15:37:40', '2022-01-21 15:37:40'),
(2, 2, 'Kelvin Bond', 'kelvinbond@gmail.com', 'Its amazing how some of this people call themselves men of God and still indulge actively in promiscuous life.  So pathethic.', '2022-01-21 15:39:32', '2022-01-21 15:39:32'),
(3, 9, 'Ropo flex', 'oluwaniyiropo11@gmail.com', 'This government just comprises of a bunch of confused fellows. What a pity!', '2022-01-21 15:55:09', '2022-01-21 15:55:09'),
(4, 9, 'Akinwunmi Paul', 'akinpaul@gmail.com', 'How gullible these workers are that the government keep playing them like a football but they\'ll always still be loyal to them. Gosh.', '2022-01-21 16:47:56', '2022-01-21 16:47:56'),
(5, 8, 'Okechukwu Emmanuel', 'okeyemmazy@gmail.com', 'That one na their own cup of beans.  Weting concern me with celebrities?  Them don make their money finish na. lol', '2022-01-21 16:49:26', '2022-01-21 16:49:26');

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone_number` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subject` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`id`, `name`, `email`, `phone_number`, `subject`, `message`, `created_at`, `updated_at`) VALUES
(1, 'Arthur Micheal', 'arthurmicheal@yahoo.com', '07023671892', 'Making Enquiries', 'I like your designs.  Can you build this kind of website for me?', '2022-01-13 09:58:37', '2022-01-13 09:58:37'),
(2, 'Arthur Micheal2', 'arthurmicheal@gmail.com', '09812678930', 'Getting Some Products', 'Do you do home deliveries?', '2022-01-13 10:04:01', '2022-01-13 10:04:01'),
(3, 'Ropo', 'oluwaniyiropo11@gmail.com', '08132621797', 'Project proposal', 'Please i want to tell you that you\'ve gotten a job with us.', '2022-01-13 10:10:58', '2022-01-13 10:10:58'),
(4, 'Kenny Black', 'kenny@gmail.com', '08132621797', 'Mentorship', 'Please teach me.', '2022-01-13 10:30:14', '2022-01-13 10:30:14');

-- --------------------------------------------------------

--
-- Table structure for table `contact_users`
--

CREATE TABLE `contact_users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone_number` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `profile_picx` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `occupation` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `location` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contact_users`
--

INSERT INTO `contact_users` (`id`, `name`, `email`, `phone_number`, `profile_picx`, `occupation`, `location`, `created_at`, `updated_at`) VALUES
(1, 'Arthur Moses', 'arthurmoses@gmail.com', '08134671987', 'C:\\fakepath\\IMG-20210906-WA0027.jpg', 'Graphic Designer', 'Lagos', '2022-01-17 09:47:32', '2022-02-08 00:08:38');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `faqs`
--

CREATE TABLE `faqs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone_number` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subject` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `question` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `faqs`
--

INSERT INTO `faqs` (`id`, `name`, `phone_number`, `subject`, `question`, `created_at`, `updated_at`) VALUES
(1, 'Charles Johnson', '08170068685', 'Making some enquiries.', 'Please i want to ask if staff of this online store can train students on web development and programming?  I\'m thrilled by the beauty of your store.', '2022-01-13 10:43:50', '2022-01-13 10:43:50'),
(2, 'Emmanuel Kelvin', '08134671987', 'Making enquiries about your delivery services.', 'I\'ve seen a lot of amazing, beautiful and super products in your store. I want to ask if you guys have delivery agents that can deliver to me in Kafachan.', '2022-01-13 10:51:44', '2022-01-13 10:51:44'),
(3, 'Nwamaka Deborah', '08127894501', 'Will your store offer valentine discount?', 'I really want to ask if your store will offer discount on some products as i plan getting a lot of products for myself, husband and children.', '2022-01-13 10:53:38', '2022-01-13 10:53:38'),
(4, 'Ropo flex', '0132621797', 'Test', 'This is a test.', '2022-03-30 12:28:15', '2022-03-30 12:28:15'),
(5, 'Test', '08181347934', 'For testing', 'I am testing', '2022-03-31 09:00:31', '2022-03-31 09:00:31');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(37, '2022_01_03_132859_create_product_alt_images_table', 1),
(43, '2014_10_12_000000_create_users_table', 2),
(44, '2014_10_12_100000_create_password_resets_table', 2),
(45, '2019_08_19_000000_create_failed_jobs_table', 2),
(46, '2019_12_14_000001_create_personal_access_tokens_table', 2),
(47, '2022_01_02_091359_create_products_table', 2),
(50, '2022_01_06_130947_create_blogs_table', 3),
(51, '2022_01_06_145441_add_vid_url_to_blogs', 4),
(52, '2022_01_08_050900_add_status1_to_products', 5),
(53, '2022_01_08_051254_add_status2_and_status3_and_status4_and_and_status5_to_products', 5),
(54, '2022_01_13_091055_create_contacts_table', 6),
(55, '2022_01_13_112228_create_faqs_table', 7),
(56, '2022_01_15_201322_create_contact_users_table', 8),
(63, '2022_02_20_114028_create_orders_table', 9),
(64, '2022_02_20_114723_create_order_details_table', 9);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_price` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_qty` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_total` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `reference_num` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `transaction_num` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `product_id`, `product_price`, `product_qty`, `product_total`, `reference_num`, `transaction_num`, `product_status`, `created_at`, `updated_at`) VALUES
(1, '2', '19', '34', '1', '34', '1647901324649', '1700765425', 'SUCCESS', '2022-03-21 21:22:26', '2022-03-21 21:22:26'),
(2, '2', '10', '28', '1', '28', '1647902577436', '1700787298', 'SUCCESS', '2022-03-21 21:43:22', '2022-03-21 21:43:22'),
(3, '2', '1', '80', '1', '80', '1647909677117', '1700915458', 'SUCCESS', '2022-03-21 23:41:30', '2022-03-21 23:41:30'),
(4, '2', '10', '28', '2', '56', '1647910101136', '1700929090', 'SUCCESS', '2022-03-21 23:48:44', '2022-03-21 23:48:44'),
(5, '2', '10', '28', '1', '28', '1647910245307', '1700932306', 'SUCCESS', '2022-03-21 23:50:55', '2022-03-21 23:50:55'),
(6, '2', '12', '24', '1', '24', '1647910245307', '1700932306', 'SUCCESS', '2022-03-21 23:50:55', '2022-03-21 23:50:55'),
(7, '2', '10', '28', '1', '28', '1647910345817', '1700935086', 'SUCCESS', '2022-03-21 23:52:36', '2022-03-21 23:52:36'),
(8, '2', '12', '24', '1', '24', '1647910345817', '1700935086', 'SUCCESS', '2022-03-21 23:52:37', '2022-03-21 23:52:37'),
(9, '2', '1', '80', '1', '80', '1647910665084', '1700942555', 'SUCCESS', '2022-03-21 23:57:55', '2022-03-21 23:57:55'),
(10, '2', '2', '30', '1', '30', '1647910665084', '1700942555', 'SUCCESS', '2022-03-21 23:57:55', '2022-03-21 23:57:55'),
(11, '2', '4', '30', '1', '30', '1647910784582', '1700945359', 'SUCCESS', '2022-03-21 23:59:56', '2022-03-21 23:59:56'),
(12, '2', '10', '28', '1', '28', '1647910784582', '1700945359', 'SUCCESS', '2022-03-21 23:59:56', '2022-03-21 23:59:56'),
(13, '2', '10', '28', '1', '28', '1647910880304', '1700947729', 'SUCCESS', '2022-03-22 00:01:33', '2022-03-22 00:01:33'),
(14, '2', '12', '24', '1', '24', '1647910880304', '1700947729', 'SUCCESS', '2022-03-22 00:01:33', '2022-03-22 00:01:33'),
(15, '2', '10', '28', '1', '28', '1647911868321', '1700974093', 'SUCCESS', '2022-03-22 00:18:04', '2022-03-22 00:18:04'),
(16, '2', '12', '24', '1', '24', '1647911868321', '1700974093', 'SUCCESS', '2022-03-22 00:18:04', '2022-03-22 00:18:04'),
(17, '2', '10', '28', '1', '28', '1647912167400', '1700980525', 'SUCCESS', '2022-03-22 00:23:06', '2022-03-22 00:23:06'),
(18, '2', '12', '24', '1', '24', '1647912167400', '1700980525', 'SUCCESS', '2022-03-22 00:23:07', '2022-03-22 00:23:07'),
(19, '2', '10', '28', '1', '28', '1647912285046', '1700982629', 'SUCCESS', '2022-03-22 00:24:55', '2022-03-22 00:24:55'),
(20, '2', '12', '24', '1', '24', '1647912285046', '1700982629', 'SUCCESS', '2022-03-22 00:24:55', '2022-03-22 00:24:55'),
(21, '2', '10', '28', '1', '28', '1647912391939', '1700984574', 'SUCCESS', '2022-03-22 00:26:42', '2022-03-22 00:26:42'),
(22, '2', '12', '24', '1', '24', '1647912391939', '1700984574', 'SUCCESS', '2022-03-22 00:26:42', '2022-03-22 00:26:42'),
(23, '2', '1', '80', '1', '80', '1647914035929', '1701023742', 'SUCCESS', '2022-03-22 00:54:04', '2022-03-22 00:54:04'),
(24, '2', '10', '28', '1', '28', '1647914400952', '1701035902', 'SUCCESS', '2022-03-22 01:00:12', '2022-03-22 01:00:12'),
(25, '2', '12', '24', '2', '48', '1647914400952', '1701035902', 'SUCCESS', '2022-03-22 01:00:13', '2022-03-22 01:00:13'),
(26, '2', '10', '28', '1', '28', '1647914845405', '1701053462', 'SUCCESS', '2022-03-22 01:07:36', '2022-03-22 01:07:36'),
(27, '2', '12', '24', '2', '48', '1647914845405', '1701053462', 'SUCCESS', '2022-03-22 01:07:36', '2022-03-22 01:07:36'),
(28, '2', '10', '28', '1', '28', '1647915281238', '1701068871', 'SUCCESS', '2022-03-22 01:14:52', '2022-03-22 01:14:52'),
(29, '2', '12', '24', '2', '48', '1647915281238', '1701068871', 'SUCCESS', '2022-03-22 01:14:52', '2022-03-22 01:14:52'),
(30, '2', '10', '28', '1', '28', '1648504261020', '1714977546', 'SUCCESS', '2022-03-28 20:51:19', '2022-03-28 20:51:19'),
(31, '2', '12', '24', '1', '24', '1648504261020', '1714977546', 'SUCCESS', '2022-03-28 20:51:20', '2022-03-28 20:51:20'),
(32, '2', '10', '28', '1', '28', '1648645817013', '1718198872', 'SUCCESS', '2022-03-30 12:10:45', '2022-03-30 12:10:45'),
(33, '2', '2', '30', '1', '30', '1648645817013', '1718198872', 'SUCCESS', '2022-03-30 12:10:45', '2022-03-30 12:10:45');

-- --------------------------------------------------------

--
-- Table structure for table `order_details`
--

CREATE TABLE `order_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_first_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_last_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_phone_num` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_city` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_country` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_postal_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `order_details`
--

INSERT INTO `order_details` (`id`, `product_id`, `customer_first_name`, `customer_last_name`, `customer_phone_num`, `customer_email`, `customer_address`, `customer_city`, `customer_country`, `customer_postal_code`, `created_at`, `updated_at`) VALUES
(1, '19', 'oluwaniyi', 'ropo', '08181347934', 'oluwaniyiropo11@gmail.com', '14, Onipakala Street ketu-alapere', 'Mainland', 'Nigeria', '01', '2022-03-21 21:22:26', '2022-03-21 21:22:26'),
(2, '10', 'Charles', 'Johnson', '07023457198', 'charlesjohnson@gmail.com', 'charlesjohnson@gmail.com', 'Mainland', 'Nigeria', '01', '2022-03-21 21:43:22', '2022-03-21 21:43:22'),
(3, '1', 'oluwaniyi', 'ropo', '09024195881', 'oluwaniyiropo11@gmail.com', '14, Onipakala Street ketu-alapere', 'Mainland', 'Nigeria', '01', '2022-03-21 23:41:30', '2022-03-21 23:41:30'),
(4, '10', 'Ropo', 'oluwaniyi', '08170068685', 'oluwaniyiropo11@gmail.com', '14, Onipakala Street ketu-alapere', 'Mainland', 'Nigeria', '01', '2022-03-21 23:48:44', '2022-03-21 23:48:44'),
(5, '10', 'Adebayo', 'Adekoya', '08127891256', 'adesuyifemi@gmail.com', '13 Adekoya Street Ogba Ikeja', 'Mainland', 'Nigeria', '01', '2022-03-21 23:50:55', '2022-03-21 23:50:55'),
(6, '12', 'Adebayo', 'Adekoya', '08127891256', 'adesuyifemi@gmail.com', '13 Adekoya Street Ogba Ikeja', 'Mainland', 'Nigeria', '01', '2022-03-21 23:50:55', '2022-03-21 23:50:55'),
(7, '10', 'Benson', 'Josh', '07023457198', 'youngjorsh@gmail.com', '14, Onipakala Street ketu-alapere', 'Mainland', 'Nigeria', '01', '2022-03-21 23:52:36', '2022-03-21 23:52:36'),
(8, '12', 'Benson', 'Josh', '07023457198', 'youngjorsh@gmail.com', '14, Onipakala Street ketu-alapere', 'Mainland', 'Nigeria', '01', '2022-03-21 23:52:37', '2022-03-21 23:52:37'),
(9, '1', 'John', 'Grace', '08134671987', 'graceylaposh@gmail.com', '14, Onipakala Street ketu-alapere', 'Mainland', 'Nigeria', '01', '2022-03-21 23:57:55', '2022-03-21 23:57:55'),
(10, '2', 'John', 'Grace', '08134671987', 'graceylaposh@gmail.com', '14, Onipakala Street ketu-alapere', 'Mainland', 'Nigeria', '01', '2022-03-21 23:57:55', '2022-03-21 23:57:55'),
(11, '4', 'Ropo', 'flex', '07023457198', 'oluwaniyiropo11@gmail.com', '14, Onipakala Street ketu-alapere', 'Mainland', 'Nigeria', '01', '2022-03-21 23:59:56', '2022-03-21 23:59:56'),
(12, '10', 'Ropo', 'flex', '07023457198', 'oluwaniyiropo11@gmail.com', '14, Onipakala Street ketu-alapere', 'Mainland', 'Nigeria', '01', '2022-03-21 23:59:56', '2022-03-21 23:59:56'),
(13, '10', 'ropo', 'oluwaniyi', '08127891256', 'oluwaniyiropo11@gmail.com', '14, Onipakala Street ketu-alapere', 'Mainland', 'Nigeria', '01', '2022-03-22 00:01:33', '2022-03-22 00:01:33'),
(14, '12', 'ropo', 'oluwaniyi', '08127891256', 'oluwaniyiropo11@gmail.com', '14, Onipakala Street ketu-alapere', 'Mainland', 'Nigeria', '01', '2022-03-22 00:01:34', '2022-03-22 00:01:34'),
(15, '10', 'oluwaniyi', 'ropo', '08127891256', 'oluwaniyiropo11@gmail.com', '14, Onipakala Street ketu-alapere', 'Mainland', 'Nigeria', '01', '2022-03-22 00:18:04', '2022-03-22 00:18:04'),
(16, '12', 'oluwaniyi', 'ropo', '08127891256', 'oluwaniyiropo11@gmail.com', '14, Onipakala Street ketu-alapere', 'Mainland', 'Nigeria', '01', '2022-03-22 00:18:05', '2022-03-22 00:18:05'),
(17, '10', 'Kenny', 'Black', '07023457198', 'charlesjohnson@gmail.com', 'kennyblack@yahoo.com', 'Mainland', 'Nigeria', '01', '2022-03-22 00:23:07', '2022-03-22 00:23:07'),
(18, '12', 'Kenny', 'Black', '07023457198', 'charlesjohnson@gmail.com', 'kennyblack@yahoo.com', 'Mainland', 'Nigeria', '01', '2022-03-22 00:23:07', '2022-03-22 00:23:07'),
(19, '10', 'ropo', 'flex', '08134671987', 'charlesjohnson@gmail.com', '14, Onipakala Street ketu-alapere', 'Mainland', 'Nigeria', '01', '2022-03-22 00:24:55', '2022-03-22 00:24:55'),
(20, '12', 'ropo', 'flex', '08134671987', 'charlesjohnson@gmail.com', '14, Onipakala Street ketu-alapere', 'Mainland', 'Nigeria', '01', '2022-03-22 00:24:55', '2022-03-22 00:24:55'),
(21, '10', 'Kenny', 'Black', '08181347934', 'charlesjohnson@gmail.com', '14, Onipakala Street ketu-alapere', 'Mainland', 'Nigeria', '01', '2022-03-22 00:26:42', '2022-03-22 00:26:42'),
(22, '12', 'Kenny', 'Black', '08181347934', 'charlesjohnson@gmail.com', '14, Onipakala Street ketu-alapere', 'Mainland', 'Nigeria', '01', '2022-03-22 00:26:42', '2022-03-22 00:26:42'),
(23, '1', 'oluwaniyi', 'oluwaniyi', '07023457198', 'oluwaniyiropo11@gmail.com', '14, Onipakala Street ketu-alapere', 'Mainland', 'Nigeria', '01', '2022-03-22 00:54:05', '2022-03-22 00:54:05'),
(24, '10', 'oluwaniyi', 'ropo', '07023457198', 'oluwaniyiropo11@gmail.com', '14, Onipakala Street ketu-alapere', 'Mainland', 'Nigeria', '01', '2022-03-22 01:00:13', '2022-03-22 01:00:13'),
(25, '12', 'oluwaniyi', 'ropo', '07023457198', 'oluwaniyiropo11@gmail.com', '14, Onipakala Street ketu-alapere', 'Mainland', 'Nigeria', '01', '2022-03-22 01:00:13', '2022-03-22 01:00:13'),
(26, '10', 'ropo', 'oluwaniyi', '08134671987', 'oluwaniyiropo11@gmail.com', '14, Onipakala Street ketu-alapere', 'Mainland', 'Nigeria', '01', '2022-03-22 01:07:36', '2022-03-22 01:07:36'),
(27, '12', 'ropo', 'oluwaniyi', '08134671987', 'oluwaniyiropo11@gmail.com', '14, Onipakala Street ketu-alapere', 'Mainland', 'Nigeria', '01', '2022-03-22 01:07:36', '2022-03-22 01:07:36'),
(28, '10', 'ropo', 'oluwaniyi', '08134671987', 'adesuyifemi@gmail.com', '14, Onipakala Street ketu-alapere', 'Mainland', 'Nigeria', '01', '2022-03-22 01:14:52', '2022-03-22 01:14:52'),
(29, '12', 'ropo', 'oluwaniyi', '08134671987', 'adesuyifemi@gmail.com', '14, Onipakala Street ketu-alapere', 'Mainland', 'Nigeria', '01', '2022-03-22 01:14:52', '2022-03-22 01:14:52'),
(30, '10', 'oluwaniyi', 'ropo', '09024195881', 'oluwaniyiropo11@gmail.com', '14, Onipakala Street ketu-alapere', 'Mainland', 'Nigeria', '01', '2022-03-28 20:51:20', '2022-03-28 20:51:20'),
(31, '12', 'oluwaniyi', 'ropo', '09024195881', 'oluwaniyiropo11@gmail.com', '14, Onipakala Street ketu-alapere', 'Mainland', 'Nigeria', '01', '2022-03-28 20:51:21', '2022-03-28 20:51:21'),
(32, '10', 'Adekoya', 'Adebayo', '09024195881', 'adekoya@gmail.com', '13 Adekoya Street Ogba Ikeja', 'Lagos', 'Nigeria', '01', '2022-03-30 12:10:45', '2022-03-30 12:10:45'),
(33, '2', 'Adekoya', 'Adebayo', '09024195881', 'adekoya@gmail.com', '13 Adekoya Street Ogba Ikeja', 'Lagos', 'Nigeria', '01', '2022-03-30 12:10:45', '2022-03-30 12:10:45');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `discount` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `long_desc` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `short_desc` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `img_alt1` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `img_alt2` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `img_alt3` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `video` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `status1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status3` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status4` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status5` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `price`, `discount`, `image`, `category`, `long_desc`, `short_desc`, `img_alt1`, `img_alt2`, `img_alt3`, `video`, `created_at`, `updated_at`, `status1`, `status2`, `status3`, `status4`, `status5`) VALUES
(1, 'Beautiful Chair', '80', '60', '1641471046_img2.png', 'home_and_offices', 'This is the only chair that can give your high level of comfortability and make you forget all your problems.', 'Its not an ordinary chair.', '1641471046_img3.png', '1641471046_chairmiddle.png', '1641471046_img1.png', '1641471046_discountchair.png', '2022-01-06 11:10:46', '2022-01-06 11:10:46', 'new_arrival', 'best_seller', 'top_category', 'special_offer', 'best_seller'),
(2, 'IPhone Wrist Watch', '30', '18', '1641471229_img5.png', 'fashion', 'An iphone wrist watch made with the best materials to last for eternity. Best quality you can trust.', 'A beautiful and smart watch.', '1641471229_img6.png', '1641471229_img9.png', '1641471229_img5.png', '1641471229_img9.png', '2022-01-06 11:13:49', '2022-01-06 11:13:49', 'new_arrival', 'best_seller', 'featured', 'trending', 'special_offer'),
(3, 'HP Camera', '38', '26', '1641471349_img10.png', 'electronics', 'This camera has the highest picture quality. It\'s the most popular camera in the world.', 'Get the best pictures with this camera.', '1641471349_skybluechair.png', '1641471349_img3.png', '1641471349_img6.png', '1641471349_minichair2.png', '2022-01-06 11:15:49', '2022-01-06 11:15:49', 'trending', 'special_offer', 'trending', 'best_seller', 'featured'),
(4, 'Adidas Headset', '30', '16', '1641471442_img11.png', 'agriculture_and_food', 'Headset with the most balanced sound system in the whole world.', 'Trust our sound.', '1641471442_img7.png', '1641471442_img3.png', '1641471442_clock.png', '1641471442_img2.png', '2022-01-06 11:17:22', '2022-01-06 11:17:22', 'new_arrival', 'trending', 'featured', 'top_category', 'best_seller'),
(5, 'Sony Wrist Watch', '40', '30', '1641471583_img6.png', 'computer_and_accessories', 'This is a watch that can tell you about your destiny. It tells you the exact time you\'ll get to a place even before leaving your home.', 'Its a very good wrist watch.', '1641471583_img5.png', '1641471583_discountchair.png', '1641471583_skybluechair.png', '1641471583_discountchair.png', '2022-01-06 11:19:43', '2022-01-06 11:19:43', 'best_seller', 'trending', 'featured', 'trending', 'best_seller'),
(6, 'Comfy Office Chair', '70', '50', '1641471704_img3.png', 'home_and_offices', 'Comfy chair provides the best comfortability after a long day at work.', 'Sit and forget your sorrow.', '1641471704_img2.png', '1641471704_skybluechair.png', '1641471704_discountchair.png', '1641471704_minichair2.png', '2022-01-06 11:21:44', '2022-01-06 11:21:44', 'trending', 'best_seller', 'special_offer', 'new_arrival', 'featured'),
(7, 'Hp Laptop Bag', '18', '12', '1641471850_img4.png', 'sports_and_outdoors', 'This bag can carry the destiny of your entire family member ranging from your mum, dad, brother, sister, uncle and aunty.', 'This bag lasts more than seven years.', '1641471850_img3.png', '1641471850_img11.png', '1641471850_chairtop.png', '1641471850_img7.png', '2022-01-06 11:24:10', '2022-01-06 11:24:10', 'featured', 'new_arrival', 'top_category', 'special_offer', 'special_offer'),
(8, 'Adidas wrist Watch', '20', '12', '1641471962_img6.png', 'phones_and_tablets', 'This watch is a special watch created for special set of persons. Not to be sold to ordinary men.', 'This watch watches over you when you sleep.', '1641471962_img3.png', '1641471962_img7.png', '1641471962_img1.png', '1641471962_clock.png', '2022-01-06 11:26:02', '2022-01-06 11:26:02', 'best_seller', 'special_offer', 'trending', 'new_arrival', 'featured'),
(9, 'Nike Headphone', '26', '14', '1641472077_img7.png', 'health_and_beauty', 'This headset is mainly for those that are more into music as they will enjoy this sound from their music parts.', 'Buy this headset and live life happily after.', '1641472077_clock.png', '1641472077_skybluechair.png', '1641472077_discountchair.png', '1641472077_chairbottom.png', '2022-01-06 11:27:57', '2022-01-06 11:27:57', 'special_offer', 'trending', 'new_arrival', 'featured', 'best_seller'),
(10, 'German Office Shirt', '28', '22', '1641472278_shirt12b.png', 'fashion', 'This shirt is mainly for serious minded people. Its one of the best quality you can find in any store.', 'It automatically straightens up after being wash. What a magical shirt.', '1641472278_shirt2.jpg', '1641472278_shirt3.jpg', '1641472278_shirt13.jpg', '1641472278_shirt1.jpg', '2022-01-06 11:31:18', '2022-01-06 11:31:18', 'new_arrival', 'featured', 'best_seller', 'trending', 'special_offer'),
(11, 'Italian Office Wear', '32', '26', '1641472493_shirt13b.png', 'fashion', 'This is a German shirt made from the purest materials in the world. It\'s gives the highest feeling of relaxation when its been worn. It can never fade.', 'It never tears no matter what\'s being used to cut it. It stands the test of time.', '1641472493_shirt14.jpg', '1641472493_shirt1.jpg', '1641472493_shirt2.jpg', '1641472493_shirt2.jpg', '2022-01-06 11:34:53', '2022-01-06 11:34:53', 'trending', 'best_seller', 'featured', 'top_category', 'new_arrival'),
(12, 'Japanes Watch', '24', '18', '1641472595_watchnew.png', 'computer_and_accessories', 'This watch is what makes the japanese conceive some incomprehensible ideas as its from the meta world.', 'Its really a great wrist watch.', '1641472595_watch.jpeg', '1641472595_img9.png', '1641472595_img5.png', '1641472595_img1.png', '2022-01-06 11:36:35', '2022-01-06 11:36:35', 'new_arrival', 'featured', 'new_arrival', 'best_seller', 'trending'),
(13, 'Black Skinned Clock', '18', '12', '1641472712_clock.png', 'home_and_offices', 'This is a wall clock to be used in beautiful official offices as it can beautify the life of all the staff.', 'Its a clock for the strong.', '1641472712_img7.png', '1641472712_chairmiddle.png', '1641472712_img1.png', '1641472712_chairtop.png', '2022-01-06 11:38:32', '2022-01-06 11:38:32', 'special_offer', 'trending', 'special_offer', 'new_arrival', 'best_seller'),
(14, 'Furnished Table', '25', '17', '1641472943_table.png', 'agriculture_and_food', 'This is the most strongest table made from the best iroko tree.', 'Its a strong table.', '1641472943_img1.png', '1641472943_img3.png', '1641472943_img7.png', '1641472943_img7.png', '2022-01-06 11:42:23', '2022-01-06 11:42:23', 'featured', 'new_arrival', 'top_category', 'best_seller', 'top_category'),
(15, 'Rolex Wrist Watch', '34', '18', '1641473601_watchnew.png', 'electronics', 'This is an amazing wrist watch with alot of functionalities. Its the most trending watch in the market.', 'This is just an amazing and cool watch.', '1641473601_shirt1.jpg', '1641473601_shirt8.jpg', '1641473601_img6.png', '1641473601_img5.png', '2022-01-06 11:53:21', '2022-01-06 11:53:21', 'featured', 'featured', 'trending', 'special_offer', 'top_category'),
(16, 'Executive Chair 1', '24', '18', '1641473754_chairtop.png', 'musical_instruments', 'This is a good chair. There\'s no one that has ever bough it and regretted.', 'You\'ll so love it. Just get it.', '1641473754_discountchair.png', '1641473754_img3.png', '1641473754_img1.png', '1641473754_minichair1.png', '2022-01-06 11:55:54', '2022-01-06 11:55:54', 'new_arrival', 'featured', 'new_arrival', 'best_seller', 'trending'),
(17, 'Executive Chair 2', '14', '22', '1641474020_chairmiddle.png', 'toys_and_games', 'This is a good chair.  Its the best for relaxation from all kinds of troubles.', 'Its a very good chair.', '1641474020_chairbottom.png', '1641474020_chairbottom.png', '1641474020_img6.png', '1641474020_img3.png', '2022-01-06 12:00:20', '2022-01-06 12:00:20', 'featured', 'trending', 'top_category', 'featured', 'new_arrival'),
(18, 'Executive Chair 3', '21', '16', '1641474115_chairbottom.png', 'health_and_beauty', 'This is the best set of chairs to put for executives. Its specially amde for the elites of the company.', 'Its an amazing chair.', '1641474115_img1.png', '1641474115_img8.png', '1641474115_minichair1.png', '1641474115_img3.png', '2022-01-06 12:01:55', '2022-01-06 12:01:55', 'featured', 'best_seller', 'new_arrival', 'special_offer', 'trending'),
(19, 'Lovely Pink Chair', '34', '31', '1641618090_chair.png', 'fashion', 'This chair is a really beautiful and strong chair made with the best wooden materials in the whole world.', 'Buy this chair and have great peace of mind.', '1641618090_shirt2.jpg', '1641618090_shirt3.jpg', '1641618090_shirt4.jpg', '1641618090_shirt6.jpg', '2022-01-08 04:01:30', '2022-01-08 04:01:30', 'trending', 'new_arrival', 'special_offer', 'trending', 'featured'),
(20, 'Plain Office Shirt', '26', '22', '1641618228_shirt13b.png', 'fashion', 'This shirt is just so amazing in its design and probably one of the most beautiful shirts out there.', 'Its quality is top notch.', '1641618228_shirt8.jpg', '1641618228_shirt12b.png', '1641618228_shirt14.jpg', '1641618228_shirt2.jpg', '2022-01-08 04:03:48', '2022-01-08 04:03:48', 'featured', 'trending', 'best_seller', 'best_seller', 'new_arrival'),
(21, 'Gucci Wrist Watch', '20', '12', '1641618375_watchnew.png', 'phones_and_tablets', 'As it\'s know wide wide that gucci products are prestigious so is this watch in its quality.', 'Have you been thinking of getting a quality watch? Get this.', '1641618375_shirt4.jpg', '1641618375_shirt2.jpg', '1641618375_shirt1.jpg', '1641618375_shirt3.jpg', '2022-01-08 04:06:15', '2022-01-08 04:06:15', 'new_arrival', 'featured', 'trending', 'new_arrival', 'top_category'),
(23, 'Sky Blue Chair', '32', '27', '1641637626_skybluechair.png', 'home_and_kitchen', 'This is a very high quality chair for hotel owners as this will serve their customers with the highest comfortablility.', 'Its an extra amzing chair.', '1641637626_img1.png', '1641637626_img3.png', '1641637626_img8.png', '1641637626_discountchair.png', '2022-01-08 09:27:06', '2022-01-08 09:27:06', NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `first_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone_number` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `profile_picx` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `confirm_password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `address`, `phone_number`, `profile_picx`, `password`, `confirm_password`, `email_verified_at`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'James', 'Bond', 'jamesbond@gmail.com', '2A George Bush, Zone 4', '23908712', '1641956655_IMG_0945.JPG', '$2y$10$GHn7rbFD/8xL7PuLCeYQU.cWEDqwPc/3wAXZHfjytAeYuZeu3oGL6', '$2y$10$VogMm07fIy4s47Ep2IytR.uS7wJZJRnNtjsdhz0xweoNInr6EuWGe', NULL, NULL, '2022-01-12 02:04:15', '2022-01-12 02:04:15'),
(2, 'Charles', 'Johnson', 'charlesjohnson@gmail.com', 'No 60, Ahmadu Bello, Railway Compound.', '08181347934', '1641956836_IMG-20210906-WA0024.jpg', '$2y$10$jh8ZPiqeyB4qzhLhXBfAJuKsI3npKPqPzS75a5P1zY5nmSy6ei2N2', '$2y$10$BBGnyytrpd6ZOSY9InIFoO1qc7AWrG0VPzj027QqnNdSExI65p/C.', NULL, NULL, '2022-01-12 02:07:16', '2022-01-12 02:07:16');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `blogs`
--
ALTER TABLE `blogs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blog_comments`
--
ALTER TABLE `blog_comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contact_users`
--
ALTER TABLE `contact_users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `faqs`
--
ALTER TABLE `faqs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_details`
--
ALTER TABLE `order_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `blogs`
--
ALTER TABLE `blogs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `blog_comments`
--
ALTER TABLE `blog_comments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `contact_users`
--
ALTER TABLE `contact_users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `faqs`
--
ALTER TABLE `faqs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `order_details`
--
ALTER TABLE `order_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
