-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 09, 2024 at 03:21 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laravel_africacc`
--

-- --------------------------------------------------------

--
-- Table structure for table `countries`
--

CREATE TABLE `countries` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `priority` int(11) DEFAULT NULL,
  `description` longtext DEFAULT NULL,
  `portrait` varchar(255) DEFAULT NULL,
  `landscape` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `countries`
--

INSERT INTO `countries` (`id`, `user_id`, `name`, `slug`, `priority`, `description`, `portrait`, `landscape`, `created_at`, `updated_at`) VALUES
(6, 2, 'Zimbabwe', 'zimbabwe', 7, 'Zimbabwe', 'assets/img/country/sector_p202448406.jpg', 'assets/img/country/sector_l202448202448236.jpg', '2024-08-26 13:48:38', '2024-08-26 13:48:38'),
(7, 2, 'Angola', 'Angola', 2, 'Angola', 'assets/img/country/sector_p202454757.jpg', 'assets/img/country/sector_l202454202454655.jpg', '2024-08-26 13:54:29', '2024-08-26 13:54:29'),
(8, 2, 'Gabon', 'gabon', 1, 'Gabon', 'assets/img/country/sector_p202424691.jpg', 'assets/img/country/sector_l202424202424538.jpg', '2024-08-28 11:24:22', '2024-08-28 11:24:22'),
(9, 2, 'Central African Republic', 'central-african-republic', 2, 'Central African Republic', 'assets/img/country/sector_p202425492.jpg', 'assets/img/country/sector_l202425202425568.jpg', '2024-08-28 11:25:18', '2024-08-28 11:25:18'),
(10, 2, 'Chad', 'chad', 3, 'Chad', 'assets/img/country/sector_p202425446.jpg', 'assets/img/country/sector_l202425202425697.jpg', '2024-08-28 11:25:51', '2024-08-28 11:25:51'),
(11, 2, 'Guinea-Bisau', 'guinea-bissau', 5, 'Guinea-Bisau', 'assets/img/country/sector_p202426425.jpg', 'assets/img/country/sector_l202426202426855.jpg', '2024-08-28 11:26:45', '2024-08-28 11:26:45'),
(12, 2, 'Democratic Republic of Congo', 'drc', 5, 'Democratic Republic of Congo', 'assets/img/country/sector_p202427580.jpg', 'assets/img/country/sector_l202427202427245.jpg', '2024-08-28 11:27:42', '2024-08-28 11:27:42'),
(13, 2, 'Equatorial Guinea', 'equatorial-guinea', 1, 'Equatorial Guinea', 'assets/img/country/sector_p202428349.jpg', 'assets/img/country/sector_l202428202428318.jpg', '2024-08-28 11:28:34', '2024-08-28 11:28:34'),
(14, 2, 'Sierra Leone', 'sierra-leone', 12, 'Sierra Leone', 'assets/img/country/sector_p202430819.jpg', 'assets/img/country/sector_l202430202430923.jpg', '2024-08-28 11:30:18', '2024-08-28 11:30:18');

-- --------------------------------------------------------

--
-- Table structure for table `events`
--

CREATE TABLE `events` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `date` varchar(255) DEFAULT NULL,
  `location` mediumtext DEFAULT NULL,
  `duration` varchar(255) DEFAULT NULL,
  `priority` int(11) DEFAULT NULL,
  `description` longtext DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `events`
--

INSERT INTO `events` (`id`, `user_id`, `name`, `slug`, `status`, `date`, `location`, `duration`, `priority`, `description`, `created_at`, `updated_at`) VALUES
(1, 2, 'eu elit. Nulla facilisi. Sed neque. Sed eget lacus. Mauris', 'MLP82HSO5PW', 'Completed', '2024-10-29', NULL, 'All Day', 10, 'turpis. Aliquam adipiscing lobortis risus. In mi pede, nonummy ut, molestie in, tempus eu, ligula. Aenean euismod mauris eu elit.', '2025-07-04 22:00:00', '2024-08-09 22:00:00'),
(2, 2, 'quis lectus. Nullam suscipit, est', 'LPN32NWB2SL', 'Completed', '2025-06-25', NULL, 'Half Day', 6, 'nunc sed libero. Proin sed turpis nec mauris blandit mattis. Cras eget nisi dictum augue malesuada malesuada. Integer id magna et ipsum cursus vestibulum. Mauris magna. Duis dignissim tempor arcu. Vestibulum ut eros non enim commodo hendrerit. Donec porttitor tellus non magna. Nam ligula elit, pretium et,', '2024-04-29 22:00:00', '2024-08-13 22:00:00'),
(3, 2, 'Fusce diam nunc, ullamcorper', 'CIR54LJK1VB', 'Upcoming', '2024-10-23', NULL, 'To be decided', 9, 'varius. Nam porttitor scelerisque neque. Nullam nisl. Maecenas malesuada fringilla est. Mauris eu turpis. Nulla aliquet. Proin velit. Sed malesuada augue ut lacus. Nulla tincidunt, neque vitae semper egestas, urna justo faucibus lectus, a sollicitudin orci sem eget massa. Suspendisse eleifend. Cras sed leo. Cras vehicula aliquet libero. Integer in magna. Phasellus dolor elit, pellentesque a, facilisis non, bibendum sed, est. Nunc laoreet lectus quis massa. Mauris vestibulum, neque sed dictum eleifend, nunc risus', '2024-03-26 22:00:00', '2024-08-27 22:00:00'),
(4, 2, 'imperdiet ornare. In', 'GTY19RQO6IG', 'Completed', '2024-12-16', NULL, 'Half Day', 4, 'eleifend, nunc risus varius orci, in consequat enim diam vel arcu. Curabitur ut odio vel est tempor bibendum. Donec felis orci, adipiscing non, luctus sit amet, faucibus ut, nulla. Cras eu tellus eu augue porttitor interdum. Sed auctor odio a purus. Duis elementum, dui quis accumsan convallis, ante lectus convallis est, vitae sodales nisi magna sed dui. Fusce aliquam, enim nec tempus scelerisque, lorem ipsum sodales purus, in molestie tortor nibh sit amet orci. Ut sagittis lobortis mauris. Suspendisse aliquet molestie tellus. Aenean egestas hendrerit neque.', '2024-10-19 22:00:00', '2024-08-22 22:00:00'),
(5, 2, 'malesuada id, erat. Etiam vestibulum massa', 'BUC24UAI4XI', 'Upcoming', '2024-11-16', NULL, 'Half Day', 3, 'Proin vel arcu eu odio tristique pharetra.', '2024-01-02 22:00:00', '2024-08-14 22:00:00'),
(6, 2, 'nostra, per', 'XJY58RXO2KL', 'Upcoming', '2025-05-17', NULL, 'To be decided', 5, 'feugiat tellus lorem eu metus. In lorem. Donec elementum, lorem ut aliquam iaculis, lacus pede sagittis augue, eu tempor erat neque non quam. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Aliquam fringilla cursus purus. Nullam', '2024-02-15 22:00:00', '2024-08-15 22:00:00'),
(7, 2, 'nulla vulputate dui, nec tempus mauris erat eget', 'BSB65LDY3EQ', 'Completed', '2024-10-19', NULL, 'To be decided', 2, 'eleifend. Cras sed leo. Cras vehicula aliquet libero. Integer in magna. Phasellus dolor elit, pellentesque a, facilisis', '2025-05-29 22:00:00', '2024-08-06 22:00:00'),
(8, 2, 'nulla ante, iaculis nec, eleifend non, dapibus rutrum,', 'NMU18JTW2NH', 'Completed', '2024-10-09', NULL, 'All Day', 5, 'Cras convallis convallis dolor. Quisque tincidunt pede ac urna. Ut tincidunt vehicula risus. Nulla eget metus eu erat semper rutrum. Fusce dolor quam, elementum at, egestas a, scelerisque sed, sapien. Nunc pulvinar arcu et pede. Nunc sed orci lobortis augue scelerisque mollis. Phasellus libero mauris, aliquam eu, accumsan sed, facilisis vitae, orci. Phasellus dapibus quam quis diam. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Fusce aliquet magna a neque. Nullam ut nisi a odio semper cursus. Integer mollis. Integer tincidunt aliquam arcu. Aliquam ultrices iaculis', '2024-08-03 22:00:00', '2024-08-28 22:00:00'),
(9, 2, 'consectetuer, cursus et, magna.', 'IEQ04MYX8DX', 'Upcoming', '2025-01-08', NULL, 'All Day', 5, 'ante lectus convallis est, vitae sodales nisi magna sed dui. Fusce aliquam, enim nec tempus scelerisque, lorem ipsum sodales purus, in molestie tortor nibh sit amet orci. Ut sagittis lobortis mauris. Suspendisse aliquet molestie tellus. Aenean egestas hendrerit neque. In ornare sagittis felis. Donec tempor, est ac mattis semper, dui lectus rutrum urna,', '2023-10-01 22:00:00', '2024-08-09 22:00:00'),
(10, 2, 'In at pede. Cras vulputate velit eu', 'NXC30IFF6ZT', 'Completed', '2024-09-03', NULL, 'Half Day', 2, 'tempor diam dictum sapien. Aenean massa. Integer vitae nibh. Donec est mauris, rhoncus id, mollis nec, cursus a, enim. Suspendisse aliquet, sem ut cursus luctus, ipsum leo elementum sem, vitae aliquam eros turpis non', '2025-03-04 22:00:00', '2024-08-07 22:00:00'),
(11, 2, 'turpis nec mauris blandit mattis. Cras eget nisi dictum', 'YIT13OZH9HA', 'Completed', '2025-04-05', NULL, 'All Day', 3, 'et, magna. Praesent interdum ligula eu enim. Etiam imperdiet dictum magna. Ut tincidunt orci quis lectus. Nullam suscipit, est ac facilisis facilisis, magna tellus faucibus leo, in lobortis tellus justo sit amet nulla. Donec non justo. Proin non massa non ante bibendum ullamcorper. Duis cursus, diam at pretium aliquet, metus urna convallis erat, eget tincidunt dui augue eu tellus. Phasellus elit pede, malesuada vel, venenatis vel, faucibus id, libero. Donec consectetuer mauris id sapien. Cras dolor dolor, tempus non, lacinia at, iaculis quis, pede. Praesent eu dui. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Aenean eget magna. Suspendisse tristique neque venenatis lacus. Etiam bibendum fermentum', '2025-04-15 22:00:00', '2024-08-12 22:00:00'),
(12, 2, 'est ac mattis', 'ORL44RBJ2DO', 'Completed', '2025-07-14', NULL, 'To be decided', 8, 'ac metus vitae velit egestas lacinia. Sed congue, elit sed consequat auctor, nunc nulla vulputate dui, nec tempus mauris erat eget ipsum. Suspendisse sagittis. Nullam vitae diam. Proin dolor. Nulla semper tellus id nunc interdum feugiat. Sed nec metus facilisis lorem tristique aliquet. Phasellus fermentum convallis ligula. Donec luctus aliquet odio. Etiam ligula tortor, dictum eu, placerat eget, venenatis a, magna. Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Etiam laoreet,', '2023-10-23 22:00:00', '2024-08-06 22:00:00'),
(13, 2, 'Suspendisse aliquet, sem ut', 'JWG73LDT8IF', 'Upcoming', '2025-06-12', NULL, 'Half Day', 9, 'erat. Sed nunc est, mollis non, cursus non, egestas a,', '2025-04-30 22:00:00', '2024-08-02 22:00:00'),
(14, 2, 'Duis mi enim, condimentum eget,', 'NXS64BMB1ZW', 'Upcoming', '2025-07-18', NULL, 'All Day', 8, 'magnis dis parturient montes, nascetur ridiculus mus. Proin vel nisl. Quisque fringilla euismod enim. Etiam gravida molestie arcu. Sed eu nibh vulputate mauris sagittis placerat. Cras dictum ultricies ligula. Nullam enim. Sed nulla ante, iaculis nec, eleifend non, dapibus rutrum, justo. Praesent luctus. Curabitur egestas nunc sed libero. Proin sed turpis nec mauris blandit mattis. Cras eget nisi dictum augue malesuada malesuada. Integer id', '2024-02-25 22:00:00', '2024-08-27 22:00:00'),
(15, 2, 'cursus. Integer', 'TQD54SJY3UU', 'Completed', '2025-03-14', NULL, 'To be decided', 9, 'iaculis enim, sit amet ornare lectus justo eu arcu. Morbi sit amet massa. Quisque porttitor eros nec tellus. Nunc lectus pede, ultrices a, auctor non, feugiat nec, diam. Duis mi enim, condimentum eget, volutpat ornare, facilisis eget, ipsum. Donec sollicitudin adipiscing ligula. Aenean gravida nunc sed pede. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Proin vel arcu eu odio tristique pharetra. Quisque ac libero nec ligula consectetuer rhoncus. Nullam velit dui, semper et, lacinia vitae, sodales at, velit. Pellentesque ultricies dignissim lacus. Aliquam', '2025-07-13 22:00:00', '2024-08-05 22:00:00'),
(16, 2, 'massa. Vestibulum accumsan neque', 'YML74VHB5DX', 'Completed', '2025-05-30', NULL, 'All Day', 7, 'blandit at, nisi. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Proin vel nisl. Quisque fringilla euismod enim. Etiam gravida molestie arcu. Sed eu nibh vulputate mauris sagittis placerat. Cras dictum ultricies ligula. Nullam enim. Sed nulla ante, iaculis nec, eleifend non, dapibus rutrum, justo. Praesent luctus. Curabitur egestas nunc sed libero. Proin sed turpis nec mauris blandit mattis. Cras eget nisi dictum augue malesuada malesuada. Integer id magna et ipsum cursus vestibulum. Mauris magna. Duis dignissim tempor arcu.', '2023-10-07 22:00:00', '2024-08-05 22:00:00'),
(17, 2, 'ut cursus luctus, ipsum leo elementum', 'PIC94LWR3IM', 'Upcoming', '2024-09-22', NULL, 'Half Day', 7, 'cursus, diam at pretium aliquet, metus urna convallis erat, eget tincidunt dui augue eu tellus. Phasellus elit pede, malesuada vel, venenatis vel, faucibus id, libero. Donec consectetuer mauris id sapien. Cras dolor dolor, tempus non, lacinia at, iaculis quis, pede. Praesent eu dui. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Aenean eget magna. Suspendisse tristique neque venenatis lacus. Etiam bibendum fermentum metus. Aenean sed pede nec ante blandit viverra. Donec tempus, lorem fringilla ornare placerat, orci lacus vestibulum', '2025-08-27 22:00:00', '2024-08-13 22:00:00'),
(18, 2, 'aliquam adipiscing lacus. Ut nec urna et arcu', 'EXT86ENV8XG', 'Upcoming', '2025-01-15', NULL, 'To be decided', 8, 'Phasellus elit pede, malesuada vel, venenatis vel, faucibus id, libero. Donec consectetuer mauris id sapien. Cras dolor dolor, tempus non, lacinia at, iaculis quis, pede. Praesent eu dui. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Aenean eget magna. Suspendisse tristique neque venenatis lacus. Etiam bibendum fermentum metus. Aenean sed pede nec', '2024-11-29 22:00:00', '2024-08-08 22:00:00'),
(19, 2, 'Donec non justo. Proin non massa non', 'XRW27VHT9PC', 'Completed', '2025-05-31', NULL, 'All Day', 3, 'enim, condimentum eget, volutpat ornare, facilisis eget, ipsum. Donec sollicitudin adipiscing ligula. Aenean gravida nunc sed pede. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Proin vel arcu eu odio tristique pharetra. Quisque ac libero nec ligula consectetuer rhoncus. Nullam velit dui, semper et, lacinia vitae, sodales at, velit. Pellentesque ultricies dignissim lacus. Aliquam rutrum lorem ac risus. Morbi metus. Vivamus euismod urna. Nullam lobortis quam a felis ullamcorper viverra. Maecenas iaculis aliquet diam. Sed diam lorem, auctor quis, tristique ac, eleifend vitae, erat.', '2024-07-04 22:00:00', '2024-08-26 22:00:00'),
(20, 2, 'vitae', 'SJY99SKI4DI', 'Completed', '2025-04-24', NULL, 'To be decided', 10, 'Mauris molestie pharetra nibh. Aliquam ornare, libero at auctor ullamcorper, nisl arcu iaculis enim, sit amet ornare lectus justo eu arcu. Morbi sit amet massa. Quisque porttitor eros nec tellus. Nunc lectus pede, ultrices a, auctor non, feugiat nec, diam. Duis mi enim, condimentum eget, volutpat ornare, facilisis eget, ipsum.', '2023-12-27 22:00:00', '2024-08-29 22:00:00'),
(21, 2, 'nec urna et arcu imperdiet ullamcorper. Duis', 'LFI22MXF8YE', 'Upcoming', '2024-09-18', NULL, 'Half Day', 4, 'magna. Cras convallis convallis dolor. Quisque tincidunt pede ac urna. Ut tincidunt vehicula risus. Nulla eget metus eu erat semper rutrum. Fusce dolor quam, elementum at, egestas a, scelerisque sed, sapien. Nunc pulvinar arcu et pede. Nunc sed orci lobortis augue scelerisque mollis. Phasellus libero mauris, aliquam eu, accumsan sed, facilisis vitae, orci. Phasellus dapibus quam quis', '2024-02-25 22:00:00', '2024-08-13 22:00:00'),
(22, 2, 'lorem, vehicula et,', 'NVQ65WMD4IF', 'Completed', '2024-10-31', NULL, 'All Day', 9, 'montes, nascetur ridiculus mus. Donec dignissim magna a tortor. Nunc commodo auctor velit. Aliquam nisl. Nulla eu neque pellentesque massa lobortis ultrices. Vivamus rhoncus. Donec est. Nunc ullamcorper, velit in aliquet lobortis, nisi nibh lacinia orci, consectetuer euismod est arcu ac orci. Ut semper pretium neque. Morbi quis urna. Nunc quis arcu vel quam dignissim pharetra. Nam ac nulla. In tincidunt congue turpis. In condimentum. Donec at arcu. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae Donec tincidunt. Donec vitae erat vel pede blandit congue. In scelerisque scelerisque dui. Suspendisse ac metus vitae velit egestas lacinia. Sed', '2024-12-01 22:00:00', '2024-08-24 22:00:00'),
(23, 2, 'faucibus leo, in', 'YEY82YBT5NY', 'Upcoming', '2025-01-06', NULL, 'Half Day', 4, 'lorem, auctor quis, tristique ac, eleifend vitae, erat. Vivamus nisi. Mauris nulla. Integer urna. Vivamus molestie dapibus ligula. Aliquam erat volutpat. Nulla dignissim. Maecenas ornare egestas ligula. Nullam feugiat placerat velit. Quisque varius. Nam porttitor scelerisque neque. Nullam nisl. Maecenas malesuada fringilla est. Mauris eu turpis. Nulla aliquet. Proin velit. Sed malesuada augue ut lacus. Nulla tincidunt, neque vitae semper', '2025-05-01 22:00:00', '2024-08-17 22:00:00'),
(24, 2, 'rutrum', 'TJN03BGH5NG', 'Completed', '2025-05-29', NULL, 'Half Day', 6, 'semper auctor. Mauris vel turpis. Aliquam adipiscing lobortis risus. In mi pede, nonummy ut, molestie in, tempus eu, ligula. Aenean euismod mauris eu elit. Nulla facilisi. Sed neque. Sed eget lacus. Mauris non dui nec urna suscipit nonummy. Fusce fermentum fermentum arcu. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae Phasellus ornare. Fusce mollis. Duis sit amet diam eu dolor', '2024-10-16 22:00:00', '2024-08-05 22:00:00'),
(25, 2, 'nulla. Integer vulputate, risus a ultricies adipiscing,', 'CKM35OIB1PE', 'Upcoming', '2024-12-23', NULL, 'To be decided', 3, 'mauris a nunc. In at pede. Cras vulputate velit eu sem. Pellentesque ut ipsum ac mi eleifend egestas. Sed pharetra, felis eget varius ultrices, mauris ipsum porta elit, a feugiat tellus lorem eu metus.', '2024-07-09 22:00:00', '2024-08-22 22:00:00'),
(26, 2, 'gravida nunc sed pede.', 'RIK19EIA9TS', 'Completed', '2024-09-09', NULL, 'All Day', 10, 'vulputate, lacus. Cras', '2024-05-09 22:00:00', '2024-08-29 22:00:00'),
(27, 2, 'cursus luctus, ipsum leo elementum sem, vitae aliquam eros', 'SVX77JFR8KA', 'Upcoming', '2024-11-12', NULL, 'All Day', 2, 'Nunc mauris sapien, cursus in, hendrerit consectetuer, cursus et, magna. Praesent interdum ligula eu enim. Etiam imperdiet dictum magna. Ut tincidunt orci quis lectus. Nullam suscipit, est ac facilisis facilisis, magna tellus faucibus leo, in lobortis tellus justo sit amet nulla. Donec non justo. Proin non massa non ante bibendum ullamcorper. Duis cursus, diam at pretium aliquet, metus urna', '2024-01-29 22:00:00', '2024-08-03 22:00:00'),
(28, 2, 'eget odio. Aliquam vulputate ullamcorper magna.', 'WRX51VOC4AT', 'Upcoming', '2025-06-03', NULL, 'Half Day', 2, 'Cras lorem lorem, luctus ut, pellentesque eget, dictum placerat, augue. Sed molestie. Sed id risus quis diam luctus lobortis. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos hymenaeos. Mauris ut quam', '2024-01-04 22:00:00', '2024-08-01 22:00:00'),
(29, 2, 'purus sapien, gravida non, sollicitudin', 'DEU79RNC3VY', 'Completed', '2025-01-14', NULL, 'All Day', 11, 'placerat, augue. Sed molestie. Sed id', '2024-09-11 22:00:00', '2024-08-25 22:00:00'),
(30, 2, 'massa', 'IFF21VHN4FY', 'Completed', '2025-03-21', NULL, 'All Day', 2, 'odio tristique pharetra. Quisque ac libero nec ligula consectetuer rhoncus. Nullam velit dui, semper et, lacinia vitae, sodales at, velit. Pellentesque ultricies dignissim', '2025-06-20 22:00:00', '2024-08-25 22:00:00'),
(31, 2, 'erat vel pede blandit congue. In scelerisque scelerisque dui.', 'EBG72YYO3IN', 'Upcoming', '2025-05-22', NULL, 'Half Day', 6, 'amet ultricies sem magna nec quam. Curabitur vel lectus. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec dignissim magna a tortor. Nunc commodo auctor velit. Aliquam nisl. Nulla eu neque pellentesque massa lobortis ultrices. Vivamus rhoncus. Donec est. Nunc ullamcorper, velit in aliquet lobortis, nisi nibh lacinia orci, consectetuer euismod est arcu ac orci. Ut semper pretium neque. Morbi quis urna. Nunc quis arcu vel quam dignissim pharetra. Nam ac nulla. In tincidunt congue turpis. In condimentum. Donec at arcu. Vestibulum ante ipsum primis in faucibus orci luctus et', '2025-07-22 22:00:00', '2024-08-24 22:00:00'),
(32, 2, 'eu dolor egestas rhoncus. Proin', 'UVT02VUM1KH', 'Completed', '2025-06-06', NULL, 'All Day', 12, 'dictum eu, eleifend nec, malesuada ut, sem. Nulla interdum. Curabitur dictum. Phasellus in felis. Nulla tempor augue ac ipsum. Phasellus vitae mauris sit amet lorem semper auctor. Mauris vel turpis. Aliquam adipiscing lobortis risus. In mi pede, nonummy ut, molestie in, tempus eu, ligula. Aenean euismod mauris eu elit. Nulla facilisi. Sed neque. Sed eget lacus. Mauris non dui nec urna suscipit nonummy. Fusce fermentum fermentum arcu. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae Phasellus ornare. Fusce mollis. Duis sit amet diam eu dolor egestas rhoncus. Proin nisl sem, consequat nec, mollis vitae, posuere at, velit. Cras lorem lorem, luctus ut, pellentesque eget, dictum placerat, augue.', '2025-06-10 22:00:00', '2024-08-18 22:00:00'),
(33, 2, 'arcu. Vestibulum ante ipsum primis', 'GHY05VEE6II', 'Completed', '2025-07-26', NULL, 'To be decided', 12, 'ipsum non arcu. Vivamus sit amet risus. Donec egestas. Aliquam nec enim. Nunc ut', '2025-08-25 22:00:00', '2024-08-18 22:00:00'),
(34, 2, 'Nunc ac sem ut dolor dapibus gravida. Aliquam tincidunt, nunc', 'MBM44RSY8EH', 'Upcoming', '2025-07-18', NULL, 'Half Day', 8, 'Donec non justo. Proin non massa non ante bibendum ullamcorper. Duis cursus, diam at pretium aliquet, metus urna convallis erat, eget tincidunt dui augue eu tellus. Phasellus elit pede, malesuada vel, venenatis vel, faucibus id, libero. Donec consectetuer mauris id sapien. Cras dolor', '2025-03-02 22:00:00', '2024-08-20 22:00:00'),
(35, 2, 'pharetra. Nam ac nulla. In', 'LDE24AYP8PJ', 'Completed', '2024-09-14', NULL, 'All Day', 5, 'elementum sem, vitae aliquam eros turpis non enim. Mauris quis turpis vitae purus gravida sagittis. Duis gravida. Praesent eu nulla at sem molestie sodales. Mauris blandit enim consequat purus. Maecenas libero est, congue a, aliquet vel, vulputate eu, odio. Phasellus at augue id ante dictum cursus. Nunc mauris elit, dictum eu, eleifend nec, malesuada ut, sem. Nulla interdum. Curabitur dictum. Phasellus in felis. Nulla tempor augue ac ipsum. Phasellus vitae mauris sit amet lorem semper auctor.', '2024-07-23 22:00:00', '2024-08-19 22:00:00'),
(36, 2, 'elementum sem, vitae aliquam eros', 'LMI40PTS9RI', 'Upcoming', '2025-08-07', NULL, 'Half Day', 6, 'molestie in, tempus eu, ligula. Aenean euismod mauris eu elit. Nulla facilisi. Sed neque. Sed eget lacus. Mauris non dui nec urna suscipit nonummy. Fusce fermentum fermentum arcu. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae Phasellus ornare. Fusce mollis. Duis sit amet diam eu dolor egestas rhoncus. Proin nisl sem, consequat nec, mollis vitae, posuere at, velit. Cras lorem lorem, luctus ut, pellentesque eget, dictum placerat, augue. Sed molestie. Sed id risus quis', '2025-03-05 22:00:00', '2024-08-03 22:00:00'),
(37, 2, 'pede. Cum sociis natoque penatibus et magnis dis parturient', 'NSW85HDS4MC', 'Completed', '2024-10-05', NULL, 'To be decided', 7, 'nulla. Cras eu tellus eu augue porttitor interdum. Sed auctor odio a purus. Duis elementum, dui quis accumsan convallis, ante lectus convallis est, vitae sodales nisi magna sed dui. Fusce aliquam, enim nec tempus scelerisque, lorem ipsum sodales purus, in molestie tortor nibh sit amet orci. Ut sagittis lobortis mauris. Suspendisse aliquet molestie tellus. Aenean egestas hendrerit neque. In ornare sagittis felis. Donec tempor, est ac mattis semper,', '2024-06-22 22:00:00', '2024-08-26 22:00:00'),
(38, 2, 'massa. Vestibulum accumsan neque et nunc. Quisque ornare tortor at', 'HNC70AMN3IO', 'Completed', '2025-02-08', NULL, 'To be decided', 4, 'ut dolor dapibus gravida. Aliquam tincidunt, nunc ac mattis ornare, lectus ante dictum mi, ac mattis velit justo nec ante. Maecenas mi felis, adipiscing fringilla, porttitor vulputate, posuere vulputate, lacus. Cras interdum. Nunc sollicitudin commodo ipsum. Suspendisse non leo.', '2025-05-27 22:00:00', '2024-08-01 22:00:00'),
(39, 2, 'luctus felis purus ac', 'CUT95RLO8KY', 'Completed', '2025-03-18', NULL, 'Half Day', 4, 'nunc. Quisque ornare tortor at risus. Nunc ac sem ut dolor dapibus gravida. Aliquam tincidunt, nunc', '2024-03-01 22:00:00', '2024-08-10 22:00:00'),
(40, 2, 'Donec vitae', 'VGO78PPE6YJ', 'Upcoming', '2024-10-27', NULL, 'Half Day', 2, 'Donec tincidunt. Donec vitae erat vel pede blandit congue. In scelerisque scelerisque dui. Suspendisse ac metus vitae velit egestas lacinia. Sed congue, elit sed consequat auctor, nunc nulla vulputate dui,', '2025-01-02 22:00:00', '2024-08-14 22:00:00'),
(41, 2, 'dolor, tempus non, lacinia', 'RMJ41YOX5CP', 'Upcoming', '2025-01-05', NULL, 'All Day', 9, 'ultricies ligula. Nullam enim. Sed nulla ante, iaculis nec, eleifend non, dapibus rutrum, justo. Praesent luctus. Curabitur egestas nunc sed libero. Proin sed turpis nec mauris blandit mattis. Cras eget nisi dictum augue malesuada malesuada. Integer id magna et ipsum cursus vestibulum. Mauris magna. Duis dignissim tempor arcu. Vestibulum ut eros non enim commodo hendrerit. Donec porttitor tellus non magna. Nam ligula elit, pretium et, rutrum non, hendrerit id, ante. Nunc mauris sapien, cursus in, hendrerit consectetuer, cursus et, magna. Praesent interdum ligula eu enim. Etiam imperdiet dictum magna. Ut tincidunt orci quis lectus. Nullam suscipit, est ac facilisis facilisis, magna tellus faucibus leo, in lobortis tellus justo sit amet nulla. Donec non justo. Proin', '2025-07-24 22:00:00', '2024-08-05 22:00:00'),
(42, 2, 'eget varius ultrices, mauris ipsum porta elit,', 'IXL58PDB6WC', 'Completed', '2025-05-24', NULL, 'All Day', 12, 'Aliquam ornare, libero at auctor ullamcorper, nisl arcu iaculis enim, sit amet ornare lectus justo', '2024-01-05 22:00:00', '2024-08-25 22:00:00'),
(43, 2, 'lectus ante dictum mi, ac mattis velit justo', 'DLC95VZG3EM', 'Upcoming', '2024-12-05', NULL, 'Half Day', 11, 'penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec dignissim magna a tortor. Nunc commodo auctor velit. Aliquam nisl. Nulla eu neque pellentesque massa lobortis ultrices. Vivamus rhoncus. Donec est. Nunc ullamcorper, velit in aliquet lobortis, nisi nibh lacinia orci, consectetuer euismod est arcu ac orci. Ut semper pretium neque. Morbi quis urna. Nunc quis arcu vel quam dignissim pharetra. Nam ac nulla. In tincidunt congue turpis. In condimentum. Donec at arcu. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae Donec tincidunt. Donec vitae erat vel pede blandit congue. In scelerisque scelerisque dui. Suspendisse ac metus vitae velit egestas lacinia. Sed congue, elit', '2024-06-26 22:00:00', '2024-08-04 22:00:00'),
(44, 2, 'massa. Vestibulum accumsan neque et nunc. Quisque', 'KJF82BWI6NH', 'Completed', '2025-05-15', NULL, 'Half Day', 10, 'egestas blandit. Nam nulla magna, malesuada vel, convallis in, cursus et, eros. Proin ultrices. Duis volutpat nunc sit amet metus. Aliquam erat volutpat. Nulla facilisis. Suspendisse commodo tincidunt nibh. Phasellus nulla. Integer vulputate, risus a ultricies adipiscing, enim mi tempor lorem, eget mollis lectus pede et risus. Quisque libero lacus, varius et, euismod et, commodo at, libero. Morbi accumsan', '2025-02-14 22:00:00', '2024-08-01 22:00:00'),
(45, 2, 'lobortis quis, pede. Suspendisse dui.', 'PHL65CFN6VX', 'Completed', '2025-03-30', NULL, 'To be decided', 3, 'Phasellus at augue id ante dictum cursus. Nunc mauris elit, dictum eu, eleifend nec, malesuada ut, sem. Nulla interdum. Curabitur dictum. Phasellus in felis. Nulla tempor augue ac ipsum. Phasellus vitae mauris sit amet lorem semper auctor. Mauris vel turpis. Aliquam adipiscing lobortis', '2024-06-23 22:00:00', '2024-08-27 22:00:00'),
(46, 2, 'ante. Nunc', 'TGJ29PLE2QI', 'Upcoming', '2025-04-20', NULL, 'All Day', 7, 'enim. Nunc ut erat. Sed nunc est, mollis non, cursus non, egestas a, dui. Cras pellentesque. Sed dictum. Proin eget odio. Aliquam vulputate ullamcorper magna. Sed eu eros. Nam', '2024-07-28 22:00:00', '2024-08-04 22:00:00'),
(47, 2, 'Cras vulputate velit eu sem. Pellentesque ut ipsum ac', 'XBY57VGH9AD', 'Upcoming', '2025-03-05', NULL, 'To be decided', 3, 'a, auctor non, feugiat nec, diam. Duis mi enim, condimentum eget, volutpat ornare, facilisis eget, ipsum. Donec sollicitudin adipiscing ligula.', '2025-01-11 22:00:00', '2024-08-28 22:00:00'),
(48, 2, 'ut ipsum ac mi eleifend', 'KDR65JEQ1DO', 'Completed', '2024-09-04', NULL, 'All Day', 11, 'tempor bibendum. Donec felis orci, adipiscing non, luctus sit amet, faucibus ut, nulla. Cras eu tellus eu augue porttitor interdum. Sed auctor odio a purus. Duis elementum, dui quis accumsan convallis, ante lectus convallis est, vitae sodales nisi magna sed dui. Fusce aliquam, enim nec tempus scelerisque, lorem ipsum sodales purus, in molestie tortor nibh sit amet orci. Ut sagittis lobortis mauris. Suspendisse aliquet molestie tellus. Aenean egestas hendrerit neque. In ornare sagittis felis. Donec tempor, est ac mattis semper, dui lectus rutrum urna, nec luctus felis purus ac tellus. Suspendisse sed dolor. Fusce mi lorem,', '2024-11-12 22:00:00', '2024-08-02 22:00:00'),
(49, 2, 'interdum enim non nisi. Aenean eget metus. In nec', 'AQY48IBV3RK', 'Upcoming', '2025-01-27', NULL, 'To be decided', 5, 'nunc interdum feugiat. Sed nec metus facilisis lorem tristique aliquet. Phasellus fermentum convallis ligula. Donec luctus aliquet odio. Etiam ligula tortor, dictum eu, placerat eget, venenatis a, magna. Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Etiam laoreet, libero et tristique pellentesque, tellus sem mollis dui, in sodales elit erat vitae risus. Duis a mi', '2025-03-12 22:00:00', '2024-08-20 22:00:00'),
(50, 2, 'mattis. Cras eget nisi dictum augue malesuada malesuada. Integer', 'OUR76JPO9PQ', 'Upcoming', '2025-02-05', NULL, 'To be decided', 2, 'id, blandit at, nisi. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Proin vel nisl. Quisque fringilla euismod enim. Etiam gravida molestie arcu. Sed eu nibh vulputate mauris sagittis placerat. Cras dictum ultricies ligula. Nullam enim. Sed nulla ante, iaculis nec, eleifend non, dapibus rutrum, justo. Praesent luctus. Curabitur egestas nunc sed libero. Proin sed turpis nec mauris blandit mattis. Cras eget nisi dictum augue malesuada malesuada. Integer id magna et ipsum cursus vestibulum. Mauris magna. Duis dignissim tempor arcu. Vestibulum ut eros non enim commodo', '2024-06-23 22:00:00', '2024-08-06 22:00:00'),
(51, 2, 'ante. Vivamus non lorem vitae odio sagittis semper. Nam', 'CXT87RHF3IO', 'Completed', '2025-04-10', NULL, 'All Day', 1, 'lectus quis massa. Mauris vestibulum, neque sed dictum eleifend, nunc risus varius orci, in consequat enim diam vel arcu. Curabitur ut odio vel est tempor bibendum. Donec felis orci, adipiscing non, luctus sit amet, faucibus ut, nulla. Cras eu tellus eu augue porttitor interdum. Sed auctor odio a purus. Duis elementum, dui quis accumsan convallis, ante lectus convallis est, vitae sodales nisi magna sed dui. Fusce aliquam, enim nec tempus scelerisque, lorem ipsum sodales purus, in molestie tortor nibh sit amet orci. Ut sagittis lobortis mauris. Suspendisse aliquet molestie tellus. Aenean egestas hendrerit neque. In ornare sagittis felis. Donec tempor, est ac mattis semper, dui lectus rutrum urna,', '2025-03-30 22:00:00', '2024-08-23 22:00:00'),
(52, 2, 'et ipsum', 'CUL42ODZ3IB', 'Completed', '2024-12-25', NULL, 'To be decided', 5, 'nec, malesuada ut, sem. Nulla interdum. Curabitur dictum. Phasellus in felis. Nulla tempor augue ac ipsum. Phasellus vitae mauris sit amet lorem semper auctor. Mauris vel turpis. Aliquam adipiscing lobortis risus. In mi pede, nonummy ut, molestie in, tempus eu, ligula. Aenean euismod mauris eu elit. Nulla facilisi. Sed neque. Sed eget lacus. Mauris non dui nec urna suscipit nonummy. Fusce fermentum fermentum arcu. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia', '2024-05-19 22:00:00', '2024-08-12 22:00:00'),
(53, 2, 'metus urna convallis erat, eget tincidunt', 'RWP12STJ8SU', 'Completed', '2025-04-23', NULL, 'Half Day', 7, 'mollis lectus pede et risus. Quisque libero lacus,', '2024-05-06 22:00:00', '2024-08-22 22:00:00'),
(54, 2, 'scelerisque neque. Nullam nisl. Maecenas', 'KWG42MME3YM', 'Upcoming', '2024-12-02', NULL, 'To be decided', 10, 'tristique aliquet. Phasellus fermentum convallis ligula. Donec luctus aliquet odio. Etiam ligula tortor, dictum eu, placerat eget, venenatis a, magna. Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Etiam laoreet, libero et tristique', '2024-07-04 22:00:00', '2024-08-25 22:00:00'),
(55, 2, 'id, libero. Donec consectetuer mauris id', 'OIU53DSP5DT', 'Upcoming', '2025-06-11', NULL, 'All Day', 5, 'Cras convallis convallis dolor. Quisque tincidunt pede ac urna. Ut tincidunt vehicula risus. Nulla eget metus eu erat semper rutrum. Fusce dolor quam, elementum at, egestas a, scelerisque sed, sapien. Nunc pulvinar arcu et pede. Nunc sed orci lobortis augue scelerisque mollis. Phasellus libero mauris, aliquam eu, accumsan sed, facilisis vitae, orci. Phasellus dapibus quam quis diam. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Fusce aliquet magna a neque. Nullam ut nisi a odio semper cursus. Integer mollis. Integer tincidunt aliquam arcu. Aliquam ultrices iaculis odio. Nam', '2024-12-31 22:00:00', '2024-08-18 22:00:00'),
(56, 2, 'molestie pharetra nibh. Aliquam', 'AHZ64FFB7RP', 'Completed', '2025-09-14', NULL, 'Half Day', 2, 'eget odio. Aliquam vulputate ullamcorper magna. Sed eu eros. Nam consequat dolor vitae dolor. Donec fringilla. Donec feugiat metus sit amet ante. Vivamus non lorem vitae odio sagittis semper. Nam tempor diam dictum sapien. Aenean massa. Integer vitae nibh. Donec est mauris, rhoncus id, mollis nec, cursus a, enim. Suspendisse aliquet, sem ut cursus luctus, ipsum leo elementum sem, vitae aliquam eros turpis non enim. Mauris quis turpis vitae purus gravida sagittis. Duis gravida. Praesent eu nulla at sem molestie sodales. Mauris blandit enim consequat purus. Maecenas libero est, congue a, aliquet vel, vulputate eu, odio. Phasellus at augue id ante dictum cursus. Nunc mauris elit, dictum eu, eleifend nec, malesuada ut, sem. Nulla interdum.', '2023-10-22 22:00:00', '2024-08-31 22:00:00'),
(57, 2, 'Fusce aliquet magna a neque. Nullam ut nisi', 'SDZ51QKM1AR', 'Completed', '2025-06-29', NULL, 'Half Day', 11, 'ligula. Donec luctus aliquet odio. Etiam ligula tortor, dictum eu, placerat eget, venenatis a, magna. Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Etiam laoreet, libero et tristique pellentesque, tellus sem mollis dui, in sodales elit erat vitae risus. Duis a mi fringilla mi lacinia mattis. Integer eu lacus. Quisque imperdiet, erat nonummy ultricies', '2024-11-15 22:00:00', '2024-08-18 22:00:00'),
(58, 2, 'vel pede blandit congue. In scelerisque', 'OMF06ZKO1VS', 'Completed', '2024-10-11', NULL, 'To be decided', 10, 'eget varius ultrices, mauris ipsum porta elit, a feugiat tellus lorem eu metus. In lorem. Donec elementum, lorem ut aliquam iaculis, lacus pede sagittis augue, eu tempor erat neque non quam. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Aliquam fringilla cursus purus. Nullam scelerisque neque sed sem egestas blandit. Nam nulla magna, malesuada vel, convallis in, cursus et, eros. Proin ultrices. Duis volutpat nunc sit amet metus. Aliquam erat volutpat. Nulla facilisis. Suspendisse commodo tincidunt nibh. Phasellus nulla. Integer vulputate,', '2024-05-26 22:00:00', '2024-08-17 22:00:00'),
(59, 2, 'Sed pharetra, felis eget varius ultrices, mauris', 'ZXW31CUX2SV', 'Upcoming', '2025-08-05', NULL, 'To be decided', 8, 'at, velit. Cras lorem lorem, luctus ut, pellentesque eget, dictum placerat, augue. Sed', '2024-11-06 22:00:00', '2024-08-18 22:00:00'),
(60, 2, 'convallis in, cursus et, eros. Proin ultrices.', 'RYC18OGL0OC', 'Upcoming', '2024-09-15', NULL, 'All Day', 6, 'Nullam scelerisque neque sed sem egestas blandit. Nam nulla magna, malesuada vel, convallis in, cursus et, eros. Proin ultrices. Duis volutpat nunc sit amet metus. Aliquam erat volutpat. Nulla facilisis. Suspendisse commodo tincidunt nibh. Phasellus nulla. Integer vulputate, risus a ultricies adipiscing, enim mi tempor lorem, eget mollis lectus pede et risus. Quisque libero lacus, varius et, euismod et, commodo at, libero. Morbi accumsan laoreet ipsum. Curabitur consequat, lectus sit amet luctus vulputate, nisi sem', '2024-09-13 22:00:00', '2024-08-22 22:00:00'),
(61, 2, 'interdum. Curabitur', 'NFD81LIV6LL', 'Upcoming', '2025-02-01', NULL, 'All Day', 4, 'auctor velit. Aliquam nisl. Nulla eu neque pellentesque massa lobortis ultrices. Vivamus rhoncus. Donec est. Nunc ullamcorper, velit in aliquet lobortis, nisi nibh lacinia orci, consectetuer euismod est arcu ac orci. Ut semper pretium neque. Morbi quis urna. Nunc quis arcu vel quam dignissim pharetra. Nam ac nulla. In tincidunt congue turpis. In condimentum. Donec at arcu. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae Donec tincidunt. Donec vitae erat vel pede blandit congue. In scelerisque scelerisque dui. Suspendisse ac metus vitae velit egestas lacinia. Sed congue, elit sed consequat auctor, nunc nulla vulputate dui, nec', '2024-07-28 22:00:00', '2024-08-07 22:00:00'),
(62, 2, 'nascetur ridiculus mus. Donec', 'REW77GMU3KJ', 'Upcoming', '2025-02-07', NULL, 'All Day', 10, 'malesuada fames ac turpis egestas. Fusce aliquet magna a neque. Nullam ut nisi a odio semper cursus. Integer mollis. Integer tincidunt aliquam arcu. Aliquam ultrices iaculis odio. Nam interdum enim non', '2024-07-30 22:00:00', '2024-08-08 22:00:00'),
(63, 2, 'nec urna suscipit nonummy. Fusce fermentum fermentum arcu. Vestibulum', 'JTE73ENM3LF', 'Upcoming', '2025-06-14', NULL, 'To be decided', 2, 'enim commodo hendrerit. Donec porttitor tellus non magna. Nam ligula elit, pretium et, rutrum non, hendrerit id, ante. Nunc mauris sapien, cursus in, hendrerit consectetuer, cursus et, magna. Praesent interdum ligula eu enim. Etiam imperdiet dictum magna. Ut tincidunt orci quis lectus. Nullam suscipit, est ac facilisis facilisis, magna tellus faucibus leo, in lobortis tellus justo sit amet nulla. Donec non justo. Proin non massa non ante bibendum ullamcorper. Duis cursus, diam at pretium aliquet, metus urna convallis erat, eget tincidunt dui augue eu tellus. Phasellus elit pede, malesuada vel, venenatis vel, faucibus id,', '2024-03-19 22:00:00', '2024-08-26 22:00:00'),
(64, 2, 'vitae, orci. Phasellus dapibus quam quis', 'VGN24MWY7HK', 'Upcoming', '2025-04-07', NULL, 'To be decided', 11, 'cursus. Integer mollis. Integer tincidunt aliquam arcu. Aliquam ultrices iaculis odio. Nam interdum enim non nisi. Aenean eget metus. In nec orci. Donec nibh. Quisque nonummy ipsum non arcu. Vivamus sit amet risus. Donec egestas. Aliquam nec enim. Nunc ut erat. Sed nunc est, mollis non, cursus non, egestas a, dui. Cras pellentesque. Sed dictum. Proin eget odio. Aliquam vulputate ullamcorper magna. Sed eu eros. Nam consequat dolor vitae dolor. Donec fringilla. Donec feugiat metus sit amet ante. Vivamus non lorem vitae', '2024-03-20 22:00:00', '2024-08-14 22:00:00'),
(65, 2, 'aliquet', 'GGC18ARB6XI', 'Completed', '2025-06-13', NULL, 'Half Day', 8, 'id risus quis diam luctus lobortis. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos hymenaeos. Mauris ut quam vel sapien imperdiet ornare. In faucibus. Morbi vehicula. Pellentesque tincidunt tempus risus. Donec egestas. Duis ac arcu. Nunc mauris. Morbi non sapien molestie orci tincidunt adipiscing. Mauris molestie pharetra nibh. Aliquam ornare, libero at auctor ullamcorper, nisl arcu iaculis enim, sit amet ornare lectus justo eu arcu. Morbi sit amet massa. Quisque porttitor eros nec tellus. Nunc lectus pede, ultrices a, auctor non, feugiat nec, diam. Duis mi enim, condimentum eget, volutpat ornare, facilisis', '2024-03-08 22:00:00', '2024-08-29 22:00:00'),
(66, 2, 'Nullam enim. Sed nulla ante, iaculis nec,', 'ROD68OMN9UF', 'Upcoming', '2025-09-14', NULL, 'To be decided', 6, 'hendrerit. Donec porttitor tellus non magna. Nam ligula elit, pretium et, rutrum non, hendrerit id, ante. Nunc mauris sapien, cursus in, hendrerit consectetuer, cursus et, magna. Praesent interdum ligula eu enim. Etiam imperdiet dictum magna. Ut tincidunt orci quis lectus. Nullam suscipit, est ac facilisis facilisis, magna tellus faucibus leo, in lobortis tellus justo sit amet nulla. Donec non justo. Proin non massa non ante bibendum ullamcorper. Duis cursus, diam at pretium aliquet, metus urna convallis erat, eget tincidunt dui augue eu tellus. Phasellus elit pede, malesuada vel, venenatis vel, faucibus id, libero. Donec consectetuer mauris id sapien. Cras dolor dolor, tempus non, lacinia at, iaculis quis, pede.', '2025-07-03 22:00:00', '2024-08-29 22:00:00'),
(67, 2, 'convallis', 'KHX54ZRT4PI', 'Upcoming', '2025-09-19', NULL, 'All Day', 6, 'sem ut dolor dapibus gravida. Aliquam tincidunt, nunc ac mattis ornare, lectus ante dictum mi, ac mattis velit justo nec ante. Maecenas mi felis, adipiscing fringilla, porttitor vulputate, posuere vulputate, lacus. Cras interdum. Nunc sollicitudin commodo ipsum. Suspendisse non leo. Vivamus nibh dolor, nonummy ac, feugiat non, lobortis quis, pede. Suspendisse dui. Fusce diam nunc, ullamcorper eu, euismod ac, fermentum vel, mauris. Integer sem elit, pharetra ut, pharetra sed, hendrerit a, arcu. Sed et libero. Proin mi. Aliquam gravida mauris ut mi. Duis risus odio, auctor vitae, aliquet nec, imperdiet nec, leo. Morbi neque tellus, imperdiet non, vestibulum nec, euismod in, dolor. Fusce feugiat. Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aliquam auctor, velit eget', '2024-04-18 22:00:00', '2024-08-04 22:00:00'),
(68, 2, 'gravida mauris ut mi. Duis', 'CJD53CRX5ON', 'Upcoming', '2025-03-31', NULL, 'Half Day', 7, 'cursus, diam at pretium aliquet, metus urna convallis erat, eget tincidunt dui augue eu tellus. Phasellus elit pede, malesuada vel, venenatis vel, faucibus id, libero. Donec consectetuer mauris id sapien. Cras dolor dolor, tempus non, lacinia at, iaculis quis, pede. Praesent eu dui. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Aenean eget magna. Suspendisse tristique neque venenatis lacus. Etiam bibendum fermentum metus. Aenean sed pede nec', '2025-01-02 22:00:00', '2024-08-21 22:00:00'),
(69, 2, 'Duis ac arcu. Nunc mauris. Morbi', 'VMY95WHW9XY', 'Upcoming', '2024-11-29', NULL, 'All Day', 11, 'purus ac tellus. Suspendisse sed dolor. Fusce mi lorem, vehicula et, rutrum eu, ultrices sit amet, risus. Donec nibh enim, gravida sit amet, dapibus id, blandit at, nisi. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Proin vel nisl. Quisque fringilla euismod enim.', '2024-03-19 22:00:00', '2024-08-02 22:00:00'),
(70, 2, 'vitae diam. Proin dolor. Nulla semper tellus', 'TGK27DYX9BX', 'Upcoming', '2024-11-08', NULL, 'All Day', 4, 'sem. Pellentesque ut ipsum ac mi eleifend egestas. Sed pharetra, felis eget varius ultrices, mauris ipsum porta elit, a feugiat tellus lorem eu metus. In lorem. Donec elementum, lorem ut aliquam iaculis, lacus pede sagittis', '2023-11-08 22:00:00', '2024-08-18 22:00:00'),
(71, 2, 'arcu. Sed eu nibh vulputate mauris sagittis placerat. Cras', 'UZE45GFI4FU', 'Completed', '2025-04-28', NULL, 'All Day', 11, 'vel arcu eu odio tristique pharetra. Quisque ac libero nec ligula consectetuer rhoncus. Nullam velit dui, semper et, lacinia vitae, sodales at, velit. Pellentesque ultricies dignissim lacus. Aliquam rutrum lorem ac risus. Morbi metus. Vivamus euismod urna. Nullam lobortis quam a felis ullamcorper viverra. Maecenas iaculis aliquet diam. Sed diam lorem, auctor quis, tristique ac, eleifend vitae, erat. Vivamus nisi. Mauris nulla. Integer urna. Vivamus molestie dapibus ligula. Aliquam erat volutpat. Nulla dignissim. Maecenas ornare', '2024-08-20 22:00:00', '2024-08-31 22:00:00'),
(72, 2, 'Quisque porttitor eros', 'GHG62IOX8VD', 'Upcoming', '2025-03-26', NULL, 'To be decided', 9, 'accumsan sed, facilisis vitae, orci. Phasellus dapibus quam quis diam. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Fusce aliquet magna a neque. Nullam ut nisi a odio semper cursus. Integer mollis. Integer tincidunt aliquam arcu. Aliquam ultrices iaculis odio. Nam interdum enim non nisi. Aenean eget metus. In nec orci. Donec nibh. Quisque nonummy ipsum non arcu. Vivamus sit amet risus. Donec egestas. Aliquam nec enim. Nunc ut erat. Sed nunc est, mollis non, cursus non, egestas a, dui. Cras pellentesque. Sed dictum. Proin eget odio. Aliquam vulputate ullamcorper magna. Sed eu eros. Nam consequat dolor vitae dolor. Donec fringilla. Donec feugiat metus sit amet ante. Vivamus non lorem vitae odio', '2023-11-14 22:00:00', '2024-08-16 22:00:00'),
(73, 2, 'in consequat enim diam vel arcu. Curabitur ut odio vel', 'EIN71JRH6XM', 'Completed', '2025-05-08', NULL, 'To be decided', 2, 'massa. Integer vitae nibh. Donec est mauris, rhoncus', '2024-11-02 22:00:00', '2024-08-10 22:00:00'),
(74, 2, 'ligula elit, pretium et, rutrum non, hendrerit id, ante.', 'GDN41HWZ8LW', 'Completed', '2024-10-20', NULL, 'All Day', 3, 'Sed dictum. Proin eget odio. Aliquam vulputate ullamcorper magna. Sed eu eros. Nam consequat dolor vitae dolor. Donec fringilla. Donec feugiat metus sit amet ante. Vivamus non lorem vitae odio sagittis semper. Nam tempor diam dictum sapien. Aenean massa. Integer vitae nibh. Donec est mauris, rhoncus id, mollis nec, cursus a, enim. Suspendisse aliquet, sem ut cursus luctus, ipsum leo elementum sem, vitae aliquam eros turpis non enim. Mauris quis turpis vitae purus gravida sagittis. Duis gravida. Praesent eu nulla at sem molestie sodales. Mauris blandit enim consequat purus. Maecenas libero est, congue a, aliquet vel, vulputate eu, odio. Phasellus at augue id ante dictum cursus. Nunc mauris elit, dictum eu, eleifend nec, malesuada', '2025-01-31 22:00:00', '2024-08-18 22:00:00'),
(75, 2, 'pede ac urna.', 'SNQ32ERF6XQ', 'Completed', '2025-02-24', NULL, 'Half Day', 3, 'enim, condimentum eget, volutpat ornare, facilisis eget, ipsum. Donec sollicitudin adipiscing ligula. Aenean gravida nunc sed pede. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Proin vel arcu eu odio tristique pharetra. Quisque ac libero nec ligula consectetuer rhoncus. Nullam velit dui, semper et, lacinia vitae, sodales at, velit. Pellentesque ultricies', '2023-11-25 22:00:00', '2024-08-24 22:00:00'),
(76, 2, 'eu dui. Cum sociis natoque penatibus et magnis', 'TAV43QCY1TY', 'Completed', '2025-09-18', NULL, 'Half Day', 6, 'adipiscing ligula. Aenean gravida nunc sed pede. Cum sociis', '2025-02-28 22:00:00', '2024-07-30 22:00:00'),
(77, 2, 'luctus et ultrices posuere cubilia Curae Phasellus ornare. Fusce mollis.', 'VNV29MAC4YM', 'Upcoming', '2025-06-13', NULL, 'To be decided', 1, 'eleifend egestas. Sed pharetra, felis eget varius ultrices, mauris ipsum porta elit, a feugiat tellus lorem eu metus. In lorem. Donec elementum, lorem ut aliquam iaculis, lacus pede sagittis augue, eu tempor erat neque non quam.', '2025-02-18 22:00:00', '2024-08-29 22:00:00'),
(78, 2, 'semper erat, in consectetuer', 'ZIU64EHH3YU', 'Upcoming', '2025-08-25', NULL, 'Half Day', 11, 'imperdiet ornare. In faucibus. Morbi vehicula. Pellentesque tincidunt tempus risus. Donec egestas. Duis ac arcu. Nunc mauris. Morbi non sapien molestie orci tincidunt adipiscing. Mauris molestie pharetra nibh. Aliquam ornare, libero at auctor ullamcorper, nisl arcu iaculis enim, sit amet ornare lectus justo eu arcu. Morbi sit amet massa. Quisque porttitor eros nec tellus. Nunc lectus pede, ultrices a, auctor non, feugiat nec, diam. Duis mi enim, condimentum eget, volutpat ornare, facilisis eget, ipsum. Donec sollicitudin adipiscing ligula. Aenean gravida nunc sed pede. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Proin vel arcu eu odio tristique pharetra. Quisque ac libero nec ligula consectetuer rhoncus. Nullam velit dui, semper et, lacinia vitae,', '2025-02-21 22:00:00', '2024-08-21 22:00:00'),
(79, 2, 'vitae, posuere at, velit. Cras lorem lorem,', 'FPE44PGH6DX', 'Completed', '2025-01-09', NULL, 'To be decided', 5, 'sollicitudin a, malesuada id, erat. Etiam vestibulum massa rutrum magna. Cras convallis convallis dolor. Quisque tincidunt pede ac urna. Ut tincidunt vehicula risus. Nulla eget metus eu erat semper rutrum. Fusce dolor quam, elementum at, egestas a, scelerisque sed, sapien. Nunc pulvinar arcu et pede. Nunc sed', '2025-07-06 22:00:00', '2024-08-19 22:00:00'),
(80, 2, 'vel sapien imperdiet ornare. In faucibus. Morbi vehicula. Pellentesque', 'ECE15VRY6PF', 'Upcoming', '2025-06-28', NULL, 'All Day', 5, 'Maecenas iaculis aliquet diam. Sed diam lorem, auctor quis, tristique ac, eleifend vitae, erat. Vivamus nisi. Mauris nulla. Integer urna. Vivamus molestie dapibus ligula. Aliquam erat volutpat. Nulla dignissim. Maecenas ornare egestas ligula. Nullam feugiat placerat velit. Quisque varius. Nam porttitor scelerisque neque. Nullam nisl. Maecenas malesuada fringilla est. Mauris eu', '2025-01-12 22:00:00', '2024-08-17 22:00:00'),
(81, 2, 'fermentum metus. Aenean sed', 'GLE65IGC2KQ', 'Upcoming', '2024-12-23', NULL, 'To be decided', 8, 'dignissim. Maecenas ornare egestas ligula. Nullam feugiat placerat velit. Quisque varius. Nam porttitor scelerisque neque. Nullam nisl. Maecenas malesuada fringilla est. Mauris eu turpis. Nulla aliquet. Proin velit. Sed malesuada augue ut lacus. Nulla tincidunt, neque vitae semper egestas, urna justo faucibus lectus, a sollicitudin orci sem eget massa. Suspendisse eleifend. Cras sed leo. Cras vehicula aliquet libero. Integer in magna. Phasellus dolor elit, pellentesque a, facilisis non, bibendum sed, est. Nunc laoreet lectus quis massa. Mauris vestibulum, neque sed dictum eleifend, nunc risus varius orci, in consequat enim diam vel arcu. Curabitur ut odio vel est tempor bibendum. Donec felis orci, adipiscing', '2024-03-08 22:00:00', '2024-07-31 22:00:00'),
(82, 2, 'gravida sit amet, dapibus id, blandit', 'TCC90WOS2CJ', 'Completed', '2025-05-24', NULL, 'All Day', 4, 'sagittis semper. Nam tempor diam dictum sapien. Aenean', '2025-04-02 22:00:00', '2024-08-31 22:00:00'),
(83, 2, 'amet, faucibus', 'TNL40DCL0BS', 'Completed', '2024-10-11', NULL, 'Half Day', 6, 'massa. Mauris vestibulum, neque sed dictum', '2025-04-29 22:00:00', '2024-08-15 22:00:00'),
(84, 2, 'Vivamus nisi. Mauris nulla. Integer urna. Vivamus', 'KQG86RIT0RX', 'Upcoming', '2025-09-08', NULL, 'Half Day', 5, 'porta elit, a feugiat tellus lorem eu metus. In lorem. Donec elementum, lorem ut aliquam iaculis, lacus pede sagittis augue, eu tempor erat neque non quam. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Aliquam fringilla cursus purus. Nullam scelerisque neque sed sem egestas blandit. Nam nulla magna, malesuada vel, convallis in, cursus et, eros. Proin ultrices. Duis volutpat nunc sit amet metus. Aliquam erat volutpat. Nulla facilisis. Suspendisse commodo tincidunt nibh. Phasellus nulla. Integer vulputate,', '2024-09-12 22:00:00', '2024-07-30 22:00:00'),
(85, 2, 'penatibus et magnis dis parturient', 'XNB31IDM7YJ', 'Completed', '2025-04-16', NULL, 'To be decided', 10, 'erat eget ipsum. Suspendisse sagittis. Nullam vitae diam. Proin dolor. Nulla semper tellus id nunc interdum feugiat. Sed nec metus facilisis lorem tristique aliquet. Phasellus fermentum convallis ligula. Donec luctus aliquet odio. Etiam ligula tortor, dictum eu, placerat eget, venenatis a, magna. Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Etiam laoreet, libero et tristique pellentesque, tellus sem mollis dui, in sodales elit erat vitae risus. Duis a mi fringilla mi lacinia mattis. Integer eu lacus. Quisque imperdiet, erat nonummy ultricies ornare, elit elit fermentum risus, at fringilla purus mauris a', '2024-09-20 22:00:00', '2024-08-28 22:00:00'),
(86, 2, 'Sed nulla ante, iaculis nec, eleifend non, dapibus rutrum, justo.', 'HDL15XYT5UQ', 'Completed', '2024-12-27', NULL, 'Half Day', 3, 'dictum sapien. Aenean massa. Integer vitae nibh. Donec est mauris, rhoncus id, mollis nec, cursus a, enim. Suspendisse aliquet, sem ut cursus luctus, ipsum leo elementum sem, vitae aliquam eros turpis non enim. Mauris quis turpis vitae purus gravida sagittis. Duis gravida. Praesent eu nulla at sem molestie sodales. Mauris blandit enim consequat purus. Maecenas', '2024-12-20 22:00:00', '2024-08-23 22:00:00');
INSERT INTO `events` (`id`, `user_id`, `name`, `slug`, `status`, `date`, `location`, `duration`, `priority`, `description`, `created_at`, `updated_at`) VALUES
(87, 2, 'libero. Integer in magna. Phasellus dolor elit, pellentesque a,', 'IGB51KKC2BC', 'Upcoming', '2025-06-24', NULL, 'All Day', 2, 'iaculis nec, eleifend non, dapibus rutrum, justo. Praesent luctus. Curabitur egestas nunc sed libero. Proin sed turpis nec mauris blandit mattis. Cras eget nisi dictum augue malesuada malesuada. Integer id magna et ipsum cursus vestibulum. Mauris magna. Duis dignissim tempor arcu. Vestibulum ut eros non enim commodo hendrerit. Donec porttitor tellus non magna. Nam ligula elit, pretium et, rutrum non, hendrerit id, ante. Nunc mauris sapien, cursus in, hendrerit consectetuer, cursus et, magna. Praesent interdum ligula eu enim. Etiam imperdiet dictum magna. Ut tincidunt orci quis lectus. Nullam suscipit, est ac facilisis facilisis, magna tellus faucibus leo, in lobortis tellus justo sit amet nulla. Donec non justo. Proin non massa non ante bibendum ullamcorper. Duis', '2024-02-20 22:00:00', '2024-08-08 22:00:00'),
(88, 2, 'mauris. Morbi non sapien molestie orci tincidunt adipiscing. Mauris', 'PYR15QPI4QQ', 'Upcoming', '2024-11-14', NULL, 'To be decided', 2, 'posuere cubilia Curae Donec tincidunt. Donec vitae erat vel pede blandit congue. In scelerisque scelerisque dui. Suspendisse ac metus vitae velit egestas lacinia. Sed congue, elit sed consequat auctor, nunc nulla vulputate dui, nec tempus mauris erat eget ipsum. Suspendisse sagittis. Nullam vitae diam. Proin dolor. Nulla semper tellus id nunc interdum feugiat. Sed', '2025-08-17 22:00:00', '2024-08-30 22:00:00'),
(89, 2, 'amet nulla.', 'SFG37UDJ8JV', 'Upcoming', '2025-09-14', NULL, 'Half Day', 10, 'adipiscing fringilla, porttitor vulputate, posuere vulputate, lacus. Cras interdum. Nunc sollicitudin commodo ipsum. Suspendisse non leo. Vivamus nibh dolor, nonummy ac, feugiat non, lobortis quis, pede. Suspendisse dui. Fusce diam nunc, ullamcorper eu, euismod ac, fermentum vel, mauris. Integer sem elit, pharetra ut, pharetra sed, hendrerit a, arcu. Sed et libero. Proin mi. Aliquam gravida mauris ut mi. Duis risus odio, auctor vitae, aliquet nec, imperdiet nec, leo. Morbi neque tellus, imperdiet non, vestibulum nec,', '2025-01-03 22:00:00', '2024-08-02 22:00:00'),
(90, 2, 'Proin dolor. Nulla', 'CJD16KSX6RC', 'Completed', '2024-09-24', NULL, 'Half Day', 1, 'quis diam. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Fusce aliquet magna a neque. Nullam ut nisi a odio semper cursus. Integer mollis. Integer tincidunt aliquam arcu. Aliquam ultrices iaculis odio. Nam interdum enim non nisi. Aenean eget metus. In nec orci. Donec nibh. Quisque nonummy ipsum non arcu. Vivamus sit amet risus. Donec egestas. Aliquam nec enim. Nunc ut erat. Sed nunc est, mollis non, cursus non, egestas a, dui. Cras pellentesque. Sed dictum. Proin eget odio. Aliquam vulputate ullamcorper magna. Sed eu eros. Nam consequat dolor vitae dolor. Donec fringilla.', '2024-12-30 22:00:00', '2024-08-17 22:00:00'),
(91, 2, 'nulla.', 'YYS42OEL5CB', 'Upcoming', '2025-04-02', NULL, 'All Day', 7, 'Proin non massa non ante bibendum ullamcorper. Duis cursus, diam at pretium aliquet, metus urna convallis erat, eget tincidunt dui augue eu tellus. Phasellus elit pede, malesuada vel, venenatis vel, faucibus id, libero. Donec consectetuer mauris id sapien. Cras dolor dolor, tempus non, lacinia', '2025-03-01 22:00:00', '2024-08-01 22:00:00'),
(92, 2, 'lectus pede,', 'HCT03JKM6XH', 'Completed', '2024-11-27', NULL, 'All Day', 3, 'molestie sodales. Mauris blandit enim consequat purus. Maecenas libero est, congue a, aliquet vel, vulputate eu, odio. Phasellus at augue id ante dictum cursus. Nunc mauris', '2025-08-27 22:00:00', '2024-08-03 22:00:00'),
(93, 2, 'laoreet', 'RSR05GIN3PU', 'Upcoming', '2025-05-07', NULL, 'To be decided', 9, 'malesuada fames ac turpis egestas. Aliquam fringilla', '2024-07-04 22:00:00', '2024-08-14 22:00:00'),
(94, 2, 'ut dolor dapibus gravida. Aliquam tincidunt, nunc ac', 'SMQ96ULK2LX', 'Upcoming', '2025-03-11', NULL, 'To be decided', 11, 'fringilla mi lacinia mattis. Integer eu lacus. Quisque imperdiet, erat nonummy ultricies ornare, elit elit fermentum risus, at fringilla purus mauris a nunc. In at pede. Cras vulputate velit eu sem. Pellentesque ut ipsum ac mi eleifend egestas. Sed pharetra, felis eget varius ultrices, mauris ipsum porta elit, a feugiat tellus lorem eu metus. In lorem. Donec elementum, lorem ut aliquam', '2024-10-05 22:00:00', '2024-09-01 22:00:00'),
(95, 2, 'sit amet nulla.', 'RWO66JIS5KX', 'Upcoming', '2025-01-07', NULL, 'To be decided', 8, 'ante. Vivamus non lorem vitae odio sagittis semper. Nam tempor diam dictum sapien. Aenean massa. Integer vitae nibh. Donec est mauris, rhoncus id, mollis nec, cursus a, enim. Suspendisse aliquet, sem ut cursus luctus, ipsum leo elementum sem, vitae aliquam eros turpis non enim. Mauris quis turpis vitae purus gravida sagittis. Duis gravida. Praesent eu nulla at sem molestie sodales. Mauris blandit enim consequat purus. Maecenas libero est, congue a, aliquet vel, vulputate eu, odio. Phasellus at augue id ante dictum cursus. Nunc mauris elit, dictum eu, eleifend nec, malesuada ut, sem.', '2025-08-30 22:00:00', '2024-08-24 22:00:00'),
(96, 2, 'euismod in, dolor. Fusce', 'NII21QLR1OI', 'Completed', '2024-11-30', NULL, 'All Day', 5, 'ligula. Donec luctus aliquet odio. Etiam ligula tortor, dictum eu, placerat eget, venenatis a, magna. Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Etiam', '2025-05-18 22:00:00', '2024-08-13 22:00:00'),
(97, 2, 'ipsum dolor sit amet, consectetuer adipiscing elit.', 'MSL26QAR6LE', 'Upcoming', '2025-09-22', NULL, 'All Day', 8, 'Morbi quis urna. Nunc quis arcu vel quam dignissim pharetra. Nam ac nulla. In tincidunt congue turpis. In condimentum. Donec at arcu. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae Donec tincidunt. Donec vitae erat vel pede blandit', '2024-03-17 22:00:00', '2024-08-30 22:00:00'),
(98, 2, 'iaculis odio. Nam interdum enim non nisi. Aenean eget', 'DLB97YZC5XN', 'Upcoming', '2025-06-21', NULL, 'To be decided', 9, 'egestas nunc sed libero. Proin sed turpis nec mauris blandit mattis. Cras eget nisi dictum augue malesuada malesuada. Integer id magna et ipsum cursus vestibulum. Mauris magna. Duis dignissim tempor arcu. Vestibulum ut eros non enim commodo hendrerit. Donec porttitor tellus non magna. Nam ligula elit, pretium et, rutrum non, hendrerit id, ante.', '2024-12-01 22:00:00', '2024-08-12 22:00:00'),
(99, 2, 'ornare. Fusce mollis. Duis sit amet diam', 'RBB77VPQ8KL', 'Upcoming', '2025-01-21', NULL, 'To be decided', 10, 'ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam adipiscing lacus. Ut nec urna et arcu imperdiet ullamcorper. Duis at lacus. Quisque purus sapien, gravida non, sollicitudin a, malesuada id, erat. Etiam vestibulum massa rutrum magna. Cras convallis convallis dolor. Quisque tincidunt pede ac urna. Ut tincidunt vehicula risus. Nulla eget metus eu erat semper rutrum. Fusce dolor quam, elementum at, egestas a, scelerisque sed, sapien. Nunc pulvinar arcu et pede. Nunc sed orci lobortis augue scelerisque mollis. Phasellus libero mauris, aliquam eu, accumsan sed, facilisis vitae, orci. Phasellus dapibus quam quis diam. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis', '2025-02-21 22:00:00', '2024-08-27 22:00:00'),
(100, 2, 'erat, eget tincidunt dui augue eu tellus. Phasellus', 'EON30NBT3GB', 'Completed', '2025-03-04', NULL, 'Half Day', 10, 'purus ac tellus. Suspendisse sed dolor. Fusce mi lorem, vehicula et, rutrum eu, ultrices sit amet, risus. Donec nibh enim, gravida sit amet, dapibus id, blandit at, nisi. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Proin vel nisl. Quisque fringilla euismod enim. Etiam gravida molestie arcu. Sed eu nibh vulputate mauris sagittis placerat. Cras dictum ultricies ligula. Nullam enim. Sed nulla ante, iaculis nec, eleifend non, dapibus rutrum, justo. Praesent luctus. Curabitur egestas nunc sed libero. Proin sed turpis nec mauris blandit mattis. Cras eget nisi', '2025-02-15 22:00:00', '2024-08-07 22:00:00'),
(101, 2, 'elit elit fermentum risus,', 'EOP60AXB6PM', 'Upcoming', '2024-12-06', NULL, 'All Day', 9, 'lacinia vitae, sodales at, velit. Pellentesque ultricies dignissim lacus. Aliquam rutrum lorem ac risus. Morbi metus. Vivamus euismod urna. Nullam lobortis quam a felis ullamcorper viverra. Maecenas iaculis aliquet diam. Sed diam lorem, auctor quis, tristique ac, eleifend vitae, erat. Vivamus nisi. Mauris nulla. Integer urna. Vivamus molestie dapibus ligula. Aliquam erat volutpat. Nulla dignissim. Maecenas', '2024-02-16 22:00:00', '2024-08-11 22:00:00'),
(102, 2, 'quis', 'IWM19EIY6HF', 'Completed', '2025-08-17', NULL, 'Half Day', 12, 'at, velit. Cras lorem lorem, luctus ut, pellentesque eget, dictum placerat, augue. Sed molestie. Sed id risus quis diam luctus lobortis. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos hymenaeos. Mauris ut quam vel sapien imperdiet ornare. In faucibus. Morbi vehicula. Pellentesque tincidunt tempus risus. Donec egestas. Duis ac arcu. Nunc mauris. Morbi non sapien molestie orci tincidunt adipiscing. Mauris molestie pharetra nibh. Aliquam ornare, libero at auctor ullamcorper, nisl arcu iaculis enim, sit amet ornare lectus justo eu arcu. Morbi sit amet massa. Quisque porttitor eros nec tellus. Nunc lectus pede, ultrices a, auctor non, feugiat nec, diam.', '2024-07-17 22:00:00', '2024-09-01 22:00:00'),
(103, 2, 'quis', 'XZO10YRU7QW', 'Upcoming', '2025-01-28', NULL, 'To be decided', 7, 'nisi a odio semper cursus. Integer mollis. Integer tincidunt aliquam arcu. Aliquam ultrices iaculis odio. Nam interdum enim non nisi. Aenean eget metus. In nec orci. Donec nibh. Quisque nonummy ipsum non arcu. Vivamus sit amet risus. Donec egestas. Aliquam nec enim. Nunc ut erat. Sed nunc est, mollis non, cursus non, egestas a, dui. Cras pellentesque. Sed dictum. Proin eget odio. Aliquam vulputate ullamcorper magna. Sed eu eros. Nam consequat dolor vitae dolor. Donec fringilla. Donec feugiat metus sit amet ante. Vivamus non lorem vitae odio sagittis semper. Nam tempor diam dictum sapien. Aenean massa. Integer vitae nibh. Donec est mauris, rhoncus id, mollis nec, cursus a, enim. Suspendisse aliquet, sem ut cursus luctus,', '2024-05-11 22:00:00', '2024-08-06 22:00:00'),
(104, 2, 'sollicitudin a,', 'ZKY91QOO4JB', 'Upcoming', '2025-08-05', NULL, 'To be decided', 8, 'posuere cubilia Curae Donec tincidunt. Donec vitae erat vel', '2024-06-02 22:00:00', '2024-08-21 22:00:00'),
(105, 2, 'eu eros. Nam consequat dolor vitae', 'IYP57UDV5UK', 'Upcoming', '2025-02-12', NULL, 'To be decided', 12, 'a tortor. Nunc commodo auctor velit. Aliquam nisl. Nulla eu neque pellentesque massa lobortis ultrices. Vivamus rhoncus. Donec est. Nunc ullamcorper, velit in aliquet lobortis, nisi nibh lacinia orci, consectetuer euismod est arcu ac orci. Ut semper pretium neque. Morbi quis urna. Nunc quis arcu vel quam dignissim pharetra. Nam ac nulla. In tincidunt congue turpis. In condimentum. Donec at arcu. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae Donec', '2024-09-01 22:00:00', '2024-08-28 22:00:00'),
(106, 2, 'Cras convallis convallis dolor. Quisque tincidunt pede ac', 'ZND48WAL9VJ', 'Completed', '2025-01-15', NULL, 'All Day', 3, 'ipsum cursus vestibulum. Mauris magna. Duis dignissim tempor arcu. Vestibulum ut eros non enim commodo hendrerit. Donec porttitor tellus non magna. Nam ligula elit, pretium et, rutrum non, hendrerit id, ante. Nunc mauris sapien, cursus in, hendrerit consectetuer, cursus et, magna. Praesent interdum ligula eu enim. Etiam imperdiet dictum magna. Ut tincidunt orci quis lectus. Nullam suscipit, est ac facilisis facilisis, magna tellus faucibus leo, in lobortis tellus justo sit amet nulla. Donec non justo. Proin non massa non ante bibendum ullamcorper. Duis cursus, diam at pretium aliquet, metus urna convallis erat, eget tincidunt dui', '2023-11-06 22:00:00', '2024-08-18 22:00:00'),
(107, 2, 'sed dolor. Fusce mi lorem, vehicula et, rutrum eu, ultrices', 'UFM25UXC4BY', 'Upcoming', '2025-02-13', NULL, 'Half Day', 3, 'aliquam, enim nec tempus scelerisque, lorem ipsum sodales purus, in molestie tortor nibh sit amet orci. Ut sagittis lobortis mauris. Suspendisse aliquet molestie tellus. Aenean egestas hendrerit neque. In ornare sagittis felis. Donec tempor, est ac mattis semper, dui lectus rutrum urna, nec luctus felis purus ac tellus. Suspendisse sed dolor. Fusce mi lorem, vehicula et, rutrum eu, ultrices sit amet, risus. Donec nibh enim, gravida sit amet,', '2023-12-07 22:00:00', '2024-08-04 22:00:00'),
(108, 2, 'laoreet lectus quis massa.', 'OVA68EDY1PU', 'Upcoming', '2024-11-30', NULL, 'All Day', 8, 'diam. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Fusce', '2024-12-12 22:00:00', '2024-08-05 22:00:00'),
(109, 2, 'ligula eu enim. Etiam imperdiet dictum magna. Ut', 'XJW12GGM3FQ', 'Completed', '2024-09-04', NULL, 'To be decided', 2, 'magna. Nam ligula elit, pretium et, rutrum non, hendrerit id, ante. Nunc mauris sapien, cursus in, hendrerit consectetuer, cursus et, magna. Praesent interdum ligula eu enim. Etiam imperdiet dictum magna. Ut tincidunt orci quis lectus. Nullam suscipit, est ac facilisis facilisis, magna tellus faucibus leo, in lobortis tellus justo sit amet nulla. Donec non justo. Proin non massa non ante', '2024-06-04 22:00:00', '2024-08-19 22:00:00'),
(110, 2, 'lobortis tellus justo sit amet nulla. Donec non justo. Proin', 'LSQ44FVL7SY', 'Upcoming', '2024-12-05', NULL, 'Half Day', 11, 'laoreet ipsum. Curabitur consequat, lectus sit amet luctus vulputate, nisi sem semper erat, in consectetuer ipsum nunc id enim. Curabitur massa. Vestibulum accumsan neque et nunc. Quisque ornare tortor at risus.', '2025-03-13 22:00:00', '2024-08-30 22:00:00'),
(111, 2, 'ipsum. Curabitur consequat, lectus sit', 'DJK67JTW1KX', 'Completed', '2025-02-27', NULL, 'All Day', 3, 'dolor. Donec fringilla. Donec feugiat metus sit amet ante. Vivamus non lorem vitae odio sagittis semper. Nam tempor diam dictum sapien. Aenean massa. Integer vitae nibh. Donec est mauris, rhoncus id, mollis nec, cursus a, enim. Suspendisse aliquet, sem ut cursus luctus, ipsum leo elementum sem, vitae aliquam eros turpis non enim. Mauris quis turpis vitae purus gravida sagittis. Duis gravida. Praesent eu nulla', '2024-02-28 22:00:00', '2024-08-09 22:00:00'),
(112, 2, 'Donec non justo.', 'DBO68EAU1HN', 'Completed', '2025-08-30', NULL, 'Half Day', 7, 'nisl. Maecenas malesuada fringilla est. Mauris eu turpis. Nulla aliquet. Proin velit. Sed malesuada augue ut lacus. Nulla tincidunt, neque vitae semper egestas, urna justo faucibus lectus, a sollicitudin orci sem eget massa. Suspendisse eleifend. Cras sed leo. Cras vehicula aliquet libero. Integer in magna. Phasellus dolor elit, pellentesque a, facilisis non, bibendum sed, est. Nunc laoreet lectus quis massa. Mauris vestibulum, neque sed dictum eleifend, nunc risus varius orci, in consequat enim diam vel arcu. Curabitur ut odio vel est tempor bibendum. Donec felis orci, adipiscing non, luctus sit amet, faucibus ut, nulla. Cras eu tellus', '2023-09-21 22:00:00', '2024-08-03 22:00:00'),
(113, 2, 'et arcu', 'UJY35SQT9IW', 'Completed', '2025-06-16', NULL, 'Half Day', 8, 'eu tempor erat neque non quam.', '2025-06-04 22:00:00', '2024-08-30 22:00:00'),
(114, 2, 'orci, consectetuer euismod est arcu ac orci. Ut semper pretium', 'WSX69JSH3VD', 'Completed', '2025-08-10', NULL, 'To be decided', 9, 'magna. Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Etiam laoreet, libero et tristique pellentesque, tellus sem mollis dui, in sodales elit erat vitae risus. Duis', '2024-03-23 22:00:00', '2024-08-07 22:00:00'),
(115, 2, 'nulla. Integer urna. Vivamus molestie dapibus ligula. Aliquam erat', 'FLP77XTM6TE', 'Completed', '2024-09-17', NULL, 'To be decided', 5, 'urna. Ut tincidunt vehicula risus. Nulla eget metus eu erat semper rutrum. Fusce dolor quam, elementum at, egestas a, scelerisque sed, sapien. Nunc pulvinar arcu et pede. Nunc sed orci lobortis augue scelerisque mollis. Phasellus libero mauris, aliquam eu, accumsan sed, facilisis vitae, orci. Phasellus dapibus quam quis diam. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Fusce aliquet magna a neque. Nullam ut nisi a odio semper cursus.', '2025-06-30 22:00:00', '2024-08-12 22:00:00'),
(116, 2, 'in', 'VYI86PFI5PG', 'Completed', '2025-01-22', NULL, 'All Day', 6, 'lobortis risus. In mi pede, nonummy ut, molestie in, tempus eu, ligula. Aenean euismod mauris eu elit. Nulla facilisi. Sed neque. Sed eget lacus. Mauris non dui nec urna suscipit nonummy. Fusce fermentum fermentum arcu. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae Phasellus ornare. Fusce mollis. Duis sit amet diam eu dolor', '2025-07-31 22:00:00', '2024-08-09 22:00:00'),
(117, 2, 'luctus vulputate, nisi sem semper erat, in consectetuer ipsum', 'XFU11RJW4PT', 'Completed', '2024-10-08', NULL, 'All Day', 8, 'Maecenas ornare egestas ligula. Nullam feugiat placerat velit. Quisque varius. Nam porttitor scelerisque neque. Nullam nisl. Maecenas malesuada fringilla est. Mauris eu turpis. Nulla aliquet. Proin velit. Sed malesuada augue ut lacus. Nulla tincidunt,', '2025-04-14 22:00:00', '2024-08-24 22:00:00'),
(118, 2, 'dolor, nonummy ac, feugiat non, lobortis', 'RCV37VPB9WO', 'Completed', '2025-01-13', NULL, 'To be decided', 9, 'est arcu ac orci. Ut semper pretium neque. Morbi quis urna. Nunc quis arcu vel quam dignissim pharetra. Nam ac nulla. In tincidunt congue turpis. In condimentum. Donec at arcu. Vestibulum ante ipsum primis in', '2024-09-02 22:00:00', '2024-08-27 22:00:00'),
(119, 2, 'luctus vulputate, nisi sem semper erat,', 'RPW59CBB4MW', 'Completed', '2025-02-04', NULL, 'Half Day', 5, 'dolor quam, elementum at, egestas a, scelerisque sed, sapien. Nunc pulvinar arcu et pede. Nunc sed orci lobortis augue scelerisque mollis. Phasellus libero mauris, aliquam eu, accumsan sed, facilisis vitae, orci. Phasellus dapibus quam quis diam. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Fusce aliquet magna a neque. Nullam ut', '2024-09-12 22:00:00', '2024-07-31 22:00:00'),
(120, 2, 'Cras vehicula aliquet libero. Integer', 'HQE08YBJ0TO', 'Completed', '2024-10-26', NULL, 'All Day', 1, 'ipsum leo elementum sem, vitae aliquam eros turpis non enim. Mauris quis turpis vitae purus gravida sagittis. Duis gravida. Praesent eu nulla at sem molestie sodales. Mauris blandit enim consequat purus. Maecenas libero est, congue a, aliquet vel, vulputate eu, odio. Phasellus at augue id ante dictum cursus. Nunc mauris elit, dictum eu, eleifend nec, malesuada ut, sem. Nulla interdum. Curabitur dictum. Phasellus in felis. Nulla tempor augue ac ipsum. Phasellus vitae mauris sit amet lorem semper auctor. Mauris', '2024-09-03 22:00:00', '2024-08-27 22:00:00'),
(121, 2, 'dictum. Proin eget odio. Aliquam', 'TBE57IGF3YO', 'Upcoming', '2025-06-21', NULL, 'All Day', 3, 'lacus. Quisque purus sapien, gravida non, sollicitudin a, malesuada id, erat. Etiam vestibulum massa rutrum magna. Cras convallis convallis dolor. Quisque tincidunt pede ac urna. Ut tincidunt vehicula risus.', '2024-05-30 22:00:00', '2024-08-08 22:00:00'),
(122, 2, 'eu enim.', 'SBY24XSL4EZ', 'Upcoming', '2024-10-30', NULL, 'Half Day', 8, 'diam vel arcu. Curabitur ut odio vel est tempor bibendum. Donec felis orci, adipiscing non, luctus sit amet, faucibus ut, nulla. Cras eu tellus eu augue', '2025-01-05 22:00:00', '2024-07-31 22:00:00'),
(123, 2, 'molestie pharetra nibh. Aliquam ornare, libero', 'DHK37JBY8WS', 'Upcoming', '2025-08-20', NULL, 'To be decided', 10, 'risus. Donec egestas. Duis ac arcu. Nunc mauris. Morbi non sapien molestie orci tincidunt adipiscing. Mauris molestie pharetra nibh. Aliquam ornare, libero at auctor ullamcorper, nisl arcu iaculis enim, sit amet ornare lectus justo eu arcu. Morbi sit amet massa. Quisque porttitor eros nec tellus. Nunc lectus pede, ultrices a, auctor non, feugiat nec, diam. Duis mi enim, condimentum eget, volutpat ornare, facilisis eget, ipsum. Donec sollicitudin adipiscing ligula. Aenean gravida nunc sed pede. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Proin vel arcu eu odio tristique pharetra. Quisque ac libero nec ligula consectetuer rhoncus. Nullam velit dui, semper et, lacinia vitae, sodales at, velit. Pellentesque ultricies dignissim lacus. Aliquam rutrum lorem ac', '2024-03-12 22:00:00', '2024-08-05 22:00:00'),
(124, 2, 'faucibus id, libero. Donec', 'NXG33JML4IR', 'Completed', '2025-03-22', NULL, 'Half Day', 10, 'fringilla. Donec feugiat metus sit amet ante. Vivamus non lorem vitae odio sagittis semper. Nam tempor diam dictum sapien. Aenean massa. Integer', '2024-06-09 22:00:00', '2024-08-06 22:00:00'),
(125, 2, 'Proin eget odio.', 'SUO72TLI3UN', 'Upcoming', '2025-09-29', NULL, 'Half Day', 3, 'posuere cubilia Curae Donec tincidunt. Donec vitae erat vel pede blandit congue. In scelerisque scelerisque dui. Suspendisse ac metus vitae velit egestas lacinia. Sed congue, elit sed consequat auctor, nunc nulla vulputate dui, nec tempus mauris erat eget ipsum. Suspendisse sagittis. Nullam vitae diam. Proin dolor. Nulla semper tellus id nunc interdum feugiat. Sed nec metus facilisis lorem tristique aliquet. Phasellus fermentum convallis ligula. Donec luctus aliquet odio. Etiam ligula tortor, dictum eu, placerat eget, venenatis a, magna. Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Etiam laoreet, libero et tristique pellentesque, tellus sem mollis dui, in sodales elit erat vitae', '2023-10-25 22:00:00', '2024-08-11 22:00:00'),
(126, 2, 'Aliquam erat volutpat. Nulla facilisis. Suspendisse', 'WKQ14ECB9CG', 'Upcoming', '2025-09-27', NULL, 'To be decided', 2, 'bibendum sed, est. Nunc laoreet lectus quis massa. Mauris vestibulum, neque sed dictum eleifend, nunc risus varius orci, in consequat enim diam vel arcu. Curabitur ut odio vel est tempor bibendum. Donec felis orci, adipiscing non, luctus sit amet, faucibus ut, nulla. Cras eu tellus eu augue porttitor interdum. Sed auctor odio a purus. Duis elementum, dui quis accumsan convallis, ante lectus convallis est, vitae sodales nisi magna sed dui. Fusce aliquam, enim nec tempus scelerisque, lorem ipsum sodales purus, in molestie tortor nibh sit amet orci. Ut sagittis lobortis mauris. Suspendisse aliquet molestie tellus. Aenean egestas hendrerit neque. In ornare sagittis felis. Donec tempor,', '2025-05-02 22:00:00', '2024-08-23 22:00:00'),
(127, 2, 'risus. Quisque libero lacus, varius et, euismod et,', 'CMU17RBB4GP', 'Completed', '2025-04-22', NULL, 'To be decided', 4, 'Suspendisse sagittis. Nullam vitae diam. Proin dolor. Nulla semper tellus id nunc', '2024-12-20 22:00:00', '2024-07-31 22:00:00'),
(128, 2, 'tortor. Integer aliquam adipiscing lacus. Ut', 'SSW22JDM5XI', 'Completed', '2025-02-12', NULL, 'All Day', 7, 'faucibus ut, nulla. Cras eu tellus eu augue porttitor interdum. Sed auctor odio a purus. Duis elementum, dui quis accumsan convallis, ante lectus convallis est, vitae sodales nisi magna sed dui. Fusce aliquam, enim nec tempus scelerisque, lorem ipsum sodales purus, in molestie tortor nibh sit amet orci. Ut sagittis lobortis mauris. Suspendisse aliquet molestie tellus. Aenean egestas hendrerit neque. In ornare sagittis felis. Donec tempor, est ac mattis semper, dui lectus rutrum urna, nec luctus felis purus ac tellus. Suspendisse sed dolor. Fusce mi lorem, vehicula et, rutrum eu, ultrices sit amet, risus. Donec nibh enim, gravida sit amet, dapibus id, blandit at, nisi. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.', '2024-12-12 22:00:00', '2024-08-06 22:00:00'),
(129, 2, 'lacinia mattis. Integer eu lacus. Quisque', 'GRG52DJI1LU', 'Upcoming', '2024-11-05', NULL, 'Half Day', 12, 'lacinia vitae, sodales at, velit. Pellentesque ultricies dignissim lacus. Aliquam rutrum lorem ac risus. Morbi metus. Vivamus euismod urna. Nullam lobortis quam a felis ullamcorper viverra. Maecenas iaculis aliquet diam. Sed diam lorem, auctor quis, tristique ac, eleifend vitae, erat. Vivamus nisi. Mauris nulla. Integer urna. Vivamus molestie dapibus ligula. Aliquam erat volutpat. Nulla dignissim. Maecenas ornare egestas ligula. Nullam feugiat placerat velit. Quisque varius. Nam porttitor scelerisque neque. Nullam nisl. Maecenas malesuada fringilla est. Mauris eu turpis. Nulla aliquet. Proin velit. Sed malesuada augue ut lacus. Nulla tincidunt, neque vitae semper egestas, urna justo faucibus lectus, a', '2025-03-07 22:00:00', '2024-08-26 22:00:00'),
(130, 2, 'non, sollicitudin a,', 'JKB68SVR6SU', 'Completed', '2025-06-27', NULL, 'All Day', 9, 'Aliquam fringilla cursus purus.', '2023-09-07 22:00:00', '2024-08-18 22:00:00'),
(131, 2, 'augue id ante dictum cursus. Nunc mauris', 'DPE30PWV4YM', 'Completed', '2025-06-12', NULL, 'All Day', 8, 'volutpat ornare, facilisis eget, ipsum. Donec sollicitudin adipiscing ligula. Aenean gravida nunc sed pede. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Proin vel arcu eu odio tristique pharetra. Quisque ac libero nec ligula consectetuer rhoncus. Nullam velit dui, semper et, lacinia vitae, sodales at, velit. Pellentesque ultricies dignissim lacus. Aliquam rutrum lorem ac risus. Morbi metus. Vivamus euismod urna. Nullam lobortis quam a felis ullamcorper viverra. Maecenas iaculis aliquet diam. Sed diam lorem, auctor quis, tristique ac, eleifend vitae, erat. Vivamus nisi.', '2023-12-16 22:00:00', '2024-08-25 22:00:00'),
(132, 2, 'Nam nulla magna, malesuada vel, convallis', 'FYX28VXB4RN', 'Completed', '2025-06-22', NULL, 'To be decided', 4, 'at, velit. Cras lorem lorem, luctus ut, pellentesque eget, dictum placerat, augue. Sed molestie. Sed id risus quis diam luctus lobortis. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos hymenaeos. Mauris ut quam vel sapien imperdiet ornare. In faucibus. Morbi vehicula. Pellentesque tincidunt tempus risus. Donec egestas. Duis ac arcu. Nunc mauris. Morbi non sapien molestie orci tincidunt adipiscing. Mauris molestie pharetra nibh. Aliquam ornare, libero at auctor ullamcorper, nisl arcu iaculis enim, sit amet ornare lectus justo eu arcu. Morbi sit amet massa. Quisque porttitor eros nec tellus. Nunc lectus pede, ultrices a, auctor non, feugiat nec, diam. Duis mi enim, condimentum eget, volutpat ornare, facilisis eget, ipsum. Donec sollicitudin adipiscing ligula.', '2025-03-27 22:00:00', '2024-07-31 22:00:00'),
(133, 2, 'iaculis nec, eleifend non, dapibus rutrum, justo. Praesent luctus. Curabitur', 'PTM87IFL5EU', 'Completed', '2024-11-08', NULL, 'All Day', 11, 'tempor augue ac ipsum. Phasellus vitae mauris sit amet lorem semper auctor. Mauris vel turpis. Aliquam adipiscing lobortis risus. In mi pede, nonummy ut, molestie in, tempus eu, ligula. Aenean euismod mauris eu elit. Nulla facilisi. Sed neque. Sed eget lacus. Mauris non dui nec urna suscipit nonummy. Fusce fermentum fermentum arcu. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae Phasellus ornare. Fusce mollis. Duis sit amet diam eu dolor egestas', '2024-10-30 22:00:00', '2024-08-26 22:00:00'),
(134, 2, 'sapien imperdiet ornare. In', 'LQB87VZS2JR', 'Upcoming', '2024-10-11', NULL, 'Half Day', 4, 'aliquam eu, accumsan sed, facilisis vitae, orci. Phasellus dapibus quam quis diam. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Fusce aliquet magna a neque. Nullam ut nisi a odio semper cursus. Integer mollis. Integer tincidunt aliquam arcu. Aliquam ultrices iaculis odio. Nam interdum enim non nisi. Aenean eget metus. In nec orci. Donec nibh. Quisque nonummy ipsum non arcu. Vivamus sit amet risus.', '2024-04-23 22:00:00', '2024-08-04 22:00:00'),
(135, 2, 'sociis natoque penatibus et magnis dis parturient montes,', 'LBH92KNG6TW', 'Upcoming', '2025-04-17', NULL, 'All Day', 7, 'Suspendisse commodo tincidunt nibh. Phasellus nulla. Integer vulputate, risus a ultricies adipiscing, enim mi tempor lorem, eget mollis lectus pede et risus. Quisque libero lacus, varius et, euismod et, commodo at, libero. Morbi accumsan laoreet ipsum. Curabitur consequat, lectus sit amet luctus vulputate, nisi sem semper erat, in consectetuer ipsum nunc id enim. Curabitur massa. Vestibulum accumsan neque et nunc. Quisque ornare tortor at risus. Nunc ac sem ut dolor dapibus gravida. Aliquam tincidunt, nunc ac mattis ornare, lectus ante dictum mi, ac mattis velit justo nec ante. Maecenas mi felis, adipiscing', '2025-05-15 22:00:00', '2024-08-24 22:00:00'),
(136, 2, 'ut mi. Duis risus', 'CYN34HMM4ED', 'Completed', '2025-06-09', NULL, 'Half Day', 10, 'ac ipsum. Phasellus vitae mauris sit amet lorem semper auctor. Mauris vel turpis. Aliquam adipiscing lobortis risus. In mi pede, nonummy ut, molestie in, tempus eu, ligula. Aenean euismod mauris eu elit. Nulla facilisi. Sed neque. Sed eget lacus. Mauris non dui nec urna suscipit nonummy. Fusce fermentum fermentum arcu. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae Phasellus ornare. Fusce mollis. Duis sit amet diam eu dolor egestas rhoncus. Proin nisl sem, consequat nec, mollis vitae, posuere at, velit. Cras lorem lorem, luctus ut, pellentesque eget, dictum placerat, augue. Sed molestie. Sed id risus quis diam luctus lobortis. Class aptent taciti sociosqu ad litora torquent per conubia nostra,', '2025-02-28 22:00:00', '2024-08-19 22:00:00'),
(137, 2, 'Nulla tincidunt, neque vitae', 'CUC82FYD6JS', 'Upcoming', '2024-12-23', NULL, 'All Day', 2, 'eu turpis. Nulla aliquet. Proin velit. Sed malesuada augue ut lacus. Nulla tincidunt, neque vitae semper egestas, urna justo faucibus lectus, a sollicitudin orci sem eget massa. Suspendisse eleifend. Cras sed leo. Cras vehicula aliquet libero. Integer in magna. Phasellus dolor elit, pellentesque a, facilisis non, bibendum sed, est. Nunc laoreet lectus quis massa. Mauris vestibulum, neque sed dictum eleifend, nunc risus varius orci, in consequat enim diam vel arcu. Curabitur ut odio vel est tempor bibendum. Donec felis orci, adipiscing non, luctus sit amet, faucibus ut, nulla. Cras eu tellus eu augue porttitor', '2024-10-31 22:00:00', '2024-08-03 22:00:00'),
(138, 2, 'posuere at, velit. Cras lorem lorem,', 'TIV56TWP9GE', 'Completed', '2025-08-11', NULL, 'To be decided', 11, 'mi enim, condimentum eget, volutpat ornare, facilisis eget, ipsum. Donec sollicitudin adipiscing ligula. Aenean gravida nunc sed pede. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Proin vel arcu eu odio tristique pharetra. Quisque ac libero nec ligula consectetuer rhoncus. Nullam velit dui, semper et, lacinia vitae, sodales at, velit. Pellentesque ultricies dignissim lacus. Aliquam rutrum lorem ac risus. Morbi metus. Vivamus euismod urna. Nullam lobortis quam a felis ullamcorper viverra. Maecenas iaculis aliquet diam. Sed diam lorem, auctor quis, tristique ac, eleifend vitae, erat. Vivamus nisi. Mauris nulla. Integer urna. Vivamus molestie dapibus ligula. Aliquam erat volutpat. Nulla dignissim. Maecenas ornare egestas ligula. Nullam feugiat placerat velit. Quisque varius. Nam porttitor', '2024-07-12 22:00:00', '2024-08-31 22:00:00'),
(139, 2, 'neque. Morbi quis urna. Nunc quis', 'BBB74FMJ0YY', 'Upcoming', '2025-01-07', NULL, 'To be decided', 9, 'risus.', '2024-06-28 22:00:00', '2024-08-03 22:00:00'),
(140, 2, 'Pellentesque habitant morbi tristique senectus et netus', 'YZV15MIR1QB', 'Upcoming', '2025-01-03', NULL, 'All Day', 9, 'mollis non, cursus non, egestas a, dui. Cras pellentesque. Sed dictum. Proin eget odio. Aliquam vulputate ullamcorper magna. Sed eu eros. Nam consequat dolor vitae dolor. Donec fringilla. Donec feugiat metus sit amet ante. Vivamus non lorem vitae odio sagittis semper. Nam tempor diam dictum sapien.', '2023-10-04 22:00:00', '2024-08-01 22:00:00'),
(141, 2, 'Phasellus in felis. Nulla tempor augue ac ipsum.', 'LDT87PPO6CU', 'Completed', '2024-12-14', NULL, 'To be decided', 11, 'luctus felis purus ac tellus. Suspendisse sed dolor. Fusce mi lorem, vehicula et, rutrum eu, ultrices sit amet, risus. Donec nibh enim, gravida sit amet, dapibus id, blandit at, nisi. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Proin vel nisl. Quisque fringilla euismod enim. Etiam gravida molestie arcu. Sed eu nibh vulputate mauris sagittis placerat. Cras dictum ultricies ligula. Nullam enim. Sed nulla ante, iaculis nec, eleifend non,', '2023-08-31 22:00:00', '2024-08-24 22:00:00'),
(142, 2, 'quam quis diam.', 'CHM62GAC3BN', 'Completed', '2025-06-12', NULL, 'To be decided', 12, 'Morbi neque tellus, imperdiet non, vestibulum nec, euismod in, dolor. Fusce feugiat. Lorem', '2024-05-15 22:00:00', '2024-08-20 22:00:00'),
(143, 2, 'magna nec quam. Curabitur vel lectus. Cum sociis natoque penatibus', 'MUM93NHD6IO', 'Completed', '2024-12-05', NULL, 'Half Day', 6, 'sem mollis dui, in sodales elit erat vitae risus. Duis a mi fringilla mi lacinia mattis. Integer eu lacus. Quisque imperdiet, erat nonummy ultricies ornare, elit elit fermentum risus, at fringilla purus mauris a nunc. In at pede. Cras vulputate velit eu sem. Pellentesque ut ipsum ac mi eleifend egestas. Sed pharetra, felis eget varius ultrices, mauris ipsum porta elit, a feugiat tellus lorem eu metus. In lorem. Donec elementum, lorem ut aliquam iaculis, lacus pede sagittis augue, eu tempor erat neque non quam. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Aliquam fringilla cursus purus. Nullam', '2025-05-06 22:00:00', '2024-08-25 22:00:00'),
(144, 2, 'ligula tortor, dictum eu,', 'LGT51OVW3HV', 'Completed', '2025-06-13', NULL, 'To be decided', 11, 'eu nulla at sem molestie sodales. Mauris blandit enim consequat purus. Maecenas libero est, congue a, aliquet vel, vulputate eu, odio. Phasellus at augue id ante dictum cursus. Nunc mauris elit, dictum eu, eleifend nec, malesuada ut, sem. Nulla interdum. Curabitur dictum. Phasellus in felis. Nulla tempor augue ac ipsum. Phasellus vitae mauris sit amet lorem semper auctor. Mauris vel turpis. Aliquam adipiscing lobortis risus. In mi pede, nonummy ut, molestie in, tempus eu, ligula. Aenean euismod mauris', '2023-12-20 22:00:00', '2024-08-25 22:00:00'),
(145, 2, 'pede nec ante blandit viverra. Donec tempus,', 'IHO58YFP3NY', 'Completed', '2025-07-04', NULL, 'Half Day', 9, 'diam eu dolor egestas rhoncus. Proin nisl sem, consequat nec, mollis vitae, posuere at, velit. Cras lorem lorem, luctus ut, pellentesque eget, dictum placerat, augue. Sed molestie. Sed id risus quis diam luctus lobortis. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos hymenaeos. Mauris ut quam vel sapien imperdiet ornare. In faucibus. Morbi vehicula. Pellentesque tincidunt tempus risus. Donec egestas. Duis ac arcu. Nunc mauris. Morbi non sapien molestie orci tincidunt adipiscing. Mauris molestie pharetra nibh. Aliquam ornare, libero at auctor ullamcorper, nisl arcu iaculis', '2025-04-02 22:00:00', '2024-08-28 22:00:00'),
(146, 2, 'luctus', 'MWW56KEH2FL', 'Upcoming', '2025-08-05', NULL, 'To be decided', 7, 'Proin ultrices. Duis volutpat nunc sit amet metus. Aliquam erat volutpat. Nulla facilisis. Suspendisse commodo tincidunt nibh. Phasellus nulla. Integer vulputate, risus a ultricies adipiscing, enim mi tempor lorem, eget mollis lectus pede et risus. Quisque libero lacus, varius et, euismod et, commodo at, libero. Morbi accumsan laoreet ipsum. Curabitur consequat, lectus sit amet luctus vulputate, nisi sem semper erat, in consectetuer ipsum nunc id enim. Curabitur massa. Vestibulum accumsan neque et nunc. Quisque ornare tortor at risus. Nunc ac sem ut dolor dapibus gravida. Aliquam tincidunt, nunc ac mattis ornare, lectus ante dictum mi, ac mattis velit justo nec', '2025-01-24 22:00:00', '2024-08-30 22:00:00'),
(147, 2, 'justo sit amet nulla.', 'TCT78QVK5KP', 'Upcoming', '2025-07-25', NULL, 'To be decided', 7, 'lorem, eget mollis lectus', '2024-05-29 22:00:00', '2024-08-06 22:00:00'),
(148, 2, 'eget laoreet posuere, enim nisl elementum', 'MJS51PZQ0YA', 'Upcoming', '2025-07-31', NULL, 'Half Day', 7, 'aliquet, metus urna convallis erat, eget tincidunt dui augue eu tellus. Phasellus elit pede, malesuada', '2025-03-05 22:00:00', '2024-08-25 22:00:00'),
(149, 2, 'sem molestie sodales.', 'QIX63SLS6FU', 'Upcoming', '2025-05-01', NULL, 'All Day', 10, 'Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec dignissim magna a tortor. Nunc commodo auctor velit. Aliquam nisl. Nulla', '2025-02-12 22:00:00', '2024-07-30 22:00:00'),
(150, 2, 'malesuada augue ut lacus. Nulla', 'RIC34FZF4EQ', 'Upcoming', '2025-08-06', NULL, 'To be decided', 5, 'netus et malesuada fames ac turpis egestas. Aliquam fringilla cursus purus. Nullam scelerisque neque sed sem egestas blandit. Nam nulla magna, malesuada vel, convallis in, cursus et, eros. Proin ultrices. Duis volutpat nunc sit amet metus. Aliquam erat volutpat. Nulla facilisis. Suspendisse commodo tincidunt nibh. Phasellus nulla. Integer vulputate, risus a ultricies adipiscing, enim mi tempor lorem, eget mollis lectus pede et risus. Quisque libero lacus, varius et, euismod et, commodo at, libero. Morbi accumsan laoreet ipsum. Curabitur consequat, lectus sit amet luctus vulputate, nisi sem semper erat, in consectetuer ipsum nunc id enim. Curabitur massa. Vestibulum accumsan neque et nunc. Quisque', '2023-12-04 22:00:00', '2024-08-28 22:00:00'),
(151, 2, 'orci, adipiscing non, luctus sit amet, faucibus ut, nulla.', 'THQ21AMM6CU', 'Upcoming', '2025-03-11', NULL, 'All Day', 6, 'vitae aliquam eros turpis non enim. Mauris quis turpis vitae purus gravida sagittis. Duis gravida. Praesent eu nulla at sem molestie sodales. Mauris blandit enim consequat purus. Maecenas libero est, congue a, aliquet vel, vulputate eu, odio. Phasellus at augue id ante dictum cursus. Nunc mauris elit, dictum eu, eleifend nec, malesuada ut, sem. Nulla interdum. Curabitur dictum. Phasellus in felis. Nulla tempor augue ac ipsum. Phasellus vitae', '2025-04-28 22:00:00', '2024-08-18 22:00:00'),
(152, 2, 'cubilia Curae Donec tincidunt. Donec vitae erat', 'KTM14KHC7TX', 'Upcoming', '2025-08-17', NULL, 'To be decided', 9, 'enim nec tempus scelerisque, lorem ipsum sodales purus, in molestie tortor nibh sit amet orci. Ut sagittis lobortis mauris. Suspendisse aliquet molestie tellus. Aenean egestas hendrerit neque. In ornare sagittis felis. Donec tempor, est ac mattis semper, dui lectus rutrum urna, nec luctus felis purus ac tellus. Suspendisse sed dolor. Fusce mi lorem, vehicula et, rutrum eu, ultrices sit amet, risus. Donec nibh enim, gravida sit amet, dapibus id, blandit at, nisi. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Proin vel nisl. Quisque fringilla euismod enim. Etiam gravida molestie arcu. Sed eu nibh vulputate mauris sagittis placerat. Cras dictum ultricies ligula. Nullam', '2024-10-23 22:00:00', '2024-08-25 22:00:00'),
(153, 2, 'enim commodo hendrerit. Donec porttitor', 'CQJ37IAT1UB', 'Completed', '2025-07-28', NULL, 'Half Day', 11, 'nunc. Quisque ornare tortor at risus. Nunc ac sem ut dolor dapibus gravida. Aliquam tincidunt, nunc ac mattis ornare, lectus ante', '2024-06-04 22:00:00', '2024-08-23 22:00:00'),
(154, 2, 'pretium et,', 'WGI24EFT1JP', 'Completed', '2024-12-08', NULL, 'All Day', 12, 'congue a, aliquet vel, vulputate eu, odio. Phasellus at augue id ante dictum cursus. Nunc mauris elit, dictum eu, eleifend nec, malesuada ut, sem. Nulla interdum. Curabitur dictum. Phasellus in felis. Nulla tempor augue ac ipsum. Phasellus vitae mauris sit amet lorem semper auctor. Mauris vel turpis. Aliquam adipiscing lobortis risus.', '2025-05-10 22:00:00', '2024-08-22 22:00:00'),
(155, 2, 'pede. Suspendisse dui.', 'EKM32XLI5YL', 'Upcoming', '2025-07-12', NULL, 'All Day', 1, 'quam, elementum at, egestas a, scelerisque sed, sapien. Nunc pulvinar arcu et pede. Nunc sed orci lobortis augue scelerisque mollis. Phasellus libero mauris, aliquam eu, accumsan sed, facilisis vitae, orci. Phasellus dapibus quam quis diam. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Fusce aliquet magna a neque. Nullam ut nisi a odio semper cursus. Integer mollis. Integer tincidunt aliquam arcu. Aliquam ultrices iaculis odio. Nam interdum enim non nisi. Aenean eget metus. In nec orci. Donec nibh. Quisque nonummy ipsum non arcu. Vivamus sit amet risus. Donec egestas. Aliquam nec enim. Nunc ut erat. Sed nunc est, mollis non, cursus non, egestas a, dui. Cras pellentesque. Sed dictum. Proin eget odio. Aliquam', '2024-06-23 22:00:00', '2024-08-02 22:00:00'),
(156, 2, 'cursus vestibulum. Mauris magna. Duis dignissim', 'GNU87XDO4GZ', 'Upcoming', '2025-06-05', NULL, 'Half Day', 2, 'est, vitae sodales nisi magna sed dui. Fusce aliquam, enim nec tempus scelerisque, lorem ipsum sodales purus, in molestie tortor nibh sit amet orci. Ut sagittis lobortis mauris. Suspendisse aliquet molestie tellus. Aenean egestas hendrerit neque. In ornare sagittis felis. Donec tempor, est ac mattis semper, dui lectus rutrum urna, nec luctus felis purus ac tellus. Suspendisse', '2025-06-17 22:00:00', '2024-08-11 22:00:00'),
(157, 2, 'Nunc mauris. Morbi non sapien molestie orci tincidunt adipiscing.', 'GMS56DKH3ZB', 'Upcoming', '2025-04-02', NULL, 'All Day', 5, 'inceptos hymenaeos. Mauris ut quam vel sapien imperdiet ornare. In faucibus. Morbi vehicula. Pellentesque tincidunt tempus risus. Donec egestas. Duis ac arcu. Nunc mauris. Morbi non sapien molestie orci tincidunt adipiscing. Mauris molestie pharetra nibh. Aliquam ornare, libero at auctor ullamcorper, nisl arcu iaculis enim, sit amet ornare lectus justo eu arcu. Morbi sit amet massa. Quisque porttitor eros nec tellus. Nunc lectus pede, ultrices a, auctor non, feugiat nec, diam. Duis mi enim, condimentum eget, volutpat ornare,', '2024-02-05 22:00:00', '2024-08-18 22:00:00'),
(158, 2, 'montes, nascetur ridiculus mus. Aenean', 'HHN26BLA2GU', 'Completed', '2025-06-15', NULL, 'To be decided', 3, 'lorem ipsum sodales purus, in molestie tortor nibh sit amet orci. Ut sagittis lobortis mauris. Suspendisse aliquet molestie tellus. Aenean egestas hendrerit neque. In ornare sagittis felis. Donec tempor, est ac mattis semper, dui lectus rutrum urna, nec luctus felis purus ac tellus. Suspendisse sed dolor. Fusce mi lorem, vehicula et, rutrum eu, ultrices sit amet, risus. Donec nibh enim, gravida sit amet, dapibus id, blandit at, nisi. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Proin vel', '2024-08-01 22:00:00', '2024-08-24 22:00:00'),
(159, 2, 'orci. Ut semper pretium neque. Morbi quis urna. Nunc quis', 'FLW00DPK0CC', 'Completed', '2024-10-09', NULL, 'All Day', 2, 'mauris a nunc. In at pede. Cras vulputate velit eu sem. Pellentesque ut ipsum ac mi eleifend egestas. Sed pharetra, felis eget varius ultrices, mauris ipsum porta elit, a feugiat tellus lorem eu metus. In lorem. Donec elementum, lorem ut aliquam iaculis, lacus pede sagittis augue, eu tempor erat neque non quam. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Aliquam fringilla cursus purus. Nullam scelerisque neque sed sem egestas blandit. Nam nulla magna, malesuada vel, convallis in, cursus et, eros. Proin ultrices. Duis volutpat nunc sit', '2024-02-29 22:00:00', '2024-07-31 22:00:00'),
(160, 2, 'fames ac turpis egestas. Fusce aliquet magna a neque.', 'QHK72UQF5FI', 'Upcoming', '2025-06-28', NULL, 'All Day', 9, 'est, mollis non, cursus non, egestas a, dui. Cras pellentesque. Sed dictum. Proin eget odio. Aliquam vulputate ullamcorper magna. Sed eu eros. Nam consequat dolor vitae dolor. Donec fringilla. Donec feugiat metus sit amet ante. Vivamus non lorem vitae odio sagittis semper. Nam tempor diam dictum sapien. Aenean massa. Integer vitae nibh. Donec est mauris, rhoncus id, mollis nec, cursus a, enim. Suspendisse aliquet, sem ut cursus luctus, ipsum leo elementum sem, vitae aliquam eros turpis non enim. Mauris quis turpis vitae purus gravida sagittis. Duis gravida. Praesent eu nulla at sem', '2024-10-15 22:00:00', '2024-08-02 22:00:00'),
(161, 2, 'Morbi neque', 'RFY54VJH3FG', 'Completed', '2024-11-08', NULL, 'All Day', 10, 'amet ornare lectus justo eu arcu. Morbi sit amet massa. Quisque porttitor eros nec tellus. Nunc lectus pede, ultrices a, auctor non, feugiat nec, diam. Duis mi enim,', '2024-08-30 22:00:00', '2024-08-02 22:00:00'),
(162, 2, 'sem egestas blandit.', 'BQN06UYY5FM', 'Completed', '2025-06-04', NULL, 'All Day', 8, 'nonummy ut, molestie in, tempus eu, ligula. Aenean euismod mauris eu elit. Nulla facilisi. Sed neque. Sed eget lacus. Mauris non dui nec urna suscipit nonummy. Fusce fermentum fermentum arcu. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae Phasellus ornare. Fusce mollis. Duis sit amet diam eu dolor egestas rhoncus. Proin nisl sem, consequat nec, mollis vitae, posuere at, velit. Cras lorem lorem, luctus ut, pellentesque eget, dictum placerat, augue. Sed molestie. Sed id risus quis diam luctus lobortis. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos hymenaeos. Mauris ut quam vel sapien', '2023-10-21 22:00:00', '2024-08-28 22:00:00'),
(163, 2, 'sit amet, consectetuer adipiscing elit. Etiam laoreet, libero et tristique', 'XYA74BVU6FC', 'Upcoming', '2024-10-21', NULL, 'To be decided', 9, 'rutrum eu, ultrices sit amet, risus. Donec nibh enim, gravida sit amet, dapibus id, blandit at, nisi. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Proin vel nisl. Quisque fringilla euismod enim. Etiam gravida molestie arcu. Sed eu nibh vulputate mauris sagittis placerat. Cras dictum', '2024-12-16 22:00:00', '2024-08-27 22:00:00'),
(164, 2, 'in consectetuer', 'RDB82YQT7SM', 'Upcoming', '2025-03-23', NULL, 'Half Day', 4, 'vehicula et, rutrum eu, ultrices sit amet, risus. Donec nibh enim, gravida sit amet, dapibus', '2024-05-08 22:00:00', '2024-07-31 22:00:00'),
(165, 2, 'ipsum. Curabitur consequat, lectus sit', 'JNY94HTF4HH', 'Completed', '2024-09-22', NULL, 'To be decided', 12, 'lorem, vehicula et, rutrum eu, ultrices sit amet, risus. Donec nibh enim, gravida sit amet, dapibus', '2024-07-09 22:00:00', '2024-09-01 22:00:00'),
(166, 2, 'Etiam ligula tortor, dictum eu, placerat eget, venenatis a, magna.', 'KCD35RSC6PF', 'Completed', '2025-05-09', NULL, 'To be decided', 1, 'odio. Etiam ligula tortor, dictum eu, placerat eget, venenatis a, magna. Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Etiam laoreet, libero et tristique pellentesque, tellus sem mollis dui, in sodales elit erat vitae risus. Duis a mi fringilla mi lacinia mattis. Integer eu lacus. Quisque imperdiet, erat nonummy ultricies ornare, elit elit fermentum risus, at fringilla purus mauris a nunc. In at pede. Cras vulputate velit eu sem. Pellentesque ut ipsum ac mi eleifend egestas. Sed pharetra, felis eget varius ultrices, mauris ipsum porta elit, a feugiat tellus lorem eu metus. In lorem. Donec elementum, lorem ut aliquam iaculis, lacus pede sagittis augue, eu tempor erat neque non quam. Pellentesque habitant morbi', '2025-02-08 22:00:00', '2024-08-26 22:00:00'),
(167, 2, 'lectus quis massa. Mauris vestibulum,', 'LQN24SOI2YN', 'Upcoming', '2025-03-09', NULL, 'All Day', 6, 'eu tellus eu augue porttitor interdum. Sed auctor odio a purus. Duis elementum, dui quis accumsan', '2024-04-16 22:00:00', '2024-08-18 22:00:00'),
(168, 2, 'luctus felis purus', 'YQH50IGV9WC', 'Upcoming', '2025-08-02', NULL, 'All Day', 5, 'elit. Nulla facilisi. Sed neque. Sed eget lacus. Mauris non dui nec urna suscipit nonummy. Fusce fermentum fermentum arcu. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae Phasellus ornare. Fusce mollis. Duis sit amet diam eu dolor egestas rhoncus. Proin nisl sem, consequat nec, mollis vitae, posuere at, velit. Cras lorem lorem, luctus ut, pellentesque eget, dictum placerat, augue. Sed molestie. Sed id risus', '2023-10-04 22:00:00', '2024-08-23 22:00:00'),
(169, 2, 'porttitor scelerisque neque. Nullam', 'SKF43OLC8KX', 'Upcoming', '2024-12-19', NULL, 'Half Day', 1, 'convallis convallis dolor. Quisque tincidunt pede ac urna. Ut tincidunt vehicula risus. Nulla eget metus eu erat semper rutrum. Fusce dolor quam, elementum at, egestas a, scelerisque sed, sapien. Nunc pulvinar arcu et pede. Nunc sed orci lobortis augue scelerisque', '2024-09-28 22:00:00', '2024-08-09 22:00:00'),
(170, 2, 'nec metus facilisis lorem tristique aliquet. Phasellus', 'LCE24XEI8NC', 'Completed', '2025-06-26', NULL, 'All Day', 4, 'erat. Etiam vestibulum massa rutrum magna. Cras convallis convallis dolor. Quisque tincidunt pede ac urna. Ut tincidunt vehicula risus. Nulla eget metus eu erat semper rutrum. Fusce dolor quam, elementum at, egestas a, scelerisque sed, sapien. Nunc pulvinar arcu et pede. Nunc sed orci lobortis augue scelerisque mollis. Phasellus libero mauris, aliquam eu, accumsan sed, facilisis vitae, orci. Phasellus dapibus quam quis diam. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Fusce aliquet magna a neque. Nullam ut nisi a odio semper cursus. Integer mollis. Integer tincidunt aliquam arcu. Aliquam ultrices iaculis odio. Nam interdum enim non nisi. Aenean', '2025-06-27 22:00:00', '2024-08-11 22:00:00');
INSERT INTO `events` (`id`, `user_id`, `name`, `slug`, `status`, `date`, `location`, `duration`, `priority`, `description`, `created_at`, `updated_at`) VALUES
(171, 2, 'egestas ligula. Nullam feugiat placerat velit.', 'NHC95SQE0SS', 'Upcoming', '2024-12-31', NULL, 'All Day', 10, 'tincidunt, nunc ac mattis ornare, lectus ante dictum mi, ac mattis velit justo nec ante. Maecenas mi felis, adipiscing fringilla, porttitor vulputate, posuere vulputate, lacus. Cras interdum. Nunc sollicitudin commodo ipsum. Suspendisse non leo. Vivamus nibh dolor,', '2023-12-08 22:00:00', '2024-08-01 22:00:00'),
(172, 2, 'ipsum nunc id enim. Curabitur massa. Vestibulum', 'RFQ35UKG2PW', 'Completed', '2025-09-08', NULL, 'To be decided', 2, 'enim consequat purus. Maecenas libero est, congue a, aliquet vel, vulputate eu, odio. Phasellus at augue id ante dictum cursus. Nunc mauris elit, dictum eu, eleifend nec, malesuada ut, sem. Nulla interdum. Curabitur dictum.', '2024-09-04 22:00:00', '2024-08-17 22:00:00'),
(173, 2, 'arcu. Curabitur ut odio vel est tempor bibendum.', 'EAR84QUY2BC', 'Completed', '2024-10-23', NULL, 'To be decided', 11, 'tempor bibendum. Donec felis orci, adipiscing non, luctus sit amet, faucibus ut, nulla. Cras eu tellus eu augue porttitor interdum. Sed auctor odio', '2025-02-23 22:00:00', '2024-08-02 22:00:00'),
(174, 2, 'at lacus. Quisque purus sapien,', 'JOT74APN2RR', 'Upcoming', '2024-12-30', NULL, 'To be decided', 5, 'turpis. In condimentum. Donec at arcu. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae Donec tincidunt.', '2025-04-23 22:00:00', '2024-08-17 22:00:00'),
(175, 2, 'velit. Pellentesque ultricies dignissim lacus. Aliquam rutrum lorem ac', 'XEN72VIP7TW', 'Upcoming', '2025-02-09', NULL, 'Half Day', 2, 'amet ornare lectus justo eu arcu. Morbi sit amet massa. Quisque porttitor eros nec tellus. Nunc lectus pede, ultrices a, auctor non, feugiat nec, diam. Duis mi enim, condimentum eget, volutpat ornare, facilisis eget, ipsum. Donec sollicitudin adipiscing ligula. Aenean gravida nunc sed pede. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Proin vel arcu eu odio tristique pharetra. Quisque ac libero', '2025-01-20 22:00:00', '2024-08-03 22:00:00'),
(176, 2, 'sed pede. Cum sociis natoque penatibus', 'GDQ63HCJ0FN', 'Upcoming', '2025-09-07', NULL, 'To be decided', 11, 'in, cursus et, eros. Proin ultrices. Duis volutpat nunc sit amet metus. Aliquam erat volutpat. Nulla facilisis. Suspendisse commodo tincidunt nibh. Phasellus nulla.', '2025-02-07 22:00:00', '2024-08-07 22:00:00'),
(177, 2, 'nec ante blandit viverra. Donec tempus,', 'MAF97HXZ1UU', 'Completed', '2025-06-14', NULL, 'Half Day', 5, 'faucibus leo, in lobortis tellus justo sit amet nulla. Donec non justo. Proin non massa non ante bibendum ullamcorper. Duis cursus, diam at pretium aliquet, metus urna convallis erat, eget tincidunt dui augue', '2025-07-20 22:00:00', '2024-08-31 22:00:00'),
(178, 2, 'ridiculus mus. Aenean eget magna.', 'BFR56YBU1XP', 'Completed', '2025-01-22', NULL, 'Half Day', 11, 'sed leo. Cras vehicula aliquet libero. Integer in magna. Phasellus dolor elit, pellentesque a, facilisis non, bibendum sed, est. Nunc laoreet lectus quis massa. Mauris vestibulum, neque sed dictum', '2024-10-29 22:00:00', '2024-08-22 22:00:00'),
(179, 2, 'bibendum sed, est. Nunc laoreet lectus quis', 'PPC17DNB5HO', 'Upcoming', '2025-07-25', NULL, 'All Day', 3, 'ipsum non arcu. Vivamus sit amet risus. Donec egestas. Aliquam nec enim. Nunc ut erat. Sed nunc est, mollis non, cursus non, egestas a, dui. Cras pellentesque. Sed dictum. Proin', '2024-12-04 22:00:00', '2024-08-15 22:00:00'),
(180, 2, 'rutrum lorem ac risus. Morbi', 'YWM74CLW0BG', 'Upcoming', '2025-04-27', NULL, 'All Day', 8, 'justo eu arcu. Morbi sit amet massa. Quisque porttitor eros nec tellus. Nunc lectus pede, ultrices a, auctor non, feugiat nec, diam. Duis mi enim, condimentum eget, volutpat ornare, facilisis eget, ipsum. Donec sollicitudin adipiscing ligula. Aenean gravida nunc sed pede. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Proin vel arcu eu odio tristique pharetra. Quisque ac libero nec ligula consectetuer rhoncus. Nullam velit dui, semper et, lacinia', '2023-10-23 22:00:00', '2024-08-11 22:00:00'),
(181, 2, 'mauris erat eget ipsum. Suspendisse sagittis. Nullam vitae diam.', 'BVQ74KEZ3NT', 'Completed', '2025-02-21', NULL, 'All Day', 7, 'lectus rutrum urna, nec luctus felis purus ac tellus. Suspendisse sed dolor. Fusce', '2024-06-15 22:00:00', '2024-08-22 22:00:00'),
(182, 2, 'felis, adipiscing fringilla,', 'DPX61TLB1OC', 'Upcoming', '2024-10-25', NULL, 'All Day', 8, 'aliquet. Phasellus fermentum convallis ligula. Donec luctus aliquet odio. Etiam ligula tortor, dictum eu, placerat eget, venenatis a, magna. Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Etiam laoreet, libero', '2025-05-21 22:00:00', '2024-08-20 22:00:00'),
(183, 2, 'tempor augue ac ipsum. Phasellus vitae mauris', 'RSY74EMJ5KG', 'Completed', '2025-08-01', NULL, 'To be decided', 4, 'cursus et, magna. Praesent interdum ligula eu enim. Etiam imperdiet dictum magna. Ut tincidunt orci quis lectus. Nullam suscipit, est ac facilisis facilisis, magna tellus faucibus leo, in lobortis tellus justo', '2024-08-04 22:00:00', '2024-08-21 22:00:00'),
(184, 2, 'mi pede, nonummy ut, molestie', 'UKS32WRL1TE', 'Upcoming', '2025-08-21', NULL, 'All Day', 8, 'vitae odio sagittis semper. Nam tempor diam dictum sapien. Aenean massa. Integer vitae nibh. Donec est mauris, rhoncus id, mollis nec, cursus a, enim. Suspendisse aliquet, sem ut cursus luctus, ipsum leo elementum sem, vitae aliquam eros turpis non enim. Mauris quis turpis vitae purus gravida sagittis. Duis gravida. Praesent eu nulla at sem molestie sodales. Mauris blandit enim consequat purus. Maecenas libero est, congue a, aliquet vel, vulputate eu, odio. Phasellus at augue id ante dictum cursus. Nunc mauris elit, dictum eu,', '2024-12-20 22:00:00', '2024-08-01 22:00:00'),
(185, 2, 'ultricies adipiscing, enim mi', 'LFD45ROO5ZY', 'Completed', '2025-05-06', NULL, 'All Day', 10, 'urna convallis erat, eget tincidunt dui augue eu tellus. Phasellus elit pede, malesuada vel, venenatis vel, faucibus id, libero. Donec consectetuer mauris id sapien. Cras dolor dolor, tempus non, lacinia at, iaculis quis, pede. Praesent eu dui. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Aenean eget magna. Suspendisse tristique neque venenatis lacus. Etiam bibendum fermentum metus. Aenean sed pede nec ante blandit viverra. Donec tempus, lorem fringilla ornare placerat, orci lacus vestibulum lorem, sit amet ultricies sem magna nec quam. Curabitur vel lectus. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec dignissim magna a tortor. Nunc commodo', '2024-12-05 22:00:00', '2024-08-15 22:00:00'),
(186, 2, 'velit eget laoreet posuere, enim nisl elementum purus,', 'JOF57ZML8CI', 'Upcoming', '2024-09-25', NULL, 'All Day', 5, 'amet lorem semper auctor. Mauris vel turpis. Aliquam adipiscing lobortis risus. In mi pede, nonummy ut, molestie in, tempus eu, ligula. Aenean euismod mauris eu elit. Nulla facilisi. Sed neque. Sed eget lacus. Mauris non dui nec urna suscipit nonummy. Fusce fermentum fermentum arcu. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae', '2025-01-05 22:00:00', '2024-08-16 22:00:00'),
(187, 2, 'Proin vel arcu eu odio tristique pharetra.', 'TPK73QCQ4VW', 'Upcoming', '2024-09-03', NULL, 'To be decided', 9, 'nunc id enim. Curabitur massa. Vestibulum accumsan neque et nunc. Quisque ornare tortor at risus. Nunc ac sem ut dolor dapibus gravida. Aliquam tincidunt, nunc ac mattis ornare, lectus ante dictum mi, ac mattis velit justo nec ante. Maecenas mi felis, adipiscing fringilla, porttitor vulputate, posuere vulputate, lacus. Cras interdum. Nunc sollicitudin commodo ipsum. Suspendisse non leo. Vivamus nibh dolor, nonummy ac, feugiat non, lobortis quis, pede. Suspendisse dui. Fusce diam nunc, ullamcorper eu, euismod ac, fermentum vel, mauris. Integer sem elit, pharetra ut, pharetra', '2025-01-23 22:00:00', '2024-08-30 22:00:00'),
(188, 2, 'tincidunt nibh.', 'AEJ35JFP9UJ', 'Completed', '2025-08-03', NULL, 'All Day', 3, 'tincidunt aliquam arcu. Aliquam ultrices iaculis odio. Nam interdum enim non nisi. Aenean eget metus. In nec orci. Donec nibh. Quisque nonummy ipsum non arcu. Vivamus sit amet risus. Donec egestas. Aliquam nec enim. Nunc ut erat. Sed nunc est, mollis non, cursus non, egestas a, dui. Cras pellentesque. Sed dictum. Proin eget odio. Aliquam vulputate ullamcorper magna. Sed eu eros. Nam consequat dolor vitae dolor. Donec fringilla. Donec feugiat metus sit amet ante. Vivamus non lorem vitae odio sagittis semper. Nam tempor diam dictum sapien. Aenean massa. Integer vitae nibh. Donec est mauris,', '2024-10-09 22:00:00', '2024-08-09 22:00:00'),
(189, 2, 'Integer vulputate, risus a ultricies', 'AXK28HHJ4VO', 'Upcoming', '2024-11-20', NULL, 'Half Day', 4, 'litora torquent per conubia nostra, per inceptos hymenaeos. Mauris ut quam vel sapien imperdiet ornare. In faucibus. Morbi vehicula. Pellentesque tincidunt tempus risus. Donec egestas. Duis ac arcu. Nunc mauris. Morbi non sapien molestie orci tincidunt adipiscing. Mauris molestie pharetra nibh. Aliquam ornare, libero', '2025-05-24 22:00:00', '2024-08-11 22:00:00'),
(190, 2, 'dolor sit', 'DIF18AVE3RG', 'Completed', '2025-09-30', NULL, 'All Day', 9, 'egestas blandit. Nam nulla magna, malesuada vel, convallis in, cursus et, eros. Proin ultrices. Duis volutpat nunc sit amet metus. Aliquam erat volutpat. Nulla facilisis. Suspendisse commodo tincidunt nibh. Phasellus nulla. Integer vulputate, risus a ultricies adipiscing, enim mi tempor lorem, eget mollis lectus pede et risus. Quisque libero lacus, varius et, euismod et, commodo at, libero. Morbi accumsan laoreet ipsum. Curabitur consequat, lectus sit amet luctus vulputate, nisi sem semper erat, in consectetuer ipsum nunc id enim. Curabitur massa. Vestibulum accumsan neque et nunc. Quisque ornare tortor at risus. Nunc ac sem ut dolor dapibus gravida. Aliquam tincidunt, nunc ac mattis ornare, lectus ante dictum mi, ac mattis velit justo nec ante. Maecenas mi', '2025-03-16 22:00:00', '2024-08-23 22:00:00'),
(191, 2, 'et, magna. Praesent interdum ligula', 'HDY38RYQ3CQ', 'Completed', '2025-08-18', NULL, 'To be decided', 9, 'augue eu tellus. Phasellus elit pede, malesuada vel, venenatis vel, faucibus id, libero. Donec consectetuer mauris id sapien. Cras dolor dolor, tempus non, lacinia at, iaculis quis, pede. Praesent eu dui. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Aenean eget magna. Suspendisse tristique neque venenatis lacus. Etiam bibendum fermentum metus. Aenean sed pede nec ante blandit viverra. Donec tempus, lorem fringilla ornare placerat, orci lacus vestibulum lorem, sit amet ultricies sem magna nec quam. Curabitur vel lectus. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec dignissim magna a tortor. Nunc commodo auctor', '2024-12-25 22:00:00', '2024-08-25 22:00:00'),
(192, 2, 'libero', 'HUL59OUW2JI', 'Completed', '2025-09-18', NULL, 'Half Day', 7, 'mauris eu elit. Nulla facilisi. Sed neque. Sed eget lacus.', '2024-04-12 22:00:00', '2024-08-07 22:00:00'),
(193, 2, 'a, auctor non, feugiat nec, diam. Duis mi enim, condimentum', 'KMQ98YXZ1HM', 'Upcoming', '2025-09-04', NULL, 'Half Day', 8, 'sed dolor. Fusce mi lorem, vehicula et, rutrum eu, ultrices sit amet, risus. Donec nibh enim, gravida sit amet, dapibus id, blandit at, nisi. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Proin vel nisl. Quisque fringilla euismod enim. Etiam gravida molestie arcu. Sed eu nibh vulputate mauris sagittis placerat. Cras dictum ultricies ligula. Nullam enim. Sed nulla ante, iaculis nec, eleifend non, dapibus rutrum, justo. Praesent luctus. Curabitur egestas nunc sed libero. Proin sed turpis nec mauris blandit mattis. Cras eget nisi dictum augue malesuada malesuada. Integer id magna et ipsum cursus vestibulum. Mauris', '2025-08-27 22:00:00', '2024-08-06 22:00:00'),
(194, 2, 'vitae erat vel pede', 'UXU65STD3GK', 'Completed', '2025-06-29', NULL, 'All Day', 2, 'elementum, dui quis accumsan convallis, ante lectus convallis est, vitae sodales nisi magna sed dui. Fusce aliquam, enim nec tempus scelerisque, lorem ipsum sodales purus, in molestie tortor nibh sit amet orci. Ut sagittis lobortis mauris. Suspendisse aliquet molestie tellus. Aenean egestas hendrerit neque. In ornare sagittis felis. Donec tempor, est ac mattis semper, dui lectus rutrum urna, nec luctus felis purus ac tellus. Suspendisse sed dolor. Fusce mi lorem, vehicula et, rutrum eu, ultrices sit', '2023-10-27 22:00:00', '2024-08-30 22:00:00'),
(195, 2, 'ultrices sit amet, risus. Donec nibh enim, gravida', 'JCW21VDD8LO', 'Upcoming', '2025-02-17', NULL, 'All Day', 8, 'eu nibh vulputate mauris sagittis placerat. Cras dictum ultricies ligula. Nullam enim. Sed nulla ante, iaculis nec, eleifend non, dapibus rutrum, justo. Praesent luctus. Curabitur egestas nunc sed libero. Proin sed turpis nec mauris blandit mattis. Cras eget nisi dictum augue malesuada malesuada. Integer id magna et ipsum cursus vestibulum. Mauris magna. Duis dignissim tempor arcu. Vestibulum ut eros non enim commodo hendrerit. Donec porttitor tellus non magna. Nam ligula elit, pretium et, rutrum non, hendrerit id, ante. Nunc mauris sapien, cursus in, hendrerit consectetuer, cursus et, magna. Praesent interdum ligula eu enim. Etiam imperdiet dictum magna. Ut tincidunt orci quis lectus. Nullam suscipit, est ac facilisis facilisis, magna tellus faucibus leo, in lobortis tellus justo sit amet nulla.', '2025-05-10 22:00:00', '2024-08-05 22:00:00'),
(196, 2, 'Praesent interdum ligula eu enim. Etiam', 'ZSL29GBV1FC', 'Upcoming', '2025-05-27', NULL, 'Half Day', 4, 'sagittis lobortis mauris. Suspendisse aliquet molestie tellus. Aenean egestas hendrerit neque. In ornare sagittis felis. Donec tempor,', '2025-03-08 22:00:00', '2024-08-25 22:00:00'),
(197, 2, 'risus, at fringilla purus mauris', 'TNA10CFJ8XG', 'Completed', '2024-11-05', NULL, 'All Day', 4, 'penatibus et magnis dis parturient montes, nascetur ridiculus mus. Proin vel arcu eu odio tristique pharetra. Quisque ac libero nec ligula consectetuer rhoncus. Nullam velit dui, semper et, lacinia vitae, sodales at, velit. Pellentesque ultricies dignissim lacus. Aliquam rutrum lorem ac risus. Morbi metus. Vivamus euismod urna. Nullam lobortis quam a felis ullamcorper viverra. Maecenas iaculis aliquet diam. Sed diam lorem, auctor quis, tristique ac, eleifend vitae, erat. Vivamus nisi. Mauris nulla. Integer urna. Vivamus molestie dapibus ligula. Aliquam erat volutpat. Nulla dignissim. Maecenas ornare egestas ligula. Nullam feugiat placerat velit. Quisque varius. Nam porttitor scelerisque neque. Nullam nisl. Maecenas malesuada fringilla est. Mauris eu turpis. Nulla aliquet. Proin velit. Sed malesuada', '2024-01-24 22:00:00', '2024-08-08 22:00:00'),
(198, 2, 'a', 'YYC08AEG5KK', 'Completed', '2024-09-06', NULL, 'To be decided', 6, 'scelerisque mollis. Phasellus libero mauris, aliquam eu, accumsan sed, facilisis vitae, orci.', '2024-02-06 22:00:00', '2024-08-27 22:00:00'),
(199, 2, 'turpis. Aliquam adipiscing lobortis risus. In mi pede,', 'ROO24UMM8QE', 'Upcoming', '2025-01-04', NULL, 'All Day', 3, 'massa. Quisque', '2024-11-22 22:00:00', '2024-08-25 22:00:00'),
(200, 2, 'et magnis dis parturient', 'SLD13XJY9NX', 'Completed', '2025-05-18', NULL, 'All Day', 2, 'mauris sapien, cursus in, hendrerit consectetuer, cursus et, magna. Praesent interdum ligula eu enim. Etiam imperdiet dictum magna. Ut tincidunt orci quis lectus. Nullam suscipit, est ac facilisis facilisis, magna tellus faucibus leo, in lobortis tellus justo sit amet nulla. Donec non justo. Proin non massa non ante bibendum ullamcorper. Duis cursus, diam at pretium aliquet, metus urna convallis erat, eget tincidunt dui augue eu tellus. Phasellus elit pede, malesuada vel, venenatis vel, faucibus id, libero. Donec consectetuer mauris id sapien. Cras dolor dolor, tempus non, lacinia at, iaculis quis, pede. Praesent eu dui. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Aenean eget magna.', '2025-08-17 22:00:00', '2024-08-15 22:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `members`
--

CREATE TABLE `members` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `membership_id` bigint(20) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `members`
--

INSERT INTO `members` (`id`, `user_id`, `membership_id`, `created_at`, `updated_at`) VALUES
(1, 2, 2, '2024-09-04 07:16:01', '2024-09-09 07:36:14');

-- --------------------------------------------------------

--
-- Table structure for table `memberships`
--

CREATE TABLE `memberships` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `description` longtext DEFAULT NULL,
  `level` int(11) DEFAULT NULL,
  `fee` bigint(20) DEFAULT NULL,
  `priority` int(11) DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `memberships`
--

INSERT INTO `memberships` (`id`, `user_id`, `name`, `description`, `level`, `fee`, `priority`, `slug`, `created_at`, `updated_at`) VALUES
(2, 2, 'Platinum Membership', '<p><span style=\"background-color: rgb(255, 255, 255); color: rgb(83, 83, 83);\">Membership is on the corporate level and available to any SEC-registered investment company (open-end, closed-end, and exchange-traded funds), their investment advisers and principal underwriters as well as investment managers sponsoring regulated funds offered to investors in jurisdictions worldwide. All SEC-registered investment companies under substantially common management, ownership or sponsorship are required to join ICI for the fund group to be eligible for membership. The annual dues are based on the total net assets of the registered funds under substantially common management, ownership or sponsorship.</span></p><ul><li>Great</li><li>Interesting</li></ul>', 1, 10, 1, 'platinum-membership', '2024-09-03 05:55:32', '2024-09-03 07:19:33'),
(3, 2, 'Gold Membership', '<p><span style=\"background-color: rgb(255, 255, 255); color: rgb(83, 83, 83);\">Membership is on the corporate level and available to any SEC-registered investment company (open-end, closed-end, and exchange-traded funds), their investment advisers and principal underwriters as well as investment managers sponsoring regulated funds offered to investors in jurisdictions worldwide. </span></p><p><span style=\"background-color: rgb(255, 255, 255); color: rgb(83, 83, 83);\">All SEC-registered investment companies under substantially common management, ownership or sponsorship are required to join ICI for the fund group to be eligible for membership. The annual dues are based on the total net assets of the registered funds under substantially common management, ownership or sponsorship.</span></p>', 2, 20, 2, 'gold-membership', '2024-09-03 06:08:27', '2024-09-03 07:20:40'),
(4, 2, 'Standard Membership', '<p><span style=\"background-color: rgb(255, 255, 255);\">The&nbsp;</span><a href=\"https://www.apa.org/pubs/reports/health-misinformation\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(0, 0, 0); background-color: rgb(255, 255, 255);\">spread of misinformation and disinformation</a><span style=\"background-color: rgb(255, 255, 255);\">&nbsp;has affected our ability to improve public health, address climate change, maintain a stable democracy, and more. By providing valuable insight into how and why we are likely to believe misinformation and disinformation, psychological science can inform how we protect ourselves against its ill effects.</span></p>', 3, 30, 3, 'standard-membership', '2024-09-03 07:29:00', '2024-09-03 07:29:00');

-- --------------------------------------------------------

--
-- Table structure for table `member_orders`
--

CREATE TABLE `member_orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `member_id` bigint(20) DEFAULT NULL,
  `membership_id` bigint(20) DEFAULT NULL,
  `member_fee` bigint(20) DEFAULT NULL,
  `paid_amount` bigint(20) DEFAULT NULL,
  `start_date` varchar(255) DEFAULT NULL,
  `duration` varchar(255) DEFAULT NULL,
  `end_date` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `member_orders`
