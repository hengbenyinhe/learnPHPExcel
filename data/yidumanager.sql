-- phpMyAdmin SQL Dump
-- version phpStudy 2014
-- http://www.phpmyadmin.net
--
-- 主机: localhost
-- 生成日期: 2018 年 11 月 16 日 03:01
-- 服务器版本: 5.5.53
-- PHP 版本: 5.4.45

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- 数据库: `yidumanager`
--

-- --------------------------------------------------------

--
-- 表的结构 `yd_admin_menu`
--

CREATE TABLE IF NOT EXISTS `yd_admin_menu` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `number` int(100) unsigned NOT NULL COMMENT '编号',
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '父菜单id',
  `type` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '菜单类型;1:有界面可访问菜单,2:无界面可访问菜单,0:只作为菜单',
  `status` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '状态;1:显示,0:不显示',
  `list_order` float NOT NULL DEFAULT '10000' COMMENT '排序',
  `app` varchar(15) CHARACTER SET utf8 NOT NULL DEFAULT '' COMMENT '应用名',
  `controller` varchar(30) CHARACTER SET utf8 NOT NULL DEFAULT '' COMMENT '控制器名',
  `action` varchar(30) CHARACTER SET utf8 NOT NULL DEFAULT '' COMMENT '操作名称',
  `param` varchar(50) CHARACTER SET utf8 NOT NULL DEFAULT '' COMMENT '额外参数',
  `name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '菜单名称',
  `icon` varchar(100) CHARACTER SET utf8 NOT NULL DEFAULT '' COMMENT '菜单图标',
  `remark` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '备注',
  `deleted` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '删除',
  PRIMARY KEY (`id`),
  KEY `status` (`status`),
  KEY `parentid` (`parent_id`),
  KEY `model` (`controller`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COMMENT='后台菜单表' AUTO_INCREMENT=43 ;

--
-- 转存表中的数据 `yd_admin_menu`
--

INSERT INTO `yd_admin_menu` (`id`, `number`, `parent_id`, `type`, `status`, `list_order`, `app`, `controller`, `action`, `param`, `name`, `icon`, `remark`, `deleted`) VALUES
(1, 1, 0, 0, 1, 10000, 'admin', 'Work', 'index', '', '首页', '', '首页', 0),
(2, 2, 0, 0, 1, 10000, 'admin', 'Nav', 'Msg', '', '信息发布管理', '', '', 0),
(3, 201, 2, 0, 1, 10000, 'admin', 'News', 'default', '', '新闻管理', '/static/admin/styles/images/iconStyle1/navicon01.png', '新闻管理', 0),
(4, 20101, 3, 1, 1, 10000, 'admin', 'News', 'newslist', '', '新闻列表', '', '新闻列表', 0),
(5, 20102, 3, 1, 0, 10000, 'admin', 'News', 'catelist', '', '新闻分类', '', '新闻分类', 0),
(6, 202, 2, 1, 1, 10000, 'admin', 'Jobs', 'default', '', '招聘管理', '/static/admin/styles/images/iconStyle1/navicon08.png', '招聘管理', 0),
(7, 20201, 6, 0, 1, 10000, 'admin', 'Jobs', 'jobslist', '', '招聘列表', '', '招聘列表', 0),
(8, 20202, 6, 1, 1, 10000, 'admin', 'Jobs', 'jobscate', '', '招聘分类', '', '招聘分类', 0),
(9, 3, 0, 0, 1, 10000, 'admin', 'Nav', 'System', '', '系统管理', '', '', 0),
(10, 301, 9, 1, 1, 10000, 'admin', 'Menu', 'default', '', '菜单管理', '/static/admin/styles/images/iconStyle1/navicon04.png', '菜单管理', 0),
(11, 302, 9, 1, 1, 10000, 'admin', 'User', 'default', '', '用户管理', '/static/admin/styles/images/iconStyle1/navicon04.png', '用户管理', 0),
(12, 303, 9, 1, 0, 10000, 'admin', 'Dept', 'default', '', '部门管理', '/static/admin/styles/images/iconStyle1/navicon04.png', '', 0),
(13, 304, 9, 1, 1, 10000, 'admin', 'Role', 'default', '', '角色管理', '/static/admin/styles/images/iconStyle1/navicon04.png', '角色管理', 0),
(14, 305, 9, 1, 1, 10000, 'admin', 'Rule', 'default', '', '权限管理', '/static/admin/styles/images/iconStyle1/navicon04.png', '权限管理', 0),
(15, 306, 9, 1, 0, 10000, 'admin', 'Log', 'default', '', '操作日志', '/static/admin/styles/images/iconStyle1/navicon04.png', '', 0),
(16, 30101, 10, 1, 1, 10000, 'admin', 'Menu', 'menuList', '', '菜单列表', '', '菜单列表', 0),
(17, 30102, 10, 1, 0, 10000, 'admin', 'Menu', 'testdd', '', '菜单测试', '', '', 1506217122),
(38, 30401, 13, 1, 1, 10000, 'admin', 'Role', 'roleList', '', '角色列表', '', '角色列表', 0),
(39, 30501, 14, 1, 1, 10000, 'admin', 'Rule', 'ruleList', '', '权限列表', '', '权限列表', 0),
(40, 30103, 10, 1, 0, 10000, 'admin', 'Menu', 'testing', '', '测试菜单3', '', '', 1506321559),
(41, 30201, 11, 1, 1, 10000, 'admin', 'User', 'userList', '', '用户列表', '', '用户列表', 0),
(42, 30301, 12, 1, 0, 10000, 'admin', 'Dept', 'deptList', '', '部门列表', '', '', 1506406067);

-- --------------------------------------------------------

--
-- 表的结构 `yd_article`
--

CREATE TABLE IF NOT EXISTS `yd_article` (
  `id` smallint(4) unsigned zerofill NOT NULL AUTO_INCREMENT COMMENT '主键',
  `code` varchar(15) NOT NULL COMMENT '新闻编号',
  `title` varchar(200) NOT NULL COMMENT '标题',
  `author` varchar(50) NOT NULL COMMENT '作者',
  `img` varchar(100) NOT NULL COMMENT '封面图片',
  `content` longtext NOT NULL COMMENT '内容',
  `category_id` tinyint(3) NOT NULL COMMENT '分类id',
  `create_at` int(11) unsigned NOT NULL COMMENT '发布时间',
  `update_at` int(11) unsigned NOT NULL COMMENT '修改时间',
  `is_top` tinyint(1) unsigned NOT NULL COMMENT '置顶，1：置顶；0：不置顶',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '发布状态，0：未发布，1：已发布',
  `pubdate` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '发布时间，第一次上架即发布',
  `is_release` tinyint(1) unsigned NOT NULL DEFAULT '2' COMMENT '是否上架，2：待上架；1：上架；0：下架',
  `start_time` int(11) unsigned NOT NULL COMMENT '有效开始时间',
  `end_time` int(11) unsigned NOT NULL COMMENT '有效结束时间',
  `deleted` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否删除，1：删除；0：未删除',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='新闻表' AUTO_INCREMENT=12 ;

--
-- 转存表中的数据 `yd_article`
--

INSERT INTO `yd_article` (`id`, `code`, `title`, `author`, `img`, `content`, `category_id`, `create_at`, `update_at`, `is_top`, `status`, `pubdate`, `is_release`, `start_time`, `end_time`, `deleted`) VALUES
(0001, 'xw2017092001', '祝贺易度再次通过国家高新技术企业认定', '新闻管理员', '', '&lt;p&gt;根据《高新技术企业认定管理办法》和《高新技术企业认定管理工作指引》有关规定，经过国家相关部门的严格审核，评选出2016年度高新技术企业名单。广州市易度软件开发有限公司成功通过认定，荣获2016年度“高新技术企业”殊荣，并于11月30日获颁《高新技术企业证书》。&lt;/p&gt;&lt;p style=&quot;text-align: center;&quot;&gt;&lt;img src=&quot;/upload/ueditor/image/20170920/1505871723182626.jpg&quot; title=&quot;1505871723182626.jpg&quot; alt=&quot;newfour.jpg&quot;/&gt;&lt;/p&gt;&lt;p&gt;本次高新技术企业认定是公司自2013年首次通过高新技术企业认定之后，第二次通过复审。初次通过认定至今，我们一直遵循高新技术企业认定政策的引导，坚持走自主创新、持续创新的发展道路，不断地提高科技创新能力。&lt;/p&gt;&lt;p&gt;此次再次取得证书不仅是对我们技术研发和创新水平的认可，同时也是对我们的一种激励。我们将继续依照着创新改变生活的初衷，进一步提高自主创新的能力，提升公司的品牌形象，提升服务水平，并且将继续深化技术研究，追求技术创新，为国家科技进步贡献力量！&lt;/p&gt;', 1, 1505871600, 1505871600, 1, 1, 1505871773, 1, 1505871773, 1821404573, 0),
(0002, 'xw2017092002', '感受自然 易度与鲜花的一次文化交流 ', '新闻管理员', '', '&lt;p&gt;当高科技遇上传统文化是一种什么样的体验呢？&lt;/p&gt;&lt;p&gt;2017年3月29日，一直想要成为软件企业中雅君子的我们，邀请了北京天奉久文化有限公司开展了一次别开生面的鲜花交流。&amp;nbsp;&lt;/p&gt;&lt;p style=&quot;text-align: center;&quot;&gt;&lt;img src=&quot;/upload/ueditor/image/20170920/1505872053549214.jpg&quot; title=&quot;1505872053549214.jpg&quot; alt=&quot;list2.jpg&quot; width=&quot;1330&quot; height=&quot;793&quot;/&gt;&lt;/p&gt;&lt;p&gt;当日，我们迎来了婉约清扬的王越老师。（王越，号不二先生，东方花道师小原流家元教授、国家高级茶艺师、中华合香师、天奉久文化创始人。多年来赴日本、新加坡、马来西亚各地教习交流，致力于推动中国传统文化的传播。）				 &lt;/p&gt;&lt;p&gt;活动上，老师带领着我们了解花道的历史踪迹与发展脉络，引导着我们了解艺术创作的思维，建立起我们与鲜花绿叶之间的沟通桥梁。&amp;nbsp;&lt;/p&gt;&lt;p style=&quot;text-align: center;&quot;&gt;&lt;img src=&quot;/upload/ueditor/image/20170920/1505872119785631.jpg&quot; title=&quot;1505872119785631.jpg&quot; alt=&quot;newsix.jpg&quot; width=&quot;639&quot; height=&quot;486&quot;/&gt;&lt;/p&gt;&lt;p&gt;接着，我们便根据老师的讲解、对自然的感受和内心的领悟进行了花道创作。灵思巧手，奇思妙想，创造出属于我们自己与花儿之间最好的相处模式的作品。&lt;/p&gt;&lt;p style=&quot;text-align: center;&quot;&gt;&lt;img src=&quot;/upload/ueditor/image/20170920/1505872160184132.jpg&quot; title=&quot;1505872160184132.jpg&quot; alt=&quot;newseven.jpg&quot;/&gt;&lt;/p&gt;&lt;p&gt;创作过后，我们一个个迫不及待地分享着自己的心得，想要让大家也体会到在这个与自然交流的过程中自己心中美好的感受。随后，老师根据我们的创作意境与内心感想，逐一点评修改花道作品，并在点评中结合历史故事、文化典故、诗词歌赋等内容，为我们带来丰富的传统文化体验与自然交织感受。&lt;/p&gt;&lt;p style=&quot;text-align: center;&quot;&gt;&lt;img src=&quot;/upload/ueditor/image/20170920/1505872197831804.jpg&quot; title=&quot;1505872197831804.jpg&quot; alt=&quot;neweight.jpg&quot;/&gt;&lt;/p&gt;&lt;p&gt;当高科技遇上传统文化，你可能会用黄金分割点判断花枝的高低，与时俱进，平静又有趣，清澈而生动。&lt;/p&gt;', 3, 1505871960, 1505871960, 1, 1, 1505872236, 1, 1505872236, 1821405036, 0),
(0003, 'xw2017092003', '校企合作 易度与学子共赢未来 ', '新闻管理员', '', '&lt;p&gt;为了适应IT行业对高技能人才的需求，提高从业人员素质，响应国家产学研共同发展的号召。2017年6月7日广州市易度软件开发有限公司与广东交通职业技术学院校企合作基地揭牌仪式在易度会议室隆重举行。&lt;/p&gt;&lt;p style=&quot;text-align: center;&quot;&gt;&lt;img src=&quot;/upload/ueditor/image/20170920/1505872537375366.jpg&quot; title=&quot;1505872537375366.jpg&quot; alt=&quot;newtwo.jpg&quot;/&gt;&lt;/p&gt;&lt;p&gt;揭牌仪式上，公司总经理王楠和学院副院长庄越分别代表企校双方发言。王总向大家简要介绍了公司概况和发展前景，表达公司的人才需求，表达能与学院建立深层次的校企合作关系，资源共享，促进校企双方互惠双赢，共同发展的愿景。庄副院长介绍了广东交通职业技术学院的办学历程和基本情况，指出建立产学研校企合作是学院人才培养的有效途径，对此次的校企交流校企合作表示欢迎和感谢。&lt;/p&gt;', 2, 1505872440, 1505872440, 1, 1, 1505872587, 1, 1505872587, 1821405387, 0),
(0004, 'xw2017092004', '喜贺易度正式通过CMMI3资质认证 ', '新闻管理员', '', '&lt;p&gt;2017年6月28日，广州市易度软件开发有限公司会议室，来自西班牙的主任评估师 Sr. Casimiro Hernández-Parro正式宣布：广州市易度软件开发有限公司顺利通过 CMMI（软件能力成熟度集成模型）三级评审！&lt;/p&gt;&lt;p style=&quot;text-align: center;&quot;&gt;&lt;img src=&quot;/upload/ueditor/image/20170920/1505872677139117.jpg&quot; title=&quot;1505872677139117.jpg&quot; alt=&quot;list4.jpg&quot;/&gt;&lt;/p&gt;&lt;p&gt;本次评估为正式评估，自2017年6月23日至2017年6月28日，共历时6天。在这6天的时间里，主任评估师Sr. Casimiro Hernández-Parro带领着四位经验丰富的骨干组成ATM组 ，抽查了3个项目，审查了CMMI3级的18个过程域，对17人进行了5次访谈，对公司项目研发的过程管理、项目管理、工程管理和支持管理均进行了严格的审查， 最终认定易度满足CMMI3级的全部目标要求，通过评审。				 &lt;/p&gt;&lt;p&gt;				此次顺利通过CMMI3级评审是公司领导层、研发中心、大数据应用部、信息系统部、互联网应用部、解决方案部、 用户体验部、市场部、综合部等相互配合共同努力的结果，体现了易度团结合作、精诚进取的精神。				 &lt;/p&gt;&lt;p&gt;				通过CMMI三级评估是广州市易度软件开发有限公司过程改进工作的一个重要的里程碑， &amp;nbsp;标志着公司在软件需求、设计、开发、测试、项目管理及为客户提供高质量产品方面达到了一个新的水平。CMMI是一个持续改进模型，通过三级认证只是万里长征的第一步，在今后的工作中，公司将持续不断改进， 重视员工培训，提升管理水平，提高工作效率和产品质量，以实现公司成为全球领先的商业软件、信息化服务提供商的战略目标。&amp;nbsp;&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;', 1, 1505872620, 1505872620, 1, 1, 1505872752, 1, 1505872752, 1821405552, 0),
(0005, 'xw2017092005', '乔迁之喜！易度正式入主西二层 ', '新闻管理员', '/upload/news/20170920\\5689881446edab56bed29964b55b170a.jpg', '&lt;p&gt;2017年8月15日，是广州市易度软件开发有限公司值得纪念和庆贺的日子， 我们的心情无比的激动！在此正式宣布：广州市易度软件开发有限公司正式迁入广州市天河区天河软件园高普路1027号二层西。&lt;/p&gt;&lt;p style=&quot;text-align: center;&quot;&gt;&lt;img src=&quot;/upload/ueditor/image/20170920/1505872838842002.jpg&quot; title=&quot;1505872838842002.jpg&quot; alt=&quot;new5-1.jpg&quot;/&gt;&lt;/p&gt;&lt;p style=&quot;text-align: center;&quot;&gt;&lt;img src=&quot;/upload/ueditor/image/20170920/1505872862595086.jpg&quot; title=&quot;1505872862595086.jpg&quot; alt=&quot;new5-2.jpg&quot;/&gt;&lt;/p&gt;&lt;p&gt;风雨艳阳七年路，易度在王楠总经理的带领下，不断进取，飞速发展，公司的规模不断壮大。为了适应公司的蓬勃发展，为员工提供更广阔的平台，提升公司整体竞争力， 增强员工的凝聚力和归属感。公司一举迁入西二层，阔达千坪、器物先进， 为今后公司与员工的共同发展打下坚实的基础。&lt;/p&gt;&lt;p style=&quot;text-align: center;&quot;&gt;&lt;img src=&quot;/upload/ueditor/image/20170920/1505872904711014.jpg&quot; title=&quot;1505872904711014.jpg&quot; alt=&quot;new5-8.jpg&quot;/&gt;&lt;/p&gt;&lt;p&gt;忆往已，我们感恩从前；看今朝，我们满志踌躇；展未来，我们豪情万丈。从今天开始我们将翻开新的一页，迈开全新的步伐，迎接更高的挑战。&lt;/p&gt;&lt;p style=&quot;text-align: center;&quot;&gt;&lt;img src=&quot;/upload/ueditor/image/20170920/1505872949501277.jpg&quot; title=&quot;1505872949501277.jpg&quot; alt=&quot;new5-3.jpg&quot;/&gt;&lt;/p&gt;&lt;p style=&quot;text-align: center;&quot;&gt;&lt;img src=&quot;/upload/ueditor/image/20170920/1505872965995884.jpg&quot; title=&quot;1505872965995884.jpg&quot; alt=&quot;new5-4.jpg&quot;/&gt;&lt;/p&gt;&lt;p style=&quot;text-align: center;&quot;&gt;&lt;img src=&quot;/upload/ueditor/image/20170920/1505873002360649.jpg&quot; title=&quot;1505873002360649.jpg&quot; alt=&quot;new5-5.jpg&quot;/&gt;&lt;/p&gt;&lt;p style=&quot;text-align: center;&quot;&gt;&lt;img src=&quot;/upload/ueditor/image/20170920/1505873012595000.jpg&quot; title=&quot;1505873012595000.jpg&quot; alt=&quot;new5-6.jpg&quot;/&gt;&lt;/p&gt;&lt;p style=&quot;text-align: center;&quot;&gt;&lt;img src=&quot;/upload/ueditor/image/20170920/1505873021129138.jpg&quot; title=&quot;1505873021129138.jpg&quot; alt=&quot;new5-7.jpg&quot;/&gt;&lt;/p&gt;', 2, 1505872740, 1505872740, 1, 1, 1505893318, 1, 1505836800, 1821369600, 0),
(0006, 'xw2017092006', '易度专项技能训练宣讲会 为每一个学子创造机会', '新闻管理员', '/upload/news/20170920\\99fc92f7dd66b553ebcb01d242f9c9d3.jpg', '&lt;p&gt;2017年8月28日广州市易度软件开发有限公司第二届专项技能训练宣讲会在广东交通职业技术学院成功举行。						 &amp;nbsp; &amp;nbsp;&lt;/p&gt;&lt;p&gt;易度宣讲团队以专业的态度、共享的姿态向莘莘学子传递企业的文化、企业的精神以及专项技能训练的标准。骄阳如火的八月依然无法减退学生们的热情，本次易度公司的专项技能训练宣讲会得到了同学们的热烈响应，座无虚席。&amp;nbsp;&lt;/p&gt;&lt;p style=&quot;text-align: center;&quot;&gt;&lt;img title=&quot;1505873158125863.jpg&quot; alt=&quot;new6-1.jpg&quot; src=&quot;/upload/ueditor/image/20170920/1505873158125863.jpg&quot;/&gt;&lt;/p&gt;&lt;p&gt;2017年8月28日广州市易度软件开发有限公司第二届专项技能训练宣讲会在广东交通职业技术学院成功举行。						 &amp;nbsp; &amp;nbsp;&lt;/p&gt;&lt;p&gt;易度宣讲团队以专业的态度、共享的姿态向莘莘学子传递企业的文化、企业的精神以及专项技能训练的标准。骄阳如火的八月依然无法减退学生们的热情，本次易度公司的专项技能训练宣讲会得到了同学们的热烈响应，座无虚席。&amp;nbsp;&lt;/p&gt;&lt;p style=&quot;text-align: center;&quot;&gt;&lt;img title=&quot;1505873182144888.jpg&quot; alt=&quot;new6-2.jpg&quot; src=&quot;/upload/ueditor/image/20170920/1505873182144888.jpg&quot;/&gt;&lt;/p&gt;&lt;p style=&quot;text-align: center;&quot;&gt;&lt;img title=&quot;1505873195125020.jpg&quot; alt=&quot;new6-3.jpg&quot; src=&quot;/upload/ueditor/image/20170920/1505873195125020.jpg&quot;/&gt;&lt;/p&gt;&lt;p style=&quot;text-align: center;&quot;&gt;&lt;img title=&quot;1505873208933746.jpg&quot; alt=&quot;new6-4.jpg&quot; src=&quot;/upload/ueditor/image/20170920/1505873208933746.jpg&quot;/&gt;&lt;/p&gt;&lt;p&gt;第一届易度专项技能训练得到了校方和同学们的一致好评，本次作为第二届易度专项技能训练启动宣讲更是受到了校方与同学们的热切欢迎与满怀感激。						 &amp;nbsp; &amp;nbsp;&lt;/p&gt;&lt;p&gt;易度专项技能训练既为加强校企合作，又为学子提供培训实习的平台与机会，既增强了同学们的综合能力，又为易度提供了新鲜的血液，实现共赢，共同发展，共同进步，共创未来。&amp;nbsp;&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;', 3, 1505873040, 1505873040, 0, 1, 1505893174, 1, 1505836800, 1821369600, 1);

-- --------------------------------------------------------

--
-- 表的结构 `yd_auth_access`
--

CREATE TABLE IF NOT EXISTS `yd_auth_access` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `rule_id` int(10) unsigned NOT NULL COMMENT '规则ID',
  `role_id` int(10) unsigned NOT NULL COMMENT '角色',
  `rule_name` varchar(100) NOT NULL DEFAULT '' COMMENT '规则唯一英文标识,全小写',
  `type` varchar(30) NOT NULL DEFAULT '' COMMENT '权限规则分类,请加应用前缀,如admin_',
  PRIMARY KEY (`id`),
  KEY `role_id` (`role_id`),
  KEY `rule_name` (`rule_name`) USING BTREE
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='权限授权表' AUTO_INCREMENT=107 ;

--
-- 转存表中的数据 `yd_auth_access`
--

INSERT INTO `yd_auth_access` (`id`, `rule_id`, `role_id`, `rule_name`, `type`) VALUES
(106, 1, 2, 'admin/work/index', 'admin_url');

-- --------------------------------------------------------

--
-- 表的结构 `yd_auth_rule`
--

CREATE TABLE IF NOT EXISTS `yd_auth_rule` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT COMMENT '规则id,自增主键',
  `parent_id` mediumint(8) unsigned NOT NULL DEFAULT '0' COMMENT '上级ID',
  `module` varchar(20) NOT NULL COMMENT '规则所属module',
  `type` varchar(30) NOT NULL DEFAULT 'admin_url' COMMENT '权限规则分类，请加应用前缀,如admin_',
  `name` varchar(255) NOT NULL DEFAULT '' COMMENT '规则唯一英文标识,全小写',
  `param` varchar(255) DEFAULT NULL COMMENT '额外url参数',
  `title` varchar(20) NOT NULL DEFAULT '' COMMENT '规则中文描述',
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '是否有效(0:无效,1:有效)',
  `condition` varchar(300) NOT NULL DEFAULT '' COMMENT '规则附加条件',
  `deleted` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '是否删除',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`),
  KEY `module` (`module`,`status`,`type`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='权限规则表' AUTO_INCREMENT=73 ;

--
-- 转存表中的数据 `yd_auth_rule`
--

INSERT INTO `yd_auth_rule` (`id`, `parent_id`, `module`, `type`, `name`, `param`, `title`, `status`, `condition`, `deleted`) VALUES
(1, 0, 'admin', 'admin_url', 'admin/Work/index', NULL, '首页', 1, '', 0),
(2, 0, 'admin', 'admin_url', 'admin/Nav/Msg', NULL, '信息发布管理', 1, '', 0),
(3, 2, 'admin', 'admin_url', 'admin/News/default', NULL, '新闻管理', 1, '', 0),
(4, 3, 'admin', 'admin_url', 'admin/News/newsList', NULL, '新闻列表', 1, '', 0),
(5, 3, 'admin', 'admin_url', 'admin/News/newsAdd', NULL, '添加新闻', 1, '', 0),
(6, 3, 'admin', 'admin_url', 'admin/News/_newsAdd', NULL, '添加新闻提交', 1, '', 0),
(7, 3, 'admin', 'admin_url', 'admin/News/newsEdit', NULL, '编辑新闻', 1, '', 0),
(8, 3, 'admin', 'admin_url', 'admin/News/_newsEdit', NULL, '编辑新闻提交', 1, '', 0),
(9, 3, 'admin', 'admin_url', 'admin/News/preview', NULL, '新闻预览', 1, '', 0),
(10, 3, 'admin', 'admin_url', 'admin/News/top', NULL, '新闻置顶', 1, '', 0),
(11, 3, 'admin', 'admin_url', 'admin/News/down', NULL, '取消新闻置顶', 1, '', 0),
(12, 3, 'admin', 'admin_url', 'admin/News/putaway', NULL, '新闻上架', 1, '', 0),
(13, 3, 'admin', 'admin_url', 'admin/News/low', NULL, '新闻下架', 1, '', 0),
(14, 3, 'admin', 'admin_url', 'admin/News/delete', NULL, '删除新闻', 1, '', 0),
(15, 3, 'admin', 'admin_url', 'admin/News/cateList', NULL, '新闻分类列表', 1, '', 0),
(16, 3, 'admin', 'admin_url', 'admin/News/cateAdd', NULL, '添加新闻分类', 1, '', 0),
(17, 3, 'admin', 'admin_url', 'admin/News/postCateAdd', NULL, '处理添加新闻分类', 1, '', 0),
(18, 3, 'admin', 'admin_url', 'admin/News/cateEdit', NULL, '编辑新闻分类', 1, '', 0),
(19, 3, 'admin', 'admin_url', 'admin/News/postCateEdit', NULL, '处理编辑新闻分类', 1, '', 0),
(20, 3, 'admin', 'admin_url', 'admin/News/PostDelete', NULL, '删除新闻分类', 1, '', 0),
(21, 2, 'admin', 'admin_url', 'admin/Jobs/default', NULL, '招聘管理', 1, '', 0),
(22, 21, 'admin', 'admin_url', 'admin/Jobs/jobsList', NULL, '招聘列表', 1, '', 0),
(23, 21, 'admin', 'admin_url', 'admin/Jobs/jobsAdd', NULL, '添加招聘', 1, '', 0),
(24, 21, 'admin', 'admin_url', 'admin/Jobs/addJobs', NULL, '处理添加招聘', 1, '', 0),
(25, 21, 'admin', 'admin_url', 'admin/Jobs/jobsEdit', NULL, '编辑招聘', 1, '', 0),
(26, 21, 'admin', 'admin_url', 'admin/Jobs/jobsSetTop', NULL, '招聘置顶操作', 1, '', 0),
(27, 21, 'admin', 'admin_url', 'admin/Jobs/jobsOnOff', NULL, '招聘启用操作', 1, '', 0),
(28, 21, 'admin', 'admin_url', 'admin/Jobs/jobsDel', NULL, '删除招聘', 1, '', 0),
(29, 21, 'admin', 'admin_url', 'admin/Jobs/jobsSave', NULL, '处理编辑招聘', 1, '', 0),
(30, 21, 'admin', 'admin_url', 'admin/Jobs/jobscate', NULL, '招聘分类', 1, '', 0),
(31, 21, 'admin', 'admin_url', 'admin/Jobs/cateAdd', NULL, '添加招聘分类', 1, '', 0),
(32, 21, 'admin', 'admin_url', 'admin/Jobs/postCateAdd', NULL, '处理添加招聘分类', 1, '', 0),
(33, 21, 'admin', 'admin_url', 'admin/Jobs/cateEdit', NULL, '编辑招聘分类', 1, '', 0),
(34, 21, 'admin', 'admin_url', 'admin/Jobs/postCateEdit', NULL, '处理编辑招聘分类', 1, '', 0),
(35, 21, 'admin', 'admin_url', 'admin/Jobs/postDelete', NULL, '删除招聘分类', 1, '', 0),
(36, 0, 'admin', 'admin_url', 'admin/Nav/System', NULL, '系统管理', 1, '', 0),
(37, 36, 'admin', 'admin_url', 'admin/Menu/default', NULL, '菜单管理', 1, '', 0),
(38, 36, 'admin', 'admin_url', 'admin/User/default', NULL, '用户管理', 1, '', 0),
(39, 36, 'admin', 'admin_url', 'admin/Dept/default', NULL, '部门管理', 1, '', 1506406176),
(40, 36, 'admin', 'admin_url', 'admin/Rule/default', NULL, '权限管理', 1, '', 0),
(41, 36, 'admin', 'admin_url', 'admin/Role/default', NULL, '角色管理', 1, '', 0),
(42, 36, 'admin', 'admin_url', 'admin/Log/default', NULL, '操作日志', 1, '', 0),
(43, 37, 'admin', 'admin_url', 'admin/Menu/menuList', NULL, '菜单列表', 1, '', 0),
(44, 41, 'admin', 'admin_url', 'admin/Role/roleList', NULL, '角色列表', 1, '', 0),
(45, 40, 'admin', 'admin_url', 'admin/Rule/ruleList', NULL, '权限列表', 1, '', 0),
(46, 39, 'admin', 'admin_url', 'admin/Dept/deptList', NULL, '部门列表', 1, '', 1506406050),
(48, 38, 'admin', 'admin_url', 'admin/User/userList', NULL, '用户列表', 1, '', 0),
(49, 37, 'admin', 'admin_url', 'admin/Menu/menuAdd', NULL, '添加菜单', 1, '', 0),
(50, 37, 'admin', 'admin_url', 'admin/Menu/postMenuAdd', NULL, '处理添加菜单', 1, '', 0),
(51, 37, 'admin', 'admin_url', 'admin/Menu/menuEdit', NULL, '编辑菜单', 1, '', 0),
(52, 37, 'admin', 'admin_url', 'admin/Menu/postMenuEdit', NULL, '处理编辑菜单', 1, '', 0),
(53, 37, 'admin', 'admin_url', 'admin/Menu/postDelete', NULL, '删除菜单', 1, '', 0),
(54, 38, 'admin', 'admin_url', 'admin/User/userAdd', NULL, '添加用户', 1, '', 0),
(55, 38, 'admin', 'admin_url', 'admin/User/postUserAdd', NULL, '处理添加用户', 1, '', 0),
(56, 38, 'admin', 'admin_url', 'admin/User/userEdit', NULL, '编辑用户', 1, '', 0),
(57, 38, 'admin', 'admin_url', 'admin/User/postUserEdit', NULL, '处理编辑用户', 1, '', 0),
(58, 38, 'admin', 'admin_url', 'admin/User/postDelete', NULL, '删除用户', 1, '', 0),
(59, 40, 'admin', 'admin_url', 'admin/Rule/ruleAdd', NULL, '添加权限节点', 1, '', 0),
(60, 40, 'admin', 'admin_url', 'admin/Rule/postRuleAdd', NULL, '处理添加权限节点', 1, '', 0),
(61, 40, 'admin', 'admin_url', 'admin/Rule/ruleEdit', NULL, '编辑权限节点', 1, '', 0),
(62, 40, 'admin', 'admin_url', 'admin/Rule/postRuleEdit', NULL, '处理编辑权限节点', 1, '', 0),
(63, 40, 'admin', 'admin_url', 'admin/Rule/postDelete', NULL, '删除权限节点', 1, '', 0),
(64, 41, 'admin', 'admin_url', 'admin/Role/roleAdd', NULL, '添加角色', 1, '', 0),
(65, 41, 'admin', 'admin_url', 'admin/Role/postRoleAdd', NULL, '处理添加角色', 1, '', 0),
(66, 41, 'admin', 'admin_url', 'admin/Role/roleEdit', NULL, '编辑角色', 1, '', 0),
(67, 41, 'admin', 'admin_url', 'admin/Role/postRuleEdit', NULL, '处理编辑角色', 1, '', 0),
(68, 41, 'admin', 'admin_url', 'admin/Role/postDelete', NULL, '删除角色', 1, '', 0),
(69, 3, 'admin', 'admin_url', 'admin/News/uploadImg', NULL, '新闻封面上传', 1, '', 0),
(70, 38, 'admin', 'admin_url', 'admin/User/uploadImg', NULL, '用户头像上传', 1, '', 0),
(71, 41, 'admin', 'admin_url', 'admin/Role/authrize', NULL, '角色权限设置', 1, '', 0),
(72, 41, 'admin', 'admin_url', 'admin/Role/postAuthrize', NULL, '处理角色权限设置', 1, '', 0);

-- --------------------------------------------------------

--
-- 表的结构 `yd_dept`
--

CREATE TABLE IF NOT EXISTS `yd_dept` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `dept_code` varchar(255) DEFAULT NULL,
  `dept_name` varchar(255) DEFAULT NULL,
  `dept_level` int(11) DEFAULT NULL,
  `pid` int(11) DEFAULT NULL,
  `dept_type` int(11) DEFAULT NULL,
  `isdeleted` tinyint(4) DEFAULT '0',
  `create_user` varchar(255) DEFAULT NULL,
  `create_time` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=21 ;

--
-- 转存表中的数据 `yd_dept`
--

INSERT INTO `yd_dept` (`id`, `dept_code`, `dept_name`, `dept_level`, `pid`, `dept_type`, `isdeleted`, `create_user`, `create_time`) VALUES
(1, 'bm_001', '总裁办', 0, -1, 1, 0, 'admin', '2017-09-26 03:44:59'),
(2, 'bm_002', '市场部', 1, 1, 2, 0, 'admin', '2017-09-26 03:45:00'),
(3, 'bm_003', '研发部', 1, 1, 2, 0, 'admin', '2017-09-26 03:45:00'),
(4, 'bm_004', '产品管理部', 2, 2, 3, 0, 'admin', '2017-09-26 03:45:00'),
(5, 'bm_005', '业务拓展部', 2, 2, 3, 0, 'admin', '2017-09-26 03:45:01'),
(6, 'bm_006', '硬件研发部', 2, 3, 3, 0, 'admin', '2017-09-26 03:45:01'),
(7, 'bm_007', '软件研发部', 2, 3, 3, 0, 'admin', '2017-09-26 03:45:01'),
(8, 'bm_008', '123', 0, -1, 3, 0, 'admin', '2017-09-26 03:45:04'),
(9, NULL, '测试事务回滚', NULL, NULL, NULL, 0, NULL, NULL),
(20, NULL, '测试事务回滚4', NULL, NULL, NULL, 0, NULL, NULL),
(19, NULL, '测试事务回滚3', NULL, NULL, NULL, 0, NULL, NULL);

-- --------------------------------------------------------

--
-- 表的结构 `yd_jobs`
--

CREATE TABLE IF NOT EXISTS `yd_jobs` (
  `ID` smallint(4) unsigned zerofill NOT NULL AUTO_INCREMENT COMMENT '主键',
  `code` varchar(10) NOT NULL COMMENT '招聘编号',
  `job_title` varchar(38) NOT NULL COMMENT '职位名称',
  `job_type` int(10) NOT NULL COMMENT '职位类别',
  `author` varchar(250) NOT NULL COMMENT '发布者',
  `istop` tinyint(1) NOT NULL COMMENT '是否置顶 1：是  2：否',
  `job_description` text NOT NULL COMMENT '岗位职责',
  `create_at` datetime NOT NULL COMMENT '发布时间',
  `update_at` datetime NOT NULL COMMENT '修改时间',
  `status` tinyint(1) unsigned NOT NULL COMMENT '状态： 1：已发布 2：已暂停 3：已结束',
  `start_time` date NOT NULL COMMENT '有效开始时间',
  `end_time` date NOT NULL COMMENT '有效结束时间',
  `isdeleted` tinyint(4) NOT NULL DEFAULT '0' COMMENT '删除标识 0：未删除  1：已删除',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='人才招聘表' AUTO_INCREMENT=10 ;

--
-- 转存表中的数据 `yd_jobs`
--

INSERT INTO `yd_jobs` (`ID`, `code`, `job_title`, `job_type`, `author`, `istop`, `job_description`, `create_at`, `update_at`, `status`, `start_time`, `end_time`, `isdeleted`) VALUES
(0001, 'zp20170001', 'JAVA软件工程师', 1, '彭丽娟', 2, '<p><span style="color: rgb(111, 111, 111); font-family: 微软雅黑; font-size: 12px; line-height: 34px; widows: 1; background-color: rgb(255, 255, 255);">岗位职责：</span><br/><span style="color: rgb(111, 111, 111); font-family: 微软雅黑; font-size: 12px; line-height: 34px; widows: 1; background-color: rgb(255, 255, 255);">1.	负责软件系统代码的实现，编写代码注释和开发文档；</span><br/><span style="color: rgb(111, 111, 111); font-family: 微软雅黑; font-size: 12px; line-height: 34px; widows: 1; background-color: rgb(255, 255, 255);">2.	辅助进行系统的功能定义、程序设计；</span><br/><span style="color: rgb(111, 111, 111); font-family: 微软雅黑; font-size: 12px; line-height: 34px; widows: 1; background-color: rgb(255, 255, 255);">3.	根据设计文档或需求说明完成代码编写、调试、测试和维护；</span><br/><span style="color: rgb(111, 111, 111); font-family: 微软雅黑; font-size: 12px; line-height: 34px; widows: 1; background-color: rgb(255, 255, 255);">4.	分析并解决软件开发过程中的问题；</span><br/><span style="color: rgb(111, 111, 111); font-family: 微软雅黑; font-size: 12px; line-height: 34px; widows: 1; background-color: rgb(255, 255, 255);">5.	负责功能模块的单元测试、集成测试、系统测试工作；</span><br/><span style="color: rgb(111, 111, 111); font-family: 微软雅黑; font-size: 12px; line-height: 34px; widows: 1; background-color: rgb(255, 255, 255);">6.	配合项目经理完成相关任务目标。</span><br/><span style="color: rgb(111, 111, 111); font-family: 微软雅黑; font-size: 12px; line-height: 34px; widows: 1; background-color: rgb(255, 255, 255);">任职要求：</span><br/><span style="color: rgb(111, 111, 111); font-family: 微软雅黑; font-size: 12px; line-height: 34px; widows: 1; background-color: rgb(255, 255, 255);">1.	本科及以上学历，计算机相关专业；</span><br/><span style="color: rgb(111, 111, 111); font-family: 微软雅黑; font-size: 12px; line-height: 34px; widows: 1; background-color: rgb(255, 255, 255);">2.	精通Java编程语言，熟悉J2EE架构；&nbsp;</span><br/><span style="color: rgb(111, 111, 111); font-family: 微软雅黑; font-size: 12px; line-height: 34px; widows: 1; background-color: rgb(255, 255, 255);">3.	熟悉Struts、hibernate、Spring等常用开发框架；&nbsp;</span><br/><span style="color: rgb(111, 111, 111); font-family: 微软雅黑; font-size: 12px; line-height: 34px; widows: 1; background-color: rgb(255, 255, 255);">4.	熟悉HTML/CSS/JavaScript；&nbsp;</span><br/><span style="color: rgb(111, 111, 111); font-family: 微软雅黑; font-size: 12px; line-height: 34px; widows: 1; background-color: rgb(255, 255, 255);">5.	熟悉Oracle、SQL Server或MySQL数据库；&nbsp;</span><br/><span style="color: rgb(111, 111, 111); font-family: 微软雅黑; font-size: 12px; line-height: 34px; widows: 1; background-color: rgb(255, 255, 255);">6.	熟悉Tomcat、Jboss、Weblogic 等web server；&nbsp;</span><br/><span style="color: rgb(111, 111, 111); font-family: 微软雅黑; font-size: 12px; line-height: 34px; widows: 1; background-color: rgb(255, 255, 255);">7.	对技术有强烈的兴趣，喜欢钻研，具有良好的学习能力；&nbsp;</span></p>', '2017-09-13 00:00:00', '2017-09-18 14:35:36', 1, '2017-09-14', '2017-10-01', 1),
(0002, 'zp20170002', 'PHP软件工程师', 1, '彭丽娟', 1, '<p><span style="color: rgb(111, 111, 111); font-family: 微软雅黑; font-size: 12px; line-height: 34px; widows: 1; background-color: rgb(255, 255, 255);">岗位职责：</span><br/><span style="color: rgb(111, 111, 111); font-family: 微软雅黑; font-size: 12px; line-height: 34px; widows: 1; background-color: rgb(255, 255, 255);">1.	负责网站开发和维护；</span><br/><span style="color: rgb(111, 111, 111); font-family: 微软雅黑; font-size: 12px; line-height: 34px; widows: 1; background-color: rgb(255, 255, 255);">2.	负责对网站进行实施，测试；</span><br/><span style="color: rgb(111, 111, 111); font-family: 微软雅黑; font-size: 12px; line-height: 34px; widows: 1; background-color: rgb(255, 255, 255);">3.	负责现有网站的维护和升级；</span><br/><span style="color: rgb(111, 111, 111); font-family: 微软雅黑; font-size: 12px; line-height: 34px; widows: 1; background-color: rgb(255, 255, 255);">4.	处理移动接口的开发；</span><br/><span style="color: rgb(111, 111, 111); font-family: 微软雅黑; font-size: 12px; line-height: 34px; widows: 1; background-color: rgb(255, 255, 255);">5.	负责解决开发过程中的技术问题；</span><br/><span style="color: rgb(111, 111, 111); font-family: 微软雅黑; font-size: 12px; line-height: 34px; widows: 1; background-color: rgb(255, 255, 255);">6.	负责相关技术文档的撰写负责相关技术文档的撰写</span><br/><span style="color: rgb(111, 111, 111); font-family: 微软雅黑; font-size: 12px; line-height: 34px; widows: 1; background-color: rgb(255, 255, 255);">任职要求：</span><br/><span style="color: rgb(111, 111, 111); font-family: 微软雅黑; font-size: 12px; line-height: 34px; widows: 1; background-color: rgb(255, 255, 255);">1.	计算机专业，有扎实的编程功底和良好的编程习惯；&nbsp;</span><br/><span style="color: rgb(111, 111, 111); font-family: 微软雅黑; font-size: 12px; line-height: 34px; widows: 1; background-color: rgb(255, 255, 255);">2.	熟练应用MVC架构，精通PHP+MYSQL程序设计、开发、优化；&nbsp;</span><br/><span style="color: rgb(111, 111, 111); font-family: 微软雅黑; font-size: 12px; line-height: 34px; widows: 1; background-color: rgb(255, 255, 255);">3.	精通HTML，CSS，Javascript，html等web开发技术；&nbsp;</span><br/><span style="color: rgb(111, 111, 111); font-family: 微软雅黑; font-size: 12px; line-height: 34px; widows: 1; background-color: rgb(255, 255, 255);">4.	勤奋敬业实干、责任心强、积极进取、喜欢学习新技术、善于解决问题，沟通能力强、具备良好的团队合作精神和抗压能力。</span></p>', '2017-09-13 00:00:00', '2017-09-13 00:00:00', 1, '2017-09-13', '2017-09-30', 0),
(0003, 'zp20170003', '.Net软件工程师', 1, '彭丽娟', 2, '<p><span style="color: rgb(111, 111, 111); font-family: 微软雅黑; font-size: 12px; line-height: 34px; widows: 1; background-color: rgb(255, 255, 255);">岗位职责：</span><br/><span style="color: rgb(111, 111, 111); font-family: 微软雅黑; font-size: 12px; line-height: 34px; widows: 1; background-color: rgb(255, 255, 255);">1.	负责产品、项目具体代码实现；</span><br/><span style="color: rgb(111, 111, 111); font-family: 微软雅黑; font-size: 12px; line-height: 34px; widows: 1; background-color: rgb(255, 255, 255);">2.	参与产品、项目部分测试任务；</span><br/><span style="color: rgb(111, 111, 111); font-family: 微软雅黑; font-size: 12px; line-height: 34px; widows: 1; background-color: rgb(255, 255, 255);">3.	参与产品、项目部分需求,&nbsp;编写、评审和实现；</span><br/><span style="color: rgb(111, 111, 111); font-family: 微软雅黑; font-size: 12px; line-height: 34px; widows: 1; background-color: rgb(255, 255, 255);">4.	参与部分系统架构和数据结构设计和实现。</span><br/><span style="color: rgb(111, 111, 111); font-family: 微软雅黑; font-size: 12px; line-height: 34px; widows: 1; background-color: rgb(255, 255, 255);">任职要求：</span><br/><span style="color: rgb(111, 111, 111); font-family: 微软雅黑; font-size: 12px; line-height: 34px; widows: 1; background-color: rgb(255, 255, 255);">1.	1年以上asp.net开发经验，无实际项目经验、工作经历者请勿投递；</span><br/><span style="color: rgb(111, 111, 111); font-family: 微软雅黑; font-size: 12px; line-height: 34px; widows: 1; background-color: rgb(255, 255, 255);">2.	熟悉&nbsp;.net&nbsp;framework&nbsp;架构；</span><br/><span style="color: rgb(111, 111, 111); font-family: 微软雅黑; font-size: 12px; line-height: 34px; widows: 1; background-color: rgb(255, 255, 255);">3.	熟悉&nbsp;c#,asp.net,dhtml,javascript,ajax,web&nbsp;service；</span><br/><span style="color: rgb(111, 111, 111); font-family: 微软雅黑; font-size: 12px; line-height: 34px; widows: 1; background-color: rgb(255, 255, 255);">4.	熟悉&nbsp;sql&nbsp;server&nbsp;或&nbsp;oracle。</span></p>', '2017-09-13 00:00:00', '2017-09-13 00:00:00', 1, '2017-09-13', '2017-09-30', 0),
(0004, 'zp20170004', '项目经理', 2, '彭丽娟', 2, '<p><span style="color: rgb(111, 111, 111); font-family: 微软雅黑; font-size: 12px; line-height: 34px; widows: 1; background-color: rgb(255, 255, 255);">岗位职责:</span><br/><span style="color: rgb(111, 111, 111); font-family: 微软雅黑; font-size: 12px; line-height: 34px; widows: 1; background-color: rgb(255, 255, 255);">1.	负责公司软件项目研发的日常管理；&nbsp;</span><br/><span style="color: rgb(111, 111, 111); font-family: 微软雅黑; font-size: 12px; line-height: 34px; widows: 1; background-color: rgb(255, 255, 255);">2.	制定软件开发计划及进度跟踪，确保按时交付任务；&nbsp;</span><br/><span style="color: rgb(111, 111, 111); font-family: 微软雅黑; font-size: 12px; line-height: 34px; widows: 1; background-color: rgb(255, 255, 255);">3.	协调团队工作，解决项目实施过程中遇到的问题；&nbsp;</span><br/><span style="color: rgb(111, 111, 111); font-family: 微软雅黑; font-size: 12px; line-height: 34px; widows: 1; background-color: rgb(255, 255, 255);">4.	需要与客户进行项目沟通，定期给客户汇报工作；&nbsp;</span><br/><span style="color: rgb(111, 111, 111); font-family: 微软雅黑; font-size: 12px; line-height: 34px; widows: 1; background-color: rgb(255, 255, 255);">5.	利用工具进行任务计划管理及项目相关文档的撰写。&nbsp;</span><br/><span style="color: rgb(111, 111, 111); font-family: 微软雅黑; font-size: 12px; line-height: 34px; widows: 1; background-color: rgb(255, 255, 255);">任职要求&nbsp;：</span><br/><span style="color: rgb(111, 111, 111); font-family: 微软雅黑; font-size: 12px; line-height: 34px; widows: 1; background-color: rgb(255, 255, 255);">1.	有计算机信息及管理类相关专业全日制大专以上学历；&nbsp;</span><br/><span style="color: rgb(111, 111, 111); font-family: 微软雅黑; font-size: 12px; line-height: 34px; widows: 1; background-color: rgb(255, 255, 255);">2.	具备IT项目管理的一般理论和知识，有至少一年IT项目管理的相关经验；&nbsp;</span><br/><span style="color: rgb(111, 111, 111); font-family: 微软雅黑; font-size: 12px; line-height: 34px; widows: 1; background-color: rgb(255, 255, 255);">3.	有较强的沟通和协调能力和团队合作精神，良好的计划性和责任心；&nbsp;</span><br/><span style="color: rgb(111, 111, 111); font-family: 微软雅黑; font-size: 12px; line-height: 34px; widows: 1; background-color: rgb(255, 255, 255);">4.	熟练掌握软件工程的基本原理，能够规范地撰写软件分析和设计方案；&nbsp;</span><br/><span style="color: rgb(111, 111, 111); font-family: 微软雅黑; font-size: 12px; line-height: 34px; widows: 1; background-color: rgb(255, 255, 255);">5.	熟练使用项目管理类的相关工具，制作工作计划及汇报等文档。</span></p>', '2017-09-13 00:00:00', '2017-09-13 00:00:00', 1, '2017-09-13', '2017-09-30', 0),
(0005, 'zp20170005', 'UI / 网页设计师', 1, '彭丽娟', 2, '<p><span style="color: rgb(111, 111, 111); font-family: 微软雅黑; font-size: 12px; line-height: 34px; widows: 1; background-color: rgb(255, 255, 255);">岗位职责：</span><br/><span style="color: rgb(111, 111, 111); font-family: 微软雅黑; font-size: 12px; line-height: 34px; widows: 1; background-color: rgb(255, 255, 255);">1.	负责软件系统整体视觉设计；</span><br/><span style="color: rgb(111, 111, 111); font-family: 微软雅黑; font-size: 12px; line-height: 34px; widows: 1; background-color: rgb(255, 255, 255);">2.	能支撑智能手机(iphone/android系统)、客户端软件操作界面设计，及图标ICON设计；</span><br/><span style="color: rgb(111, 111, 111); font-family: 微软雅黑; font-size: 12px; line-height: 34px; widows: 1; background-color: rgb(255, 255, 255);">3.	与项目团队配合，参与设计用户体验，交互呈现，并站在用户角度去思考，提高UI的可用性，继而优化设计；</span><br/><span style="color: rgb(111, 111, 111); font-family: 微软雅黑; font-size: 12px; line-height: 34px; widows: 1; background-color: rgb(255, 255, 255);">4.	分析各项目的界面美观性、操作友好性的功能，进行持续美化改进工作；</span><br/><span style="color: rgb(111, 111, 111); font-family: 微软雅黑; font-size: 12px; line-height: 34px; widows: 1; background-color: rgb(255, 255, 255);">5.	引领公司小组成员完善公司设计体系，指导新人设计与技术问题；</span><br/><span style="color: rgb(111, 111, 111); font-family: 微软雅黑; font-size: 12px; line-height: 34px; widows: 1; background-color: rgb(255, 255, 255);">6.	组织技能培训事项，培养公司技能人才。</span><br/><span style="color: rgb(111, 111, 111); font-family: 微软雅黑; font-size: 12px; line-height: 34px; widows: 1; background-color: rgb(255, 255, 255);">任职要求：</span><br/><span style="color: rgb(111, 111, 111); font-family: 微软雅黑; font-size: 12px; line-height: 34px; widows: 1; background-color: rgb(255, 255, 255);">1.	能够熟练使用Photoshop，Coreldraw等平面设计软件进行静态图片，矢量图形的设计，制作和处理；</span><br/><span style="color: rgb(111, 111, 111); font-family: 微软雅黑; font-size: 12px; line-height: 34px; widows: 1; background-color: rgb(255, 255, 255);">2.	能够熟练的UI 设计与制作（网站或者移动终端（手机、平板）的界面）；</span><br/><span style="color: rgb(111, 111, 111); font-family: 微软雅黑; font-size: 12px; line-height: 34px; widows: 1; background-color: rgb(255, 255, 255);">3.	工作积极主动、有责任心、团队合作精神良好；</span><br/><span style="color: rgb(111, 111, 111); font-family: 微软雅黑; font-size: 12px; line-height: 34px; widows: 1; background-color: rgb(255, 255, 255);">4.	精通HTML、CSS，熟悉页面架构和布局，对Web标准和标签语义化有深入理解，能通过JS/JQ书写常见的效果。</span></p>', '2017-09-13 00:00:00', '2017-09-13 00:00:00', 1, '2017-09-13', '2017-09-30', 0),
(0006, 'zp20170006', '软件需求分析师', 3, '彭丽娟', 2, '<p><span style="color: rgb(111, 111, 111); font-family: 微软雅黑; font-size: 12px; line-height: 34px; widows: 1; background-color: rgb(255, 255, 255);">岗位职责：</span><br/><span style="color: rgb(111, 111, 111); font-family: 微软雅黑; font-size: 12px; line-height: 34px; widows: 1; background-color: rgb(255, 255, 255);">1.	负责需求调研工作，获取客户需求，进行需求分析；</span><br/><span style="color: rgb(111, 111, 111); font-family: 微软雅黑; font-size: 12px; line-height: 34px; widows: 1; background-color: rgb(255, 255, 255);">2.	完成需求规格化处理，编制需求规格说明书；</span><br/><span style="color: rgb(111, 111, 111); font-family: 微软雅黑; font-size: 12px; line-height: 34px; widows: 1; background-color: rgb(255, 255, 255);">3.	协助项目经理进行产品需求管理，包括对需求点的跟踪和验证；</span><br/><span style="color: rgb(111, 111, 111); font-family: 微软雅黑; font-size: 12px; line-height: 34px; widows: 1; background-color: rgb(255, 255, 255);">4.	协助项目经理进行用户手册、安装指南等产品文档化管理工作。</span><br/><span style="color: rgb(111, 111, 111); font-family: 微软雅黑; font-size: 12px; line-height: 34px; widows: 1; background-color: rgb(255, 255, 255);">任职要求：</span><br/><span style="color: rgb(111, 111, 111); font-family: 微软雅黑; font-size: 12px; line-height: 34px; widows: 1; background-color: rgb(255, 255, 255);">1.	教育背景：计算机、自动化等相关专业本科以上学历。</span><br/><span style="color: rgb(111, 111, 111); font-family: 微软雅黑; font-size: 12px; line-height: 34px; widows: 1; background-color: rgb(255, 255, 255);">2.	专业技能：</span><br/><span style="color: rgb(111, 111, 111); font-family: 微软雅黑; font-size: 12px; line-height: 34px; widows: 1; background-color: rgb(255, 255, 255);">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 1） 熟悉软件工程理论知识，掌握需求获取和分析方法；</span><br/><span style="color: rgb(111, 111, 111); font-family: 微软雅黑; font-size: 12px; line-height: 34px; widows: 1; background-color: rgb(255, 255, 255);">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 2） 了解原型工具和需求分析工具；</span><br/><span style="color: rgb(111, 111, 111); font-family: 微软雅黑; font-size: 12px; line-height: 34px; widows: 1; background-color: rgb(255, 255, 255);">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 3） 软件需求规格书撰写经验；</span><br/><span style="color: rgb(111, 111, 111); font-family: 微软雅黑; font-size: 12px; line-height: 34px; widows: 1; background-color: rgb(255, 255, 255);">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 4） 熟练使用Word、Excel、PPT；</span><br/><span style="color: rgb(111, 111, 111); font-family: 微软雅黑; font-size: 12px; line-height: 34px; widows: 1; background-color: rgb(255, 255, 255);">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 5） 具备软件需求规格书撰写经验。</span><br/><span style="color: rgb(111, 111, 111); font-family: 微软雅黑; font-size: 12px; line-height: 34px; widows: 1; background-color: rgb(255, 255, 255);">3.	综合素质：</span><br/><span style="color: rgb(111, 111, 111); font-family: 微软雅黑; font-size: 12px; line-height: 34px; widows: 1; background-color: rgb(255, 255, 255);">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 1）具有良好的团队协作精神，有较强的业务模型分析能力；</span><br/><span style="color: rgb(111, 111, 111); font-family: 微软雅黑; font-size: 12px; line-height: 34px; widows: 1; background-color: rgb(255, 255, 255);">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 2）善于与人沟通，能承担一定的工作压力</span></p>', '2017-09-13 00:00:00', '2017-09-13 00:00:00', 1, '2017-09-13', '2017-09-30', 0),
(0007, 'zp20170007', '客户经理', 2, '彭丽娟', 2, '<p><span style="color: rgb(111, 111, 111); font-family: 微软雅黑; font-size: 12px; line-height: 34px; widows: 1; background-color: rgb(255, 255, 255);">岗位职责:</span><br/><span style="color: rgb(111, 111, 111); font-family: 微软雅黑; font-size: 12px; line-height: 34px; widows: 1; background-color: rgb(255, 255, 255);">1.	按照公司要求，完成销售计划任务。</span><br/><span style="color: rgb(111, 111, 111); font-family: 微软雅黑; font-size: 12px; line-height: 34px; widows: 1; background-color: rgb(255, 255, 255);">2.	负责客户信息的收集与拓展，独立完成客户拜访，需求沟通和引导，产品演示等；</span><br/><span style="color: rgb(111, 111, 111); font-family: 微软雅黑; font-size: 12px; line-height: 34px; widows: 1; background-color: rgb(255, 255, 255);">3.	掌握公司产品的功能、技术特点及相关行业背景，并按客户需求情况协助团队完成并提供相关方案等资料；</span><br/><span style="color: rgb(111, 111, 111); font-family: 微软雅黑; font-size: 12px; line-height: 34px; widows: 1; background-color: rgb(255, 255, 255);">4.	负责参与招投标、商务谈判、合同签订等相关工作，并确保合同得到正常履行；</span><br/><span style="color: rgb(111, 111, 111); font-family: 微软雅黑; font-size: 12px; line-height: 34px; widows: 1; background-color: rgb(255, 255, 255);">5.	维系现有客户关系，挖掘客户需求。</span><br/><span style="color: rgb(111, 111, 111); font-family: 微软雅黑; font-size: 12px; line-height: 34px; widows: 1; background-color: rgb(255, 255, 255);">任职要求:</span><br/><span style="color: rgb(111, 111, 111); font-family: 微软雅黑; font-size: 12px; line-height: 34px; widows: 1; background-color: rgb(255, 255, 255);">1.	有软件行业销售相关工作1年以上工作经验；</span><br/><span style="color: rgb(111, 111, 111); font-family: 微软雅黑; font-size: 12px; line-height: 34px; widows: 1; background-color: rgb(255, 255, 255);">2.	熟练使用常用办公软件，良好的文案撰写和编辑能力；</span><br/><span style="color: rgb(111, 111, 111); font-family: 微软雅黑; font-size: 12px; line-height: 34px; widows: 1; background-color: rgb(255, 255, 255);">3.	有较强的人际交往能力；</span><br/><span style="color: rgb(111, 111, 111); font-family: 微软雅黑; font-size: 12px; line-height: 34px; widows: 1; background-color: rgb(255, 255, 255);">4.	优秀的沟通能力和领悟能力，较强的行动力和洞察力；</span><br/><span style="color: rgb(111, 111, 111); font-family: 微软雅黑; font-size: 12px; line-height: 34px; widows: 1; background-color: rgb(255, 255, 255);">5.	有电信行业销售经验优先</span></p>', '2017-09-13 00:00:00', '2017-09-18 15:48:28', 2, '2017-09-13', '2017-09-30', 0),
(0008, 'zp20170008', '商务助理', 2, '彭丽娟', 2, '<p><span style="color: rgb(111, 111, 111); font-family: 微软雅黑; font-size: 12px; line-height: 34px; widows: 1; background-color: rgb(255, 255, 255);">岗位职责：</span><br/><span style="color: rgb(111, 111, 111); font-family: 微软雅黑; font-size: 12px; line-height: 34px; widows: 1; background-color: rgb(255, 255, 255);">1.	掌握公司产品的功能、技术特点及相关行业背景，并按客户需求情况协助团队完成并提供相关方案等资料；</span><br/><span style="color: rgb(111, 111, 111); font-family: 微软雅黑; font-size: 12px; line-height: 34px; widows: 1; background-color: rgb(255, 255, 255);">2.	负责参与招投标、商务谈判、合同签订等相关工作，并确保合同得到正常履行；</span><br/><span style="color: rgb(111, 111, 111); font-family: 微软雅黑; font-size: 12px; line-height: 34px; widows: 1; background-color: rgb(255, 255, 255);">3.	维系现有客户关系，挖掘客户需求；</span><br/><span style="color: rgb(111, 111, 111); font-family: 微软雅黑; font-size: 12px; line-height: 34px; widows: 1; background-color: rgb(255, 255, 255);">4.	负责商务、行政、运营、事务协调与处理；</span><br/><span style="color: rgb(111, 111, 111); font-family: 微软雅黑; font-size: 12px; line-height: 34px; widows: 1; background-color: rgb(255, 255, 255);">5.	市场销售数据分析、市场活动的策划与组织；</span><br/><span style="color: rgb(111, 111, 111); font-family: 微软雅黑; font-size: 12px; line-height: 34px; widows: 1; background-color: rgb(255, 255, 255);">6.	公司资质维护。</span><br/><span style="color: rgb(111, 111, 111); font-family: 微软雅黑; font-size: 12px; line-height: 34px; widows: 1; background-color: rgb(255, 255, 255);">任职要求：</span><br/><span style="color: rgb(111, 111, 111); font-family: 微软雅黑; font-size: 12px; line-height: 34px; widows: 1; background-color: rgb(255, 255, 255);">1.	熟练使用常用办公软件，良好的文案撰写和编辑能力；</span><br/><span style="color: rgb(111, 111, 111); font-family: 微软雅黑; font-size: 12px; line-height: 34px; widows: 1; background-color: rgb(255, 255, 255);">2.	优秀的沟通能力和领悟能力，较强的行动力和洞察力；</span><br/><span style="color: rgb(111, 111, 111); font-family: 微软雅黑; font-size: 12px; line-height: 34px; widows: 1; background-color: rgb(255, 255, 255);">3.	工作积极主动，并可以承受较大的工作压力；</span><br/><span style="color: rgb(111, 111, 111); font-family: 微软雅黑; font-size: 12px; line-height: 34px; widows: 1; background-color: rgb(255, 255, 255);">4.	计算机及软件工程相关专业优先。</span></p>', '2017-09-13 00:00:00', '2017-09-18 15:48:09', 2, '2017-09-13', '2017-09-30', 0),
(0009, 'zp20170009', '人事行政助理', 2, '彭丽娟', 2, '<p><span style="color: rgb(111, 111, 111); font-family: 微软雅黑; font-size: 12px; line-height: 34px; widows: 1; background-color: rgb(255, 255, 255);">岗位职责：</span><br/><span style="color: rgb(111, 111, 111); font-family: 微软雅黑; font-size: 12px; line-height: 34px; widows: 1; background-color: rgb(255, 255, 255);">1.	协助开展招聘、录用、劳动合同签订、转正、离职等办理；</span><br/><span style="color: rgb(111, 111, 111); font-family: 微软雅黑; font-size: 12px; line-height: 34px; widows: 1; background-color: rgb(255, 255, 255);">2.	负责员工社会保险等参、退工作；</span><br/><span style="color: rgb(111, 111, 111); font-family: 微软雅黑; font-size: 12px; line-height: 34px; widows: 1; background-color: rgb(255, 255, 255);">3.	员工关系处理及跟进；</span><br/><span style="color: rgb(111, 111, 111); font-family: 微软雅黑; font-size: 12px; line-height: 34px; widows: 1; background-color: rgb(255, 255, 255);">4.	负责考勤管理，考勤核算；</span><br/><span style="color: rgb(111, 111, 111); font-family: 微软雅黑; font-size: 12px; line-height: 34px; widows: 1; background-color: rgb(255, 255, 255);">5.	负责相关证件变更、年审及各类工商办理；</span><br/><span style="color: rgb(111, 111, 111); font-family: 微软雅黑; font-size: 12px; line-height: 34px; widows: 1; background-color: rgb(255, 255, 255);">6.	负责组织企业文化建设工作；</span><br/><span style="color: rgb(111, 111, 111); font-family: 微软雅黑; font-size: 12px; line-height: 34px; widows: 1; background-color: rgb(255, 255, 255);">7.	协助申报政府科技项目工作；</span><br/><span style="color: rgb(111, 111, 111); font-family: 微软雅黑; font-size: 12px; line-height: 34px; widows: 1; background-color: rgb(255, 255, 255);">8.	进行人事行政日常工作；</span><br/><span style="color: rgb(111, 111, 111); font-family: 微软雅黑; font-size: 12px; line-height: 34px; widows: 1; background-color: rgb(255, 255, 255);">9.	做好信息的上传下达、协助各部门的工作事宜；</span><br/><span style="color: rgb(111, 111, 111); font-family: 微软雅黑; font-size: 12px; line-height: 34px; widows: 1; background-color: rgb(255, 255, 255);">10.	协助上级其它事宜。</span><br/><span style="color: rgb(111, 111, 111); font-family: 微软雅黑; font-size: 12px; line-height: 34px; widows: 1; background-color: rgb(255, 255, 255);">任职要求：</span><br/><span style="color: rgb(111, 111, 111); font-family: 微软雅黑; font-size: 12px; line-height: 34px; widows: 1; background-color: rgb(255, 255, 255);">1.	品貌端正，形象气质佳（请在简历上附上近照）；</span><br/><span style="color: rgb(111, 111, 111); font-family: 微软雅黑; font-size: 12px; line-height: 34px; widows: 1; background-color: rgb(255, 255, 255);">2.	人力资源管理、行政管理、法学、、财务知识等大专以上学历；</span><br/><span style="color: rgb(111, 111, 111); font-family: 微软雅黑; font-size: 12px; line-height: 34px; widows: 1; background-color: rgb(255, 255, 255);">3.	熟练使用电脑办公软件；</span><br/><span style="color: rgb(111, 111, 111); font-family: 微软雅黑; font-size: 12px; line-height: 34px; widows: 1; background-color: rgb(255, 255, 255);">4.	具备一定商务礼仪知识，有较强的服务意识；</span><br/><span style="color: rgb(111, 111, 111); font-family: 微软雅黑; font-size: 12px; line-height: 34px; widows: 1; background-color: rgb(255, 255, 255);">5.	具备良好的协调能力、沟通能力；</span><br/><span style="color: rgb(111, 111, 111); font-family: 微软雅黑; font-size: 12px; line-height: 34px; widows: 1; background-color: rgb(255, 255, 255);">6.	具有计划、组织、较强的分析和解决问题的能力。</span></p>', '2017-09-13 00:00:00', '2017-09-13 00:00:00', 1, '2017-09-13', '2017-09-30', 0);

-- --------------------------------------------------------

--
-- 表的结构 `yd_jobs_category`
--

CREATE TABLE IF NOT EXISTS `yd_jobs_category` (
  `id` smallint(2) unsigned zerofill NOT NULL AUTO_INCREMENT COMMENT '分类id',
  `name` varchar(255) NOT NULL COMMENT '分类名称',
  `description` text NOT NULL COMMENT '分类描述',
  `parent_id` smallint(2) unsigned NOT NULL COMMENT '上级分类',
  `deleted` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '0：未删除；1：删除',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='分类表' AUTO_INCREMENT=4 ;

-- --------------------------------------------------------

--
-- 表的结构 `yd_news_category`
--

CREATE TABLE IF NOT EXISTS `yd_news_category` (
  `id` smallint(2) unsigned zerofill NOT NULL AUTO_INCREMENT COMMENT '分类id',
  `name` varchar(255) NOT NULL COMMENT '分类名称',
  `description` text NOT NULL COMMENT '分类描述',
  `parent_id` smallint(2) unsigned NOT NULL COMMENT '上级分类',
  `deleted` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '0：未删除；1：删除',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='分类表' AUTO_INCREMENT=5 ;

--
-- 转存表中的数据 `yd_news_category`
--

INSERT INTO `yd_news_category` (`id`, `name`, `description`, `parent_id`, `deleted`) VALUES
(01, '公司荣誉', '摘要', 0, 0),
(02, '行政通告', '摘要', 0, 0),
(03, '内部活动', '摘要', 0, 0),
(04, '活动一', '摘要', 3, 0);

-- --------------------------------------------------------

--
-- 表的结构 `yd_role`
--

CREATE TABLE IF NOT EXISTS `yd_role` (
  `id` tinyint(2) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL COMMENT '角色名称',
  `pid` smallint(6) unsigned NOT NULL COMMENT '父角色ID',
  `status` tinyint(1) unsigned NOT NULL COMMENT '状态 1:启用；0：未启用',
  `remark` varchar(255) NOT NULL COMMENT '备注',
  `create_at` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  `update_at` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  `deleted` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '删除状态',
  PRIMARY KEY (`id`),
  KEY `parentId` (`pid`),
  KEY `status` (`status`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='角色表' AUTO_INCREMENT=6 ;

--
-- 转存表中的数据 `yd_role`
--

INSERT INTO `yd_role` (`id`, `name`, `pid`, `status`, `remark`, `create_at`, `update_at`, `deleted`) VALUES
(1, '超级管理员', 0, 1, '拥有网站最高管理员权限！', 1329633709, 1329633709, 0),
(2, '新闻管理员', 0, 1, '新闻管理', 0, 0, 0),
(3, '普通管理员', 0, 1, '普通管理员', 1506402308, 0, 0),
(4, '角色2', 0, 1, '', 1506216276, 0, 1506217445),
(5, '测试号', 0, 1, '', 1506321599, 0, 1506333902);

-- --------------------------------------------------------

--
-- 表的结构 `yd_role_user`
--

CREATE TABLE IF NOT EXISTS `yd_role_user` (
  `role_id` int(11) unsigned DEFAULT '0' COMMENT '角色 id',
  `user_id` int(11) DEFAULT '0' COMMENT '用户id',
  KEY `group_id` (`role_id`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户角色对应表';

--
-- 转存表中的数据 `yd_role_user`
--

INSERT INTO `yd_role_user` (`role_id`, `user_id`) VALUES
(2, 2),
(2, 4),
(3, 4),
(3, 5),
(3, 6),
(3, 7),
(3, 8),
(3, 9),
(3, 11),
(2, 2),
(2, 2),
(3, 13),
(3, 14);

-- --------------------------------------------------------

--
-- 表的结构 `yd_user`
--

CREATE TABLE IF NOT EXISTS `yd_user` (
  `id` tinyint(3) unsigned NOT NULL AUTO_INCREMENT COMMENT '自增id',
  `password` varchar(35) CHARACTER SET utf8 NOT NULL COMMENT '密码',
  `user_name` varchar(50) CHARACTER SET utf8 NOT NULL COMMENT '用户名',
  `nick_name` varchar(50) CHARACTER SET utf8 NOT NULL COMMENT '用户名',
  `role_id` smallint(2) unsigned NOT NULL DEFAULT '0' COMMENT '角色ID',
  `dept_id` tinyint(2) unsigned NOT NULL DEFAULT '0' COMMENT '部门ID',
  `img_url` varchar(100) CHARACTER SET utf8 NOT NULL DEFAULT '/upload/user/default.png' COMMENT '头像',
  `deleted` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '是否删除，0：未删除；1：删除',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COMMENT='管理员' AUTO_INCREMENT=15 ;

--
-- 转存表中的数据 `yd_user`
--

INSERT INTO `yd_user` (`id`, `password`, `user_name`, `nick_name`, `role_id`, `dept_id`, `img_url`, `deleted`) VALUES
(1, '###b2de6452d98798120fd11fea480a34a0', 'admin', 'admin', 1, 0, '/upload/user/default.png', 0),
(2, '###b2de6452d98798120fd11fea480a34a0', 'testing', 'Testing', 2, 0, '/upload/user/20180521/5646f7a45ae0a57c689e9ebeef2420af.png', 0),
(3, '###b5993c355ee4359fe49e64a3d72dc', 'abcsdfssss', '', 0, 0, '/upload/user/default.png', 1526892094),
(4, '###5bff4d10d8738155cd0380028813d', 'testingbb', '', 0, 0, '/upload/user/20170925/1217a6ee3cdd72c91fa98ed2694cdc46.jpg', 1506333029),
(5, '###9e7ad2f14e7e9a8a184dadada0ee6', 'dfasdfas', '', 0, 0, '/upload/user/20170925/4de6123de99601bf8fe9d8346a6de3d9.jpg', 0),
(6, '###b2de6452d98798120fd11fea480a3', 'ppppppp', '', 0, 0, '/upload/user/default.png', 0),
(7, '###b2de6452d98798120fd11fea480a3', 'pppppppd', '', 0, 0, '/upload/user/default.png', 0),
(8, '###b2de6452d98798120fd11fea480a3', 'pppppppdd', '', 0, 0, '/upload/user/default.png', 0),
(9, '###7e5b8adfd2132f7789e00d3c64cff08c', 'zhangsan', '张三', 0, 0, '/upload/user/default.png', 0),
(10, '###35efc952b16352eb637646ec8fbd8904', 'sdfasfd', 'sdfa', 0, 0, '/upload/user/default.png', 0),
(11, '###b8af4119e1af1ad46a59706697b76777', 'sfafasdfas', 'sfdasfa', 3, 0, '/upload/user/default.png', 0),
(12, '', '', '', 0, 0, '/upload/user/default.png', 0),
(13, '###b2de6452d98798120fd11fea480a34a0', 'hengbenyinhe', 'hengbenyinhe', 3, 0, '/upload/user/20180521/176c4b18fb16df0b3838f29786c82bca.png', 0),
(14, '###b2de6452d98798120fd11fea480a34a0', 'nihao', 'nihao', 3, 0, '/upload/user/20180521/65515de1b9809b6d3c9d8d87766f76f7.gif', 0);

-- --------------------------------------------------------

--
-- 表的结构 `yd_wuliao`
--

CREATE TABLE IF NOT EXISTS `yd_wuliao` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `name` varchar(50) DEFAULT NULL COMMENT '物品名称',
  `total` int(11) unsigned DEFAULT NULL COMMENT '数量',
  `xiaohao` int(11) unsigned DEFAULT NULL COMMENT '消耗数量',
  PRIMARY KEY (`id`),
  KEY `name` (`name`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='自己测试导入' AUTO_INCREMENT=12 ;

--
-- 转存表中的数据 `yd_wuliao`
--

INSERT INTO `yd_wuliao` (`id`, `name`, `total`, `xiaohao`) VALUES
(1, '测试事务回滚4', 1, 0),
(2, '翻页笔', 1, 0),
(3, 'PDCA表格', 15, 11),
(4, '笔', 14, 0),
(5, '心愿瓶', 20, 12),
(6, '心愿纸', 56, 24),
(7, 'USB数据线材单头', 14, 12),
(8, '330Ω电阻', 0, 12),
(9, '绝缘胶布', 2, 0),
(10, '单反相机', 1, 0),
(11, 'HDMI线', 1, 0);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
