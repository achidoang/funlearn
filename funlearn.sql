-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 25, 2024 at 02:41 PM
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
  `question` text NOT NULL,
  `option1` varchar(255) NOT NULL,
  `option2` varchar(255) NOT NULL,
  `option3` varchar(255) NOT NULL,
  `answer` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `quiz`
--

INSERT INTO `quiz` (`id`, `materi_id`, `question`, `option1`, `option2`, `option3`, `answer`) VALUES
(1, 1, 'What is the first letter in the alphabet?', 'A', 'B', 'C', 'A'),
(2, 1, 'Which letter comes after G in the alphabet?', 'H', 'I', 'J', 'H'),
(3, 1, 'What is the last letter in the alphabet?', 'X', 'Y', 'Z', 'Z'),
(4, 1, 'Which letter is before K in the alphabet?', 'I', 'J', 'L', 'J'),
(5, 1, 'Which letter comes after N in the alphabet?', 'O', 'P', 'Q', 'O'),
(6, 2, '\"We\" is used to refer to...', 'Them', 'Us', 'Her', 'Us'),
(7, 2, '\"They\" is used to refer to...', 'Them', 'Us', 'Her', 'Them'),
(8, 2, 'Choose the correct sentence: \"__ are going to the park.\"', 'We', 'They', 'He', 'We'),
(9, 2, '\"We\" is used when talking about...', 'Ourselves and others', 'Things', 'Other people', 'Ourselves and others'),
(10, 2, '\"They\" is used when talking about...', 'Ourselves and others', 'Things', 'Other people', 'Ourselves and others'),
(11, 3, '\"He ____ a new car.\"', 'Have', 'Had', 'Has', 'Has'),
(12, 3, '\"They ____ many books.\"', 'Had', 'Have', 'Has', 'Have'),
(13, 3, '\"She ____ a pet cat.\"', 'Have', 'Has', 'Had', 'Has'),
(14, 3, '\"I ____ a pencil.\"', 'Have', 'Had', 'Has', 'Have'),
(15, 3, '\"We ____ a big house.\"', 'Have', 'Had', 'Has', 'Have'),
(16, 4, '\"I ____ swim.\"', 'Can', 'Will', 'Could', 'Can'),
(17, 4, '\"He ____ play the guitar.\"', 'Can', 'Will', 'Could', 'Can'),
(18, 4, '\"They ____ speak English.\"', 'Can', 'Will', 'Could', 'Can'),
(19, 4, '\"We ____ go to the party.\"', 'Can', 'Will', 'Could', 'Can'),
(20, 4, '\"She ____ ride a bike.\"', 'Can', 'Will', 'Could', 'Can'),
(21, 5, 'The cat is ____ the table.', 'In', 'On', 'Under', 'On'),
(22, 5, 'The book is ____ the bag.', 'On', 'In', 'Under', 'In'),
(23, 5, 'The dog is ____ the car.', 'Next to', 'On', 'In', 'Next to'),
(24, 5, 'The keys are ____ the chair.', 'On', 'Under', 'In', 'Under'),
(25, 5, 'The picture is ____ the wall.', 'On', 'In', 'Under', 'On'),
(26, 6, '\"These\" is used for things...', 'Far from the speaker', 'Close to the speaker', 'Close to the listener', 'Close to the speaker'),
(27, 6, '\"Those\" is used for things...', 'Close to the listener', 'Far from the speaker', 'Close to the speaker', 'Far from the speaker'),
(28, 6, 'Choose the correct sentence: \"__ are my books.\"', 'These', 'That', 'Those', 'These'),
(29, 6, 'Choose the correct sentence: \"__ are your shoes.\"', 'These', 'Those', 'This', 'Those'),
(30, 6, '\"These\" refers to things...', 'Far from the speaker', 'Close to the speaker', 'Close to the listener', 'Close to the speaker'),
(31, 7, 'Which one is a form of transportation?', 'Car', 'Tree', 'Bus', 'Car'),
(32, 7, 'Which one flies in the sky?', 'Bus', 'Airplane', 'Car', 'Airplane'),
(33, 7, 'Which one runs on tracks?', 'Boat', 'Train', 'Car', 'Train'),
(34, 7, 'Which one is used on water?', 'Car', 'Bus', 'Boat', 'Boat'),
(35, 7, 'Which one has two wheels?', 'Bus', 'Bicycle', 'Car', 'Bicycle'),
(36, 8, 'What is the weather like when the sun is shining?', 'Rainy', 'Sunny', 'Cloudy', 'Sunny'),
(37, 8, 'What is the weather like when water falls from the sky?', 'Cloudy', 'Snowy', 'Rainy', 'Rainy'),
(38, 8, 'What is the weather like when there are many clouds?', 'Sunny', 'Cloudy', 'Snowy', 'Cloudy'),
(39, 8, 'What is the weather like when there is strong wind?', 'Windy', 'Rainy', 'Cloudy', 'Windy'),
(40, 8, 'What is the weather like when snow falls?', 'Sunny', 'Cloudy', 'Snowy', 'Snowy'),
(41, 9, '\"This is ____ book.\" (milik saya)', 'My', 'Your', 'His', 'My'),
(42, 9, '\"That is ____ dog.\" (milikmu)', 'My', 'Your', 'His', 'Your'),
(43, 9, '\"She loves ____ cat.\" (miliknya perempuan)', 'His', 'Her', 'Its', 'Her'),
(44, 9, '\"We enjoy ____ time.\" (milik kami/kita)', 'Their', 'Our', 'His', 'Our'),
(45, 9, '\"They are with ____ parents.\" (milik mereka)', 'Their', 'Our', 'His', 'Their'),
(46, 10, 'Which word is an adjective?', 'Beautiful', 'And', 'But', 'Beautiful'),
(47, 10, 'Which word is a conjunction?', 'Happy', 'Or', 'But', 'Or'),
(48, 10, 'Choose the correct sentence: \"The cat is small ____ cute.\"', 'And', 'But', 'Or', 'And'),
(49, 10, 'Choose the correct sentence: \"She is tall ____ not very strong.\"', 'Or', 'But', 'Because', 'But'),
(50, 10, '\"Big\" and \"small\" are examples of...', 'Adjectives', 'Conjunctions', 'Nouns', 'Adjectives'),
(71, 0, 'Which letter comes after P in the alphabet?', 'Q', 'R', 'S', 'Q'),
(72, 0, 'Choose the correct sentence: \"__ are going to the store.\"', 'They', 'We', 'She', 'They'),
(73, 0, '\"She ____ three brothers.\"', 'Have', 'Has', 'Had', 'Has'),
(74, 0, 'What is the opposite of \"can\"?', 'May', 'Will', 'Cannot', 'Cannot'),
(75, 0, 'The cat is ____ the table.', 'In', 'On', 'Under', 'On'),
(76, 0, 'Choose the correct sentence: \"__ are my shoes.\"', 'Those', 'This', 'These', 'These'),
(77, 0, 'Which one is used for traveling on water?', 'Car', 'Train', 'Boat', 'Boat'),
(78, 0, 'What is the weather like when it is not raining and the sun is shining brightly?', 'Sunny', 'Rainy', 'Cloudy', 'Sunny'),
(79, 0, '\"Their\" is used to show...', 'My possession', 'Our possession', 'Their possession', 'Their possession'),
(80, 0, 'Which word is a conjunction?', 'Beautiful', 'And', 'Fast', 'And');

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=81;

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
