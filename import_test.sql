/*
 Navicat Premium Data Transfer

 Source Server         : localhost
 Source Server Type    : MySQL
 Source Server Version : 50726
 Source Host           : localhost:3306
 Source Schema         : import_test

 Target Server Type    : MySQL
 Target Server Version : 50726
 File Encoding         : 65001

 Date: 15/08/2019 11:21:30
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for t_category
-- ----------------------------
DROP TABLE IF EXISTS `t_category`;
CREATE TABLE `t_category`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '分类名称',
  `icon` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '分类图标',
  `parent_id` int(11) NOT NULL COMMENT '父id',
  `sort` int(11) NOT NULL DEFAULT 0 COMMENT '排名指数',
  `depth` tinyint(4) NOT NULL DEFAULT 0 COMMENT '类目树深度',
  `letter` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '首字母',
  `share_template` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '分享模板',
  `refund_reason` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '退款原因',
  `commission` decimal(10, 2) NOT NULL DEFAULT 0.00 COMMENT '佣金设置，入库的百分比转化为小数',
  `after_sales_settings` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '售后设置',
  `is_deleted` tinyint(4) NOT NULL DEFAULT 0 COMMENT '逻辑删除',
  `created_at` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '添加时间',
  `modified_at` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) ON UPDATE CURRENT_TIMESTAMP(0) COMMENT '最后修改时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 770 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '分类表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_category
-- ----------------------------
INSERT INTO `t_category` VALUES (696, '苹果', '', 694, 1, 2, 'P', '', '[\"拍错/多拍/不想要\",\"协商一致退款\",\"缺货\",\"未按约定时间发货\",\"其它\"]', 5.00, '[\"正品保障\",\"产地直发\",\"坏果包赔\",\"一件包邮\",\"48小时发货\",\"不支持7天退换\",\"支持7天退换\",\"偏远地区不发货\"]', 0, '2019-08-12 16:27:43', '2019-08-12 16:27:43');
INSERT INTO `t_category` VALUES (697, '草莓', '', 694, 2, 2, 'C', '', '[\"拍错/多拍/不想要\",\"协商一致退款\",\"缺货\",\"未按约定时间发货\",\"其它\"]', 5.00, '[\"正品保障\",\"产地直发\",\"坏果包赔\",\"一件包邮\",\"48小时发货\",\"不支持7天退换\",\"支持7天退换\",\"偏远地区不发货\"]', 0, '2019-08-12 16:28:00', '2019-08-12 16:28:00');
INSERT INTO `t_category` VALUES (698, '车厘子/樱桃', '', 694, 3, 2, 'C', '', '[\"拍错/多拍/不想要\",\"协商一致退款\",\"缺货\",\"未按约定时间发货\",\"其它\"]', 5.00, '[\"正品保障\",\"产地直发\",\"坏果包赔\",\"一件包邮\",\"48小时发货\",\"不支持7天退换\",\"支持7天退换\",\"偏远地区不发货\"]', 0, '2019-08-12 16:28:19', '2019-08-12 16:28:19');
INSERT INTO `t_category` VALUES (699, '橙', '', 694, 4, 2, 'C', '', '[\"拍错/多拍/不想要\",\"协商一致退款\",\"缺货\",\"未按约定时间发货\",\"其它\"]', 5.00, '[\"正品保障\",\"产地直发\",\"坏果包赔\",\"一件包邮\",\"48小时发货\",\"不支持7天退换\",\"支持7天退换\",\"偏远地区不发货\"]', 0, '2019-08-12 16:28:33', '2019-08-12 16:28:33');
INSERT INTO `t_category` VALUES (700, '百香果', '', 694, 5, 2, 'B', '', '[\"拍错/多拍/不想要\",\"协商一致退款\",\"缺货\",\"未按约定时间发货\",\"其它\"]', 5.00, '[\"正品保障\",\"产地直发\",\"坏果包赔\",\"一件包邮\",\"48小时发货\",\"不支持7天退换\",\"支持7天退换\",\"偏远地区不发货\"]', 0, '2019-08-12 16:28:46', '2019-08-12 16:28:46');
INSERT INTO `t_category` VALUES (701, '菠萝', '', 694, 6, 2, 'B', '', '[\"拍错/多拍/不想要\",\"协商一致退款\",\"缺货\",\"未按约定时间发货\",\"其它\"]', 5.00, '[\"正品保障\",\"产地直发\",\"坏果包赔\",\"一件包邮\",\"48小时发货\",\"不支持7天退换\",\"支持7天退换\",\"偏远地区不发货\"]', 0, '2019-08-12 16:29:02', '2019-08-12 16:29:02');
INSERT INTO `t_category` VALUES (702, '凤梨', '', 694, 7, 2, 'F', '', '[\"拍错/多拍/不想要\",\"协商一致退款\",\"缺货\",\"未按约定时间发货\",\"其它\"]', 5.00, '[\"正品保障\",\"产地直发\",\"坏果包赔\",\"一件包邮\",\"48小时发货\",\"不支持7天退换\",\"支持7天退换\",\"偏远地区不发货\"]', 0, '2019-08-12 16:29:24', '2019-08-12 16:29:24');
INSERT INTO `t_category` VALUES (703, '哈密瓜', '', 694, 8, 2, 'H', '', '[\"拍错/多拍/不想要\",\"协商一致退款\",\"缺货\",\"未按约定时间发货\",\"其它\"]', 5.00, '[\"正品保障\",\"产地直发\",\"坏果包赔\",\"一件包邮\",\"48小时发货\",\"不支持7天退换\",\"支持7天退换\",\"偏远地区不发货\"]', 0, '2019-08-12 16:29:36', '2019-08-12 16:29:36');
INSERT INTO `t_category` VALUES (704, '火龙果', '', 694, 9, 2, 'H', '', '[\"拍错/多拍/不想要\",\"协商一致退款\",\"缺货\",\"未按约定时间发货\",\"其它\"]', 5.00, '[\"正品保障\",\"产地直发\",\"坏果包赔\",\"一件包邮\",\"48小时发货\",\"不支持7天退换\",\"支持7天退换\",\"偏远地区不发货\"]', 0, '2019-08-12 16:29:59', '2019-08-12 16:29:59');
INSERT INTO `t_category` VALUES (705, '桔子', '', 694, 10, 2, 'J', '', '[\"拍错/多拍/不想要\",\"协商一致退款\",\"缺货\",\"未按约定时间发货\",\"其它\"]', 5.00, '[\"正品保障\",\"产地直发\",\"坏果包赔\",\"一件包邮\",\"48小时发货\",\"不支持7天退换\",\"支持7天退换\",\"偏远地区不发货\"]', 0, '2019-08-12 16:30:14', '2019-08-12 16:30:14');
INSERT INTO `t_category` VALUES (706, '蓝莓', '', 694, 11, 2, 'L', '', '[\"拍错/多拍/不想要\",\"协商一致退款\",\"缺货\",\"未按约定时间发货\",\"其它\"]', 5.00, '[\"正品保障\",\"产地直发\",\"坏果包赔\",\"一件包邮\",\"48小时发货\",\"不支持7天退换\",\"支持7天退换\",\"偏远地区不发货\"]', 0, '2019-08-12 16:30:28', '2019-08-12 16:30:28');
INSERT INTO `t_category` VALUES (707, '梨', '', 694, 12, 2, 'L', '', '[\"拍错/多拍/不想要\",\"协商一致退款\",\"缺货\",\"未按约定时间发货\",\"其它\"]', 5.00, '[\"正品保障\",\"产地直发\",\"坏果包赔\",\"一件包邮\",\"48小时发货\",\"不支持7天退换\",\"支持7天退换\",\"偏远地区不发货\"]', 0, '2019-08-12 16:30:43', '2019-08-12 16:30:43');
INSERT INTO `t_category` VALUES (708, '李子', '', 694, 13, 2, 'L', '', '[\"拍错/多拍/不想要\",\"协商一致退款\",\"缺货\",\"未按约定时间发货\",\"其它\"]', 5.00, '[\"正品保障\",\"产地直发\",\"坏果包赔\",\"一件包邮\",\"48小时发货\",\"不支持7天退换\",\"支持7天退换\",\"偏远地区不发货\"]', 0, '2019-08-12 16:31:00', '2019-08-12 16:31:00');
INSERT INTO `t_category` VALUES (709, '荔枝', '', 694, 14, 2, 'L', '', '[\"拍错/多拍/不想要\",\"协商一致退款\",\"缺货\",\"未按约定时间发货\",\"其它\"]', 5.00, '[\"正品保障\",\"产地直发\",\"坏果包赔\",\"一件包邮\",\"48小时发货\",\"不支持7天退换\",\"支持7天退换\",\"偏远地区不发货\"]', 0, '2019-08-12 16:31:31', '2019-08-12 16:31:31');
INSERT INTO `t_category` VALUES (710, '榴莲', '', 694, 15, 2, 'L', '', '[\"拍错/多拍/不想要\",\"协商一致退款\",\"缺货\",\"未按约定时间发货\",\"其它\"]', 5.00, '[\"正品保障\",\"产地直发\",\"坏果包赔\",\"一件包邮\",\"48小时发货\",\"不支持7天退换\",\"支持7天退换\",\"偏远地区不发货\"]', 0, '2019-08-12 16:31:48', '2019-08-12 16:31:48');
INSERT INTO `t_category` VALUES (711, '芒果', '', 694, 16, 2, 'M', '', '[\"拍错/多拍/不想要\",\"协商一致退款\",\"缺货\",\"未按约定时间发货\",\"其它\"]', 5.00, '[\"正品保障\",\"产地直发\",\"坏果包赔\",\"一件包邮\",\"48小时发货\",\"不支持7天退换\",\"支持7天退换\",\"偏远地区不发货\"]', 0, '2019-08-12 16:32:04', '2019-08-12 16:32:04');
INSERT INTO `t_category` VALUES (712, '木瓜', '', 694, 17, 2, 'M', '', '[\"拍错/多拍/不想要\",\"协商一致退款\",\"缺货\",\"未按约定时间发货\",\"其它\"]', 5.00, '[\"正品保障\",\"产地直发\",\"坏果包赔\",\"一件包邮\",\"48小时发货\",\"不支持7天退换\",\"支持7天退换\",\"偏远地区不发货\"]', 0, '2019-08-12 16:32:38', '2019-08-12 16:32:38');
INSERT INTO `t_category` VALUES (713, '柠檬', '', 694, 18, 2, 'N', '', '[\"拍错/多拍/不想要\",\"协商一致退款\",\"缺货\",\"未按约定时间发货\",\"其它\"]', 5.00, '[\"正品保障\",\"产地直发\",\"坏果包赔\",\"一件包邮\",\"48小时发货\",\"不支持7天退换\",\"支持7天退换\",\"偏远地区不发货\"]', 0, '2019-08-12 16:32:53', '2019-08-12 16:32:53');
INSERT INTO `t_category` VALUES (714, '牛油果', '', 694, 19, 2, 'N', '', '[\"拍错/多拍/不想要\",\"协商一致退款\",\"缺货\",\"未按约定时间发货\",\"其它\"]', 5.00, '[\"正品保障\",\"产地直发\",\"坏果包赔\",\"一件包邮\",\"48小时发货\",\"不支持7天退换\",\"支持7天退换\",\"偏远地区不发货\"]', 0, '2019-08-12 16:33:14', '2019-08-12 16:33:14');
INSERT INTO `t_category` VALUES (715, '葡萄/提子', '', 694, 20, 2, 'P', '', '[\"拍错/多拍/不想要\",\"协商一致退款\",\"缺货\",\"未按约定时间发货\",\"其它\"]', 5.00, '[\"正品保障\",\"产地直发\",\"坏果包赔\",\"一件包邮\",\"48小时发货\",\"不支持7天退换\",\"支持7天退换\",\"偏远地区不发货\"]', 0, '2019-08-12 16:33:36', '2019-08-12 16:33:36');
INSERT INTO `t_category` VALUES (716, '奇异果/猕猴桃', '', 694, 21, 2, 'Q', '', '[\"拍错/多拍/不想要\",\"协商一致退款\",\"缺货\",\"未按约定时间发货\",\"其它\"]', 5.00, '[\"正品保障\",\"产地直发\",\"坏果包赔\",\"一件包邮\",\"48小时发货\",\"不支持7天退换\",\"支持7天退换\",\"偏远地区不发货\"]', 0, '2019-08-12 16:33:52', '2019-08-12 16:33:52');
INSERT INTO `t_category` VALUES (717, '山竹', '', 694, 22, 2, 'S', '', '[\"拍错/多拍/不想要\",\"协商一致退款\",\"缺货\",\"未按约定时间发货\",\"其它\"]', 5.00, '[\"正品保障\",\"产地直发\",\"坏果包赔\",\"一件包邮\",\"48小时发货\",\"不支持7天退换\",\"支持7天退换\",\"偏远地区不发货\"]', 0, '2019-08-12 16:34:05', '2019-08-12 16:34:05');
INSERT INTO `t_category` VALUES (718, '石榴', '', 694, 23, 2, 'S', '', '[\"拍错/多拍/不想要\",\"协商一致退款\",\"缺货\",\"未按约定时间发货\",\"其它\"]', 5.00, '[\"正品保障\",\"产地直发\",\"坏果包赔\",\"一件包邮\",\"48小时发货\",\"不支持7天退换\",\"支持7天退换\",\"偏远地区不发货\"]', 0, '2019-08-12 16:34:21', '2019-08-12 16:34:21');
INSERT INTO `t_category` VALUES (719, '桃', '', 694, 24, 2, 'T', '', '[\"拍错/多拍/不想要\",\"协商一致退款\",\"缺货\",\"未按约定时间发货\",\"其它\"]', 5.00, '[\"正品保障\",\"产地直发\",\"坏果包赔\",\"一件包邮\",\"48小时发货\",\"不支持7天退换\",\"支持7天退换\",\"偏远地区不发货\"]', 0, '2019-08-12 16:34:35', '2019-08-12 16:34:35');
INSERT INTO `t_category` VALUES (720, '甜瓜', '', 694, 25, 2, 'T', '', '[\"拍错/多拍/不想要\",\"协商一致退款\",\"缺货\",\"未按约定时间发货\",\"其它\"]', 5.00, '[\"正品保障\",\"产地直发\",\"坏果包赔\",\"一件包邮\",\"48小时发货\",\"不支持7天退换\",\"支持7天退换\",\"偏远地区不发货\"]', 0, '2019-08-12 16:34:56', '2019-08-12 16:34:56');
INSERT INTO `t_category` VALUES (721, '西瓜', '', 694, 26, 2, 'X', '', '[\"拍错/多拍/不想要\",\"协商一致退款\",\"缺货\",\"未按约定时间发货\",\"其它\"]', 5.00, '[\"正品保障\",\"产地直发\",\"坏果包赔\",\"一件包邮\",\"48小时发货\",\"不支持7天退换\",\"支持7天退换\",\"偏远地区不发货\"]', 0, '2019-08-12 16:35:10', '2019-08-12 16:35:10');
INSERT INTO `t_category` VALUES (722, '西柚', '', 694, 27, 2, 'X', '', '[\"拍错/多拍/不想要\",\"协商一致退款\",\"缺货\",\"未按约定时间发货\",\"其它\"]', 5.00, '[\"正品保障\",\"产地直发\",\"坏果包赔\",\"一件包邮\",\"48小时发货\",\"不支持7天退换\",\"支持7天退换\",\"偏远地区不发货\"]', 0, '2019-08-12 16:35:23', '2019-08-12 16:35:23');
INSERT INTO `t_category` VALUES (723, '香蕉', '', 694, 28, 2, 'X', '', '[\"拍错/多拍/不想要\",\"协商一致退款\",\"缺货\",\"未按约定时间发货\",\"其它\"]', 5.00, '[\"正品保障\",\"产地直发\",\"坏果包赔\",\"一件包邮\",\"48小时发货\",\"不支持7天退换\",\"支持7天退换\",\"偏远地区不发货\"]', 0, '2019-08-12 16:35:36', '2019-08-12 16:35:36');
INSERT INTO `t_category` VALUES (724, '杨梅', '', 694, 29, 2, 'Y', '', '[\"拍错/多拍/不想要\",\"协商一致退款\",\"缺货\",\"未按约定时间发货\",\"其它\"]', 5.00, '[\"正品保障\",\"产地直发\",\"坏果包赔\",\"一件包邮\",\"48小时发货\",\"不支持7天退换\",\"支持7天退换\",\"偏远地区不发货\"]', 0, '2019-08-12 16:36:02', '2019-08-12 16:36:02');
INSERT INTO `t_category` VALUES (725, '椰青', '', 694, 30, 2, 'Y', '', '[\"拍错/多拍/不想要\",\"协商一致退款\",\"缺货\",\"未按约定时间发货\",\"其它\"]', 5.00, '[\"正品保障\",\"产地直发\",\"坏果包赔\",\"一件包邮\",\"48小时发货\",\"不支持7天退换\",\"支持7天退换\",\"偏远地区不发货\"]', 0, '2019-08-12 16:36:19', '2019-08-12 16:36:19');
INSERT INTO `t_category` VALUES (726, '枣', '', 694, 31, 2, 'Z', '', '[\"拍错/多拍/不想要\",\"协商一致退款\",\"缺货\",\"未按约定时间发货\",\"其它\"]', 5.00, '[\"正品保障\",\"产地直发\",\"坏果包赔\",\"一件包邮\",\"48小时发货\",\"不支持7天退换\",\"支持7天退换\",\"偏远地区不发货\"]', 0, '2019-08-12 16:36:34', '2019-08-12 16:36:34');
INSERT INTO `t_category` VALUES (727, '枣', '', 694, 31, 2, 'Z', '', '[\"拍错/多拍/不想要\",\"协商一致退款\",\"缺货\",\"未按约定时间发货\",\"其它\"]', 5.00, '[\"正品保障\",\"产地直发\",\"坏果包赔\",\"一件包邮\",\"48小时发货\",\"不支持7天退换\",\"支持7天退换\",\"偏远地区不发货\"]', 1, '2019-08-12 16:38:51', '2019-08-12 17:32:52');
INSERT INTO `t_category` VALUES (728, '柚子', '', 694, 32, 2, 'Y', '', '[\"拍错/多拍/不想要\",\"协商一致退款\",\"缺货\",\"未按约定时间发货\",\"其它\"]', 5.00, '[\"正品保障\",\"产地直发\",\"坏果包赔\",\"一件包邮\",\"48小时发货\",\"不支持7天退换\",\"支持7天退换\",\"偏远地区不发货\"]', 0, '2019-08-12 16:41:13', '2019-08-12 16:41:13');
INSERT INTO `t_category` VALUES (729, '柿子', '', 694, 33, 2, 'S', '', '[\"拍错/多拍/不想要\",\"协商一致退款\",\"缺货\",\"未按约定时间发货\",\"其它\"]', 5.00, '[\"正品保障\",\"产地直发\",\"坏果包赔\",\"一件包邮\",\"48小时发货\",\"不支持7天退换\",\"支持7天退换\",\"偏远地区不发货\"]', 0, '2019-08-12 17:33:29', '2019-08-12 17:33:29');
INSERT INTO `t_category` VALUES (730, '人参果', '', 694, 34, 2, 'R', '', '[\"拍错/多拍/不想要\",\"协商一致退款\",\"缺货\",\"未按约定时间发货\",\"其它\"]', 5.00, '[\"正品保障\",\"产地直发\",\"坏果包赔\",\"一件包邮\",\"48小时发货\",\"不支持7天退换\",\"支持7天退换\",\"偏远地区不发货\"]', 0, '2019-08-12 17:33:43', '2019-08-12 17:33:43');
INSERT INTO `t_category` VALUES (731, '雪莲果', '', 694, 35, 2, 'X', '', '[\"拍错/多拍/不想要\",\"协商一致退款\",\"缺货\",\"未按约定时间发货\",\"其它\"]', 5.00, '[\"正品保障\",\"产地直发\",\"坏果包赔\",\"一件包邮\",\"48小时发货\",\"不支持7天退换\",\"支持7天退换\",\"偏远地区不发货\"]', 0, '2019-08-12 17:34:00', '2019-08-12 17:34:00');
INSERT INTO `t_category` VALUES (732, '杨桃', '', 694, 36, 2, 'Y', '', '[\"拍错/多拍/不想要\",\"协商一致退款\",\"缺货\",\"未按约定时间发货\",\"其它\"]', 5.00, '[\"正品保障\",\"产地直发\",\"坏果包赔\",\"一件包邮\",\"48小时发货\",\"不支持7天退换\",\"支持7天退换\",\"偏远地区不发货\"]', 0, '2019-08-12 17:34:15', '2019-08-12 17:34:15');
INSERT INTO `t_category` VALUES (733, '枇杷', '', 694, 37, 2, 'P', '', '[\"拍错/多拍/不想要\",\"协商一致退款\",\"缺货\",\"未按约定时间发货\",\"其它\"]', 5.00, '[\"正品保障\",\"产地直发\",\"坏果包赔\",\"一件包邮\",\"48小时发货\",\"不支持7天退换\",\"支持7天退换\",\"偏远地区不发货\"]', 0, '2019-08-12 17:34:33', '2019-08-12 17:34:33');
INSERT INTO `t_category` VALUES (734, '毛丹/毛荔枝', '', 694, 38, 2, 'M', '', '[\"拍错/多拍/不想要\",\"协商一致退款\",\"缺货\",\"未按约定时间发货\",\"其它\"]', 5.00, '[\"正品保障\",\"产地直发\",\"坏果包赔\",\"一件包邮\",\"48小时发货\",\"不支持7天退换\",\"支持7天退换\",\"偏远地区不发货\"]', 0, '2019-08-12 17:34:57', '2019-08-12 17:34:57');
INSERT INTO `t_category` VALUES (735, '龙眼', '', 694, 39, 2, 'L', '', '[\"拍错/多拍/不想要\",\"协商一致退款\",\"缺货\",\"未按约定时间发货\",\"其它\"]', 5.00, '[\"正品保障\",\"产地直发\",\"坏果包赔\",\"一件包邮\",\"48小时发货\",\"不支持7天退换\",\"支持7天退换\",\"偏远地区不发货\"]', 0, '2019-08-12 17:35:12', '2019-08-12 17:35:12');
INSERT INTO `t_category` VALUES (736, '菠萝蜜', '', 694, 40, 2, 'B', '', '[\"拍错/多拍/不想要\",\"协商一致退款\",\"缺货\",\"未按约定时间发货\",\"其它\"]', 5.00, '[\"正品保障\",\"产地直发\",\"坏果包赔\",\"一件包邮\",\"48小时发货\",\"不支持7天退换\",\"支持7天退换\",\"偏远地区不发货\"]', 0, '2019-08-12 17:35:31', '2019-08-12 17:35:31');
INSERT INTO `t_category` VALUES (737, '番荔枝/释迦', '', 694, 41, 2, 'F', '', '[\"拍错/多拍/不想要\",\"协商一致退款\",\"缺货\",\"未按约定时间发货\",\"其它\"]', 5.00, '[\"正品保障\",\"产地直发\",\"坏果包赔\",\"一件包邮\",\"48小时发货\",\"不支持7天退换\",\"支持7天退换\",\"偏远地区不发货\"]', 0, '2019-08-12 17:35:46', '2019-08-12 17:35:46');
INSERT INTO `t_category` VALUES (738, '芭乐', '', 694, 42, 2, 'B', '', '[\"拍错/多拍/不想要\",\"协商一致退款\",\"缺货\",\"未按约定时间发货\",\"其它\"]', 5.00, '[\"正品保障\",\"产地直发\",\"坏果包赔\",\"一件包邮\",\"48小时发货\",\"不支持7天退换\",\"支持7天退换\",\"偏远地区不发货\"]', 0, '2019-08-12 17:35:59', '2019-08-12 17:35:59');
INSERT INTO `t_category` VALUES (739, '莲雾', '', 694, 43, 2, 'L', '', '[\"拍错/多拍/不想要\",\"协商一致退款\",\"缺货\",\"未按约定时间发货\",\"其它\"]', 5.00, '[\"正品保障\",\"产地直发\",\"坏果包赔\",\"一件包邮\",\"48小时发货\",\"不支持7天退换\",\"支持7天退换\",\"偏远地区不发货\"]', 0, '2019-08-12 17:36:13', '2019-08-12 17:36:13');
INSERT INTO `t_category` VALUES (740, '其它', '', 694, 44, 2, 'Q', '', '[\"拍错/多拍/不想要\",\"协商一致退款\",\"缺货\",\"未按约定时间发货\",\"其它\"]', 5.00, '[\"正品保障\",\"产地直发\",\"坏果包赔\",\"一件包邮\",\"48小时发货\",\"不支持7天退换\",\"支持7天退换\",\"偏远地区不发货\"]', 0, '2019-08-12 17:36:25', '2019-08-12 17:36:25');
INSERT INTO `t_category` VALUES (741, '葱类', '', 695, 1, 2, 'C', '', '[\"拍错/多拍/不想要\",\"协商一致退款\",\"缺货\",\"未按约定时间发货\",\"其它\"]', 5.00, '[\"正品保障\",\"产地直发\",\"坏果包赔\",\"一件包邮\",\"48小时发货\",\"不支持7天退换\",\"支持7天退换\",\"偏远地区不发货\"]', 0, '2019-08-12 18:07:55', '2019-08-12 18:07:55');
INSERT INTO `t_category` VALUES (742, '大蒜', '', 695, 2, 2, 'D', '', '[\"拍错/多拍/不想要\",\"协商一致退款\",\"缺货\",\"未按约定时间发货\",\"其它\"]', 5.00, '[\"正品保障\",\"产地直发\",\"坏果包赔\",\"一件包邮\",\"48小时发货\",\"不支持7天退换\",\"支持7天退换\",\"偏远地区不发货\"]', 0, '2019-08-12 18:08:12', '2019-08-12 18:08:12');
INSERT INTO `t_category` VALUES (743, '番茄', '', 695, 3, 2, 'F', '', '[\"拍错/多拍/不想要\",\"协商一致退款\",\"缺货\",\"未按约定时间发货\",\"其它\"]', 5.00, '[\"正品保障\",\"产地直发\",\"坏果包赔\",\"一件包邮\",\"48小时发货\",\"不支持7天退换\",\"支持7天退换\",\"偏远地区不发货\"]', 0, '2019-08-12 18:08:26', '2019-08-12 18:08:26');
INSERT INTO `t_category` VALUES (744, '番薯', '', 695, 4, 2, 'F', '', '[\"拍错/多拍/不想要\",\"协商一致退款\",\"缺货\",\"未按约定时间发货\",\"其它\"]', 5.00, '[\"正品保障\",\"产地直发\",\"坏果包赔\",\"一件包邮\",\"48小时发货\",\"不支持7天退换\",\"支持7天退换\",\"偏远地区不发货\"]', 0, '2019-08-12 18:08:39', '2019-08-12 18:08:39');
INSERT INTO `t_category` VALUES (745, '土豆', '', 695, 5, 2, 'T', '', '[\"拍错/多拍/不想要\",\"协商一致退款\",\"缺货\",\"未按约定时间发货\",\"其它\"]', 5.00, '[\"正品保障\",\"产地直发\",\"坏果包赔\",\"一件包邮\",\"48小时发货\",\"不支持7天退换\",\"支持7天退换\",\"偏远地区不发货\"]', 0, '2019-08-12 18:08:51', '2019-08-12 18:08:51');
INSERT INTO `t_category` VALUES (746, '新鲜玉米', '', 695, 6, 2, 'X', '', '[\"拍错/多拍/不想要\",\"协商一致退款\",\"缺货\",\"未按约定时间发货\",\"其它\"]', 5.00, '[\"正品保障\",\"产地直发\",\"坏果包赔\",\"一件包邮\",\"48小时发货\",\"不支持7天退换\",\"支持7天退换\",\"偏远地区不发货\"]', 0, '2019-08-12 18:09:03', '2019-08-12 18:09:03');
INSERT INTO `t_category` VALUES (747, '黄瓜', '', 695, 7, 2, 'H', '', '[\"拍错/多拍/不想要\",\"协商一致退款\",\"缺货\",\"未按约定时间发货\",\"其它\"]', 5.00, '[\"正品保障\",\"产地直发\",\"坏果包赔\",\"一件包邮\",\"48小时发货\",\"不支持7天退换\",\"支持7天退换\",\"偏远地区不发货\"]', 0, '2019-08-12 18:09:27', '2019-08-12 18:09:27');
INSERT INTO `t_category` VALUES (748, '辣椒', '', 695, 8, 2, 'L', '', '[\"拍错/多拍/不想要\",\"协商一致退款\",\"缺货\",\"未按约定时间发货\",\"其它\"]', 5.00, '[\"正品保障\",\"产地直发\",\"坏果包赔\",\"一件包邮\",\"48小时发货\",\"不支持7天退换\",\"支持7天退换\",\"偏远地区不发货\"]', 0, '2019-08-12 18:09:40', '2019-08-12 18:09:40');
INSERT INTO `t_category` VALUES (749, '芋头', '', 695, 9, 2, 'Y', '', '[\"拍错/多拍/不想要\",\"协商一致退款\",\"缺货\",\"未按约定时间发货\",\"其它\"]', 5.00, '[\"正品保障\",\"产地直发\",\"坏果包赔\",\"一件包邮\",\"48小时发货\",\"不支持7天退换\",\"支持7天退换\",\"偏远地区不发货\"]', 0, '2019-08-12 18:09:54', '2019-08-12 18:09:54');
INSERT INTO `t_category` VALUES (750, '竹笋', '', 695, 10, 2, 'Z', '', '[\"拍错/多拍/不想要\",\"协商一致退款\",\"缺货\",\"未按约定时间发货\",\"其它\"]', 5.00, '[\"正品保障\",\"产地直发\",\"坏果包赔\",\"一件包邮\",\"48小时发货\",\"不支持7天退换\",\"支持7天退换\",\"偏远地区不发货\"]', 0, '2019-08-12 18:10:14', '2019-08-12 18:10:14');
INSERT INTO `t_category` VALUES (751, '莲藕', '', 695, 11, 2, 'L', '', '[\"拍错/多拍/不想要\",\"协商一致退款\",\"缺货\",\"未按约定时间发货\",\"其它\"]', 5.00, '[\"正品保障\",\"产地直发\",\"坏果包赔\",\"一件包邮\",\"48小时发货\",\"不支持7天退换\",\"支持7天退换\",\"偏远地区不发货\"]', 0, '2019-08-12 18:10:27', '2019-08-12 18:10:27');
INSERT INTO `t_category` VALUES (752, '菱角', '', 695, 12, 2, 'L', '', '[\"拍错/多拍/不想要\",\"协商一致退款\",\"缺货\",\"未按约定时间发货\",\"其它\"]', 5.00, '[\"正品保障\",\"产地直发\",\"坏果包赔\",\"一件包邮\",\"48小时发货\",\"不支持7天退换\",\"支持7天退换\",\"偏远地区不发货\"]', 0, '2019-08-12 18:10:45', '2019-08-12 18:10:45');
INSERT INTO `t_category` VALUES (753, '芦笋', '', 695, 13, 2, 'L', '', '[\"拍错/多拍/不想要\",\"协商一致退款\",\"缺货\",\"未按约定时间发货\",\"其它\"]', 5.00, '[\"正品保障\",\"产地直发\",\"坏果包赔\",\"一件包邮\",\"48小时发货\",\"不支持7天退换\",\"支持7天退换\",\"偏远地区不发货\"]', 0, '2019-08-12 18:10:57', '2019-08-12 18:10:57');
INSERT INTO `t_category` VALUES (754, '萝卜', '', 695, 14, 2, 'L', '', '[\"拍错/多拍/不想要\",\"协商一致退款\",\"缺货\",\"未按约定时间发货\",\"其它\"]', 5.00, '[\"正品保障\",\"产地直发\",\"坏果包赔\",\"一件包邮\",\"48小时发货\",\"不支持7天退换\",\"支持7天退换\",\"偏远地区不发货\"]', 0, '2019-08-12 18:11:11', '2019-08-12 18:11:11');
INSERT INTO `t_category` VALUES (755, '南瓜', '', 695, 15, 2, 'N', '', '[\"拍错/多拍/不想要\",\"协商一致退款\",\"缺货\",\"未按约定时间发货\",\"其它\"]', 5.00, '[\"正品保障\",\"产地直发\",\"坏果包赔\",\"一件包邮\",\"48小时发货\",\"不支持7天退换\",\"支持7天退换\",\"偏远地区不发货\"]', 0, '2019-08-12 18:11:30', '2019-08-12 18:11:30');
INSERT INTO `t_category` VALUES (756, '秋葵', '', 695, 16, 2, 'Q', '', '[\"拍错/多拍/不想要\",\"协商一致退款\",\"缺货\",\"未按约定时间发货\",\"其它\"]', 5.00, '[\"正品保障\",\"产地直发\",\"坏果包赔\",\"一件包邮\",\"48小时发货\",\"不支持7天退换\",\"支持7天退换\",\"偏远地区不发货\"]', 0, '2019-08-12 18:11:42', '2019-08-12 18:11:42');
INSERT INTO `t_category` VALUES (757, '生姜', '', 695, 17, 2, 'S', '', '[\"拍错/多拍/不想要\",\"协商一致退款\",\"缺货\",\"未按约定时间发货\",\"其它\"]', 5.00, '[\"正品保障\",\"产地直发\",\"坏果包赔\",\"一件包邮\",\"48小时发货\",\"不支持7天退换\",\"支持7天退换\",\"偏远地区不发货\"]', 0, '2019-08-12 18:11:55', '2019-08-12 18:11:55');
INSERT INTO `t_category` VALUES (758, '食用玫瑰', '', 695, 18, 2, 'S', '', '[\"拍错/多拍/不想要\",\"协商一致退款\",\"缺货\",\"未按约定时间发货\",\"其它\"]', 5.00, '[\"正品保障\",\"产地直发\",\"坏果包赔\",\"一件包邮\",\"48小时发货\",\"不支持7天退换\",\"支持7天退换\",\"偏远地区不发货\"]', 0, '2019-08-12 18:12:05', '2019-08-12 18:12:05');
INSERT INTO `t_category` VALUES (759, '蔬菜沙拉', '', 695, 19, 2, 'S', '', '[\"拍错/多拍/不想要\",\"协商一致退款\",\"缺货\",\"未按约定时间发货\",\"其它\"]', 5.00, '[\"正品保障\",\"产地直发\",\"坏果包赔\",\"一件包邮\",\"48小时发货\",\"不支持7天退换\",\"支持7天退换\",\"偏远地区不发货\"]', 0, '2019-08-12 18:12:17', '2019-08-12 18:12:17');
INSERT INTO `t_category` VALUES (760, '甜菜头', '', 695, 20, 2, 'T', '', '[\"拍错/多拍/不想要\",\"协商一致退款\",\"缺货\",\"未按约定时间发货\",\"其它\"]', 5.00, '[\"正品保障\",\"产地直发\",\"坏果包赔\",\"一件包邮\",\"48小时发货\",\"不支持7天退换\",\"支持7天退换\",\"偏远地区不发货\"]', 0, '2019-08-12 18:12:40', '2019-08-12 18:12:40');
INSERT INTO `t_category` VALUES (761, '西兰花', '', 695, 21, 2, 'X', '', '[\"拍错/多拍/不想要\",\"协商一致退款\",\"缺货\",\"未按约定时间发货\",\"其它\"]', 5.00, '[\"正品保障\",\"产地直发\",\"坏果包赔\",\"一件包邮\",\"48小时发货\",\"不支持7天退换\",\"支持7天退换\",\"偏远地区不发货\"]', 0, '2019-08-12 18:12:52', '2019-08-12 18:12:52');
INSERT INTO `t_category` VALUES (762, '新鲜百合', '', 695, 22, 2, 'X', '', '[\"拍错/多拍/不想要\",\"协商一致退款\",\"缺货\",\"未按约定时间发货\",\"其它\"]', 5.00, '[\"正品保障\",\"产地直发\",\"坏果包赔\",\"一件包邮\",\"48小时发货\",\"不支持7天退换\",\"支持7天退换\",\"偏远地区不发货\"]', 0, '2019-08-12 18:13:03', '2019-08-12 18:13:03');
INSERT INTO `t_category` VALUES (763, '新鲜豆类', '', 695, 23, 2, 'X', '', '[\"拍错/多拍/不想要\",\"协商一致退款\",\"缺货\",\"未按约定时间发货\",\"其它\"]', 5.00, '[\"正品保障\",\"产地直发\",\"坏果包赔\",\"一件包邮\",\"48小时发货\",\"不支持7天退换\",\"支持7天退换\",\"偏远地区不发货\"]', 0, '2019-08-12 18:13:16', '2019-08-12 18:13:16');
INSERT INTO `t_category` VALUES (764, '新鲜菌菇', '', 695, 24, 2, 'X', '', '[\"拍错/多拍/不想要\",\"协商一致退款\",\"缺货\",\"未按约定时间发货\",\"其它\"]', 5.00, '[\"正品保障\",\"产地直发\",\"坏果包赔\",\"一件包邮\",\"48小时发货\",\"不支持7天退换\",\"支持7天退换\",\"偏远地区不发货\"]', 0, '2019-08-12 18:13:30', '2019-08-12 18:13:30');
INSERT INTO `t_category` VALUES (765, '新鲜山药', '', 695, 25, 2, 'X', '', '[\"拍错/多拍/不想要\",\"协商一致退款\",\"缺货\",\"未按约定时间发货\",\"其它\"]', 5.00, '[\"正品保障\",\"产地直发\",\"坏果包赔\",\"一件包邮\",\"48小时发货\",\"不支持7天退换\",\"支持7天退换\",\"偏远地区不发货\"]', 0, '2019-08-12 18:13:42', '2019-08-12 18:13:42');
INSERT INTO `t_category` VALUES (766, '叶菜类', '', 695, 26, 2, 'Y', '', '[\"拍错/多拍/不想要\",\"协商一致退款\",\"缺货\",\"未按约定时间发货\",\"其它\"]', 5.00, '[\"正品保障\",\"产地直发\",\"坏果包赔\",\"一件包邮\",\"48小时发货\",\"不支持7天退换\",\"支持7天退换\",\"偏远地区不发货\"]', 0, '2019-08-12 18:13:56', '2019-08-12 18:13:56');
INSERT INTO `t_category` VALUES (767, '荠菜', '', 695, 27, 2, 'J', '', '[\"拍错/多拍/不想要\",\"协商一致退款\",\"缺货\",\"未按约定时间发货\",\"其它\"]', 5.00, '[\"正品保障\",\"产地直发\",\"坏果包赔\",\"一件包邮\",\"48小时发货\",\"不支持7天退换\",\"支持7天退换\",\"偏远地区不发货\"]', 0, '2019-08-12 18:14:11', '2019-08-12 18:14:11');
INSERT INTO `t_category` VALUES (768, '荸荠/马蹄', '', 695, 28, 2, 'B', '', '[\"拍错/多拍/不想要\",\"协商一致退款\",\"缺货\",\"未按约定时间发货\",\"其它\"]', 5.00, '[\"正品保障\",\"产地直发\",\"坏果包赔\",\"一件包邮\",\"48小时发货\",\"不支持7天退换\",\"支持7天退换\",\"偏远地区不发货\"]', 0, '2019-08-12 18:14:26', '2019-08-12 18:14:26');
INSERT INTO `t_category` VALUES (769, '其它', '', 695, 29, 2, 'Q', '', '[\"拍错/多拍/不想要\",\"协商一致退款\",\"缺货\",\"未按约定时间发货\",\"其它\"]', 5.00, '[\"正品保障\",\"产地直发\",\"坏果包赔\",\"一件包邮\",\"48小时发货\",\"不支持7天退换\",\"支持7天退换\",\"偏远地区不发货\"]', 0, '2019-08-12 18:14:39', '2019-08-12 18:14:39');

-- ----------------------------
-- Table structure for t_category_param
-- ----------------------------
DROP TABLE IF EXISTS `t_category_param`;
CREATE TABLE `t_category_param`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `category_id` int(11) NOT NULL COMMENT '品类编号',
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '参数名称',
  `input_type` tinyint(4) NOT NULL COMMENT '输入方式1输入2单选3下拉框',
  `sort` int(11) NOT NULL COMMENT '排序号',
  `type` tinyint(4) NOT NULL DEFAULT 1 COMMENT '参数类型1普通参数2销售参数',
  `searchable` tinyint(4) NOT NULL DEFAULT 0 COMMENT '是否参与搜索 0 否 1 是',
  `required` tinyint(4) NOT NULL DEFAULT 0 COMMENT '是否必填0否1是',
  `status` tinyint(11) NOT NULL DEFAULT 1 COMMENT '状态0未启用1已启用',
  `is_deleted` tinyint(4) NOT NULL DEFAULT 0 COMMENT '逻辑删除',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '分类参数表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for t_category_param_value
-- ----------------------------
DROP TABLE IF EXISTS `t_category_param_value`;
CREATE TABLE `t_category_param_value`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `category_id` int(11) NOT NULL,
  `param_id` int(11) NOT NULL,
  `value` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '',
  `is_deleted` tinyint(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

SET FOREIGN_KEY_CHECKS = 1;
