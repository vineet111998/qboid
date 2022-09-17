-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 17, 2022 at 11:23 AM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 7.4.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `qboid_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `mst_games`
--

CREATE TABLE `mst_games` (
  `mg_id` int(11) NOT NULL,
  `mg_name` text NOT NULL,
  `mg_url` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `mst_games`
--

INSERT INTO `mst_games` (`mg_id`, `mg_name`, `mg_url`) VALUES
(1, 'We-dyuta', ''),
(2, 'Reflections', ''),
(3, 'Make shift/clou', ''),
(4, 'DODGEM', ''),
(5, 'Hexapawn', ''),
(6, 'Dice tic tak toe', ''),
(7, 'Cut/we-dyuta', ''),
(8, 'CONSTRUCTO', ''),
(9, 'CHAOS', ''),
(10, 'Achi/ Three men morris', ''),
(11, '3 Spot game', ''),
(12, 'Nine Holes', ''),
(13, 'Mu Torere', '');

-- --------------------------------------------------------

--
-- Table structure for table `mst_game_data`
--

CREATE TABLE `mst_game_data` (
  `mgd_id` int(11) NOT NULL,
  `mgd_mg_id` int(11) NOT NULL,
  `mgd_url` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `mst_game_data`
--

INSERT INTO `mst_game_data` (`mgd_id`, `mgd_mg_id`, `mgd_url`) VALUES
(1, 1, 'https://ik.imagekit.io/singh/qboid/we-dyuta/we-dyuta_rules_of_play_CPnkuZ6Gi.jpg?ik-sdk-version=javascript-1.4.3&updatedAt=1663400883080'),
(2, 1, 'https://ik.imagekit.io/singh/qboid/we-dyuta/we-dyuta_rules_of_play__1___FX3_Xo7B.jpg?ik-sdk-version=javascript-1.4.3&updatedAt=1663400883151'),
(3, 1, 'https://ik.imagekit.io/singh/qboid/we-dyuta/we-dyuta_rules_of_play__2__MvcpQsHKB.jpg?ik-sdk-version=javascript-1.4.3&updatedAt=1663400883282'),
(4, 1, 'https://ik.imagekit.io/singh/qboid/we-dyuta/we-dyuta_rules_of_play__3__oPOS4z2qP.jpg?ik-sdk-version=javascript-1.4.3&updatedAt=1663400883490'),
(5, 1, 'https://ik.imagekit.io/singh/qboid/we-dyuta/we-dyuta_rules_of_play__4__zoOM_Tyyw.jpg?ik-sdk-version=javascript-1.4.3&updatedAt=1663400883526'),
(6, 1, 'https://ik.imagekit.io/singh/qboid/we-dyuta/we-dyuta_rules_of_play__5__IqcjiHPMXr.jpg?ik-sdk-version=javascript-1.4.3&updatedAt=1663400883339'),
(19, 2, 'https://ik.imagekit.io/singh/qboid/reflections/reflections_-_how_to_play_8g-hSiMLXK.jpg?ik-sdk-version=javascript-1.4.3&updatedAt=1663402087149'),
(20, 2, 'https://ik.imagekit.io/singh/qboid/reflections/reflections_-_how_to_play__1__HoWVH2-R59.jpg?ik-sdk-version=javascript-1.4.3&updatedAt=1663402086262'),
(21, 2, 'https://ik.imagekit.io/singh/qboid/reflections/reflections_-_how_to_play__2__gmBx_LhbpT.jpg?ik-sdk-version=javascript-1.4.3&updatedAt=1663402086453'),
(22, 2, 'https://ik.imagekit.io/singh/qboid/reflections/reflections_-_how_to_play__3__NJ18NX3OZV.jpg?ik-sdk-version=javascript-1.4.3&updatedAt=1663402087152'),
(23, 2, 'https://ik.imagekit.io/singh/qboid/reflections/reflections_-_how_to_play__4__6I4mX4w_I.jpg?ik-sdk-version=javascript-1.4.3&updatedAt=1663402086869'),
(24, 2, 'https://ik.imagekit.io/singh/qboid/reflections/reflections_-_how_to_play__5__Xc8eZZ9DDW.jpg?ik-sdk-version=javascript-1.4.3&updatedAt=1663402086932'),
(25, 2, 'https://ik.imagekit.io/singh/qboid/reflections/reflections_-_how_to_play__6__PaF-wNybLw.jpg?ik-sdk-version=javascript-1.4.3&updatedAt=1663402087178'),
(26, 2, 'https://ik.imagekit.io/singh/qboid/reflections/reflections_-_how_to_play__7__VEI7C3M3w.jpg?ik-sdk-version=javascript-1.4.3&updatedAt=1663402087259'),
(27, 2, 'https://ik.imagekit.io/singh/qboid/reflections/reflections_-_how_to_play__8__P4Jd_7vKKe.jpg?ik-sdk-version=javascript-1.4.3&updatedAt=1663402087159'),
(28, 3, 'https://ik.imagekit.io/singh/qboid/make_shiftclou/make_shift_clou__rules_of_play_c_UohnpDkp.jpg?ik-sdk-version=javascript-1.4.3&updatedAt=1663402082570'),
(29, 3, 'https://ik.imagekit.io/singh/qboid/make_shiftclou/make_shift_clou__rules_of_play__1__BXqw5d57Fr.jpg?ik-sdk-version=javascript-1.4.3&updatedAt=1663402081633'),
(30, 3, 'https://ik.imagekit.io/singh/qboid/make_shiftclou/make_shift_clou__rules_of_play__2___ns3HuzCc4.jpg?ik-sdk-version=javascript-1.4.3&updatedAt=1663402081276'),
(31, 3, 'https://ik.imagekit.io/singh/qboid/make_shiftclou/make_shift_clou__rules_of_play__3__6tGiGFUxY.jpg?ik-sdk-version=javascript-1.4.3&updatedAt=1663402081339'),
(32, 3, 'https://ik.imagekit.io/singh/qboid/make_shiftclou/make_shift_clou__rules_of_play__4__4UmSgiC7E.jpg?ik-sdk-version=javascript-1.4.3&updatedAt=1663402081937'),
(33, 3, 'https://ik.imagekit.io/singh/qboid/make_shiftclou/make_shift_clou__rules_of_play__5__LQb20BqYJ.jpg?ik-sdk-version=javascript-1.4.3&updatedAt=1663402081813'),
(34, 3, 'https://ik.imagekit.io/singh/qboid/make_shiftclou/make_shift_clou__rules_of_play__6__5fL9koEu4V.jpg?ik-sdk-version=javascript-1.4.3&updatedAt=1663402081668'),
(35, 4, 'https://ik.imagekit.io/singh/qboid/DODGEM/DODGEM-_how_to_play_f4puAwBeFJ.jpg?ik-sdk-version=javascript-1.4.3&updatedAt=1663402078972'),
(36, 4, 'https://ik.imagekit.io/singh/qboid/DODGEM/DODGEM-_how_to_play__1__YeRd_Jmji.jpg?ik-sdk-version=javascript-1.4.3&updatedAt=1663402078229'),
(37, 4, 'https://ik.imagekit.io/singh/qboid/DODGEM/DODGEM-_how_to_play__2__1vlZCx7qQ.jpg?ik-sdk-version=javascript-1.4.3&updatedAt=1663402078314'),
(38, 4, 'https://ik.imagekit.io/singh/qboid/DODGEM/DODGEM-_how_to_play__3__eidIRxK5HT.jpg?ik-sdk-version=javascript-1.4.3&updatedAt=1663402078417'),
(39, 4, 'https://ik.imagekit.io/singh/qboid/DODGEM/DODGEM-_how_to_play__4__laVuXBtUl.jpg?ik-sdk-version=javascript-1.4.3&updatedAt=1663402078579'),
(40, 4, 'https://ik.imagekit.io/singh/qboid/DODGEM/DODGEM-_how_to_play__5__hWeUgJVWgb.jpg?ik-sdk-version=javascript-1.4.3&updatedAt=1663402078687'),
(41, 4, 'https://ik.imagekit.io/singh/qboid/DODGEM/DODGEM-_how_to_play__6__hE7b4Hh7w4.jpg?ik-sdk-version=javascript-1.4.3&updatedAt=1663402078797'),
(42, 4, 'https://ik.imagekit.io/singh/qboid/DODGEM/DODGEM-_how_to_play__7__tSrHqWvuB_.jpg?ik-sdk-version=javascript-1.4.3&updatedAt=1663402078994'),
(43, 5, 'https://ik.imagekit.io/singh/qboid/hexapawn/hexapawn-_rules_of_play_M4cMfCfKp.jpg?ik-sdk-version=javascript-1.4.3&updatedAt=1663402080920'),
(44, 5, 'https://ik.imagekit.io/singh/qboid/hexapawn/hexapawn-_rules_of_play__1__ziLScazIuF.jpg?ik-sdk-version=javascript-1.4.3&updatedAt=1663402079102'),
(45, 5, 'https://ik.imagekit.io/singh/qboid/hexapawn/hexapawn-_rules_of_play__2__q7densi5b.jpg?ik-sdk-version=javascript-1.4.3&updatedAt=1663402080063'),
(46, 5, 'https://ik.imagekit.io/singh/qboid/hexapawn/hexapawn-_rules_of_play__3__G-pxQvXQT.jpg?ik-sdk-version=javascript-1.4.3&updatedAt=1663402081233'),
(47, 5, 'https://ik.imagekit.io/singh/qboid/hexapawn/hexapawn-_rules_of_play__4__O8ZuIhQz6.jpg?ik-sdk-version=javascript-1.4.3&updatedAt=1663402080902'),
(48, 6, 'https://ik.imagekit.io/singh/qboid/dice_tic_tak_toe/dice_tic_tak_toe-rules_of_play_aXzvxuHx_E.jpg?ik-sdk-version=javascript-1.4.3&updatedAt=1663402077658'),
(49, 6, 'https://ik.imagekit.io/singh/qboid/dice_tic_tak_toe/dice_tic_tak_toe-rules_of_play__1__gq8TQmzaEh.jpg?ik-sdk-version=javascript-1.4.3&updatedAt=1663402076069'),
(50, 6, 'https://ik.imagekit.io/singh/qboid/dice_tic_tak_toe/dice_tic_tak_toe-rules_of_play__2__CCv_NQPZq.jpg?ik-sdk-version=javascript-1.4.3&updatedAt=1663402076392'),
(51, 6, 'https://ik.imagekit.io/singh/qboid/dice_tic_tak_toe/dice_tic_tak_toe-rules_of_play__3__SrnhwfsFY.jpg?ik-sdk-version=javascript-1.4.3&updatedAt=1663402076474'),
(52, 6, 'https://ik.imagekit.io/singh/qboid/dice_tic_tak_toe/dice_tic_tak_toe-rules_of_play__4__2FMzXyUXPi.jpg?ik-sdk-version=javascript-1.4.3&updatedAt=1663402076290'),
(53, 7, 'https://ik.imagekit.io/singh/qboid/Cutwe-dyuta/Cut_we-dyuta_rules_of_play_hw7xo2T8C.jpg?ik-sdk-version=javascript-1.4.3&updatedAt=1663402076003'),
(54, 7, 'https://ik.imagekit.io/singh/qboid/Cutwe-dyuta/Cut_we-dyuta_rules_of_play__1__bn8e8ABjM.jpg?ik-sdk-version=javascript-1.4.3&updatedAt=1663402075720'),
(55, 7, 'https://ik.imagekit.io/singh/qboid/Cutwe-dyuta/Cut_we-dyuta_rules_of_play__2__SLEVa1btHK.jpg?ik-sdk-version=javascript-1.4.3&updatedAt=1663402075858'),
(56, 7, 'https://ik.imagekit.io/singh/qboid/Cutwe-dyuta/Cut_we-dyuta_rules_of_play__3__0SIU1s0uvI.jpg?ik-sdk-version=javascript-1.4.3&updatedAt=1663402076301'),
(57, 7, 'https://ik.imagekit.io/singh/qboid/Cutwe-dyuta/Cut_we-dyuta_rules_of_play__4__6KlHFyRnF.jpg?ik-sdk-version=javascript-1.4.3&updatedAt=1663402076439'),
(58, 8, 'https://ik.imagekit.io/singh/qboid/CONSTRUCTO/CONSTRUCTO_rules_of_play_euyAOwuqR.jpg?ik-sdk-version=javascript-1.4.3&updatedAt=1663402075217'),
(59, 8, 'https://ik.imagekit.io/singh/qboid/CONSTRUCTO/CONSTRUCTO_rules_of_play__1__iBY8AokyJ.jpg?ik-sdk-version=javascript-1.4.3&updatedAt=1663402073312'),
(60, 8, 'https://ik.imagekit.io/singh/qboid/CONSTRUCTO/CONSTRUCTO_rules_of_play__2__fKlhUZolvp.jpg?ik-sdk-version=javascript-1.4.3&updatedAt=1663402073242'),
(61, 8, 'https://ik.imagekit.io/singh/qboid/CONSTRUCTO/CONSTRUCTO_rules_of_play__3__RADgLARiF.jpg?ik-sdk-version=javascript-1.4.3&updatedAt=1663402073401'),
(62, 8, 'https://ik.imagekit.io/singh/qboid/CONSTRUCTO/CONSTRUCTO_rules_of_play__4__zJ9Y0_8z_N.jpg?ik-sdk-version=javascript-1.4.3&updatedAt=1663402073285'),
(63, 9, 'https://ik.imagekit.io/singh/qboid/CHAOS/CHAOS__rules_of_play_SABnMqKCb.jpg?ik-sdk-version=javascript-1.4.3&updatedAt=1663402072903'),
(64, 9, 'https://ik.imagekit.io/singh/qboid/CHAOS/CHAOS__rules_of_play__1__EUWGW3EnA.jpg?ik-sdk-version=javascript-1.4.3&updatedAt=1663402073187'),
(65, 9, 'https://ik.imagekit.io/singh/qboid/CHAOS/CHAOS__rules_of_play__2__6bwq5aq4n-.jpg?ik-sdk-version=javascript-1.4.3&updatedAt=1663402073576'),
(66, 9, 'https://ik.imagekit.io/singh/qboid/CHAOS/CHAOS__rules_of_play__3__0DkiBLWj6O.jpg?ik-sdk-version=javascript-1.4.3&updatedAt=1663402073404'),
(67, 9, 'https://ik.imagekit.io/singh/qboid/CHAOS/CHAOS__rules_of_play__4__cKaygZDf8.jpg?ik-sdk-version=javascript-1.4.3&updatedAt=1663402073161'),
(68, 9, 'https://ik.imagekit.io/singh/qboid/CHAOS/CHAOS__rules_of_play__5__5Lp-ptPVvH.jpg?ik-sdk-version=javascript-1.4.3&updatedAt=1663402073616'),
(69, 10, 'https://ik.imagekit.io/singh/qboid/Achi_Three_men_morris/Achi__Three_men_morris-rules_of_play_lSTioClri.jpg?ik-sdk-version=javascript-1.4.3&updatedAt=1663401996018'),
(70, 10, 'https://ik.imagekit.io/singh/qboid/Achi_Three_men_morris/Achi__Three_men_morris-rules_of_play__1__GmEAo2bJWp.jpg?ik-sdk-version=javascript-1.4.3&updatedAt=1663401996361'),
(71, 10, 'https://ik.imagekit.io/singh/qboid/Achi_Three_men_morris/Achi__Three_men_morris-rules_of_play__2__PrKZpXj2R.jpg?ik-sdk-version=javascript-1.4.3&updatedAt=1663401996274'),
(72, 10, 'https://ik.imagekit.io/singh/qboid/Achi_Three_men_morris/Achi__Three_men_morris-rules_of_play__3__kMq_IJpIp.jpg?ik-sdk-version=javascript-1.4.3&updatedAt=1663401996283'),
(73, 11, 'https://ik.imagekit.io/singh/qboid/3_Spot_game/3_Spot_game__rules_of_play_Yw9dXi8HnV.jpg?ik-sdk-version=javascript-1.4.3&updatedAt=1663401996347'),
(74, 11, 'https://ik.imagekit.io/singh/qboid/3_Spot_game/3_Spot_game__rules_of_play__1__o-6UycgHu.jpg?ik-sdk-version=javascript-1.4.3&updatedAt=1663401996280'),
(75, 11, 'https://ik.imagekit.io/singh/qboid/3_Spot_game/3_Spot_game__rules_of_play__2__8lsNyjUezk.jpg?ik-sdk-version=javascript-1.4.3&updatedAt=1663401996457'),
(76, 11, 'https://ik.imagekit.io/singh/qboid/3_Spot_game/3_Spot_game__rules_of_play__3__yCLvJ_xKC.jpg?ik-sdk-version=javascript-1.4.3&updatedAt=1663401996188'),
(77, 11, 'https://ik.imagekit.io/singh/qboid/3_Spot_game/3_Spot_game__rules_of_play__4__0ExYA-jGZj.jpg?ik-sdk-version=javascript-1.4.3&updatedAt=1663401996249'),
(78, 11, 'https://ik.imagekit.io/singh/qboid/3_Spot_game/3_Spot_game__rules_of_play__5__qxEyg3JVU.jpg?ik-sdk-version=javascript-1.4.3&updatedAt=1663401996408'),
(79, 12, 'https://ik.imagekit.io/singh/qboid/Nine_Holes/Nine_Holes_rules_of_play_8TYoEgkOY.jpg?ik-sdk-version=javascript-1.4.3&updatedAt=1663402084876'),
(80, 12, 'https://ik.imagekit.io/singh/qboid/Nine_Holes/Nine_Holes_rules_of_play__1__oDIFGRePti.jpg?ik-sdk-version=javascript-1.4.3&updatedAt=1663402084180'),
(81, 12, 'https://ik.imagekit.io/singh/qboid/Nine_Holes/Nine_Holes_rules_of_play__2__qB1mg9w8_.jpg?ik-sdk-version=javascript-1.4.3&updatedAt=1663402084260'),
(82, 12, 'https://ik.imagekit.io/singh/qboid/Nine_Holes/Nine_Holes_rules_of_play__3__aMtDT7OfG.jpg?ik-sdk-version=javascript-1.4.3&updatedAt=1663402084415'),
(83, 13, 'https://ik.imagekit.io/singh/qboid/Mu_Torere/Mu_Torere_rules_of_play_ZRFx7cert8.jpg?ik-sdk-version=javascript-1.4.3&updatedAt=1663402084059'),
(84, 13, 'https://ik.imagekit.io/singh/qboid/Mu_Torere/Mu_Torere_rules_of_play__1__0xmI3Y0HS.jpg?ik-sdk-version=javascript-1.4.3&updatedAt=1663402083796'),
(85, 13, 'https://ik.imagekit.io/singh/qboid/Mu_Torere/Mu_Torere_rules_of_play__2__VCaIo1IRo9.jpg?ik-sdk-version=javascript-1.4.3&updatedAt=1663402083908'),
(86, 13, 'https://ik.imagekit.io/singh/qboid/Mu_Torere/Mu_Torere_rules_of_play__3__HJUR96MCM.jpg?ik-sdk-version=javascript-1.4.3&updatedAt=1663402083984'),
(87, 13, 'https://ik.imagekit.io/singh/qboid/Mu_Torere/Mu_Torere_rules_of_play__4__PpOoQx7wrA.jpg?ik-sdk-version=javascript-1.4.3&updatedAt=1663402084113'),
(88, 13, 'https://ik.imagekit.io/singh/qboid/Mu_Torere/Mu_Torere_rules_of_play__5__6ipkcLugxR.jpg?ik-sdk-version=javascript-1.4.3&updatedAt=1663402084061');

-- --------------------------------------------------------

--
-- Table structure for table `mst_product`
--

CREATE TABLE `mst_product` (
  `mp_id` int(11) NOT NULL,
  `mp_key` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `mst_product`
--

INSERT INTO `mst_product` (`mp_id`, `mp_key`) VALUES
(2, 'noid'),
(3, 'asdsa11'),
(4, 'asdsa112');

-- --------------------------------------------------------

--
-- Table structure for table `mst_user`
--

CREATE TABLE `mst_user` (
  `mu_id` int(11) NOT NULL,
  `mu_mp_id` int(11) NOT NULL,
  `mu_name` text NOT NULL,
  `mu_contact_no` text NOT NULL,
  `mu_email` text NOT NULL,
  `mu_emaiVerification` tinyint(4) NOT NULL DEFAULT 0 COMMENT '1=done,0=not done',
  `mu_reg_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `mst_user`