--

INSERT INTO `member_orders` (`id`, `user_id`, `member_id`, `membership_id`, `member_fee`, `paid_amount`, `start_date`, `duration`, `end_date`, `status`, `created_at`, `updated_at`) VALUES
(7, 2, 1, 2, 10, 60, NULL, '6', NULL, 'Processing', '2024-09-09 07:36:14', '2024-09-09 07:36:43');

-- --------------------------------------------------------

--
-- Table structure for table `member_order_infos`
--

CREATE TABLE `member_order_infos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `member_order_id` bigint(20) DEFAULT NULL,
  `membership_id` bigint(20) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `address` longtext DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `profession` varchar(255) DEFAULT NULL,
  `company_name` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `member_order_infos`
--

INSERT INTO `member_order_infos` (`id`, `user_id`, `member_order_id`, `membership_id`, `name`, `phone`, `country`, `address`, `email`, `profession`, `company_name`, `created_at`, `updated_at`) VALUES
(7, 2, 7, 2, 'Chovava', '45', 'Zimbabwe', '67', 'cho@email.com', 'Good', 'first', '2024-09-09 07:36:14', '2024-09-09 07:36:14');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2024_08_23_110834_create_sectors_table', 1),
(6, '2024_08_23_110842_create_countries_table', 1),
(7, '2024_08_23_110853_create_opportunities_table', 1),
(8, '2024_08_23_110904_create_opportunity_sectors_table', 1),
(9, '2024_08_23_122013_create_opportunity_images_table', 2),
(10, '2024_08_26_163353_create_roles_table', 3),
(12, '2024_08_30_151617_create_events_table', 4),
(14, '2024_08_31_105545_create_news_table', 5),
(16, '2024_09_02_173120_create_memberships_table', 6),
(17, '2024_09_03_105643_create_members_table', 7),
(18, '2024_09_03_105651_create_member_orders_table', 7),
(19, '2024_09_03_105728_create_member_order_infos_table', 7);

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

CREATE TABLE `news` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `description` longtext DEFAULT NULL,
  `priority` int(11) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `date` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `news`
--

INSERT INTO `news` (`id`, `user_id`, `title`, `description`, `priority`, `image`, `slug`, `status`, `date`, `created_at`, `updated_at`) VALUES
(1, 2, 'Until recently, the prevailing view assumed lorem ipsum was born as a nonsense text.', '<p>Until recently, the prevailing view assumed&nbsp;<em>lorem ipsum</em>&nbsp;was born as a nonsense text. “It’s not Latin, though it looks like it, and it actually says nothing,” Before &amp; After magazine&nbsp;<a href=\"https://www.straightdope.com/columns/read/2290/what-does-the-filler-text-lorem-ipsum-mean/\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: inherit;\">answered a curious reader</a>, “Its ‘words’ loosely approximate the frequency with which letters occur in English, which is why at a glance it looks pretty real.”</p><p>As Cicero would put it, “Um, not so fast.”</p><p>The placeholder text, beginning with the line “Lorem ipsum dolor sit amet, consectetur adipiscing elit”, looks like Latin because in its youth, centuries ago, it was Latin.</p><p>Richard McClintock, a Latin scholar from Hampden-Sydney College, is&nbsp;<a href=\"https://en.wikipedia.org/wiki/Lorem_ipsum\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: inherit;\">credited</a>&nbsp;with discovering the source behind the ubiquitous filler text. In seeing a sample of lorem ipsum, his interest was piqued by consectetur—a genuine, albeit rare, Latin word. Consulting a Latin dictionary led McClintock to a passage from De Finibus Bonorum et Malorum (“On the Extremes of Good and Evil”), a first-century B.C. text from the Roman philosopher Cicero.</p><p>In particular, the garbled words of&nbsp;<em>lorem ipsum</em>&nbsp;bear an unmistakable resemblance to sections 1.10.32–33 of Cicero’s work, with the most notable passage excerpted below:</p><blockquote>“Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem.”</blockquote><p>A 1914 English translation by&nbsp;<a href=\"https://en.wikipedia.org/wiki/Lorem_ipsum#English_translation\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: inherit;\">Harris Rackham</a>&nbsp;reads:</p><blockquote>“Nor is there anyone who loves or pursues or desires to obtain pain of itself, because it is pain, but occasionally circumstances occur in which toil and pain can procure him some great pleasure.”</blockquote><p>McClintock’s eye for detail certainly helped narrow the whereabouts of lorem ipsum’s origin, however, the “how and when” still remain something of a mystery, with competing theories and timelines.</p>', 2, 'assets/img/news/news_20244460.jpg', 'assumed-lorem-ipsum-was-born', 'Published', NULL, '2024-08-31 10:44:28', '2024-08-31 13:14:09'),
(2, 2, 'Remixing a Classic Remixing a Classic Remixing a Classic', '<p>So how did the classical Latin become so incoherent? According to McClintock, a 15th century typesetter likely scrambled part of Cicero\'s&nbsp;<em>De Finibus</em>&nbsp;in order to provide placeholder text to mockup various fonts for a type specimen book.</p><p>It\'s difficult to find examples of&nbsp;<em>lorem ipsum</em>&nbsp;in use before Letraset made it popular as a dummy text in the 1960s, although McClintock says he remembers coming across the&nbsp;<em>lorem ipsum</em>&nbsp;passage in a book of old metal type samples. So far he hasn\'t relocated where he once saw the passage, but the popularity of Cicero in the 15th century supports the theory that the filler text has been used for centuries.</p><p>And anyways, as&nbsp;<a href=\"https://www.straightdope.com/columns/read/2290/what-does-the-filler-text-lorem-ipsum-mean/\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: inherit;\">Cecil Adams reasoned</a>, “[Do you really] think graphic arts supply houses were hiring classics scholars in the 1960s?” Perhaps. But it seems reasonable to imagine that there was a version in use far before the age of Letraset.</p><p>McClintock&nbsp;<a href=\"http://www.loremipsum.de/about_lorem_ipsum.html\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: inherit;\">wrote</a>&nbsp;to&nbsp;<em>Before &amp; After</em>&nbsp;to explain his discovery:</p><blockquote>“What I find remarkable is that this text has been the industry’s standard dummy text ever since some printer in the 1500s took a galley of type and scrambled it to make a type specimen book; it has survived not only four centuries of letter-by-letter resetting but even the leap into electronic typesetting, essentially unchanged except for an occasional ‘ing’ or ‘y’ thrown in. It\'s ironic that when the then-understood Latin was scrambled, it became as incomprehensible as Greek; the phrase ‘it’s Greek to me’ and ‘greeking’ have common semantic roots!” (The editors published his letter in a correction headlined “Lorem Oopsum”).</blockquote><p>As an&nbsp;<a href=\"https://www.deepadvantage.com/blog/lorem-ipsum/\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: inherit;\">alternative theory</a>, (and because Latin scholars do this sort of thing) someone tracked down a 1914 Latin edition of&nbsp;<em>De Finibus</em>&nbsp;which challenges McClintock\'s 15th century claims and suggests that the dawn of&nbsp;<em>lorem ipsum</em>&nbsp;was as recent as the 20th century. The 1914 Loeb Classical Library Edition ran out of room on page 34 for the Latin phrase “dolorem ipsum” (sorrow in itself). Thus, the truncated phrase leaves one page dangling with “do-”, while another begins with the now ubiquitous “lorem ipsum”.</p><p>Whether a medieval typesetter chose to garble a well-known (but non-Biblical—that would have been sacrilegious) text, or whether a quirk in the 1914 Loeb Edition inspired a graphic designer, it\'s admittedly an odd way for Cicero to sail into the 21st century.</p>', 2, 'assets/img/news/news_202453148.jpg', 'remixing-a-classic', 'Published', NULL, '2024-08-31 10:53:40', '2024-08-31 13:15:32'),
(3, 2, 'The purpose of lorem ipsum is to create a natural looking block of text', '<p>Lorem ipsum, or lipsum as it is sometimes known, is dummy text used in laying out print, graphic or web designs. The passage is attributed to an unknown typesetter in the 15th century who is thought to have scrambled parts of Cicero\'s De Finibus Bonorum et Malorum for use in a type specimen book. It usually begins with:</p><blockquote>“Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.”</blockquote><p>The purpose of lorem ipsum is to create a natural looking block of text (sentence, paragraph, page, etc.) that doesn\'t distract from the layout. A practice not without controversy, laying out pages with meaningless filler text can be very useful when the focus is meant to be on design, not content.</p><ul><li>The passage experienced a surge in popularity during the 1960s when Letraset used it on their dry-transfer sheets, and again during the 90s as desktop publishers bundled the text with their software. Today it\'s seen all around the web; on templates, websites, and stock designs. Use our generator to get your own, or read on for the authoritative history of lorem ipsum.</li></ul>', 1, 'assets/img/news/news_202452138.jpg', 'purpose-of-lorem-ipsum', 'Published', NULL, '2024-08-31 11:52:23', '2024-08-31 13:12:16'),
(5, 2, 'Don\'t bother typing “lorem ipsum” into Google translate.', '<p>Don\'t bother typing “lorem ipsum” into Google translate. If you already tried, you may have gotten&nbsp;<a href=\"https://krebsonsecurity.com/2014/08/lorem-ipsum-of-good-evil-google-china/\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: inherit;\">anything from \"NATO\" to \"China\"</a>, depending on how you capitalized the letters. The bizarre translation was fodder for conspiracy theories, but Google has since updated its “lorem ipsum” translation to, boringly enough, “lorem ipsum”.</p><p>One brave soul did take a stab at translating the almost-not-quite-Latin. According to&nbsp;<a href=\"https://www.theguardian.com/books/booksblog/2014/mar/21/lorem-ipsum-translated-latin-placeholder-text\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: inherit;\">The Guardian</a>, Jaspreet Singh Boparai undertook the challenge with the goal of making the text “precisely as incoherent in English as it is in Latin - and to make it incoherent in the same way”. As a result, “the Greek ‘eu’ in Latin became the French ‘bien’ [...] and the ‘-ing’ ending in ‘lorem ipsum’ seemed best rendered by an ‘-iendum’ in English.”</p><p>Here is the classic lorem ipsum passage followed by Boparai\'s odd, yet mesmerizing version:</p><blockquote>“Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam hendrerit nisi sed sollicitudin pellentesque. Nunc posuere purus rhoncus pulvinar aliquam. Ut aliquet tristique nisl vitae volutpat. Nulla aliquet porttitor venenatis. Donec a dui et dui fringilla consectetur id nec massa. Aliquam erat volutpat. Sed ut dui ut lacus dictum fermentum vel tincidunt neque. Sed sed lacinia lectus. Duis sit amet sodales felis. Duis nunc eros, mattis at dui ac, convallis semper risus. In adipiscing ultrices tellus, in suscipit massa vehicula eu.”</blockquote><p><br></p><p>Boparai’s version:</p><blockquote>“Rrow itself, let it be sorrow; let him love it; let him pursue it, ishing for its acquisitiendum. Because he will ab hold, uniess but through concer, and also of those who resist. Now a pure snore disturbeded sum dust. He ejjnoyes, in order that somewon, also with a severe one, unless of life. May a cusstums offficer somewon nothing of a poison-filled. Until, from a twho, twho chaffinch may also pursue it, not even a lump. But as twho, as a tank; a proverb, yeast; or else they tinscribe nor. Yet yet dewlap bed. Twho may be, let him love fellows of a polecat. Now amour, the, twhose being, drunk, yet twhitch and, an enclosed valley’s always a laugh. In acquisitiendum the Furies are Earth; in (he takes up) a lump vehicles bien.”</blockquote><p><br></p><p>Nick Richardson&nbsp;<a href=\"https://www.lrb.co.uk/blog/2014/03/14/nick-richardson/translating-lorem-ipsum/\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: inherit;\">described</a>&nbsp;the translation “like extreme&nbsp;<a href=\"https://www.lrb.co.uk/v24/n22/stephane-mallarme/notes-for-anatoles-tomb\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: inherit;\">Mallarmé</a>, or a&nbsp;<a href=\"https://www.lrb.co.uk/v15/n18/jeremy-harding/junk-mail\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: inherit;\">Burroughsian</a>&nbsp;cut-up, or a paragraph of&nbsp;<a href=\"https://www.lrb.co.uk/v32/n24/michael-wood/quashed-quotatoes\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: inherit;\">Finnegans Wake</a>. Bits of it have surprising power: the desperate insistence on loving and pursuing sorrow, for instance, that is cheated out of its justification—an incomplete object that has been either fished for, or wished for.”</p>', 3, 'assets/img/news/news_202418569.jpg', 'bother-typing-lorem ipsum-into-google-translate', 'Published', NULL, '2024-08-31 13:18:28', '2024-08-31 13:18:42'),
(6, 2, 'The decade that brought us Star Trek', '<p>The decade that brought us&nbsp;<em>Star Trek</em>&nbsp;and&nbsp;<em>Doctor Who</em>&nbsp;also resurrected Cicero—or at least what used to be Cicero—in an attempt to make the days before computerized design a little less painstaking.</p><p>The French lettering company&nbsp;<a href=\"https://en.wikipedia.org/wiki/Letraset\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: inherit;\">Letraset</a>&nbsp;manufactured a set of dry-transfer sheets which included the&nbsp;<em>lorem ipsum</em>&nbsp;filler text in a variety of fonts, sizes, and layouts. These sheets of lettering could be rubbed on anywhere and were quickly adopted by graphic artists, printers, architects, and advertisers for their professional look and ease of use.</p><p>Aldus Corporation, which later merged with Adobe Systems, ushered&nbsp;<em>lorem ipsum</em>&nbsp;into the information age with its desktop publishing software&nbsp;<a href=\"https://en.wikipedia.org/wiki/Adobe_PageMaker\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: inherit;\">Aldus PageMaker</a>. The program came bundled with&nbsp;<em>lorem ipsum</em>&nbsp;dummy text for laying out page content, and other word processors like Microsoft Word followed suit. More recently the growth of web design has helped proliferate lorem ipsum across the internet as a placeholder for future text—and in some cases&nbsp;<a href=\"http://loremoopsum.tumblr.com/\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: inherit;\">the final content</a>&nbsp;(this is why we proofread, kids).</p>', 3, 'assets/img/news/news_202420529.jpg', 'the-decade-that-brought-us', 'Published', NULL, '2024-08-31 13:20:10', '2024-08-31 13:20:10'),
(7, 2, 'Design or (Dis)content', '<p>Among design professionals, there\'s a bit of controversy surrounding the filler text. Controversy, as in&nbsp;<a href=\"https://www.lukew.com/ff/entry.asp?927\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: inherit;\">Death to Lorem Ipsum</a>.</p><p>The strength of&nbsp;<em>lorem ipsum</em>&nbsp;is its weakness: it doesn\'t communicate. To some, designing a website around placeholder text is unacceptable, akin to sewing a custom suit without taking measurements.&nbsp;<a href=\"http://adaptivepath.org/ideas/death-to-lorem-ipsum-other-adventures-in-content/\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: inherit;\">Kristina Halvorson</a>&nbsp;notes:</p><blockquote>“I’ve heard the argument that ‘lorem ipsum’ is effective in wireframing or design because it helps people focus on the actual layout, or color scheme, or whatever. What kills me here is that we’re talking about creating a user experience that will (whether we like it or not) be DRIVEN by words. The entire structure of the page or app flow is FOR THE WORDS.”</blockquote><p><br></p><p><em>Lorem ipsum</em>&nbsp;is so ubiquitous because it is so versatile. Select how many paragraphs you want, copy, paste, and break the lines wherever it is convenient. Real copy doesn\'t work that way.As front-end developer&nbsp;<a href=\"https://www.smashingmagazine.com/2010/01/lorem-ipsum-killing-designs/\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: inherit;\">Kyle Fiedler put it</a>:</p><blockquote>“When you are designing with Lorem Ipsum, you diminish the importance of the copy by lowering it to the same level as any other visual element. The text simply becomes another supporting role, serving to make other aspects more aesthetic. Instead of your design enhancing the meaning of the content, your content is enhancing your design.”</blockquote><p><br></p><p>But despite zealous cries for the demise of&nbsp;<em>lorem ipsum</em>, others, such as&nbsp;<a href=\"https://karenmcgrane.com/2010/01/10/in-defense-of-lorem-ipsum/\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: inherit;\">Karen McGrane</a>, offer appeals for moderation:</p><blockquote>“Lorem Ipsum doesn’t exist because people think the content is meaningless window dressing, only there to be decorated by designers who can’t be bothered to read. Lorem Ipsum exists because words are powerful. If you fill up your page with draft copy about your client’s business, they will read it. They will comment on it. They will be inexorably drawn to it. Presented the wrong way, draft copy can send your design review off the rails.”</blockquote><p><br></p><p>And that’s why a 15th century typesetter might have scrambled a passage of Cicero; he wanted people to focus on his fonts, to imagine their own content on the pages. He wanted people to see, and to get them to see he had to keep them from reading.</p>', 3, 'assets/img/news/news_202421827.jpg', 'design-or-discontent', 'Published', NULL, '2024-08-31 13:21:58', '2024-08-31 13:21:58'),
(8, 2, 'Form Over Function', '<p><u>So when is it okay to use&nbsp;</u><em><u>lorem ipsum</u></em><u>?</u> <strong>First,&nbsp;<em>lorem ipsum</em>&nbsp;works well for staging</strong>. It\'s like the props in a furniture store—filler text makes it look like someone is home. The same Wordpress template might eventually be home to a fitness blog, a photography website, or the online journal of a cupcake fanatic.&nbsp;<em>Lorem ipsum</em>&nbsp;helps them imagine what the lived-in website might look like.</p><p>Second, use&nbsp;<em>lorem ipsum</em>&nbsp;if you think the placeholder text will be too distracting. For specific projects, collaboration between copywriters and designers may be best, however, like Karen McGrane said, draft copy has a way of turning any meeting about layout decisions into a discussion about word choice. So don\'t be afraid to use&nbsp;<em>lorem ipsum</em>&nbsp;to keep everyone focused.</p><p>One word of caution: make sure your client knows that&nbsp;<em>lorem ipsum</em>&nbsp;is filler text. You don\'t want them wondering why you filled their website with a foreign language, and you certainly don\'t want anyone prematurely publishing it.</p>', 3, 'assets/img/news/news_202423516.jpg', 'form-over-function', 'Unpublished', NULL, '2024-08-31 13:23:11', '2024-08-31 13:30:10'),
(9, 2, 'Sequence opted to hand-Sharpie', '<p>There was&nbsp;<a href=\"http://designenvy.aiga.org/the-chipotle-lorem-ipsum-bag/\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: inherit;\">that time</a>&nbsp;artists at Sequence opted to hand-Sharpie the&nbsp;<em>lorem ipsum</em>&nbsp;passage on a line of paper bags they designed for Chipotle—the result being a mixture of avant-garde, inside joke, and Sharpie-stained tables. Those with an eye for detail may have caught a tribute to the classic text in an episode of&nbsp;<a href=\"http://www.amc.com/shows/mad-men\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: inherit;\">Mad Men</a>&nbsp;(S6E1 around 1:18:55 for anyone that didn’t). And here is a&nbsp;<em>lorem ipsum</em>&nbsp;<a href=\"http://littlerunningbear.com/465/lorem-ipsum-for-ever/\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: inherit;\">tattoo</a>.Of course, we\'d be remiss not to include the veritable cadre of&nbsp;<em>lorem ipsum</em>&nbsp;knock offs featuring:</p><ul><li><a href=\"https://baconipsum.com/\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: inherit;\">Bacon Ipsum</a>&nbsp;– Served all day. “Bacon ipsum dolor amet chicken turducken spare ribs.”</li><li><a href=\"https://hipsum.co/\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: inherit;\">Hipster Ipsum</a>&nbsp;– In case you\'re in need of a “shoreditch direct trade four dollar toast copper mug.”</li><li><a href=\"http://legalipsum.com/\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: inherit;\">Legal Ipsum</a>&nbsp;– Fully unlicensed legalese for those times you don\'t want to pay $400/hr.</li></ul><p>Not to mention,&nbsp;<a href=\"http://www.cupcakeipsum.com/\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: inherit;\">Cupcake Ipsum</a>,&nbsp;<a href=\"http://www.bobrosslipsum.com/\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: inherit;\">Bob Ross Ipsum</a>&nbsp;(“happy little clouds”), and the furry&nbsp;<a href=\"http://www.catipsum.com/\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: inherit;\">Cat Ipsum</a>. And in case that\'s not enough, check out our very own&nbsp;<a href=\"https://loremipsum.io/ultimate-list-of-lorem-ipsum-generators/\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: inherit;\">Ultimate List of Lorem Ipsum Generators</a>.So there you have it.&nbsp;<em>Lorem ipsum</em>: the nonsense words unable to fully escape meaning.</p>', 4, 'assets/img/news/news_202425642.jpg', 'sequence-opted-to-hand-sharpie', 'Published', NULL, '2024-08-31 13:25:19', '2024-08-31 13:25:19'),
(10, 2, 'Translation by H. Rackham', '<p>Original Latin text:</p><blockquote>“Sed ut perspiciatis, unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam eaque ipsa, quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt, explicabo. Nemo enim ipsam voluptatem, quia voluptas sit, aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos, qui ratione voluptatem sequi nesciunt, neque porro quisquam est, qui dolorem ipsum, quia dolor sit amet consectetur adipisci[ng] velit, sed quia non numquam [do] eius modi tempora inci[di]dunt, ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit, qui in ea voluptate velit esse, quam nihil molestiae consequatur, vel illum, qui dolorem eum fugiat, quo voluptas nulla pariatur?”</blockquote><p><br></p><p>Translation by H. Rackham:</p><blockquote>“But I must explain to you how all this mistaken idea of denouncing of a pleasure and praising pain was born and I will give you a complete account of the system, and expound the actual teachings of the great explorer of the truth, the master-builder of human happiness. No one rejects, dislikes, or avoids pleasure itself, because it is pleasure, but because those who do not know how to pursue pleasure rationally encounter consequences that are extremely painful. Nor again is there anyone who loves or pursues or desires to obtain pain of itself, because it is pain, but occasionally circumstances occur in which toil and pain can procure him some great pleasure. To take a trivial example, which of us ever undertakes laborious physical exercise, except to obtain some advantage from it? But who has any right to find fault with a man who chooses to enjoy a pleasure that has no annoying consequences, or one who avoids a pain that produces no resultant pleasure?”</blockquote>', 2, 'assets/img/news/news_202405196.jpg', 'translation-by-h-rackham', 'Published', NULL, '2024-08-31 13:32:10', '2024-08-31 15:05:36');

-- --------------------------------------------------------

--
-- Table structure for table `opportunities`
--

CREATE TABLE `opportunities` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `country_id` bigint(20) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `priority` int(11) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `description` longtext DEFAULT NULL,
  `short_description` longtext DEFAULT NULL,
  `amount` bigint(20) DEFAULT NULL,
  `expected_return` bigint(20) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `opportunities`
--

INSERT INTO `opportunities` (`id`, `user_id`, `country_id`, `name`, `slug`, `priority`, `status`, `description`, `short_description`, `amount`, `expected_return`, `created_at`, `updated_at`) VALUES
(8, 2, 10, 'Construction of multifunctional farms', 'op', 1, 'Processing', 'Grain farming and livestock rearing are sectors that are under developed in the country. Build Operate and Transfer model is the preferred model.', 'Construction of multi-functional farms in 4 districts', 8000000, 10000000, '2024-08-28 06:43:42', '2024-08-28 11:35:28'),
(9, 2, 10, 'Construction of a Dairy Complex', 'construction-of-a-dairy-complex', 4, 'Processing', 'Chad imports 10000tons of dairy products annually. Regardless of the fact that the weather is appropriate for diary production- local product is very low and characterised by a variety of small players- A ready local market and potential export to neighbouring countries characterises this investment opportunity.', 'A dairy complex needs to be built to supply 30% of the countries dairy requirements.', 1500000, 10000000, '2024-08-28 08:32:14', '2024-08-28 11:33:34'),
(10, 2, 10, 'Setup an Oil Refinery', 'setup-an-oil-refinery', 2, 'Processing', 'Chad is now a great producer of crude oil. Except for the new oil refinery in Nigeria setup by Dangote- there is no other significant sized oil refinery in Africa. The market is too big to fulfil and oil will remain a major source of energy for at least the next 50 years. Invest in an Oil Refinery and reap the rewards.', 'Oil Refinery setup', 50000000, 100000000, '2024-08-28 11:37:50', '2024-08-28 11:37:50'),
(11, 2, 11, 'An offer of Cashew Nuts for export', 'an-offer-of-cashew-nuts-for-export', 6, 'Processing', 'The cashew nuts are export quality and are going for $800 per ton. Compared to international prices – consistent supply is available for a long term contract. Samples of the nuts can be provided as well. This is a great investment opportunity that is easy to implement with quick', 'Non GMO high quality pre-screened and pre-packed cashew nuts are available export.', 8000000, 40000000, '2024-08-28 11:40:43', '2024-08-28 11:41:23'),
(13, 2, 12, 'Creation of a National Airline', 'creation-of-a-national-airline', 3, 'Processing', 'Consultation – provision of detailed requirements for the setup of a national airline.  The Central African Republic has decided to start a national airline that will serve both the public and VIP civil servants. Consultancy required as well as the actually implementation of the project', 'The Central African Republic has decided to start a national airline that will serve both the public and VIP civil servants. Consultancy required as well as the actually implementation of the project', 3000000, 4000000, '2024-08-28 11:47:14', '2024-08-28 11:47:14'),
(14, 2, 13, 'Creation of a National Airline', 'creation-of-a-national-airline', 2, 'Processing', 'Consultation – provision of detailed requirements for the setup of a national airline. Registering the airline internationally. Implementation – provision of aircrafts for leasing or outright purchase. Provision of other requirements for the airline to become operational and internationally recognised.', 'The Central African Republic has decided to start a national airline that will serve both the public and VIP civil servants. Consultancy required as well as the actually implementation of the project', 300000, 700000, '2024-08-28 11:49:37', '2024-08-28 11:49:37'),
(15, 2, 8, 'Construction of 10 health centres', 'construction-of-10-health-centres', 5, 'Processing', 'The project is NGO funded and in partnership with the government. An investor with prior experience in the Health sector is preferred.', 'The investor is required to construct 10 health facilities as well as purchase the health equipment.', 11500000, 20000000, '2024-08-28 11:56:31', '2024-08-28 11:56:31'),
(16, 2, 11, 'Creation of a National Airline', 'creation-of-a-national-airline', 6, 'Processing', 'The Central African Republic has decided to start a national airline that will serve both the public and VIP civil servants. Consultancy required as well as the actually implementation of the project', 'The Central African Republic has decided to start a national airline that will serve both the public and VIP civil servants. Consultancy required as well as the actually implementation of the project', 1000000, 3000000, '2024-08-28 11:59:17', '2024-08-28 11:59:17'),
(17, 2, 14, 'Supply of an aircraft', 'supply-of-an-aircraft', 1, 'Completed', 'An investor is sought after that will supply an aircraft to operate on the given routes on a long term lease. The option to sell the aircraft outright on a rent to own scheme is negotiable. Maintenance services of the aircraft are an essential part of the deal. A straightforward investment opportunity not to miss.', 'An aircraft is required to operate between Freetown-London, Freetown – Bissau and Lisbon-London', 2000000, 10000020, '2024-08-28 12:01:28', '2024-08-29 09:23:21');

-- --------------------------------------------------------

--
-- Table structure for table `opportunity_images`
--

CREATE TABLE `opportunity_images` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `opportunity_id` bigint(20) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `opportunity_images`
--

INSERT INTO `opportunity_images` (`id`, `image`, `user_id`, `opportunity_id`, `created_at`, `updated_at`) VALUES
(9, 'assets/img/opportunity/opportunity_202408012254.jpg', 2, 9, '2024-08-28 11:33:34', '2024-08-28 11:33:34'),
(10, 'assets/img/opportunity/opportunity_202408015098.jpg', 2, 9, '2024-08-28 11:33:34', '2024-08-28 11:33:34'),
(11, 'assets/img/opportunity/opportunity_202408012917.jpg', 2, 9, '2024-08-28 11:33:34', '2024-08-28 11:33:34'),
(12, 'assets/img/opportunity/opportunity_202408019599.jpg', 2, 9, '2024-08-28 11:33:34', '2024-08-28 11:33:34'),
(13, 'assets/img/opportunity/opportunity_202408011761.jpg', 2, 8, '2024-08-28 11:35:28', '2024-08-28 11:35:28'),
(14, 'assets/img/opportunity/opportunity_202408018590.jpg', 2, 8, '2024-08-28 11:35:28', '2024-08-28 11:35:28'),
(15, 'assets/img/opportunity/opportunity_202408012136.jpg', 2, 8, '2024-08-28 11:35:28', '2024-08-28 11:35:28'),
(16, 'assets/img/opportunity/opportunity_202408015316.jpg', 2, 8, '2024-08-28 11:35:28', '2024-08-28 11:35:28'),
(17, 'assets/img/opportunity/opportunity_202408015213.jpg', 2, 10, '2024-08-28 11:37:50', '2024-08-28 11:37:50'),
(18, 'assets/img/opportunity/opportunity_202408014930.jpg', 2, 10, '2024-08-28 11:37:50', '2024-08-28 11:37:50'),
(19, 'assets/img/opportunity/opportunity_202408017447.jpg', 2, 10, '2024-08-28 11:37:50', '2024-08-28 11:37:50'),
(20, 'assets/img/opportunity/opportunity_202408011972.jpg', 2, 10, '2024-08-28 11:37:50', '2024-08-28 11:37:50'),
(21, 'assets/img/opportunity/opportunity_202408019747.jpg', 2, 11, '2024-08-28 11:40:43', '2024-08-28 11:40:43'),
(22, 'assets/img/opportunity/opportunity_202408013000.jpg', 2, 11, '2024-08-28 11:40:43', '2024-08-28 11:40:43'),
(23, 'assets/img/opportunity/opportunity_202408018459.jpg', 2, 11, '2024-08-28 11:40:43', '2024-08-28 11:40:43'),
(24, 'assets/img/opportunity/opportunity_20240801938.jpg', 2, 11, '2024-08-28 11:40:43', '2024-08-28 11:40:43'),
(29, 'assets/img/opportunity/opportunity_202408014504.jpg', 2, 13, '2024-08-28 11:47:14', '2024-08-28 11:47:14'),
(30, 'assets/img/opportunity/opportunity_202408014007.jpg', 2, 13, '2024-08-28 11:47:14', '2024-08-28 11:47:14'),
(31, 'assets/img/opportunity/opportunity_202408015463.jpg', 2, 13, '2024-08-28 11:47:14', '2024-08-28 11:47:14'),
(32, 'assets/img/opportunity/opportunity_202408013506.jpg', 2, 13, '2024-08-28 11:47:14', '2024-08-28 11:47:14'),
(33, 'assets/img/opportunity/opportunity_202408014327.jpg', 2, 14, '2024-08-28 11:49:37', '2024-08-28 11:49:37'),
(34, 'assets/img/opportunity/opportunity_202408016524.jpg', 2, 14, '2024-08-28 11:49:37', '2024-08-28 11:49:37'),
(35, 'assets/img/opportunity/opportunity_202408015442.jpg', 2, 14, '2024-08-28 11:49:37', '2024-08-28 11:49:37'),
(36, 'assets/img/opportunity/opportunity_202408011439.jpg', 2, 14, '2024-08-28 11:49:37', '2024-08-28 11:49:37'),
(37, 'assets/img/opportunity/opportunity_202408017472.jpg', 2, 15, '2024-08-28 11:56:31', '2024-08-28 11:56:31'),
(38, 'assets/img/opportunity/opportunity_202408019929.jpg', 2, 15, '2024-08-28 11:56:31', '2024-08-28 11:56:31'),
(39, 'assets/img/opportunity/opportunity_202408016095.jpg', 2, 15, '2024-08-28 11:56:31', '2024-08-28 11:56:31'),
(40, 'assets/img/opportunity/opportunity_202408018063.jpg', 2, 15, '2024-08-28 11:56:31', '2024-08-28 11:56:31'),
(41, 'assets/img/opportunity/opportunity_202408013320.jpg', 2, 16, '2024-08-28 11:59:17', '2024-08-28 11:59:17'),
(42, 'assets/img/opportunity/opportunity_202408017421.jpg', 2, 16, '2024-08-28 11:59:17', '2024-08-28 11:59:17'),
(43, 'assets/img/opportunity/opportunity_202408011866.jpg', 2, 16, '2024-08-28 11:59:17', '2024-08-28 11:59:17'),
(44, 'assets/img/opportunity/opportunity_202408017553.jpg', 2, 16, '2024-08-28 11:59:17', '2024-08-28 11:59:17'),
(47, 'assets/img/opportunity/opportunity_202408026972.jpg', 2, 17, '2024-08-28 12:01:28', '2024-08-28 12:01:28'),
(48, 'assets/img/opportunity/opportunity_20240802494.jpg', 2, 17, '2024-08-28 12:01:28', '2024-08-28 12:01:28'),
(49, 'assets/img/opportunity/opportunity_202408099037.jpg', 2, 17, '2024-08-29 07:34:25', '2024-08-29 07:34:25'),
(50, 'assets/img/opportunity/opportunity_20240809226.jpg', 2, 17, '2024-08-29 07:34:26', '2024-08-29 07:34:26');

-- --------------------------------------------------------

--
-- Table structure for table `opportunity_sectors`
--

CREATE TABLE `opportunity_sectors` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `opportunity_id` bigint(20) DEFAULT NULL,
  `sector_id` bigint(20) DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `opportunity_sectors`
--

INSERT INTO `opportunity_sectors` (`id`, `opportunity_id`, `sector_id`, `user_id`, `created_at`, `updated_at`) VALUES
(8, 8, 4, 2, '2024-08-28 10:25:44', '2024-08-28 10:25:44'),
(9, 9, 4, 2, '2024-08-28 10:39:58', '2024-08-28 10:39:58'),
(11, 17, 2, 2, '2024-08-28 15:17:55', '2024-08-28 15:17:55'),
(12, 16, 2, 2, '2024-08-28 15:18:21', '2024-08-28 15:18:21'),
(13, 15, 5, 2, '2024-08-28 15:24:54', '2024-08-28 15:24:54'),
(14, 14, 2, 2, '2024-08-28 15:25:28', '2024-08-28 15:25:28'),
(15, 11, 4, 2, '2024-08-28 15:25:50', '2024-08-28 15:25:50'),
(16, 10, 4, 2, '2024-08-28 15:26:26', '2024-08-28 15:26:26');

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `personal_access_tokens`
--

INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `expires_at`, `created_at`, `updated_at`) VALUES
(22, 'App\\Models\\User', 2, 'cho@email.com', '56a7adfa0534216a01a6701c426250fe776cd02269a98e2bd9285f2dc1426b83', '[\"*\"]', '2024-09-09 07:38:48', NULL, '2024-09-03 11:13:55', '2024-09-09 07:38:48');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `level` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `user_id`, `name`, `slug`, `level`, `created_at`, `updated_at`) VALUES
(1, 2, 'Admin', 'admin', 1, '2024-08-26 15:08:51', '2024-08-26 15:13:13'),
(3, 2, 'Moderator', 'moderator', 3, '2024-08-26 15:16:48', '2024-08-26 15:16:48'),
(4, 2, 'Customer', 'cusotmer', 4, '2024-08-26 15:17:06', '2024-08-26 15:17:06'),
(5, 2, 'Manager', 'manager', 2, '2024-08-26 15:17:33', '2024-08-26 15:17:33');

-- --------------------------------------------------------

--
-- Table structure for table `sectors`
--

CREATE TABLE `sectors` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `description` longtext DEFAULT NULL,
  `priority` int(11) DEFAULT NULL,
  `portrait` varchar(255) DEFAULT NULL,
  `landscape` varchar(255) DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sectors`
