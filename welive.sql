-- phpMyAdmin SQL Dump
-- version phpStudy 2014
-- http://www.phpmyadmin.net
--
-- 主机: localhost
-- 生成日期: 2016 年 07 月 06 日 15:32
-- 服务器版本: 5.5.40
-- PHP 版本: 5.3.29

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- 数据库: `welive`
--

-- --------------------------------------------------------

--
-- 表的结构 `welive_automsg`
--

CREATE TABLE IF NOT EXISTS `welive_automsg` (
  `msgid` int(10) NOT NULL AUTO_INCREMENT,
  `ordernum` int(10) NOT NULL DEFAULT '0',
  `activated` tinyint(1) NOT NULL DEFAULT '0',
  `msg` text NOT NULL,
  PRIMARY KEY (`msgid`),
  KEY `ordernum` (`ordernum`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

--
-- 转存表中的数据 `welive_automsg`
--

INSERT INTO `welive_automsg` (`msgid`, `ordernum`, `activated`, `msg`) VALUES
(1, 1, 1, '您好，欢迎您的咨询，请问有什么需要帮助的吗？'),
(2, 2, 1, '对不起，线路繁忙，请稍候，您也可以给我们留言！'),
(3, 3, 1, '感谢您的咨询！谢谢，再见！'),
(4, 4, 1, '您即将离开咨询页面，离开后不能继续与客服人员沟通，您确定离开吗？点击确定离开，点击取消继续与客服人员沟通'),
(5, 5, 1, '您好，现在客服不在线，请留言。如果没有留下您的联系方式，客服将无法和您联系！');

-- --------------------------------------------------------

--
-- 表的结构 `welive_comment`
--

CREATE TABLE IF NOT EXISTS `welive_comment` (
  `commentid` int(30) NOT NULL AUTO_INCREMENT,
  `touserid` int(30) NOT NULL DEFAULT '0',
  `username` varchar(64) NOT NULL DEFAULT '',
  `content` text NOT NULL,
  `userip` varchar(32) NOT NULL DEFAULT '',
  `created` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`commentid`),
  KEY `touserid` (`touserid`),
  KEY `created` (`created`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- 转存表中的数据 `welive_comment`
--

INSERT INTO `welive_comment` (`commentid`, `touserid`, `username`, `content`, `userip`, `created`) VALUES
(1, 3, 'test', 'dfseaesgesges', '192.168.1.118', 1467785673);

-- --------------------------------------------------------

--
-- 表的结构 `welive_guest`
--

CREATE TABLE IF NOT EXISTS `welive_guest` (
  `guestid` int(30) NOT NULL AUTO_INCREMENT,
  `guestip` varchar(32) NOT NULL DEFAULT '',
  `browser` varchar(64) NOT NULL DEFAULT '',
  `lang` tinyint(1) NOT NULL DEFAULT '1',
  `created` int(11) NOT NULL DEFAULT '0',
  `isonline` tinyint(1) NOT NULL DEFAULT '0',
  `isbanned` tinyint(1) NOT NULL DEFAULT '0',
  `serverid` int(11) NOT NULL DEFAULT '0',
  `fromurl` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`guestid`),
  KEY `serverid` (`serverid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- 转存表中的数据 `welive_guest`
--

INSERT INTO `welive_guest` (`guestid`, `guestip`, `browser`, `lang`, `created`, `isonline`, `isbanned`, `serverid`, `fromurl`) VALUES
(1, 'unknown', 'Chrome 47.0.2526.80', 1, 1467712881, 1, 0, 3, 'http://localhost/welive/demo.html'),
(3, 'unknown', 'Chrome 47.0.2526.80', 1, 1467787226, 0, 0, 3, 'http://localhost/welive/demo.html');

-- --------------------------------------------------------

--
-- 表的结构 `welive_msg`
--

CREATE TABLE IF NOT EXISTS `welive_msg` (
  `msgid` int(30) NOT NULL AUTO_INCREMENT,
  `fromid` int(30) NOT NULL DEFAULT '0',
  `userip` varchar(32) DEFAULT NULL,
  `toid` int(30) NOT NULL DEFAULT '0',
  `msg` text NOT NULL,
  `biu` varchar(3) NOT NULL DEFAULT '',
  `color` varchar(8) NOT NULL DEFAULT '',
  `created` int(11) NOT NULL DEFAULT '0',
  `minitime` float(9,8) NOT NULL DEFAULT '0.00000000',
  `type` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`msgid`),
  KEY `fromid` (`fromid`),
  KEY `toid` (`toid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=30 ;

--
-- 转存表中的数据 `welive_msg`
--

INSERT INTO `welive_msg` (`msgid`, `fromid`, `userip`, `toid`, `msg`, `biu`, `color`, `created`, `minitime`, `type`) VALUES
(3, 3, NULL, 2, ';;', '000', '0', 1467698133, 0.82479501, 1),
(10, 3, NULL, 3, '[:13:]', '000', '0', 1467768480, 0.00471600, 0),
(11, 3, NULL, 3, 'g', '000', '0', 1467768805, 0.19479001, 0),
(12, 3, NULL, 3, 'fff', '000', '0', 1467769327, 0.62367100, 0),
(13, 3, NULL, 3, 'd', '000', '0', 1467769577, 0.06993900, 0),
(14, 3, NULL, 3, 'd', '000', '0', 1467769581, 0.27417901, 0),
(15, 3, NULL, 3, 'fdsaf', '000', '0', 1467770548, 0.99553001, 0),
(16, 3, NULL, 3, '11111111', '000', '0', 1467770604, 0.21668801, 0),
(17, 3, NULL, 3, '22222', '000', '0', 1467770620, 0.12459800, 0),
(18, 3, NULL, 3, 'adf', '000', '0', 1467772101, 0.78404301, 0),
(19, 3, NULL, 3, 'df', '000', '0', 1467775294, 0.85991502, 1),
(20, 3, NULL, 3, 'fdfs', '000', '0', 1467776447, 0.19656000, 0),
(21, 3, NULL, 3, 'h', '000', '0', 1467776657, 0.79937100, 1),
(22, 3, NULL, 3, 'd', '000', '0', 1467776688, 0.82031298, 0),
(23, 3, NULL, 3, 'dddd', '000', '0', 1467777201, 0.75193799, 0),
(24, 3, NULL, 3, 'fasd', '000', '0', 1467777389, 0.71168798, 0),
(25, 3, NULL, 3, 'adsf', '000', '0', 1467777402, 0.73543298, 0),
(26, 3, '192.168.1.118', 3, 'sdaf', '000', '0', 1467782379, 0.76010299, 0),
(27, 3, 'unknown', 3, 'sdf', '000', '0', 1467787230, 0.50479001, 0),
(28, 3, 'unknown', 3, 'dfaf', '000', '0', 1467787234, 0.56302202, 0),
(29, 3, 'unknown', 3, 'dddddddddddddddddddddd', '000', '0', 1467787805, 0.76859701, 0);

-- --------------------------------------------------------

--
-- 表的结构 `welive_session`
--

CREATE TABLE IF NOT EXISTS `welive_session` (
  `sessionid` char(64) NOT NULL DEFAULT '',
  `userid` int(11) NOT NULL DEFAULT '0',
  `ipaddress` varchar(64) NOT NULL DEFAULT '',
  `created` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`sessionid`),
  KEY `created` (`created`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `welive_session`
--

INSERT INTO `welive_session` (`sessionid`, `userid`, `ipaddress`, `created`) VALUES
('6cb05a433b8286cb521ced26f56e4080', 3, 'unknown', 1467700798),
('2bd28b88b1c3841e7fa8e74c319a6ef7', 1, 'unknown', 1467784841),
('73a67d4bee3b6d31626938cf1b36ac57', 3, 'unknown', 1467787215);

-- --------------------------------------------------------

--
-- 表的结构 `welive_user`
--

CREATE TABLE IF NOT EXISTS `welive_user` (
  `userid` int(10) NOT NULL AUTO_INCREMENT,
  `usergroupid` int(10) NOT NULL DEFAULT '0',
  `displayorder` int(10) NOT NULL DEFAULT '0',
  `username` varchar(64) NOT NULL DEFAULT '',
  `type` tinyint(1) NOT NULL DEFAULT '1',
  `password` varchar(32) NOT NULL DEFAULT '',
  `activated` tinyint(1) NOT NULL DEFAULT '0',
  `isonline` tinyint(1) NOT NULL DEFAULT '0',
  `userfrontname` varchar(64) NOT NULL DEFAULT '',
  `userfrontename` varchar(64) NOT NULL DEFAULT '',
  `infocn` text NOT NULL,
  `infoen` text NOT NULL,
  `advcn` text NOT NULL,
  `adven` text NOT NULL,
  `lastlogin` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`userid`),
  KEY `usergroupid` (`usergroupid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

--
-- 转存表中的数据 `welive_user`
--

INSERT INTO `welive_user` (`userid`, `usergroupid`, `displayorder`, `username`, `type`, `password`, `activated`, `isonline`, `userfrontname`, `userfrontename`, `infocn`, `infoen`, `advcn`, `adven`, `lastlogin`) VALUES
(1, 1, 0, 'admin', 1, 'e10adc3949ba59abbe56e057f20f883e', 1, 0, '系统管理员', 'Administrator', '', '', '', '', 1467784841),
(2, 2, 1, 'mszhang', 1, 'e10adc3949ba59abbe56e057f20f883e', 1, 0, '张', 'Ms.Zhang', '姓名: 张小娟', 'Name: Ms. Zhang', '广告', 'Adv.', 0),
(3, 2, 2, 'msli', 1, 'e10adc3949ba59abbe56e057f20f883e', 1, 1, '李', 'Ms.Li', '姓名: 李晴晴', 'Name: Ms. Li', '广告', 'Adv.', 1467787215),
(4, 3, 3, 'mrzhao', 1, 'e10adc3949ba59abbe56e057f20f883e', 1, 0, '赵', 'Mr.Zhao', '姓名: 赵利铭', 'Name: Mr. Zhao', '广告', 'Adv.', 0),
(5, 3, 4, 'mrwang', 1, 'e10adc3949ba59abbe56e057f20f883e', 1, 0, '王', 'Mr.Wang', '姓名: 王  炯', 'Name: Mr. Wang', '广告', 'Adv.', 0);

-- --------------------------------------------------------

--
-- 表的结构 `welive_usergroup`
--

CREATE TABLE IF NOT EXISTS `welive_usergroup` (
  `usergroupid` smallint(5) NOT NULL AUTO_INCREMENT,
  `displayorder` int(10) NOT NULL DEFAULT '0',
  `groupname` varchar(64) NOT NULL DEFAULT '',
  `groupename` varchar(64) NOT NULL DEFAULT '',
  `activated` tinyint(1) NOT NULL DEFAULT '0',
  `description` text NOT NULL,
  `descriptionen` text NOT NULL,
  PRIMARY KEY (`usergroupid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- 转存表中的数据 `welive_usergroup`
--

INSERT INTO `welive_usergroup` (`usergroupid`, `displayorder`, `groupname`, `groupename`, `activated`, `description`, `descriptionen`) VALUES
(1, 0, '系统管理员', 'Administrator', 1, '', ''),
(2, 1, '销售咨询', 'Sales Service', 1, '', ''),
(3, 2, '技术支持', 'Tech Support', 1, '', '');

-- --------------------------------------------------------

--
-- 表的结构 `welive_vvc`
--

CREATE TABLE IF NOT EXISTS `welive_vvc` (
  `vvcid` int(30) NOT NULL AUTO_INCREMENT,
  `code` varchar(9) NOT NULL DEFAULT '',
  `date` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`vvcid`),
  KEY `date` (`date`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- 转存表中的数据 `welive_vvc`
--

INSERT INTO `welive_vvc` (`vvcid`, `code`, `date`) VALUES
(3, 'XUCE', 1467786519);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
