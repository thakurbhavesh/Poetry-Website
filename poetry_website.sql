-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 15, 2024 at 01:03 PM
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
-- Database: `poetry_website`
--

-- --------------------------------------------------------

--
-- Table structure for table `poetry`
--

CREATE TABLE `poetry` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `author` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `poetry`
--

INSERT INTO `poetry` (`id`, `title`, `content`, `author`, `created_at`) VALUES
(2, 'कभी किसी को मुकम्मल जहाँ नहीं मिलता', '<p>कभी किसी को मुकम्मल जहाँ नहीं मिलता<br />\r\nकहीं ज़मीन कहीं आसमाँ नहीं मिलता</p>\r\n\r\n<p>तमाम शहर में ऐसा नहीं ख़ुलूस न हो<br />\r\nजहाँ उमीद हो इस की वहाँ नहीं मिलता</p>\r\n\r\n<p>कहाँ चराग़ जलाएँ कहाँ गुलाब रखें<br />\r\nछतें तो मिलती हैं लेकिन मकाँ नहीं मिलता</p>\r\n\r\n<p>ये क्या अज़ाब है सब अपने आप में गुम हैं<br />\r\nज़बाँ मिली है मगर हम-ज़बाँ नहीं मिलता<br />\r\n&nbsp;</p>\r\n', 'thakurbhavesh', '2024-09-07 17:10:04'),
(3, 'नया इक रिश्ता पैदा क्यूँ करें हम', '<p>नया इक रिश्ता पैदा क्यूँ करें हम<br />\r\nबिछड़ना है तो झगड़ा क्यूँ करें हम</p>\r\n\r\n<p>ख़मोशी से अदा हो रस्म-ए-दूरी<br />\r\nकोई हंगामा बरपा क्यूँ करें हम</p>\r\n\r\n<p>ये काफ़ी है कि हम दुश्मन नहीं हैं<br />\r\nवफ़ा-दारी का दावा क्यूँ करें हम<br />\r\n&nbsp;</p>\r\n', 'भावेश सिंह', '2024-09-07 17:11:48'),
(4, 'उम्र गुज़रेगी इम्तिहान में क्या', '<p>दिल कि आते हैं जिस को ध्यान बहुत<br />\r\nख़ुद भी आता है अपने ध्यान में क्या</p>\r\n\r\n<p>वो मिले तो ये पूछना है मुझे<br />\r\nअब भी हूँ मैं तिरी अमान में क्या</p>\r\n\r\n<p>यूँ जो तकता है आसमान को तू<br />\r\nकोई रहता है आसमान में क्या<br />\r\n&nbsp;</p>\r\n', 'भावेश सिंह', '2024-09-15 10:12:46'),
(5, 'ये मुझे चैन क्यूँ नहीं पड़ता', '<p>ये मुझे चैन क्यूँ नहीं पड़ता</p>\r\n\r\n<p>एक ही शख़्स था जहान में क्या</p>\r\n', 'thakurbhavesh', '2024-09-15 10:31:58');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL DEFAULT 'User',
  `bio` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `password`, `type`, `bio`, `created_at`) VALUES