--

INSERT INTO `sectors` (`id`, `user_id`, `name`, `description`, `priority`, `portrait`, `landscape`, `slug`, `created_at`, `updated_at`) VALUES
(2, 2, 'Aviation', 'Aviation', 1, 'assets/img/sector/sector_p202415150.jpg', 'assets/img/sector/sector_l202425202425682.jpg', 'aviation', '2024-08-28 11:15:38', '2024-08-28 11:15:38'),
(4, 2, 'Agriculture', 'Agriculture', 4, 'assets/img/sector/sector_p202408878.jpg', 'assets/img/sector/sector_l202408156.jpg', 'agriculture', '2024-08-28 11:17:40', '2024-08-28 11:17:40'),
(5, 2, 'Health', 'Health', 2, 'assets/img/sector/sector_p202416247.jpg', 'assets/img/sector/sector_l202416202416182.jpg', 'health', '2024-08-28 11:16:37', '2024-08-28 11:16:37'),
(6, 2, 'Mining', 'Mining', 3, 'assets/img/sector/sector_p202417672.jpg', 'assets/img/sector/sector_l202417202417384.jpg', 'mining', '2024-08-28 11:17:25', '2024-08-28 11:17:25');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `role_level` bigint(20) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `gender` longtext DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `address` longtext DEFAULT NULL,
  `country` longtext DEFAULT NULL,
  `company_name` varchar(265) DEFAULT NULL,
  `profession` varchar(265) DEFAULT NULL,
  `code` varchar(255) DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `role_level`, `name`, `gender`, `email`, `phone`, `address`, `country`, `company_name`, `profession`, `code`, `password`, `image`, `email_verified_at`, `remember_token`, `created_at`, `updated_at`) VALUES