--

INSERT INTO `mst_user` (`mu_id`, `mu_mp_id`, `mu_name`, `mu_contact_no`, `mu_email`, `mu_emaiVerification`, `mu_reg_date`) VALUES
(1, 2, 'vineet', '9583817953', 'vineet@masspl.com', 0, '2022-09-16 12:58:48'),
(2, 2, 'Sumonto', '9903784184', 'sumonto@masspl.com', 0, '2022-09-16 14:25:44'),
(4, 2, 'Vineet', '9474001324', 'rjvkrs11@gmail.com', 1, '2022-09-16 14:52:53'),
(5, 2, 'Vineet', '9583817953', 'vineetsingh5271@gmail.com', 1, '2022-09-17 10:56:23');

-- --------------------------------------------------------

--
-- Table structure for table `mst_user_profile`
--

CREATE TABLE `mst_user_profile` (
  `mup_id` int(11) NOT NULL,
  `mup_mu_id` int(11) NOT NULL,
  `mup_q1` text NOT NULL COMMENT 'Are u a parent?',
  `mup_q2` text NOT NULL COMMENT 'Are you live in joint family?'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `mst_user_profile`
--

INSERT INTO `mst_user_profile` (`mup_id`, `mup_mu_id`, `mup_q1`, `mup_q2`) VALUES
(1, 1, 'no', 'yes'),
(2, 2, 'no', 'yes'),
(4, 4, 'no', 'yes'),
(5, 5, 'no', 'yes');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `mst_games`
--
ALTER TABLE `mst_games`
  ADD PRIMARY KEY (`mg_id`);

--
-- Indexes for table `mst_game_data`
--
ALTER TABLE `mst_game_data`
  ADD PRIMARY KEY (`mgd_id`),
  ADD KEY `mgd_mg_id` (`mgd_mg_id`);

--
-- Indexes for table `mst_product`
--
ALTER TABLE `mst_product`
  ADD PRIMARY KEY (`mp_id`);

--
-- Indexes for table `mst_user`
--
ALTER TABLE `mst_user`
  ADD PRIMARY KEY (`mu_id`),
  ADD KEY `mu_mp_id` (`mu_mp_id`);

--
-- Indexes for table `mst_user_profile`
--
ALTER TABLE `mst_user_profile`
  ADD PRIMARY KEY (`mup_id`),
  ADD KEY `mup_mu_id` (`mup_mu_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `mst_games`
--
ALTER TABLE `mst_games`
  MODIFY `mg_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `mst_game_data`
--
ALTER TABLE `mst_game_data`
  MODIFY `mgd_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=89;

--
-- AUTO_INCREMENT for table `mst_product`
--
ALTER TABLE `mst_product`
  MODIFY `mp_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `mst_user`
--
ALTER TABLE `mst_user`
  MODIFY `mu_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `mst_user_profile`
--
ALTER TABLE `mst_user_profile`
  MODIFY `mup_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `mst_game_data`
--
ALTER TABLE `mst_game_data`
  ADD CONSTRAINT `mst_game_data_ibfk_1` FOREIGN KEY (`mgd_mg_id`) REFERENCES `mst_games` (`mg_id`);

--
-- Constraints for table `mst_user`
--
ALTER TABLE `mst_user`
  ADD CONSTRAINT `mst_user_ibfk_1` FOREIGN KEY (`mu_mp_id`) REFERENCES `mst_product` (`mp_id`);

--
-- Constraints for table `mst_user_profile`
--
ALTER TABLE `mst_user_profile`
  ADD CONSTRAINT `mst_user_profile_ibfk_1` FOREIGN KEY (`mup_mu_id`) REFERENCES `mst_user` (`mu_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