(1, 'thakurbhavesh', 'designerweb211@gmail.com', '$2y$10$83Uga16uwDdXVzcxkwvyYOyh3nVj3TvDHNCT0.mZw346H8WFCZRE6', 'User', '<p>&ldquo;निदा के चिंतन का ये करिश्मा है कि वो एक ही मिसरे में विभिन्न इंद्रियों से उधार इतने सारे शे&rsquo;री पैकर जमा कर लेते हैं कि हमारी सारी इंद्रियां जाग उठती हैं। मिसरा वो बिजली का तार बन जाता है जिसकी विद्युत तरंगें हम अपनी रगों में दौड़ती महसूस करते हैं। ये असर और प्रभाव नहीं तो शायरी राख का ढेर है।&rdquo;&nbsp; वारिस अलवी<br />\r\n<br />\r\nनिदा फ़ाज़ली उर्दू और हिन्दी के एक ऐसे अदीब, शायर, गीतकार, संवाद लेखक और पत्रकार थे जिन्होंने उर्दू शायरी को एक ऐसा लब-ओ-लहजा और शैली दी जिसको उर्दू अदब के अभिजात्य वर्ग ने उनसे पहले सहानुभूति योग्य नहीं समझा था। उनकी शायरी में उर्दू का एक नया शे&rsquo;री मुहावरा वजूद में आया जिसने नई पीढ़ी को आकर्षित और प्रभावितर किया। उनकी अभिव्यक्ति में संतों की बानी जैसी सादगी, एक क़लंदराना शान और लोक गीतों जैसी मिठास है। उनके संबोधित आम लोग थे, लिहाज़ा उन्होंने उनकी ही ज़बान में गुफ़्तगु करते हुए कोमल और ग़ैर आक्रामक तंज़ के ज़रीये दिल में उतर जाने वाली बातें कीं। उन्होंने अमीर ख़ुसरो, मीर, रहीम और नज़ीर अकबराबादी की भूली-बिसरी काव्य परंपरा से दुबारा रिश्ता जोड़ने की कोशिश करते हुए न केवल उस रिवायत की पुनःप्राप्ति की बल्कि उसमें वर्तमान काल की भाषाई प्रतिभा जोड़ कर उर्दू के गद्य साहित्य में भी नए संभावनाओं की पहचान की। वो मूल रूप से शायर हैं लेकिन उनकी गद्य शैली ने भी अपनी अलग राह बना ली। बक़ौल वारिस अलवी निदा उन चंद ख़ुशक़िस्मत लोगों में हैं जिनकी शायरी और नस्र दोनों लोगों को रिझा गए। अपनी शायरी के बारे में निदा का कहना था, &ldquo;मेरी शायरी न सिर्फ अदब और उसके पाठकों के रिश्ते को ज़रूरी मानती है बल्कि उसके सामाजिक सरोकार को अपना मयार भी बनाती है। मेरी शायरी बंद कमरों से बाहर निकल कर चलती फिरती ज़िंदगी का साथ निभाती है। उन हलक़ों में जाने से भी नहीं हिचकिचाती जहां रोशनी भी मुश्किल से पहुंच पाती है। मैं अपनी ज़बान तलाश करने सड़कों पर, गलियों में, जहाँ शरीफ़ लोग जाने से कतराते हैं, वहां जा कर अपनी ज़बान लेता हूँ। जैसे मीर, कबीर और रहीम की ज़बानें। मेरी ज़बान न चेहरे पर दाढ़ी बढ़ाती है और न पेशानी पर तिलक लगाती है।&rdquo; निदा की शायरी हमेशा सैद्धांतिक हट धर्मी और दावेदारी से पाक रही। उन्होंने प्रतीकों के द्वारा ऐसी आकृति गढ़ी कि श्रोता या पाठक को उसे समझने के लिए कोई ज़ेहनी वरज़िश नहीं करनी पड़ती। उनके काव्य पात्र ऊधम मचाते हुए शरीर बच्चे, अपने रास्ते पर गुज़रती हुई कोई साँवली सी लड़की, रोता हुआ कोई बच्चा, घर में काम करने वाली बाई जैसे लोग हैं। निदा के यहां माँ का किरदार बहुत अहम है जिसे वो कभी नहीं भूल पाते... &ldquo;बेसिन की सोंधी रोटी पर खट्टी चटनी जैसी माँ/ याद आती है चौका बासन, चिमटा, फुंकनी जैसी माँ।&rdquo;</p>\r\n', '2024-09-15 09:17:56'),
(3, 'भावेश सिंह', 'singhbhaves682@gmail.com', '$2y$10$hhoQ9zNZJfb1XCFRUp7Sp.XZAkRrVhM4z1gSwflwyKcGx5CNMT3V6', 'User', '<p>जॉन एलिया उर्दू के एक महान शायर हैं। इनका जन्म 14 दिसंबर 1931 को अमरोहा में हुआ। यह अब के शायरों में सबसे ज्यादा पढ़े जाने वाले शायरों में शुमार हैं। शायद, यानी, गुमान इनके प्रमुख संग्रह हैं इनकी मृत्यु 8 नवंबर 2002 में हुई। जौन सिर्फ पाकिस्तान में ही नहीं हिंदुस्तान व पूरे विश्व में अदब के साथ पढ़े और जाने जाते हैं</p>\r\n', '2024-09-15 10:03:39');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `poetry`
--
ALTER TABLE `poetry`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `poetry`
--
ALTER TABLE `poetry`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
