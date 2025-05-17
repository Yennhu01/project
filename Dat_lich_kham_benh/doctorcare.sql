-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th7 25, 2023 lúc 06:04 AM
-- Phiên bản máy phục vụ: 10.4.27-MariaDB
-- Phiên bản PHP: 8.0.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `doctorcare`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `clinics`
--

CREATE TABLE `clinics` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `introductionHTML` text DEFAULT NULL,
  `introductionMarkdown` text DEFAULT NULL,
  `description` text DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime DEFAULT NULL,
  `deletedAt` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `clinics`
--

INSERT INTO `clinics` (`id`, `name`, `address`, `phone`, `introductionHTML`, `introductionMarkdown`, `description`, `image`, `createdAt`, `updatedAt`, `deletedAt`) VALUES
(1, 'Bệnh Viện Chợ Rẫy', '201A Đ. Nguyễn Chí Thanh', '(84-028) 3855 4137', '<p>Hiện nay, Bệnh viện Chợ Rẫy là bệnh viện đa khoa hoàn chỉnh, xếp hạng đặc biệt, tuyến kỹ thuật sau cùng các tỉnh thành phía Nam, trực thuộc Bộ Y tế.\r\n\r\n</p>', 'Hiện nay, Bệnh viện Chợ Rẫy là bệnh viện đa khoa hoàn chỉnh, xếp hạng đặc biệt, tuyến kỹ thuật sau cùng các tỉnh thành phía Nam, trực thuộc Bộ Y tế.\r\n\r\n', 'COVID-19 and EXERCISE - Ben Marciano (CEO of Zone Health & Fitness) interviews Dr. Don Bovell (FreeD.O.M. Clinic USA).', 'Bv-cho-ray.jpg', '2020-11-13 19:44:36', '2020-11-13 20:44:20', NULL),
(2, 'Bệnh Viện 115', '527 Sư Vạn Hạnh, Phường 12, Quận 10, Thành phố Hồ Chí Minh.', '028 3865 2368', '<p>Bệnh viện Nhân dân 115 là bệnh viện đa khoa hạng 1 trực thuộc Sở Y tế thành phố Hồ Chí Minh, hoạt động theo mô hình tiên tiến kết hợp Viện - Trường nhằm nâng cao chất lượng trong công tác khám chữa bệnh, đào tạo và nghiên cứu khoa học.</p>', 'Bệnh viện Nhân dân 115 là bệnh viện đa khoa hạng 1 trực thuộc Sở Y tế thành phố Hồ Chí Minh, hoạt động theo mô hình tiên tiến kết hợp Viện - Trường nhằm nâng cao chất lượng trong công tác khám chữa bệnh, đào tạo và nghiên cứu khoa học.', 'Bệnh viện Nhân dân 115 là bệnh viện đa khoa hạng 1 trực thuộc Sở Y tế thành phố Hồ Chí Minh, hoạt động theo mô hình tiên tiến kết hợp Viện - Trường nhằm nâng cao chất lượng trong công tác khám chữa bệnh, đào tạo và nghiên cứu khoa học.', '115.jpg', '2020-11-13 19:44:36', '2020-11-13 20:46:01', NULL),
(3, 'Bệnh Viện Đại Học Y dược', '215 Hồng Bàng, P.11, Q.5,TP.HCM', '(84.28) 3855 4269', 'Với 27 năm hình thành và phát triển, Bệnh viện Đại học Y Dược TPHCM là địa chỉ chăm sóc sức khỏe uy tín của hàng triệu người bệnh. Bệnh viện luôn nỗ lực phát huy những giá trị cốt lõi bền vững', 'Với 27 năm hình thành và phát triển, Bệnh viện Đại học Y Dược TPHCM là địa chỉ chăm sóc sức khỏe uy tín của hàng triệu người bệnh. Bệnh viện luôn nỗ lực phát huy những giá trị cốt lõi bền vững', NULL, 'dh-y-duoc.jpg', '2020-11-13 19:44:36', '2020-11-13 19:44:36', NULL),
(4, 'Bệnh Viện Chấn Thương Chỉnh Hình', '929 Đường Trần Hưng Đạo - Phường 1 - Quận 5 - TP Hồ Chí Minh', '028.39235791', NULL, NULL, NULL, 'chanthuong-chinhhinh.jpg', '2020-11-13 19:44:36', '2020-11-13 19:44:36', NULL),
(5, 'Bệnh Viện Ung Bướu', 'Số 3 Nơ Trang Long, Phường 7, Quận Bình Thạnh, TP. HCM', '(028) 38433021', 'Bệnh viện Ung Bướu TP. Hồ Chí Minh là bệnh viện chuyên khoa hạng I là cơ sở khám bệnh chữa bệnh trực thuộc Sở Y tế TP. Hồ Chí Minh, làm nhiệm vụ khám, chữa bệnh chuyên ngành ung bướu cho nhân dân và chỉ đạo tuyến, được Bộ Y tế phân công phụ trách các tỉnh thành phía Nam.', NULL, NULL, 'bv-ung-buou.jpg', '2020-11-13 19:44:36', '2020-11-13 19:44:36', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `comments`
--

CREATE TABLE `comments` (
  `id` int(11) NOT NULL,
  `doctorId` int(11) DEFAULT NULL,
  `timeBooking` varchar(255) DEFAULT NULL,
  `dateBooking` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `content` text DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime DEFAULT NULL,
  `deletedAt` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `comments`
--

INSERT INTO `comments` (`id`, `doctorId`, `timeBooking`, `dateBooking`, `name`, `phone`, `content`, `status`, `createdAt`, `updatedAt`, `deletedAt`) VALUES
(2, 2, '08:00 - 09:00', '3/3/2023', 'Phúc', '0321456789', 'Rất Tốt!', 1, '2023-03-04 08:25:42', '2023-03-04 08:25:42', NULL),
(3, 2, '10:00 - 11:00', '15/11/2020', 'Việt', '0321848484', 'Chuyên Nghiệp!', 1, '2023-03-04 08:25:42', '2023-03-04 08:25:42', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `doctor_users`
--

CREATE TABLE `doctor_users` (
  `id` int(11) NOT NULL,
  `doctorId` int(11) NOT NULL,
  `clinicId` int(11) NOT NULL,
  `specializationId` int(11) NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime DEFAULT NULL,
  `deletedAt` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `doctor_users`
--

INSERT INTO `doctor_users` (`id`, `doctorId`, `clinicId`, `specializationId`, `createdAt`, `updatedAt`, `deletedAt`) VALUES
(1, 2, 1, 1, '2020-11-13 19:46:18', '2020-11-13 19:46:18', NULL),
(2, 3, 3, 3, '2020-11-13 20:19:56', '2020-11-13 20:19:56', NULL),
(3, 4, 2, 7, '2020-11-13 20:20:15', '2020-11-13 20:20:15', NULL),
(4, 5, 5, 4, '2020-11-13 20:20:26', '2020-11-13 20:20:26', NULL),
(5, 6, 2, 1, '2020-11-13 20:20:38', '2020-11-14 19:49:26', NULL),
(6, 7, 3, 1, '2020-11-13 20:20:53', '2020-11-14 19:49:12', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `extrainfos`
--

CREATE TABLE `extrainfos` (
  `id` int(11) NOT NULL,
  `patientId` int(11) DEFAULT NULL,
  `historyBreath` text DEFAULT NULL,
  `placeId` int(11) DEFAULT NULL,
  `oldForms` text DEFAULT NULL,
  `sendForms` text DEFAULT NULL,
  `moreInfo` text DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime DEFAULT NULL,
  `deletedAt` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `extrainfos`
--

INSERT INTO `extrainfos` (`id`, `patientId`, `historyBreath`, `placeId`, `oldForms`, `sendForms`, `moreInfo`, `createdAt`, `updatedAt`, `deletedAt`) VALUES
(6, 6, '', 0, NULL, NULL, '', '2023-04-22 17:03:06', '2023-04-22 17:03:06', NULL),
(7, 7, '', 0, NULL, NULL, '', '2023-05-04 19:49:16', '2023-05-04 19:49:16', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `patients`
--

CREATE TABLE `patients` (
  `id` int(11) NOT NULL,
  `doctorId` int(11) NOT NULL,
  `statusId` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `dateBooking` varchar(255) DEFAULT NULL,
  `timeBooking` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `gender` varchar(255) DEFAULT NULL,
  `year` varchar(255) DEFAULT NULL,
  `address` text DEFAULT NULL,
  `description` text DEFAULT NULL,
  `isSentForms` tinyint(1) NOT NULL DEFAULT 0,
  `isTakeCare` tinyint(1) NOT NULL DEFAULT 0,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime DEFAULT NULL,
  `deletedAt` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `patients`
--

INSERT INTO `patients` (`id`, `doctorId`, `statusId`, `name`, `phone`, `dateBooking`, `timeBooking`, `email`, `gender`, `year`, `address`, `description`, `isSentForms`, `isTakeCare`, `createdAt`, `updatedAt`, `deletedAt`) VALUES
(4, 2, 1, 'Phúc', '0321456789', '3/3/2023', '08:00 - 09:00', 'phuc@gmail.com', 'male', '2002', 'Đồng Nai', 'aaaaaaaaaaaaaaaaaa', 1, 0, '2023-03-04 08:25:42', '2023-03-04 08:25:42', NULL),
(5, 2, 1, 'Việt', '0321848484', '4/4/2023', '10:00 - 11:00', 'viet@gmail.com', 'male', '1997', 'Tân Phú', '', 0, 0, '2023-04-04 08:25:42', '2023-04-04 08:25:42', NULL),
(6, 2, 4, 'aaaa', '01293939393', '23/04/2023', '08:00 - 09:00', 'hoangviett257@gmail.com', 'male', '1999', 'tân phú', 'aaaa', 0, 0, '2023-04-22 17:03:06', '2023-04-22 17:03:06', NULL),
(7, 2, 1, 'Lan', '01234567878', '06/05/2023', '08:00 - 09:00', 'hoangviett257@gmail.com', 'male', '1999', '1213312', '111', 0, 0, '2023-05-04 19:49:16', '2023-05-04 19:50:06', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `places`
--

CREATE TABLE `places` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime DEFAULT NULL,
  `deletedAt` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `places`
--

INSERT INTO `places` (`id`, `name`, `createdAt`, `updatedAt`, `deletedAt`) VALUES
(1, 'Quận 1', '2020-11-13 19:44:36', '2020-11-13 19:44:36', NULL),
(2, 'Quận 2', '2020-11-13 19:44:36', '2020-11-13 19:44:36', NULL),
(3, 'Quận 3', '2020-11-13 19:44:36', '2020-11-13 19:44:36', NULL),
(4, 'Quận 4', '2020-11-13 19:44:36', '2020-11-13 19:44:36', NULL),
(5, 'Quận 5', '2020-11-13 19:44:36', '2020-11-13 19:44:36', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `posts`
--

CREATE TABLE `posts` (
  `id` int(11) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `contentMarkdown` text DEFAULT NULL,
  `contentHTML` text DEFAULT NULL,
  `forDoctorId` int(11) DEFAULT NULL,
  `forSpecializationId` int(11) DEFAULT NULL,
  `forClinicId` int(11) DEFAULT NULL,
  `writerId` int(11) NOT NULL,
  `confirmByDoctor` tinyint(1) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime DEFAULT NULL,
  `deletedAt` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `posts`
--

INSERT INTO `posts` (`id`, `title`, `contentMarkdown`, `contentHTML`, `forDoctorId`, `forSpecializationId`, `forClinicId`, `writerId`, `confirmByDoctor`, `image`, `createdAt`, `updatedAt`, `deletedAt`) VALUES
(1, 'CHUYÊN KHOA: TAI MŨI HỌNG', '####TAI MŨI HỌNG LÃO?\n\nTai mũi họng là một chuyên khoa y tế tập trung vào tai, mũi và họng. Nó còn được gọi là phẫu thuật tai mũi họng-đầu và cổ vì các bác sĩ chuyên khoa được đào tạo về cả y học và phẫu thuật. Bác sĩ tai mũi họng thường được gọi là bác sĩ tai mũi họng hay gọi tắt là ENT.\n\nChuyên ngành y tế này có từ thế kỷ 19, khi các bác sĩ nhận ra rằng đầu và cổ chứa một loạt các hệ thống liên kết với nhau. Các bác sĩ đã phát triển các kỹ thuật và công cụ để kiểm tra và điều trị các vấn đề về đầu và cổ, cuối cùng tạo thành một chuyên khoa y tế. Theo Học viện Tai mũi họng Hoa Kỳ, đây là chuyên khoa y tế lâu đời nhất ở Hoa Kỳ.\n\nBác sĩ tai mũi họng khác với nhiều bác sĩ ở chỗ họ có đủ trình độ để thực hiện nhiều loại phẫu thuật trên các mô mỏng và phức tạp ở đầu và cổ.\n\nBác sĩ tai mũi họng điều trị gì?\n\n- **Tai:** Các bác sĩ tai mũi họng được đào tạo về điều trị nội khoa và phẫu thuật đối với chứng mất thính lực, nhiễm trùng tai, rối loạn thăng bằng, tiếng ồn trong tai (ù tai), đau dây thần kinh, rối loạn dây thần kinh mặt và sọ. Họ cũng quản lý các rối loạn bẩm sinh (bẩm sinh) của tai ngoài và tai trong.\n- **Mũi**: Chăm sóc khoang mũi, xoang là một trong những kỹ năng cơ bản của bác sĩ tai mũi họng. Bác sĩ tai mũi họng chẩn đoán, quản lý và điều trị dị ứng, viêm xoang, rối loạn khứu giác, polyp và tắc nghẽn mũi do lệch vách ngăn. Họ cũng có thể chỉnh hình dáng mũi (phẫu thuật tạo hình mũi).\n- **Họng**: Bác sĩ tai mũi họng có chuyên môn trong việc quản lý các bệnh về thanh quản (hộp giọng nói) và đường tiêu hóa trên hoặc thực quản, bao gồm rối loạn giọng nói và nuốt.\n- **Đầu và Cổ**: Ở vùng đầu và cổ, các bác sĩ tai mũi họng được đào tạo để điều trị các bệnh truyền nhiễm, cả khối u lành tính và ác tính (ung thư), chấn thương mặt và dị dạng khuôn mặt. Họ thực hiện cả phẫu thuật thẩm mỹ và tái tạo.\n\nBác sĩ phẫu thuật tai mũi họng-đầu và cổ được đào tạo như thế nào?\n\nMột bác sĩ tai mũi họng sẵn sàng bắt đầu hành nghề sau khi hoàn thành 15 năm đào tạo đại học và sau đại học. Để nhận được chứng nhận từ Hội đồng Tai Mũi Họng Hoa Kỳ, trước tiên các cá nhân phải hoàn thành chương trình đại học, trường y và ít nhất 5 năm đào tạo chuyên khoa. Tiếp theo, thầy thuốc phải vượt qua kỳ kiểm tra của Hội đồng khoa tai mũi họng Hoa Kỳ. Một số sau đó theo học chương trình học bổng một hoặc hai năm để được đào tạo thêm trong một lĩnh vực chuyên môn phụ. Tất cả các giảng viên toàn thời gian tại Columbia đã hoàn thành khóa đào tạo nghiên cứu sinh trong lĩnh vực chuyên môn của họ.', '<h4 id=\"whatisotolaryngology\">TAI MŨI HỌNG LÀ GÌ></h4>\n<p>\n\nTai mũi họng là một chuyên khoa y tế tập trung vào tai, mũi và họng. Nó còn được gọi là phẫu thuật tai mũi họng-đầu và cổ vì các bác sĩ chuyên khoa được đào tạo về cả y học và phẫu thuật. Bác sĩ tai mũi họng thường được gọi là bác sĩ tai mũi họng hay gọi tắt là ENT.\n\nChuyên ngành y tế này có từ thế kỷ 19, khi các bác sĩ nhận ra rằng đầu và cổ chứa một loạt các hệ thống liên kết với nhau. Các bác sĩ đã phát triển các kỹ thuật và công cụ để kiểm tra và điều trị các vấn đề về đầu và cổ, cuối cùng tạo thành một chuyên khoa y tế. Theo Học viện Tai mũi họng Hoa Kỳ, đây là chuyên khoa y tế lâu đời nhất ở Hoa Kỳ.\n\nBác sĩ tai mũi họng khác với nhiều bác sĩ ở chỗ họ có đủ trình độ để thực hiện nhiều loại phẫu thuật trên các mô mỏng và phức tạp ở đầu và cổ.\n\nBác sĩ tai mũi họng điều trị gì?\n\n- **Tai:** Các bác sĩ tai mũi họng được đào tạo về điều trị nội khoa và phẫu thuật đối với chứng mất thính lực, nhiễm trùng tai, rối loạn thăng bằng, tiếng ồn trong tai (ù tai), đau dây thần kinh, rối loạn dây thần kinh mặt và sọ. Họ cũng quản lý các rối loạn bẩm sinh (bẩm sinh) của tai ngoài và tai trong.\n- **Mũi**: Chăm sóc khoang mũi, xoang là một trong những kỹ năng cơ bản của bác sĩ tai mũi họng. Bác sĩ tai mũi họng chẩn đoán, quản lý và điều trị dị ứng, viêm xoang, rối loạn khứu giác, polyp và tắc nghẽn mũi do lệch vách ngăn. Họ cũng có thể chỉnh hình dáng mũi (phẫu thuật tạo hình mũi).\n- **Họng**: Bác sĩ tai mũi họng có chuyên môn trong việc quản lý các bệnh về thanh quản (hộp giọng nói) và đường tiêu hóa trên hoặc thực quản, bao gồm rối loạn giọng nói và nuốt.\n- **Đầu và Cổ**: Ở vùng đầu và cổ, các bác sĩ tai mũi họng được đào tạo để điều trị các bệnh truyền nhiễm, cả khối u lành tính và ác tính (ung thư), chấn thương mặt và dị dạng khuôn mặt. Họ thực hiện cả phẫu thuật thẩm mỹ và tái tạo.\n\nBác sĩ phẫu thuật tai mũi họng-đầu và cổ được đào tạo như thế nào?\n\nMột bác sĩ tai mũi họng sẵn sàng bắt đầu hành nghề sau khi hoàn thành 15 năm đào tạo đại học và sau đại học. Để nhận được chứng nhận từ Hội đồng Tai Mũi Họng Hoa Kỳ, trước tiên các cá nhân phải hoàn thành chương trình đại học, trường y và ít nhất 5 năm đào tạo chuyên khoa. Tiếp theo, thầy thuốc phải vượt qua kỳ kiểm tra của Hội đồng khoa tai mũi họng Hoa Kỳ. Một số sau đó theo học chương trình học bổng một hoặc hai năm để được đào tạo thêm trong một lĩnh vực chuyên môn phụ. Tất cả các giảng viên toàn thời gian tại Columbia đã hoàn thành khóa đào tạo nghiên cứu sinh trong lĩnh vực chuyên môn của họ. </p>', -1, 1, -1, 1, NULL, NULL, '2020-11-13 20:29:11', '2020-11-13 20:35:21', NULL),
(2, 'THE SPECIALIST : Neurosurgery', 'Neurosurgery is concerned with  **diseases, injuries or malformations**  of the central and peripheral nervous system - especially their surgical treatment. The diseases of the nervous system that fall within the neurosurgeons\' area of expertise can differ fundamentally: They affect either the spinal column or the head and brain, which all belong to the central nervous system - the CNS. The peripheral nervous system describes the nerve pathways that run through all regions of the body from the spinal cord. This is precisely why we distinguish two areas in neurosurgery:\n\n1.  **Neurosurgical spinal surgery:**  Here the most common diagnoses requiring surgery are tumors in the spinal cord and spinal cord contusions. Herniated discs are also among them.\n2.  **Head and brain surgery:**  Diseases or injuries that are most frequently treated here are cerebral haemorrhages, tumors or vascular obstructions in the brain. It also includes all types of craniocerebral injuries - and not least the hydrocephalus.\n\nBy the way: functional  **disorders of the nervous system**  are also often a case for neurosurgeons, such as movement disorders, epilepsy or unfathomable pain.', '<p>Neurosurgery is concerned with  <strong>diseases, injuries or malformations</strong>  of the central and peripheral nervous system - especially their surgical treatment. The diseases of the nervous system that fall within the neurosurgeons\' area of expertise can differ fundamentally: They affect either the spinal column or the head and brain, which all belong to the central nervous system - the CNS. The peripheral nervous system describes the nerve pathways that run through all regions of the body from the spinal cord. This is precisely why we distinguish two areas in neurosurgery:</p>\n<ol>\n<li><strong>Neurosurgical spinal surgery:</strong>  Here the most common diagnoses requiring surgery are tumors in the spinal cord and spinal cord contusions. Herniated discs are also among them.</li>\n<li><strong>Head and brain surgery:</strong>  Diseases or injuries that are most frequently treated here are cerebral haemorrhages, tumors or vascular obstructions in the brain. It also includes all types of craniocerebral injuries - and not least the hydrocephalus.</li>\n</ol>\n<p>By the way: functional  <strong>disorders of the nervous system</strong>  are also often a case for neurosurgeons, such as movement disorders, epilepsy or unfathomable pain.</p>', -1, 2, -1, 1, NULL, NULL, '2020-11-13 20:36:34', '2020-11-13 20:39:00', NULL),
(3, 'THE SPECIALIST : Surgery', 'What are the surgical specialties?\n\nThe American College of Surgeons recognizes 14 surgical specialties: cardiothoracic surgery, colon and rectal surgery, general surgery, gynecology and obstetrics, gynecologic oncology, neurological surgery, ophthalmic surgery, oral and maxillofacial surgery, orthopaedic surgery, otorhinolaryngology, pediatric surgery, plastic and maxillofacial surgery, urology, and vascular surgery. The information that follows presents information on the various surgical specialties. The material was adapted from definitions put forth by the nationally recognized authority on the topic, the  [American Board of Medical Specialties (ABMS)](http://www.abms.org/ \"American Board of Medical Specialties (ABMS)\"), and its approved surgical specialty boards.\n\nGeneral Surgery\n\nA general surgeon is a specialist who is trained to manage a broad spectrum of surgical conditions affecting almost any area of the body. The surgeon establishes the diagnosis and provides the preoperative, operative, and post-operative care to patients and is often responsible for the comprehensive management of the trauma victim and the critically ill patient. During at least a five-year educational period after obtaining a medical degree, the surgeon acquires knowledge and technical skills in managing medical conditions that relate to the head and neck, breast, skin, and soft tissues, abdominal wall, extremities, and the gastrointestinal, vascular, and endocrine systems.', '<p>What are the surgical specialties?</p>\n<p>The American College of Surgeons recognizes 14 surgical specialties: cardiothoracic surgery, colon and rectal surgery, general surgery, gynecology and obstetrics, gynecologic oncology, neurological surgery, ophthalmic surgery, oral and maxillofacial surgery, orthopaedic surgery, otorhinolaryngology, pediatric surgery, plastic and maxillofacial surgery, urology, and vascular surgery. The information that follows presents information on the various surgical specialties. The material was adapted from definitions put forth by the nationally recognized authority on the topic, the  <a href=\"http://www.abms.org/\" title=\"American Board of Medical Specialties (ABMS)\">American Board of Medical Specialties (ABMS)</a>, and its approved surgical specialty boards.</p>\n<p>General Surgery</p>\n<p>A general surgeon is a specialist who is trained to manage a broad spectrum of surgical conditions affecting almost any area of the body. The surgeon establishes the diagnosis and provides the preoperative, operative, and post-operative care to patients and is often responsible for the comprehensive management of the trauma victim and the critically ill patient. During at least a five-year educational period after obtaining a medical degree, the surgeon acquires knowledge and technical skills in managing medical conditions that relate to the head and neck, breast, skin, and soft tissues, abdominal wall, extremities, and the gastrointestinal, vascular, and endocrine systems.</p>', -1, 3, -1, 1, NULL, NULL, '2020-11-13 20:38:04', '2020-11-13 20:38:43', NULL),
(4, 'Doctor: Hary Pham', '\n### Specialist in internal medicine\n\nMain article:  [Internal medicine](https://en.wikipedia.org/wiki/Internal_medicine \"Internal medicine\")\n\nAround the world the term physician refers to a  [specialist](https://en.wikipedia.org/wiki/Medical_specialist \"Medical specialist\")  in  [internal medicine](https://en.wikipedia.org/wiki/Internal_medicine \"Internal medicine\")  or one of its many sub-specialties (especially as opposed to a specialist in  [surgery](https://en.wikipedia.org/wiki/Surgery \"Surgery\")). This meaning of physician conveys a sense of expertise in treatment by drugs or medications, rather than by the procedures of  [surgeons](https://en.wikipedia.org/wiki/Surgeon \"Surgeon\").[[4]](https://en.wikipedia.org/wiki/Physician#cite_note-Fowler-4)\n\nThis term is at least nine hundred years old in English: physicians and surgeons were once members of separate professions, and traditionally were rivals. The  _[Shorter Oxford English Dictionary](https://en.wikipedia.org/wiki/Shorter_Oxford_English_Dictionary \"Shorter Oxford English Dictionary\")_, third edition, gives a  [Middle English](https://en.wikipedia.org/wiki/Middle_English \"Middle English\")  quotation making this contrast, from as early as 1400: \"O Lord, whi is it so greet difference betwixe a cirugian and a physician.\"[[5]](https://en.wikipedia.org/wiki/Physician#cite_note-newSOED-5)\n\n[Henry VIII](https://en.wikipedia.org/wiki/Henry_VIII_of_England \"Henry VIII of England\")  granted a charter to the London  [Royal College of Physicians](https://en.wikipedia.org/wiki/Royal_College_of_Physicians \"Royal College of Physicians\")  in 1518. It was not until 1540 that he granted the  [Company of Barber-Surgeons](https://en.wikipedia.org/wiki/Barber_surgeon \"Barber surgeon\")  (ancestor of the  [Royal College of Surgeons](https://en.wikipedia.org/wiki/Royal_College_of_Surgeons \"Royal College of Surgeons\")) its separate charter. In the same year, the English monarch established the  [Regius Professorship of Physic](https://en.wikipedia.org/wiki/Regius_Professor_of_Physic_(Cambridge) \"Regius Professor of Physic (Cambridge)\")  at the  [University of Cambridge](https://en.wikipedia.org/wiki/University_of_Cambridge \"University of Cambridge\").[[6]](https://en.wikipedia.org/wiki/Physician#cite_note-6)  Newer universities would probably describe such an academic as a professor of  [internal medicine](https://en.wikipedia.org/wiki/Internal_medicine \"Internal medicine\"). Hence, in the 16th century,  _physic_  meant roughly what internal medicine does now.\n\nCurrently, a specialist  [physician in the United States](https://en.wikipedia.org/wiki/Physician_in_the_United_States \"Physician in the United States\")  may be described as an  _internist_. Another term,  _[hospitalist](https://en.wikipedia.org/wiki/Hospitalist \"Hospitalist\")_, was introduced in 1996,[[7]](https://en.wikipedia.org/wiki/Physician#cite_note-7)  to describe US specialists in  [internal medicine](https://en.wikipedia.org/wiki/Internal_medicine \"Internal medicine\")  who work largely or exclusively in hospitals. Such \'hospitalists\' now make up about 19% of all US  _general internists_,[[8]](https://en.wikipedia.org/wiki/Physician#cite_note-8)  who are often called  _general physicians_  in  [Commonwealth](https://en.wikipedia.org/wiki/Commonwealth_of_nations \"Commonwealth of nations\")  countries.\n\nThis original use, as distinct from surgeon, is common in most of the world including the  [United Kingdom](https://en.wikipedia.org/wiki/United_Kingdom \"United Kingdom\")  and other Commonwealth countries (such as  [Australia](https://en.wikipedia.org/wiki/Australia \"Australia\"),  [Bangladesh](https://en.wikipedia.org/wiki/Bangladesh \"Bangladesh\"),  [India](https://en.wikipedia.org/wiki/India \"India\"),  [New Zealand](https://en.wikipedia.org/wiki/New_Zealand \"New Zealand\"),  [Pakistan](https://en.wikipedia.org/wiki/Pakistan \"Pakistan\"),  [South Africa](https://en.wikipedia.org/wiki/South_Africa \"South Africa\"),  [Sri Lanka](https://en.wikipedia.org/wiki/Sri_Lanka \"Sri Lanka\"), and  [Zimbabwe](https://en.wikipedia.org/wiki/Zimbabwe \"Zimbabwe\")), as well as in places as diverse as  [Brazil](https://en.wikipedia.org/wiki/Brazil \"Brazil\"),  [Hong Kong](https://en.wikipedia.org/wiki/Hong_Kong \"Hong Kong\"),  [Indonesia](https://en.wikipedia.org/wiki/Indonesia \"Indonesia\"),  [Japan](https://en.wikipedia.org/wiki/Japan \"Japan\"),  [Ireland](https://en.wikipedia.org/wiki/Republic_of_Ireland \"Republic of Ireland\"), and  [Taiwan](https://en.wikipedia.org/wiki/Taiwan \"Taiwan\"). In such places, the more general English terms  _doctor_  or  _medical practitioner_  are prevalent, describing any practitioner of medicine (whom an American would likely call a physician, in the broad sense).[[9]](https://en.wikipedia.org/wiki/Physician#cite_note-9)  In Commonwealth countries, specialist  [pediatricians](https://en.wikipedia.org/wiki/Pediatrics \"Pediatrics\")  and  [geriatricians](https://en.wikipedia.org/wiki/Geriatrics \"Geriatrics\")  are also described as specialist physicians who have sub-specialized by age of patient rather than by  [organ](https://en.wikipedia.org/wiki/Organ_(anatomy) \"Organ (anatomy)\")  system.\n\n### Physician and surgeon\n\nAround the world, the combined term \"physician and surgeon\" is used to describe either a general practitioner or any medical practitioner irrespective of specialty.[[4]](https://en.wikipedia.org/wiki/Physician#cite_note-Fowler-4)[[5]](https://en.wikipedia.org/wiki/Physician#cite_note-newSOED-5)  This usage still shows the original meaning of physician and preserves the old difference between a physician, as a practitioner of  _physic_, and a surgeon. The term may be used by state medical boards in the United States, and by equivalent bodies in Canadian provinces, to describe any medical practitioner.', '<h3 id=\"specialistininternalmedicine\">Specialist in internal medicine</h3>\n<p>Main article:  <a href=\"https://en.wikipedia.org/wiki/Internal_medicine\" title=\"Internal medicine\">Internal medicine</a></p>\n<p>Around the world the term physician refers to a  <a href=\"https://en.wikipedia.org/wiki/Medical_specialist\" title=\"Medical specialist\">specialist</a>  in  <a href=\"https://en.wikipedia.org/wiki/Internal_medicine\" title=\"Internal medicine\">internal medicine</a>  or one of its many sub-specialties (especially as opposed to a specialist in  <a href=\"https://en.wikipedia.org/wiki/Surgery\" title=\"Surgery\">surgery</a>). This meaning of physician conveys a sense of expertise in treatment by drugs or medications, rather than by the procedures of  <a href=\"https://en.wikipedia.org/wiki/Surgeon\" title=\"Surgeon\">surgeons</a>.<a href=\"https://en.wikipedia.org/wiki/Physician#cite_note-Fowler-4\">[4]</a></p>\n<p>This term is at least nine hundred years old in English: physicians and surgeons were once members of separate professions, and traditionally were rivals. The  <em><a href=\"https://en.wikipedia.org/wiki/Shorter_Oxford_English_Dictionary\" title=\"Shorter Oxford English Dictionary\">Shorter Oxford English Dictionary</a></em>, third edition, gives a  <a href=\"https://en.wikipedia.org/wiki/Middle_English\" title=\"Middle English\">Middle English</a>  quotation making this contrast, from as early as 1400: \"O Lord, whi is it so greet difference betwixe a cirugian and a physician.\"<a href=\"https://en.wikipedia.org/wiki/Physician#cite_note-newSOED-5\">[5]</a></p>\n<p><a href=\"https://en.wikipedia.org/wiki/Henry_VIII_of_England\" title=\"Henry VIII of England\">Henry VIII</a>  granted a charter to the London  <a href=\"https://en.wikipedia.org/wiki/Royal_College_of_Physicians\" title=\"Royal College of Physicians\">Royal College of Physicians</a>  in 1518. It was not until 1540 that he granted the  <a href=\"https://en.wikipedia.org/wiki/Barber_surgeon\" title=\"Barber surgeon\">Company of Barber-Surgeons</a>  (ancestor of the  <a href=\"https://en.wikipedia.org/wiki/Royal_College_of_Surgeons\" title=\"Royal College of Surgeons\">Royal College of Surgeons</a>) its separate charter. In the same year, the English monarch established the  <a href=\"https://en.wikipedia.org/wiki/Regius_Professor_of_Physic_(Cambridge)\" title=\"Regius Professor of Physic (Cambridge)\">Regius Professorship of Physic</a>  at the  <a href=\"https://en.wikipedia.org/wiki/University_of_Cambridge\" title=\"University of Cambridge\">University of Cambridge</a>.<a href=\"https://en.wikipedia.org/wiki/Physician#cite_note-6\">[6]</a>  Newer universities would probably describe such an academic as a professor of  <a href=\"https://en.wikipedia.org/wiki/Internal_medicine\" title=\"Internal medicine\">internal medicine</a>. Hence, in the 16th century,  <em>physic</em>  meant roughly what internal medicine does now.</p>\n<p>Currently, a specialist  <a href=\"https://en.wikipedia.org/wiki/Physician_in_the_United_States\" title=\"Physician in the United States\">physician in the United States</a>  may be described as an  <em>internist</em>. Another term,  <em><a href=\"https://en.wikipedia.org/wiki/Hospitalist\" title=\"Hospitalist\">hospitalist</a></em>, was introduced in 1996,<a href=\"https://en.wikipedia.org/wiki/Physician#cite_note-7\">[7]</a>  to describe US specialists in  <a href=\"https://en.wikipedia.org/wiki/Internal_medicine\" title=\"Internal medicine\">internal medicine</a>  who work largely or exclusively in hospitals. Such \'hospitalists\' now make up about 19% of all US  <em>general internists</em>,<a href=\"https://en.wikipedia.org/wiki/Physician#cite_note-8\">[8]</a>  who are often called  <em>general physicians</em>  in  <a href=\"https://en.wikipedia.org/wiki/Commonwealth_of_nations\" title=\"Commonwealth of nations\">Commonwealth</a>  countries.</p>\n<p>This original use, as distinct from surgeon, is common in most of the world including the  <a href=\"https://en.wikipedia.org/wiki/United_Kingdom\" title=\"United Kingdom\">United Kingdom</a>  and other Commonwealth countries (such as  <a href=\"https://en.wikipedia.org/wiki/Australia\" title=\"Australia\">Australia</a>,  <a href=\"https://en.wikipedia.org/wiki/Bangladesh\" title=\"Bangladesh\">Bangladesh</a>,  <a href=\"https://en.wikipedia.org/wiki/India\" title=\"India\">India</a>,  <a href=\"https://en.wikipedia.org/wiki/New_Zealand\" title=\"New Zealand\">New Zealand</a>,  <a href=\"https://en.wikipedia.org/wiki/Pakistan\" title=\"Pakistan\">Pakistan</a>,  <a href=\"https://en.wikipedia.org/wiki/South_Africa\" title=\"South Africa\">South Africa</a>,  <a href=\"https://en.wikipedia.org/wiki/Sri_Lanka\" title=\"Sri Lanka\">Sri Lanka</a>, and  <a href=\"https://en.wikipedia.org/wiki/Zimbabwe\" title=\"Zimbabwe\">Zimbabwe</a>), as well as in places as diverse as  <a href=\"https://en.wikipedia.org/wiki/Brazil\" title=\"Brazil\">Brazil</a>,  <a href=\"https://en.wikipedia.org/wiki/Hong_Kong\" title=\"Hong Kong\">Hong Kong</a>,  <a href=\"https://en.wikipedia.org/wiki/Indonesia\" title=\"Indonesia\">Indonesia</a>,  <a href=\"https://en.wikipedia.org/wiki/Japan\" title=\"Japan\">Japan</a>,  <a href=\"https://en.wikipedia.org/wiki/Republic_of_Ireland\" title=\"Republic of Ireland\">Ireland</a>, and  <a href=\"https://en.wikipedia.org/wiki/Taiwan\" title=\"Taiwan\">Taiwan</a>. In such places, the more general English terms  <em>doctor</em>  or  <em>medical practitioner</em>  are prevalent, describing any practitioner of medicine (whom an American would likely call a physician, in the broad sense).<a href=\"https://en.wikipedia.org/wiki/Physician#cite_note-9\">[9]</a>  In Commonwealth countries, specialist  <a href=\"https://en.wikipedia.org/wiki/Pediatrics\" title=\"Pediatrics\">pediatricians</a>  and  <a href=\"https://en.wikipedia.org/wiki/Geriatrics\" title=\"Geriatrics\">geriatricians</a>  are also described as specialist physicians who have sub-specialized by age of patient rather than by  <a href=\"https://en.wikipedia.org/wiki/Organ_(anatomy)\" title=\"Organ (anatomy)\">organ</a>  system.</p>\n<h3 id=\"physicianandsurgeon\">Physician and surgeon</h3>\n<p>Around the world, the combined term \"physician and surgeon\" is used to describe either a general practitioner or any medical practitioner irrespective of specialty.<a href=\"https://en.wikipedia.org/wiki/Physician#cite_note-Fowler-4\">[4]</a><a href=\"https://en.wikipedia.org/wiki/Physician#cite_note-newSOED-5\">[5]</a>  This usage still shows the original meaning of physician and preserves the old difference between a physician, as a practitioner of  <em>physic</em>, and a surgeon. The term may be used by state medical boards in the United States, and by equivalent bodies in Canadian provinces, to describe any medical practitioner.</p>', 4, -1, -1, 1, NULL, NULL, '2020-11-13 20:58:42', '2020-11-13 20:59:36', NULL),
(5, 'Doctor: Evan', '\n### Specialist in internal medicine\n\nMain article:  [Internal medicine](https://en.wikipedia.org/wiki/Internal_medicine \"Internal medicine\")\n\nAround the world the term physician refers to a  [specialist](https://en.wikipedia.org/wiki/Medical_specialist \"Medical specialist\")  in  [internal medicine](https://en.wikipedia.org/wiki/Internal_medicine \"Internal medicine\")  or one of its many sub-specialties (especially as opposed to a specialist in  [surgery](https://en.wikipedia.org/wiki/Surgery \"Surgery\")). This meaning of physician conveys a sense of expertise in treatment by drugs or medications, rather than by the procedures of  [surgeons](https://en.wikipedia.org/wiki/Surgeon \"Surgeon\").[[4]](https://en.wikipedia.org/wiki/Physician#cite_note-Fowler-4)\n\nThis term is at least nine hundred years old in English: physicians and surgeons were once members of separate professions, and traditionally were rivals. The  _[Shorter Oxford English Dictionary](https://en.wikipedia.org/wiki/Shorter_Oxford_English_Dictionary \"Shorter Oxford English Dictionary\")_, third edition, gives a  [Middle English](https://en.wikipedia.org/wiki/Middle_English \"Middle English\")  quotation making this contrast, from as early as 1400: \"O Lord, whi is it so greet difference betwixe a cirugian and a physician.\"[[5]](https://en.wikipedia.org/wiki/Physician#cite_note-newSOED-5)\n\n[Henry VIII](https://en.wikipedia.org/wiki/Henry_VIII_of_England \"Henry VIII of England\")  granted a charter to the London  [Royal College of Physicians](https://en.wikipedia.org/wiki/Royal_College_of_Physicians \"Royal College of Physicians\")  in 1518. It was not until 1540 that he granted the  [Company of Barber-Surgeons](https://en.wikipedia.org/wiki/Barber_surgeon \"Barber surgeon\")  (ancestor of the  [Royal College of Surgeons](https://en.wikipedia.org/wiki/Royal_College_of_Surgeons \"Royal College of Surgeons\")) its separate charter. In the same year, the English monarch established the  [Regius Professorship of Physic](https://en.wikipedia.org/wiki/Regius_Professor_of_Physic_(Cambridge) \"Regius Professor of Physic (Cambridge)\")  at the  [University of Cambridge](https://en.wikipedia.org/wiki/University_of_Cambridge \"University of Cambridge\").[[6]](https://en.wikipedia.org/wiki/Physician#cite_note-6)  Newer universities would probably describe such an academic as a professor of  [internal medicine](https://en.wikipedia.org/wiki/Internal_medicine \"Internal medicine\"). Hence, in the 16th century,  _physic_  meant roughly what internal medicine does now.\n\nCurrently, a specialist  [physician in the United States](https://en.wikipedia.org/wiki/Physician_in_the_United_States \"Physician in the United States\")  may be described as an  _internist_. Another term,  _[hospitalist](https://en.wikipedia.org/wiki/Hospitalist \"Hospitalist\")_, was introduced in 1996,[[7]](https://en.wikipedia.org/wiki/Physician#cite_note-7)  to describe US specialists in  [internal medicine](https://en.wikipedia.org/wiki/Internal_medicine \"Internal medicine\")  who work largely or exclusively in hospitals. Such \'hospitalists\' now make up about 19% of all US  _general internists_,[[8]](https://en.wikipedia.org/wiki/Physician#cite_note-8)  who are often called  _general physicians_  in  [Commonwealth](https://en.wikipedia.org/wiki/Commonwealth_of_nations \"Commonwealth of nations\")  countries.\n\nThis original use, as distinct from surgeon, is common in most of the world including the  [United Kingdom](https://en.wikipedia.org/wiki/United_Kingdom \"United Kingdom\")  and other Commonwealth countries (such as  [Australia](https://en.wikipedia.org/wiki/Australia \"Australia\"),  [Bangladesh](https://en.wikipedia.org/wiki/Bangladesh \"Bangladesh\"),  [India](https://en.wikipedia.org/wiki/India \"India\"),  [New Zealand](https://en.wikipedia.org/wiki/New_Zealand \"New Zealand\"),  [Pakistan](https://en.wikipedia.org/wiki/Pakistan \"Pakistan\"),  [South Africa](https://en.wikipedia.org/wiki/South_Africa \"South Africa\"),  [Sri Lanka](https://en.wikipedia.org/wiki/Sri_Lanka \"Sri Lanka\"), and  [Zimbabwe](https://en.wikipedia.org/wiki/Zimbabwe \"Zimbabwe\")), as well as in places as diverse as  [Brazil](https://en.wikipedia.org/wiki/Brazil \"Brazil\"),  [Hong Kong](https://en.wikipedia.org/wiki/Hong_Kong \"Hong Kong\"),  [Indonesia](https://en.wikipedia.org/wiki/Indonesia \"Indonesia\"),  [Japan](https://en.wikipedia.org/wiki/Japan \"Japan\"),  [Ireland](https://en.wikipedia.org/wiki/Republic_of_Ireland \"Republic of Ireland\"), and  [Taiwan](https://en.wikipedia.org/wiki/Taiwan \"Taiwan\"). In such places, the more general English terms  _doctor_  or  _medical practitioner_  are prevalent, describing any practitioner of medicine (whom an American would likely call a physician, in the broad sense).[[9]](https://en.wikipedia.org/wiki/Physician#cite_note-9)  In Commonwealth countries, specialist  [pediatricians](https://en.wikipedia.org/wiki/Pediatrics \"Pediatrics\")  and  [geriatricians](https://en.wikipedia.org/wiki/Geriatrics \"Geriatrics\")  are also described as specialist physicians who have sub-specialized by age of patient rather than by  [organ](https://en.wikipedia.org/wiki/Organ_(anatomy) \"Organ (anatomy)\")  system.\n\n### Physician and surgeon\n\nAround the world, the combined term \"physician and surgeon\" is used to describe either a general practitioner or any medical practitioner irrespective of specialty.[[4]](https://en.wikipedia.org/wiki/Physician#cite_note-Fowler-4)[[5]](https://en.wikipedia.org/wiki/Physician#cite_note-newSOED-5)  This usage still shows the original meaning of physician and preserves the old difference between a physician, as a practitioner of  _physic_, and a surgeon. The term may be used by state medical boards in the United States, and by equivalent bodies in Canadian provinces, to describe any medical practitioner.', '<h3 id=\"specialistininternalmedicine\">Specialist in internal medicine</h3>\n<p>Main article:  <a href=\"https://en.wikipedia.org/wiki/Internal_medicine\" title=\"Internal medicine\">Internal medicine</a></p>\n<p>Around the world the term physician refers to a  <a href=\"https://en.wikipedia.org/wiki/Medical_specialist\" title=\"Medical specialist\">specialist</a>  in  <a href=\"https://en.wikipedia.org/wiki/Internal_medicine\" title=\"Internal medicine\">internal medicine</a>  or one of its many sub-specialties (especially as opposed to a specialist in  <a href=\"https://en.wikipedia.org/wiki/Surgery\" title=\"Surgery\">surgery</a>). This meaning of physician conveys a sense of expertise in treatment by drugs or medications, rather than by the procedures of  <a href=\"https://en.wikipedia.org/wiki/Surgeon\" title=\"Surgeon\">surgeons</a>.<a href=\"https://en.wikipedia.org/wiki/Physician#cite_note-Fowler-4\">[4]</a></p>\n<p>This term is at least nine hundred years old in English: physicians and surgeons were once members of separate professions, and traditionally were rivals. The  <em><a href=\"https://en.wikipedia.org/wiki/Shorter_Oxford_English_Dictionary\" title=\"Shorter Oxford English Dictionary\">Shorter Oxford English Dictionary</a></em>, third edition, gives a  <a href=\"https://en.wikipedia.org/wiki/Middle_English\" title=\"Middle English\">Middle English</a>  quotation making this contrast, from as early as 1400: \"O Lord, whi is it so greet difference betwixe a cirugian and a physician.\"<a href=\"https://en.wikipedia.org/wiki/Physician#cite_note-newSOED-5\">[5]</a></p>\n<p><a href=\"https://en.wikipedia.org/wiki/Henry_VIII_of_England\" title=\"Henry VIII of England\">Henry VIII</a>  granted a charter to the London  <a href=\"https://en.wikipedia.org/wiki/Royal_College_of_Physicians\" title=\"Royal College of Physicians\">Royal College of Physicians</a>  in 1518. It was not until 1540 that he granted the  <a href=\"https://en.wikipedia.org/wiki/Barber_surgeon\" title=\"Barber surgeon\">Company of Barber-Surgeons</a>  (ancestor of the  <a href=\"https://en.wikipedia.org/wiki/Royal_College_of_Surgeons\" title=\"Royal College of Surgeons\">Royal College of Surgeons</a>) its separate charter. In the same year, the English monarch established the  <a href=\"https://en.wikipedia.org/wiki/Regius_Professor_of_Physic_(Cambridge)\" title=\"Regius Professor of Physic (Cambridge)\">Regius Professorship of Physic</a>  at the  <a href=\"https://en.wikipedia.org/wiki/University_of_Cambridge\" title=\"University of Cambridge\">University of Cambridge</a>.<a href=\"https://en.wikipedia.org/wiki/Physician#cite_note-6\">[6]</a>  Newer universities would probably describe such an academic as a professor of  <a href=\"https://en.wikipedia.org/wiki/Internal_medicine\" title=\"Internal medicine\">internal medicine</a>. Hence, in the 16th century,  <em>physic</em>  meant roughly what internal medicine does now.</p>\n<p>Currently, a specialist  <a href=\"https://en.wikipedia.org/wiki/Physician_in_the_United_States\" title=\"Physician in the United States\">physician in the United States</a>  may be described as an  <em>internist</em>. Another term,  <em><a href=\"https://en.wikipedia.org/wiki/Hospitalist\" title=\"Hospitalist\">hospitalist</a></em>, was introduced in 1996,<a href=\"https://en.wikipedia.org/wiki/Physician#cite_note-7\">[7]</a>  to describe US specialists in  <a href=\"https://en.wikipedia.org/wiki/Internal_medicine\" title=\"Internal medicine\">internal medicine</a>  who work largely or exclusively in hospitals. Such \'hospitalists\' now make up about 19% of all US  <em>general internists</em>,<a href=\"https://en.wikipedia.org/wiki/Physician#cite_note-8\">[8]</a>  who are often called  <em>general physicians</em>  in  <a href=\"https://en.wikipedia.org/wiki/Commonwealth_of_nations\" title=\"Commonwealth of nations\">Commonwealth</a>  countries.</p>\n<p>This original use, as distinct from surgeon, is common in most of the world including the  <a href=\"https://en.wikipedia.org/wiki/United_Kingdom\" title=\"United Kingdom\">United Kingdom</a>  and other Commonwealth countries (such as  <a href=\"https://en.wikipedia.org/wiki/Australia\" title=\"Australia\">Australia</a>,  <a href=\"https://en.wikipedia.org/wiki/Bangladesh\" title=\"Bangladesh\">Bangladesh</a>,  <a href=\"https://en.wikipedia.org/wiki/India\" title=\"India\">India</a>,  <a href=\"https://en.wikipedia.org/wiki/New_Zealand\" title=\"New Zealand\">New Zealand</a>,  <a href=\"https://en.wikipedia.org/wiki/Pakistan\" title=\"Pakistan\">Pakistan</a>,  <a href=\"https://en.wikipedia.org/wiki/South_Africa\" title=\"South Africa\">South Africa</a>,  <a href=\"https://en.wikipedia.org/wiki/Sri_Lanka\" title=\"Sri Lanka\">Sri Lanka</a>, and  <a href=\"https://en.wikipedia.org/wiki/Zimbabwe\" title=\"Zimbabwe\">Zimbabwe</a>), as well as in places as diverse as  <a href=\"https://en.wikipedia.org/wiki/Brazil\" title=\"Brazil\">Brazil</a>,  <a href=\"https://en.wikipedia.org/wiki/Hong_Kong\" title=\"Hong Kong\">Hong Kong</a>,  <a href=\"https://en.wikipedia.org/wiki/Indonesia\" title=\"Indonesia\">Indonesia</a>,  <a href=\"https://en.wikipedia.org/wiki/Japan\" title=\"Japan\">Japan</a>,  <a href=\"https://en.wikipedia.org/wiki/Republic_of_Ireland\" title=\"Republic of Ireland\">Ireland</a>, and  <a href=\"https://en.wikipedia.org/wiki/Taiwan\" title=\"Taiwan\">Taiwan</a>. In such places, the more general English terms  <em>doctor</em>  or  <em>medical practitioner</em>  are prevalent, describing any practitioner of medicine (whom an American would likely call a physician, in the broad sense).<a href=\"https://en.wikipedia.org/wiki/Physician#cite_note-9\">[9]</a>  In Commonwealth countries, specialist  <a href=\"https://en.wikipedia.org/wiki/Pediatrics\" title=\"Pediatrics\">pediatricians</a>  and  <a href=\"https://en.wikipedia.org/wiki/Geriatrics\" title=\"Geriatrics\">geriatricians</a>  are also described as specialist physicians who have sub-specialized by age of patient rather than by  <a href=\"https://en.wikipedia.org/wiki/Organ_(anatomy)\" title=\"Organ (anatomy)\">organ</a>  system.</p>\n<h3 id=\"physicianandsurgeon\">Physician and surgeon</h3>\n<p>Around the world, the combined term \"physician and surgeon\" is used to describe either a general practitioner or any medical practitioner irrespective of specialty.<a href=\"https://en.wikipedia.org/wiki/Physician#cite_note-Fowler-4\">[4]</a><a href=\"https://en.wikipedia.org/wiki/Physician#cite_note-newSOED-5\">[5]</a>  This usage still shows the original meaning of physician and preserves the old difference between a physician, as a practitioner of  <em>physic</em>, and a surgeon. The term may be used by state medical boards in the United States, and by equivalent bodies in Canadian provinces, to describe any medical practitioner.</p>', 2, -1, -1, 1, NULL, NULL, '2020-11-13 21:00:19', '2020-11-13 21:00:19', NULL),
(6, 'Doctor: Ben', '\n### Specialist in internal medicine\n\nMain article:  [Internal medicine](https://en.wikipedia.org/wiki/Internal_medicine \"Internal medicine\")\n\nAround the world the term physician refers to a  [specialist](https://en.wikipedia.org/wiki/Medical_specialist \"Medical specialist\")  in  [internal medicine](https://en.wikipedia.org/wiki/Internal_medicine \"Internal medicine\")  or one of its many sub-specialties (especially as opposed to a specialist in  [surgery](https://en.wikipedia.org/wiki/Surgery \"Surgery\")). This meaning of physician conveys a sense of expertise in treatment by drugs or medications, rather than by the procedures of  [surgeons](https://en.wikipedia.org/wiki/Surgeon \"Surgeon\").[[4]](https://en.wikipedia.org/wiki/Physician#cite_note-Fowler-4)\n\nThis term is at least nine hundred years old in English: physicians and surgeons were once members of separate professions, and traditionally were rivals. The  _[Shorter Oxford English Dictionary](https://en.wikipedia.org/wiki/Shorter_Oxford_English_Dictionary \"Shorter Oxford English Dictionary\")_, third edition, gives a  [Middle English](https://en.wikipedia.org/wiki/Middle_English \"Middle English\")  quotation making this contrast, from as early as 1400: \"O Lord, whi is it so greet difference betwixe a cirugian and a physician.\"[[5]](https://en.wikipedia.org/wiki/Physician#cite_note-newSOED-5)\n\n[Henry VIII](https://en.wikipedia.org/wiki/Henry_VIII_of_England \"Henry VIII of England\")  granted a charter to the London  [Royal College of Physicians](https://en.wikipedia.org/wiki/Royal_College_of_Physicians \"Royal College of Physicians\")  in 1518. It was not until 1540 that he granted the  [Company of Barber-Surgeons](https://en.wikipedia.org/wiki/Barber_surgeon \"Barber surgeon\")  (ancestor of the  [Royal College of Surgeons](https://en.wikipedia.org/wiki/Royal_College_of_Surgeons \"Royal College of Surgeons\")) its separate charter. In the same year, the English monarch established the  [Regius Professorship of Physic](https://en.wikipedia.org/wiki/Regius_Professor_of_Physic_(Cambridge) \"Regius Professor of Physic (Cambridge)\")  at the  [University of Cambridge](https://en.wikipedia.org/wiki/University_of_Cambridge \"University of Cambridge\").[[6]](https://en.wikipedia.org/wiki/Physician#cite_note-6)  Newer universities would probably describe such an academic as a professor of  [internal medicine](https://en.wikipedia.org/wiki/Internal_medicine \"Internal medicine\"). Hence, in the 16th century,  _physic_  meant roughly what internal medicine does now.\n\nCurrently, a specialist  [physician in the United States](https://en.wikipedia.org/wiki/Physician_in_the_United_States \"Physician in the United States\")  may be described as an  _internist_. Another term,  _[hospitalist](https://en.wikipedia.org/wiki/Hospitalist \"Hospitalist\")_, was introduced in 1996,[[7]](https://en.wikipedia.org/wiki/Physician#cite_note-7)  to describe US specialists in  [internal medicine](https://en.wikipedia.org/wiki/Internal_medicine \"Internal medicine\")  who work largely or exclusively in hospitals. Such \'hospitalists\' now make up about 19% of all US  _general internists_,[[8]](https://en.wikipedia.org/wiki/Physician#cite_note-8)  who are often called  _general physicians_  in  [Commonwealth](https://en.wikipedia.org/wiki/Commonwealth_of_nations \"Commonwealth of nations\")  countries.\n\nThis original use, as distinct from surgeon, is common in most of the world including the  [United Kingdom](https://en.wikipedia.org/wiki/United_Kingdom \"United Kingdom\")  and other Commonwealth countries (such as  [Australia](https://en.wikipedia.org/wiki/Australia \"Australia\"),  [Bangladesh](https://en.wikipedia.org/wiki/Bangladesh \"Bangladesh\"),  [India](https://en.wikipedia.org/wiki/India \"India\"),  [New Zealand](https://en.wikipedia.org/wiki/New_Zealand \"New Zealand\"),  [Pakistan](https://en.wikipedia.org/wiki/Pakistan \"Pakistan\"),  [South Africa](https://en.wikipedia.org/wiki/South_Africa \"South Africa\"),  [Sri Lanka](https://en.wikipedia.org/wiki/Sri_Lanka \"Sri Lanka\"), and  [Zimbabwe](https://en.wikipedia.org/wiki/Zimbabwe \"Zimbabwe\")), as well as in places as diverse as  [Brazil](https://en.wikipedia.org/wiki/Brazil \"Brazil\"),  [Hong Kong](https://en.wikipedia.org/wiki/Hong_Kong \"Hong Kong\"),  [Indonesia](https://en.wikipedia.org/wiki/Indonesia \"Indonesia\"),  [Japan](https://en.wikipedia.org/wiki/Japan \"Japan\"),  [Ireland](https://en.wikipedia.org/wiki/Republic_of_Ireland \"Republic of Ireland\"), and  [Taiwan](https://en.wikipedia.org/wiki/Taiwan \"Taiwan\"). In such places, the more general English terms  _doctor_  or  _medical practitioner_  are prevalent, describing any practitioner of medicine (whom an American would likely call a physician, in the broad sense).[[9]](https://en.wikipedia.org/wiki/Physician#cite_note-9)  In Commonwealth countries, specialist  [pediatricians](https://en.wikipedia.org/wiki/Pediatrics \"Pediatrics\")  and  [geriatricians](https://en.wikipedia.org/wiki/Geriatrics \"Geriatrics\")  are also described as specialist physicians who have sub-specialized by age of patient rather than by  [organ](https://en.wikipedia.org/wiki/Organ_(anatomy) \"Organ (anatomy)\")  system.\n\n### Physician and surgeon\n\nAround the world, the combined term \"physician and surgeon\" is used to describe either a general practitioner or any medical practitioner irrespective of specialty.[[4]](https://en.wikipedia.org/wiki/Physician#cite_note-Fowler-4)[[5]](https://en.wikipedia.org/wiki/Physician#cite_note-newSOED-5)  This usage still shows the original meaning of physician and preserves the old difference between a physician, as a practitioner of  _physic_, and a surgeon. The term may be used by state medical boards in the United States, and by equivalent bodies in Canadian provinces, to describe any medical practitioner.', '<h3 id=\"specialistininternalmedicine\">Specialist in internal medicine</h3>\n<p>Main article:  <a href=\"https://en.wikipedia.org/wiki/Internal_medicine\" title=\"Internal medicine\">Internal medicine</a></p>\n<p>Around the world the term physician refers to a  <a href=\"https://en.wikipedia.org/wiki/Medical_specialist\" title=\"Medical specialist\">specialist</a>  in  <a href=\"https://en.wikipedia.org/wiki/Internal_medicine\" title=\"Internal medicine\">internal medicine</a>  or one of its many sub-specialties (especially as opposed to a specialist in  <a href=\"https://en.wikipedia.org/wiki/Surgery\" title=\"Surgery\">surgery</a>). This meaning of physician conveys a sense of expertise in treatment by drugs or medications, rather than by the procedures of  <a href=\"https://en.wikipedia.org/wiki/Surgeon\" title=\"Surgeon\">surgeons</a>.<a href=\"https://en.wikipedia.org/wiki/Physician#cite_note-Fowler-4\">[4]</a></p>\n<p>This term is at least nine hundred years old in English: physicians and surgeons were once members of separate professions, and traditionally were rivals. The  <em><a href=\"https://en.wikipedia.org/wiki/Shorter_Oxford_English_Dictionary\" title=\"Shorter Oxford English Dictionary\">Shorter Oxford English Dictionary</a></em>, third edition, gives a  <a href=\"https://en.wikipedia.org/wiki/Middle_English\" title=\"Middle English\">Middle English</a>  quotation making this contrast, from as early as 1400: \"O Lord, whi is it so greet difference betwixe a cirugian and a physician.\"<a href=\"https://en.wikipedia.org/wiki/Physician#cite_note-newSOED-5\">[5]</a></p>\n<p><a href=\"https://en.wikipedia.org/wiki/Henry_VIII_of_England\" title=\"Henry VIII of England\">Henry VIII</a>  granted a charter to the London  <a href=\"https://en.wikipedia.org/wiki/Royal_College_of_Physicians\" title=\"Royal College of Physicians\">Royal College of Physicians</a>  in 1518. It was not until 1540 that he granted the  <a href=\"https://en.wikipedia.org/wiki/Barber_surgeon\" title=\"Barber surgeon\">Company of Barber-Surgeons</a>  (ancestor of the  <a href=\"https://en.wikipedia.org/wiki/Royal_College_of_Surgeons\" title=\"Royal College of Surgeons\">Royal College of Surgeons</a>) its separate charter. In the same year, the English monarch established the  <a href=\"https://en.wikipedia.org/wiki/Regius_Professor_of_Physic_(Cambridge)\" title=\"Regius Professor of Physic (Cambridge)\">Regius Professorship of Physic</a>  at the  <a href=\"https://en.wikipedia.org/wiki/University_of_Cambridge\" title=\"University of Cambridge\">University of Cambridge</a>.<a href=\"https://en.wikipedia.org/wiki/Physician#cite_note-6\">[6]</a>  Newer universities would probably describe such an academic as a professor of  <a href=\"https://en.wikipedia.org/wiki/Internal_medicine\" title=\"Internal medicine\">internal medicine</a>. Hence, in the 16th century,  <em>physic</em>  meant roughly what internal medicine does now.</p>\n<p>Currently, a specialist  <a href=\"https://en.wikipedia.org/wiki/Physician_in_the_United_States\" title=\"Physician in the United States\">physician in the United States</a>  may be described as an  <em>internist</em>. Another term,  <em><a href=\"https://en.wikipedia.org/wiki/Hospitalist\" title=\"Hospitalist\">hospitalist</a></em>, was introduced in 1996,<a href=\"https://en.wikipedia.org/wiki/Physician#cite_note-7\">[7]</a>  to describe US specialists in  <a href=\"https://en.wikipedia.org/wiki/Internal_medicine\" title=\"Internal medicine\">internal medicine</a>  who work largely or exclusively in hospitals. Such \'hospitalists\' now make up about 19% of all US  <em>general internists</em>,<a href=\"https://en.wikipedia.org/wiki/Physician#cite_note-8\">[8]</a>  who are often called  <em>general physicians</em>  in  <a href=\"https://en.wikipedia.org/wiki/Commonwealth_of_nations\" title=\"Commonwealth of nations\">Commonwealth</a>  countries.</p>\n<p>This original use, as distinct from surgeon, is common in most of the world including the  <a href=\"https://en.wikipedia.org/wiki/United_Kingdom\" title=\"United Kingdom\">United Kingdom</a>  and other Commonwealth countries (such as  <a href=\"https://en.wikipedia.org/wiki/Australia\" title=\"Australia\">Australia</a>,  <a href=\"https://en.wikipedia.org/wiki/Bangladesh\" title=\"Bangladesh\">Bangladesh</a>,  <a href=\"https://en.wikipedia.org/wiki/India\" title=\"India\">India</a>,  <a href=\"https://en.wikipedia.org/wiki/New_Zealand\" title=\"New Zealand\">New Zealand</a>,  <a href=\"https://en.wikipedia.org/wiki/Pakistan\" title=\"Pakistan\">Pakistan</a>,  <a href=\"https://en.wikipedia.org/wiki/South_Africa\" title=\"South Africa\">South Africa</a>,  <a href=\"https://en.wikipedia.org/wiki/Sri_Lanka\" title=\"Sri Lanka\">Sri Lanka</a>, and  <a href=\"https://en.wikipedia.org/wiki/Zimbabwe\" title=\"Zimbabwe\">Zimbabwe</a>), as well as in places as diverse as  <a href=\"https://en.wikipedia.org/wiki/Brazil\" title=\"Brazil\">Brazil</a>,  <a href=\"https://en.wikipedia.org/wiki/Hong_Kong\" title=\"Hong Kong\">Hong Kong</a>,  <a href=\"https://en.wikipedia.org/wiki/Indonesia\" title=\"Indonesia\">Indonesia</a>,  <a href=\"https://en.wikipedia.org/wiki/Japan\" title=\"Japan\">Japan</a>,  <a href=\"https://en.wikipedia.org/wiki/Republic_of_Ireland\" title=\"Republic of Ireland\">Ireland</a>, and  <a href=\"https://en.wikipedia.org/wiki/Taiwan\" title=\"Taiwan\">Taiwan</a>. In such places, the more general English terms  <em>doctor</em>  or  <em>medical practitioner</em>  are prevalent, describing any practitioner of medicine (whom an American would likely call a physician, in the broad sense).<a href=\"https://en.wikipedia.org/wiki/Physician#cite_note-9\">[9]</a>  In Commonwealth countries, specialist  <a href=\"https://en.wikipedia.org/wiki/Pediatrics\" title=\"Pediatrics\">pediatricians</a>  and  <a href=\"https://en.wikipedia.org/wiki/Geriatrics\" title=\"Geriatrics\">geriatricians</a>  are also described as specialist physicians who have sub-specialized by age of patient rather than by  <a href=\"https://en.wikipedia.org/wiki/Organ_(anatomy)\" title=\"Organ (anatomy)\">organ</a>  system.</p>\n<h3 id=\"physicianandsurgeon\">Physician and surgeon</h3>\n<p>Around the world, the combined term \"physician and surgeon\" is used to describe either a general practitioner or any medical practitioner irrespective of specialty.<a href=\"https://en.wikipedia.org/wiki/Physician#cite_note-Fowler-4\">[4]</a><a href=\"https://en.wikipedia.org/wiki/Physician#cite_note-newSOED-5\">[5]</a>  This usage still shows the original meaning of physician and preserves the old difference between a physician, as a practitioner of  <em>physic</em>, and a surgeon. The term may be used by state medical boards in the United States, and by equivalent bodies in Canadian provinces, to describe any medical practitioner.</p>', 3, -1, -1, 1, NULL, NULL, '2020-11-13 21:00:37', '2020-11-13 21:00:37', NULL);
INSERT INTO `posts` (`id`, `title`, `contentMarkdown`, `contentHTML`, `forDoctorId`, `forSpecializationId`, `forClinicId`, `writerId`, `confirmByDoctor`, `image`, `createdAt`, `updatedAt`, `deletedAt`) VALUES
(7, 'Doctor Clever', '\n### Specialist in internal medicine\n\nMain article:  [Internal medicine](https://en.wikipedia.org/wiki/Internal_medicine \"Internal medicine\")\n\nAround the world the term physician refers to a  [specialist](https://en.wikipedia.org/wiki/Medical_specialist \"Medical specialist\")  in  [internal medicine](https://en.wikipedia.org/wiki/Internal_medicine \"Internal medicine\")  or one of its many sub-specialties (especially as opposed to a specialist in  [surgery](https://en.wikipedia.org/wiki/Surgery \"Surgery\")). This meaning of physician conveys a sense of expertise in treatment by drugs or medications, rather than by the procedures of  [surgeons](https://en.wikipedia.org/wiki/Surgeon \"Surgeon\").[[4]](https://en.wikipedia.org/wiki/Physician#cite_note-Fowler-4)\n\nThis term is at least nine hundred years old in English: physicians and surgeons were once members of separate professions, and traditionally were rivals. The  _[Shorter Oxford English Dictionary](https://en.wikipedia.org/wiki/Shorter_Oxford_English_Dictionary \"Shorter Oxford English Dictionary\")_, third edition, gives a  [Middle English](https://en.wikipedia.org/wiki/Middle_English \"Middle English\")  quotation making this contrast, from as early as 1400: \"O Lord, whi is it so greet difference betwixe a cirugian and a physician.\"[[5]](https://en.wikipedia.org/wiki/Physician#cite_note-newSOED-5)\n\n[Henry VIII](https://en.wikipedia.org/wiki/Henry_VIII_of_England \"Henry VIII of England\")  granted a charter to the London  [Royal College of Physicians](https://en.wikipedia.org/wiki/Royal_College_of_Physicians \"Royal College of Physicians\")  in 1518. It was not until 1540 that he granted the  [Company of Barber-Surgeons](https://en.wikipedia.org/wiki/Barber_surgeon \"Barber surgeon\")  (ancestor of the  [Royal College of Surgeons](https://en.wikipedia.org/wiki/Royal_College_of_Surgeons \"Royal College of Surgeons\")) its separate charter. In the same year, the English monarch established the  [Regius Professorship of Physic](https://en.wikipedia.org/wiki/Regius_Professor_of_Physic_(Cambridge) \"Regius Professor of Physic (Cambridge)\")  at the  [University of Cambridge](https://en.wikipedia.org/wiki/University_of_Cambridge \"University of Cambridge\").[[6]](https://en.wikipedia.org/wiki/Physician#cite_note-6)  Newer universities would probably describe such an academic as a professor of  [internal medicine](https://en.wikipedia.org/wiki/Internal_medicine \"Internal medicine\"). Hence, in the 16th century,  _physic_  meant roughly what internal medicine does now.\n\nCurrently, a specialist  [physician in the United States](https://en.wikipedia.org/wiki/Physician_in_the_United_States \"Physician in the United States\")  may be described as an  _internist_. Another term,  _[hospitalist](https://en.wikipedia.org/wiki/Hospitalist \"Hospitalist\")_, was introduced in 1996,[[7]](https://en.wikipedia.org/wiki/Physician#cite_note-7)  to describe US specialists in  [internal medicine](https://en.wikipedia.org/wiki/Internal_medicine \"Internal medicine\")  who work largely or exclusively in hospitals. Such \'hospitalists\' now make up about 19% of all US  _general internists_,[[8]](https://en.wikipedia.org/wiki/Physician#cite_note-8)  who are often called  _general physicians_  in  [Commonwealth](https://en.wikipedia.org/wiki/Commonwealth_of_nations \"Commonwealth of nations\")  countries.\n\nThis original use, as distinct from surgeon, is common in most of the world including the  [United Kingdom](https://en.wikipedia.org/wiki/United_Kingdom \"United Kingdom\")  and other Commonwealth countries (such as  [Australia](https://en.wikipedia.org/wiki/Australia \"Australia\"),  [Bangladesh](https://en.wikipedia.org/wiki/Bangladesh \"Bangladesh\"),  [India](https://en.wikipedia.org/wiki/India \"India\"),  [New Zealand](https://en.wikipedia.org/wiki/New_Zealand \"New Zealand\"),  [Pakistan](https://en.wikipedia.org/wiki/Pakistan \"Pakistan\"),  [South Africa](https://en.wikipedia.org/wiki/South_Africa \"South Africa\"),  [Sri Lanka](https://en.wikipedia.org/wiki/Sri_Lanka \"Sri Lanka\"), and  [Zimbabwe](https://en.wikipedia.org/wiki/Zimbabwe \"Zimbabwe\")), as well as in places as diverse as  [Brazil](https://en.wikipedia.org/wiki/Brazil \"Brazil\"),  [Hong Kong](https://en.wikipedia.org/wiki/Hong_Kong \"Hong Kong\"),  [Indonesia](https://en.wikipedia.org/wiki/Indonesia \"Indonesia\"),  [Japan](https://en.wikipedia.org/wiki/Japan \"Japan\"),  [Ireland](https://en.wikipedia.org/wiki/Republic_of_Ireland \"Republic of Ireland\"), and  [Taiwan](https://en.wikipedia.org/wiki/Taiwan \"Taiwan\"). In such places, the more general English terms  _doctor_  or  _medical practitioner_  are prevalent, describing any practitioner of medicine (whom an American would likely call a physician, in the broad sense).[[9]](https://en.wikipedia.org/wiki/Physician#cite_note-9)  In Commonwealth countries, specialist  [pediatricians](https://en.wikipedia.org/wiki/Pediatrics \"Pediatrics\")  and  [geriatricians](https://en.wikipedia.org/wiki/Geriatrics \"Geriatrics\")  are also described as specialist physicians who have sub-specialized by age of patient rather than by  [organ](https://en.wikipedia.org/wiki/Organ_(anatomy) \"Organ (anatomy)\")  system.\n\n### Physician and surgeon\n\nAround the world, the combined term \"physician and surgeon\" is used to describe either a general practitioner or any medical practitioner irrespective of specialty.[[4]](https://en.wikipedia.org/wiki/Physician#cite_note-Fowler-4)[[5]](https://en.wikipedia.org/wiki/Physician#cite_note-newSOED-5)  This usage still shows the original meaning of physician and preserves the old difference between a physician, as a practitioner of  _physic_, and a surgeon. The term may be used by state medical boards in the United States, and by equivalent bodies in Canadian provinces, to describe any medical practitioner.', '<h3 id=\"specialistininternalmedicine\">Specialist in internal medicine</h3>\n<p>Main article:  <a href=\"https://en.wikipedia.org/wiki/Internal_medicine\" title=\"Internal medicine\">Internal medicine</a></p>\n<p>Around the world the term physician refers to a  <a href=\"https://en.wikipedia.org/wiki/Medical_specialist\" title=\"Medical specialist\">specialist</a>  in  <a href=\"https://en.wikipedia.org/wiki/Internal_medicine\" title=\"Internal medicine\">internal medicine</a>  or one of its many sub-specialties (especially as opposed to a specialist in  <a href=\"https://en.wikipedia.org/wiki/Surgery\" title=\"Surgery\">surgery</a>). This meaning of physician conveys a sense of expertise in treatment by drugs or medications, rather than by the procedures of  <a href=\"https://en.wikipedia.org/wiki/Surgeon\" title=\"Surgeon\">surgeons</a>.<a href=\"https://en.wikipedia.org/wiki/Physician#cite_note-Fowler-4\">[4]</a></p>\n<p>This term is at least nine hundred years old in English: physicians and surgeons were once members of separate professions, and traditionally were rivals. The  <em><a href=\"https://en.wikipedia.org/wiki/Shorter_Oxford_English_Dictionary\" title=\"Shorter Oxford English Dictionary\">Shorter Oxford English Dictionary</a></em>, third edition, gives a  <a href=\"https://en.wikipedia.org/wiki/Middle_English\" title=\"Middle English\">Middle English</a>  quotation making this contrast, from as early as 1400: \"O Lord, whi is it so greet difference betwixe a cirugian and a physician.\"<a href=\"https://en.wikipedia.org/wiki/Physician#cite_note-newSOED-5\">[5]</a></p>\n<p><a href=\"https://en.wikipedia.org/wiki/Henry_VIII_of_England\" title=\"Henry VIII of England\">Henry VIII</a>  granted a charter to the London  <a href=\"https://en.wikipedia.org/wiki/Royal_College_of_Physicians\" title=\"Royal College of Physicians\">Royal College of Physicians</a>  in 1518. It was not until 1540 that he granted the  <a href=\"https://en.wikipedia.org/wiki/Barber_surgeon\" title=\"Barber surgeon\">Company of Barber-Surgeons</a>  (ancestor of the  <a href=\"https://en.wikipedia.org/wiki/Royal_College_of_Surgeons\" title=\"Royal College of Surgeons\">Royal College of Surgeons</a>) its separate charter. In the same year, the English monarch established the  <a href=\"https://en.wikipedia.org/wiki/Regius_Professor_of_Physic_(Cambridge)\" title=\"Regius Professor of Physic (Cambridge)\">Regius Professorship of Physic</a>  at the  <a href=\"https://en.wikipedia.org/wiki/University_of_Cambridge\" title=\"University of Cambridge\">University of Cambridge</a>.<a href=\"https://en.wikipedia.org/wiki/Physician#cite_note-6\">[6]</a>  Newer universities would probably describe such an academic as a professor of  <a href=\"https://en.wikipedia.org/wiki/Internal_medicine\" title=\"Internal medicine\">internal medicine</a>. Hence, in the 16th century,  <em>physic</em>  meant roughly what internal medicine does now.</p>\n<p>Currently, a specialist  <a href=\"https://en.wikipedia.org/wiki/Physician_in_the_United_States\" title=\"Physician in the United States\">physician in the United States</a>  may be described as an  <em>internist</em>. Another term,  <em><a href=\"https://en.wikipedia.org/wiki/Hospitalist\" title=\"Hospitalist\">hospitalist</a></em>, was introduced in 1996,<a href=\"https://en.wikipedia.org/wiki/Physician#cite_note-7\">[7]</a>  to describe US specialists in  <a href=\"https://en.wikipedia.org/wiki/Internal_medicine\" title=\"Internal medicine\">internal medicine</a>  who work largely or exclusively in hospitals. Such \'hospitalists\' now make up about 19% of all US  <em>general internists</em>,<a href=\"https://en.wikipedia.org/wiki/Physician#cite_note-8\">[8]</a>  who are often called  <em>general physicians</em>  in  <a href=\"https://en.wikipedia.org/wiki/Commonwealth_of_nations\" title=\"Commonwealth of nations\">Commonwealth</a>  countries.</p>\n<p>This original use, as distinct from surgeon, is common in most of the world including the  <a href=\"https://en.wikipedia.org/wiki/United_Kingdom\" title=\"United Kingdom\">United Kingdom</a>  and other Commonwealth countries (such as  <a href=\"https://en.wikipedia.org/wiki/Australia\" title=\"Australia\">Australia</a>,  <a href=\"https://en.wikipedia.org/wiki/Bangladesh\" title=\"Bangladesh\">Bangladesh</a>,  <a href=\"https://en.wikipedia.org/wiki/India\" title=\"India\">India</a>,  <a href=\"https://en.wikipedia.org/wiki/New_Zealand\" title=\"New Zealand\">New Zealand</a>,  <a href=\"https://en.wikipedia.org/wiki/Pakistan\" title=\"Pakistan\">Pakistan</a>,  <a href=\"https://en.wikipedia.org/wiki/South_Africa\" title=\"South Africa\">South Africa</a>,  <a href=\"https://en.wikipedia.org/wiki/Sri_Lanka\" title=\"Sri Lanka\">Sri Lanka</a>, and  <a href=\"https://en.wikipedia.org/wiki/Zimbabwe\" title=\"Zimbabwe\">Zimbabwe</a>), as well as in places as diverse as  <a href=\"https://en.wikipedia.org/wiki/Brazil\" title=\"Brazil\">Brazil</a>,  <a href=\"https://en.wikipedia.org/wiki/Hong_Kong\" title=\"Hong Kong\">Hong Kong</a>,  <a href=\"https://en.wikipedia.org/wiki/Indonesia\" title=\"Indonesia\">Indonesia</a>,  <a href=\"https://en.wikipedia.org/wiki/Japan\" title=\"Japan\">Japan</a>,  <a href=\"https://en.wikipedia.org/wiki/Republic_of_Ireland\" title=\"Republic of Ireland\">Ireland</a>, and  <a href=\"https://en.wikipedia.org/wiki/Taiwan\" title=\"Taiwan\">Taiwan</a>. In such places, the more general English terms  <em>doctor</em>  or  <em>medical practitioner</em>  are prevalent, describing any practitioner of medicine (whom an American would likely call a physician, in the broad sense).<a href=\"https://en.wikipedia.org/wiki/Physician#cite_note-9\">[9]</a>  In Commonwealth countries, specialist  <a href=\"https://en.wikipedia.org/wiki/Pediatrics\" title=\"Pediatrics\">pediatricians</a>  and  <a href=\"https://en.wikipedia.org/wiki/Geriatrics\" title=\"Geriatrics\">geriatricians</a>  are also described as specialist physicians who have sub-specialized by age of patient rather than by  <a href=\"https://en.wikipedia.org/wiki/Organ_(anatomy)\" title=\"Organ (anatomy)\">organ</a>  system.</p>\n<h3 id=\"physicianandsurgeon\">Physician and surgeon</h3>\n<p>Around the world, the combined term \"physician and surgeon\" is used to describe either a general practitioner or any medical practitioner irrespective of specialty.<a href=\"https://en.wikipedia.org/wiki/Physician#cite_note-Fowler-4\">[4]</a><a href=\"https://en.wikipedia.org/wiki/Physician#cite_note-newSOED-5\">[5]</a>  This usage still shows the original meaning of physician and preserves the old difference between a physician, as a practitioner of  <em>physic</em>, and a surgeon. The term may be used by state medical boards in the United States, and by equivalent bodies in Canadian provinces, to describe any medical practitioner.</p>', 5, -1, -1, 1, NULL, NULL, '2020-11-13 21:00:52', '2020-11-13 21:00:52', NULL),
(8, 'Doctor: Sam', '\n### Specialist in internal medicine\n\nMain article:  [Internal medicine](https://en.wikipedia.org/wiki/Internal_medicine \"Internal medicine\")\n\nAround the world the term physician refers to a  [specialist](https://en.wikipedia.org/wiki/Medical_specialist \"Medical specialist\")  in  [internal medicine](https://en.wikipedia.org/wiki/Internal_medicine \"Internal medicine\")  or one of its many sub-specialties (especially as opposed to a specialist in  [surgery](https://en.wikipedia.org/wiki/Surgery \"Surgery\")). This meaning of physician conveys a sense of expertise in treatment by drugs or medications, rather than by the procedures of  [surgeons](https://en.wikipedia.org/wiki/Surgeon \"Surgeon\").[[4]](https://en.wikipedia.org/wiki/Physician#cite_note-Fowler-4)\n\nThis term is at least nine hundred years old in English: physicians and surgeons were once members of separate professions, and traditionally were rivals. The  _[Shorter Oxford English Dictionary](https://en.wikipedia.org/wiki/Shorter_Oxford_English_Dictionary \"Shorter Oxford English Dictionary\")_, third edition, gives a  [Middle English](https://en.wikipedia.org/wiki/Middle_English \"Middle English\")  quotation making this contrast, from as early as 1400: \"O Lord, whi is it so greet difference betwixe a cirugian and a physician.\"[[5]](https://en.wikipedia.org/wiki/Physician#cite_note-newSOED-5)\n\n[Henry VIII](https://en.wikipedia.org/wiki/Henry_VIII_of_England \"Henry VIII of England\")  granted a charter to the London  [Royal College of Physicians](https://en.wikipedia.org/wiki/Royal_College_of_Physicians \"Royal College of Physicians\")  in 1518. It was not until 1540 that he granted the  [Company of Barber-Surgeons](https://en.wikipedia.org/wiki/Barber_surgeon \"Barber surgeon\")  (ancestor of the  [Royal College of Surgeons](https://en.wikipedia.org/wiki/Royal_College_of_Surgeons \"Royal College of Surgeons\")) its separate charter. In the same year, the English monarch established the  [Regius Professorship of Physic](https://en.wikipedia.org/wiki/Regius_Professor_of_Physic_(Cambridge) \"Regius Professor of Physic (Cambridge)\")  at the  [University of Cambridge](https://en.wikipedia.org/wiki/University_of_Cambridge \"University of Cambridge\").[[6]](https://en.wikipedia.org/wiki/Physician#cite_note-6)  Newer universities would probably describe such an academic as a professor of  [internal medicine](https://en.wikipedia.org/wiki/Internal_medicine \"Internal medicine\"). Hence, in the 16th century,  _physic_  meant roughly what internal medicine does now.\n\nCurrently, a specialist  [physician in the United States](https://en.wikipedia.org/wiki/Physician_in_the_United_States \"Physician in the United States\")  may be described as an  _internist_. Another term,  _[hospitalist](https://en.wikipedia.org/wiki/Hospitalist \"Hospitalist\")_, was introduced in 1996,[[7]](https://en.wikipedia.org/wiki/Physician#cite_note-7)  to describe US specialists in  [internal medicine](https://en.wikipedia.org/wiki/Internal_medicine \"Internal medicine\")  who work largely or exclusively in hospitals. Such \'hospitalists\' now make up about 19% of all US  _general internists_,[[8]](https://en.wikipedia.org/wiki/Physician#cite_note-8)  who are often called  _general physicians_  in  [Commonwealth](https://en.wikipedia.org/wiki/Commonwealth_of_nations \"Commonwealth of nations\")  countries.\n\nThis original use, as distinct from surgeon, is common in most of the world including the  [United Kingdom](https://en.wikipedia.org/wiki/United_Kingdom \"United Kingdom\")  and other Commonwealth countries (such as  [Australia](https://en.wikipedia.org/wiki/Australia \"Australia\"),  [Bangladesh](https://en.wikipedia.org/wiki/Bangladesh \"Bangladesh\"),  [India](https://en.wikipedia.org/wiki/India \"India\"),  [New Zealand](https://en.wikipedia.org/wiki/New_Zealand \"New Zealand\"),  [Pakistan](https://en.wikipedia.org/wiki/Pakistan \"Pakistan\"),  [South Africa](https://en.wikipedia.org/wiki/South_Africa \"South Africa\"),  [Sri Lanka](https://en.wikipedia.org/wiki/Sri_Lanka \"Sri Lanka\"), and  [Zimbabwe](https://en.wikipedia.org/wiki/Zimbabwe \"Zimbabwe\")), as well as in places as diverse as  [Brazil](https://en.wikipedia.org/wiki/Brazil \"Brazil\"),  [Hong Kong](https://en.wikipedia.org/wiki/Hong_Kong \"Hong Kong\"),  [Indonesia](https://en.wikipedia.org/wiki/Indonesia \"Indonesia\"),  [Japan](https://en.wikipedia.org/wiki/Japan \"Japan\"),  [Ireland](https://en.wikipedia.org/wiki/Republic_of_Ireland \"Republic of Ireland\"), and  [Taiwan](https://en.wikipedia.org/wiki/Taiwan \"Taiwan\"). In such places, the more general English terms  _doctor_  or  _medical practitioner_  are prevalent, describing any practitioner of medicine (whom an American would likely call a physician, in the broad sense).[[9]](https://en.wikipedia.org/wiki/Physician#cite_note-9)  In Commonwealth countries, specialist  [pediatricians](https://en.wikipedia.org/wiki/Pediatrics \"Pediatrics\")  and  [geriatricians](https://en.wikipedia.org/wiki/Geriatrics \"Geriatrics\")  are also described as specialist physicians who have sub-specialized by age of patient rather than by  [organ](https://en.wikipedia.org/wiki/Organ_(anatomy) \"Organ (anatomy)\")  system.\n\n### Physician and surgeon\n\nAround the world, the combined term \"physician and surgeon\" is used to describe either a general practitioner or any medical practitioner irrespective of specialty.[[4]](https://en.wikipedia.org/wiki/Physician#cite_note-Fowler-4)[[5]](https://en.wikipedia.org/wiki/Physician#cite_note-newSOED-5)  This usage still shows the original meaning of physician and preserves the old difference between a physician, as a practitioner of  _physic_, and a surgeon. The term may be used by state medical boards in the United States, and by equivalent bodies in Canadian provinces, to describe any medical practitioner.', '<h3 id=\"specialistininternalmedicine\">Specialist in internal medicine</h3>\n<p>Main article:  <a href=\"https://en.wikipedia.org/wiki/Internal_medicine\" title=\"Internal medicine\">Internal medicine</a></p>\n<p>Around the world the term physician refers to a  <a href=\"https://en.wikipedia.org/wiki/Medical_specialist\" title=\"Medical specialist\">specialist</a>  in  <a href=\"https://en.wikipedia.org/wiki/Internal_medicine\" title=\"Internal medicine\">internal medicine</a>  or one of its many sub-specialties (especially as opposed to a specialist in  <a href=\"https://en.wikipedia.org/wiki/Surgery\" title=\"Surgery\">surgery</a>). This meaning of physician conveys a sense of expertise in treatment by drugs or medications, rather than by the procedures of  <a href=\"https://en.wikipedia.org/wiki/Surgeon\" title=\"Surgeon\">surgeons</a>.<a href=\"https://en.wikipedia.org/wiki/Physician#cite_note-Fowler-4\">[4]</a></p>\n<p>This term is at least nine hundred years old in English: physicians and surgeons were once members of separate professions, and traditionally were rivals. The  <em><a href=\"https://en.wikipedia.org/wiki/Shorter_Oxford_English_Dictionary\" title=\"Shorter Oxford English Dictionary\">Shorter Oxford English Dictionary</a></em>, third edition, gives a  <a href=\"https://en.wikipedia.org/wiki/Middle_English\" title=\"Middle English\">Middle English</a>  quotation making this contrast, from as early as 1400: \"O Lord, whi is it so greet difference betwixe a cirugian and a physician.\"<a href=\"https://en.wikipedia.org/wiki/Physician#cite_note-newSOED-5\">[5]</a></p>\n<p><a href=\"https://en.wikipedia.org/wiki/Henry_VIII_of_England\" title=\"Henry VIII of England\">Henry VIII</a>  granted a charter to the London  <a href=\"https://en.wikipedia.org/wiki/Royal_College_of_Physicians\" title=\"Royal College of Physicians\">Royal College of Physicians</a>  in 1518. It was not until 1540 that he granted the  <a href=\"https://en.wikipedia.org/wiki/Barber_surgeon\" title=\"Barber surgeon\">Company of Barber-Surgeons</a>  (ancestor of the  <a href=\"https://en.wikipedia.org/wiki/Royal_College_of_Surgeons\" title=\"Royal College of Surgeons\">Royal College of Surgeons</a>) its separate charter. In the same year, the English monarch established the  <a href=\"https://en.wikipedia.org/wiki/Regius_Professor_of_Physic_(Cambridge)\" title=\"Regius Professor of Physic (Cambridge)\">Regius Professorship of Physic</a>  at the  <a href=\"https://en.wikipedia.org/wiki/University_of_Cambridge\" title=\"University of Cambridge\">University of Cambridge</a>.<a href=\"https://en.wikipedia.org/wiki/Physician#cite_note-6\">[6]</a>  Newer universities would probably describe such an academic as a professor of  <a href=\"https://en.wikipedia.org/wiki/Internal_medicine\" title=\"Internal medicine\">internal medicine</a>. Hence, in the 16th century,  <em>physic</em>  meant roughly what internal medicine does now.</p>\n<p>Currently, a specialist  <a href=\"https://en.wikipedia.org/wiki/Physician_in_the_United_States\" title=\"Physician in the United States\">physician in the United States</a>  may be described as an  <em>internist</em>. Another term,  <em><a href=\"https://en.wikipedia.org/wiki/Hospitalist\" title=\"Hospitalist\">hospitalist</a></em>, was introduced in 1996,<a href=\"https://en.wikipedia.org/wiki/Physician#cite_note-7\">[7]</a>  to describe US specialists in  <a href=\"https://en.wikipedia.org/wiki/Internal_medicine\" title=\"Internal medicine\">internal medicine</a>  who work largely or exclusively in hospitals. Such \'hospitalists\' now make up about 19% of all US  <em>general internists</em>,<a href=\"https://en.wikipedia.org/wiki/Physician#cite_note-8\">[8]</a>  who are often called  <em>general physicians</em>  in  <a href=\"https://en.wikipedia.org/wiki/Commonwealth_of_nations\" title=\"Commonwealth of nations\">Commonwealth</a>  countries.</p>\n<p>This original use, as distinct from surgeon, is common in most of the world including the  <a href=\"https://en.wikipedia.org/wiki/United_Kingdom\" title=\"United Kingdom\">United Kingdom</a>  and other Commonwealth countries (such as  <a href=\"https://en.wikipedia.org/wiki/Australia\" title=\"Australia\">Australia</a>,  <a href=\"https://en.wikipedia.org/wiki/Bangladesh\" title=\"Bangladesh\">Bangladesh</a>,  <a href=\"https://en.wikipedia.org/wiki/India\" title=\"India\">India</a>,  <a href=\"https://en.wikipedia.org/wiki/New_Zealand\" title=\"New Zealand\">New Zealand</a>,  <a href=\"https://en.wikipedia.org/wiki/Pakistan\" title=\"Pakistan\">Pakistan</a>,  <a href=\"https://en.wikipedia.org/wiki/South_Africa\" title=\"South Africa\">South Africa</a>,  <a href=\"https://en.wikipedia.org/wiki/Sri_Lanka\" title=\"Sri Lanka\">Sri Lanka</a>, and  <a href=\"https://en.wikipedia.org/wiki/Zimbabwe\" title=\"Zimbabwe\">Zimbabwe</a>), as well as in places as diverse as  <a href=\"https://en.wikipedia.org/wiki/Brazil\" title=\"Brazil\">Brazil</a>,  <a href=\"https://en.wikipedia.org/wiki/Hong_Kong\" title=\"Hong Kong\">Hong Kong</a>,  <a href=\"https://en.wikipedia.org/wiki/Indonesia\" title=\"Indonesia\">Indonesia</a>,  <a href=\"https://en.wikipedia.org/wiki/Japan\" title=\"Japan\">Japan</a>,  <a href=\"https://en.wikipedia.org/wiki/Republic_of_Ireland\" title=\"Republic of Ireland\">Ireland</a>, and  <a href=\"https://en.wikipedia.org/wiki/Taiwan\" title=\"Taiwan\">Taiwan</a>. In such places, the more general English terms  <em>doctor</em>  or  <em>medical practitioner</em>  are prevalent, describing any practitioner of medicine (whom an American would likely call a physician, in the broad sense).<a href=\"https://en.wikipedia.org/wiki/Physician#cite_note-9\">[9]</a>  In Commonwealth countries, specialist  <a href=\"https://en.wikipedia.org/wiki/Pediatrics\" title=\"Pediatrics\">pediatricians</a>  and  <a href=\"https://en.wikipedia.org/wiki/Geriatrics\" title=\"Geriatrics\">geriatricians</a>  are also described as specialist physicians who have sub-specialized by age of patient rather than by  <a href=\"https://en.wikipedia.org/wiki/Organ_(anatomy)\" title=\"Organ (anatomy)\">organ</a>  system.</p>\n<h3 id=\"physicianandsurgeon\">Physician and surgeon</h3>\n<p>Around the world, the combined term \"physician and surgeon\" is used to describe either a general practitioner or any medical practitioner irrespective of specialty.<a href=\"https://en.wikipedia.org/wiki/Physician#cite_note-Fowler-4\">[4]</a><a href=\"https://en.wikipedia.org/wiki/Physician#cite_note-newSOED-5\">[5]</a>  This usage still shows the original meaning of physician and preserves the old difference between a physician, as a practitioner of  <em>physic</em>, and a surgeon. The term may be used by state medical boards in the United States, and by equivalent bodies in Canadian provinces, to describe any medical practitioner.</p>', 6, -1, -1, 1, NULL, NULL, '2020-11-13 21:01:09', '2020-11-13 21:01:09', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `roles`
--

CREATE TABLE `roles` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime DEFAULT NULL,
  `deletedAt` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `roles`
--

INSERT INTO `roles` (`id`, `name`, `createdAt`, `updatedAt`, `deletedAt`) VALUES
(1, 'ADMIN', '2020-11-13 19:44:36', '2020-11-13 19:44:36', NULL),
(2, 'DOCTOR', '2020-11-13 19:44:36', '2020-11-13 19:44:36', NULL),
(3, 'SUPPORTER', '2020-11-13 19:44:36', '2020-11-13 19:44:36', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `schedules`
--

CREATE TABLE `schedules` (
  `id` int(11) NOT NULL,
  `doctorId` int(11) NOT NULL,
  `date` varchar(255) DEFAULT NULL,
  `time` varchar(255) DEFAULT NULL,
  `maxBooking` varchar(255) DEFAULT NULL,
  `sumBooking` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime DEFAULT NULL,
  `deletedAt` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `schedules`
--

INSERT INTO `schedules` (`id`, `doctorId`, `date`, `time`, `maxBooking`, `sumBooking`, `createdAt`, `updatedAt`, `deletedAt`) VALUES
(297, 2, '17/04/2023', '13:00 - 14:00', '2', '0', '2023-04-17 08:27:09', '2023-04-17 08:27:09', NULL),
(298, 2, '17/04/2023', '10:00 - 11:00', '2', '0', '2023-04-17 08:27:09', '2023-04-17 08:27:09', NULL),
(299, 2, '17/04/2023', '08:00 - 09:00', '2', '0', '2023-04-17 08:27:09', '2023-04-17 08:27:09', NULL),
(300, 2, '17/04/2023', '09:00 - 10:00', '2', '0', '2023-04-17 08:27:09', '2023-04-17 08:27:09', NULL),
(301, 2, '17/04/2023', '11:00 - 12:00', '2', '0', '2023-04-17 08:27:09', '2023-04-17 08:27:09', NULL),
(302, 2, '17/04/2023', '14:00 - 15:00', '2', '0', '2023-04-17 08:27:09', '2023-04-17 08:27:09', NULL),
(303, 2, '17/04/2023', '15:00 - 16:00', '2', '0', '2023-04-17 08:27:09', '2023-04-17 08:27:09', NULL),
(304, 2, '17/04/2023', '16:00 - 17:00', '2', '0', '2023-04-17 08:27:09', '2023-04-17 08:27:09', NULL),
(305, 2, '18/04/2023', '08:00 - 09:00', '2', '0', '2023-04-17 08:27:09', '2023-04-17 08:27:09', NULL),
(306, 2, '18/04/2023', '09:00 - 10:00', '2', '0', '2023-04-17 08:27:09', '2023-04-17 08:27:09', NULL),
(307, 2, '18/04/2023', '10:00 - 11:00', '2', '0', '2023-04-17 08:27:09', '2023-04-17 08:27:09', NULL),
(308, 2, '18/04/2023', '11:00 - 12:00', '2', '0', '2023-04-17 08:27:09', '2023-04-17 08:27:09', NULL),
(309, 2, '18/04/2023', '13:00 - 14:00', '2', '0', '2023-04-17 08:27:09', '2023-04-17 08:27:09', NULL),
(310, 2, '18/04/2023', '14:00 - 15:00', '2', '0', '2023-04-17 08:27:09', '2023-04-17 08:27:09', NULL),
(311, 2, '18/04/2023', '15:00 - 16:00', '2', '0', '2023-04-17 08:27:09', '2023-04-17 08:27:09', NULL),
(312, 2, '18/04/2023', '16:00 - 17:00', '2', '0', '2023-04-17 08:27:09', '2023-04-17 08:27:09', NULL),
(313, 2, '19/04/2023', '08:00 - 09:00', '2', '0', '2023-04-17 08:27:09', '2023-04-17 08:27:09', NULL),
(314, 2, '19/04/2023', '09:00 - 10:00', '2', '0', '2023-04-17 08:27:09', '2023-04-17 08:27:09', NULL),
(315, 2, '19/04/2023', '10:00 - 11:00', '2', '0', '2023-04-17 08:27:09', '2023-04-17 08:27:09', NULL),
(316, 2, '19/04/2023', '11:00 - 12:00', '2', '0', '2023-04-17 08:27:09', '2023-04-17 08:27:09', NULL),
(317, 2, '19/04/2023', '13:00 - 14:00', '2', '0', '2023-04-17 08:27:09', '2023-04-17 08:27:09', NULL),
(318, 2, '19/04/2023', '14:00 - 15:00', '2', '0', '2023-04-17 08:27:09', '2023-04-17 08:27:09', NULL),
(319, 2, '19/04/2023', '15:00 - 16:00', '2', '0', '2023-04-17 08:27:09', '2023-04-17 08:27:09', NULL),
(320, 2, '19/04/2023', '16:00 - 17:00', '2', '0', '2023-04-17 08:27:09', '2023-04-17 08:27:09', NULL),
(321, 3, '17/04/2023', '08:00 - 09:00', '2', '0', '2023-04-17 08:27:09', '2023-04-17 08:27:09', NULL),
(322, 3, '17/04/2023', '09:00 - 10:00', '2', '0', '2023-04-17 08:27:09', '2023-04-17 08:27:09', NULL),
(323, 3, '17/04/2023', '10:00 - 11:00', '2', '0', '2023-04-17 08:27:09', '2023-04-17 08:27:09', NULL),
(324, 3, '17/04/2023', '11:00 - 12:00', '2', '0', '2023-04-17 08:27:09', '2023-04-17 08:27:09', NULL),
(325, 3, '17/04/2023', '13:00 - 14:00', '2', '0', '2023-04-17 08:27:09', '2023-04-17 08:27:09', NULL),
(326, 3, '17/04/2023', '14:00 - 15:00', '2', '0', '2023-04-17 08:27:09', '2023-04-17 08:27:09', NULL),
(327, 3, '17/04/2023', '15:00 - 16:00', '2', '0', '2023-04-17 08:27:09', '2023-04-17 08:27:09', NULL),
(328, 3, '17/04/2023', '16:00 - 17:00', '2', '0', '2023-04-17 08:27:09', '2023-04-17 08:27:09', NULL),
(329, 3, '18/04/2023', '08:00 - 09:00', '2', '0', '2023-04-17 08:27:09', '2023-04-17 08:27:09', NULL),
(330, 3, '18/04/2023', '09:00 - 10:00', '2', '0', '2023-04-17 08:27:09', '2023-04-17 08:27:09', NULL),
(331, 3, '18/04/2023', '10:00 - 11:00', '2', '0', '2023-04-17 08:27:09', '2023-04-17 08:27:09', NULL),
(332, 3, '18/04/2023', '11:00 - 12:00', '2', '0', '2023-04-17 08:27:09', '2023-04-17 08:27:09', NULL),
(333, 3, '18/04/2023', '13:00 - 14:00', '2', '0', '2023-04-17 08:27:09', '2023-04-17 08:27:09', NULL),
(334, 3, '18/04/2023', '14:00 - 15:00', '2', '0', '2023-04-17 08:27:09', '2023-04-17 08:27:09', NULL),
(335, 3, '18/04/2023', '15:00 - 16:00', '2', '0', '2023-04-17 08:27:09', '2023-04-17 08:27:09', NULL),
(336, 3, '18/04/2023', '16:00 - 17:00', '2', '0', '2023-04-17 08:27:09', '2023-04-17 08:27:09', NULL),
(337, 3, '19/04/2023', '08:00 - 09:00', '2', '0', '2023-04-17 08:27:09', '2023-04-17 08:27:09', NULL),
(338, 3, '19/04/2023', '09:00 - 10:00', '2', '0', '2023-04-17 08:27:09', '2023-04-17 08:27:09', NULL),
(339, 3, '19/04/2023', '10:00 - 11:00', '2', '0', '2023-04-17 08:27:09', '2023-04-17 08:27:09', NULL),
(340, 3, '19/04/2023', '11:00 - 12:00', '2', '0', '2023-04-17 08:27:09', '2023-04-17 08:27:09', NULL),
(341, 3, '19/04/2023', '13:00 - 14:00', '2', '0', '2023-04-17 08:27:09', '2023-04-17 08:27:09', NULL),
(342, 3, '19/04/2023', '14:00 - 15:00', '2', '0', '2023-04-17 08:27:09', '2023-04-17 08:27:09', NULL),
(343, 3, '19/04/2023', '15:00 - 16:00', '2', '0', '2023-04-17 08:27:09', '2023-04-17 08:27:09', NULL),
(344, 3, '19/04/2023', '16:00 - 17:00', '2', '0', '2023-04-17 08:27:09', '2023-04-17 08:27:09', NULL),
(345, 4, '17/04/2023', '08:00 - 09:00', '2', '0', '2023-04-17 08:27:09', '2023-04-17 08:27:09', NULL),
(346, 4, '17/04/2023', '09:00 - 10:00', '2', '0', '2023-04-17 08:27:09', '2023-04-17 08:27:09', NULL),
(347, 4, '17/04/2023', '10:00 - 11:00', '2', '0', '2023-04-17 08:27:09', '2023-04-17 08:27:09', NULL),
(348, 4, '17/04/2023', '11:00 - 12:00', '2', '0', '2023-04-17 08:27:09', '2023-04-17 08:27:09', NULL),
(349, 4, '17/04/2023', '13:00 - 14:00', '2', '0', '2023-04-17 08:27:09', '2023-04-17 08:27:09', NULL),
(350, 4, '17/04/2023', '14:00 - 15:00', '2', '0', '2023-04-17 08:27:09', '2023-04-17 08:27:09', NULL),
(351, 4, '17/04/2023', '15:00 - 16:00', '2', '0', '2023-04-17 08:27:09', '2023-04-17 08:27:09', NULL),
(352, 4, '17/04/2023', '16:00 - 17:00', '2', '0', '2023-04-17 08:27:09', '2023-04-17 08:27:09', NULL),
(353, 4, '18/04/2023', '08:00 - 09:00', '2', '0', '2023-04-17 08:27:09', '2023-04-17 08:27:09', NULL),
(354, 4, '18/04/2023', '09:00 - 10:00', '2', '0', '2023-04-17 08:27:09', '2023-04-17 08:27:09', NULL),
(355, 4, '18/04/2023', '10:00 - 11:00', '2', '0', '2023-04-17 08:27:09', '2023-04-17 08:27:09', NULL),
(356, 4, '18/04/2023', '11:00 - 12:00', '2', '0', '2023-04-17 08:27:09', '2023-04-17 08:27:09', NULL),
(357, 4, '18/04/2023', '13:00 - 14:00', '2', '0', '2023-04-17 08:27:09', '2023-04-17 08:27:09', NULL),
(358, 4, '18/04/2023', '14:00 - 15:00', '2', '0', '2023-04-17 08:27:09', '2023-04-17 08:27:09', NULL),
(359, 4, '18/04/2023', '15:00 - 16:00', '2', '0', '2023-04-17 08:27:09', '2023-04-17 08:27:09', NULL),
(360, 4, '18/04/2023', '16:00 - 17:00', '2', '0', '2023-04-17 08:27:09', '2023-04-17 08:27:09', NULL),
(361, 4, '19/04/2023', '08:00 - 09:00', '2', '0', '2023-04-17 08:27:09', '2023-04-17 08:27:09', NULL),
(362, 4, '19/04/2023', '09:00 - 10:00', '2', '0', '2023-04-17 08:27:09', '2023-04-17 08:27:09', NULL),
(363, 4, '19/04/2023', '10:00 - 11:00', '2', '0', '2023-04-17 08:27:09', '2023-04-17 08:27:09', NULL),
(364, 4, '19/04/2023', '11:00 - 12:00', '2', '0', '2023-04-17 08:27:09', '2023-04-17 08:27:09', NULL),
(365, 4, '19/04/2023', '13:00 - 14:00', '2', '0', '2023-04-17 08:27:09', '2023-04-17 08:27:09', NULL),
(366, 4, '19/04/2023', '14:00 - 15:00', '2', '0', '2023-04-17 08:27:09', '2023-04-17 08:27:09', NULL),
(367, 4, '19/04/2023', '15:00 - 16:00', '2', '0', '2023-04-17 08:27:09', '2023-04-17 08:27:09', NULL),
(368, 4, '19/04/2023', '16:00 - 17:00', '2', '0', '2023-04-17 08:27:09', '2023-04-17 08:27:09', NULL),
(369, 5, '17/04/2023', '08:00 - 09:00', '2', '0', '2023-04-17 08:27:09', '2023-04-17 08:27:09', NULL),
(370, 5, '17/04/2023', '09:00 - 10:00', '2', '0', '2023-04-17 08:27:09', '2023-04-17 08:27:09', NULL),
(371, 5, '17/04/2023', '10:00 - 11:00', '2', '0', '2023-04-17 08:27:09', '2023-04-17 08:27:09', NULL),
(372, 5, '17/04/2023', '11:00 - 12:00', '2', '0', '2023-04-17 08:27:09', '2023-04-17 08:27:09', NULL),
(373, 5, '17/04/2023', '13:00 - 14:00', '2', '0', '2023-04-17 08:27:09', '2023-04-17 08:27:09', NULL),
(374, 5, '17/04/2023', '14:00 - 15:00', '2', '0', '2023-04-17 08:27:09', '2023-04-17 08:27:09', NULL),
(375, 5, '17/04/2023', '15:00 - 16:00', '2', '0', '2023-04-17 08:27:09', '2023-04-17 08:27:09', NULL),
(376, 5, '17/04/2023', '16:00 - 17:00', '2', '0', '2023-04-17 08:27:09', '2023-04-17 08:27:09', NULL),
(377, 5, '18/04/2023', '08:00 - 09:00', '2', '0', '2023-04-17 08:27:09', '2023-04-17 08:27:09', NULL),
(378, 5, '18/04/2023', '09:00 - 10:00', '2', '0', '2023-04-17 08:27:09', '2023-04-17 08:27:09', NULL),
(379, 5, '18/04/2023', '10:00 - 11:00', '2', '0', '2023-04-17 08:27:09', '2023-04-17 08:27:09', NULL),
(380, 5, '18/04/2023', '11:00 - 12:00', '2', '0', '2023-04-17 08:27:09', '2023-04-17 08:27:09', NULL),
(381, 5, '18/04/2023', '13:00 - 14:00', '2', '0', '2023-04-17 08:27:09', '2023-04-17 08:27:09', NULL),
(382, 5, '18/04/2023', '14:00 - 15:00', '2', '0', '2023-04-17 08:27:09', '2023-04-17 08:27:09', NULL),
(383, 5, '18/04/2023', '15:00 - 16:00', '2', '0', '2023-04-17 08:27:09', '2023-04-17 08:27:09', NULL),
(384, 5, '18/04/2023', '16:00 - 17:00', '2', '0', '2023-04-17 08:27:09', '2023-04-17 08:27:09', NULL),
(385, 5, '19/04/2023', '08:00 - 09:00', '2', '0', '2023-04-17 08:27:09', '2023-04-17 08:27:09', NULL),
(386, 5, '19/04/2023', '09:00 - 10:00', '2', '0', '2023-04-17 08:27:09', '2023-04-17 08:27:09', NULL),
(387, 5, '19/04/2023', '10:00 - 11:00', '2', '0', '2023-04-17 08:27:09', '2023-04-17 08:27:09', NULL),
(388, 5, '19/04/2023', '11:00 - 12:00', '2', '0', '2023-04-17 08:27:09', '2023-04-17 08:27:09', NULL),
(389, 5, '19/04/2023', '13:00 - 14:00', '2', '0', '2023-04-17 08:27:09', '2023-04-17 08:27:09', NULL),
(390, 5, '19/04/2023', '14:00 - 15:00', '2', '0', '2023-04-17 08:27:09', '2023-04-17 08:27:09', NULL),
(391, 5, '19/04/2023', '15:00 - 16:00', '2', '0', '2023-04-17 08:27:09', '2023-04-17 08:27:09', NULL),
(392, 5, '19/04/2023', '16:00 - 17:00', '2', '0', '2023-04-17 08:27:09', '2023-04-17 08:27:09', NULL),
(393, 6, '17/04/2023', '08:00 - 09:00', '2', '0', '2023-04-17 08:27:09', '2023-04-17 08:27:09', NULL),
(394, 6, '17/04/2023', '09:00 - 10:00', '2', '0', '2023-04-17 08:27:09', '2023-04-17 08:27:09', NULL),
(395, 6, '17/04/2023', '10:00 - 11:00', '2', '0', '2023-04-17 08:27:09', '2023-04-17 08:27:09', NULL),
(396, 6, '17/04/2023', '11:00 - 12:00', '2', '0', '2023-04-17 08:27:09', '2023-04-17 08:27:09', NULL),
(397, 6, '17/04/2023', '13:00 - 14:00', '2', '0', '2023-04-17 08:27:09', '2023-04-17 08:27:09', NULL),
(398, 6, '17/04/2023', '14:00 - 15:00', '2', '0', '2023-04-17 08:27:09', '2023-04-17 08:27:09', NULL),
(399, 6, '17/04/2023', '15:00 - 16:00', '2', '0', '2023-04-17 08:27:09', '2023-04-17 08:27:09', NULL),
(400, 6, '17/04/2023', '16:00 - 17:00', '2', '0', '2023-04-17 08:27:09', '2023-04-17 08:27:09', NULL),
(401, 6, '18/04/2023', '08:00 - 09:00', '2', '0', '2023-04-17 08:27:09', '2023-04-17 08:27:09', NULL),
(402, 6, '18/04/2023', '09:00 - 10:00', '2', '0', '2023-04-17 08:27:09', '2023-04-17 08:27:09', NULL),
(403, 6, '18/04/2023', '10:00 - 11:00', '2', '0', '2023-04-17 08:27:09', '2023-04-17 08:27:09', NULL),
(404, 6, '18/04/2023', '11:00 - 12:00', '2', '0', '2023-04-17 08:27:09', '2023-04-17 08:27:09', NULL),
(405, 6, '18/04/2023', '13:00 - 14:00', '2', '0', '2023-04-17 08:27:09', '2023-04-17 08:27:09', NULL),
(406, 6, '18/04/2023', '14:00 - 15:00', '2', '0', '2023-04-17 08:27:09', '2023-04-17 08:27:09', NULL),
(407, 6, '18/04/2023', '15:00 - 16:00', '2', '0', '2023-04-17 08:27:09', '2023-04-17 08:27:09', NULL),
(408, 6, '18/04/2023', '16:00 - 17:00', '2', '0', '2023-04-17 08:27:09', '2023-04-17 08:27:09', NULL),
(409, 6, '19/04/2023', '08:00 - 09:00', '2', '0', '2023-04-17 08:27:09', '2023-04-17 08:27:09', NULL),
(410, 6, '19/04/2023', '09:00 - 10:00', '2', '0', '2023-04-17 08:27:09', '2023-04-17 08:27:09', NULL),
(411, 6, '19/04/2023', '10:00 - 11:00', '2', '0', '2023-04-17 08:27:09', '2023-04-17 08:27:09', NULL),
(412, 6, '19/04/2023', '11:00 - 12:00', '2', '0', '2023-04-17 08:27:09', '2023-04-17 08:27:09', NULL),
(413, 6, '19/04/2023', '13:00 - 14:00', '2', '0', '2023-04-17 08:27:09', '2023-04-17 08:27:09', NULL),
(414, 6, '19/04/2023', '14:00 - 15:00', '2', '0', '2023-04-17 08:27:09', '2023-04-17 08:27:09', NULL),
(415, 6, '19/04/2023', '15:00 - 16:00', '2', '0', '2023-04-17 08:27:09', '2023-04-17 08:27:09', NULL),
(416, 6, '19/04/2023', '16:00 - 17:00', '2', '0', '2023-04-17 08:27:09', '2023-04-17 08:27:09', NULL),
(417, 7, '17/04/2023', '08:00 - 09:00', '2', '0', '2023-04-17 08:27:09', '2023-04-17 08:27:09', NULL),
(418, 7, '17/04/2023', '09:00 - 10:00', '2', '0', '2023-04-17 08:27:09', '2023-04-17 08:27:09', NULL),
(419, 7, '17/04/2023', '10:00 - 11:00', '2', '0', '2023-04-17 08:27:09', '2023-04-17 08:27:09', NULL),
(420, 7, '17/04/2023', '11:00 - 12:00', '2', '0', '2023-04-17 08:27:09', '2023-04-17 08:27:09', NULL),
(421, 7, '17/04/2023', '13:00 - 14:00', '2', '0', '2023-04-17 08:27:09', '2023-04-17 08:27:09', NULL),
(422, 7, '17/04/2023', '14:00 - 15:00', '2', '0', '2023-04-17 08:27:09', '2023-04-17 08:27:09', NULL),
(423, 7, '17/04/2023', '15:00 - 16:00', '2', '0', '2023-04-17 08:27:09', '2023-04-17 08:27:09', NULL),
(424, 7, '17/04/2023', '16:00 - 17:00', '2', '0', '2023-04-17 08:27:09', '2023-04-17 08:27:09', NULL),
(425, 7, '18/04/2023', '08:00 - 09:00', '2', '0', '2023-04-17 08:27:09', '2023-04-17 08:27:09', NULL),
(426, 7, '18/04/2023', '09:00 - 10:00', '2', '0', '2023-04-17 08:27:09', '2023-04-17 08:27:09', NULL),
(427, 7, '18/04/2023', '10:00 - 11:00', '2', '0', '2023-04-17 08:27:09', '2023-04-17 08:27:09', NULL),
(428, 7, '18/04/2023', '11:00 - 12:00', '2', '0', '2023-04-17 08:27:09', '2023-04-17 08:27:09', NULL),
(429, 7, '18/04/2023', '13:00 - 14:00', '2', '0', '2023-04-17 08:27:09', '2023-04-17 08:27:09', NULL),
(430, 7, '18/04/2023', '14:00 - 15:00', '2', '0', '2023-04-17 08:27:09', '2023-04-17 08:27:09', NULL),
(431, 7, '18/04/2023', '15:00 - 16:00', '2', '0', '2023-04-17 08:27:09', '2023-04-17 08:27:09', NULL),
(432, 7, '18/04/2023', '16:00 - 17:00', '2', '0', '2023-04-17 08:27:09', '2023-04-17 08:27:09', NULL),
(433, 7, '19/04/2023', '08:00 - 09:00', '2', '0', '2023-04-17 08:27:09', '2023-04-17 08:27:09', NULL),
(434, 7, '19/04/2023', '09:00 - 10:00', '2', '0', '2023-04-17 08:27:09', '2023-04-17 08:27:09', NULL),
(435, 7, '19/04/2023', '10:00 - 11:00', '2', '0', '2023-04-17 08:27:09', '2023-04-17 08:27:09', NULL),
(436, 7, '19/04/2023', '11:00 - 12:00', '2', '0', '2023-04-17 08:27:09', '2023-04-17 08:27:09', NULL),
(437, 7, '19/04/2023', '13:00 - 14:00', '2', '0', '2023-04-17 08:27:09', '2023-04-17 08:27:09', NULL),
(438, 7, '19/04/2023', '14:00 - 15:00', '2', '0', '2023-04-17 08:27:09', '2023-04-17 08:27:09', NULL),
(439, 7, '19/04/2023', '15:00 - 16:00', '2', '0', '2023-04-17 08:27:09', '2023-04-17 08:27:09', NULL),
(440, 7, '19/04/2023', '16:00 - 17:00', '2', '0', '2023-04-17 08:27:09', '2023-04-17 08:27:09', NULL),
(441, 2, '22/04/2023', '08:00 - 09:00', '2', '0', '2023-04-22 16:59:49', '2023-04-22 16:59:49', NULL),
(442, 2, '22/04/2023', '13:00 - 14:00', '2', '0', '2023-04-22 16:59:49', '2023-04-22 16:59:49', NULL),
(443, 2, '22/04/2023', '11:00 - 12:00', '2', '0', '2023-04-22 16:59:49', '2023-04-22 16:59:49', NULL),
(444, 2, '22/04/2023', '10:00 - 11:00', '2', '0', '2023-04-22 16:59:49', '2023-04-22 16:59:49', NULL),
(445, 2, '22/04/2023', '09:00 - 10:00', '2', '0', '2023-04-22 16:59:49', '2023-04-22 16:59:49', NULL),
(446, 2, '22/04/2023', '14:00 - 15:00', '2', '0', '2023-04-22 16:59:49', '2023-04-22 16:59:49', NULL),
(447, 2, '22/04/2023', '15:00 - 16:00', '2', '0', '2023-04-22 16:59:49', '2023-04-22 16:59:49', NULL),
(448, 2, '22/04/2023', '16:00 - 17:00', '2', '0', '2023-04-22 16:59:49', '2023-04-22 16:59:49', NULL),
(449, 2, '23/04/2023', '08:00 - 09:00', '2', '1', '2023-04-22 16:59:49', '2023-04-22 17:03:06', NULL),
(450, 2, '23/04/2023', '09:00 - 10:00', '2', '0', '2023-04-22 16:59:49', '2023-04-22 16:59:49', NULL),
(451, 2, '23/04/2023', '10:00 - 11:00', '2', '0', '2023-04-22 16:59:49', '2023-04-22 16:59:49', NULL),
(452, 2, '23/04/2023', '11:00 - 12:00', '2', '0', '2023-04-22 16:59:49', '2023-04-22 16:59:49', NULL),
(453, 2, '23/04/2023', '13:00 - 14:00', '2', '0', '2023-04-22 16:59:49', '2023-04-22 16:59:49', NULL),
(454, 2, '23/04/2023', '14:00 - 15:00', '2', '0', '2023-04-22 16:59:49', '2023-04-22 16:59:49', NULL),
(455, 2, '23/04/2023', '15:00 - 16:00', '2', '0', '2023-04-22 16:59:49', '2023-04-22 16:59:49', NULL),
(456, 2, '23/04/2023', '16:00 - 17:00', '2', '0', '2023-04-22 16:59:49', '2023-04-22 16:59:49', NULL),
(457, 2, '24/04/2023', '08:00 - 09:00', '2', '0', '2023-04-22 16:59:49', '2023-04-22 16:59:49', NULL),
(458, 2, '24/04/2023', '09:00 - 10:00', '2', '0', '2023-04-22 16:59:49', '2023-04-22 16:59:49', NULL),
(459, 2, '24/04/2023', '10:00 - 11:00', '2', '0', '2023-04-22 16:59:49', '2023-04-22 16:59:49', NULL),
(460, 2, '24/04/2023', '11:00 - 12:00', '2', '0', '2023-04-22 16:59:49', '2023-04-22 16:59:49', NULL),
(461, 2, '24/04/2023', '13:00 - 14:00', '2', '0', '2023-04-22 16:59:49', '2023-04-22 16:59:49', NULL),
(462, 2, '24/04/2023', '14:00 - 15:00', '2', '0', '2023-04-22 16:59:49', '2023-04-22 16:59:49', NULL),
(463, 2, '24/04/2023', '15:00 - 16:00', '2', '0', '2023-04-22 16:59:49', '2023-04-22 16:59:49', NULL),
(464, 2, '24/04/2023', '16:00 - 17:00', '2', '0', '2023-04-22 16:59:49', '2023-04-22 16:59:49', NULL),
(465, 3, '22/04/2023', '08:00 - 09:00', '2', '0', '2023-04-22 16:59:49', '2023-04-22 16:59:49', NULL),
(466, 3, '22/04/2023', '09:00 - 10:00', '2', '0', '2023-04-22 16:59:49', '2023-04-22 16:59:49', NULL),
(467, 3, '22/04/2023', '10:00 - 11:00', '2', '0', '2023-04-22 16:59:49', '2023-04-22 16:59:49', NULL),
(468, 3, '22/04/2023', '11:00 - 12:00', '2', '0', '2023-04-22 16:59:49', '2023-04-22 16:59:49', NULL),
(469, 3, '22/04/2023', '13:00 - 14:00', '2', '0', '2023-04-22 16:59:49', '2023-04-22 16:59:49', NULL),
(470, 3, '22/04/2023', '14:00 - 15:00', '2', '0', '2023-04-22 16:59:49', '2023-04-22 16:59:49', NULL),
(471, 3, '22/04/2023', '15:00 - 16:00', '2', '0', '2023-04-22 16:59:49', '2023-04-22 16:59:49', NULL),
(472, 3, '22/04/2023', '16:00 - 17:00', '2', '0', '2023-04-22 16:59:49', '2023-04-22 16:59:49', NULL),
(473, 3, '23/04/2023', '08:00 - 09:00', '2', '0', '2023-04-22 16:59:49', '2023-04-22 16:59:49', NULL),
(474, 3, '23/04/2023', '09:00 - 10:00', '2', '0', '2023-04-22 16:59:49', '2023-04-22 16:59:49', NULL),
(475, 3, '23/04/2023', '10:00 - 11:00', '2', '0', '2023-04-22 16:59:49', '2023-04-22 16:59:49', NULL),
(476, 3, '23/04/2023', '11:00 - 12:00', '2', '0', '2023-04-22 16:59:49', '2023-04-22 16:59:49', NULL),
(477, 3, '23/04/2023', '13:00 - 14:00', '2', '0', '2023-04-22 16:59:49', '2023-04-22 16:59:49', NULL),
(478, 3, '23/04/2023', '14:00 - 15:00', '2', '0', '2023-04-22 16:59:49', '2023-04-22 16:59:49', NULL),
(479, 3, '23/04/2023', '15:00 - 16:00', '2', '0', '2023-04-22 16:59:49', '2023-04-22 16:59:49', NULL),
(480, 3, '23/04/2023', '16:00 - 17:00', '2', '0', '2023-04-22 16:59:49', '2023-04-22 16:59:49', NULL),
(481, 3, '24/04/2023', '08:00 - 09:00', '2', '0', '2023-04-22 16:59:49', '2023-04-22 16:59:49', NULL),
(482, 3, '24/04/2023', '09:00 - 10:00', '2', '0', '2023-04-22 16:59:49', '2023-04-22 16:59:49', NULL),
(483, 3, '24/04/2023', '10:00 - 11:00', '2', '0', '2023-04-22 16:59:49', '2023-04-22 16:59:49', NULL),
(484, 3, '24/04/2023', '11:00 - 12:00', '2', '0', '2023-04-22 16:59:49', '2023-04-22 16:59:49', NULL),
(485, 3, '24/04/2023', '13:00 - 14:00', '2', '0', '2023-04-22 16:59:49', '2023-04-22 16:59:49', NULL),
(486, 3, '24/04/2023', '14:00 - 15:00', '2', '0', '2023-04-22 16:59:49', '2023-04-22 16:59:49', NULL),
(487, 3, '24/04/2023', '15:00 - 16:00', '2', '0', '2023-04-22 16:59:49', '2023-04-22 16:59:49', NULL),
(488, 3, '24/04/2023', '16:00 - 17:00', '2', '0', '2023-04-22 16:59:49', '2023-04-22 16:59:49', NULL),
(489, 4, '22/04/2023', '08:00 - 09:00', '2', '0', '2023-04-22 16:59:49', '2023-04-22 16:59:49', NULL),
(490, 4, '22/04/2023', '09:00 - 10:00', '2', '0', '2023-04-22 16:59:49', '2023-04-22 16:59:49', NULL),
(491, 4, '22/04/2023', '10:00 - 11:00', '2', '0', '2023-04-22 16:59:49', '2023-04-22 16:59:49', NULL),
(492, 4, '22/04/2023', '11:00 - 12:00', '2', '0', '2023-04-22 16:59:49', '2023-04-22 16:59:49', NULL),
(493, 4, '22/04/2023', '13:00 - 14:00', '2', '0', '2023-04-22 16:59:49', '2023-04-22 16:59:49', NULL),
(494, 4, '22/04/2023', '14:00 - 15:00', '2', '0', '2023-04-22 16:59:49', '2023-04-22 16:59:49', NULL),
(495, 4, '22/04/2023', '15:00 - 16:00', '2', '0', '2023-04-22 16:59:49', '2023-04-22 16:59:49', NULL),
(496, 4, '22/04/2023', '16:00 - 17:00', '2', '0', '2023-04-22 16:59:49', '2023-04-22 16:59:49', NULL),
(497, 4, '23/04/2023', '08:00 - 09:00', '2', '0', '2023-04-22 16:59:49', '2023-04-22 16:59:49', NULL),
(498, 4, '23/04/2023', '09:00 - 10:00', '2', '0', '2023-04-22 16:59:49', '2023-04-22 16:59:49', NULL),
(499, 4, '23/04/2023', '10:00 - 11:00', '2', '0', '2023-04-22 16:59:49', '2023-04-22 16:59:49', NULL),
(500, 4, '23/04/2023', '11:00 - 12:00', '2', '0', '2023-04-22 16:59:49', '2023-04-22 16:59:49', NULL),
(501, 4, '23/04/2023', '13:00 - 14:00', '2', '0', '2023-04-22 16:59:49', '2023-04-22 16:59:49', NULL),
(502, 4, '23/04/2023', '14:00 - 15:00', '2', '0', '2023-04-22 16:59:49', '2023-04-22 16:59:49', NULL),
(503, 4, '23/04/2023', '15:00 - 16:00', '2', '0', '2023-04-22 16:59:49', '2023-04-22 16:59:49', NULL),
(504, 4, '23/04/2023', '16:00 - 17:00', '2', '0', '2023-04-22 16:59:49', '2023-04-22 16:59:49', NULL),
(505, 4, '24/04/2023', '08:00 - 09:00', '2', '0', '2023-04-22 16:59:49', '2023-04-22 16:59:49', NULL),
(506, 4, '24/04/2023', '09:00 - 10:00', '2', '0', '2023-04-22 16:59:49', '2023-04-22 16:59:49', NULL),
(507, 4, '24/04/2023', '10:00 - 11:00', '2', '0', '2023-04-22 16:59:49', '2023-04-22 16:59:49', NULL),
(508, 4, '24/04/2023', '11:00 - 12:00', '2', '0', '2023-04-22 16:59:49', '2023-04-22 16:59:49', NULL),
(509, 4, '24/04/2023', '13:00 - 14:00', '2', '0', '2023-04-22 16:59:49', '2023-04-22 16:59:49', NULL),
(510, 4, '24/04/2023', '14:00 - 15:00', '2', '0', '2023-04-22 16:59:49', '2023-04-22 16:59:49', NULL),
(511, 4, '24/04/2023', '15:00 - 16:00', '2', '0', '2023-04-22 16:59:49', '2023-04-22 16:59:49', NULL),
(512, 4, '24/04/2023', '16:00 - 17:00', '2', '0', '2023-04-22 16:59:49', '2023-04-22 16:59:49', NULL),
(513, 5, '22/04/2023', '08:00 - 09:00', '2', '0', '2023-04-22 16:59:49', '2023-04-22 16:59:49', NULL),
(514, 5, '22/04/2023', '09:00 - 10:00', '2', '0', '2023-04-22 16:59:49', '2023-04-22 16:59:49', NULL),
(515, 5, '22/04/2023', '10:00 - 11:00', '2', '0', '2023-04-22 16:59:49', '2023-04-22 16:59:49', NULL),
(516, 5, '22/04/2023', '11:00 - 12:00', '2', '0', '2023-04-22 16:59:49', '2023-04-22 16:59:49', NULL),
(517, 5, '22/04/2023', '13:00 - 14:00', '2', '0', '2023-04-22 16:59:49', '2023-04-22 16:59:49', NULL),
(518, 5, '22/04/2023', '14:00 - 15:00', '2', '0', '2023-04-22 16:59:49', '2023-04-22 16:59:49', NULL),
(519, 5, '22/04/2023', '15:00 - 16:00', '2', '0', '2023-04-22 16:59:49', '2023-04-22 16:59:49', NULL),
(520, 5, '22/04/2023', '16:00 - 17:00', '2', '0', '2023-04-22 16:59:49', '2023-04-22 16:59:49', NULL),
(521, 5, '23/04/2023', '08:00 - 09:00', '2', '0', '2023-04-22 16:59:49', '2023-04-22 16:59:49', NULL),
(522, 5, '23/04/2023', '09:00 - 10:00', '2', '0', '2023-04-22 16:59:49', '2023-04-22 16:59:49', NULL),
(523, 5, '23/04/2023', '10:00 - 11:00', '2', '0', '2023-04-22 16:59:49', '2023-04-22 16:59:49', NULL),
(524, 5, '23/04/2023', '11:00 - 12:00', '2', '0', '2023-04-22 16:59:49', '2023-04-22 16:59:49', NULL),
(525, 5, '23/04/2023', '13:00 - 14:00', '2', '0', '2023-04-22 16:59:49', '2023-04-22 16:59:49', NULL),
(526, 5, '23/04/2023', '14:00 - 15:00', '2', '0', '2023-04-22 16:59:49', '2023-04-22 16:59:49', NULL),
(527, 5, '23/04/2023', '15:00 - 16:00', '2', '0', '2023-04-22 16:59:49', '2023-04-22 16:59:49', NULL),
(528, 5, '23/04/2023', '16:00 - 17:00', '2', '0', '2023-04-22 16:59:49', '2023-04-22 16:59:49', NULL),
(529, 5, '24/04/2023', '08:00 - 09:00', '2', '0', '2023-04-22 16:59:49', '2023-04-22 16:59:49', NULL),
(530, 5, '24/04/2023', '09:00 - 10:00', '2', '0', '2023-04-22 16:59:49', '2023-04-22 16:59:49', NULL),
(531, 5, '24/04/2023', '10:00 - 11:00', '2', '0', '2023-04-22 16:59:49', '2023-04-22 16:59:49', NULL),
(532, 5, '24/04/2023', '11:00 - 12:00', '2', '0', '2023-04-22 16:59:49', '2023-04-22 16:59:49', NULL),
(533, 5, '24/04/2023', '13:00 - 14:00', '2', '0', '2023-04-22 16:59:49', '2023-04-22 16:59:49', NULL),
(534, 5, '24/04/2023', '14:00 - 15:00', '2', '0', '2023-04-22 16:59:49', '2023-04-22 16:59:49', NULL),
(535, 5, '24/04/2023', '15:00 - 16:00', '2', '0', '2023-04-22 16:59:49', '2023-04-22 16:59:49', NULL),
(536, 5, '24/04/2023', '16:00 - 17:00', '2', '0', '2023-04-22 16:59:49', '2023-04-22 16:59:49', NULL),
(537, 6, '22/04/2023', '08:00 - 09:00', '2', '0', '2023-04-22 16:59:49', '2023-04-22 16:59:49', NULL),
(538, 6, '22/04/2023', '09:00 - 10:00', '2', '0', '2023-04-22 16:59:49', '2023-04-22 16:59:49', NULL),
(539, 6, '22/04/2023', '10:00 - 11:00', '2', '0', '2023-04-22 16:59:49', '2023-04-22 16:59:49', NULL),
(540, 6, '22/04/2023', '11:00 - 12:00', '2', '0', '2023-04-22 16:59:49', '2023-04-22 16:59:49', NULL),
(541, 6, '22/04/2023', '13:00 - 14:00', '2', '0', '2023-04-22 16:59:49', '2023-04-22 16:59:49', NULL),
(542, 6, '22/04/2023', '14:00 - 15:00', '2', '0', '2023-04-22 16:59:49', '2023-04-22 16:59:49', NULL),
(543, 6, '22/04/2023', '15:00 - 16:00', '2', '0', '2023-04-22 16:59:49', '2023-04-22 16:59:49', NULL),
(544, 6, '22/04/2023', '16:00 - 17:00', '2', '0', '2023-04-22 16:59:49', '2023-04-22 16:59:49', NULL),
(545, 6, '23/04/2023', '08:00 - 09:00', '2', '0', '2023-04-22 16:59:49', '2023-04-22 16:59:49', NULL),
(546, 6, '23/04/2023', '09:00 - 10:00', '2', '0', '2023-04-22 16:59:49', '2023-04-22 16:59:49', NULL),
(547, 6, '23/04/2023', '10:00 - 11:00', '2', '0', '2023-04-22 16:59:49', '2023-04-22 16:59:49', NULL),
(548, 6, '23/04/2023', '11:00 - 12:00', '2', '0', '2023-04-22 16:59:49', '2023-04-22 16:59:49', NULL),
(549, 6, '23/04/2023', '13:00 - 14:00', '2', '0', '2023-04-22 16:59:49', '2023-04-22 16:59:49', NULL),
(550, 6, '23/04/2023', '14:00 - 15:00', '2', '0', '2023-04-22 16:59:49', '2023-04-22 16:59:49', NULL),
(551, 6, '23/04/2023', '15:00 - 16:00', '2', '0', '2023-04-22 16:59:49', '2023-04-22 16:59:49', NULL),
(552, 6, '23/04/2023', '16:00 - 17:00', '2', '0', '2023-04-22 16:59:49', '2023-04-22 16:59:49', NULL),
(553, 6, '24/04/2023', '08:00 - 09:00', '2', '0', '2023-04-22 16:59:49', '2023-04-22 16:59:49', NULL),
(554, 6, '24/04/2023', '09:00 - 10:00', '2', '0', '2023-04-22 16:59:49', '2023-04-22 16:59:49', NULL),
(555, 6, '24/04/2023', '10:00 - 11:00', '2', '0', '2023-04-22 16:59:49', '2023-04-22 16:59:49', NULL),
(556, 6, '24/04/2023', '11:00 - 12:00', '2', '0', '2023-04-22 16:59:49', '2023-04-22 16:59:49', NULL),
(557, 6, '24/04/2023', '13:00 - 14:00', '2', '0', '2023-04-22 16:59:49', '2023-04-22 16:59:49', NULL),
(558, 6, '24/04/2023', '14:00 - 15:00', '2', '0', '2023-04-22 16:59:49', '2023-04-22 16:59:49', NULL),
(559, 6, '24/04/2023', '15:00 - 16:00', '2', '0', '2023-04-22 16:59:49', '2023-04-22 16:59:49', NULL),
(560, 6, '24/04/2023', '16:00 - 17:00', '2', '0', '2023-04-22 16:59:49', '2023-04-22 16:59:49', NULL),
(561, 7, '22/04/2023', '08:00 - 09:00', '2', '0', '2023-04-22 16:59:49', '2023-04-22 16:59:49', NULL),
(562, 7, '22/04/2023', '09:00 - 10:00', '2', '0', '2023-04-22 16:59:49', '2023-04-22 16:59:49', NULL),
(563, 7, '22/04/2023', '10:00 - 11:00', '2', '0', '2023-04-22 16:59:49', '2023-04-22 16:59:49', NULL),
(564, 7, '22/04/2023', '11:00 - 12:00', '2', '0', '2023-04-22 16:59:49', '2023-04-22 16:59:49', NULL),
(565, 7, '22/04/2023', '13:00 - 14:00', '2', '0', '2023-04-22 16:59:49', '2023-04-22 16:59:49', NULL),
(566, 7, '22/04/2023', '14:00 - 15:00', '2', '0', '2023-04-22 16:59:49', '2023-04-22 16:59:49', NULL),
(567, 7, '22/04/2023', '15:00 - 16:00', '2', '0', '2023-04-22 16:59:49', '2023-04-22 16:59:49', NULL),
(568, 7, '22/04/2023', '16:00 - 17:00', '2', '0', '2023-04-22 16:59:49', '2023-04-22 16:59:49', NULL),
(569, 7, '23/04/2023', '08:00 - 09:00', '2', '0', '2023-04-22 16:59:49', '2023-04-22 16:59:49', NULL),
(570, 7, '23/04/2023', '09:00 - 10:00', '2', '0', '2023-04-22 16:59:49', '2023-04-22 16:59:49', NULL),
(571, 7, '23/04/2023', '10:00 - 11:00', '2', '0', '2023-04-22 16:59:49', '2023-04-22 16:59:49', NULL),
(572, 7, '23/04/2023', '11:00 - 12:00', '2', '0', '2023-04-22 16:59:49', '2023-04-22 16:59:49', NULL),
(573, 7, '23/04/2023', '13:00 - 14:00', '2', '0', '2023-04-22 16:59:49', '2023-04-22 16:59:49', NULL),
(574, 7, '23/04/2023', '14:00 - 15:00', '2', '0', '2023-04-22 16:59:49', '2023-04-22 16:59:49', NULL),
(575, 7, '23/04/2023', '15:00 - 16:00', '2', '0', '2023-04-22 16:59:49', '2023-04-22 16:59:49', NULL),
(576, 7, '23/04/2023', '16:00 - 17:00', '2', '0', '2023-04-22 16:59:49', '2023-04-22 16:59:49', NULL),
(577, 7, '24/04/2023', '08:00 - 09:00', '2', '0', '2023-04-22 16:59:49', '2023-04-22 16:59:49', NULL),
(578, 7, '24/04/2023', '09:00 - 10:00', '2', '0', '2023-04-22 16:59:49', '2023-04-22 16:59:49', NULL),
(579, 7, '24/04/2023', '10:00 - 11:00', '2', '0', '2023-04-22 16:59:49', '2023-04-22 16:59:49', NULL),
(580, 7, '24/04/2023', '11:00 - 12:00', '2', '0', '2023-04-22 16:59:49', '2023-04-22 16:59:49', NULL),
(581, 7, '24/04/2023', '13:00 - 14:00', '2', '0', '2023-04-22 16:59:49', '2023-04-22 16:59:49', NULL),
(582, 7, '24/04/2023', '14:00 - 15:00', '2', '0', '2023-04-22 16:59:49', '2023-04-22 16:59:49', NULL),
(583, 7, '24/04/2023', '15:00 - 16:00', '2', '0', '2023-04-22 16:59:49', '2023-04-22 16:59:49', NULL),
(584, 7, '24/04/2023', '16:00 - 17:00', '2', '0', '2023-04-22 16:59:49', '2023-04-22 16:59:49', NULL),
(585, 2, '04/05/2023', '09:00 - 10:00', '2', '0', '2023-05-04 19:48:00', '2023-05-04 19:48:00', NULL),
(586, 2, '04/05/2023', '08:00 - 09:00', '2', '0', '2023-05-04 19:48:00', '2023-05-04 19:48:00', NULL),
(587, 2, '04/05/2023', '10:00 - 11:00', '2', '0', '2023-05-04 19:48:00', '2023-05-04 19:48:00', NULL),
(588, 2, '04/05/2023', '14:00 - 15:00', '2', '0', '2023-05-04 19:48:00', '2023-05-04 19:48:00', NULL),
(589, 2, '04/05/2023', '15:00 - 16:00', '2', '0', '2023-05-04 19:48:00', '2023-05-04 19:48:00', NULL),
(590, 2, '04/05/2023', '16:00 - 17:00', '2', '0', '2023-05-04 19:48:00', '2023-05-04 19:48:00', NULL),
(591, 2, '04/05/2023', '11:00 - 12:00', '2', '0', '2023-05-04 19:48:00', '2023-05-04 19:48:00', NULL),
(592, 2, '04/05/2023', '13:00 - 14:00', '2', '0', '2023-05-04 19:48:00', '2023-05-04 19:48:00', NULL),
(593, 2, '05/05/2023', '08:00 - 09:00', '2', '0', '2023-05-04 19:48:00', '2023-05-04 19:48:00', NULL),
(594, 2, '05/05/2023', '09:00 - 10:00', '2', '0', '2023-05-04 19:48:00', '2023-05-04 19:48:00', NULL),
(595, 2, '05/05/2023', '10:00 - 11:00', '2', '0', '2023-05-04 19:48:00', '2023-05-04 19:48:00', NULL),
(596, 2, '05/05/2023', '11:00 - 12:00', '2', '0', '2023-05-04 19:48:00', '2023-05-04 19:48:00', NULL),
(597, 2, '05/05/2023', '13:00 - 14:00', '2', '0', '2023-05-04 19:48:00', '2023-05-04 19:48:00', NULL),
(598, 2, '05/05/2023', '14:00 - 15:00', '2', '0', '2023-05-04 19:48:00', '2023-05-04 19:48:00', NULL),
(599, 2, '05/05/2023', '15:00 - 16:00', '2', '0', '2023-05-04 19:48:00', '2023-05-04 19:48:00', NULL),
(600, 2, '05/05/2023', '16:00 - 17:00', '2', '0', '2023-05-04 19:48:00', '2023-05-04 19:48:00', NULL),
(601, 2, '06/05/2023', '08:00 - 09:00', '2', '2', '2023-05-04 19:48:00', '2023-05-04 19:50:06', NULL),
(602, 2, '06/05/2023', '09:00 - 10:00', '2', '0', '2023-05-04 19:48:00', '2023-05-04 19:48:00', NULL),
(603, 2, '06/05/2023', '10:00 - 11:00', '2', '0', '2023-05-04 19:48:00', '2023-05-04 19:48:00', NULL),
(604, 2, '06/05/2023', '11:00 - 12:00', '2', '0', '2023-05-04 19:48:00', '2023-05-04 19:48:00', NULL),
(605, 2, '06/05/2023', '13:00 - 14:00', '2', '0', '2023-05-04 19:48:00', '2023-05-04 19:48:00', NULL),
(606, 2, '06/05/2023', '14:00 - 15:00', '2', '0', '2023-05-04 19:48:00', '2023-05-04 19:48:00', NULL),
(607, 2, '06/05/2023', '15:00 - 16:00', '2', '0', '2023-05-04 19:48:00', '2023-05-04 19:48:00', NULL),
(608, 2, '06/05/2023', '16:00 - 17:00', '2', '0', '2023-05-04 19:48:00', '2023-05-04 19:48:00', NULL),
(609, 3, '04/05/2023', '08:00 - 09:00', '2', '0', '2023-05-04 19:48:00', '2023-05-04 19:48:00', NULL),
(610, 3, '04/05/2023', '09:00 - 10:00', '2', '0', '2023-05-04 19:48:00', '2023-05-04 19:48:00', NULL),
(611, 3, '04/05/2023', '10:00 - 11:00', '2', '0', '2023-05-04 19:48:00', '2023-05-04 19:48:00', NULL),
(612, 3, '04/05/2023', '11:00 - 12:00', '2', '0', '2023-05-04 19:48:00', '2023-05-04 19:48:00', NULL),
(613, 3, '04/05/2023', '13:00 - 14:00', '2', '0', '2023-05-04 19:48:00', '2023-05-04 19:48:00', NULL),
(614, 3, '04/05/2023', '14:00 - 15:00', '2', '0', '2023-05-04 19:48:00', '2023-05-04 19:48:00', NULL),
(615, 3, '04/05/2023', '15:00 - 16:00', '2', '0', '2023-05-04 19:48:00', '2023-05-04 19:48:00', NULL),
(616, 3, '04/05/2023', '16:00 - 17:00', '2', '0', '2023-05-04 19:48:00', '2023-05-04 19:48:00', NULL),
(617, 3, '05/05/2023', '08:00 - 09:00', '2', '0', '2023-05-04 19:48:00', '2023-05-04 19:48:00', NULL),
(618, 3, '05/05/2023', '09:00 - 10:00', '2', '0', '2023-05-04 19:48:00', '2023-05-04 19:48:00', NULL),
(619, 3, '05/05/2023', '10:00 - 11:00', '2', '0', '2023-05-04 19:48:00', '2023-05-04 19:48:00', NULL),
(620, 3, '05/05/2023', '11:00 - 12:00', '2', '0', '2023-05-04 19:48:00', '2023-05-04 19:48:00', NULL),
(621, 3, '05/05/2023', '13:00 - 14:00', '2', '0', '2023-05-04 19:48:00', '2023-05-04 19:48:00', NULL),
(622, 3, '05/05/2023', '14:00 - 15:00', '2', '0', '2023-05-04 19:48:00', '2023-05-04 19:48:00', NULL),
(623, 3, '05/05/2023', '15:00 - 16:00', '2', '0', '2023-05-04 19:48:00', '2023-05-04 19:48:00', NULL),
(624, 3, '05/05/2023', '16:00 - 17:00', '2', '0', '2023-05-04 19:48:00', '2023-05-04 19:48:00', NULL),
(625, 3, '06/05/2023', '08:00 - 09:00', '2', '0', '2023-05-04 19:48:00', '2023-05-04 19:48:00', NULL),
(626, 3, '06/05/2023', '09:00 - 10:00', '2', '0', '2023-05-04 19:48:00', '2023-05-04 19:48:00', NULL),
(627, 3, '06/05/2023', '10:00 - 11:00', '2', '0', '2023-05-04 19:48:00', '2023-05-04 19:48:00', NULL),
(628, 3, '06/05/2023', '11:00 - 12:00', '2', '0', '2023-05-04 19:48:00', '2023-05-04 19:48:00', NULL),
(629, 3, '06/05/2023', '13:00 - 14:00', '2', '0', '2023-05-04 19:48:00', '2023-05-04 19:48:00', NULL),
(630, 3, '06/05/2023', '14:00 - 15:00', '2', '0', '2023-05-04 19:48:00', '2023-05-04 19:48:00', NULL),
(631, 3, '06/05/2023', '15:00 - 16:00', '2', '0', '2023-05-04 19:48:00', '2023-05-04 19:48:00', NULL),
(632, 3, '06/05/2023', '16:00 - 17:00', '2', '0', '2023-05-04 19:48:00', '2023-05-04 19:48:00', NULL),
(633, 4, '04/05/2023', '08:00 - 09:00', '2', '0', '2023-05-04 19:48:00', '2023-05-04 19:48:00', NULL),
(634, 4, '04/05/2023', '09:00 - 10:00', '2', '0', '2023-05-04 19:48:00', '2023-05-04 19:48:00', NULL),
(635, 4, '04/05/2023', '10:00 - 11:00', '2', '0', '2023-05-04 19:48:00', '2023-05-04 19:48:00', NULL),
(636, 4, '04/05/2023', '11:00 - 12:00', '2', '0', '2023-05-04 19:48:00', '2023-05-04 19:48:00', NULL),
(637, 4, '04/05/2023', '13:00 - 14:00', '2', '0', '2023-05-04 19:48:00', '2023-05-04 19:48:00', NULL),
(638, 4, '04/05/2023', '14:00 - 15:00', '2', '0', '2023-05-04 19:48:00', '2023-05-04 19:48:00', NULL),
(639, 4, '04/05/2023', '15:00 - 16:00', '2', '0', '2023-05-04 19:48:00', '2023-05-04 19:48:00', NULL),
(640, 4, '04/05/2023', '16:00 - 17:00', '2', '0', '2023-05-04 19:48:00', '2023-05-04 19:48:00', NULL),
(641, 4, '05/05/2023', '08:00 - 09:00', '2', '0', '2023-05-04 19:48:00', '2023-05-04 19:48:00', NULL),
(642, 4, '05/05/2023', '09:00 - 10:00', '2', '0', '2023-05-04 19:48:00', '2023-05-04 19:48:00', NULL),
(643, 4, '05/05/2023', '10:00 - 11:00', '2', '0', '2023-05-04 19:48:01', '2023-05-04 19:48:01', NULL),
(644, 4, '05/05/2023', '11:00 - 12:00', '2', '0', '2023-05-04 19:48:01', '2023-05-04 19:48:01', NULL),
(645, 4, '05/05/2023', '13:00 - 14:00', '2', '0', '2023-05-04 19:48:01', '2023-05-04 19:48:01', NULL),
(646, 4, '05/05/2023', '14:00 - 15:00', '2', '0', '2023-05-04 19:48:01', '2023-05-04 19:48:01', NULL),
(647, 4, '05/05/2023', '15:00 - 16:00', '2', '0', '2023-05-04 19:48:01', '2023-05-04 19:48:01', NULL),
(648, 4, '05/05/2023', '16:00 - 17:00', '2', '0', '2023-05-04 19:48:01', '2023-05-04 19:48:01', NULL),
(649, 4, '06/05/2023', '08:00 - 09:00', '2', '0', '2023-05-04 19:48:01', '2023-05-04 19:48:01', NULL),
(650, 4, '06/05/2023', '09:00 - 10:00', '2', '0', '2023-05-04 19:48:01', '2023-05-04 19:48:01', NULL),
(651, 4, '06/05/2023', '10:00 - 11:00', '2', '0', '2023-05-04 19:48:01', '2023-05-04 19:48:01', NULL),
(652, 4, '06/05/2023', '11:00 - 12:00', '2', '0', '2023-05-04 19:48:01', '2023-05-04 19:48:01', NULL),
(653, 4, '06/05/2023', '13:00 - 14:00', '2', '0', '2023-05-04 19:48:01', '2023-05-04 19:48:01', NULL),
(654, 4, '06/05/2023', '14:00 - 15:00', '2', '0', '2023-05-04 19:48:01', '2023-05-04 19:48:01', NULL),
(655, 4, '06/05/2023', '15:00 - 16:00', '2', '0', '2023-05-04 19:48:01', '2023-05-04 19:48:01', NULL),
(656, 4, '06/05/2023', '16:00 - 17:00', '2', '0', '2023-05-04 19:48:01', '2023-05-04 19:48:01', NULL),
(657, 5, '04/05/2023', '08:00 - 09:00', '2', '0', '2023-05-04 19:48:01', '2023-05-04 19:48:01', NULL),
(658, 5, '04/05/2023', '09:00 - 10:00', '2', '0', '2023-05-04 19:48:01', '2023-05-04 19:48:01', NULL),
(659, 5, '04/05/2023', '10:00 - 11:00', '2', '0', '2023-05-04 19:48:01', '2023-05-04 19:48:01', NULL),
(660, 5, '04/05/2023', '11:00 - 12:00', '2', '0', '2023-05-04 19:48:01', '2023-05-04 19:48:01', NULL),
(661, 5, '04/05/2023', '13:00 - 14:00', '2', '0', '2023-05-04 19:48:01', '2023-05-04 19:48:01', NULL),
(662, 5, '04/05/2023', '14:00 - 15:00', '2', '0', '2023-05-04 19:48:01', '2023-05-04 19:48:01', NULL),
(663, 5, '04/05/2023', '15:00 - 16:00', '2', '0', '2023-05-04 19:48:01', '2023-05-04 19:48:01', NULL),
(664, 5, '04/05/2023', '16:00 - 17:00', '2', '0', '2023-05-04 19:48:01', '2023-05-04 19:48:01', NULL),
(665, 5, '05/05/2023', '08:00 - 09:00', '2', '0', '2023-05-04 19:48:01', '2023-05-04 19:48:01', NULL),
(666, 5, '05/05/2023', '09:00 - 10:00', '2', '0', '2023-05-04 19:48:01', '2023-05-04 19:48:01', NULL),
(667, 5, '05/05/2023', '10:00 - 11:00', '2', '0', '2023-05-04 19:48:01', '2023-05-04 19:48:01', NULL),
(668, 5, '05/05/2023', '11:00 - 12:00', '2', '0', '2023-05-04 19:48:01', '2023-05-04 19:48:01', NULL),
(669, 5, '05/05/2023', '13:00 - 14:00', '2', '0', '2023-05-04 19:48:01', '2023-05-04 19:48:01', NULL),
(670, 5, '05/05/2023', '14:00 - 15:00', '2', '0', '2023-05-04 19:48:01', '2023-05-04 19:48:01', NULL),
(671, 5, '05/05/2023', '15:00 - 16:00', '2', '0', '2023-05-04 19:48:01', '2023-05-04 19:48:01', NULL),
(672, 5, '05/05/2023', '16:00 - 17:00', '2', '0', '2023-05-04 19:48:01', '2023-05-04 19:48:01', NULL),
(673, 5, '06/05/2023', '08:00 - 09:00', '2', '0', '2023-05-04 19:48:01', '2023-05-04 19:48:01', NULL),
(674, 5, '06/05/2023', '09:00 - 10:00', '2', '0', '2023-05-04 19:48:01', '2023-05-04 19:48:01', NULL),
(675, 5, '06/05/2023', '10:00 - 11:00', '2', '0', '2023-05-04 19:48:01', '2023-05-04 19:48:01', NULL),
(676, 5, '06/05/2023', '11:00 - 12:00', '2', '0', '2023-05-04 19:48:01', '2023-05-04 19:48:01', NULL),
(677, 5, '06/05/2023', '13:00 - 14:00', '2', '0', '2023-05-04 19:48:01', '2023-05-04 19:48:01', NULL),
(678, 5, '06/05/2023', '14:00 - 15:00', '2', '0', '2023-05-04 19:48:01', '2023-05-04 19:48:01', NULL),
(679, 5, '06/05/2023', '15:00 - 16:00', '2', '0', '2023-05-04 19:48:01', '2023-05-04 19:48:01', NULL),
(680, 5, '06/05/2023', '16:00 - 17:00', '2', '0', '2023-05-04 19:48:01', '2023-05-04 19:48:01', NULL),
(681, 6, '04/05/2023', '08:00 - 09:00', '2', '0', '2023-05-04 19:48:01', '2023-05-04 19:48:01', NULL),
(682, 6, '04/05/2023', '09:00 - 10:00', '2', '0', '2023-05-04 19:48:01', '2023-05-04 19:48:01', NULL),
(683, 6, '04/05/2023', '10:00 - 11:00', '2', '0', '2023-05-04 19:48:01', '2023-05-04 19:48:01', NULL),
(684, 6, '04/05/2023', '11:00 - 12:00', '2', '0', '2023-05-04 19:48:01', '2023-05-04 19:48:01', NULL),
(685, 6, '04/05/2023', '13:00 - 14:00', '2', '0', '2023-05-04 19:48:01', '2023-05-04 19:48:01', NULL),
(686, 6, '04/05/2023', '14:00 - 15:00', '2', '0', '2023-05-04 19:48:01', '2023-05-04 19:48:01', NULL),
(687, 6, '04/05/2023', '15:00 - 16:00', '2', '0', '2023-05-04 19:48:01', '2023-05-04 19:48:01', NULL),
(688, 6, '04/05/2023', '16:00 - 17:00', '2', '0', '2023-05-04 19:48:01', '2023-05-04 19:48:01', NULL),
(689, 6, '05/05/2023', '08:00 - 09:00', '2', '0', '2023-05-04 19:48:01', '2023-05-04 19:48:01', NULL),
(690, 6, '05/05/2023', '09:00 - 10:00', '2', '0', '2023-05-04 19:48:01', '2023-05-04 19:48:01', NULL),
(691, 6, '05/05/2023', '10:00 - 11:00', '2', '0', '2023-05-04 19:48:01', '2023-05-04 19:48:01', NULL),
(692, 6, '05/05/2023', '11:00 - 12:00', '2', '0', '2023-05-04 19:48:01', '2023-05-04 19:48:01', NULL),
(693, 6, '05/05/2023', '13:00 - 14:00', '2', '0', '2023-05-04 19:48:01', '2023-05-04 19:48:01', NULL),
(694, 6, '05/05/2023', '14:00 - 15:00', '2', '0', '2023-05-04 19:48:01', '2023-05-04 19:48:01', NULL),
(695, 6, '05/05/2023', '15:00 - 16:00', '2', '0', '2023-05-04 19:48:01', '2023-05-04 19:48:01', NULL),
(696, 6, '05/05/2023', '16:00 - 17:00', '2', '0', '2023-05-04 19:48:01', '2023-05-04 19:48:01', NULL),
(697, 6, '06/05/2023', '08:00 - 09:00', '2', '0', '2023-05-04 19:48:01', '2023-05-04 19:48:01', NULL),
(698, 6, '06/05/2023', '09:00 - 10:00', '2', '0', '2023-05-04 19:48:01', '2023-05-04 19:48:01', NULL),
(699, 6, '06/05/2023', '10:00 - 11:00', '2', '0', '2023-05-04 19:48:01', '2023-05-04 19:48:01', NULL),
(700, 6, '06/05/2023', '11:00 - 12:00', '2', '0', '2023-05-04 19:48:01', '2023-05-04 19:48:01', NULL),
(701, 6, '06/05/2023', '13:00 - 14:00', '2', '0', '2023-05-04 19:48:01', '2023-05-04 19:48:01', NULL),
(702, 6, '06/05/2023', '14:00 - 15:00', '2', '0', '2023-05-04 19:48:01', '2023-05-04 19:48:01', NULL),
(703, 6, '06/05/2023', '15:00 - 16:00', '2', '0', '2023-05-04 19:48:01', '2023-05-04 19:48:01', NULL),
(704, 6, '06/05/2023', '16:00 - 17:00', '2', '0', '2023-05-04 19:48:01', '2023-05-04 19:48:01', NULL),
(705, 7, '04/05/2023', '08:00 - 09:00', '2', '0', '2023-05-04 19:48:01', '2023-05-04 19:48:01', NULL),
(706, 7, '04/05/2023', '09:00 - 10:00', '2', '0', '2023-05-04 19:48:01', '2023-05-04 19:48:01', NULL),
(707, 7, '04/05/2023', '10:00 - 11:00', '2', '0', '2023-05-04 19:48:01', '2023-05-04 19:48:01', NULL),
(708, 7, '04/05/2023', '11:00 - 12:00', '2', '0', '2023-05-04 19:48:01', '2023-05-04 19:48:01', NULL),
(709, 7, '04/05/2023', '13:00 - 14:00', '2', '0', '2023-05-04 19:48:01', '2023-05-04 19:48:01', NULL),
(710, 7, '04/05/2023', '14:00 - 15:00', '2', '0', '2023-05-04 19:48:01', '2023-05-04 19:48:01', NULL),
(711, 7, '04/05/2023', '15:00 - 16:00', '2', '0', '2023-05-04 19:48:01', '2023-05-04 19:48:01', NULL),
(712, 7, '04/05/2023', '16:00 - 17:00', '2', '0', '2023-05-04 19:48:01', '2023-05-04 19:48:01', NULL),
(713, 7, '05/05/2023', '08:00 - 09:00', '2', '0', '2023-05-04 19:48:01', '2023-05-04 19:48:01', NULL),
(714, 7, '05/05/2023', '09:00 - 10:00', '2', '0', '2023-05-04 19:48:01', '2023-05-04 19:48:01', NULL),
(715, 7, '05/05/2023', '10:00 - 11:00', '2', '0', '2023-05-04 19:48:01', '2023-05-04 19:48:01', NULL),
(716, 7, '05/05/2023', '11:00 - 12:00', '2', '0', '2023-05-04 19:48:01', '2023-05-04 19:48:01', NULL),
(717, 7, '05/05/2023', '13:00 - 14:00', '2', '0', '2023-05-04 19:48:01', '2023-05-04 19:48:01', NULL),
(718, 7, '05/05/2023', '14:00 - 15:00', '2', '0', '2023-05-04 19:48:01', '2023-05-04 19:48:01', NULL),
(719, 7, '05/05/2023', '15:00 - 16:00', '2', '0', '2023-05-04 19:48:01', '2023-05-04 19:48:01', NULL),
(720, 7, '05/05/2023', '16:00 - 17:00', '2', '0', '2023-05-04 19:48:01', '2023-05-04 19:48:01', NULL),
(721, 7, '06/05/2023', '08:00 - 09:00', '2', '0', '2023-05-04 19:48:01', '2023-05-04 19:48:01', NULL),
(722, 7, '06/05/2023', '09:00 - 10:00', '2', '0', '2023-05-04 19:48:01', '2023-05-04 19:48:01', NULL),
(723, 7, '06/05/2023', '10:00 - 11:00', '2', '0', '2023-05-04 19:48:01', '2023-05-04 19:48:01', NULL),
(724, 7, '06/05/2023', '11:00 - 12:00', '2', '0', '2023-05-04 19:48:01', '2023-05-04 19:48:01', NULL),
(725, 7, '06/05/2023', '13:00 - 14:00', '2', '0', '2023-05-04 19:48:01', '2023-05-04 19:48:01', NULL),
(726, 7, '06/05/2023', '14:00 - 15:00', '2', '0', '2023-05-04 19:48:01', '2023-05-04 19:48:01', NULL),
(727, 7, '06/05/2023', '15:00 - 16:00', '2', '0', '2023-05-04 19:48:01', '2023-05-04 19:48:01', NULL),
(728, 7, '06/05/2023', '16:00 - 17:00', '2', '0', '2023-05-04 19:48:01', '2023-05-04 19:48:01', NULL),
(729, 2, '21/05/2023', '08:00 - 09:00', '2', '0', '2023-05-21 18:27:33', '2023-05-21 18:27:33', NULL),
(730, 2, '21/05/2023', '09:00 - 10:00', '2', '0', '2023-05-21 18:27:33', '2023-05-21 18:27:33', NULL),
(731, 2, '21/05/2023', '10:00 - 11:00', '2', '0', '2023-05-21 18:27:33', '2023-05-21 18:27:33', NULL),
(732, 2, '21/05/2023', '11:00 - 12:00', '2', '0', '2023-05-21 18:27:33', '2023-05-21 18:27:33', NULL),
(733, 2, '21/05/2023', '13:00 - 14:00', '2', '0', '2023-05-21 18:27:33', '2023-05-21 18:27:33', NULL),
(734, 2, '21/05/2023', '14:00 - 15:00', '2', '0', '2023-05-21 18:27:33', '2023-05-21 18:27:33', NULL),
(735, 2, '22/05/2023', '08:00 - 09:00', '2', '0', '2023-05-21 18:27:33', '2023-05-21 18:27:33', NULL),
(736, 2, '21/05/2023', '15:00 - 16:00', '2', '0', '2023-05-21 18:27:33', '2023-05-21 18:27:33', NULL),
(737, 2, '21/05/2023', '16:00 - 17:00', '2', '0', '2023-05-21 18:27:33', '2023-05-21 18:27:33', NULL),
(738, 2, '22/05/2023', '09:00 - 10:00', '2', '0', '2023-05-21 18:27:33', '2023-05-21 18:27:33', NULL),
(739, 2, '22/05/2023', '10:00 - 11:00', '2', '0', '2023-05-21 18:27:33', '2023-05-21 18:27:33', NULL),
(740, 2, '22/05/2023', '11:00 - 12:00', '2', '0', '2023-05-21 18:27:33', '2023-05-21 18:27:33', NULL),
(741, 2, '22/05/2023', '13:00 - 14:00', '2', '0', '2023-05-21 18:27:33', '2023-05-21 18:27:33', NULL),
(742, 2, '22/05/2023', '14:00 - 15:00', '2', '0', '2023-05-21 18:27:33', '2023-05-21 18:27:33', NULL),
(743, 2, '22/05/2023', '15:00 - 16:00', '2', '0', '2023-05-21 18:27:33', '2023-05-21 18:27:33', NULL),
(744, 2, '22/05/2023', '16:00 - 17:00', '2', '0', '2023-05-21 18:27:33', '2023-05-21 18:27:33', NULL),
(745, 2, '23/05/2023', '08:00 - 09:00', '2', '0', '2023-05-21 18:27:33', '2023-05-21 18:27:33', NULL),
(746, 2, '23/05/2023', '09:00 - 10:00', '2', '0', '2023-05-21 18:27:33', '2023-05-21 18:27:33', NULL),
(747, 2, '23/05/2023', '10:00 - 11:00', '2', '0', '2023-05-21 18:27:33', '2023-05-21 18:27:33', NULL),
(748, 2, '23/05/2023', '11:00 - 12:00', '2', '0', '2023-05-21 18:27:33', '2023-05-21 18:27:33', NULL),
(749, 2, '23/05/2023', '13:00 - 14:00', '2', '0', '2023-05-21 18:27:33', '2023-05-21 18:27:33', NULL),
(750, 2, '23/05/2023', '14:00 - 15:00', '2', '0', '2023-05-21 18:27:33', '2023-05-21 18:27:33', NULL),
(751, 2, '23/05/2023', '15:00 - 16:00', '2', '0', '2023-05-21 18:27:33', '2023-05-21 18:27:33', NULL),
(752, 2, '23/05/2023', '16:00 - 17:00', '2', '0', '2023-05-21 18:27:33', '2023-05-21 18:27:33', NULL),
(753, 3, '21/05/2023', '08:00 - 09:00', '2', '0', '2023-05-21 18:27:33', '2023-05-21 18:27:33', NULL),
(754, 3, '21/05/2023', '09:00 - 10:00', '2', '0', '2023-05-21 18:27:33', '2023-05-21 18:27:33', NULL),
(755, 3, '21/05/2023', '10:00 - 11:00', '2', '0', '2023-05-21 18:27:33', '2023-05-21 18:27:33', NULL),
(756, 3, '21/05/2023', '11:00 - 12:00', '2', '0', '2023-05-21 18:27:33', '2023-05-21 18:27:33', NULL),
(757, 3, '21/05/2023', '13:00 - 14:00', '2', '0', '2023-05-21 18:27:33', '2023-05-21 18:27:33', NULL),
(758, 3, '21/05/2023', '14:00 - 15:00', '2', '0', '2023-05-21 18:27:33', '2023-05-21 18:27:33', NULL),
(759, 3, '21/05/2023', '15:00 - 16:00', '2', '0', '2023-05-21 18:27:33', '2023-05-21 18:27:33', NULL),
(760, 3, '21/05/2023', '16:00 - 17:00', '2', '0', '2023-05-21 18:27:33', '2023-05-21 18:27:33', NULL),
(761, 3, '22/05/2023', '08:00 - 09:00', '2', '0', '2023-05-21 18:27:34', '2023-05-21 18:27:34', NULL),
(762, 3, '22/05/2023', '09:00 - 10:00', '2', '0', '2023-05-21 18:27:34', '2023-05-21 18:27:34', NULL),
(763, 3, '22/05/2023', '10:00 - 11:00', '2', '0', '2023-05-21 18:27:34', '2023-05-21 18:27:34', NULL),
(764, 3, '22/05/2023', '11:00 - 12:00', '2', '0', '2023-05-21 18:27:34', '2023-05-21 18:27:34', NULL),
(765, 3, '22/05/2023', '13:00 - 14:00', '2', '0', '2023-05-21 18:27:34', '2023-05-21 18:27:34', NULL),
(766, 3, '22/05/2023', '14:00 - 15:00', '2', '0', '2023-05-21 18:27:34', '2023-05-21 18:27:34', NULL),
(767, 3, '22/05/2023', '15:00 - 16:00', '2', '0', '2023-05-21 18:27:34', '2023-05-21 18:27:34', NULL),
(768, 3, '22/05/2023', '16:00 - 17:00', '2', '0', '2023-05-21 18:27:34', '2023-05-21 18:27:34', NULL),
(769, 3, '23/05/2023', '08:00 - 09:00', '2', '0', '2023-05-21 18:27:34', '2023-05-21 18:27:34', NULL),
(770, 3, '23/05/2023', '09:00 - 10:00', '2', '0', '2023-05-21 18:27:34', '2023-05-21 18:27:34', NULL),
(771, 3, '23/05/2023', '10:00 - 11:00', '2', '0', '2023-05-21 18:27:34', '2023-05-21 18:27:34', NULL),
(772, 3, '23/05/2023', '11:00 - 12:00', '2', '0', '2023-05-21 18:27:34', '2023-05-21 18:27:34', NULL),
(773, 3, '23/05/2023', '13:00 - 14:00', '2', '0', '2023-05-21 18:27:34', '2023-05-21 18:27:34', NULL),
(774, 3, '23/05/2023', '14:00 - 15:00', '2', '0', '2023-05-21 18:27:34', '2023-05-21 18:27:34', NULL),
(775, 3, '23/05/2023', '15:00 - 16:00', '2', '0', '2023-05-21 18:27:34', '2023-05-21 18:27:34', NULL),
(776, 3, '23/05/2023', '16:00 - 17:00', '2', '0', '2023-05-21 18:27:34', '2023-05-21 18:27:34', NULL),
(777, 4, '21/05/2023', '08:00 - 09:00', '2', '0', '2023-05-21 18:27:34', '2023-05-21 18:27:34', NULL),
(778, 4, '21/05/2023', '09:00 - 10:00', '2', '0', '2023-05-21 18:27:34', '2023-05-21 18:27:34', NULL),
(779, 4, '21/05/2023', '10:00 - 11:00', '2', '0', '2023-05-21 18:27:34', '2023-05-21 18:27:34', NULL),
(780, 4, '21/05/2023', '11:00 - 12:00', '2', '0', '2023-05-21 18:27:34', '2023-05-21 18:27:34', NULL),
(781, 4, '21/05/2023', '13:00 - 14:00', '2', '0', '2023-05-21 18:27:34', '2023-05-21 18:27:34', NULL),
(782, 4, '21/05/2023', '14:00 - 15:00', '2', '0', '2023-05-21 18:27:34', '2023-05-21 18:27:34', NULL),
(783, 4, '21/05/2023', '15:00 - 16:00', '2', '0', '2023-05-21 18:27:34', '2023-05-21 18:27:34', NULL),
(784, 4, '21/05/2023', '16:00 - 17:00', '2', '0', '2023-05-21 18:27:34', '2023-05-21 18:27:34', NULL),
(785, 4, '22/05/2023', '08:00 - 09:00', '2', '0', '2023-05-21 18:27:34', '2023-05-21 18:27:34', NULL),
(786, 4, '22/05/2023', '09:00 - 10:00', '2', '0', '2023-05-21 18:27:34', '2023-05-21 18:27:34', NULL),
(787, 4, '22/05/2023', '10:00 - 11:00', '2', '0', '2023-05-21 18:27:34', '2023-05-21 18:27:34', NULL),
(788, 4, '22/05/2023', '11:00 - 12:00', '2', '0', '2023-05-21 18:27:34', '2023-05-21 18:27:34', NULL),
(789, 4, '22/05/2023', '13:00 - 14:00', '2', '0', '2023-05-21 18:27:34', '2023-05-21 18:27:34', NULL);
INSERT INTO `schedules` (`id`, `doctorId`, `date`, `time`, `maxBooking`, `sumBooking`, `createdAt`, `updatedAt`, `deletedAt`) VALUES
(790, 4, '22/05/2023', '14:00 - 15:00', '2', '0', '2023-05-21 18:27:34', '2023-05-21 18:27:34', NULL),
(791, 4, '22/05/2023', '15:00 - 16:00', '2', '0', '2023-05-21 18:27:34', '2023-05-21 18:27:34', NULL),
(792, 4, '22/05/2023', '16:00 - 17:00', '2', '0', '2023-05-21 18:27:34', '2023-05-21 18:27:34', NULL),
(793, 4, '23/05/2023', '08:00 - 09:00', '2', '0', '2023-05-21 18:27:34', '2023-05-21 18:27:34', NULL),
(794, 4, '23/05/2023', '09:00 - 10:00', '2', '0', '2023-05-21 18:27:34', '2023-05-21 18:27:34', NULL),
(795, 4, '23/05/2023', '10:00 - 11:00', '2', '0', '2023-05-21 18:27:34', '2023-05-21 18:27:34', NULL),
(796, 4, '23/05/2023', '11:00 - 12:00', '2', '0', '2023-05-21 18:27:34', '2023-05-21 18:27:34', NULL),
(797, 4, '23/05/2023', '13:00 - 14:00', '2', '0', '2023-05-21 18:27:34', '2023-05-21 18:27:34', NULL),
(798, 4, '23/05/2023', '14:00 - 15:00', '2', '0', '2023-05-21 18:27:34', '2023-05-21 18:27:34', NULL),
(799, 4, '23/05/2023', '15:00 - 16:00', '2', '0', '2023-05-21 18:27:34', '2023-05-21 18:27:34', NULL),
(800, 4, '23/05/2023', '16:00 - 17:00', '2', '0', '2023-05-21 18:27:34', '2023-05-21 18:27:34', NULL),
(801, 5, '21/05/2023', '08:00 - 09:00', '2', '0', '2023-05-21 18:27:34', '2023-05-21 18:27:34', NULL),
(802, 5, '21/05/2023', '09:00 - 10:00', '2', '0', '2023-05-21 18:27:34', '2023-05-21 18:27:34', NULL),
(803, 5, '21/05/2023', '10:00 - 11:00', '2', '0', '2023-05-21 18:27:34', '2023-05-21 18:27:34', NULL),
(804, 5, '21/05/2023', '11:00 - 12:00', '2', '0', '2023-05-21 18:27:34', '2023-05-21 18:27:34', NULL),
(805, 5, '21/05/2023', '13:00 - 14:00', '2', '0', '2023-05-21 18:27:34', '2023-05-21 18:27:34', NULL),
(806, 5, '21/05/2023', '14:00 - 15:00', '2', '0', '2023-05-21 18:27:34', '2023-05-21 18:27:34', NULL),
(807, 5, '21/05/2023', '15:00 - 16:00', '2', '0', '2023-05-21 18:27:34', '2023-05-21 18:27:34', NULL),
(808, 5, '21/05/2023', '16:00 - 17:00', '2', '0', '2023-05-21 18:27:34', '2023-05-21 18:27:34', NULL),
(809, 5, '22/05/2023', '08:00 - 09:00', '2', '0', '2023-05-21 18:27:34', '2023-05-21 18:27:34', NULL),
(810, 5, '22/05/2023', '09:00 - 10:00', '2', '0', '2023-05-21 18:27:34', '2023-05-21 18:27:34', NULL),
(811, 5, '22/05/2023', '10:00 - 11:00', '2', '0', '2023-05-21 18:27:34', '2023-05-21 18:27:34', NULL),
(812, 5, '22/05/2023', '11:00 - 12:00', '2', '0', '2023-05-21 18:27:34', '2023-05-21 18:27:34', NULL),
(813, 5, '22/05/2023', '13:00 - 14:00', '2', '0', '2023-05-21 18:27:34', '2023-05-21 18:27:34', NULL),
(814, 5, '22/05/2023', '14:00 - 15:00', '2', '0', '2023-05-21 18:27:34', '2023-05-21 18:27:34', NULL),
(815, 5, '22/05/2023', '15:00 - 16:00', '2', '0', '2023-05-21 18:27:34', '2023-05-21 18:27:34', NULL),
(816, 5, '22/05/2023', '16:00 - 17:00', '2', '0', '2023-05-21 18:27:34', '2023-05-21 18:27:34', NULL),
(817, 5, '23/05/2023', '08:00 - 09:00', '2', '0', '2023-05-21 18:27:34', '2023-05-21 18:27:34', NULL),
(818, 5, '23/05/2023', '09:00 - 10:00', '2', '0', '2023-05-21 18:27:34', '2023-05-21 18:27:34', NULL),
(819, 5, '23/05/2023', '10:00 - 11:00', '2', '0', '2023-05-21 18:27:34', '2023-05-21 18:27:34', NULL),
(820, 5, '23/05/2023', '11:00 - 12:00', '2', '0', '2023-05-21 18:27:34', '2023-05-21 18:27:34', NULL),
(821, 5, '23/05/2023', '13:00 - 14:00', '2', '0', '2023-05-21 18:27:34', '2023-05-21 18:27:34', NULL),
(822, 5, '23/05/2023', '14:00 - 15:00', '2', '0', '2023-05-21 18:27:34', '2023-05-21 18:27:34', NULL),
(823, 5, '23/05/2023', '15:00 - 16:00', '2', '0', '2023-05-21 18:27:34', '2023-05-21 18:27:34', NULL),
(824, 5, '23/05/2023', '16:00 - 17:00', '2', '0', '2023-05-21 18:27:34', '2023-05-21 18:27:34', NULL),
(825, 6, '21/05/2023', '08:00 - 09:00', '2', '0', '2023-05-21 18:27:34', '2023-05-21 18:27:34', NULL),
(826, 6, '21/05/2023', '09:00 - 10:00', '2', '0', '2023-05-21 18:27:34', '2023-05-21 18:27:34', NULL),
(827, 6, '21/05/2023', '10:00 - 11:00', '2', '0', '2023-05-21 18:27:34', '2023-05-21 18:27:34', NULL),
(828, 6, '21/05/2023', '11:00 - 12:00', '2', '0', '2023-05-21 18:27:34', '2023-05-21 18:27:34', NULL),
(829, 6, '21/05/2023', '13:00 - 14:00', '2', '0', '2023-05-21 18:27:34', '2023-05-21 18:27:34', NULL),
(830, 6, '21/05/2023', '14:00 - 15:00', '2', '0', '2023-05-21 18:27:34', '2023-05-21 18:27:34', NULL),
(831, 6, '21/05/2023', '15:00 - 16:00', '2', '0', '2023-05-21 18:27:34', '2023-05-21 18:27:34', NULL),
(832, 6, '21/05/2023', '16:00 - 17:00', '2', '0', '2023-05-21 18:27:34', '2023-05-21 18:27:34', NULL),
(833, 6, '22/05/2023', '08:00 - 09:00', '2', '0', '2023-05-21 18:27:34', '2023-05-21 18:27:34', NULL),
(834, 6, '22/05/2023', '09:00 - 10:00', '2', '0', '2023-05-21 18:27:34', '2023-05-21 18:27:34', NULL),
(835, 6, '22/05/2023', '10:00 - 11:00', '2', '0', '2023-05-21 18:27:34', '2023-05-21 18:27:34', NULL),
(836, 6, '22/05/2023', '11:00 - 12:00', '2', '0', '2023-05-21 18:27:34', '2023-05-21 18:27:34', NULL),
(837, 6, '22/05/2023', '13:00 - 14:00', '2', '0', '2023-05-21 18:27:34', '2023-05-21 18:27:34', NULL),
(838, 6, '22/05/2023', '14:00 - 15:00', '2', '0', '2023-05-21 18:27:34', '2023-05-21 18:27:34', NULL),
(839, 6, '22/05/2023', '15:00 - 16:00', '2', '0', '2023-05-21 18:27:34', '2023-05-21 18:27:34', NULL),
(840, 6, '22/05/2023', '16:00 - 17:00', '2', '0', '2023-05-21 18:27:34', '2023-05-21 18:27:34', NULL),
(841, 6, '23/05/2023', '08:00 - 09:00', '2', '0', '2023-05-21 18:27:34', '2023-05-21 18:27:34', NULL),
(842, 6, '23/05/2023', '09:00 - 10:00', '2', '0', '2023-05-21 18:27:34', '2023-05-21 18:27:34', NULL),
(843, 6, '23/05/2023', '10:00 - 11:00', '2', '0', '2023-05-21 18:27:34', '2023-05-21 18:27:34', NULL),
(844, 6, '23/05/2023', '11:00 - 12:00', '2', '0', '2023-05-21 18:27:34', '2023-05-21 18:27:34', NULL),
(845, 6, '23/05/2023', '13:00 - 14:00', '2', '0', '2023-05-21 18:27:34', '2023-05-21 18:27:34', NULL),
(846, 6, '23/05/2023', '14:00 - 15:00', '2', '0', '2023-05-21 18:27:34', '2023-05-21 18:27:34', NULL),
(847, 6, '23/05/2023', '15:00 - 16:00', '2', '0', '2023-05-21 18:27:34', '2023-05-21 18:27:34', NULL),
(848, 6, '23/05/2023', '16:00 - 17:00', '2', '0', '2023-05-21 18:27:34', '2023-05-21 18:27:34', NULL),
(849, 7, '21/05/2023', '08:00 - 09:00', '2', '0', '2023-05-21 18:27:34', '2023-05-21 18:27:34', NULL),
(850, 7, '21/05/2023', '09:00 - 10:00', '2', '0', '2023-05-21 18:27:34', '2023-05-21 18:27:34', NULL),
(851, 7, '21/05/2023', '10:00 - 11:00', '2', '0', '2023-05-21 18:27:34', '2023-05-21 18:27:34', NULL),
(852, 7, '21/05/2023', '11:00 - 12:00', '2', '0', '2023-05-21 18:27:34', '2023-05-21 18:27:34', NULL),
(853, 7, '21/05/2023', '13:00 - 14:00', '2', '0', '2023-05-21 18:27:34', '2023-05-21 18:27:34', NULL),
(854, 7, '21/05/2023', '14:00 - 15:00', '2', '0', '2023-05-21 18:27:34', '2023-05-21 18:27:34', NULL),
(855, 7, '21/05/2023', '15:00 - 16:00', '2', '0', '2023-05-21 18:27:34', '2023-05-21 18:27:34', NULL),
(856, 7, '21/05/2023', '16:00 - 17:00', '2', '0', '2023-05-21 18:27:34', '2023-05-21 18:27:34', NULL),
(857, 7, '22/05/2023', '08:00 - 09:00', '2', '0', '2023-05-21 18:27:34', '2023-05-21 18:27:34', NULL),
(858, 7, '22/05/2023', '09:00 - 10:00', '2', '0', '2023-05-21 18:27:34', '2023-05-21 18:27:34', NULL),
(859, 7, '22/05/2023', '10:00 - 11:00', '2', '0', '2023-05-21 18:27:34', '2023-05-21 18:27:34', NULL),
(860, 7, '22/05/2023', '11:00 - 12:00', '2', '0', '2023-05-21 18:27:34', '2023-05-21 18:27:34', NULL),
(861, 7, '22/05/2023', '13:00 - 14:00', '2', '0', '2023-05-21 18:27:34', '2023-05-21 18:27:34', NULL),
(862, 7, '22/05/2023', '14:00 - 15:00', '2', '0', '2023-05-21 18:27:34', '2023-05-21 18:27:34', NULL),
(863, 7, '22/05/2023', '15:00 - 16:00', '2', '0', '2023-05-21 18:27:34', '2023-05-21 18:27:34', NULL),
(864, 7, '22/05/2023', '16:00 - 17:00', '2', '0', '2023-05-21 18:27:34', '2023-05-21 18:27:34', NULL),
(865, 7, '23/05/2023', '08:00 - 09:00', '2', '0', '2023-05-21 18:27:34', '2023-05-21 18:27:34', NULL),
(866, 7, '23/05/2023', '09:00 - 10:00', '2', '0', '2023-05-21 18:27:34', '2023-05-21 18:27:34', NULL),
(867, 7, '23/05/2023', '10:00 - 11:00', '2', '0', '2023-05-21 18:27:34', '2023-05-21 18:27:34', NULL),
(868, 7, '23/05/2023', '11:00 - 12:00', '2', '0', '2023-05-21 18:27:34', '2023-05-21 18:27:34', NULL),
(869, 7, '23/05/2023', '13:00 - 14:00', '2', '0', '2023-05-21 18:27:34', '2023-05-21 18:27:34', NULL),
(870, 7, '23/05/2023', '14:00 - 15:00', '2', '0', '2023-05-21 18:27:34', '2023-05-21 18:27:34', NULL),
(871, 7, '23/05/2023', '15:00 - 16:00', '2', '0', '2023-05-21 18:27:34', '2023-05-21 18:27:34', NULL),
(872, 7, '23/05/2023', '16:00 - 17:00', '2', '0', '2023-05-21 18:27:34', '2023-05-21 18:27:34', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sequelizemeta`
--

CREATE TABLE `sequelizemeta` (
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `sequelizemeta`
--

INSERT INTO `sequelizemeta` (`name`) VALUES
('20200311024259-users.js'),
('20200311025445-create-role.js'),
('20200311025538-create-post.js'),
('20200311025553-create-clinic.js'),
('20200311025604-create-specialization.js'),
('20200311025619-create-schedule.js'),
('20200311025632-create-status.js'),
('20200311025648-create-patient.js'),
('migration-create-comment.js'),
('migration-create-doctor-user.js'),
('migration-create-extraInfo.js'),
('migration-create-place.js'),
('migration-create-supporterLog.js');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `session`
--

CREATE TABLE `session` (
  `sid` varchar(36) NOT NULL,
  `expires` datetime DEFAULT NULL,
  `data` text DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `session`
--

INSERT INTO `session` (`sid`, `expires`, `data`, `createdAt`, `updatedAt`) VALUES
('CDxuplAYnMqs6Qblbwbqu_D7yEu7XqtP', '2023-07-26 10:43:07', '{\"cookie\":{\"originalMaxAge\":86400000,\"expires\":\"2023-07-26T03:43:07.337Z\",\"secure\":false,\"httpOnly\":false,\"path\":\"/\"},\"flash\":{},\"passport\":{\"user\":1}}', '2023-07-25 10:42:59', '2023-07-25 10:43:07'),
('uCmkdmPf43yV_zvbobZDY6HdXIhkpgkU', '2023-07-26 10:42:38', '{\"cookie\":{\"originalMaxAge\":86400000,\"expires\":\"2023-07-26T03:42:38.351Z\",\"secure\":false,\"httpOnly\":false,\"path\":\"/\"},\"flash\":{}}', '2023-07-25 10:42:11', '2023-07-25 10:42:38'),
('X_VofaGSzrA0jPioUKmh60Q7XEuYvv-h', '2023-05-23 00:21:51', '{\"cookie\":{\"originalMaxAge\":86400000,\"expires\":\"2023-05-22T17:21:51.142Z\",\"secure\":false,\"httpOnly\":false,\"path\":\"/\"},\"flash\":{}}', '2023-05-22 00:21:50', '2023-05-22 00:21:51');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `specializations`
--

CREATE TABLE `specializations` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime DEFAULT NULL,
  `deletedAt` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `specializations`
--

INSERT INTO `specializations` (`id`, `name`, `description`, `image`, `createdAt`, `updatedAt`, `deletedAt`) VALUES
(1, 'TAI MŨI HỌNG', NULL, 'otolaryngology.jpg', '2020-11-13 19:44:36', '2020-11-13 19:44:36', NULL),
(2, 'THẦN KINH', NULL, 'neurosurgery.jpg', '2020-11-13 19:44:36', '2020-11-13 19:44:36', NULL),
(3, 'PHẪU THUẬT', NULL, 'surgery.jpg', '2020-11-13 19:44:36', '2020-11-13 19:44:36', NULL),
(4, 'TIM MẠCH', NULL, 'cardiology.jpg', '2020-11-13 19:44:36', '2020-11-13 19:44:36', NULL),
(5, 'Y HỌC CỔ TRUYỀN', NULL, 'medicine.jpg', '2020-11-13 19:44:36', '2020-11-13 19:44:36', NULL),
(6, 'RĂNG HÀM MẶT', NULL, 'neurosurgery.jpg', '2020-11-13 19:44:36', '2020-11-13 19:44:36', NULL),
(7, 'XƯƠNG KHỚP', NULL, 'otolaryngology.jpg', '2020-11-13 19:44:36', '2020-11-13 19:44:36', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `statuses`
--

CREATE TABLE `statuses` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime DEFAULT NULL,
  `deletedAt` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `statuses`
--

INSERT INTO `statuses` (`id`, `name`, `createdAt`, `updatedAt`, `deletedAt`) VALUES
(1, 'SUCCESS', '2020-11-13 19:44:36', '2020-11-13 19:44:36', NULL),
(2, 'FAILED', '2020-11-13 19:44:36', '2020-11-13 19:44:36', NULL),
(3, 'PENDING', '2020-11-13 19:44:36', '2020-11-13 19:44:36', NULL),
(4, 'NEW', '2020-11-13 19:44:36', '2020-11-13 19:44:36', NULL),
(5, 'DONE', '2020-11-13 19:44:36', '2020-11-13 19:44:36', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `supporterlogs`
--

CREATE TABLE `supporterlogs` (
  `id` int(11) NOT NULL,
  `patientId` int(11) DEFAULT NULL,
  `supporterId` int(11) DEFAULT NULL,
  `content` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime DEFAULT NULL,
  `deletedAt` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `supporterlogs`
--

INSERT INTO `supporterlogs` (`id`, `patientId`, `supporterId`, `content`, `createdAt`, `updatedAt`, `deletedAt`) VALUES
(7, 4, NULL, 'The patient made an appointment from the system ', '2020-11-14 20:20:18', '2020-11-14 20:20:18', NULL),
(8, 4, 8, 'New appointments have been received', '2020-11-14 20:20:41', '2020-11-14 20:20:41', NULL),
(9, 4, 8, 'Cancel with reason - The patient canceled the schedule', '2020-11-14 20:20:47', '2020-11-14 20:20:47', NULL),
(10, 5, NULL, 'The patient made an appointment from the system ', '2020-11-15 08:27:25', '2020-11-15 08:27:25', NULL),
(11, 5, 8, 'New appointments have been received', '2020-11-15 08:27:36', '2020-11-15 08:27:36', NULL),
(12, 5, 8, 'The appointment has been successfully booked', '2020-11-15 08:27:40', '2020-11-15 08:27:40', NULL),
(13, 6, NULL, 'The patient made an appointment from the system ', '2023-04-22 17:03:06', '2023-04-22 17:03:06', NULL),
(14, 7, NULL, 'The patient made an appointment from the system ', '2023-05-04 19:49:16', '2023-05-04 19:49:16', NULL),
(15, 7, 1, 'New appointments have been received', '2023-05-04 19:49:59', '2023-05-04 19:49:59', NULL),
(16, 7, 1, 'The appointment has been successfully booked', '2023-05-04 19:50:06', '2023-05-04 19:50:06', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `avatar` varchar(255) DEFAULT NULL,
  `gender` varchar(255) DEFAULT 'male',
  `description` text DEFAULT NULL,
  `roleId` int(11) NOT NULL,
  `isActive` tinyint(1) DEFAULT 1,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime DEFAULT NULL,
  `deletedAt` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `address`, `phone`, `avatar`, `gender`, `description`, `roleId`, `isActive`, `createdAt`, `updatedAt`, `deletedAt`) VALUES
(1, 'ADMIN - NHÓM 1', 'admin@gmail.com', '$2a$07$Bq0hCq3kVrvKUHfMT0NJROmQkx09aEQkGlwBGEdw799YJvWqH1kuy', 'Quận 1', '088456732', 'admin.png', 'male', NULL, 1, 1, '2020-11-13 19:44:36', '2020-11-13 19:44:36', NULL),
(2, 'BÁC SĨ THUẬN', 'doctor@gmail.com', '$2a$07$Bq0hCq3kVrvKUHfMT0NJROmQkx09aEQkGlwBGEdw799YJvWqH1kuy', 'Quận 1', '088456735', 'bs-1.jpg', 'male', '   ', 2, 1, '2020-11-13 19:44:36', '2020-11-13 19:46:18', NULL),
(3, 'BÁC SĨ ĐỨC', 'doctor5@gmail.com', '$2a$07$Bq0hCq3kVrvKUHfMT0NJROmQkx09aEQkGlwBGEdw799YJvWqH1kuy', 'Quận 2', '088456735', 'bs-2.jpg', 'male', '   ', 2, 1, '2020-11-13 19:44:36', '2020-11-13 20:19:55', NULL),
(4, 'BÁC SĨ OANH', 'doctor10@gmail.com', '$2a$07$Bq0hCq3kVrvKUHfMT0NJROmQkx09aEQkGlwBGEdw799YJvWqH1kuy', 'Quận 3', '088456735', 'bs-3.jpg', 'female', '   ', 2, 1, '2020-11-13 19:44:36', '2020-11-13 20:20:15', NULL),
(5, 'BÁC SĨ HOÀNG', 'doctor1@gmail.com', '$2a$07$Bq0hCq3kVrvKUHfMT0NJROmQkx09aEQkGlwBGEdw799YJvWqH1kuy', 'Quận 4', '088456735', 'bs-5.jpg', 'male', '   ', 2, 1, '2020-11-13 19:44:36', '2020-11-13 20:20:26', NULL),
(6, 'BÁC SĨ LINH', 'doctor2@gmail.com', '$2a$07$Bq0hCq3kVrvKUHfMT0NJROmQkx09aEQkGlwBGEdw799YJvWqH1kuy', 'Quận 5', '088456735', 'bs-6.jpg', 'female', '      ', 2, 1, '2020-11-13 19:44:36', '2020-11-14 19:49:26', NULL),
(7, 'BÁC SĨ PHÚC', 'doctor3@gmail.com', '$2a$07$Bq0hCq3kVrvKUHfMT0NJROmQkx09aEQkGlwBGEdw799YJvWqH1kuy', 'Quận 1', '088456735', 'doctor4.jpg', 'male', '      ', 2, 1, '2020-11-13 19:44:36', '2020-11-14 19:49:12', NULL),
(8, 'Supporter - VIỆT\r\n', 'supporter@gmail.com', '$2a$07$Bq0hCq3kVrvKUHfMT0NJROmQkx09aEQkGlwBGEdw799YJvWqH1kuy', 'Quận 3', '088456736', 'supporter.png', 'male', NULL, 3, 1, '2020-11-13 19:44:36', '2020-11-13 19:44:36', NULL),
(9, 'Supporter - SANG', 'supporter1@gmail.com', '$2a$07$Bq0hCq3kVrvKUHfMT0NJROmQkx09aEQkGlwBGEdw799YJvWqH1kuy', 'Quận 4', '088456736', 'supporter.png', 'male', NULL, 3, 1, '2020-11-13 19:44:36', '2020-11-13 19:44:36', NULL),
(10, 'Supporter - TIẾN', 'supporter2@gmail.com', '$2a$07$Bq0hCq3kVrvKUHfMT0NJROmQkx09aEQkGlwBGEdw799YJvWqH1kuy', 'Quận 5', '088456736', 'supporter.png', 'male', NULL, 3, 1, '2020-11-13 19:44:36', '2020-11-13 19:44:36', NULL),
(11, 'Supporter - NHƯ', 'supporter3@gmail.com', '$2a$07$Bq0hCq3kVrvKUHfMT0NJROmQkx09aEQkGlwBGEdw799YJvWqH1kuy', 'Quận 3', '088456736', 'supporter.png', 'male', NULL, 3, 1, '2020-11-13 19:44:36', '2020-11-13 19:44:36', NULL);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `clinics`
--
ALTER TABLE `clinics`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `doctor_users`
--
ALTER TABLE `doctor_users`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `extrainfos`
--
ALTER TABLE `extrainfos`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `patients`
--
ALTER TABLE `patients`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `places`
--
ALTER TABLE `places`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `schedules`
--
ALTER TABLE `schedules`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `sequelizemeta`
--
ALTER TABLE `sequelizemeta`
  ADD PRIMARY KEY (`name`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Chỉ mục cho bảng `session`
--
ALTER TABLE `session`
  ADD PRIMARY KEY (`sid`);

--
-- Chỉ mục cho bảng `specializations`
--
ALTER TABLE `specializations`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `statuses`
--
ALTER TABLE `statuses`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `supporterlogs`
--
ALTER TABLE `supporterlogs`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `clinics`
--
ALTER TABLE `clinics`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `doctor_users`
--
ALTER TABLE `doctor_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `extrainfos`
--
ALTER TABLE `extrainfos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT cho bảng `patients`
--
ALTER TABLE `patients`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT cho bảng `places`
--
ALTER TABLE `places`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT cho bảng `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `schedules`
--
ALTER TABLE `schedules`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=873;

--
-- AUTO_INCREMENT cho bảng `specializations`
--
ALTER TABLE `specializations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT cho bảng `statuses`
--
ALTER TABLE `statuses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `supporterlogs`
--
ALTER TABLE `supporterlogs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
