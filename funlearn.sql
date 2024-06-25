-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 25, 2024 at 04:05 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `funlearn`
--

-- --------------------------------------------------------

--
-- Table structure for table `materi`
--

CREATE TABLE `materi` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `video_url` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `materi`
--

INSERT INTO `materi` (`id`, `title`, `description`, `video_url`) VALUES
(0, 'Post Test', 'Post Test ini mencakup 10 soal untuk menguji pemahaman anak terhadap berbagai topik bahasa Inggris yang telah dipelajari. Setiap soal dirancang untuk menguji kemampuan anak dalam mengidentifikasi konsep-konsep dasar seperti abjad, kata ganti, kata kerja, kata sifat, kata keterangan tempat, dan penggunaan kata hubung. Selamat mengerjakan post test ini!', ''),
(1, 'Alphabet', 'Alphabet atau abjad adalah serangkaian huruf yang digunakan dalam bahasa Inggris, terdiri dari 26 huruf dari A sampai Z. Memahami dan mengenal huruf-huruf ini adalah langkah dasar dalam belajar membaca, menulis, dan berbicara dalam bahasa Inggris. Melalui materi ini, anak-anak akan diajak untuk mengenal setiap huruf dengan cara yang menyenangkan, melalui lagu, permainan, dan aktivitas interaktif lainnya. Mari kita mulai petualangan belajar bahasa Inggris dengan menguasai dasar-dasar abjad!', 'https://www.youtube.com/embed/57E_LsYezDw?si=BRT9C2wJDMNxd889'),
(2, 'We dan They', '\"We\" dan \"They\" adalah kata ganti (pronouns) dalam bahasa Inggris yang sangat penting dalam percakapan sehari-hari. \"We\" digunakan untuk berbicara tentang diri kita sendiri bersama dengan orang lain (kami/kita), sedangkan \"They\" digunakan untuk berbicara tentang orang lain atau benda-benda yang jumlahnya lebih dari satu (mereka). Melalui materi ini, anak-anak akan belajar bagaimana menggunakan \"We\" dan \"They\" dengan benar dalam berbagai konteks, melalui contoh-contoh kalimat dan latihan yang menarik.', 'https://www.youtube.com/embed/dJuLVOuVlpc?si=VYnNVAfIlUON7dE7'),
(3, 'Has dan Have', '\"Has\" dan \"Have\" adalah bentuk kata kerja yang digunakan untuk menunjukkan kepemilikan atau pengalaman. \"Has\" digunakan dengan subjek orang ketiga tunggal (he, she, it), sedangkan \"Have\" digunakan dengan subjek lainnya (I, you, we, they). Materi ini akan membantu anak-anak memahami perbedaan antara \"has\" dan \"have\", serta bagaimana menggunakannya dengan benar dalam kalimat. Dengan latihan-latihan interaktif dan contoh yang relevan, anak-anak akan lebih mudah menguasai penggunaan kata kerja ini.', 'https://www.youtube.com/embed/FkuxJfnTaRY?si=mjxkx1v9nyDH2rvE'),
(4, 'Can and Can\'t', '\"Can\" dan \"Can\'t\" digunakan untuk menyatakan kemampuan atau izin. \"Can\" berarti bisa/mampu, sedangkan \"Can\'t\" adalah bentuk negatifnya, berarti tidak bisa/tidak mampu. Materi ini dirancang untuk membantu anak-anak memahami penggunaan \"can\" dan \"can\'t\" dalam berbagai situasi sehari-hari. Melalui contoh-contoh yang mudah dipahami dan latihan yang menyenangkan, anak-anak akan belajar bagaimana menyatakan kemampuan mereka dan orang lain dengan percaya diri.', 'https://www.youtube.com/embed/z5s6j6AD0j4?si=7bGPxjWVaFodxSbQ'),
(5, 'Prepositions of places', 'Prepositions of places adalah kata depan yang digunakan untuk menunjukkan lokasi atau tempat. Contoh preposisi ini meliputi \"in\" (di dalam), \"on\" (di atas), \"under\" (di bawah), \"next to\" (di sebelah), dan lain-lain. Materi ini akan memperkenalkan anak-anak pada berbagai preposisi tempat melalui gambar, video, dan aktivitas interaktif. Dengan pemahaman yang baik tentang preposisi tempat, anak-anak akan mampu menggambarkan lokasi benda-benda di sekitar mereka dengan lebih jelas dan akurat.', 'https://www.youtube.com/embed/z8sLlsO0IRE?si=eV8RX7I55e2LcUpy'),
(6, 'These and Those', '\"These\" dan \"Those\" adalah kata penunjuk (demonstratives) yang digunakan untuk menunjukkan benda-benda. \"These\" digunakan untuk benda-benda yang dekat dengan pembicara (ini/jamak), sedangkan \"Those\" digunakan untuk benda-benda yang jauh dari pembicara (itu/jamak). Dalam materi ini, anak-anak akan belajar bagaimana menggunakan \"these\" dan \"those\" melalui contoh-contoh yang menarik dan aktivitas yang menyenangkan. Dengan latihan ini, mereka akan lebih mudah mengenali dan menggunakan kata penunjuk dengan benar dalam percakapan sehari-hari.', 'https://www.youtube.com/embed/iFQ6TtxGywY?si=P6kjkPMAGE2lj5oJ'),
(7, 'Transportation', 'Transportation adalah istilah yang mencakup berbagai macam alat transportasi seperti mobil, bus, kereta, pesawat, sepeda, dan lain-lain. Mempelajari jenis-jenis transportasi membantu dalam memahami dan berbicara tentang cara berpindah tempat dalam bahasa Inggris. Materi ini akan memperkenalkan anak-anak pada berbagai jenis transportasi melalui gambar, video, dan cerita yang menarik. Dengan pemahaman yang baik tentang transportasi, anak-anak dapat berbicara tentang perjalanan mereka dan memahami informasi tentang transportasi umum.', 'https://www.youtube.com/embed/0z620fd11j0?si=6dwf5pU9okjaTZPO'),
(8, 'Weather', 'Weather atau cuaca mencakup istilah-istilah yang digunakan untuk mendeskripsikan kondisi atmosfer seperti sunny (cerah), rainy (hujan), cloudy (berawan), windy (berangin), dan snowy (bersalju). Pengetahuan tentang cuaca penting dalam percakapan sehari-hari. Melalui materi ini, anak-anak akan belajar berbagai istilah cuaca dan bagaimana mendeskripsikan cuaca dalam bahasa Inggris. Dengan menggunakan gambar, video, dan aktivitas menarik, mereka akan lebih mudah memahami dan menggunakan istilah cuaca dalam kehidupan sehari-hari.', 'https://www.youtube.com/embed/dMN7NVSbDZI?si=H_RvSWmnpCBDTX7c'),
(9, 'Possessive Adjectives', 'Possessive adjectives adalah kata sifat yang menunjukkan kepemilikan. Contoh termasuk \"my\" (milik saya), \"your\" (milikmu), \"his\" (miliknya laki-laki), \"her\" (miliknya perempuan), \"its\" (miliknya benda/hewan), \"our\" (milik kami/kita), dan \"their\" (milik mereka). Materi ini akan membantu anak-anak memahami dan menggunakan kata sifat kepemilikan dalam berbagai konteks. Dengan latihan dan contoh kalimat yang jelas, anak-anak akan belajar bagaimana menyatakan kepemilikan dengan benar dalam bahasa Inggris.', 'https://www.youtube.com/embed/v4-1_MONZwQ?si=ubiDXvAhIqPBC6HL'),
(10, 'Adjectives and Conjunctions', 'Adjectives (kata sifat) digunakan untuk mendeskripsikan kata benda, seperti \"big\" (besar), \"small\" (kecil), \"beautiful\" (cantik), dan \"interesting\" (menarik). Conjunctions (kata hubung) digunakan untuk menghubungkan kata, frasa, atau kalimat, seperti \"and\" (dan), \"but\" (tetapi), \"or\" (atau), dan \"because\" (karena). Materi ini akan membantu anak-anak memahami penggunaan kata sifat dan kata hubung dalam kalimat. Melalui contoh dan latihan yang menarik, mereka akan belajar bagaimana mendeskripsikan benda dan menghubungkan ide-ide dengan jelas dan tepat.', 'https://www.youtube.com/embed/Qh7fODBUkpU?si=B7vkzkDnabI4Ilr7');

