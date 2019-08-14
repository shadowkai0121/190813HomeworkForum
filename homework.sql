-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- 主機： 127.0.0.1
-- 產生時間： 
-- 伺服器版本： 10.3.16-MariaDB
-- PHP 版本： 7.3.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- 資料庫： `homework`
--
DROP DATABASE IF EXISTS homework;
CREATE DATABASE homework;
USE homework;

-- --------------------------------------------------------

--
-- 資料表結構 `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 傾印資料表的資料 `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_14_025127_create_posts_table', 1);

-- --------------------------------------------------------

--
-- 資料表結構 `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- 資料表結構 `posts`
--

CREATE TABLE `posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `userID` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 傾印資料表的資料 `posts`
--

INSERT INTO `posts` (`id`, `userID`, `title`, `content`, `created_at`, `updated_at`) VALUES
(1, '1', 'qqqqqqqqqqqqqqqqqqqq', 'qs1LqQQfIAo1y7dl43wqpjZvFrFiDkPgwAoyZEqg4cVotRhso03uAzqAbWunAESUWRyHPDXanjA7rSyymBny4bKegTp59hrTEBJpDrSmGs0AOUKi7Be48FizkcWExmfvdqq04sE8ymxSk30rA0FjGLrvBWeEPQeh07NfW4154NXEhBrVgoFzcBovKlWHbpPRdHxxQwNM', '2019-08-14 01:30:30', '2019-08-14 01:30:30'),
(2, '1', 'a8BCfEHPoX0fjfDSVDPl', 'brSZt7GmyVURF3uFVvdgBlPOYPW8r5ZxN4Z2dq9Eh8YnYwf51rH5vgW1VYNF7kU5CfLiq5tjZXuxbd2CIaDm7PSlGrIQ2oKvJClMNq9vi3O5wWlc1HN8H5nTRWqvzADYfw6yMZSJ9rSOcMbDhE34yBHjzjeSCKldJHkDUTKnoVOTgiKAwFxykDueeNiFufO3OxGN2mP7', NULL, '2019-08-14 03:31:30'),
(3, '1', 'DJLw2cPG51rhF0sOO2JF', 'eLf14Jm2pkcNXqygSWtsZpPMEnWm57vW19VmEhg4RLGZatMujji7j4QNZCBL7nHiuWUc1e9T6i0S5p02I8xls5pxAVZAzcA8HkujSY6zaPPMgWtR1Fb7Qs7EtXfxK10pguK9SPq1punZMuI05OmeiRO7PlgvPekZrASltS0TJUBdBjNslgmZxMqGZxHCyEUi8H9nBYTn', '2019-08-14 01:33:34', '2019-08-14 01:33:34'),
(4, '1', '5kn9rt38ujMPvkb8QCO1', 'T1NCPLU6Bl0l0nlyK0rsTRoTnYk2qqxdjzxkyBXXDMEOaQmta0bNWHkmzjai3hyYgCjYT4phvrQ1oOUSixj1fuhhdLRQKZJcKpO3oGN44Gv6OnhdsSfr88hme3TEQOk2EYVhO81iNVSgH6Ie2rSdJ4coHINiZ8agoTwzya7o70B8UpLCQ4jLeCCtOIRnAw4fWR1DBOBb', NULL, '2019-08-14 03:31:30'),
(5, '1', 'g0Hn5e8z7iB0OSBBsF2i', '2sYpAziTe2lWXN7gfFBiZdCdWogZ9YVORodqBNPajkjM4RsCFOy8XsJNskYtCR2ThPreNbnLM7kzzWou76WmEmksqhcUtp3jpHsW2NVbKigzlUjgluSjIQE5ifCrSZ9sNdydPpDH7AHLYxDDkkiDTCLuMGH1wyFmy0MsrR6TZAHd9lI6xwqVBDhz9oD0QxTacGKcbgWj', NULL, '2019-08-14 03:31:30'),
(6, '1', 'SgZAqAVZm1d6poBgT43P', 'dJjCv9odAUT5xTrivfTm2l6WZUoDQ5XObzEfhRKfOtnYtkF3CXoo58ulsSiCdjmQrP3BPC3s55DR68XYQCD4r4Fq2AXHpMlajGU95e2dnnkezMT2iezAgWwbQAX2VVwDx5bYCBGGz9mw608aj8qdEbVRn8jlxWXMKBgGRbYfLMGcX5NADCVtumqeXEqLtQgLaHkRGoH3', NULL, '2019-08-14 03:31:30'),
(7, '1', 'oDSuJrY6pzThXgOfbbp5', 'vYx7eKlz5sfBMfeh8UgWij1cxURJD50OGugbc57tBByCtU8wMdsV62h55K0r92NLCKJoFbre5EGpWjbmrCVm5mT71ewF3F7cdz8ZIhLxvvVtRHaD9HDC3HvzyOwyNQTQiYC9hesLV3c2QfT6iHhHtaFc11UutP4Ms6aXKVYF1ZKhfHJKqt1bTpHuuyB4gNwYs8xV1g7n', NULL, '2019-08-14 03:31:30'),
(8, '1', 'jZyYnnxesXuOxfNkvQUZ', 'MuU5rjGwpIMLluEx7VZcgfWmX5gOzmFaL2wj3imEg54ltIqPsT5XtBdLNc4I2bYPGc44PCBbSX89MXQniYd4ibaUPQ6SPotYHek0Xe6w5Pyd83NkrA6JF85XyzFKHkbw6byX3uLmE3y15vbjDlQxxV3XwbKaPXR2cXSV6adcJiphXy2ewfxsxgX5FJJX4rpnPv0RXyGC', NULL, '2019-08-14 03:31:30'),
(9, '1', '3Oji7it4iGStTRtt2YGI', '10zB3Mn56scYvnspP1eBPHLXMbBitxQxAbXaZa98oumoZitmEBXzQVnXu0XuzWTs2UR5jMOXZaZRJLjP6s4vzXkrZaGoRtfET6b6SdKB2ijwVNNDg3TYfVY8tAwYlDDrItzsIBRKy3abnOz1hjzWMop42EmHAIon0oCv4Y5JgqCygfiw05iiYXYY52EBEPbuRwsceYAC', NULL, '2019-08-14 03:31:30'),
(10, '1', 'dNzljSBIAuZLolIwBE7b', 'zDDzSjvYtew7u0DlTBh9IWgPIskK8SFrx8TetvM0YKIvo9l1aZiARYJA2Bel6DbqcA4iCRpSk0eXhy9MYqBcsVetLo9CpUQFUsAPXFab4btiEgET12N3tGi9ngK10KieUeot95s1GdS4gf0obnMaSy217tHdvkstNK5i1VZ3NttwOglw60U0QTxAuZE9VoBPvELQHAL7', NULL, '2019-08-14 03:31:30'),
(11, '1', 'skM1TbJBFJHupj45INig', 'rkd8VOo3YIxcZ4bhNycDH1GSB1vzH5YHnjXgNhbYnNorGv8e68IS7JbJLTwpSHOUAZj96LKuzbCIYTlb3i2W4WuNV2OwONG2mlXnpd51tAkXKRNkToptD6odPqhVshmNwtKkK8y3qNHFpsTjT5hxIg8vcp2CAB4C5VMG1gIB6BqdEGORuo0EvI7ysnUrnFDWaiGPRLCX', NULL, '2019-08-14 03:31:30'),
(12, '1', '7vFHueIKtjyfkVQ703Fb', 'w5UlrDTLq15Ox6DmTqh8U7N0Iqkn5yIstj4AWLZzbwV1Z0NTXispHchn736kn0Jj3UOawRUM4pFjtMF9BCUxkIAxOONt55oQa8IxzmXYLBHt2Z8RnyiFbZzKsarqjCtzX5OdvjiPg0IcOZ1M0awxWiCDJLML8KEBvKZGTVF9mJx4Q2ku0lcKsO22Q1lUy7YHLSI4kUkW', NULL, '2019-08-14 03:31:30'),
(13, '1', 'Efunpjw0HfpOczSLbaTc', 'hr5aizMloNbElT6hxMJ2CB2blVeSL8V3iN5fYaewyvTCZLNAwtAXWSGLUCdtmYDuZFVr90ik8YNCJ1gK3RHEq8yewCTfRsqoEhovbIh5PlQwTShQojN7DG8gjquqLxBXTuSkKRwJJYkcWlRdOG6i4ognRJFIJL9Fu7WMgRBh2IkqcR7gQ6oeShcTfOxNPNZLSC9fYIdS', NULL, '2019-08-14 03:31:30'),
(14, '1', 'GviOivu6sPNHJT0xtgDh', 'wlckBxXDvrbz0UnnoByrlke5kdmDN1ABaUMSDBkb96xxkl86C0wbw90mMCMi07JPwlGRBJgyuTFlsy95BdhiB0tGItxXQRxiB9bDUhRXbfaJWHe3Ra18BHXOkR5Cijdgf25LNHllQh2wyJirEHcQM9QFvCmbzdECEDzptP4VZNceiDOmJxkbzK78UaSMcZGOoyMDxhaC', NULL, '2019-08-14 03:31:30'),
(15, '1', 'IJGypILClQB6lN06Q0Jf', 'JLNNStrZAwLdu5ZKszIJG0p1FN4Q1vNmhySw3rQ1YUjBGMhYj02LrDMYy8b14aq5DC8LfN9CUdejahS82Q7Jk9JBjxmTCajAyIyr122WXNTkGAfg7x8qXxvGqcu9PnVge0x9slDuQIiPtxHAGAhyh4DxDmFuLNe3KBemX8oQJ3eGOah4ueuzAajVhlv7F2c6iRW1loU3', NULL, '2019-08-14 03:31:30'),
(16, '1', 'uKenuwGuZ7zmC5g0tqoK', 'C1KTglJVgR5rlQJjVHS4Lsy7dBv6biVDsmyCaVB3PQJbGKri8qJh98qQ866HoZlM30xhYXXcxd5K30rkAGLBjqYrX29hp6D7aR4hKTjojYGGJIA7U2AwwonGrAMTiGxA43lqkpv5IJ9PdfJtMW8azpnvhF1rfXXlXBWiKcyRINY6zYvaxhfijr46aZ2plgg6ZtOOyvIh', NULL, '2019-08-14 03:31:30'),
(17, '1', 'MLMH0vLt0JKn7vlbBUr3', '2jk5UorLza0mVx7K8NSRiMuBXNmPLvydztCYIQ1O7xup9gvtyyEmpZew4nPfZBDM1blMyBuGRdG3mSV1sd3B5Y5P9Q1bd1q1Jh0lyO56EHMd7Xl0JgEmpsZPwmynuQURswaVHVXwa4818wQ6Vh6kexy1LUDNv1MvkBa3r7tp9uu5uehwoKFwm9GaafsU8U2wpGZbNvrp', NULL, '2019-08-14 03:31:30'),
(18, '1', '4h7mTPKEpkfBs0kGdJmx', 'rCy0tBQH3dJgPP3XXr995UeJU3g9YQeR9CJgVuNoZaRuZzKXjbD7HxDKNxqZA7vZzKjNFhAekEGJTX5Og4TARmkGDiYgQ6ysgugtD2i9ENRiN17UnVLPhYmCVYvoEe4D75I1ROexX7tBTL0JzFiMwTKFfkxSarcC783OPXtFGJfC94SqcqWf9ARuxfZdCL6xjOtUWzcE', '2019-08-14 01:30:07', '2019-08-14 01:30:07'),
(19, '1', 'MJivP6EjERXdEwqqNGHf', 'zAXLPo34PvON9d3kUISq0m55wsLTdg7F3tZc4FutvKdn3OpEQC0x3JopWo2jBRu6FGBOiH7HQdB4KUUzkAQFkqxh1CcAtKCvHF5kSIsIMTboWPjuccVOIU72yuY4kDrrYTAO9oLEwwxfuaF0gGTCLqjuvvKAu5j07JiPzxlMTVYlWoDuAqGoSi8NKLS98OU4pCFUDkL2', NULL, '2019-08-14 03:31:30'),
(20, '1', 'Gxd6cx5VSV4zhjcnzgpa', 'Ur68ot6xogdASLwSL968H1C6J2HM7DbuhkJ85tWXEwj9Cw1JxRJploKDo6Sos5QGKHseUTXKWVaxM77yWlRwByBMTpWB43gVZF9rEo313u0ms6wVY6GeuERkIJ2PAJRrWohmDgkccFaDWRXbmWOFuaFsduOaj9DoEu9qUCs1AaT6noODPazdSbomCzzSahbw2Vh5GiCm', NULL, '2019-08-14 03:31:30'),
(21, '1', 'aaa', 'bbb', '2019-08-13 23:04:56', '2019-08-13 23:04:56'),
(22, '1', 'bbbbbbbbb', 'bbb', '2019-08-14 07:07:29', '2019-08-14 01:08:14'),
(23, '1', 'eeeee', 'aaaa', '2019-08-14 01:30:38', '2019-08-14 01:30:38'),
(24, '1', 'aaa', 'aa', '2019-08-14 01:33:54', '2019-08-14 01:33:54');

-- --------------------------------------------------------

--
-- 資料表結構 `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 傾印資料表的資料 `users`
--

INSERT INTO `users` (`id`, `name`, `password`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'admin', NULL, NULL);

--
-- 已傾印資料表的索引
--

--
-- 資料表索引 `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- 資料表索引 `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- 資料表索引 `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- 資料表索引 `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- 在傾印的資料表使用自動遞增(AUTO_INCREMENT)
--

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
