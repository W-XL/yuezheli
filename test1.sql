/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50132
Source Host           : localhost:3306
Source Database       : test1

Target Server Type    : MYSQL
Target Server Version : 50132
File Encoding         : 65001

Date: 2016-05-09 19:31:49
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for ims_dayu_yuyuepay
-- ----------------------------
DROP TABLE IF EXISTS `ims_dayu_yuyuepay`;
CREATE TABLE `ims_dayu_yuyuepay` (
  `reid` int(11) NOT NULL AUTO_INCREMENT,
  `weid` int(11) NOT NULL,
  `title` varchar(100) NOT NULL DEFAULT '',
  `description` varchar(1000) NOT NULL,
  `content` text NOT NULL,
  `information` varchar(500) NOT NULL DEFAULT '',
  `thumb` varchar(200) NOT NULL DEFAULT '',
  `inhome` tinyint(4) NOT NULL DEFAULT '0',
  `createtime` int(10) NOT NULL DEFAULT '0',
  `starttime` int(10) NOT NULL DEFAULT '0',
  `endtime` int(10) unsigned NOT NULL,
  `status` int(11) NOT NULL DEFAULT '0',
  `kaishi` int(11) NOT NULL DEFAULT '1',
  `jieshu` int(11) NOT NULL DEFAULT '22',
  `tianshu` int(11) NOT NULL DEFAULT '15',
  `pretotal` int(10) unsigned NOT NULL DEFAULT '1',
  `pay` int(10) unsigned NOT NULL DEFAULT '1',
  `xmshow` int(10) unsigned NOT NULL DEFAULT '0',
  `xmname` varchar(50) NOT NULL DEFAULT '',
  `yuyuename` varchar(50) NOT NULL DEFAULT '',
  `noticeemail` varchar(50) NOT NULL DEFAULT '',
  `k_templateid` varchar(50) NOT NULL DEFAULT '',
  `kfid` varchar(50) NOT NULL DEFAULT '',
  `m_templateid` varchar(50) NOT NULL DEFAULT '',
  `accountsid` varchar(50) NOT NULL DEFAULT '',
  `tokenid` varchar(50) NOT NULL DEFAULT '',
  `appId` varchar(50) NOT NULL DEFAULT '',
  `templateId` varchar(50) NOT NULL DEFAULT '',
  `mobile` varchar(50) NOT NULL DEFAULT '',
  `mname` varchar(10) NOT NULL DEFAULT '',
  `skins` varchar(20) NOT NULL DEFAULT 'submit',
  `kfirst` varchar(100) NOT NULL COMMENT '客服模板页头',
  `kfoot` varchar(100) NOT NULL COMMENT '客服模板页尾',
  `mfirst` varchar(100) NOT NULL COMMENT '客户模板页头',
  `mfoot` varchar(100) NOT NULL COMMENT '客户模板页尾',
  `share_url` varchar(100) NOT NULL DEFAULT '',
  `follow` tinyint(1) DEFAULT '0',
  `code` tinyint(1) DEFAULT '0',
  `is_time` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`reid`),
  KEY `weid` (`weid`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_dayu_yuyuepay
-- ----------------------------
INSERT INTO `ims_dayu_yuyuepay` VALUES ('1', '5', '预约', '预约', '&lt;p&gt;预约&lt;/p&gt;', '您的预约申请我们已经收到, 请等待客服确认.', 'images/5/2016/03/US405mg5ps74650bE4Ne80Sg57kFse.png', '0', '1459506440', '1459506390', '1462098390', '1', '1', '22', '15', '100', '1', '0', '请选择服务项目', '预约时间', '', '', '', '', '', '', '', '', '', '我的预约', 'concise', '有新的客户预约，请及时确认', '点击确认预约，或修改预约时间', '预约结果通知', '如有疑问，请致电联系我们', '', '1', '1', '0');
INSERT INTO `ims_dayu_yuyuepay` VALUES ('2', '5', '测试', '测试测试测试测试', '&lt;p&gt;测试&lt;/p&gt;', '您的预约申请我们已经收到, 请等待客服确认.', 'images/5/2016/03/US405mg5ps74650bE4Ne80Sg57kFse.png', '1', '1460979761', '1460979649', '1463571649', '1', '1', '22', '15', '100', '2', '0', '请选择服务项目', '预约时间', '', '', '', '', '', '', '', '', '', '我的预约', 'concise', '有新的客户预约，请及时确认', '点击确认预约，或修改预约时间', '预约结果通知', '如有疑问，请致电联系我们', '', '0', '0', '0');

-- ----------------------------
-- Table structure for ims_dayu_yuyuepay_data
-- ----------------------------
DROP TABLE IF EXISTS `ims_dayu_yuyuepay_data`;
CREATE TABLE `ims_dayu_yuyuepay_data` (
  `redid` bigint(20) NOT NULL AUTO_INCREMENT,
  `reid` int(11) NOT NULL,
  `rerid` int(11) NOT NULL,
  `refid` int(11) NOT NULL,
  `data` varchar(800) NOT NULL,
  PRIMARY KEY (`redid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_dayu_yuyuepay_data
-- ----------------------------

-- ----------------------------
-- Table structure for ims_dayu_yuyuepay_fields
-- ----------------------------
DROP TABLE IF EXISTS `ims_dayu_yuyuepay_fields`;
CREATE TABLE `ims_dayu_yuyuepay_fields` (
  `refid` int(11) NOT NULL AUTO_INCREMENT,
  `reid` int(11) NOT NULL DEFAULT '0',
  `title` varchar(200) NOT NULL DEFAULT '',
  `type` varchar(20) NOT NULL DEFAULT '',
  `essential` tinyint(4) NOT NULL DEFAULT '0',
  `bind` varchar(30) NOT NULL DEFAULT '',
  `value` varchar(300) NOT NULL DEFAULT '',
  `description` varchar(500) NOT NULL DEFAULT '',
  `displayorder` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`refid`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_dayu_yuyuepay_fields
-- ----------------------------
INSERT INTO `ims_dayu_yuyuepay_fields` VALUES ('3', '1', '包间', 'checkbox', '0', '', '小包,中包,大包', '', '0');
INSERT INTO `ims_dayu_yuyuepay_fields` VALUES ('4', '2', '真实姓名', 'text', '1', 'realname', '', '', '0');
INSERT INTO `ims_dayu_yuyuepay_fields` VALUES ('5', '2', '手机号码', 'number', '1', 'mobile', '', '', '0');
INSERT INTO `ims_dayu_yuyuepay_fields` VALUES ('6', '2', '预约时间', 'number', '1', '', '', '', '0');

-- ----------------------------
-- Table structure for ims_dayu_yuyuepay_info
-- ----------------------------
DROP TABLE IF EXISTS `ims_dayu_yuyuepay_info`;
CREATE TABLE `ims_dayu_yuyuepay_info` (
  `rerid` int(11) NOT NULL AUTO_INCREMENT,
  `reid` int(11) NOT NULL,
  `member` varchar(50) NOT NULL,
  `mobile` varchar(11) NOT NULL,
  `openid` varchar(50) NOT NULL,
  `status` tinyint(1) NOT NULL COMMENT '预约状态',
  `xmid` int(11) NOT NULL,
  `price` varchar(10) NOT NULL DEFAULT '',
  `ordersn` varchar(20) NOT NULL COMMENT '订单编号',
  `transid` varchar(30) NOT NULL COMMENT '微信订单号',
  `paystatus` tinyint(4) NOT NULL COMMENT '付款状态',
  `paytype` tinyint(4) NOT NULL COMMENT '付款方式',
  `yuyuetime` int(10) NOT NULL DEFAULT '0' COMMENT '客服确认时间',
  `kfinfo` varchar(100) NOT NULL COMMENT '客服信息',
  `createtime` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`rerid`),
  KEY `reid` (`reid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_dayu_yuyuepay_info
-- ----------------------------

-- ----------------------------
-- Table structure for ims_dayu_yuyuepay_reply
-- ----------------------------
DROP TABLE IF EXISTS `ims_dayu_yuyuepay_reply`;
CREATE TABLE `ims_dayu_yuyuepay_reply` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `rid` int(11) NOT NULL,
  `reid` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_dayu_yuyuepay_reply
-- ----------------------------
INSERT INTO `ims_dayu_yuyuepay_reply` VALUES ('1', '18', '2');

-- ----------------------------
-- Table structure for ims_dayu_yuyuepay_xiangmu
-- ----------------------------
DROP TABLE IF EXISTS `ims_dayu_yuyuepay_xiangmu`;
CREATE TABLE `ims_dayu_yuyuepay_xiangmu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `weid` int(11) NOT NULL,
  `reid` int(11) NOT NULL,
  `title` varchar(50) NOT NULL DEFAULT '',
  `price` varchar(10) NOT NULL DEFAULT '',
  `displayorder` tinyint(3) NOT NULL DEFAULT '0',
  `isshow` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `weid` (`weid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_dayu_yuyuepay_xiangmu
-- ----------------------------

-- ----------------------------
-- Table structure for ims_dayu_zhinv_reply
-- ----------------------------
DROP TABLE IF EXISTS `ims_dayu_zhinv_reply`;
CREATE TABLE `ims_dayu_zhinv_reply` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `rid` int(11) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `cover` varchar(255) DEFAULT NULL,
  `description` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_dayu_zhinv_reply
-- ----------------------------

-- ----------------------------
-- Table structure for ims_dayu_zhinv_set
-- ----------------------------
DROP TABLE IF EXISTS `ims_dayu_zhinv_set`;
CREATE TABLE `ims_dayu_zhinv_set` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `weid` int(11) DEFAULT NULL,
  `title` varchar(50) DEFAULT NULL,
  `share_title` varchar(200) DEFAULT '',
  `share_desc` varchar(300) DEFAULT '',
  `share_url` varchar(100) DEFAULT '',
  `copyright` varchar(300) NOT NULL,
  `share_txt` varchar(500) DEFAULT '',
  `follow` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '关注',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_dayu_zhinv_set
-- ----------------------------

-- ----------------------------
-- Table structure for ims_deam_puzzleredpack_guanzhu
-- ----------------------------
DROP TABLE IF EXISTS `ims_deam_puzzleredpack_guanzhu`;
CREATE TABLE `ims_deam_puzzleredpack_guanzhu` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) NOT NULL,
  `openid` varchar(50) NOT NULL,
  `gztime` varchar(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `openid` (`openid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_deam_puzzleredpack_guanzhu
-- ----------------------------

-- ----------------------------
-- Table structure for ims_deam_puzzleredpack_packetset
-- ----------------------------
DROP TABLE IF EXISTS `ims_deam_puzzleredpack_packetset`;
CREATE TABLE `ims_deam_puzzleredpack_packetset` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) NOT NULL,
  `send_name` varchar(100) NOT NULL COMMENT '商户名称',
  `total_num` int(1) NOT NULL DEFAULT '1' COMMENT '固定，单个红包发放总人数',
  `wishing` varchar(100) NOT NULL,
  `act_name` varchar(100) NOT NULL,
  `remark` varchar(100) NOT NULL,
  `status` int(1) NOT NULL DEFAULT '1',
  `total_prize` decimal(10,2) NOT NULL,
  `minprize` decimal(10,2) NOT NULL,
  `maxprize` decimal(10,2) NOT NULL,
  `is_subscribe` int(1) NOT NULL,
  `pagetitle` varchar(200) NOT NULL,
  `puzzleimage` varchar(200) NOT NULL,
  `qrcodeimage` varchar(200) NOT NULL,
  `puzzlelevel` int(1) NOT NULL,
  `starttime` int(11) NOT NULL,
  `endtime` int(11) NOT NULL,
  `ads_type` int(1) NOT NULL,
  `ads_color` varchar(50) NOT NULL,
  `ads_button_color` varchar(50) NOT NULL,
  `ads_text` varchar(200) NOT NULL,
  `ads_link` varchar(200) NOT NULL,
  `share_title` varchar(200) NOT NULL,
  `share_img` varchar(200) NOT NULL,
  `noshare_title` varchar(200) NOT NULL,
  `isshare` int(1) NOT NULL,
  `createtime` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_deam_puzzleredpack_packetset
-- ----------------------------

-- ----------------------------
-- Table structure for ims_deam_puzzleredpack_record
-- ----------------------------
DROP TABLE IF EXISTS `ims_deam_puzzleredpack_record`;
CREATE TABLE `ims_deam_puzzleredpack_record` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) NOT NULL,
  `actid` int(10) NOT NULL,
  `mch_billno` varchar(28) NOT NULL,
  `mch_id` varchar(30) NOT NULL,
  `wxappid` varchar(50) NOT NULL,
  `openid` varchar(100) NOT NULL,
  `total_amount` int(10) NOT NULL,
  `send_time` varchar(20) NOT NULL,
  `send_listid` varchar(100) NOT NULL,
  `mytime` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  KEY `openid` (`openid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_deam_puzzleredpack_record
-- ----------------------------

-- ----------------------------
-- Table structure for ims_deam_puzzleredpack_report
-- ----------------------------
DROP TABLE IF EXISTS `ims_deam_puzzleredpack_report`;
CREATE TABLE `ims_deam_puzzleredpack_report` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `uniacid` int(10) NOT NULL,
  `rid` int(10) NOT NULL,
  `actid` int(10) NOT NULL,
  `title` varchar(200) NOT NULL,
  `image` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_deam_puzzleredpack_report
-- ----------------------------

-- ----------------------------
-- Table structure for ims_dqq_award
-- ----------------------------
DROP TABLE IF EXISTS `ims_dqq_award`;
CREATE TABLE `ims_dqq_award` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `rid` int(10) unsigned NOT NULL COMMENT '规则ID',
  `title` varchar(50) NOT NULL COMMENT '奖品名称',
  `total` int(11) NOT NULL COMMENT '数量',
  `probalilty` varchar(5) NOT NULL COMMENT '概率单位%',
  `description` varchar(100) NOT NULL DEFAULT '' COMMENT '描述',
  `inkind` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '是否是实物',
  `get_jf` int(11) NOT NULL COMMENT '获取的积分',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_dqq_award
-- ----------------------------

-- ----------------------------
-- Table structure for ims_dqq_reply
-- ----------------------------
DROP TABLE IF EXISTS `ims_dqq_reply`;
CREATE TABLE `ims_dqq_reply` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `rid` int(10) unsigned NOT NULL COMMENT '规则ID',
  `picture` varchar(100) NOT NULL COMMENT '活动图片',
  `description` varchar(100) NOT NULL COMMENT '活动描述',
  `rule` varchar(1000) NOT NULL COMMENT '规则',
  `periodlottery` smallint(10) unsigned NOT NULL DEFAULT '1' COMMENT '0为无周期',
  `maxlottery` tinyint(3) unsigned NOT NULL COMMENT '最大抽奖数',
  `default_tips` varchar(100) NOT NULL COMMENT '默认提示信息',
  `hitcredit` int(11) NOT NULL COMMENT '中奖奖励积分',
  `misscredit` int(11) NOT NULL COMMENT '未中奖奖励积分',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_dqq_reply
-- ----------------------------

-- ----------------------------
-- Table structure for ims_dqq_winner
-- ----------------------------
DROP TABLE IF EXISTS `ims_dqq_winner`;
CREATE TABLE `ims_dqq_winner` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `rid` int(10) unsigned NOT NULL COMMENT '规则ID',
  `aid` int(10) unsigned NOT NULL COMMENT '奖品ID',
  `award` varchar(100) NOT NULL DEFAULT '' COMMENT '奖品名称',
  `description` varchar(500) NOT NULL DEFAULT '' COMMENT '中奖信息描述',
  `from_user` varchar(50) NOT NULL COMMENT '用户唯一身份ID',
  `status` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0未领奖，1不需要领奖，2已领奖',
  `createtime` int(10) unsigned NOT NULL COMMENT '获奖日期',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_dqq_winner
-- ----------------------------

-- ----------------------------
-- Table structure for ims_dream_reply
-- ----------------------------
DROP TABLE IF EXISTS `ims_dream_reply`;
CREATE TABLE `ims_dream_reply` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `rid` int(10) unsigned NOT NULL DEFAULT '0',
  `weid` int(11) NOT NULL DEFAULT '0',
  `title` varchar(50) DEFAULT '',
  `picurl` varchar(200) DEFAULT '',
  `starttime` int(10) DEFAULT '0',
  `endtime` int(10) DEFAULT '0',
  `share_title` varchar(50) DEFAULT '',
  `share_content` varchar(255) DEFAULT '',
  `isshow` tinyint(1) DEFAULT '0',
  `viewnum` int(11) DEFAULT '0',
  `dreamnum` int(11) DEFAULT '0',
  `logo` varchar(200) DEFAULT NULL,
  `gzurl` varchar(255) DEFAULT NULL,
  `slogans` varchar(28) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `indx_rid` (`rid`),
  KEY `indx_weid` (`weid`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_dream_reply
-- ----------------------------

-- ----------------------------
-- Table structure for ims_dream_wish
-- ----------------------------
DROP TABLE IF EXISTS `ims_dream_wish`;
CREATE TABLE `ims_dream_wish` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `weid` int(11) DEFAULT '0',
  `rid` int(11) DEFAULT '0',
  `fansID` int(11) DEFAULT '0',
  `from_user` varchar(50) DEFAULT '0',
  `drea_mname` varchar(50) DEFAULT '' COMMENT '自己名字',
  `to_name` varchar(200) DEFAULT '' COMMENT '好友名字',
  `dream` varchar(50) DEFAULT '' COMMENT '梦想',
  `createtime` int(10) DEFAULT '0',
  `consumetime` int(10) DEFAULT '0',
  `status` tinyint(4) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `indx_rid` (`rid`),
  KEY `indx_weid` (`weid`)
) ENGINE=MyISAM AUTO_INCREMENT=24 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ims_dream_wish
-- ----------------------------
