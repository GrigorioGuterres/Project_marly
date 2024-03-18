-- phpMyAdmin SQL Dump
-- version 4.3.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Feb 26, 2024 at 03:35 AM
-- Server version: 5.6.24
-- PHP Version: 5.6.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `db_timor`
--

-- --------------------------------------------------------

--
-- Stand-in structure for view `relatorylabark`
--
CREATE TABLE IF NOT EXISTS `relatorylabark` (
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `re_estudante`
--
CREATE TABLE IF NOT EXISTS `re_estudante` (
`id` int(11)
,`naran_estudante` varchar(255)
,`obs_estudante` varchar(255)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `re_geral`
--
CREATE TABLE IF NOT EXISTS `re_geral` (
`id` int(11)
,`id_visitatnes` varchar(255)
,`id_estudante` varchar(255)
,`id_labarik` varchar(255)
,`id_idosos` varchar(255)
,`data_rejistu` varchar(255)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `re_visitantes`
--
CREATE TABLE IF NOT EXISTS `re_visitantes` (
`id` int(11)
,`naran_visitatnes` varchar(255)
,`data_moris` varchar(255)
,`hela_fatin` varchar(255)
,`no_hp` varchar(255)
,`obs` varchar(255)
);

-- --------------------------------------------------------

--
-- Table structure for table `tb_estudante`
--

CREATE TABLE IF NOT EXISTS `tb_estudante` (
  `id` int(11) NOT NULL,
  `naran_estudante` varchar(255) NOT NULL,
  `obs_estudante` varchar(255) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_estudante`
--

INSERT INTO `tb_estudante` (`id`, `naran_estudante`, `obs_estudante`) VALUES
(1, 'Fidalia Ximeens', 'diak');

-- --------------------------------------------------------

--
-- Table structure for table `tb_funsionario`
--

CREATE TABLE IF NOT EXISTS `tb_funsionario` (
  `id` int(11) NOT NULL,
  `naran_funsionario` varchar(255) NOT NULL,
  `obs_funsionario` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tb_idosos`
--

CREATE TABLE IF NOT EXISTS `tb_idosos` (
  `id` int(11) NOT NULL,
  `naran_idosos` varchar(255) NOT NULL,
  `obs_idosos` varchar(255) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_idosos`
--

INSERT INTO `tb_idosos` (`id`, `naran_idosos`, `obs_idosos`) VALUES
(1, 'jbjb', 'bjkbkjb');

-- --------------------------------------------------------

--
-- Table structure for table `tb_labark`
--

CREATE TABLE IF NOT EXISTS `tb_labark` (
  `id` int(11) NOT NULL,
  `naran_labarik` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tb_lbk`
--

CREATE TABLE IF NOT EXISTS `tb_lbk` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tb_prosses`
--

CREATE TABLE IF NOT EXISTS `tb_prosses` (
  `id` int(11) NOT NULL,
  `id_visitatnes` varchar(255) NOT NULL,
  `id_estudante` varchar(255) NOT NULL,
  `id_labarik` varchar(255) NOT NULL,
  `id_idosos` varchar(255) NOT NULL,
  `data_rejistu` varchar(255) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_prosses`
--

INSERT INTO `tb_prosses` (`id`, `id_visitatnes`, `id_estudante`, `id_labarik`, `id_idosos`, `data_rejistu`) VALUES
(1, 'jbjbjb', 'Fidalia Ximeens', '', 'jbjb', 'nkjn');

-- --------------------------------------------------------

--
-- Table structure for table `tb_strangeiro`
--

CREATE TABLE IF NOT EXISTS `tb_strangeiro` (
  `id` int(11) NOT NULL,
  `naran_labarik` varchar(255) NOT NULL,
  `obs_labarik` varchar(255) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_strangeiro`
--

INSERT INTO `tb_strangeiro` (`id`, `naran_labarik`, `obs_labarik`) VALUES
(1, 'grigorio', 'Diak');

-- --------------------------------------------------------

--
-- Table structure for table `tb_user`
--

CREATE TABLE IF NOT EXISTS `tb_user` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) DEFAULT NULL,
  `images` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `naran` varchar(255) NOT NULL,
  `login_session_key` varchar(255) DEFAULT NULL,
  `email_status` varchar(255) DEFAULT NULL,
  `password_expire_date` datetime DEFAULT '2024-05-25 00:00:00',
  `password_reset_key` varchar(255) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_user`
--

INSERT INTO `tb_user` (`id`, `username`, `password`, `images`, `email`, `naran`, `login_session_key`, `email_status`, `password_expire_date`, `password_reset_key`) VALUES
(1, 'admin', '$2y$10$voro3NIvw1NsYz7t6k5in.J5GmAaUDLk6wB0WKkerM4nlkrD5hgx.', 'http://localhost/project123/uploads/files/vbmsj7yilpq_h38.jpg', 'admin@gmail.com', 'Marly', NULL, NULL, '2024-05-25 00:00:00', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tb_visitatnes`
--

CREATE TABLE IF NOT EXISTS `tb_visitatnes` (
  `id` int(11) NOT NULL,
  `naran_visitatnes` varchar(255) NOT NULL,
  `data_moris` varchar(255) NOT NULL,
  `hela_fatin` varchar(255) NOT NULL,
  `no_hp` varchar(255) NOT NULL,
  `obs` varchar(255) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_visitatnes`
--

INSERT INTO `tb_visitatnes` (`id`, `naran_visitatnes`, `data_moris`, `hela_fatin`, `no_hp`, `obs`) VALUES
(1, 'jbjbjb', 'jjbjbjbjb', 'jbjb', 'jkbjbj', 'bbbj');

-- --------------------------------------------------------

--
-- Structure for view `relatorylabark`
--
DROP TABLE IF EXISTS `relatorylabark`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `relatorylabark` AS select `tl`.`id` AS `id`,`tl`.`naran_labarik` AS `naran_labarik`,`tl`.`obs_labarik` AS `obs_labarik` from `tb_labarik` `tl`;

-- --------------------------------------------------------

--
-- Structure for view `re_estudante`
--
DROP TABLE IF EXISTS `re_estudante`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `re_estudante` AS select `te`.`id` AS `id`,`te`.`naran_estudante` AS `naran_estudante`,`te`.`obs_estudante` AS `obs_estudante` from `tb_estudante` `te`;

-- --------------------------------------------------------

--
-- Structure for view `re_geral`
--
DROP TABLE IF EXISTS `re_geral`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `re_geral` AS select `tp`.`id` AS `id`,`tp`.`id_visitatnes` AS `id_visitatnes`,`tp`.`id_estudante` AS `id_estudante`,`tp`.`id_labarik` AS `id_labarik`,`tp`.`id_idosos` AS `id_idosos`,`tp`.`data_rejistu` AS `data_rejistu` from `tb_prosses` `tp`;

-- --------------------------------------------------------

--
-- Structure for view `re_visitantes`
--
DROP TABLE IF EXISTS `re_visitantes`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `re_visitantes` AS select `tv`.`id` AS `id`,`tv`.`naran_visitatnes` AS `naran_visitatnes`,`tv`.`data_moris` AS `data_moris`,`tv`.`hela_fatin` AS `hela_fatin`,`tv`.`no_hp` AS `no_hp`,`tv`.`obs` AS `obs` from `tb_visitatnes` `tv`;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tb_estudante`
--
ALTER TABLE `tb_estudante`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_funsionario`
--
ALTER TABLE `tb_funsionario`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_idosos`
--
ALTER TABLE `tb_idosos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_labark`
--
ALTER TABLE `tb_labark`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_lbk`
--
ALTER TABLE `tb_lbk`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_prosses`
--
ALTER TABLE `tb_prosses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_strangeiro`
--
ALTER TABLE `tb_strangeiro`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_user`
--
ALTER TABLE `tb_user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_visitatnes`
--
ALTER TABLE `tb_visitatnes`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tb_estudante`
--
ALTER TABLE `tb_estudante`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `tb_funsionario`
--
ALTER TABLE `tb_funsionario`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tb_idosos`
--
ALTER TABLE `tb_idosos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `tb_labark`
--
ALTER TABLE `tb_labark`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tb_lbk`
--
ALTER TABLE `tb_lbk`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tb_prosses`
--
ALTER TABLE `tb_prosses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `tb_strangeiro`
--
ALTER TABLE `tb_strangeiro`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `tb_user`
--
ALTER TABLE `tb_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `tb_visitatnes`
--
ALTER TABLE `tb_visitatnes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