-- --------------------------------------------------------

--
-- Table structure for table `quiz`
--

CREATE TABLE `quiz` (
  `id` int(11) NOT NULL,
  `materi_id` int(11) DEFAULT NULL,
  `question` text DEFAULT NULL,
  `type` varchar(20) DEFAULT NULL,
  `options` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`options`)),
  `answer` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `quiz`
--

INSERT INTO `quiz` (`id`, `materi_id`, `question`, `type`, `options`, `answer`) VALUES
(1, 1, 'What is the first letter in the alphabet?', 'multiple_choice', '[{\"option\": \"A\"}, {\"option\": \"B\"}, {\"option\": \"C\"}]', 'A'),
(2, 1, 'Which letter comes after G in the alphabet?', 'multiple_choice', '[{\"option\": \"H\"}, {\"option\": \"I\"}, {\"option\": \"J\"}]', 'H'),
(3, 1, 'What is the last letter in the alphabet?', 'multiple_choice', '[{\"option\": \"X\"}, {\"option\": \"Y\"}, {\"option\": \"Z\"}]', 'Z'),
(4, 1, 'Write down the letter after P in the alphabet.', 'short_answer', NULL, 'Q'),
(5, 1, 'Write down the letter before K in the alphabet.', 'short_answer', NULL, 'J'),
(6, 2, '\"We\" is used to refer to...', 'multiple_choice', '[{\"option\": \"Them\"}, {\"option\": \"Us\"}, {\"option\": \"Her\"}]', 'Us'),
(7, 2, '\"They\" is used to refer to...', 'multiple_choice', '[{\"option\": \"Them\"}, {\"option\": \"Us\"}, {\"option\": \"Her\"}]', 'Them'),
(8, 2, 'Choose the correct sentence: \"__ are going to the park.\"', 'multiple_choice', '[{\"option\": \"We\"}, {\"option\": \"They\"}, {\"option\": \"He\"}]', 'We'),
(9, 2, '\"We\" is used when talking about...', 'short_answer', NULL, 'Ourselves and others'),
(10, 2, '\"They\" is used when talking about...', 'short_answer', NULL, 'Ourselves and others'),
(11, 3, '\"He ____ a new car.\"', 'multiple_choice', '[{\"option\": \"Have\"}, {\"option\": \"Had\"}, {\"option\": \"Has\"}]', 'Has'),
(12, 3, '\"They ____ many books.\"', 'multiple_choice', '[{\"option\": \"Had\"}, {\"option\": \"Have\"}, {\"option\": \"Has\"}]', 'Have'),
(13, 3, '\"She ____ a pet cat.\"', 'multiple_choice', '[{\"option\": \"Have\"}, {\"option\": \"Has\"}, {\"option\": \"Had\"}]', 'Has'),
(14, 3, '\"I ____ a pencil.\"', 'short_answer', NULL, 'Have'),
(15, 3, '\"We ____ a big house.\"', 'short_answer', NULL, 'Have'),
(16, 4, '\"I ____ swim.\"', 'multiple_choice', '[{\"option\": \"Can\"}, {\"option\": \"Will\"}, {\"option\": \"Could\"}]', 'Can'),
(17, 4, '\"He ____ play the guitar.\"', 'multiple_choice', '[{\"option\": \"Can\"}, {\"option\": \"Will\"}, {\"option\": \"Could\"}]', 'Can'),
(18, 4, '\"They ____ speak English.\"', 'multiple_choice', '[{\"option\": \"Can\"}, {\"option\": \"Will\"}, {\"option\": \"Could\"}]', 'Can'),
(19, 4, '\"We ____ go to the party.\"', 'short_answer', NULL, 'Can'),
(20, 4, '\"She ____ ride a bike.\"', 'short_answer', NULL, 'Can'),
(21, 5, 'The cat is ____ the table.', 'multiple_choice', '[{\"option\": \"In\"}, {\"option\": \"On\"}, {\"option\": \"Under\"}]', 'On'),
(22, 5, 'The book is ____ the bag.', 'multiple_choice', '[{\"option\": \"On\"}, {\"option\": \"In\"}, {\"option\": \"Under\"}]', 'In'),
(23, 5, 'The dog is ____ the car.', 'multiple_choice', '[{\"option\": \"Next to\"}, {\"option\": \"On\"}, {\"option\": \"In\"}]', 'Next to'),
(24, 5, 'The keys are ____ the chair.', 'short_answer', NULL, 'Under'),
(25, 5, 'The picture is ____ the wall.', 'short_answer', NULL, 'On'),
(26, 6, '\"These\" is used for things...', 'multiple_choice', '[{\"option\": \"Far from the speaker\"}, {\"option\": \"Close to the speaker\"}, {\"option\": \"Close to the listener\"}]', 'Close to the speaker'),
(27, 6, '\"Those\" is used for things...', 'multiple_choice', '[{\"option\": \"Close to the listener\"}, {\"option\": \"Far from the speaker\"}, {\"option\": \"Close to the speaker\"}]', 'Far from the speaker'),
(28, 6, 'Choose the correct sentence: \"__ are my books.\"', 'multiple_choice', '[{\"option\": \"These\"}, {\"option\": \"That\"}, {\"option\": \"Those\"}]', 'These'),
(29, 6, 'Choose the correct sentence: \"__ are your shoes.\"', 'short_answer', NULL, 'Those'),
(30, 6, '\"These\" refers to things...', 'short_answer', NULL, 'Close to the speaker'),
(31, 7, 'Which one is a form of transportation?', 'multiple_choice', '[{\"option\": \"Car\"}, {\"option\": \"Tree\"}, {\"option\": \"Bus\"}]', 'Car'),
(32, 7, 'Which one flies in the sky?', 'multiple_choice', '[{\"option\": \"Bus\"}, {\"option\": \"Airplane\"}, {\"option\": \"Car\"}]', 'Airplane'),
(33, 7, 'Which one runs on tracks?', 'multiple_choice', '[{\"option\": \"Boat\"}, {\"option\": \"Train\"}, {\"option\": \"Car\"}]', 'Train'),
(34, 7, 'Which one is used on water?', 'short_answer', NULL, 'Boat'),
(35, 7, 'Which one has two wheels?', 'short_answer', NULL, 'Bicycle'),
(36, 8, 'What is the weather like when the sun is shining?', 'multiple_choice', '[{\"option\": \"Rainy\"}, {\"option\": \"Sunny\"}, {\"option\": \"Cloudy\"}]', 'Sunny'),
(37, 8, 'What is the weather like when water falls from the sky?', 'multiple_choice', '[{\"option\": \"Cloudy\"}, {\"option\": \"Snowy\"}, {\"option\": \"Rainy\"}]', 'Rainy'),
(38, 8, 'What is the weather like when there are many clouds?', 'multiple_choice', '[{\"option\": \"Sunny\"}, {\"option\": \"Cloudy\"}, {\"option\": \"Snowy\"}]', 'Cloudy'),
(39, 8, 'What is the weather like when there is strong wind?', 'short_answer', NULL, 'Windy'),
(40, 8, 'What is the weather like when snow falls?', 'short_answer', NULL, 'Snowy'),
(41, 9, '\"This is ____ book.\" (milik saya)', 'multiple_choice', '[{\"option\": \"My\"}, {\"option\": \"Your\"}, {\"option\": \"His\"}]', 'My'),
(42, 9, '\"That is ____ dog.\" (milikmu)', 'multiple_choice', '[{\"option\": \"My\"}, {\"option\": \"Your\"}, {\"option\": \"His\"}]', 'Your'),
(43, 9, '\"She loves ____ cat.\" (miliknya perempuan)', 'multiple_choice', '[{\"option\": \"His\"}, {\"option\": \"Her\"}, {\"option\": \"Its\"}]', 'Her'),
(44, 9, '\"We enjoy ____ time.\" (milik kami/kita)', 'short_answer', NULL, 'Our'),
(45, 9, '\"They are with ____ parents.\" (milik mereka)', 'short_answer', NULL, 'Their'),
(46, 10, 'Which word is an adjective?', 'multiple_choice', '[{\"option\": \"Beautiful\"}, {\"option\": \"And\"}, {\"option\": \"But\"}]', 'Beautiful'),
(47, 10, 'Which word is a conjunction?', 'multiple_choice', '[{\"option\": \"Happy\"}, {\"option\": \"Or\"}, {\"option\": \"But\"}]', 'Or'),
(48, 10, 'Choose the correct sentence: \"The cat is small ____ cute.\"', 'multiple_choice', '[{\"option\": \"And\"}, {\"option\": \"But\"}, {\"option\": \"Or\"}]', 'And'),
(49, 10, 'Choose the correct sentence: \"She is tall ____ not very strong.\"', 'short_answer', NULL, 'But'),
(50, 10, '\"Big\" and \"small\" are examples of...', 'short_answer', NULL, 'Adjectives'),
(51, 0, 'What is the first letter in the alphabet?', 'multiple_choice', '[{\"option\": \"A\"}, {\"option\": \"B\"}, {\"option\": \"C\"}]', 'A'),
(52, 0, 'Which word is a possessive adjective?', 'multiple_choice', '[{\"option\": \"Our\"}, {\"option\": \"Have\"}, {\"option\": \"Beautiful\"}]', 'Our'),
(53, 0, 'Which sentence is correct: \"__ are going to the park.\"', 'multiple_choice', '[{\"option\": \"We\"}, {\"option\": \"They\"}, {\"option\": \"He\"}]', 'We'),
(54, 0, 'What does \"can\'t\" mean?', 'multiple_choice', '[{\"option\": \"Able to\"}, {\"option\": \"Not able to\"}, {\"option\": \"Willing to\"}]', 'Not able to'),
(55, 0, 'Where is the cat in relation to the table?', 'multiple_choice', '[{\"option\": \"In\"}, {\"option\": \"On\"}, {\"option\": \"Under\"}]', 'On'),
(56, 0, 'What is the opposite of \"this\"?', 'short_answer', NULL, 'Those'),
(57, 0, 'Complete the sentence: \"She ____ a pet cat.\"', 'short_answer', NULL, 'Has'),
(58, 0, 'What do you call words that describe people, places, or things?', 'short_answer', NULL, 'Adjectives'),
(59, 0, 'Complete the sentence: \"They ____ speak English.\"', 'short_answer', NULL, 'Can'),
(60, 0, 'What is the weather like when it rains?', 'short_answer', NULL, 'Rainy');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `materi`
--
ALTER TABLE `materi`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `quiz`
--
ALTER TABLE `quiz`
  ADD PRIMARY KEY (`id`),
  ADD KEY `materi_id` (`materi_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `materi`
--
ALTER TABLE `materi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `quiz`
--
ALTER TABLE `quiz`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `quiz`
--
ALTER TABLE `quiz`
  ADD CONSTRAINT `quiz_ibfk_1` FOREIGN KEY (`materi_id`) REFERENCES `materi` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