(2, 1, 'Admin', 'Male', 'admin@email.com', '45', '67', 'Zimbabwe', 'first', 'Good', '12345678', '$2y$12$WEG2IL8MRnu8SPN3e1g4QeyCK4TnSqVejHUyzolabZswEvdC7.ul6', 'assets/img/user/sector_p202457650.jpg', NULL, NULL, '2024-08-23 14:53:08', '2024-08-30 07:27:36'),
(3, 3, 'Mark Chovava', 'Male', 'markchovava@gmail.com', '0782210021', '14949  Tynwald South, Harare, Zimbabwe', 'South Africa', 'second', 'stron', 'JjuiaDYp', '$2y$12$x8N6nH1J4re/3njS6G.J9.MS4t0KRElVSV1djkvA0QAXvwg9XF5NC', 'assets/img/user/sector_p202457650.jpg', NULL, NULL, '2024-08-27 08:15:22', '2024-08-27 14:02:22');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `events`
--
ALTER TABLE `events`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `members`
--
ALTER TABLE `members`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `memberships`
--
ALTER TABLE `memberships`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `member_orders`
--
ALTER TABLE `member_orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `member_order_infos`
--
ALTER TABLE `member_order_infos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `opportunities`
--
ALTER TABLE `opportunities`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `opportunity_images`
--
ALTER TABLE `opportunity_images`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `opportunity_sectors`
--
ALTER TABLE `opportunity_sectors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sectors`
--
ALTER TABLE `sectors`
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
-- AUTO_INCREMENT for table `countries`
--
ALTER TABLE `countries`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `events`
--
ALTER TABLE `events`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=201;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `members`
--
ALTER TABLE `members`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `memberships`
--
ALTER TABLE `memberships`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `member_orders`
--
ALTER TABLE `member_orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `member_order_infos`
--
ALTER TABLE `member_order_infos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `news`
--
ALTER TABLE `news`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `opportunities`
--
ALTER TABLE `opportunities`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `opportunity_images`
--
ALTER TABLE `opportunity_images`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `opportunity_sectors`
--
ALTER TABLE `opportunity_sectors`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `sectors`
--
ALTER TABLE `sectors`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
