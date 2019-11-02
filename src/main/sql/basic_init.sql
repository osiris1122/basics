/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50720
Source Host           : localhost:3306
Source Database       : basic_init

Target Server Type    : MYSQL
Target Server Version : 50720
File Encoding         : 65001

Date: 2019-09-23 14:13:21
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for sys_config
-- ----------------------------
DROP TABLE IF EXISTS `sys_config`;
CREATE TABLE `sys_config` (
  `CONFIG_ID` varchar(32) NOT NULL COMMENT '参数主键',
  `CONFIG_NAME` varchar(100) DEFAULT '' COMMENT '参数名称',
  `CONFIG_KEY` varchar(100) DEFAULT '' COMMENT '参数键名',
  `CONFIG_VALUE` varchar(100) DEFAULT '' COMMENT '参数键值',
  `CONFIG_TYPE` char(1) DEFAULT 'N' COMMENT '系统内置（Y是 N否）',
  `DEL_FLAG` int(1) DEFAULT '1' COMMENT '逻辑删除标识(1正常 0删除)',
  `REMARK` varchar(500) DEFAULT NULL COMMENT '备注说明',
  `VERSION` int(11) DEFAULT '0' COMMENT '版本号',
  `CREATE_USER` varchar(32) DEFAULT NULL COMMENT '创建人',
  `CREATE_TIME` datetime DEFAULT NULL COMMENT '创建时间',
  `UPDATE_USER` varchar(32) DEFAULT NULL COMMENT '修改人',
  `UPDATE_TIME` datetime DEFAULT NULL COMMENT '修改时间',
  PRIMARY KEY (`CONFIG_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='参数配置表';

-- ----------------------------
-- Records of sys_config
-- ----------------------------
INSERT INTO `sys_config` VALUES ('1', '主框架页-默认皮肤样式名称', 'sys.index.skinName', 'skin-blue', 'Y', '1', '默认 skin-default、蓝色 skin-blue、黄色 skin-yellow', '0', 'f912345968704fbb921554f55a7f2ba7', '2018-12-12 17:21:56', 'f912345968704fbb921554f55a7f2ba7', '2018-12-12 17:22:03');
INSERT INTO `sys_config` VALUES ('2', '用户管理-账号初始密码', 'sys.user.initPassword', '123456', 'Y', '1', '初始化密码 123456', '0', 'f912345968704fbb921554f55a7f2ba7', '2018-12-12 17:21:59', 'f912345968704fbb921554f55a7f2ba7', '2018-12-12 17:22:05');
INSERT INTO `sys_config` VALUES ('3', '会员手机号注册数', 'PHONE_NUM', '3', 'Y', '1', '会员手机号注册数', '0', 'f912345968704fbb921554f55a7f2ba7', '2018-12-12 17:21:59', 'f912345968704fbb921554f55a7f2ba7', '2018-12-12 17:22:05');
INSERT INTO `sys_config` VALUES ('4', '是否开启短信', 'FLAG_SMS', '1', 'Y', '1', '是否开启短信', '0', 'f912345968704fbb921554f55a7f2ba7', '2018-12-12 17:21:59', 'f912345968704fbb921554f55a7f2ba7', '2018-12-12 17:22:05');
INSERT INTO `sys_config` VALUES ('5', '闪兑手续费比例', 'EXCHANGE_CHARGE', '0.05', 'Y', '1', '闪兑手续费比例', '0', 'f912345968704fbb921554f55a7f2ba7', '2018-12-12 17:21:59', 'f912345968704fbb921554f55a7f2ba7', '2018-12-12 17:22:05');
INSERT INTO `sys_config` VALUES ('6', '锁仓释放比例', 'LOCK_RELEASE_RATE', '0.05', 'Y', '1', '锁仓释放比例', '0', 'f912345968704fbb921554f55a7f2ba7', '2018-12-12 17:21:59', 'f912345968704fbb921554f55a7f2ba7', '2018-12-12 17:22:05');

-- ----------------------------
-- Table structure for sys_dict_data
-- ----------------------------
DROP TABLE IF EXISTS `sys_dict_data`;
CREATE TABLE `sys_dict_data` (
  `DICT_CODE` varchar(32) NOT NULL COMMENT '字典编码',
  `DICT_SORT` int(4) DEFAULT '0' COMMENT '字典排序',
  `DICT_LABEL` varchar(100) DEFAULT '' COMMENT '字典标签',
  `DICT_VALUE` varchar(100) DEFAULT '' COMMENT '字典键值',
  `DICT_TYPE` varchar(100) DEFAULT '' COMMENT '字典类型',
  `CSS_CLASS` varchar(100) DEFAULT '' COMMENT '样式属性（其他样式扩展）',
  `LIST_CLASS` varchar(100) DEFAULT '' COMMENT '表格回显样式',
  `FLAG_DEFAULT` char(1) DEFAULT 'N' COMMENT '是否默认（Y是 N否）',
  `DICT_STATUS` char(1) DEFAULT '0' COMMENT '状态（0正常 1停用）',
  `DEL_FLAG` int(1) DEFAULT '1' COMMENT '逻辑删除标识(1正常 0删除)',
  `REMARK` varchar(500) DEFAULT NULL COMMENT '备注说明',
  `VERSION` int(11) DEFAULT '0' COMMENT '版本号',
  `CREATE_USER` varchar(32) DEFAULT NULL COMMENT '创建人',
  `CREATE_TIME` datetime DEFAULT NULL COMMENT '创建时间',
  `UPDATE_USER` varchar(32) DEFAULT NULL COMMENT '修改人',
  `UPDATE_TIME` datetime DEFAULT NULL COMMENT '修改时间',
  PRIMARY KEY (`DICT_CODE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='字典数据表';

-- ----------------------------
-- Records of sys_dict_data
-- ----------------------------
INSERT INTO `sys_dict_data` VALUES ('1', '1', '男', '0', 'sys_user_sex', '', '', 'Y', '0', '1', '性别男', '0', null, null, null, null);
INSERT INTO `sys_dict_data` VALUES ('10', '1', '是', 'Y', 'sys_yes_no', '', 'primary', 'Y', '0', '1', '系统默认是', '0', null, null, null, null);
INSERT INTO `sys_dict_data` VALUES ('11', '2', '否', 'N', 'sys_yes_no', '', 'danger', 'N', '0', '1', '系统默认否', '0', null, null, null, null);
INSERT INTO `sys_dict_data` VALUES ('12', '1', '资讯', '1', 'sys_notice_type', '', 'warning', 'Y', '0', '1', '通知', '0', null, null, null, null);
INSERT INTO `sys_dict_data` VALUES ('13', '2', '快讯', '2', 'sys_notice_type', '', 'success', 'N', '0', '1', '公告', '0', null, null, null, null);
INSERT INTO `sys_dict_data` VALUES ('14', '1', '正常', '0', 'sys_notice_status', '', 'primary', 'Y', '0', '1', '正常状态', '0', null, null, null, null);
INSERT INTO `sys_dict_data` VALUES ('15', '2', '关闭', '1', 'sys_notice_status', '', 'danger', 'N', '0', '1', '关闭状态', '0', null, null, null, null);
INSERT INTO `sys_dict_data` VALUES ('16', '1', '新增', '1', 'sys_oper_type', '', 'info', 'N', '0', '1', '新增操作', '0', null, null, null, null);
INSERT INTO `sys_dict_data` VALUES ('17', '2', '修改', '2', 'sys_oper_type', '', 'info', 'N', '0', '1', '修改操作', '0', null, null, null, null);
INSERT INTO `sys_dict_data` VALUES ('18', '3', '删除', '3', 'sys_oper_type', '', 'danger', 'N', '0', '1', '删除操作', '0', null, null, null, null);
INSERT INTO `sys_dict_data` VALUES ('19', '4', '授权', '4', 'sys_oper_type', '', 'primary', 'N', '0', '1', '授权操作', '0', null, null, null, null);
INSERT INTO `sys_dict_data` VALUES ('2', '2', '女', '1', 'sys_user_sex', '', '', 'N', '0', '1', '性别女', '0', null, null, null, null);
INSERT INTO `sys_dict_data` VALUES ('20', '5', '导出', '5', 'sys_oper_type', '', 'warning', 'N', '0', '1', '导出操作', '0', null, null, null, null);
INSERT INTO `sys_dict_data` VALUES ('21', '6', '导入', '6', 'sys_oper_type', '', 'warning', 'N', '0', '1', '导入操作', '0', null, null, null, null);
INSERT INTO `sys_dict_data` VALUES ('22', '7', '强退', '7', 'sys_oper_type', '', 'danger', 'N', '0', '1', '强退操作', '0', null, null, null, null);
INSERT INTO `sys_dict_data` VALUES ('23', '8', '生成代码', '8', 'sys_oper_type', '', 'warning', 'N', '0', '1', '生成操作', '0', null, null, null, null);
INSERT INTO `sys_dict_data` VALUES ('24', '8', '清空数据', '9', 'sys_oper_type', '', 'danger', 'N', '0', '1', '清空操作', '0', null, null, null, null);
INSERT INTO `sys_dict_data` VALUES ('25', '1', '成功', '0', 'sys_common_status', '', 'primary', 'N', '0', '1', '正常状态', '0', null, null, null, null);
INSERT INTO `sys_dict_data` VALUES ('26', '2', '失败', '1', 'sys_common_status', '', 'danger', 'N', '0', '1', '停用状态', '0', null, null, null, null);
INSERT INTO `sys_dict_data` VALUES ('3', '3', '未知', '2', 'sys_user_sex', '', '', 'N', '0', '1', '性别未知', '0', null, null, null, null);
INSERT INTO `sys_dict_data` VALUES ('31', '1', '首页', '1', 'app_banner_type', '', 'info', 'N', '0', '1', '首页', '0', null, null, null, null);
INSERT INTO `sys_dict_data` VALUES ('32', '2', 'DAPPS', '2', 'app_banner_type', '', 'info', 'N', '0', '1', 'DAPPS', '0', null, null, null, null);
INSERT INTO `sys_dict_data` VALUES ('4', '1', '显示', '0', 'sys_show_hide', '', 'primary', 'Y', '0', '1', '显示菜单', '0', null, null, null, null);
INSERT INTO `sys_dict_data` VALUES ('41', '1', '是', '1', 'cu_reward_flag', '', 'info', 'N', '0', '1', '是', '0', null, null, null, null);
INSERT INTO `sys_dict_data` VALUES ('42', '2', '否', '0', 'cu_reward_flag', '', 'info', 'N', '0', '1', '否', '0', null, null, null, null);
INSERT INTO `sys_dict_data` VALUES ('45', '1', '待处理', '1', 'cu_feedback_status', '', 'info', 'N', '0', '1', '待处理', '0', null, null, null, null);
INSERT INTO `sys_dict_data` VALUES ('46', '2', '已处理', '2', 'cu_feedback_status', '', 'info', 'N', '0', '1', '已处理', '0', null, null, null, null);
INSERT INTO `sys_dict_data` VALUES ('47', '3', '拒绝处理', '3', 'cu_feedback_status', '', 'info', 'N', '0', '1', '拒绝处理', '0', null, null, null, null);
INSERT INTO `sys_dict_data` VALUES ('48', '1', '待审核', '1', 'cu_cash_status', '', 'info', 'N', '0', '1', '待审核', '0', null, null, null, null);
INSERT INTO `sys_dict_data` VALUES ('49', '2', '通过', '2', 'cu_cash_status', '', 'info', 'N', '0', '1', '通过', '0', null, null, null, null);
INSERT INTO `sys_dict_data` VALUES ('5', '2', '隐藏', '1', 'sys_show_hide', '', 'danger', 'N', '0', '1', '隐藏菜单', '0', null, null, null, null);
INSERT INTO `sys_dict_data` VALUES ('50', '3', '拒绝', '3', 'cu_cash_status', '', 'info', 'N', '0', '1', '拒绝', '0', null, null, null, null);
INSERT INTO `sys_dict_data` VALUES ('51', '1', '注册', '1', 'sms_code_type', '', 'info', 'N', '0', '1', '注册', '0', null, null, null, null);
INSERT INTO `sys_dict_data` VALUES ('52', '2', '忘记密码', '2', 'sms_code_type', '', 'info', 'N', '0', '1', '忘记密码', '0', null, null, null, null);
INSERT INTO `sys_dict_data` VALUES ('53', '3', '修改登录密码', '3', 'sms_code_type', '', 'info', 'N', '0', '1', '修改登录密码', '0', null, null, null, null);
INSERT INTO `sys_dict_data` VALUES ('54', '4', '修改支付密码', '4', 'sms_code_type', '', 'info', 'N', '0', '1', '修改支付密码', '0', null, null, null, null);
INSERT INTO `sys_dict_data` VALUES ('55', '1', '转账', '1', 'cu_feedback_type', '', 'info', 'N', '0', '1', '转账', '0', null, null, null, null);
INSERT INTO `sys_dict_data` VALUES ('56', '2', '充值', '2', 'cu_feedback_type', '', 'info', 'N', '0', '1', '充值', '0', null, null, null, null);
INSERT INTO `sys_dict_data` VALUES ('57', '3', '提现', '3', 'cu_feedback_type', '', 'info', 'N', '0', '1', '提现', '0', null, null, null, null);
INSERT INTO `sys_dict_data` VALUES ('6', '1', '正常', '0', 'sys_normal_disable', '', 'primary', 'Y', '0', '1', '正常状态', '0', null, null, null, null);
INSERT INTO `sys_dict_data` VALUES ('7', '2', '停用', '1', 'sys_normal_disable', '', 'danger', 'N', '0', '1', '停用状态', '0', null, null, null, null);
INSERT INTO `sys_dict_data` VALUES ('8', '1', '正常', '0', 'sys_job_status', '', 'primary', 'Y', '0', '1', '正常状态', '0', null, null, null, null);
INSERT INTO `sys_dict_data` VALUES ('9', '2', '暂停', '1', 'sys_job_status', '', 'danger', 'N', '0', '1', '停用状态', '0', null, null, null, null);

-- ----------------------------
-- Table structure for sys_dict_type
-- ----------------------------
DROP TABLE IF EXISTS `sys_dict_type`;
CREATE TABLE `sys_dict_type` (
  `DICT_ID` varchar(32) NOT NULL COMMENT '字典主键',
  `DICT_NAME` varchar(100) DEFAULT '' COMMENT '字典名称',
  `DICT_TYPE` varchar(100) DEFAULT '' COMMENT '字典类型',
  `DICT_STATUS` char(1) DEFAULT '0' COMMENT '状态（0正常 1停用）',
  `DEL_FLAG` int(1) DEFAULT '1' COMMENT '逻辑删除标识(1正常 0删除)',
  `REMARK` varchar(500) DEFAULT NULL COMMENT '备注说明',
  `VERSION` int(11) DEFAULT '0' COMMENT '版本号',
  `CREATE_USER` varchar(32) DEFAULT NULL COMMENT '创建人',
  `CREATE_TIME` datetime DEFAULT NULL COMMENT '创建时间',
  `UPDATE_USER` varchar(32) DEFAULT NULL COMMENT '修改人',
  `UPDATE_TIME` datetime DEFAULT NULL COMMENT '修改时间',
  PRIMARY KEY (`DICT_ID`),
  UNIQUE KEY `DICT_TYPE` (`DICT_TYPE`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='字典类型表';

-- ----------------------------
-- Records of sys_dict_type
-- ----------------------------
INSERT INTO `sys_dict_type` VALUES ('1', '用户性别', 'sys_user_sex', '0', '1', '用户性别列表', '0', null, null, null, null);
INSERT INTO `sys_dict_type` VALUES ('10', '横幅类型', 'app_banner_type', '0', '1', '横幅类型列表', '0', null, null, null, null);
INSERT INTO `sys_dict_type` VALUES ('11', '社区奖类型', 'cu_reward_flag', '0', '1', '社区奖类型', '0', null, null, null, null);
INSERT INTO `sys_dict_type` VALUES ('12', '反馈状态', 'cu_feedback_status', '0', '1', '反馈状态', '0', null, null, null, null);
INSERT INTO `sys_dict_type` VALUES ('13', '提现审核状态', 'cu_cash_status', '0', '1', '提现审核状态', '0', null, null, null, null);
INSERT INTO `sys_dict_type` VALUES ('14', '短信类型', 'sms_code_type', '0', '1', '短信类型', '0', null, null, null, null);
INSERT INTO `sys_dict_type` VALUES ('15', '反馈类型', 'cu_feedback_type', '0', '1', '反馈类型', '0', null, null, null, null);
INSERT INTO `sys_dict_type` VALUES ('2', '菜单状态', 'sys_show_hide', '0', '1', '菜单状态列表', '0', null, null, null, null);
INSERT INTO `sys_dict_type` VALUES ('3', '系统开关', 'sys_normal_disable', '0', '1', '系统开关列表', '0', null, null, null, null);
INSERT INTO `sys_dict_type` VALUES ('4', '任务状态', 'sys_job_status', '0', '1', '任务状态列表', '0', null, null, null, null);
INSERT INTO `sys_dict_type` VALUES ('5', '系统是否', 'sys_yes_no', '0', '1', '系统是否列表', '0', null, null, null, null);
INSERT INTO `sys_dict_type` VALUES ('6', '通知类型', 'sys_notice_type', '0', '1', '通知类型列表', '0', null, null, null, null);
INSERT INTO `sys_dict_type` VALUES ('7', '通知状态', 'sys_notice_status', '0', '1', '通知状态列表', '0', null, null, null, null);
INSERT INTO `sys_dict_type` VALUES ('8', '操作类型', 'sys_oper_type', '0', '1', '操作类型列表', '0', null, null, null, null);
INSERT INTO `sys_dict_type` VALUES ('9', '系统状态', 'sys_common_status', '0', '1', '登录状态列表', '0', null, null, null, null);

-- ----------------------------
-- Table structure for sys_job
-- ----------------------------
DROP TABLE IF EXISTS `sys_job`;
CREATE TABLE `sys_job` (
  `JOB_ID` varchar(32) NOT NULL COMMENT '任务ID',
  `JOB_NAME` varchar(64) NOT NULL DEFAULT '' COMMENT '任务名称',
  `JOB_GROUP` varchar(64) NOT NULL DEFAULT '' COMMENT '任务组名',
  `METHOD_NAME` varchar(500) DEFAULT '' COMMENT '任务方法',
  `METHOD_PARAMS` varchar(200) DEFAULT '' COMMENT '方法参数',
  `CRON_EXPRESSION` varchar(255) DEFAULT '' COMMENT 'cron执行表达式',
  `MISFIRE_POLICY` varchar(20) DEFAULT '3' COMMENT '计划执行错误策略（1立即执行 2执行一次 3放弃执行）',
  `JOB_STATUS` char(1) DEFAULT '0' COMMENT '状态（0正常 1暂停）',
  `DEL_FLAG` int(1) DEFAULT '1' COMMENT '逻辑删除标识(1正常 0删除)',
  `REMARK` varchar(500) DEFAULT NULL COMMENT '备注说明',
  `VERSION` int(11) DEFAULT '0' COMMENT '版本号',
  `CREATE_USER` varchar(32) DEFAULT NULL COMMENT '创建人',
  `CREATE_TIME` datetime DEFAULT NULL COMMENT '创建时间',
  `UPDATE_USER` varchar(32) DEFAULT NULL COMMENT '修改人',
  `UPDATE_TIME` datetime DEFAULT NULL COMMENT '修改时间',
  PRIMARY KEY (`JOB_ID`,`JOB_NAME`,`JOB_GROUP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='定时任务调度表';

-- ----------------------------
-- Records of sys_job
-- ----------------------------
INSERT INTO `sys_job` VALUES ('1', 'basicsTask', '静态释放', 'staticRelease', '', '0 0 0 * * ?', '1', '0', '1', null, '0', null, null, null, null);

-- ----------------------------
-- Table structure for sys_job_log
-- ----------------------------
DROP TABLE IF EXISTS `sys_job_log`;
CREATE TABLE `sys_job_log` (
  `JOB_LOG_ID` varchar(32) NOT NULL COMMENT '任务日志ID',
  `JOB_NAME` varchar(255) NOT NULL COMMENT '任务名称',
  `JOB_GROUP` varchar(255) NOT NULL COMMENT '任务组名',
  `METHOD_NAME` varchar(500) DEFAULT NULL COMMENT '任务方法',
  `METHOD_PARAMS` varchar(200) DEFAULT '' COMMENT '方法参数',
  `JOB_MESSAGE` varchar(500) DEFAULT NULL COMMENT '日志信息',
  `JOB_STATUS` varchar(10) DEFAULT '0' COMMENT '执行状态（0正常 1失败）',
  `EXCEPTION_INFO` varchar(2000) DEFAULT '' COMMENT '异常信息',
  `CREATE_TIME` datetime DEFAULT NULL,
  PRIMARY KEY (`JOB_LOG_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='定时任务调度日志表';

-- ----------------------------
-- Records of sys_job_log
-- ----------------------------
INSERT INTO `sys_job_log` VALUES ('004e51a0b5b0750bf1aa7316e3bebd08', 'basicsTask', '静态释放', 'staticRelease', '', 'basicsTask 总共耗时：2毫秒', '0', '', '2019-03-12 06:50:17');
INSERT INTO `sys_job_log` VALUES ('00558e39e6b7deb2a4c577001d94ac06', 'basicsTask', '静态释放', 'staticRelease', '', 'basicsTask 总共耗时：56毫秒', '0', '', '2019-03-11 22:00:49');
INSERT INTO `sys_job_log` VALUES ('011631727611d743d3bb9508a770200c', 'basicsTask', '静态释放', 'staticRelease', '', 'basicsTask 总共耗时：0毫秒', '0', '', '2019-03-12 20:52:55');
INSERT INTO `sys_job_log` VALUES ('01563d0cdde3591bef405aaddaa088e9', 'basicsTask', '静态释放', 'staticRelease', '', 'basicsTask 总共耗时：63毫秒', '0', '', '2019-03-08 05:32:36');
INSERT INTO `sys_job_log` VALUES ('03156a141b035873ce5f7a21b74339d6', 'basicsTask', '静态释放', 'staticRelease', '', 'basicsTask 总共耗时：9毫秒', '0', '', '2019-03-13 15:40:54');
INSERT INTO `sys_job_log` VALUES ('047f1aa606e5f7e1605f37e3d610d3c6', 'basicsTask', '静态释放', 'staticRelease', '', 'basicsTask 总共耗时：90毫秒', '0', '', '2019-03-03 06:24:30');
INSERT INTO `sys_job_log` VALUES ('0508c787797d3de9d30f76d65518270a', 'basicsTask', '静态释放', 'staticRelease', '', 'basicsTask 总共耗时：0毫秒', '0', '', '2019-03-12 20:07:02');
INSERT INTO `sys_job_log` VALUES ('052c515e008f3e0dab0ea8da6eb23056', 'basicsTask', '静态释放', 'staticRelease', '', 'basicsTask 总共耗时：66毫秒', '0', '', '2019-03-11 10:01:38');
INSERT INTO `sys_job_log` VALUES ('06293b53acf1f72f9635c3ecc9b0c06f', 'basicsTask', '静态释放', 'staticRelease', '', 'basicsTask 总共耗时：1毫秒', '0', '', '2019-03-13 15:44:11');
INSERT INTO `sys_job_log` VALUES ('063d4ad9244c65309103ac7af950c744', 'basicsTask', '静态释放', 'staticRelease', '', 'basicsTask 总共耗时：42毫秒', '0', '', '2019-03-04 21:24:39');
INSERT INTO `sys_job_log` VALUES ('07054dce620d2784627f7170141e758c', 'basicsTask', '静态释放', 'staticRelease', '', 'basicsTask 总共耗时：304毫秒', '0', '', '2019-02-27 07:52:21');
INSERT INTO `sys_job_log` VALUES ('075bc25f4e9c9e26484aeea830c293a4', 'basicsTask', '静态释放', 'staticRelease', '', 'basicsTask 总共耗时：31毫秒', '0', '', '2019-03-09 06:32:46');
INSERT INTO `sys_job_log` VALUES ('0985447dca459fc0a8155d7d830ff291', 'basicsTask', '静态释放', 'staticRelease', '', 'basicsTask 总共耗时：51毫秒', '0', '', '2019-03-09 07:27:31');
INSERT INTO `sys_job_log` VALUES ('09862a48a1e850c8fff7a142abf8536b', 'basicsTask', '静态释放', 'staticRelease', '', 'basicsTask 总共耗时：96毫秒', '0', '', '2019-03-06 22:49:17');
INSERT INTO `sys_job_log` VALUES ('0a0c3f1e6061d53bfa18875848a7afb1', 'basicsTask', '静态释放', 'staticRelease', '', 'basicsTask 总共耗时：0毫秒', '0', '', '2019-03-12 20:07:02');
INSERT INTO `sys_job_log` VALUES ('0a65ddd7067c4a9bd2dee23db8f0f995', 'basicsTask', '静态释放', 'staticRelease', '', 'basicsTask 总共耗时：90毫秒', '0', '', '2019-03-10 00:00:00');
INSERT INTO `sys_job_log` VALUES ('0a68fa91891a8e17d6a6d228d2f69812', 'basicsTask', '静态释放', 'staticRelease', '', 'basicsTask 总共耗时：21010毫秒', '0', '', '2019-03-05 14:42:26');
INSERT INTO `sys_job_log` VALUES ('0ac03ca6e3f3243dbc2eb6bf39675a07', 'basicsTask', '静态释放', 'staticRelease', '', 'basicsTask 总共耗时：70毫秒', '0', '', '2019-03-11 10:01:40');
INSERT INTO `sys_job_log` VALUES ('0b36a8b11b4d9f0a95ecbd737c7dc726', 'basicsTask', '静态释放', 'staticRelease', '', 'basicsTask 总共耗时：0毫秒', '0', '', '2019-03-12 20:07:02');
INSERT INTO `sys_job_log` VALUES ('0b37180c420770afa4e39e45277fd49a', 'basicsTask', '静态释放', 'staticRelease', '', 'basicsTask 总共耗时：9毫秒', '0', '', '2019-03-13 15:44:10');
INSERT INTO `sys_job_log` VALUES ('0c44c8efac4084b54b8eb8cc0de99f98', 'basicsTask', '静态释放', 'staticRelease', '', 'basicsTask 总共耗时：42毫秒', '0', '', '2019-03-04 20:43:39');
INSERT INTO `sys_job_log` VALUES ('0ccf35870cc2faf4b6431c9a1d21c4f4', 'basicsTask', '静态释放', 'staticRelease', '', 'basicsTask 总共耗时：58毫秒', '0', '', '2019-02-27 08:31:02');
INSERT INTO `sys_job_log` VALUES ('0e209287dde39ccdb2d6024dc53bb25d', 'basicsTask', '静态释放', 'staticRelease', '', 'basicsTask 总共耗时：95毫秒', '0', '', '2019-03-03 06:24:30');
INSERT INTO `sys_job_log` VALUES ('0e3a940fb4457ffdd6f31854ee413c61', 'basicsTask', '静态释放', 'staticRelease', '', 'basicsTask 总共耗时：1毫秒', '0', '', '2019-03-12 20:52:55');
INSERT INTO `sys_job_log` VALUES ('0e551706a75c83f139dae9d48cec7a23', 'basicsTask', '静态释放', 'staticRelease', '', 'basicsTask 总共耗时：61毫秒', '0', '', '2019-03-11 22:00:50');
INSERT INTO `sys_job_log` VALUES ('0fb97ee8557381d04d49cc8d58f1f1b8', 'basicsTask', '静态释放', 'staticRelease', '', 'basicsTask 总共耗时：48毫秒', '0', '', '2019-03-04 20:43:39');
INSERT INTO `sys_job_log` VALUES ('10330c9c11a8c900613f176e8b46b763', 'basicsTask', '静态释放', 'staticRelease', '', 'basicsTask 总共耗时：96毫秒', '0', '', '2019-03-09 07:27:31');
INSERT INTO `sys_job_log` VALUES ('106d8a4eb9306b37a79b88c4523b561a', 'basicsTask', '静态释放', 'staticRelease', '', 'basicsTask 总共耗时：204毫秒', '0', '', '2019-03-08 05:32:36');
INSERT INTO `sys_job_log` VALUES ('10c4dfbb31476095a3a5859f6f916eb3', 'basicsTask', '静态释放', 'staticRelease', '', 'basicsTask 总共耗时：0毫秒', '0', '', '2019-03-12 20:07:02');
INSERT INTO `sys_job_log` VALUES ('1112078973849deef737b386bc38256d', 'basicsTask', '静态释放', 'staticRelease', '', 'basicsTask 总共耗时：0毫秒', '0', '', '2019-03-13 15:40:54');
INSERT INTO `sys_job_log` VALUES ('1122421ec91f5e4165c0d6f1e8978c53', 'basicsTask', '静态释放', 'staticRelease', '', 'basicsTask 总共耗时：44毫秒', '0', '', '2019-03-03 07:32:00');
INSERT INTO `sys_job_log` VALUES ('12aa0d6e75e49cba8add7076d6149d93', 'basicsTask', '静态释放', 'staticRelease', '', 'basicsTask 总共耗时：109毫秒', '0', '', '2019-03-01 04:23:09');
INSERT INTO `sys_job_log` VALUES ('14cb8ed3fae0396d5230188e5244f3b9', 'basicsTask', '静态释放', 'staticRelease', '', 'basicsTask 总共耗时：1毫秒', '0', '', '2019-03-12 20:07:02');
INSERT INTO `sys_job_log` VALUES ('14e51ddf4fdc20e5cfc44c6470b5c9f4', 'basicsTask', '静态释放', 'staticRelease', '', 'basicsTask 总共耗时：21022毫秒', '0', '', '2019-03-05 14:22:00');
INSERT INTO `sys_job_log` VALUES ('150776224af8e61e7bef7db5b26fc628', 'basicsTask', '静态释放', 'staticRelease', '', 'basicsTask 总共耗时：49毫秒', '0', '', '2019-03-04 20:56:34');
INSERT INTO `sys_job_log` VALUES ('15ec61fd99761fae47f5a7304071f798', 'basicsTask', '静态释放', 'staticRelease', '', 'basicsTask 总共耗时：60毫秒', '0', '', '2019-03-03 07:51:51');
INSERT INTO `sys_job_log` VALUES ('16996153a2d8b13ca362d5ba97d2a078', 'basicsTask', '静态释放', 'staticRelease', '', 'basicsTask 总共耗时：56毫秒', '0', '', '2019-03-09 07:27:30');
INSERT INTO `sys_job_log` VALUES ('16e1cfdc0aebfca4699e8ab06380a4f5', 'basicsTask', '静态释放', 'staticRelease', '', 'basicsTask 总共耗时：45毫秒', '0', '', '2019-03-04 21:34:13');
INSERT INTO `sys_job_log` VALUES ('1779fb12c2dd396ac76add366af00ec8', 'basicsTask', '静态释放', 'staticRelease', '', 'basicsTask 总共耗时：56毫秒', '0', '', '2019-03-05 08:29:04');
INSERT INTO `sys_job_log` VALUES ('178f7d006407f8f9e2dfcdd6ca6fe544', 'basicsTask', '静态释放', 'staticRelease', '', 'basicsTask 总共耗时：51毫秒', '0', '', '2019-03-03 07:32:00');
INSERT INTO `sys_job_log` VALUES ('17cf87fad44aae3029e93b3a53c5d080', 'basicsTask', '静态释放', 'staticRelease', '', 'basicsTask 总共耗时：45毫秒', '0', '', '2019-03-11 13:34:55');
INSERT INTO `sys_job_log` VALUES ('19d7910022a53a761de0c9fbb7e0c2d8', 'basicsTask', '静态释放', 'staticRelease', '', 'basicsTask 总共耗时：114毫秒', '0', '', '2019-03-08 08:18:27');
INSERT INTO `sys_job_log` VALUES ('19dafa3dc38eed4d533d1ed2540cd4f9', 'basicsTask', '静态释放', 'staticRelease', '', 'basicsTask 总共耗时：117毫秒', '0', '', '2019-03-08 05:32:36');
INSERT INTO `sys_job_log` VALUES ('1a67c3afad9cca3f670c19034e592cc2', 'basicsTask', '静态释放', 'staticRelease', '', 'basicsTask 总共耗时：62毫秒', '0', '', '2019-03-11 22:00:49');
INSERT INTO `sys_job_log` VALUES ('1a773ec40f1953718406872224b21d6c', 'basicsTask', '静态释放', 'staticRelease', '', 'basicsTask 总共耗时：41毫秒', '0', '', '2019-03-11 13:28:01');
INSERT INTO `sys_job_log` VALUES ('1abc4499035ec5254b8e5df1e3012fa1', 'basicsTask', '静态释放', 'staticRelease', '', 'basicsTask 总共耗时：40毫秒', '0', '', '2019-03-04 20:56:34');
INSERT INTO `sys_job_log` VALUES ('1ae4c422419d2619e2f955b463c4e577', 'basicsTask', '静态释放', 'staticRelease', '', 'basicsTask 总共耗时：1毫秒', '0', '', '2019-03-12 20:52:55');
INSERT INTO `sys_job_log` VALUES ('1b117867cfcbc16c6a2c5576bf775bae', 'basicsTask', '静态释放', 'staticRelease', '', 'basicsTask 总共耗时：52毫秒', '0', '', '2019-03-11 10:01:39');
INSERT INTO `sys_job_log` VALUES ('1b4d04b149bc53eddcbaf1659f531e6a', 'basicsTask', '静态释放', 'staticRelease', '', 'basicsTask 总共耗时：47毫秒', '0', '', '2019-03-04 20:56:34');
INSERT INTO `sys_job_log` VALUES ('1b92bd17c56bdb80aab3f2b787304c8a', 'basicsTask', '静态释放', 'staticRelease', '', 'basicsTask 总共耗时：21019毫秒', '0', '', '2019-03-05 14:43:50');
INSERT INTO `sys_job_log` VALUES ('1bc8eca0a6bdc3640d3e9fe4198e92c0', 'basicsTask', '静态释放', 'staticRelease', '', 'basicsTask 总共耗时：43毫秒', '0', '', '2019-03-11 13:28:01');
INSERT INTO `sys_job_log` VALUES ('1f1c19598f757a75912c52d913890aa3', 'basicsTask', '静态释放', 'staticRelease', '', 'basicsTask 总共耗时：494毫秒', '0', '', '2019-02-27 08:13:09');
INSERT INTO `sys_job_log` VALUES ('1f7303cd098918e5dca7da48c7cc0b3c', 'basicsTask', '静态释放', 'staticRelease', '', 'basicsTask 总共耗时：1毫秒', '0', '', '2019-03-12 20:12:03');
INSERT INTO `sys_job_log` VALUES ('1fa322026b1e7ab851828aec6a1ceb17', 'basicsTask', '静态释放', 'staticRelease', '', 'basicsTask 总共耗时：52毫秒', '0', '', '2019-03-03 07:32:00');
INSERT INTO `sys_job_log` VALUES ('2223bc3a6fd96869fe8b3e79a9a3f4e9', 'basicsTask', '静态释放', 'staticRelease', '', 'basicsTask 总共耗时：401毫秒', '0', '', '2019-03-11 10:01:38');
INSERT INTO `sys_job_log` VALUES ('223bbdd3c693c7009953c78cd5146934', 'basicsTask', '静态释放', 'staticRelease', '', 'basicsTask 总共耗时：40毫秒', '0', '', '2019-03-04 21:34:13');
INSERT INTO `sys_job_log` VALUES ('229bd0116966808fe5f272190746d6ed', 'basicsTask', '静态释放', 'staticRelease', '', 'basicsTask 总共耗时：45毫秒', '0', '', '2019-03-03 07:51:51');
INSERT INTO `sys_job_log` VALUES ('22dc17f96667674b7925902c0bbaf835', 'basicsTask', '静态释放', 'staticRelease', '', 'basicsTask 总共耗时：121毫秒', '0', '', '2019-03-08 08:18:27');
INSERT INTO `sys_job_log` VALUES ('2365144e3f3b9603ce47000a042ad36d', 'basicsTask', '静态释放', 'staticRelease', '', 'basicsTask 总共耗时：47毫秒', '0', '', '2019-03-11 13:28:00');
INSERT INTO `sys_job_log` VALUES ('264526cf1febeecd39d8ddb099e91d57', 'basicsTask', '静态释放', 'staticRelease', '', 'basicsTask 总共耗时：0毫秒', '0', '', '2019-03-12 20:29:48');
INSERT INTO `sys_job_log` VALUES ('2756029e72c0d685eba87ca34f67df1d', 'basicsTask', '静态释放', 'staticRelease', '', 'basicsTask 总共耗时：0毫秒', '0', '', '2019-03-12 20:52:55');
INSERT INTO `sys_job_log` VALUES ('27a960e8059b4590292678cd36aeaa6f', 'basicsTask', '静态释放', 'staticRelease', '', 'basicsTask 总共耗时：51毫秒', '0', '', '2019-03-09 06:32:47');
INSERT INTO `sys_job_log` VALUES ('294b2d335eef3469984d145b23398cdc', 'basicsTask', '静态释放', 'staticRelease', '', 'basicsTask 总共耗时：69毫秒', '0', '', '2019-03-09 07:27:30');
INSERT INTO `sys_job_log` VALUES ('29b79d2c05e830d463725b549a9ef6fc', 'basicsTask', '静态释放', 'staticRelease', '', 'basicsTask 总共耗时：255毫秒', '0', '', '2019-03-08 05:32:34');
INSERT INTO `sys_job_log` VALUES ('2a471ab5f4c75dfef28e806b1d5e6a3a', 'basicsTask', '静态释放', 'staticRelease', '', 'basicsTask 总共耗时：53毫秒', '0', '', '2019-03-08 05:45:30');
INSERT INTO `sys_job_log` VALUES ('2b4ba20d2bc9bdaba7a221d19d1f6ce3', 'basicsTask', '静态释放', 'staticRelease', '', 'basicsTask 总共耗时：10毫秒', '0', '', '2019-03-12 20:52:54');
INSERT INTO `sys_job_log` VALUES ('2b5fa0162b3d239ccb95242fe75aa402', 'basicsTask', '静态释放', 'staticRelease', '', 'basicsTask 总共耗时：43毫秒', '0', '', '2019-03-07 05:44:40');
INSERT INTO `sys_job_log` VALUES ('2bc6dd704213c1ff351695fbd061bccf', 'basicsTask', '静态释放', 'staticRelease', '', 'basicsTask 总共耗时：271毫秒', '0', '', '2019-02-27 07:47:56');
INSERT INTO `sys_job_log` VALUES ('2bccc96a75e59fd0ff8ed7cf044961c7', 'basicsTask', '静态释放', 'staticRelease', '', 'basicsTask 总共耗时：76毫秒', '0', '', '2019-02-27 08:13:10');
INSERT INTO `sys_job_log` VALUES ('2cd3af658c97362415532aea4a90aa8a', 'basicsTask', '静态释放', 'staticRelease', '', 'basicsTask 总共耗时：115毫秒', '0', '', '2019-03-05 17:29:32');
INSERT INTO `sys_job_log` VALUES ('2e3bf39fa941388c2c3f46800a5c2223', 'basicsTask', '静态释放', 'staticRelease', '', 'basicsTask 总共耗时：86毫秒', '0', '', '2019-03-08 08:18:28');
INSERT INTO `sys_job_log` VALUES ('2eb36faed69c29380a0bd6cb5d444897', 'basicsTask', '静态释放', 'staticRelease', '', 'basicsTask 总共耗时：21019毫秒', '0', '', '2019-03-05 14:22:21');
INSERT INTO `sys_job_log` VALUES ('2f69ce4c8ca35dca139050f18b5d5845', 'basicsTask', '静态释放', 'staticRelease', '', 'basicsTask 总共耗时：71毫秒', '0', '', '2019-03-09 07:27:29');
INSERT INTO `sys_job_log` VALUES ('304296dc291be03928189cf0d782cec1', 'basicsTask', '静态释放', 'staticRelease', '', 'basicsTask 总共耗时：21010毫秒', '0', '', '2019-03-05 14:23:24');
INSERT INTO `sys_job_log` VALUES ('30b5f407fc0c378b313b395de050619a', 'basicsTask', '静态释放', 'staticRelease', '', 'basicsTask 总共耗时：45毫秒', '0', '', '2019-03-11 13:34:55');
INSERT INTO `sys_job_log` VALUES ('31c998dbdb751621b641cbc2f6412c95', 'basicsTask', '静态释放', 'staticRelease', '', 'basicsTask 总共耗时：293毫秒', '0', '', '2019-03-04 19:58:15');
INSERT INTO `sys_job_log` VALUES ('327400c0f1c88e80721ae7fc83128c78', 'basicsTask', '静态释放', 'staticRelease', '', 'basicsTask 总共耗时：38毫秒', '0', '', '2019-03-07 21:04:06');
INSERT INTO `sys_job_log` VALUES ('32ca6288c21cd0484023be737f0151da', 'basicsTask', '静态释放', 'staticRelease', '', 'basicsTask 总共耗时：1毫秒', '0', '', '2019-03-12 06:50:17');
INSERT INTO `sys_job_log` VALUES ('32de2f0cfebfaa05e73d97121559e70f', 'basicsTask', '静态释放', 'staticRelease', '', 'basicsTask 总共耗时：38毫秒', '0', '', '2019-03-09 06:32:47');
INSERT INTO `sys_job_log` VALUES ('335f8ac1011bebc58868cbfed284ef17', 'basicsTask', '静态释放', 'staticRelease', '', 'basicsTask 总共耗时：59毫秒', '0', '', '2019-03-08 08:18:28');
INSERT INTO `sys_job_log` VALUES ('336be0564d72cc062c69913e9b57caf6', 'basicsTask', '静态释放', 'staticRelease', '', 'basicsTask 总共耗时：40毫秒', '0', '', '2019-03-04 21:24:39');
INSERT INTO `sys_job_log` VALUES ('3498fc32aec0afbd769c4514e513db3a', 'basicsTask', '静态释放', 'staticRelease', '', 'basicsTask 总共耗时：48毫秒', '0', '', '2019-03-11 10:01:39');
INSERT INTO `sys_job_log` VALUES ('354faa3fb9b07c2b725de77c0a1ec27e', 'basicsTask', '静态释放', 'staticRelease', '', 'basicsTask 总共耗时：1毫秒', '0', '', '2019-03-12 20:29:48');
INSERT INTO `sys_job_log` VALUES ('35504ab19c48b53af4669ef753664ce7', 'basicsTask', '静态释放', 'staticRelease', '', 'basicsTask 总共耗时：63毫秒', '0', '', '2019-03-07 05:44:40');
INSERT INTO `sys_job_log` VALUES ('356ff101a6ef727dd38f7a0def6727a4', 'basicsTask', '静态释放', 'staticRelease', '', 'basicsTask 总共耗时：1毫秒', '0', '', '2019-03-12 06:50:18');
INSERT INTO `sys_job_log` VALUES ('36ebd0528f3d9865001ed66fb34b97af', 'basicsTask', '静态释放', 'staticRelease', '', 'basicsTask 总共耗时：1毫秒', '0', '', '2019-03-13 15:44:11');
INSERT INTO `sys_job_log` VALUES ('3921eabfb557dc5689f3b8e4ccbcb216', 'basicsTask', '静态释放', 'staticRelease', '', 'basicsTask 总共耗时：0毫秒', '0', '', '2019-03-13 15:40:55');
INSERT INTO `sys_job_log` VALUES ('39609f89c17db2dd74c3e71e3b4ee85b', 'basicsTask', '静态释放', 'staticRelease', '', 'basicsTask 总共耗时：84毫秒', '0', '', '2019-03-05 17:29:31');
INSERT INTO `sys_job_log` VALUES ('3a11e9824c8017e4fe8ef9600127b5e3', 'basicsTask', '静态释放', 'staticRelease', '', 'basicsTask 总共耗时：42毫秒', '0', '', '2019-03-04 19:58:15');
INSERT INTO `sys_job_log` VALUES ('3a64a9a20ecaa5ebfe6bba8493090513', 'basicsTask', '静态释放', 'staticRelease', '', 'basicsTask 总共耗时：250毫秒', '0', '', '2019-02-27 08:31:01');
INSERT INTO `sys_job_log` VALUES ('3aca579fbdc3bf67c4151a81f675877c', 'basicsTask', '静态释放', 'staticRelease', '', 'basicsTask 总共耗时：1毫秒', '0', '', '2019-03-12 20:07:02');
INSERT INTO `sys_job_log` VALUES ('3b158e1126729aba312a9307a7db485a', 'basicsTask', '静态释放', 'staticRelease', '', 'basicsTask 总共耗时：0毫秒', '0', '', '2019-03-13 15:44:11');
INSERT INTO `sys_job_log` VALUES ('3b32722a09859d49f1464a3b238ad90d', 'basicsTask', '静态释放', 'staticRelease', '', 'basicsTask 总共耗时：42毫秒', '0', '', '2019-03-11 13:28:01');
INSERT INTO `sys_job_log` VALUES ('3b4b4c61d1a58a5c0c53034801654d80', 'basicsTask', '静态释放', 'staticRelease', '', 'basicsTask 总共耗时：137毫秒', '0', '', '2019-03-08 05:32:35');
INSERT INTO `sys_job_log` VALUES ('3b7f1b3502722975568a4d28e482ef9f', 'basicsTask', '静态释放', 'staticRelease', '', 'basicsTask 总共耗时：63毫秒', '0', '', '2019-03-07 21:04:06');
INSERT INTO `sys_job_log` VALUES ('3b83dd703029748603e2f9fcc3d40569', 'basicsTask', '静态释放', 'staticRelease', '', 'basicsTask 总共耗时：43毫秒', '0', '', '2019-03-11 13:28:01');
INSERT INTO `sys_job_log` VALUES ('3bab3778351f95559d5705f897da61cb', 'basicsTask', '静态释放', 'staticRelease', '', 'basicsTask 总共耗时：1毫秒', '0', '', '2019-03-13 15:40:54');
INSERT INTO `sys_job_log` VALUES ('3bd634590a299b0206440b629664778f', 'basicsTask', '静态释放', 'staticRelease', '', 'basicsTask 总共耗时：41毫秒', '0', '', '2019-03-04 21:34:13');
INSERT INTO `sys_job_log` VALUES ('3c9b54aeafce67bb0a4db7ec02e543a6', 'basicsTask', '静态释放', 'staticRelease', '', 'basicsTask 总共耗时：81毫秒', '0', '', '2019-02-27 00:00:00');
INSERT INTO `sys_job_log` VALUES ('3cd1f58189ab79307479c14a1f615b3c', 'basicsTask', '静态释放', 'staticRelease', '', 'basicsTask 总共耗时：7毫秒', '0', '', '2019-03-12 20:07:02');
INSERT INTO `sys_job_log` VALUES ('40877a0bef60304ac97a266e74336dff', 'basicsTask', '静态释放', 'staticRelease', '', 'basicsTask 总共耗时：1毫秒', '0', '', '2019-03-12 20:52:55');
INSERT INTO `sys_job_log` VALUES ('40c72295657b7b88f841e31a81d0ef5a', 'basicsTask', '静态释放', 'staticRelease', '', 'basicsTask 总共耗时：2毫秒', '0', '', '2019-03-12 06:50:18');
INSERT INTO `sys_job_log` VALUES ('4107469b3f6d9ca59999e0e85ffc804c', 'basicsTask', '静态释放', 'staticRelease', '', 'basicsTask 总共耗时：45毫秒', '0', '', '2019-03-11 13:28:01');
INSERT INTO `sys_job_log` VALUES ('4249c7c27cf9426be357ccea722faeab', 'basicsTask', '静态释放', 'staticRelease', '', 'basicsTask 总共耗时：0毫秒', '0', '', '2019-03-13 15:40:54');
INSERT INTO `sys_job_log` VALUES ('42dc2b2e2e87f1689e1337e67a6de163', 'basicsTask', '静态释放', 'staticRelease', '', 'basicsTask 总共耗时：24毫秒', '0', '', '2019-03-11 13:34:56');
INSERT INTO `sys_job_log` VALUES ('4335cf93728b21750ecc9ab78ab9a885', 'basicsTask', '静态释放', 'staticRelease', '', 'basicsTask 总共耗时：38毫秒', '0', '', '2019-03-11 13:28:00');
INSERT INTO `sys_job_log` VALUES ('43e174ddbdda478d8f38c440032cbd80', 'basicsTask', '静态释放', 'staticRelease', '', 'basicsTask 总共耗时：1毫秒', '0', '', '2019-03-12 20:29:48');
INSERT INTO `sys_job_log` VALUES ('44d25719921c7cf34f528e8a759e54d1', 'basicsTask', '静态释放', 'staticRelease', '', 'basicsTask 总共耗时：68毫秒', '0', '', '2019-03-06 22:49:16');
INSERT INTO `sys_job_log` VALUES ('45282633548119dcfce722a3888d7de0', 'basicsTask', '静态释放', 'staticRelease', '', 'basicsTask 总共耗时：119毫秒', '0', '', '2019-03-08 08:18:27');
INSERT INTO `sys_job_log` VALUES ('458d15c8051dde3ca30fd3bada4f501b', 'basicsTask', '静态释放', 'staticRelease', '', 'basicsTask 总共耗时：1毫秒', '0', '', '2019-03-12 06:50:17');
INSERT INTO `sys_job_log` VALUES ('45c99b662c7ff152328fa65dd4c80e4c', 'basicsTask', '静态释放', 'staticRelease', '', 'basicsTask 总共耗时：21008毫秒', '0', '', '2019-03-05 14:44:11');
INSERT INTO `sys_job_log` VALUES ('47d5a2bf74cb425b59bed2433ece6e2a', 'basicsTask', '静态释放', 'staticRelease', '', 'basicsTask 总共耗时：71毫秒', '0', '', '2019-03-01 04:23:09');
INSERT INTO `sys_job_log` VALUES ('486a41b0f95e1f049d688fc741934b2f', 'basicsTask', '静态释放', 'staticRelease', '', 'basicsTask 总共耗时：53毫秒', '0', '', '2019-03-11 22:00:50');
INSERT INTO `sys_job_log` VALUES ('488e23a6a48f10a58866795f620e2976', 'basicsTask', '静态释放', 'staticRelease', '', 'basicsTask 总共耗时：0毫秒', '0', '', '2019-03-12 20:52:55');
INSERT INTO `sys_job_log` VALUES ('48a0f9698c0552c05243a1e213e55255', 'basicsTask', '静态释放', 'staticRelease', '', 'basicsTask 总共耗时：251毫秒', '0', '', '2019-03-08 08:18:26');
INSERT INTO `sys_job_log` VALUES ('497f83be8636cd2c6995a618bfc2948a', 'basicsTask', '静态释放', 'staticRelease', '', 'basicsTask 总共耗时：0毫秒', '0', '', '2019-03-12 20:52:55');
INSERT INTO `sys_job_log` VALUES ('49ace8feb044727ffb1bbcbad92c652c', 'basicsTask', '静态释放', 'staticRelease', '', 'basicsTask 总共耗时：0毫秒', '0', '', '2019-03-12 20:52:55');
INSERT INTO `sys_job_log` VALUES ('49b5d7fd66567f56305cde554da3de22', 'basicsTask', '静态释放', 'staticRelease', '', 'basicsTask 总共耗时：1毫秒', '0', '', '2019-03-12 20:12:03');
INSERT INTO `sys_job_log` VALUES ('4a47df7b9177864813df291ee4da5caf', 'basicsTask', '静态释放', 'staticRelease', '', 'basicsTask 总共耗时：1毫秒', '0', '', '2019-03-12 20:12:03');
INSERT INTO `sys_job_log` VALUES ('4a68a52585d39b5fc51f5bd8c3ecc715', 'basicsTask', '静态释放', 'staticRelease', '', 'basicsTask 总共耗时：1毫秒', '0', '', '2019-03-13 15:40:55');
INSERT INTO `sys_job_log` VALUES ('4ba19f62c22be55c92f700960211f49d', 'basicsTask', '静态释放', 'staticRelease', '', 'basicsTask 总共耗时：31毫秒', '0', '', '2019-03-05 08:29:04');
INSERT INTO `sys_job_log` VALUES ('4be8ec03dfb6ed3583c6b3d34c6892e3', 'basicsTask', '静态释放', 'staticRelease', '', 'basicsTask 总共耗时：0毫秒', '0', '', '2019-03-13 15:44:11');
INSERT INTO `sys_job_log` VALUES ('4c38e94223d1f4fcf38407e3e4b90bcb', 'basicsTask', '静态释放', 'staticRelease', '', 'basicsTask 总共耗时：32毫秒', '0', '', '2019-03-06 05:37:14');
INSERT INTO `sys_job_log` VALUES ('4cba2d9685cf8fcee5d7be727dfe6926', 'basicsTask', '静态释放', 'staticRelease', '', 'basicsTask 总共耗时：0毫秒', '0', '', '2019-03-12 20:07:02');
INSERT INTO `sys_job_log` VALUES ('4cdffe5bfa8ba99be20d1f3575fca207', 'basicsTask', '静态释放', 'staticRelease', '', 'basicsTask 总共耗时：1毫秒', '0', '', '2019-03-12 20:29:48');
INSERT INTO `sys_job_log` VALUES ('4f495313eb58d9abab25e1a143e7321d', 'basicsTask', '静态释放', 'staticRelease', '', 'basicsTask 总共耗时：61毫秒', '0', '', '2019-03-05 17:29:32');
INSERT INTO `sys_job_log` VALUES ('4f64dff6d36e70446ef36c1cac7334c8', 'basicsTask', '静态释放', 'staticRelease', '', 'basicsTask 总共耗时：0毫秒', '0', '', '2019-03-12 20:29:48');
INSERT INTO `sys_job_log` VALUES ('4fa356fd50a8e6c1cd32e18addcbd2ac', 'basicsTask', '静态释放', 'staticRelease', '', 'basicsTask 总共耗时：271毫秒', '0', '', '2019-03-09 08:07:06');
INSERT INTO `sys_job_log` VALUES ('4fc5c761721b466460796d21095e303f', 'basicsTask', '静态释放', 'staticRelease', '', 'basicsTask 总共耗时：1毫秒', '0', '', '2019-03-12 20:07:02');
INSERT INTO `sys_job_log` VALUES ('4fddf431ca3c821423a66926f4803ef9', 'basicsTask', '静态释放', 'staticRelease', '', 'basicsTask 总共耗时：59毫秒', '0', '', '2019-03-09 07:27:29');
INSERT INTO `sys_job_log` VALUES ('4ff057d9f22167ee0b745d75fdec75be', 'basicsTask', '静态释放', 'staticRelease', '', 'basicsTask 总共耗时：47毫秒', '0', '', '2019-03-04 21:34:13');
INSERT INTO `sys_job_log` VALUES ('5101731e81f44e281329ff383a719357', 'basicsTask', '静态释放', 'staticRelease', '', 'basicsTask 总共耗时：51毫秒', '0', '', '2019-03-09 08:07:04');
INSERT INTO `sys_job_log` VALUES ('51e6bbbbdb32876c5dc70990b0e5747c', 'basicsTask', '静态释放', 'staticRelease', '', 'basicsTask 总共耗时：8毫秒', '0', '', '2019-03-13 15:49:02');
INSERT INTO `sys_job_log` VALUES ('52de4d87f786ec85434bacdc8367e1bb', 'basicsTask', '静态释放', 'staticRelease', '', 'basicsTask 总共耗时：30296毫秒', '0', '', '2019-02-26 01:56:04');
INSERT INTO `sys_job_log` VALUES ('53a8e3ef35560da493a48bf9d0bccb36', 'basicsTask', '静态释放', 'staticRelease', '', 'basicsTask 总共耗时：100毫秒', '0', '', '2019-03-05 08:29:05');
INSERT INTO `sys_job_log` VALUES ('53d1d840ecbc7b17528ad4906848edc1', 'basicsTask', '静态释放', 'staticRelease', '', 'basicsTask 总共耗时：0毫秒', '0', '', '2019-03-12 20:07:02');
INSERT INTO `sys_job_log` VALUES ('540b2402401dc3276dbd98909463e02a', 'basicsTask', '静态释放', 'staticRelease', '', 'basicsTask 总共耗时：313毫秒', '0', '', '2019-03-04 21:34:13');
INSERT INTO `sys_job_log` VALUES ('5493786cf3f9b68fac4270b895ecb0a2', 'basicsTask', '静态释放', 'staticRelease', '', 'basicsTask 总共耗时：59毫秒', '0', '', '2019-03-06 22:49:16');
INSERT INTO `sys_job_log` VALUES ('55ce3e4fef9b97722c09da290c6f1203', 'basicsTask', '静态释放', 'staticRelease', '', 'basicsTask 总共耗时：1毫秒', '0', '', '2019-03-12 06:50:18');
INSERT INTO `sys_job_log` VALUES ('55d55512c7648bc5a3a95906df493e70', 'basicsTask', '静态释放', 'staticRelease', '', 'basicsTask 总共耗时：139毫秒', '0', '', '2019-03-09 08:07:06');
INSERT INTO `sys_job_log` VALUES ('564e726fdfad8e1eae055949cf5163e8', 'basicsTask', '静态释放', 'staticRelease', '', 'basicsTask 总共耗时：48毫秒', '0', '', '2019-03-05 16:15:47');
INSERT INTO `sys_job_log` VALUES ('56561bdccf724ce583d3c8cce55762a2', 'basicsTask', '静态释放', 'staticRelease', '', 'basicsTask 总共耗时：44毫秒', '0', '', '2019-03-01 06:01:19');
INSERT INTO `sys_job_log` VALUES ('57a220f5a20145e7c6a17386f7fea9be', 'basicsTask', '静态释放', 'staticRelease', '', 'basicsTask 总共耗时：51毫秒', '0', '', '2019-03-06 05:37:14');
INSERT INTO `sys_job_log` VALUES ('582a1d43092e659436e11adce44d37d8', 'basicsTask', '静态释放', 'staticRelease', '', 'basicsTask 总共耗时：99毫秒', '0', '', '2019-03-08 00:00:00');
INSERT INTO `sys_job_log` VALUES ('5866ae92ab3c87e4dcbd34ab0de866a4', 'basicsTask', '静态释放', 'staticRelease', '', 'basicsTask 总共耗时：73毫秒', '0', '', '2019-03-07 21:04:06');
INSERT INTO `sys_job_log` VALUES ('595387ecc933b0dc75b83f5e762089a1', 'basicsTask', '静态释放', 'staticRelease', '', 'basicsTask 总共耗时：0毫秒', '0', '', '2019-03-13 15:44:11');
INSERT INTO `sys_job_log` VALUES ('5b010d4a40130fe9513ac5c0cffe0702', 'basicsTask', '静态释放', 'staticRelease', '', 'basicsTask 总共耗时：1毫秒', '0', '', '2019-03-12 20:07:02');
INSERT INTO `sys_job_log` VALUES ('5b2f9e96cee85829f19c5e043f3e750f', 'basicsTask', '静态释放', 'staticRelease', '', 'basicsTask 总共耗时：125毫秒', '0', '', '2019-03-09 07:27:30');
INSERT INTO `sys_job_log` VALUES ('5c51cf346e4d5fcd4c387d8efa41aa1a', 'basicsTask', '静态释放', 'staticRelease', '', 'basicsTask 总共耗时：68毫秒', '0', '', '2019-03-08 05:45:30');
INSERT INTO `sys_job_log` VALUES ('5d7b424be100de90aad404dcedea7a65', 'basicsTask', '静态释放', 'staticRelease', '', 'basicsTask 总共耗时：40毫秒', '0', '', '2019-03-04 19:58:15');
INSERT INTO `sys_job_log` VALUES ('5dc94a2e53ecdb70eb744ed8fbcbb225', 'basicsTask', '静态释放', 'staticRelease', '', 'basicsTask 总共耗时：84毫秒', '0', '', '2019-03-03 05:10:44');
INSERT INTO `sys_job_log` VALUES ('5eb6824ce9520a7688971a9aa4dfe458', 'basicsTask', '静态释放', 'staticRelease', '', 'basicsTask 总共耗时：65毫秒', '0', '', '2019-03-02 07:22:00');
INSERT INTO `sys_job_log` VALUES ('5edb8f87c1872d2f8fdf04730eccecbd', 'basicsTask', '静态释放', 'staticRelease', '', 'basicsTask 总共耗时：56毫秒', '0', '', '2019-03-11 13:28:01');
INSERT INTO `sys_job_log` VALUES ('5f4c78b36e66a7b846e486871052fe62', 'basicsTask', '静态释放', 'staticRelease', '', 'basicsTask 总共耗时：248毫秒', '0', '', '2019-02-27 08:00:51');
INSERT INTO `sys_job_log` VALUES ('5fb4e7ff7cfd5171cf7634dff8726a17', 'basicsTask', '静态释放', 'staticRelease', '', 'basicsTask 总共耗时：1毫秒', '0', '', '2019-03-12 20:52:55');
INSERT INTO `sys_job_log` VALUES ('5fe64c059041d4cf1893530b1db0fb40', 'basicsTask', '静态释放', 'staticRelease', '', 'basicsTask 总共耗时：43毫秒', '0', '', '2019-03-02 07:22:00');
INSERT INTO `sys_job_log` VALUES ('60245d4d0e2014f5baf4b886691ce7ce', 'basicsTask', '静态释放', 'staticRelease', '', 'basicsTask 总共耗时：42毫秒', '0', '', '2019-03-04 20:56:34');
INSERT INTO `sys_job_log` VALUES ('60749257ce506f77e6274e15912b1613', 'basicsTask', '静态释放', 'staticRelease', '', 'basicsTask 总共耗时：53毫秒', '0', '', '2019-03-02 07:22:00');
INSERT INTO `sys_job_log` VALUES ('60895739cd4159dbb21ca5155eef028e', 'basicsTask', '静态释放', 'staticRelease', '', 'basicsTask 总共耗时：21026毫秒', '0', '', '2019-03-05 14:42:05');
INSERT INTO `sys_job_log` VALUES ('60e2263bf7ce56f38dc34c6d700afbaf', 'basicsTask', '静态释放', 'staticRelease', '', 'basicsTask 总共耗时：79毫秒', '0', '', '2019-03-03 00:00:00');
INSERT INTO `sys_job_log` VALUES ('615d98433f63a16c71926ffcab7f1914', 'basicsTask', '静态释放', 'staticRelease', '', 'basicsTask 总共耗时：63毫秒', '0', '', '2019-03-08 05:45:29');
INSERT INTO `sys_job_log` VALUES ('61e88ab90ea19f49370459f92db7257d', 'basicsTask', '静态释放', 'staticRelease', '', 'basicsTask 总共耗时：0毫秒', '0', '', '2019-03-13 15:40:55');
INSERT INTO `sys_job_log` VALUES ('61f011b17b93fdfacf2825a2fa333fb0', 'basicsTask', '静态释放', 'staticRelease', '', 'basicsTask 总共耗时：1毫秒', '0', '', '2019-03-13 15:44:11');
INSERT INTO `sys_job_log` VALUES ('62106378313e78669ef929e688675d30', 'basicsTask', '静态释放', 'staticRelease', '', 'basicsTask 总共耗时：310毫秒', '0', '', '2019-03-04 20:56:33');
INSERT INTO `sys_job_log` VALUES ('6244c6be6968c9e46d13e0970b30dd3a', 'basicsTask', '静态释放', 'staticRelease', '', 'basicsTask 总共耗时：0毫秒', '0', '', '2019-03-13 15:44:11');
INSERT INTO `sys_job_log` VALUES ('62bbc3bc5e899f0f19b89908530cc25a', 'basicsTask', '静态释放', 'staticRelease', '', 'basicsTask 总共耗时：74毫秒', '0', '', '2019-03-09 08:07:05');
INSERT INTO `sys_job_log` VALUES ('63889767d36f6c126275c964b9cd6664', 'basicsTask', '静态释放', 'staticRelease', '', 'basicsTask 总共耗时：0毫秒', '0', '', '2019-03-12 20:52:55');
INSERT INTO `sys_job_log` VALUES ('63dc0a1fc33db00251e5f139d7837182', 'basicsTask', '静态释放', 'staticRelease', '', 'basicsTask 总共耗时：28毫秒', '0', '', '2019-03-09 06:32:47');
INSERT INTO `sys_job_log` VALUES ('64c3bd8f5300c3ed3cc3ceb7ec141579', 'basicsTask', '静态释放', 'staticRelease', '', 'basicsTask 总共耗时：82毫秒', '0', '', '2019-03-06 05:37:14');
INSERT INTO `sys_job_log` VALUES ('6512432bed665067a9347ea85f479acd', 'basicsTask', '静态释放', 'staticRelease', '', 'basicsTask 总共耗时：93毫秒', '0', '', '2019-03-08 05:45:29');
INSERT INTO `sys_job_log` VALUES ('6753c09a50534bd3b4575367c5d5c40f', 'basicsTask', '静态释放', 'staticRelease', '', 'basicsTask 总共耗时：49毫秒', '0', '', '2019-03-03 07:51:51');
INSERT INTO `sys_job_log` VALUES ('6820f2be19614ff54628225f21df21e9', 'basicsTask', '静态释放', 'staticRelease', '', 'basicsTask 总共耗时：0毫秒', '0', '', '2019-03-13 15:44:11');
INSERT INTO `sys_job_log` VALUES ('682de3c8fb6203797cd55c1042dd2c42', 'basicsTask', '静态释放', 'staticRelease', '', 'basicsTask 总共耗时：137毫秒', '0', '', '2019-03-05 08:29:04');
INSERT INTO `sys_job_log` VALUES ('68859ef83a58530a39996d417ebe6888', 'basicsTask', '静态释放', 'staticRelease', '', 'basicsTask 总共耗时：21021毫秒', '0', '', '2019-03-05 14:23:03');
INSERT INTO `sys_job_log` VALUES ('688b4c4b56a25b8de632d4196cff1904', 'basicsTask', '静态释放', 'staticRelease', '', 'basicsTask 总共耗时：63毫秒', '0', '', '2019-03-09 07:27:30');
INSERT INTO `sys_job_log` VALUES ('68988fd3c130d558d4e67f4c94ec323e', 'basicsTask', '静态释放', 'staticRelease', '', 'basicsTask 总共耗时：1毫秒', '0', '', '2019-03-12 20:07:02');
INSERT INTO `sys_job_log` VALUES ('68fc128cc08796f36c4c0b434cd2dbb0', 'basicsTask', '静态释放', 'staticRelease', '', 'basicsTask 总共耗时：43毫秒', '0', '', '2019-03-07 21:04:06');
INSERT INTO `sys_job_log` VALUES ('69292dc64ec55d97e72a2d5d52eb2503', 'basicsTask', '静态释放', 'staticRelease', '', 'basicsTask 总共耗时：36毫秒', '0', '', '2019-03-06 05:37:14');
INSERT INTO `sys_job_log` VALUES ('69592a73878ecf5efdd66d908a7c4c16', 'basicsTask', '静态释放', 'staticRelease', '', 'basicsTask 总共耗时：21017毫秒', '0', '', '2019-03-05 14:24:06');
INSERT INTO `sys_job_log` VALUES ('6965f376497f23436e4aff19501adfa2', 'basicsTask', '静态释放', 'staticRelease', '', 'basicsTask 总共耗时：241毫秒', '0', '', '2019-03-07 05:44:39');
INSERT INTO `sys_job_log` VALUES ('69ff60a68c885ad1bbd0e9f757e983de', 'basicsTask', '静态释放', 'staticRelease', '', 'basicsTask 总共耗时：0毫秒', '0', '', '2019-03-13 15:40:54');
INSERT INTO `sys_job_log` VALUES ('6a9a47c2cd8f7657411ca7d3e6ed8e91', 'basicsTask', '静态释放', 'staticRelease', '', 'basicsTask 总共耗时：214毫秒', '0', '', '2019-03-05 16:15:46');
INSERT INTO `sys_job_log` VALUES ('6b1a4cd3571b2875da9de4d201e77324', 'basicsTask', '静态释放', 'staticRelease', '', 'basicsTask 总共耗时：30毫秒', '0', '', '2019-03-09 06:32:47');
INSERT INTO `sys_job_log` VALUES ('6d21c22b38b7dc37d3c58b5e98d1ba06', 'basicsTask', '静态释放', 'staticRelease', '', 'basicsTask 总共耗时：65毫秒', '0', '', '2019-03-09 08:07:07');
INSERT INTO `sys_job_log` VALUES ('6d9edb71883c7a27a65decd82b17b614', 'basicsTask', '静态释放', 'staticRelease', '', 'basicsTask 总共耗时：40毫秒', '0', '', '2019-03-04 21:34:13');
INSERT INTO `sys_job_log` VALUES ('6e2ed5ea16ccec78d99b4f1255c9b52e', 'basicsTask', '静态释放', 'staticRelease', '', 'basicsTask 总共耗时：298毫秒', '0', '', '2019-03-11 13:28:00');
INSERT INTO `sys_job_log` VALUES ('6f3adfed6136633341fe9e70cd5c014f', 'basicsTask', '静态释放', 'staticRelease', '', 'basicsTask 总共耗时：133毫秒', '0', '', '2019-03-08 05:45:29');
INSERT INTO `sys_job_log` VALUES ('6f43928b61219b040fdd9d4f87cfa2dc', 'basicsTask', '静态释放', 'staticRelease', '', 'basicsTask 总共耗时：32毫秒', '0', '', '2019-03-11 13:34:56');
INSERT INTO `sys_job_log` VALUES ('6fcb772366cc498df428990acab30290', 'basicsTask', '静态释放', 'staticRelease', '', 'basicsTask 总共耗时：66毫秒', '0', '', '2019-03-03 06:24:30');
INSERT INTO `sys_job_log` VALUES ('711c297478eb4eb548fd3f1ab860440a', 'basicsTask', '静态释放', 'staticRelease', '', 'basicsTask 总共耗时：100毫秒', '0', '', '2019-03-11 10:01:38');
INSERT INTO `sys_job_log` VALUES ('722040f44310613ddaa5bb88f100f69e', 'basicsTask', '静态释放', 'staticRelease', '', 'basicsTask 总共耗时：240毫秒', '0', '', '2019-03-01 06:01:19');
INSERT INTO `sys_job_log` VALUES ('732cb96adb960baee6e77bcad20593d1', 'basicsTask', '静态释放', 'staticRelease', '', 'basicsTask 总共耗时：57毫秒', '0', '', '2019-03-03 05:10:43');
INSERT INTO `sys_job_log` VALUES ('741c8bf7c493c60fb203c0139b993c71', 'basicsTask', '静态释放', 'staticRelease', '', 'basicsTask 总共耗时：62毫秒', '0', '', '2019-03-03 05:10:43');
INSERT INTO `sys_job_log` VALUES ('7445eca77aac46a168c46a6e8af9b23e', 'basicsTask', '静态释放', 'staticRelease', '', 'basicsTask 总共耗时：0毫秒', '0', '', '2019-03-13 15:44:11');
INSERT INTO `sys_job_log` VALUES ('7489ccf9640e2a45b5c766a37c1620e6', 'basicsTask', '静态释放', 'staticRelease', '', 'basicsTask 总共耗时：62毫秒', '0', '', '2019-03-11 13:34:55');
INSERT INTO `sys_job_log` VALUES ('749da3a46f86c6dc91c8923f62fcb20d', 'basicsTask', '静态释放', 'staticRelease', '', 'basicsTask 总共耗时：1毫秒', '0', '', '2019-03-13 15:40:55');
INSERT INTO `sys_job_log` VALUES ('74b309677b0df31a0c763e9a299d17bd', 'basicsTask', '静态释放', 'staticRelease', '', 'basicsTask 总共耗时：1毫秒', '0', '', '2019-03-12 20:12:03');
INSERT INTO `sys_job_log` VALUES ('758425d94eee41bd0c1f92ae6b8d559c', 'basicsTask', '静态释放', 'staticRelease', '', 'basicsTask 总共耗时：358毫秒', '0', '', '2019-02-26 01:59:54');
INSERT INTO `sys_job_log` VALUES ('75969d9493400f613a78e3f2071bbe67', 'basicsTask', '静态释放', 'staticRelease', '', 'basicsTask 总共耗时：36毫秒', '0', '', '2019-03-11 13:28:00');
INSERT INTO `sys_job_log` VALUES ('76444b00c61afdcb5792907c15e511a7', 'basicsTask', '静态释放', 'staticRelease', '', 'basicsTask 总共耗时：21022毫秒', '0', '', '2019-03-05 14:43:29');
INSERT INTO `sys_job_log` VALUES ('76752b08ae6bf8b0c5cd2e6dcdc39d1b', 'basicsTask', '静态释放', 'staticRelease', '', 'basicsTask 总共耗时：41毫秒', '0', '', '2019-03-11 22:00:50');
INSERT INTO `sys_job_log` VALUES ('76a2996b61e55e64bad7920f4eacf551', 'basicsTask', '静态释放', 'staticRelease', '', 'basicsTask 总共耗时：0毫秒', '0', '', '2019-03-12 20:12:03');
INSERT INTO `sys_job_log` VALUES ('77cc9e716eea5f3dc51eabe9d28b7560', 'basicsTask', '静态释放', 'staticRelease', '', 'basicsTask 总共耗时：48毫秒', '0', '', '2019-03-03 07:32:00');
INSERT INTO `sys_job_log` VALUES ('783b3c31bf5d847678fb16a9e85dc659', 'basicsTask', '静态释放', 'staticRelease', '', 'basicsTask 总共耗时：161毫秒', '0', '', '2019-03-11 10:01:38');
INSERT INTO `sys_job_log` VALUES ('7959fd923a593c94f0d09a182985ae58', 'basicsTask', '静态释放', 'staticRelease', '', 'basicsTask 总共耗时：83毫秒', '0', '', '2019-03-08 05:45:30');
INSERT INTO `sys_job_log` VALUES ('7a1526f5f769e30291464e501c267c95', 'basicsTask', '静态释放', 'staticRelease', '', 'basicsTask 总共耗时：1毫秒', '0', '', '2019-03-12 06:50:17');
INSERT INTO `sys_job_log` VALUES ('7a4e0acf1c74a36c4972acb09010c820', 'basicsTask', '静态释放', 'staticRelease', '', 'basicsTask 总共耗时：1毫秒', '0', '', '2019-03-12 20:07:02');
INSERT INTO `sys_job_log` VALUES ('7c357c7f5f94f34578af0ddbef17e995', 'basicsTask', '静态释放', 'staticRelease', '', 'basicsTask 总共耗时：0毫秒', '0', '', '2019-03-13 15:44:11');
INSERT INTO `sys_job_log` VALUES ('7c6033b31b6f4a7a0c93d59453e98fed', 'basicsTask', '静态释放', 'staticRelease', '', 'basicsTask 总共耗时：286毫秒', '0', '', '2019-03-04 21:24:39');
INSERT INTO `sys_job_log` VALUES ('7ca495839ea89e7852ec144d4f6decaf', 'basicsTask', '静态释放', 'staticRelease', '', 'basicsTask 总共耗时：49毫秒', '0', '', '2019-03-11 10:01:39');
INSERT INTO `sys_job_log` VALUES ('7d1f8bdd442ee4c06c0d87a886a4fe21', 'basicsTask', '静态释放', 'staticRelease', '', 'basicsTask 总共耗时：70毫秒', '0', '', '2019-03-08 08:18:27');
INSERT INTO `sys_job_log` VALUES ('7d399fbaffd3be9513b3bfbdf30e0e59', 'basicsTask', '静态释放', 'staticRelease', '', 'basicsTask 总共耗时：33毫秒', '0', '', '2019-03-09 06:32:47');
INSERT INTO `sys_job_log` VALUES ('7dbddb351eb7dd68a5b4b90a258ff87b', 'basicsTask', '静态释放', 'staticRelease', '', 'basicsTask 总共耗时：72毫秒', '0', '', '2019-03-11 22:00:51');
INSERT INTO `sys_job_log` VALUES ('7f26e584730c1d8ab037de2571df5aa7', 'basicsTask', '静态释放', 'staticRelease', '', 'basicsTask 总共耗时：63毫秒', '0', '', '2019-03-05 17:29:32');
INSERT INTO `sys_job_log` VALUES ('7fe4bbef473fc1f2302125e9539a61f7', 'basicsTask', '静态释放', 'staticRelease', '', 'basicsTask 总共耗时：58毫秒', '0', '', '2019-03-07 00:00:00');
INSERT INTO `sys_job_log` VALUES ('803d6f0821532ce717191d5e43083cdd', 'basicsTask', '静态释放', 'staticRelease', '', 'basicsTask 总共耗时：46毫秒', '0', '', '2019-03-05 16:15:47');
INSERT INTO `sys_job_log` VALUES ('80ae16909e0e5ae48b9e4bc7a9827e7a', 'basicsTask', '静态释放', 'staticRelease', '', 'basicsTask 总共耗时：1毫秒', '0', '', '2019-03-12 20:12:03');
INSERT INTO `sys_job_log` VALUES ('80af550ac89ca2658d62fcd7b3b7dc9c', 'basicsTask', '静态释放', 'staticRelease', '', 'basicsTask 总共耗时：21289毫秒', '0', '', '2019-03-05 14:41:44');
INSERT INTO `sys_job_log` VALUES ('80e5ded6901dc42de026b133a6f643af', 'basicsTask', '静态释放', 'staticRelease', '', 'basicsTask 总共耗时：21021毫秒', '0', '', '2019-03-05 14:22:42');
INSERT INTO `sys_job_log` VALUES ('8107f3c34d4e4b25860e8ca1c1405d26', 'basicsTask', '静态释放', 'staticRelease', '', 'basicsTask 总共耗时：56毫秒', '0', '', '2019-03-07 21:04:06');
INSERT INTO `sys_job_log` VALUES ('824eb9f64ddd1f2d5628d7144977a829', 'basicsTask', '静态释放', 'staticRelease', '', 'basicsTask 总共耗时：57毫秒', '0', '', '2019-03-09 08:07:04');
INSERT INTO `sys_job_log` VALUES ('82ce0e28bb1e443ca8d95e7c55a22aa5', 'basicsTask', '静态释放', 'staticRelease', '', 'basicsTask 总共耗时：55毫秒', '0', '', '2019-03-07 21:04:06');
INSERT INTO `sys_job_log` VALUES ('82e211ca4fc01b8f2fc4257a0048f272', 'basicsTask', '静态释放', 'staticRelease', '', 'basicsTask 总共耗时：1毫秒', '0', '', '2019-03-12 20:52:55');
INSERT INTO `sys_job_log` VALUES ('844ca0d1b9e4659776d82db80f1f6106', 'basicsTask', '静态释放', 'staticRelease', '', 'basicsTask 总共耗时：56毫秒', '0', '', '2019-03-09 07:27:30');
INSERT INTO `sys_job_log` VALUES ('850e618f8f86b3609e6acb080e0a01fb', 'basicsTask', '静态释放', 'staticRelease', '', 'basicsTask 总共耗时：78毫秒', '0', '', '2019-03-09 00:00:00');
INSERT INTO `sys_job_log` VALUES ('852af4c6656fc44e5babcbdb85c22399', 'basicsTask', '静态释放', 'staticRelease', '', 'basicsTask 总共耗时：264毫秒', '0', '', '2019-03-07 21:04:05');
INSERT INTO `sys_job_log` VALUES ('8552f4afe27ec244343ba64fac37bc1b', 'basicsTask', '静态释放', 'staticRelease', '', 'basicsTask 总共耗时：54毫秒', '0', '', '2019-03-05 17:29:31');
INSERT INTO `sys_job_log` VALUES ('8561debd463a8ae14cb30b3b43069e69', 'basicsTask', '静态释放', 'staticRelease', '', 'basicsTask 总共耗时：57毫秒', '0', '', '2019-03-11 13:28:01');
INSERT INTO `sys_job_log` VALUES ('860bc78742a99a5706a14b42e76e5099', 'basicsTask', '静态释放', 'staticRelease', '', 'basicsTask 总共耗时：80毫秒', '0', '', '2019-03-05 17:29:31');
INSERT INTO `sys_job_log` VALUES ('86129932bac3a27bd5b48d05e9541a12', 'basicsTask', '静态释放', 'staticRelease', '', 'basicsTask 总共耗时：39毫秒', '0', '', '2019-03-04 19:58:15');
INSERT INTO `sys_job_log` VALUES ('86177858550fc9eb15d9cbce21a527fe', 'basicsTask', '静态释放', 'staticRelease', '', 'basicsTask 总共耗时：1毫秒', '0', '', '2019-03-12 20:12:03');
INSERT INTO `sys_job_log` VALUES ('877144d80f620efd9182e01a496e47c0', 'basicsTask', '静态释放', 'staticRelease', '', 'basicsTask 总共耗时：38毫秒', '0', '', '2019-03-05 16:15:47');
INSERT INTO `sys_job_log` VALUES ('883a97307d4766beeb6aa45cf22dccd4', 'basicsTask', '静态释放', 'staticRelease', '', 'basicsTask 总共耗时：40毫秒', '0', '', '2019-03-04 21:24:39');
INSERT INTO `sys_job_log` VALUES ('889c297ea48656293224ec70c90f639b', 'basicsTask', '静态释放', 'staticRelease', '', 'basicsTask 总共耗时：128毫秒', '0', '', '2019-03-08 05:32:35');
INSERT INTO `sys_job_log` VALUES ('8a14b15c40adea13c169d1507d145d82', 'basicsTask', '静态释放', 'staticRelease', '', 'basicsTask 总共耗时：1毫秒', '0', '', '2019-03-13 15:40:55');
INSERT INTO `sys_job_log` VALUES ('8a5dc3aad0872b979a7feae153f56986', 'basicsTask', '静态释放', 'staticRelease', '', 'basicsTask 总共耗时：1毫秒', '0', '', '2019-03-13 15:44:11');
INSERT INTO `sys_job_log` VALUES ('8a749e89b69b3560baac9afe44438bab', 'basicsTask', '静态释放', 'staticRelease', '', 'basicsTask 总共耗时：1毫秒', '0', '', '2019-03-13 15:40:55');
INSERT INTO `sys_job_log` VALUES ('8af0db7049503f3833c3a9c0daf8c7ad', 'basicsTask', '静态释放', 'staticRelease', '', 'basicsTask 总共耗时：365毫秒', '0', '', '2019-03-03 07:32:00');
INSERT INTO `sys_job_log` VALUES ('8b0d5ab365228f60dc7d4eb3b04334b4', 'basicsTask', '静态释放', 'staticRelease', '', 'basicsTask 总共耗时：34毫秒', '0', '', '2019-03-06 05:37:14');
INSERT INTO `sys_job_log` VALUES ('8b3f90712678da4963f692ac666229a1', 'basicsTask', '静态释放', 'staticRelease', '', 'basicsTask 总共耗时：68毫秒', '0', '', '2019-03-08 05:32:35');
INSERT INTO `sys_job_log` VALUES ('8c7659366ad73625dd5980868889761b', 'basicsTask', '静态释放', 'staticRelease', '', 'basicsTask 总共耗时：86毫秒', '0', '', '2019-03-11 22:00:51');
INSERT INTO `sys_job_log` VALUES ('8d9b16f82e92e94ed7642464a3cbe736', 'basicsTask', '静态释放', 'staticRelease', '', 'basicsTask 总共耗时：0毫秒', '0', '', '2019-03-13 15:40:54');
INSERT INTO `sys_job_log` VALUES ('8e94e36cf535579ee7915460d186403a', 'basicsTask', '静态释放', 'staticRelease', '', 'basicsTask 总共耗时：389毫秒', '0', '', '2019-03-03 05:10:43');
INSERT INTO `sys_job_log` VALUES ('8eb034deec96c2dafc6b064860f6167e', 'basicsTask', '静态释放', 'staticRelease', '', 'basicsTask 总共耗时：58毫秒', '0', '', '2019-03-04 20:43:39');
INSERT INTO `sys_job_log` VALUES ('8ec66999f927fc464c4da2d85e68fca3', 'basicsTask', '静态释放', 'staticRelease', '', 'basicsTask 总共耗时：21268毫秒', '0', '', '2019-03-05 14:21:39');
INSERT INTO `sys_job_log` VALUES ('8ee4f8ef1c6c90d3113ab8a0bdb94bce', 'basicsTask', '静态释放', 'staticRelease', '', 'basicsTask 总共耗时：323毫秒', '0', '', '2019-03-01 04:23:08');
INSERT INTO `sys_job_log` VALUES ('8f8101944a94cd3d7870880bc20bb708', 'basicsTask', '静态释放', 'staticRelease', '', 'basicsTask 总共耗时：70毫秒', '0', '', '2019-03-08 08:18:26');
INSERT INTO `sys_job_log` VALUES ('8fc83dc9d1c4ea09b1755248697b4507', 'basicsTask', '静态释放', 'staticRelease', '', 'basicsTask 总共耗时：88毫秒', '0', '', '2019-03-07 05:44:39');
INSERT INTO `sys_job_log` VALUES ('8fecc34f3d823d5e1ddbdaa184fdc07c', 'basicsTask', '静态释放', 'staticRelease', '', 'basicsTask 总共耗时：44毫秒', '0', '', '2019-03-05 16:15:47');
INSERT INTO `sys_job_log` VALUES ('904f93e0eb65d1fdfb842a333680cd32', 'basicsTask', '静态释放', 'staticRelease', '', 'basicsTask 总共耗时：71毫秒', '0', '', '2019-03-11 22:00:50');
INSERT INTO `sys_job_log` VALUES ('906497d01dcfcd3fd7a1383803e66fba', 'basicsTask', '静态释放', 'staticRelease', '', 'basicsTask 总共耗时：53毫秒', '0', '', '2019-03-11 10:01:39');
INSERT INTO `sys_job_log` VALUES ('90cbdd408811179f88643cd6096420fb', 'basicsTask', '静态释放', 'staticRelease', '', 'basicsTask 总共耗时：84毫秒', '0', '', '2019-03-07 05:44:40');
INSERT INTO `sys_job_log` VALUES ('916f4d2c553ee361d6c721c0d759a84a', 'basicsTask', '静态释放', 'staticRelease', '', 'basicsTask 总共耗时：255毫秒', '0', '', '2019-03-09 08:07:04');
INSERT INTO `sys_job_log` VALUES ('91840a7918abb5394aef06506da22c8c', 'basicsTask', '静态释放', 'staticRelease', '', 'basicsTask 总共耗时：39毫秒', '0', '', '2019-03-07 21:04:06');
INSERT INTO `sys_job_log` VALUES ('92b620d2f5f74181548e7e7bcf87f1f5', 'basicsTask', '静态释放', 'staticRelease', '', 'basicsTask 总共耗时：46毫秒', '0', '', '2019-03-04 20:43:39');
INSERT INTO `sys_job_log` VALUES ('940d4064ff8442308ebdc041dc9cb0d1', 'basicsTask', '静态释放', 'staticRelease', '', 'basicsTask 总共耗时：0毫秒', '0', '', '2019-03-12 20:12:03');
INSERT INTO `sys_job_log` VALUES ('9475b8470e196e25b9c5fce052ce4504', 'basicsTask', '静态释放', 'staticRelease', '', 'basicsTask 总共耗时：70毫秒', '0', '', '2019-03-11 13:34:55');
INSERT INTO `sys_job_log` VALUES ('94f213d8c2d469c1e8cdc32c3ab23fe0', 'basicsTask', '静态释放', 'staticRelease', '', 'basicsTask 总共耗时：52毫秒', '0', '', '2019-03-11 00:00:00');
INSERT INTO `sys_job_log` VALUES ('952583d5c21f206fa9d5976db843b09c', 'basicsTask', '静态释放', 'staticRelease', '', 'basicsTask 总共耗时：32毫秒', '0', '', '2019-03-03 07:32:00');
INSERT INTO `sys_job_log` VALUES ('9599fd26a1d08ae112dcdf5da24a52e3', 'basicsTask', '静态释放', 'staticRelease', '', 'basicsTask 总共耗时：40毫秒', '0', '', '2019-03-04 21:24:39');
INSERT INTO `sys_job_log` VALUES ('965c2c1702cc5bacd4aa6f472d009f4d', 'basicsTask', '静态释放', 'staticRelease', '', 'basicsTask 总共耗时：140毫秒', '0', '', '2019-03-09 08:07:06');
INSERT INTO `sys_job_log` VALUES ('9752d4f6aa320d1ad9c0f35b671bfc80', 'basicsTask', '静态释放', 'staticRelease', '', 'basicsTask 总共耗时：45毫秒', '0', '', '2019-03-04 20:56:34');
INSERT INTO `sys_job_log` VALUES ('97c194ba957baa80d8fa0f84c46e74c6', 'basicsTask', '静态释放', 'staticRelease', '', 'basicsTask 总共耗时：49毫秒', '0', '', '2019-03-08 05:45:30');
INSERT INTO `sys_job_log` VALUES ('9a16e1d093fd0d77cd691c91dc322ae4', 'basicsTask', '静态释放', 'staticRelease', '', 'basicsTask 总共耗时：58毫秒', '0', '', '2019-03-08 08:18:28');
INSERT INTO `sys_job_log` VALUES ('9aa90f3c63201debe6d2f8ac6e4d19cd', 'basicsTask', '静态释放', 'staticRelease', '', 'basicsTask 总共耗时：93毫秒', '0', '', '2019-03-03 06:24:30');
INSERT INTO `sys_job_log` VALUES ('9aac9cb7fdee0e8ff3a42dc2b39435c3', 'basicsTask', '静态释放', 'staticRelease', '', 'basicsTask 总共耗时：76毫秒', '0', '', '2019-03-06 22:49:17');
INSERT INTO `sys_job_log` VALUES ('9b0e552d6e0682cca36fe4dbabaac6c1', 'basicsTask', '静态释放', 'staticRelease', '', 'basicsTask 总共耗时：45毫秒', '0', '', '2019-03-04 20:43:39');
INSERT INTO `sys_job_log` VALUES ('9bda994f8539ba6e761cf7d6eff57f18', 'basicsTask', '静态释放', 'staticRelease', '', 'basicsTask 总共耗时：107毫秒', '0', '', '2019-03-07 05:44:40');
INSERT INTO `sys_job_log` VALUES ('9d3c644def33bc13e87b9fe316eb94b7', 'basicsTask', '静态释放', 'staticRelease', '', 'basicsTask 总共耗时：47毫秒', '0', '', '2019-03-11 22:00:51');
INSERT INTO `sys_job_log` VALUES ('9d85f0062b09cb9c9ee6945733269bc0', 'basicsTask', '静态释放', 'staticRelease', '', 'basicsTask 总共耗时：0毫秒', '0', '', '2019-03-12 20:29:48');
INSERT INTO `sys_job_log` VALUES ('9e40d9a495745d9cd26ceb5caa4e0ad7', 'basicsTask', '静态释放', 'staticRelease', '', 'basicsTask 总共耗时：0毫秒', '0', '', '2019-03-12 20:52:55');
INSERT INTO `sys_job_log` VALUES ('9eae787e9b7c7e2bc39d592de10f35af', 'basicsTask', '静态释放', 'staticRelease', '', 'basicsTask 总共耗时：58毫秒', '0', '', '2019-03-03 07:51:51');
INSERT INTO `sys_job_log` VALUES ('a0281b872bb55e87d44ef74f0ea3b446', 'basicsTask', '静态释放', 'staticRelease', '', 'basicsTask 总共耗时：34毫秒', '0', '', '2019-03-11 13:28:01');
INSERT INTO `sys_job_log` VALUES ('a236356a591edd34f577d4af73360ca4', 'basicsTask', '静态释放', 'staticRelease', '', 'basicsTask 总共耗时：24毫秒', '0', '', '2019-03-11 13:34:56');
INSERT INTO `sys_job_log` VALUES ('a7d8fccf06f56ee8f0afed0c02c2d833', 'basicsTask', '静态释放', 'staticRelease', '', 'basicsTask 总共耗时：1毫秒', '0', '', '2019-03-12 20:29:48');
INSERT INTO `sys_job_log` VALUES ('a83a01bd8163513f64388ecbbaa7ce42', 'basicsTask', '静态释放', 'staticRelease', '', 'basicsTask 总共耗时：36毫秒', '0', '', '2019-03-11 13:34:56');
INSERT INTO `sys_job_log` VALUES ('a87a08f231831b4e730043532822a6f5', 'basicsTask', '静态释放', 'staticRelease', '', 'basicsTask 总共耗时：56毫秒', '0', '', '2019-03-08 05:45:30');
INSERT INTO `sys_job_log` VALUES ('a894336e000a00d7a16fc8a57ffbdd94', 'basicsTask', '静态释放', 'staticRelease', '', 'basicsTask 总共耗时：59毫秒', '0', '', '2019-03-08 05:45:29');
INSERT INTO `sys_job_log` VALUES ('a8ea300fbfb605b4bce4e8580f72338e', 'basicsTask', '静态释放', 'staticRelease', '', 'basicsTask 总共耗时：64毫秒', '0', '', '2019-03-11 10:01:39');
INSERT INTO `sys_job_log` VALUES ('a8f83470f9be568e9bd2898a948fb611', 'basicsTask', '静态释放', 'staticRelease', '', 'basicsTask 总共耗时：33毫秒', '0', '', '2019-03-09 06:32:47');
INSERT INTO `sys_job_log` VALUES ('a97dd1bff09d539bacfacfb8bc721b80', 'basicsTask', '静态释放', 'staticRelease', '', 'basicsTask 总共耗时：1毫秒', '0', '', '2019-03-13 15:44:11');
INSERT INTO `sys_job_log` VALUES ('a9b2de0bc8d8160a252a4d77f686a65e', 'basicsTask', '静态释放', 'staticRelease', '', 'basicsTask 总共耗时：96毫秒', '0', '', '2019-03-02 00:00:00');
INSERT INTO `sys_job_log` VALUES ('aa1c9eed1797afe5c3edcb60d6327ffa', 'basicsTask', '静态释放', 'staticRelease', '', 'basicsTask 总共耗时：54毫秒', '0', '', '2019-03-01 00:00:00');
INSERT INTO `sys_job_log` VALUES ('aa4f2479a878b8b7f44ff420e7021aaf', 'basicsTask', '静态释放', 'staticRelease', '', 'basicsTask 总共耗时：99毫秒', '0', '', '2019-03-06 05:37:14');
INSERT INTO `sys_job_log` VALUES ('ab46ded991dad9ea24f094c0f1d85f0f', 'basicsTask', '静态释放', 'staticRelease', '', 'basicsTask 总共耗时：39毫秒', '0', '', '2019-03-04 19:58:15');
INSERT INTO `sys_job_log` VALUES ('ac4ad9e03677fe13c56829575e5e2246', 'basicsTask', '静态释放', 'staticRelease', '', 'basicsTask 总共耗时：237毫秒', '0', '', '2019-03-09 07:27:29');
INSERT INTO `sys_job_log` VALUES ('ad103c4a454f8bc833e5a237eef3b62e', 'basicsTask', '静态释放', 'staticRelease', '', 'basicsTask 总共耗时：1毫秒', '0', '', '2019-03-13 15:44:11');
INSERT INTO `sys_job_log` VALUES ('ad1b88b483f7bcc2894a885969a25fa1', 'basicsTask', '静态释放', 'staticRelease', '', 'basicsTask 总共耗时：99毫秒', '0', '', '2019-03-11 13:34:55');
INSERT INTO `sys_job_log` VALUES ('ad5a3ef51be2141b7f4599dd3d8e3678', 'basicsTask', '静态释放', 'staticRelease', '', 'basicsTask 总共耗时：1毫秒', '0', '', '2019-03-13 15:40:55');
INSERT INTO `sys_job_log` VALUES ('ad75bd4d93c89690a79cd38822a334f1', 'basicsTask', '静态释放', 'staticRelease', '', 'basicsTask 总共耗时：48毫秒', '0', '', '2019-03-04 00:00:00');
INSERT INTO `sys_job_log` VALUES ('ad7c1b9e80e25fc87b3fae3513e308f5', 'basicsTask', '静态释放', 'staticRelease', '', 'basicsTask 总共耗时：1毫秒', '0', '', '2019-03-12 20:12:03');
INSERT INTO `sys_job_log` VALUES ('ad9d9ca735563c178fb122aa92564f8a', 'basicsTask', '静态释放', 'staticRelease', '', 'basicsTask 总共耗时：0毫秒', '0', '', '2019-03-13 15:40:54');
INSERT INTO `sys_job_log` VALUES ('ae05e508fd162b06171ac551a9897ff2', 'basicsTask', '静态释放', 'staticRelease', '', 'basicsTask 总共耗时：71毫秒', '0', '', '2019-03-11 10:01:40');
INSERT INTO `sys_job_log` VALUES ('ae55c89c4e2ca80d12adb324dd2b4312', 'basicsTask', '静态释放', 'staticRelease', '', 'basicsTask 总共耗时：116毫秒', '0', '', '2019-03-09 08:07:06');
INSERT INTO `sys_job_log` VALUES ('ae9b05cba529422b55dfe5f3c15dfd46', 'basicsTask', '静态释放', 'staticRelease', '', 'basicsTask 总共耗时：17毫秒', '0', '', '2019-03-12 06:50:17');
INSERT INTO `sys_job_log` VALUES ('aec3978392b70816208842be38e6e332', 'basicsTask', '静态释放', 'staticRelease', '', 'basicsTask 总共耗时：12毫秒', '0', '', '2019-03-12 20:12:03');
INSERT INTO `sys_job_log` VALUES ('af42a7aef664c064ca755f0342f19109', 'basicsTask', '静态释放', 'staticRelease', '', 'basicsTask 总共耗时：76毫秒', '0', '', '2019-03-05 08:29:04');
INSERT INTO `sys_job_log` VALUES ('aff0c219d5f66d19975bc1f746ea2f67', 'basicsTask', '静态释放', 'staticRelease', '', 'basicsTask 总共耗时：237毫秒', '0', '', '2019-03-03 07:51:51');
INSERT INTO `sys_job_log` VALUES ('b00f9543a55a7ee727225869a1576142', 'basicsTask', '静态释放', 'staticRelease', '', 'basicsTask 总共耗时：60毫秒', '0', '', '2019-03-08 05:32:35');
INSERT INTO `sys_job_log` VALUES ('b2c3b618a254003a43a1a2f5c48ab4f1', 'basicsTask', '静态释放', 'staticRelease', '', 'basicsTask 总共耗时：81毫秒', '0', '', '2019-03-07 05:44:40');
INSERT INTO `sys_job_log` VALUES ('b3293a286e9bc20480767748c278fa15', 'basicsTask', '静态释放', 'staticRelease', '', 'basicsTask 总共耗时：355毫秒', '0', '', '2019-03-04 20:43:39');
INSERT INTO `sys_job_log` VALUES ('b47e82727187eee35f79abf575eb396f', 'basicsTask', '静态释放', 'staticRelease', '', 'basicsTask 总共耗时：43毫秒', '0', '', '2019-03-11 13:28:00');
INSERT INTO `sys_job_log` VALUES ('b5ef286873471e8ae3e590c2e558b7ab', 'basicsTask', '静态释放', 'staticRelease', '', 'basicsTask 总共耗时：226毫秒', '0', '', '2019-03-09 06:32:46');
INSERT INTO `sys_job_log` VALUES ('b6aa3e79fb4c5d503d375d8744c6f050', 'basicsTask', '静态释放', 'staticRelease', '', 'basicsTask 总共耗时：68毫秒', '0', '', '2019-03-05 17:29:32');
INSERT INTO `sys_job_log` VALUES ('b97202205eac46c075793f411ce266ce', 'basicsTask', '静态释放', 'staticRelease', '', 'basicsTask 总共耗时：42毫秒', '0', '', '2019-03-04 20:56:34');
INSERT INTO `sys_job_log` VALUES ('ba29968d1bd092a5340dbef4ea9d723a', 'basicsTask', '静态释放', 'staticRelease', '', 'basicsTask 总共耗时：0毫秒', '0', '', '2019-03-13 15:40:55');
INSERT INTO `sys_job_log` VALUES ('ba4820e7a1e65c8b214d3ae08fe8df6f', 'basicsTask', '静态释放', 'staticRelease', '', 'basicsTask 总共耗时：37毫秒', '0', '', '2019-03-11 13:28:01');
INSERT INTO `sys_job_log` VALUES ('baed57d94dbc6ead28692b5de1f30c34', 'basicsTask', '静态释放', 'staticRelease', '', 'basicsTask 总共耗时：55毫秒', '0', '', '2019-03-03 07:51:51');
INSERT INTO `sys_job_log` VALUES ('bbabbeaed50a666baf6a9f31dfb234e9', 'basicsTask', '静态释放', 'staticRelease', '', 'basicsTask 总共耗时：1毫秒', '0', '', '2019-03-12 20:12:03');
INSERT INTO `sys_job_log` VALUES ('be7845d1fce056d3210bd920891d7234', 'basicsTask', '静态释放', 'staticRelease', '', 'basicsTask 总共耗时：135毫秒', '0', '', '2019-03-08 08:18:28');
INSERT INTO `sys_job_log` VALUES ('be972dbfda665f1644f6d2e2464791b8', 'basicsTask', '静态释放', 'staticRelease', '', 'basicsTask 总共耗时：87毫秒', '0', '', '2019-03-08 05:45:30');
INSERT INTO `sys_job_log` VALUES ('bee65c7d8ae01d34b84aa4b86fdca935', 'basicsTask', '静态释放', 'staticRelease', '', 'basicsTask 总共耗时：67毫秒', '0', '', '2019-02-27 07:52:21');
INSERT INTO `sys_job_log` VALUES ('c001de92c562a4a45ebe2f1a90f211ab', 'basicsTask', '静态释放', 'staticRelease', '', 'basicsTask 总共耗时：101毫秒', '0', '', '2019-03-12 00:00:00');
INSERT INTO `sys_job_log` VALUES ('c0aea7a5fc07364db84988182c9edd43', 'basicsTask', '静态释放', 'staticRelease', '', 'basicsTask 总共耗时：37毫秒', '0', '', '2019-03-05 16:15:46');
INSERT INTO `sys_job_log` VALUES ('c0b5176dc5f079337cb52003a74a84e0', 'basicsTask', '静态释放', 'staticRelease', '', 'basicsTask 总共耗时：0毫秒', '0', '', '2019-03-12 20:12:03');
INSERT INTO `sys_job_log` VALUES ('c0c6edfec89536c60506190a0d9df645', 'basicsTask', '静态释放', 'staticRelease', '', 'basicsTask 总共耗时：37毫秒', '0', '', '2019-03-07 21:04:06');
INSERT INTO `sys_job_log` VALUES ('c1ab3f3e5070fe547395ecfb345ae770', 'basicsTask', '静态释放', 'staticRelease', '', 'basicsTask 总共耗时：102毫秒', '0', '', '2019-03-03 06:24:30');
INSERT INTO `sys_job_log` VALUES ('c1e20e21031a2058d4cdba6a5a1499be', 'basicsTask', '静态释放', 'staticRelease', '', 'basicsTask 总共耗时：50毫秒', '0', '', '2019-03-04 19:58:15');
INSERT INTO `sys_job_log` VALUES ('c280a09081ee778a644e211a4824269d', 'basicsTask', '静态释放', 'staticRelease', '', 'basicsTask 总共耗时：51毫秒', '0', '', '2019-03-06 22:49:16');
INSERT INTO `sys_job_log` VALUES ('c2dc78c1cac76fff6524aacd3a89341e', 'basicsTask', '静态释放', 'staticRelease', '', 'basicsTask 总共耗时：0毫秒', '0', '', '2019-03-12 20:12:03');
INSERT INTO `sys_job_log` VALUES ('c3311eba825111a4468246c4aad97512', 'basicsTask', '静态释放', 'staticRelease', '', 'basicsTask 总共耗时：81毫秒', '0', '', '2019-03-11 22:00:50');
INSERT INTO `sys_job_log` VALUES ('c3de9b697b34497759d7c1cdc1411859', 'basicsTask', '静态释放', 'staticRelease', '', 'basicsTask 总共耗时：57毫秒', '0', '', '2019-03-09 07:27:30');
INSERT INTO `sys_job_log` VALUES ('c5501ad10529560695b72332e6cd7b68', 'basicsTask', '静态释放', 'staticRelease', '', 'basicsTask 总共耗时：68毫秒', '0', '', '2019-03-01 06:01:20');
INSERT INTO `sys_job_log` VALUES ('c650447fb0c8d1a105496c92d7a2ddc5', 'basicsTask', '静态释放', 'staticRelease', '', 'basicsTask 总共耗时：1毫秒', '0', '', '2019-03-12 20:29:48');
INSERT INTO `sys_job_log` VALUES ('c67fe0d5daad148423ed40b4ccf4a8d3', 'basicsTask', '静态释放', 'staticRelease', '', 'basicsTask 总共耗时：48毫秒', '0', '', '2019-03-04 19:58:15');
INSERT INTO `sys_job_log` VALUES ('c6a095132f76574cd34f56ba638f25a9', 'basicsTask', '静态释放', 'staticRelease', '', 'basicsTask 总共耗时：76毫秒', '0', '', '2019-02-27 07:47:56');
INSERT INTO `sys_job_log` VALUES ('c83cf5bc1824f07868e8a0ebd59bb553', 'basicsTask', '静态释放', 'staticRelease', '', 'basicsTask 总共耗时：46毫秒', '0', '', '2019-03-04 21:24:39');
INSERT INTO `sys_job_log` VALUES ('c96c08f46c4d702d3e47316876b765d5', 'basicsTask', '静态释放', 'staticRelease', '', 'basicsTask 总共耗时：57毫秒', '0', '', '2019-03-11 22:00:50');
INSERT INTO `sys_job_log` VALUES ('c9a5b3c4ed8bfccb2a97c1402f99cd4f', 'basicsTask', '静态释放', 'staticRelease', '', 'basicsTask 总共耗时：116毫秒', '0', '', '2019-03-09 08:07:05');
INSERT INTO `sys_job_log` VALUES ('c9accb67cb4ce1c41f65d1336f2d4552', 'basicsTask', '静态释放', 'staticRelease', '', 'basicsTask 总共耗时：47毫秒', '0', '', '2019-03-06 05:37:14');
INSERT INTO `sys_job_log` VALUES ('ca5797b19eb5cacd0b7d08d4bbb3418e', 'basicsTask', '静态释放', 'staticRelease', '', 'basicsTask 总共耗时：1毫秒', '0', '', '2019-03-12 20:07:02');
INSERT INTO `sys_job_log` VALUES ('cada68d9adc1d02300e0d05a69d4a818', 'basicsTask', '静态释放', 'staticRelease', '', 'basicsTask 总共耗时：53毫秒', '0', '', '2019-03-11 13:34:55');
INSERT INTO `sys_job_log` VALUES ('cbb74d7fed584ff9836c4cae31141849', 'basicsTask', '静态释放', 'staticRelease', '', 'basicsTask 总共耗时：88毫秒', '0', '', '2019-03-07 05:44:41');
INSERT INTO `sys_job_log` VALUES ('cc194c9d5f00ad4ff8f227b46b31a273', 'basicsTask', '静态释放', 'staticRelease', '', 'basicsTask 总共耗时：1毫秒', '0', '', '2019-03-12 20:29:48');
INSERT INTO `sys_job_log` VALUES ('cc39910dd231383c9450d68c4b993dfe', 'basicsTask', '静态释放', 'staticRelease', '', 'basicsTask 总共耗时：593毫秒', '0', '', '2019-03-05 17:29:31');
INSERT INTO `sys_job_log` VALUES ('cd81d958307708573835dca3232b424d', 'basicsTask', '静态释放', 'staticRelease', '', 'basicsTask 总共耗时：1毫秒', '0', '', '2019-03-12 06:50:18');
INSERT INTO `sys_job_log` VALUES ('cd90ea85a57e7685cad795611cfebfa8', 'basicsTask', '静态释放', 'staticRelease', '', 'basicsTask 总共耗时：47毫秒', '0', '', '2019-03-03 05:10:43');
INSERT INTO `sys_job_log` VALUES ('ce995085846cd586f7cc4a5595cbd48b', 'basicsTask', '静态释放', 'staticRelease', '', 'basicsTask 总共耗时：45毫秒', '0', '', '2019-03-04 20:43:39');
INSERT INTO `sys_job_log` VALUES ('ceaa75e01c64f7231a497b842b861526', 'basicsTask', '静态释放', 'staticRelease', '', 'basicsTask 总共耗时：61毫秒', '0', '', '2019-03-06 22:49:16');
INSERT INTO `sys_job_log` VALUES ('cfc252b14abece2ede90e3f5a5efb298', 'basicsTask', '静态释放', 'staticRelease', '', 'basicsTask 总共耗时：10毫秒', '0', '', '2019-03-12 20:29:48');
INSERT INTO `sys_job_log` VALUES ('d40f0b44443a14af043a965ab1be1c32', 'basicsTask', '静态释放', 'staticRelease', '', 'basicsTask 总共耗时：1毫秒', '0', '', '2019-03-12 20:52:55');
INSERT INTO `sys_job_log` VALUES ('d4812195447c6ac8c97f2be19e29ea80', 'basicsTask', '静态释放', 'staticRelease', '', 'basicsTask 总共耗时：39毫秒', '0', '', '2019-03-11 10:01:39');
INSERT INTO `sys_job_log` VALUES ('d4ef9b3c483ead321f20a41536eaa441', 'basicsTask', '静态释放', 'staticRelease', '', 'basicsTask 总共耗时：0毫秒', '0', '', '2019-03-12 20:52:55');
INSERT INTO `sys_job_log` VALUES ('d6778bb0b3f2b2a26fe81f6349f1f6d3', 'basicsTask', '静态释放', 'staticRelease', '', 'basicsTask 总共耗时：48毫秒', '0', '', '2019-03-11 13:34:56');
INSERT INTO `sys_job_log` VALUES ('d79e09068938f67269352bd3efb99612', 'basicsTask', '静态释放', 'staticRelease', '', 'basicsTask 总共耗时：21009毫秒', '0', '', '2019-03-05 14:43:08');
INSERT INTO `sys_job_log` VALUES ('d95b2b9285a45ebddd81cc6b0a0b07f8', 'basicsTask', '静态释放', 'staticRelease', '', 'basicsTask 总共耗时：1毫秒', '0', '', '2019-03-12 06:50:18');
INSERT INTO `sys_job_log` VALUES ('d9e081f70396c0ee1c01c3afa9c96050', 'basicsTask', '静态释放', 'staticRelease', '', 'basicsTask 总共耗时：46毫秒', '0', '', '2019-03-02 07:22:00');
INSERT INTO `sys_job_log` VALUES ('dadd7e00e1db567bfe48e6f94090fc95', 'basicsTask', '静态释放', 'staticRelease', '', 'basicsTask 总共耗时：112毫秒', '0', '', '2019-03-08 08:18:27');
INSERT INTO `sys_job_log` VALUES ('db0b89073b14f44a435e09046541752f', 'basicsTask', '静态释放', 'staticRelease', '', 'basicsTask 总共耗时：327毫秒', '0', '', '2019-03-03 06:24:29');
INSERT INTO `sys_job_log` VALUES ('db3e2c9a6fc40d98cbf655bdeb47c33f', 'basicsTask', '静态释放', 'staticRelease', '', 'basicsTask 总共耗时：50毫秒', '0', '', '2019-02-27 08:00:51');
INSERT INTO `sys_job_log` VALUES ('dbe02bfdf824aee6dead254e6f2904ca', 'basicsTask', '静态释放', 'staticRelease', '', 'basicsTask 总共耗时：228毫秒', '0', '', '2019-03-08 05:45:29');
INSERT INTO `sys_job_log` VALUES ('dc680757a74d66e43cc81de4507fe66d', 'basicsTask', '静态释放', 'staticRelease', '', 'basicsTask 总共耗时：30毫秒', '0', '', '2019-03-09 06:32:47');
INSERT INTO `sys_job_log` VALUES ('dcadc78200c5ad07151a6e81143ece8c', 'basicsTask', '静态释放', 'staticRelease', '', 'basicsTask 总共耗时：1毫秒', '0', '', '2019-03-12 06:50:17');
INSERT INTO `sys_job_log` VALUES ('dcbd907331ee67d0ef042990206a7aa5', 'basicsTask', '静态释放', 'staticRelease', '', 'basicsTask 总共耗时：1毫秒', '0', '', '2019-03-12 20:07:02');
INSERT INTO `sys_job_log` VALUES ('dea410e2debaca3b7fa7974d791e45ab', 'basicsTask', '静态释放', 'staticRelease', '', 'basicsTask 总共耗时：54毫秒', '0', '', '2019-03-11 13:34:55');
INSERT INTO `sys_job_log` VALUES ('df6a505a1bdf4252fca6247495e0cdce', 'basicsTask', '静态释放', 'staticRelease', '', 'basicsTask 总共耗时：73毫秒', '0', '', '2019-03-08 05:32:34');
INSERT INTO `sys_job_log` VALUES ('dfa90c570fdcc9f40c42448cbd2b3bc9', 'basicsTask', '静态释放', 'staticRelease', '', 'basicsTask 总共耗时：281毫秒', '0', '', '2019-03-05 08:29:04');
INSERT INTO `sys_job_log` VALUES ('e0c99daca7f94b1ab8f460e753e6be44', 'basicsTask', '静态释放', 'staticRelease', '', 'basicsTask 总共耗时：1毫秒', '0', '', '2019-03-13 15:40:54');
INSERT INTO `sys_job_log` VALUES ('e0d6e9b3dc40cc13f774d85a62255935', 'basicsTask', '静态释放', 'staticRelease', '', 'basicsTask 总共耗时：0毫秒', '0', '', '2019-03-13 15:44:11');
INSERT INTO `sys_job_log` VALUES ('e1252c5045ee96301b8a218edf8ac294', 'basicsTask', '静态释放', 'staticRelease', '', 'basicsTask 总共耗时：108毫秒', '0', '', '2019-03-09 08:07:05');
INSERT INTO `sys_job_log` VALUES ('e1a5e7427b012b20a3ddd4dc9839db01', 'basicsTask', '静态释放', 'staticRelease', '', 'basicsTask 总共耗时：36毫秒', '0', '', '2019-03-11 13:34:55');
INSERT INTO `sys_job_log` VALUES ('e1ea0f3de5f5eccdb3bcbbec0ef261fc', 'basicsTask', '静态释放', 'staticRelease', '', 'basicsTask 总共耗时：47毫秒', '0', '', '2019-03-04 21:34:13');
INSERT INTO `sys_job_log` VALUES ('e3aaec63038e06f33dcbd9cc095d0d54', 'basicsTask', '静态释放', 'staticRelease', '', 'basicsTask 总共耗时：1毫秒', '0', '', '2019-03-12 20:29:48');
INSERT INTO `sys_job_log` VALUES ('e3f07e1e46b5a24117182e1c8c3d20b7', 'basicsTask', '静态释放', 'staticRelease', '', 'basicsTask 总共耗时：41毫秒', '0', '', '2019-03-07 21:04:06');
INSERT INTO `sys_job_log` VALUES ('e4284799f40f0f206100a3b0978536a0', 'basicsTask', '静态释放', 'staticRelease', '', 'basicsTask 总共耗时：47毫秒', '0', '', '2019-03-01 06:01:19');
INSERT INTO `sys_job_log` VALUES ('e515c5a9df856913692a73f60838a35c', 'basicsTask', '静态释放', 'staticRelease', '', 'basicsTask 总共耗时：21012毫秒', '0', '', '2019-03-05 14:42:47');
INSERT INTO `sys_job_log` VALUES ('e56c29ba3ba6e84bd3c82cf947cf8c0b', 'basicsTask', '静态释放', 'staticRelease', '', 'basicsTask 总共耗时：1毫秒', '0', '', '2019-03-12 20:12:03');
INSERT INTO `sys_job_log` VALUES ('e67f972fab7e9a128462ae98fd598161', 'basicsTask', '静态释放', 'staticRelease', '', 'basicsTask 总共耗时：72毫秒', '0', '', '2019-03-11 22:00:50');
INSERT INTO `sys_job_log` VALUES ('e73f45c89206e72af28056fcbe5bf9d3', 'basicsTask', '静态释放', 'staticRelease', '', 'basicsTask 总共耗时：104毫秒', '0', '', '2019-03-08 05:32:35');
INSERT INTO `sys_job_log` VALUES ('e876eaeb8e080c7b91b7596b45b41287', 'basicsTask', '静态释放', 'staticRelease', '', 'basicsTask 总共耗时：81毫秒', '0', '', '2019-03-09 08:07:05');
INSERT INTO `sys_job_log` VALUES ('e87f1842c37164e8009c2c704cb0bddb', 'basicsTask', '静态释放', 'staticRelease', '', 'basicsTask 总共耗时：48毫秒', '0', '', '2019-03-11 22:00:51');
INSERT INTO `sys_job_log` VALUES ('e9abd1d678a7e514dae9bb256e209114', 'basicsTask', '静态释放', 'staticRelease', '', 'basicsTask 总共耗时：93毫秒', '0', '', '2019-03-01 04:23:09');
INSERT INTO `sys_job_log` VALUES ('e9d38acd9877169b6b83eb218bec3d1c', 'basicsTask', '静态释放', 'staticRelease', '', 'basicsTask 总共耗时：34毫秒', '0', '', '2019-03-09 06:32:47');
INSERT INTO `sys_job_log` VALUES ('eb47c64f3e7f8646c948e87f85d1b7ff', 'basicsTask', '静态释放', 'staticRelease', '', 'basicsTask 总共耗时：40毫秒', '0', '', '2019-03-05 16:15:47');
INSERT INTO `sys_job_log` VALUES ('eb56c4c20f432b7e8b1e05461c9414d2', 'basicsTask', '静态释放', 'staticRelease', '', 'basicsTask 总共耗时：70毫秒', '0', '', '2019-03-06 00:00:00');
INSERT INTO `sys_job_log` VALUES ('ec25cf24758b5209820c8e349f0b832e', 'basicsTask', '静态释放', 'staticRelease', '', 'basicsTask 总共耗时：279毫秒', '0', '', '2019-03-06 05:37:13');
INSERT INTO `sys_job_log` VALUES ('ee06135119a74a84e0697a3108c49a4d', 'basicsTask', '静态释放', 'staticRelease', '', 'basicsTask 总共耗时：103毫秒', '0', '', '2019-03-08 05:32:36');
INSERT INTO `sys_job_log` VALUES ('ef93a57142c75b1c2d6d4b7dc8b677ae', 'basicsTask', '静态释放', 'staticRelease', '', 'basicsTask 总共耗时：234毫秒', '0', '', '2019-03-11 22:00:49');
INSERT INTO `sys_job_log` VALUES ('efdaf20d39fe89b6dfb658ed7ef22772', 'basicsTask', '静态释放', 'staticRelease', '', 'basicsTask 总共耗时：53毫秒', '0', '', '2019-03-05 08:29:05');
INSERT INTO `sys_job_log` VALUES ('f0aa9541ea42f9c0aefcf10ce9aa5336', 'basicsTask', '静态释放', 'staticRelease', '', 'basicsTask 总共耗时：57毫秒', '0', '', '2019-03-07 05:44:40');
INSERT INTO `sys_job_log` VALUES ('f1d61fb7019c25692e1e0faec687eb99', 'basicsTask', '静态释放', 'staticRelease', '', 'basicsTask 总共耗时：21020毫秒', '0', '', '2019-03-05 14:23:45');
INSERT INTO `sys_job_log` VALUES ('f21aab09421dacd12556131ed69a3c68', 'basicsTask', '静态释放', 'staticRelease', '', 'basicsTask 总共耗时：43毫秒', '0', '', '2019-03-05 16:15:47');
INSERT INTO `sys_job_log` VALUES ('f2d769d0d9d5aed324a967b0857f3664', 'basicsTask', '静态释放', 'staticRelease', '', 'basicsTask 总共耗时：64毫秒', '0', '', '2019-03-06 22:49:16');
INSERT INTO `sys_job_log` VALUES ('f34f7b83617de2d35ff66da07b81b298', 'basicsTask', '静态释放', 'staticRelease', '', 'basicsTask 总共耗时：1毫秒', '0', '', '2019-03-12 06:50:18');
INSERT INTO `sys_job_log` VALUES ('f365ae2955c4b72da807eb14dd69b798', 'basicsTask', '静态释放', 'staticRelease', '', 'basicsTask 总共耗时：60毫秒', '0', '', '2019-03-09 07:27:30');
INSERT INTO `sys_job_log` VALUES ('f36f5289d2eb52ecd67feae1227c3a25', 'basicsTask', '静态释放', 'staticRelease', '', 'basicsTask 总共耗时：90毫秒', '0', '', '2019-03-06 22:49:16');
INSERT INTO `sys_job_log` VALUES ('f39f79a65125c972979603032907fc02', 'basicsTask', '静态释放', 'staticRelease', '', 'basicsTask 总共耗时：248毫秒', '0', '', '2019-03-06 22:49:16');
INSERT INTO `sys_job_log` VALUES ('f3e95a960277011fdfd1fa1d17048092', 'basicsTask', '静态释放', 'staticRelease', '', 'basicsTask 总共耗时：43毫秒', '0', '', '2019-03-04 21:24:40');
INSERT INTO `sys_job_log` VALUES ('f40e4cc3a0fe1f216b384b8299b34f73', 'basicsTask', '静态释放', 'staticRelease', '', 'basicsTask 总共耗时：1毫秒', '0', '', '2019-03-12 20:29:48');
INSERT INTO `sys_job_log` VALUES ('f44a562b3f042eb22d4b5aef32e9993a', 'basicsTask', '静态释放', 'staticRelease', '', 'basicsTask 总共耗时：45毫秒', '0', '', '2019-03-05 08:29:05');
INSERT INTO `sys_job_log` VALUES ('f459146e3ee5e132d6d5b84ae0381e1b', 'basicsTask', '静态释放', 'staticRelease', '', 'basicsTask 总共耗时：39毫秒', '0', '', '2019-03-11 10:01:39');
INSERT INTO `sys_job_log` VALUES ('f482ed122c2411f13236e1d554275b2d', 'basicsTask', '静态释放', 'staticRelease', '', 'basicsTask 总共耗时：1毫秒', '0', '', '2019-03-13 15:44:11');
INSERT INTO `sys_job_log` VALUES ('f68d3597e7f079ac8ecb957a66df4af1', 'basicsTask', '静态释放', 'staticRelease', '', 'basicsTask 总共耗时：1毫秒', '0', '', '2019-03-12 06:50:17');
INSERT INTO `sys_job_log` VALUES ('f7ce1e1c74a8e4df4d1c2ac1462b7eaa', 'basicsTask', '静态释放', 'staticRelease', '', 'basicsTask 总共耗时：13毫秒', '0', '', '2019-03-12 06:50:17');
INSERT INTO `sys_job_log` VALUES ('f8147ef2ebeef5dbe0652eb916b24410', 'basicsTask', '静态释放', 'staticRelease', '', 'basicsTask 总共耗时：80毫秒', '0', '', '2019-03-07 05:44:40');
INSERT INTO `sys_job_log` VALUES ('f821c33ef859889b69ceea29cdbeb4de', 'basicsTask', '静态释放', 'staticRelease', '', 'basicsTask 总共耗时：55毫秒', '0', '', '2019-03-09 06:32:47');
INSERT INTO `sys_job_log` VALUES ('f9c61818e244fdcaa384701a4fedd9ac', 'basicsTask', '静态释放', 'staticRelease', '', 'basicsTask 总共耗时：329毫秒', '0', '', '2019-03-11 13:34:54');
INSERT INTO `sys_job_log` VALUES ('faab40608924a39f1b947a9e4d1b0431', 'basicsTask', '静态释放', 'staticRelease', '', 'basicsTask 总共耗时：254毫秒', '0', '', '2019-03-02 07:22:00');
INSERT INTO `sys_job_log` VALUES ('fbd323c3dcb90b918fadebebba2f5a37', 'basicsTask', '静态释放', 'staticRelease', '', 'basicsTask 总共耗时：61毫秒', '0', '', '2019-03-11 10:01:39');
INSERT INTO `sys_job_log` VALUES ('fbe00dc955af0138916ea34d6d3f35b1', 'basicsTask', '静态释放', 'staticRelease', '', 'basicsTask 总共耗时：2毫秒', '0', '', '2019-03-12 06:50:17');
INSERT INTO `sys_job_log` VALUES ('fc9d836fff7f0e3da9ad400d4cbe95ec', 'basicsTask', '静态释放', 'staticRelease', '', 'basicsTask 总共耗时：40毫秒', '0', '', '2019-03-03 05:10:43');
INSERT INTO `sys_job_log` VALUES ('fccb18902f437a0a04e451000890ef91', 'basicsTask', '静态释放', 'staticRelease', '', 'basicsTask 总共耗时：1毫秒', '0', '', '2019-03-12 20:29:48');
INSERT INTO `sys_job_log` VALUES ('fcf33627387a70657fc153647f5de2da', 'basicsTask', '静态释放', 'staticRelease', '', 'basicsTask 总共耗时：104毫秒', '0', '', '2019-02-28 00:00:00');
INSERT INTO `sys_job_log` VALUES ('fd23238fabf047f73aff3be8a7a38629', 'basicsTask', '静态释放', 'staticRelease', '', 'basicsTask 总共耗时：0毫秒', '0', '', '2019-03-12 20:29:48');
INSERT INTO `sys_job_log` VALUES ('fd82ce89293a5a15754f3b158f483a35', 'basicsTask', '静态释放', 'staticRelease', '', 'basicsTask 总共耗时：1毫秒', '0', '', '2019-03-12 20:12:03');
INSERT INTO `sys_job_log` VALUES ('fda17542fd3101ced4034e06370ee268', 'basicsTask', '静态释放', 'staticRelease', '', 'basicsTask 总共耗时：30毫秒', '0', '', '2019-03-09 06:32:47');
INSERT INTO `sys_job_log` VALUES ('ff44b091a188ea2abde23c02d1fc02ba', 'basicsTask', '静态释放', 'staticRelease', '', 'basicsTask 总共耗时：1毫秒', '0', '', '2019-03-12 20:29:48');
INSERT INTO `sys_job_log` VALUES ('ff6ec78034d379839ec5d99b865374c4', 'basicsTask', '静态释放', 'staticRelease', '', 'basicsTask 总共耗时：69毫秒', '0', '', '2019-03-06 05:37:14');

-- ----------------------------
-- Table structure for sys_login_log
-- ----------------------------
DROP TABLE IF EXISTS `sys_login_log`;
CREATE TABLE `sys_login_log` (
  `LOGIN_ID` varchar(32) NOT NULL COMMENT '访问ID',
  `LOGIN_NAME` varchar(50) DEFAULT '' COMMENT '登录账号',
  `LOGIN_IPADDR` varchar(50) DEFAULT '' COMMENT '登录IP地址',
  `LOGIN_LOCATION` varchar(255) DEFAULT '' COMMENT '登录地点',
  `LOGIN_BROWSER` varchar(50) DEFAULT '' COMMENT '浏览器类型',
  `LOGIN_OS` varchar(50) DEFAULT '' COMMENT '操作系统',
  `LOGIN_STATUS` char(1) DEFAULT '0' COMMENT '登录状态（0成功 1失败）',
  `LOGIN_MSG` varchar(255) DEFAULT '' COMMENT '提示消息',
  `LOGIN_TIME` datetime DEFAULT NULL COMMENT '访问时间',
  PRIMARY KEY (`LOGIN_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='系统访问记录';

-- ----------------------------
-- Records of sys_login_log
-- ----------------------------
INSERT INTO `sys_login_log` VALUES ('004d079582c852bac0d9525cf03de1ad', 'admin', '171.83.87.161', 'XX XX', 'Chrome', 'Windows 10', '1', '验证码错误', null);
INSERT INTO `sys_login_log` VALUES ('01266fbb67db8247b6e1d575e33a3175', 'admin', '58.48.187.18', '湖北 武汉', 'Chrome', 'Windows 10', '0', '登录成功', null);
INSERT INTO `sys_login_log` VALUES ('01e9563fdf095e2a6a69d46320b0fe37', 'admina', '171.83.87.161', '湖北 武汉', 'Chrome', 'Windows 10', '1', '用户不存在/密码错误', null);
INSERT INTO `sys_login_log` VALUES ('04978fea434ead070f491190f90829f4', 'admin', '119.98.217.167', '湖北 武汉', 'Chrome', 'Windows 10', '0', '登录成功', null);
INSERT INTO `sys_login_log` VALUES ('0506719cd694ab5e3673fd79382ad690', 'admin', '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '0', '登录成功', null);
INSERT INTO `sys_login_log` VALUES ('054c1b33689719873f86853c36dd31eb', 'admin', '59.173.30.34', '湖北 武汉', 'Firefox', 'Mac OS X', '0', '登录成功', null);
INSERT INTO `sys_login_log` VALUES ('05f7739c5a81168d517df31a653c662c', 'admin', '58.48.187.18', '湖北 武汉', 'Chrome', 'Windows 10', '1', '验证码错误', null);
INSERT INTO `sys_login_log` VALUES ('06795be9331ab3874a22e803b3e86288', 'admin', '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '0', '登录成功', null);
INSERT INTO `sys_login_log` VALUES ('079bdff04ec6d08863919e406e8fe860', 'admin', '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '0', '登录成功', null);
INSERT INTO `sys_login_log` VALUES ('07cec47f718a32912883095e5f509b9b', 'admin', '58.48.187.18', '湖北 武汉', 'Chrome', 'Windows 10', '1', '验证码错误', null);
INSERT INTO `sys_login_log` VALUES ('0c0076a354a9a83bbd37b8883a2c1f1a', 'admin', '122.192.12.230', '江苏 南京', 'Chrome', 'Windows 10', '1', '验证码错误', null);
INSERT INTO `sys_login_log` VALUES ('0da1bc8c0745fbb1c26debe64d605418', 'admin', '58.48.187.18', '湖北 武汉', 'Chrome', 'Windows 10', '1', '验证码错误', null);
INSERT INTO `sys_login_log` VALUES ('0ea8f88d8b45fd49688b8ddd9aea6cec', 'admin', '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '0', '登录成功', null);
INSERT INTO `sys_login_log` VALUES ('103986b94be593eb04b84fa6700b0894', 'admin', '58.48.187.18', '湖北 武汉', 'Chrome', 'Windows 10', '1', '验证码错误', null);
INSERT INTO `sys_login_log` VALUES ('10f777312ad95ab3df2a5ef7956db6ca', 'admin', '58.48.187.18', '湖北 武汉', 'Chrome', 'Windows 10', '1', '验证码错误', null);
INSERT INTO `sys_login_log` VALUES ('13dd9e7995601a64e986f3d518b0f643', 'admina', '171.83.87.161', '湖北 武汉', 'Chrome', 'Windows 10', '1', '用户不存在/密码错误', null);
INSERT INTO `sys_login_log` VALUES ('16271a5f6318b731d38f25e096631df9', 'admin', '171.83.82.227', '湖北 武汉', 'Chrome', 'Windows 7', '0', '登录成功', null);
INSERT INTO `sys_login_log` VALUES ('1693644716658a749555575552919c58', 'admin', '58.48.187.18', '湖北 武汉', 'Chrome', 'Windows 10', '1', '验证码错误', null);
INSERT INTO `sys_login_log` VALUES ('17c20f71c557dab5b44e0a09e37a0b6e', 'admin', '58.48.187.18', '湖北 武汉', 'Chrome', 'Windows 10', '1', '验证码错误', null);
INSERT INTO `sys_login_log` VALUES ('17f6511f496d01b56cbdde1edc293d39', 'admin', '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '0', '登录成功', null);
INSERT INTO `sys_login_log` VALUES ('1857c340ea1e5386acd81faa4c4d2f35', 'admin', '113.57.28.27', '湖北 武汉', 'Firefox', 'Windows 10', '1', '该账户正在使用', null);
INSERT INTO `sys_login_log` VALUES ('18cbc465aa8b920403e24107d1a4e541', 'admin', '122.192.12.230', '江苏 南京', 'Chrome', 'Windows 10', '1', '该账户正在使用', null);
INSERT INTO `sys_login_log` VALUES ('1c2c3f70ad26fcf308ecc14e1e43dd5a', 'admin', '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '0', '登录成功', null);
INSERT INTO `sys_login_log` VALUES ('1d911c6731034c1d49c16f2b3e3a6b01', 'admin', '171.83.87.161', '湖北 武汉', 'Chrome', 'Windows 10', '1', '验证码错误', null);
INSERT INTO `sys_login_log` VALUES ('1d9e1c6f2da1eeda58eb0d217661d280', 'admin', '58.48.187.18', 'XX XX', 'Chrome', 'Windows 10', '1', '验证码错误', null);
INSERT INTO `sys_login_log` VALUES ('1ebcd1cae458d0623a3a7ab145b25596', 'admin', '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '0', '登录成功', null);
INSERT INTO `sys_login_log` VALUES ('2242d67fea8e51653ce763b6a37aa90e', 'admin', '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '0', '登录成功', '2018-12-14 14:03:28');
INSERT INTO `sys_login_log` VALUES ('288f4910b5cc09b508ddcc74a7514272', 'admin', '58.48.187.18', '湖北 武汉', 'Chrome', 'Windows 10', '1', '验证码错误', null);
INSERT INTO `sys_login_log` VALUES ('2b2482d5f83266c4f486d238ae46e177', 'admin', '58.48.187.18', '湖北 武汉', 'Chrome', 'Windows 10', '1', '验证码错误', null);
INSERT INTO `sys_login_log` VALUES ('2b8baa8b7692e24b706fd9e7f8585bbf', 'admin', '171.83.87.161', '湖北 武汉', 'Chrome', 'Windows 10', '1', '验证码错误', null);
INSERT INTO `sys_login_log` VALUES ('2b9ad7ea301c39de196a7ed3a92bcd54', 'admin', '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '0', '登录成功', null);
INSERT INTO `sys_login_log` VALUES ('2c04048d49b258f036706f62993dc153', 'admin', '58.48.187.18', '湖北 武汉', 'Chrome', 'Windows 10', '1', '验证码错误', null);
INSERT INTO `sys_login_log` VALUES ('2cb459f706a7817cd7847b43f8101efc', 'admin', '171.83.87.161', '湖北 武汉', 'Chrome', 'Windows 10', '1', '验证码错误', null);
INSERT INTO `sys_login_log` VALUES ('2ccf8754c25acdf66ef0ebd0d8985173', 'admin', '58.48.187.18', '湖北 武汉', 'Chrome', 'Windows 10', '1', '验证码错误', null);
INSERT INTO `sys_login_log` VALUES ('2d0b832719c3987ec3cda466391d1911', 'admin', '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '0', '登录成功', null);
INSERT INTO `sys_login_log` VALUES ('2d751aae7b63c130e93af54f50fc107d', 'admin', '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '0', '登录成功', null);
INSERT INTO `sys_login_log` VALUES ('30fa2725083ed5eeb4d22dd6293602eb', 'admin', '122.192.12.230', '江苏 南京', 'Chrome', 'Windows 10', '1', '该账户正在使用', null);
INSERT INTO `sys_login_log` VALUES ('33a5c29f4ea1ecbb55aed6dc5b908ea2', 'admin', '122.192.12.230', '江苏 南京', 'Chrome', 'Windows 10', '1', '验证码错误', null);
INSERT INTO `sys_login_log` VALUES ('34817db7c3025cfff8e5708165172ec1', 'admin', '122.192.12.230', '江苏 南京', 'Chrome', 'Windows 10', '1', '验证码错误', null);
INSERT INTO `sys_login_log` VALUES ('34b89fc03871ac65261c06f5cbca91b0', 'admin', '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '0', '登录成功', null);
INSERT INTO `sys_login_log` VALUES ('356a4676813637011c1b4e12d7a8365a', 'admin', '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '0', '登录成功', null);
INSERT INTO `sys_login_log` VALUES ('3659bd108f7854ea11b9e67a68dc9aeb', 'admin', '59.173.30.34', '湖北 武汉', 'Chrome', 'Windows 7', '0', '登录成功', null);
INSERT INTO `sys_login_log` VALUES ('37311a8b34c9aadf4628c67b0d19b1c7', 'admin', '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '0', '登录成功', null);
INSERT INTO `sys_login_log` VALUES ('390d87c2e70afa17904f161b775c7df6', 'admin', '58.48.187.18', '湖北 武汉', 'Chrome', 'Windows 10', '1', '验证码错误', null);
INSERT INTO `sys_login_log` VALUES ('3bbce192e325ba9a286c9b807ec8f6ad', 'admin', '183.13.203.72', '广东 深圳', 'Chrome', 'Windows 10', '0', '登录成功', null);
INSERT INTO `sys_login_log` VALUES ('3c62966ec4e0b88bb274fc26e8d0ec4b', 'admin', '122.194.3.237', '江苏 南京', 'Chrome', 'Windows 10', '0', '登录成功', null);
INSERT INTO `sys_login_log` VALUES ('3c91861166ed3996eec8c9ffc011c26f', 'admin', '58.48.187.18', '湖北 武汉', 'Chrome', 'Windows 10', '0', '登录成功', null);
INSERT INTO `sys_login_log` VALUES ('3cf02cd915bc7748dc1f315bd7ac9e6b', 'admin', '171.83.87.161', '湖北 武汉', 'Chrome', 'Windows 10', '1', '验证码错误', null);
INSERT INTO `sys_login_log` VALUES ('3d607a6053cf79b9bec5b958938da07c', 'admin', '59.173.30.34', '湖北 武汉', 'Firefox', 'Mac OS X', '1', '验证码错误', null);
INSERT INTO `sys_login_log` VALUES ('41f28cc39a1c55e861472a4355fbd504', 'admin', '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '0', '登录成功', null);
INSERT INTO `sys_login_log` VALUES ('44ac6164ca749f53276e77b6e0249ac8', 'admin', '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '0', '登录成功', null);
INSERT INTO `sys_login_log` VALUES ('44ed3c3a5e42b58219099ec3b6715dd4', 'admin', '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '0', '登录成功', null);
INSERT INTO `sys_login_log` VALUES ('46725d68b6289b99c9b0cf64ba5ec3ff', 'admina', '171.83.87.161', 'XX XX', 'Chrome', 'Windows 10', '1', '用户不存在/密码错误', null);
INSERT INTO `sys_login_log` VALUES ('48e9706ea82e806df492aafddb5e141b', 'admin', '171.83.82.227', '湖北 武汉', 'Firefox', 'Windows 10', '0', '登录成功', null);
INSERT INTO `sys_login_log` VALUES ('49563b782faf36bcc3993ebd7d7c8277', 'admina', '171.83.87.161', '湖北 武汉', 'Chrome', 'Windows 10', '1', '验证码错误', null);
INSERT INTO `sys_login_log` VALUES ('49a65093b0b60385c36db5169df832da', 'admin', '171.83.87.161', '湖北 武汉', 'Chrome', 'Windows 10', '1', '验证码错误', null);
INSERT INTO `sys_login_log` VALUES ('49b406b4ea35a10b501bc07f9010efdd', 'admin', '58.48.187.18', '湖北 武汉', 'Chrome', 'Windows 10', '1', '验证码错误', null);
INSERT INTO `sys_login_log` VALUES ('4a49a3e341994097ba9c787d4b342058', 'admin', '122.192.12.230', '江苏 南京', 'Chrome', 'Windows 10', '1', '该账户正在使用', null);
INSERT INTO `sys_login_log` VALUES ('4a77289b548f060a8f263b04d2372a09', 'admin', '58.48.187.18', '湖北 武汉', 'Chrome', 'Windows 10', '1', '该账户正在使用', null);
INSERT INTO `sys_login_log` VALUES ('4a7cb20ca874fc4ba61211cd80cf9f7a', 'admin', '58.48.187.18', '湖北 武汉', 'Chrome', 'Windows 10', '1', '验证码错误', null);
INSERT INTO `sys_login_log` VALUES ('4b918b9c1c12cd0762c8c0a652050cec', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', null);
INSERT INTO `sys_login_log` VALUES ('4c9c6bf2910605be3e34bcf204c21cf9', 'admin', '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '0', '登录成功', null);
INSERT INTO `sys_login_log` VALUES ('4d5baba460a55b9026fd644366cb2885', 'admin', '58.48.187.18', '湖北 武汉', 'Chrome', 'Windows 10', '1', '验证码错误', null);
INSERT INTO `sys_login_log` VALUES ('4dc03b07e32c70409e34cc3b1aa9c350', 'admin', '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '1', '验证码错误', null);
INSERT INTO `sys_login_log` VALUES ('4e5a295fa127d855016f870755c115f4', 'admin', '122.192.12.230', '江苏 南京', 'Chrome', 'Windows 10', '1', '该账户正在使用', null);
INSERT INTO `sys_login_log` VALUES ('4fc742f298438c5bf2125dd566378e2b', 'admin', '122.192.12.230', '江苏 南京', 'Chrome', 'Windows 10', '0', '登录成功', null);
INSERT INTO `sys_login_log` VALUES ('509663a48f82a006bbc9c8db6d2be291', 'admin', '58.48.187.18', '湖北 武汉', 'Chrome', 'Windows 10', '1', '验证码错误', null);
INSERT INTO `sys_login_log` VALUES ('50a1e6b1257cf72476e235f108959dc9', 'admin', '171.83.82.227', '湖北 武汉', 'Firefox', 'Mac OS X', '1', '验证码错误', null);
INSERT INTO `sys_login_log` VALUES ('5118587c8ca16bb64ef0f42cd3a96f46', 'admin', '171.83.87.161', '湖北 武汉', 'Chrome', 'Windows 10', '1', '验证码错误', null);
INSERT INTO `sys_login_log` VALUES ('51c241c26efc840e0c2e0197f0bc565e', 'admin', '119.98.217.184', '湖北 武汉', 'Firefox', 'Windows 10', '1', '该账户正在使用', null);
INSERT INTO `sys_login_log` VALUES ('5248aa6bddb6ad45c7bb4e1553742781', 'admin', '171.83.87.161', '湖北 武汉', 'Chrome', 'Windows 10', '1', '验证码错误', null);
INSERT INTO `sys_login_log` VALUES ('52b1d3b16e6e5a8dc6a1b22977479214', 'admin', '171.83.82.227', '湖北 武汉', 'Firefox', 'Windows 10', '0', '登录成功', null);
INSERT INTO `sys_login_log` VALUES ('56945ba6e620b758c4c15ec279e9be02', 'admin', '59.173.30.34', '湖北 武汉', 'Firefox', 'Mac OS X', '1', '验证码错误', null);
INSERT INTO `sys_login_log` VALUES ('56e040184bde0dd153f82fbdc394f112', 'admin', '119.98.217.167', '湖北 武汉', 'Chrome', 'Windows 10', '1', '该账户正在使用', null);
INSERT INTO `sys_login_log` VALUES ('590d587a9edb0f1b01fbec117fbd8088', 'admin', '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '0', '登录成功', null);
INSERT INTO `sys_login_log` VALUES ('5ce522b23e580da12dbadbca51dcf947', 'admin', '119.98.217.167', '湖北 武汉', 'Chrome', 'Windows 10', '0', '登录成功', null);
INSERT INTO `sys_login_log` VALUES ('5eab3d517e864e242c712bd2198740c9', 'admin', '122.192.12.230', '江苏 南京', 'Chrome', 'Windows 10', '1', '该账户正在使用', null);
INSERT INTO `sys_login_log` VALUES ('6068422871c86cd2ba62cb2b98f9e9a6', 'admin', '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '0', '登录成功', null);
INSERT INTO `sys_login_log` VALUES ('62ae25ec41babf3f269565424acafb09', 'admin', '58.48.187.18', '湖北 武汉', 'Chrome', 'Windows 10', '0', '登录成功', null);
INSERT INTO `sys_login_log` VALUES ('64367347a26e9f45a3d13f31bd625215', 'admin', '171.83.87.161', '湖北 武汉', 'Chrome', 'Windows 10', '0', '登录成功', null);
INSERT INTO `sys_login_log` VALUES ('65cbf01f063eee58e931ea7753ad746e', 'admin', '122.192.12.230', '江苏 南京', 'Chrome', 'Windows 10', '0', '登录成功', null);
INSERT INTO `sys_login_log` VALUES ('66203cb0b8e7002290069888991ea1cb', 'admin', '171.83.87.161', '湖北 武汉', 'Chrome', 'Windows 10', '0', '登录成功', null);
INSERT INTO `sys_login_log` VALUES ('68fd5ae6dc8c8cea03d02475c217478a', 'admin', '58.48.187.18', '湖北 武汉', 'Chrome', 'Windows 10', '1', '验证码错误', null);
INSERT INTO `sys_login_log` VALUES ('693f363dac73f03879836c732e3cd095', 'admin', '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '0', '登录成功', null);
INSERT INTO `sys_login_log` VALUES ('6b05eb1ec9bcdf76aadd4aac9a3ea0c2', 'admin', '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '0', '登录成功', null);
INSERT INTO `sys_login_log` VALUES ('6bd35790ec973abf303a6802785987a1', 'admin', '171.83.87.161', '湖北 武汉', 'Chrome', 'Windows 10', '1', '验证码错误', null);
INSERT INTO `sys_login_log` VALUES ('6e3b1abe1e5d12b18f2f59bd8929764d', 'admin', '59.173.30.34', '湖北 武汉', 'Firefox', 'Mac OS X', '0', '登录成功', null);
INSERT INTO `sys_login_log` VALUES ('6e6d1af1f5b6af005c1afbf849f51721', 'admin', '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '0', '登录成功', null);
INSERT INTO `sys_login_log` VALUES ('6fcfb96ea6385ba5703fb5beaf5e2c19', 'admin', '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '0', '登录成功', null);
INSERT INTO `sys_login_log` VALUES ('6fd81161ea34f7c725f92f89482fbd9d', 'admin', '59.173.30.34', '湖北 武汉', 'Firefox', 'Windows 10', '0', '登录成功', null);
INSERT INTO `sys_login_log` VALUES ('6fefae211596ea1267850b297bb99048', 'admin', '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '0', '登录成功', null);
INSERT INTO `sys_login_log` VALUES ('701538fe350a2991e31e2dc7bd4b6eeb', 'admin', '171.83.87.161', '湖北 武汉', 'Chrome', 'Windows 10', '0', '登录成功', null);
INSERT INTO `sys_login_log` VALUES ('70b0224218971075e94a5ff054df9ff5', 'admin', '58.48.187.18', '湖北 武汉', 'Chrome', 'Windows 10', '1', '验证码错误', null);
INSERT INTO `sys_login_log` VALUES ('718549a4e4b9faacfbe56439134a545b', 'admin', '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '0', '登录成功', null);
INSERT INTO `sys_login_log` VALUES ('727b687ac23c1cbd86fd1177f46939ba', 'admin', '58.48.187.18', '湖北 武汉', 'Chrome', 'Windows 10', '1', '验证码错误', null);
INSERT INTO `sys_login_log` VALUES ('72edb990c38e71813bd16678ccfbd949', 'admin', '171.83.87.161', '湖北 武汉', 'Chrome', 'Windows 10', '1', '验证码错误', null);
INSERT INTO `sys_login_log` VALUES ('74329a75b3b63eb4e933ef3335d420e2', 'admin', '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '1', '用户已封禁，原因：null', null);
INSERT INTO `sys_login_log` VALUES ('751af7cede51ec4d2f73132297d685b1', 'admin', '58.48.187.18', '湖北 武汉', 'Chrome', 'Windows 10', '1', '验证码错误', null);
INSERT INTO `sys_login_log` VALUES ('76b29e9a08dd7c9fbaefc91446ddf643', 'admin', '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '0', '登录成功', null);
INSERT INTO `sys_login_log` VALUES ('76b2c12f4ac94f7abe752247566c50bd', 'admin', '58.48.187.18', '湖北 武汉', 'Chrome', 'Windows 10', '0', '登录成功', null);
INSERT INTO `sys_login_log` VALUES ('77146a2b3272f93dfad2b5a977e48130', 'admin', '58.48.187.18', '湖北 武汉', 'Chrome', 'Windows 10', '1', '该账户正在使用', null);
INSERT INTO `sys_login_log` VALUES ('774d905daed1cdfc0729195c2dfb283a', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', null);
INSERT INTO `sys_login_log` VALUES ('77dde297764f24580be394a5ee06e73a', 'admin', '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '0', '登录成功', null);
INSERT INTO `sys_login_log` VALUES ('77fae6ba81f1f976a831e0aef49caef3', 'admin', '119.98.217.184', '湖北 武汉', 'Firefox', 'Windows 10', '0', '登录成功', null);
INSERT INTO `sys_login_log` VALUES ('78c99f997d359b95b773585acd29ad37', 'admin', '171.83.82.227', '湖北 武汉', 'Chrome', 'Windows 7', '0', '登录成功', null);
INSERT INTO `sys_login_log` VALUES ('7935a975b783715e894fa5f1dd2dd097', 'admin', '171.83.87.161', '湖北 武汉', 'Chrome', 'Windows 10', '1', '验证码错误', null);
INSERT INTO `sys_login_log` VALUES ('7a57a0477fb4f00b39a530f7fe3cff1c', 'admin', '119.98.217.167', '湖北 武汉', 'Chrome', 'Windows 10', '0', '登录成功', null);
INSERT INTO `sys_login_log` VALUES ('7b969bc0068b0bf193ebbd19e3e08136', 'admin', '113.57.28.27', '湖北 武汉', 'Firefox', 'Windows 10', '1', '该账户正在使用', null);
INSERT INTO `sys_login_log` VALUES ('7f0ddd211274fada4577511c98273fcc', 'admin', '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '0', '登录成功', null);
INSERT INTO `sys_login_log` VALUES ('80bf8b9161f9ddda95f69f0f61965659', 'admin', '119.98.217.184', '湖北 武汉', 'Firefox', 'Windows 10', '1', '该账户正在使用', null);
INSERT INTO `sys_login_log` VALUES ('819fe67dcbfa87367f11bb3a403a46df', 'admin', '122.192.12.230', '江苏 南京', 'Chrome', 'Windows 10', '1', '该账户正在使用', null);
INSERT INTO `sys_login_log` VALUES ('81e65800c3ab0f70f45c56b51fe83717', 'admin', '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '0', '登录成功', null);
INSERT INTO `sys_login_log` VALUES ('8343bfb606b53bdbfbc5f3d8273b9d57', 'admin', '58.48.187.18', '湖北 武汉', 'Chrome', 'Windows 10', '1', '验证码错误', null);
INSERT INTO `sys_login_log` VALUES ('8576d7c8b3a564439d0bf47f5f9f2938', 'admin', '171.83.87.161', '湖北 武汉', 'Chrome', 'Windows 10', '0', '登录成功', null);
INSERT INTO `sys_login_log` VALUES ('870caa500f85b7d43ce8764f26c55c71', 'admin', '171.83.87.161', '湖北 武汉', 'Chrome', 'Windows 10', '1', '验证码错误', null);
INSERT INTO `sys_login_log` VALUES ('8b8b3728453f77742185bdf965198ef6', 'admin', '113.57.28.27', '湖北 武汉', 'Firefox', 'Windows 10', '1', '验证码错误', null);
INSERT INTO `sys_login_log` VALUES ('8c46b073058690bf6b397583cffc4463', 'admin', '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '0', '登录成功', null);
INSERT INTO `sys_login_log` VALUES ('8c6431b7cd2c542aff8aed7a50fdfcc7', 'admin', '119.98.217.167', '湖北 武汉', 'Chrome', 'Windows 10', '0', '登录成功', null);
INSERT INTO `sys_login_log` VALUES ('8d0727c7e77ca1b2bc2465e31e87942d', 'admin', '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '1', '验证码错误', null);
INSERT INTO `sys_login_log` VALUES ('8e2f482307b9cd9d8fbb0ed14b51e209', 'admin', '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '0', '登录成功', null);
INSERT INTO `sys_login_log` VALUES ('8f5b54f51d0dfea462184af014f54bc2', 'admin', '122.192.12.230', '江苏 南京', 'Chrome', 'Windows 10', '1', '该账户正在使用', null);
INSERT INTO `sys_login_log` VALUES ('8fce79e0abdb6be3205c3fcb5e629f8b', 'admin', '171.83.87.161', '湖北 武汉', 'Chrome', 'Windows 10', '1', '验证码错误', null);
INSERT INTO `sys_login_log` VALUES ('8ff07935deaa15244a98d42bd0cac249', 'admin', '122.192.12.230', '江苏 南京', 'Chrome', 'Windows 10', '1', '该账户正在使用', null);
INSERT INTO `sys_login_log` VALUES ('9012743f628debb7a8def5feb1c04de7', 'admin', '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '0', '登录成功', null);
INSERT INTO `sys_login_log` VALUES ('912b42cae9c56468109ec3eaea56b636', 'admin', '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '0', '登录成功', null);
INSERT INTO `sys_login_log` VALUES ('91df775118e4717ec5f9945d95f949fb', 'admin', '122.192.12.230', '江苏 南京', 'Chrome', 'Windows 10', '1', '该账户正在使用', null);
INSERT INTO `sys_login_log` VALUES ('91f9da5292dbc80d2dbd640fee58334d', 'admin', '58.48.187.18', '湖北 武汉', 'Chrome', 'Windows 10', '1', '验证码错误', null);
INSERT INTO `sys_login_log` VALUES ('928eb9d4868c4d21f56e3291f948c90b', '111', '122.192.12.230', '江苏 南京', 'Chrome', 'Windows 10', '1', '用户不存在/密码错误', null);
INSERT INTO `sys_login_log` VALUES ('94c688b1e821d4cc628c2c18b416503f', 'admin', '58.48.187.18', '湖北 武汉', 'Chrome', 'Windows 10', '0', '登录成功', null);
INSERT INTO `sys_login_log` VALUES ('94d9b82f830643a606edfff8c61e9fac', 'admin', '58.48.187.18', '湖北 武汉', 'Chrome', 'Windows 10', '0', '退出成功', null);
INSERT INTO `sys_login_log` VALUES ('9640f4004656d2e90813e4e4d0d152d9', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', null);
INSERT INTO `sys_login_log` VALUES ('984118f536614cde86c951320620ccdb', 'admin', '119.98.217.167', '湖北 武汉', 'Chrome', 'Windows 10', '0', '登录成功', null);
INSERT INTO `sys_login_log` VALUES ('998b486c34372b15260fa4c50a36b9d6', 'admin', '58.48.187.18', '湖北 武汉', 'Chrome', 'Windows 10', '1', '验证码错误', null);
INSERT INTO `sys_login_log` VALUES ('99dd224f528b09f75fa01f955ea282d8', 'admin', '171.83.82.227', '湖北 武汉', 'Chrome', 'Windows 7', '0', '登录成功', null);
INSERT INTO `sys_login_log` VALUES ('9b0efc7b134744f5a9e678602d14e45c', 'admin', '58.48.187.18', '湖北 武汉', 'Chrome', 'Windows 10', '1', '验证码错误', null);
INSERT INTO `sys_login_log` VALUES ('9c342ddf8ca48aa3aa49a2240a825e0e', 'admin', '58.48.187.18', '湖北 武汉', 'Chrome', 'Windows 10', '1', '验证码错误', null);
INSERT INTO `sys_login_log` VALUES ('9d13cadd22d7171efac9bb565de62bf5', '111', '122.192.12.230', '江苏 南京', 'Chrome', 'Windows 10', '1', '用户不存在/密码错误', null);
INSERT INTO `sys_login_log` VALUES ('9d3a314de04b9db1fd3369fa9e669155', 'admin', '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '0', '登录成功', null);
INSERT INTO `sys_login_log` VALUES ('9d44d2bdfc577d2c00994f33aad642a6', 'admin', '171.83.87.161', '湖北 武汉', 'Chrome', 'Windows 10', '0', '登录成功', null);
INSERT INTO `sys_login_log` VALUES ('a040f0a9b00448cb97eb259686121d78', 'admin', '58.48.187.18', '湖北 武汉', 'Chrome', 'Windows 10', '1', '验证码错误', null);
INSERT INTO `sys_login_log` VALUES ('a1fae67c54f1458fc790e092d2d4d6e6', 'admin', '58.48.187.18', '湖北 武汉', 'Chrome', 'Windows 10', '1', '验证码错误', null);
INSERT INTO `sys_login_log` VALUES ('a4cd767b52eaf59c03ffca762e280839', 'admin', '119.98.217.184', '湖北 武汉', 'Firefox', 'Windows 10', '0', '登录成功', null);
INSERT INTO `sys_login_log` VALUES ('a6e3e490adf087f7784f8652e1e89e43', 'admin', '171.83.87.161', '湖北 武汉', 'Chrome', 'Windows 10', '0', '登录成功', null);
INSERT INTO `sys_login_log` VALUES ('a790114ead3526c619f3a7583d62305a', 'admin', '171.83.87.161', '湖北 武汉', 'Chrome', 'Windows 10', '1', '验证码错误', null);
INSERT INTO `sys_login_log` VALUES ('a793dc7ebb3a663dee4af76153bc05fe', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', null);
INSERT INTO `sys_login_log` VALUES ('a936b644e79a107d8d16f50a2264c5a2', 'admin', '58.48.187.18', '湖北 武汉', 'Chrome', 'Windows 10', '0', '登录成功', null);
INSERT INTO `sys_login_log` VALUES ('ace66e089a9b1970f572f7f36f3fd1ba', 'admin', '59.173.30.34', '湖北 武汉', 'Firefox', 'Windows 10', '0', '登录成功', null);
INSERT INTO `sys_login_log` VALUES ('ad857c2311b0aac25079fd061bd80cfe', 'admin', '58.48.187.18', '湖北 武汉', 'Chrome', 'Windows 10', '1', '验证码错误', null);
INSERT INTO `sys_login_log` VALUES ('aea2ad5236ca3375a22035e83a1a39a2', 'admin', '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '0', '登录成功', null);
INSERT INTO `sys_login_log` VALUES ('b08ee3b5d690f0fc1279c2de2cf3c72d', 'admin', '119.98.217.184', '湖北 武汉', 'Firefox', 'Windows 10', '1', '验证码错误', null);
INSERT INTO `sys_login_log` VALUES ('b0b428b535471a216edce626b0c66c30', 'admin', '171.83.87.161', '湖北 武汉', 'Chrome', 'Windows 10', '1', '验证码错误', null);
INSERT INTO `sys_login_log` VALUES ('b23575570a83f992674c8bcb71575703', 'admin', '119.98.217.184', '湖北 武汉', 'Firefox', 'Windows 10', '0', '登录成功', null);
INSERT INTO `sys_login_log` VALUES ('b3ff77b4bd5b81970d384f98d6a77413', 'admina', '171.83.87.161', '湖北 武汉', 'Chrome', 'Windows 10', '1', '用户不存在/密码错误', null);
INSERT INTO `sys_login_log` VALUES ('b65d958d4d99cf71a76e635d00374bca', 'admin', '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '0', '登录成功', null);
INSERT INTO `sys_login_log` VALUES ('b661701dd651842ad552ad4c260ebb30', 'admin', '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '1', '验证码错误', null);
INSERT INTO `sys_login_log` VALUES ('b6d84d6666b7986248283746627790df', 'admin', '122.192.12.230', '江苏 南京', 'Chrome', 'Windows 10', '0', '登录成功', null);
INSERT INTO `sys_login_log` VALUES ('b73d708cd17edeccbd5b78205a9b83ee', 'admin', '58.48.187.18', '湖北 武汉', 'Chrome', 'Windows 10', '1', '验证码错误', null);
INSERT INTO `sys_login_log` VALUES ('ba4e51fee5da33eddfe3c983266c496d', 'admin', '58.48.187.18', '湖北 武汉', 'Chrome', 'Windows 10', '1', '验证码错误', null);
INSERT INTO `sys_login_log` VALUES ('bdd12639d14b07c9cdb7624b18f2a8c2', 'admin', '171.83.87.161', '湖北 武汉', 'Chrome', 'Windows 10', '0', '登录成功', null);
INSERT INTO `sys_login_log` VALUES ('bde8ec57b4701eaf2c7c5b8941a0710c', 'admin', '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '0', '登录成功', null);
INSERT INTO `sys_login_log` VALUES ('be3eaab319e3bcd413fca833ab761429', 'admin', '58.48.187.18', '湖北 武汉', 'Chrome', 'Windows 10', '1', '验证码错误', null);
INSERT INTO `sys_login_log` VALUES ('c0bbf70d32017865cd366e210c646695', 'admin', '58.48.187.18', 'XX XX', 'Chrome', 'Windows 10', '1', '验证码错误', null);
INSERT INTO `sys_login_log` VALUES ('c0fc0adb38734097130d8dccb4260b07', 'admin', '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '1', '验证码错误', null);
INSERT INTO `sys_login_log` VALUES ('c172e013db93b6bad9ac34bdec21fb65', 'admin', '119.98.217.184', '湖北 武汉', 'Firefox', 'Windows 10', '1', '该账户正在使用', null);
INSERT INTO `sys_login_log` VALUES ('c2542ef82adfc35b728192fc42f40c8b', 'admin', '119.98.217.184', '湖北 武汉', 'Firefox', 'Windows 10', '1', '该账户正在使用', null);
INSERT INTO `sys_login_log` VALUES ('c2d662ce2ac6be82ccdb4eedb4de103a', 'admin', '171.83.87.161', '湖北 武汉', 'Chrome', 'Windows 10', '1', '验证码错误', null);
INSERT INTO `sys_login_log` VALUES ('c2f77a0a59bd3f066a75dc146ee8c9ef', 'admin', '119.98.217.184', '湖北 武汉', 'Firefox', 'Windows 10', '1', '该账户正在使用', null);
INSERT INTO `sys_login_log` VALUES ('c3bec5ff071acb60dc0d2c1bcf7b1aa3', 'admin', '127.0.0.1', '内网IP', 'Chrome', 'Windows 10', '0', '登录成功', null);
INSERT INTO `sys_login_log` VALUES ('c3cc401cd37e180053b63be59ddf95fe', 'admin', '58.48.187.18', '湖北 武汉', 'Chrome', 'Windows 10', '1', '验证码错误', null);
INSERT INTO `sys_login_log` VALUES ('c50ca7e944df54d604e0f83f988656b4', 'admin', '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '0', '登录成功', null);
INSERT INTO `sys_login_log` VALUES ('c6507139e5a53bb06b9ac605805160ce', 'admin', '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '0', '登录成功', null);
INSERT INTO `sys_login_log` VALUES ('c8159d3c2d0db05c1ff49ba3447826bd', 'admin', '171.83.87.161', '湖北 武汉', 'Internet Explorer 11', 'Windows 10', '0', '登录成功', null);
INSERT INTO `sys_login_log` VALUES ('c82f2b87d984a35cecaf8b9a8e97464d', 'admin', '122.192.12.230', '江苏 南京', 'Chrome', 'Windows 10', '1', '该账户正在使用', null);
INSERT INTO `sys_login_log` VALUES ('c913cb9ad11f261071a835009ec91438', 'admin', '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '1', '验证码错误', null);
INSERT INTO `sys_login_log` VALUES ('cc6adda03b4f6235653d7e209dc1e899', 'admin', '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '0', '登录成功', null);
INSERT INTO `sys_login_log` VALUES ('cce24d88a09b67660aa425aba3c81917', 'admin', '122.192.12.230', '江苏 南京', 'Chrome', 'Windows 10', '0', '登录成功', null);
INSERT INTO `sys_login_log` VALUES ('d01667888f5ed8f2669555812720b37e', 'admin', '171.83.87.161', '湖北 武汉', 'Chrome', 'Windows 10', '1', '验证码错误', null);
INSERT INTO `sys_login_log` VALUES ('d0bebc46a40c062dac0df4b24484d91c', 'admin', '171.83.87.161', '湖北 武汉', 'Chrome', 'Windows 10', '1', '验证码错误', null);
INSERT INTO `sys_login_log` VALUES ('d31bd3be9cac1526119166fb1fc9b272', 'admin', '119.98.217.167', '湖北 武汉', 'Chrome', 'Windows 10', '0', '登录成功', null);
INSERT INTO `sys_login_log` VALUES ('d6a9c9e432038eee74cabbbb3c2a5e5d', 'admin', '122.192.12.230', '江苏 南京', 'Chrome', 'Windows 10', '1', '该账户正在使用', null);
INSERT INTO `sys_login_log` VALUES ('d6bd52198bac2aab55bc084a9b9588cc', 'admin', '171.83.87.161', '湖北 武汉', 'Chrome', 'Windows 10', '1', '验证码错误', null);
INSERT INTO `sys_login_log` VALUES ('d896d34022d8527f214ad2dd11fe8b0d', 'admin', '122.194.3.237', '江苏 南京', 'Chrome', 'Windows 10', '1', '该账户正在使用', null);
INSERT INTO `sys_login_log` VALUES ('d8975a85ee49e4b77d6a34cfe87cbeb7', 'admin', '171.83.87.161', '湖北 武汉', 'Chrome', 'Windows 10', '0', '登录成功', null);
INSERT INTO `sys_login_log` VALUES ('dbd09110707b78a99faa7c5f6395a329', 'admin', '58.48.187.18', '湖北 武汉', 'Chrome', 'Windows 10', '1', '验证码错误', null);
INSERT INTO `sys_login_log` VALUES ('dbdf245dbf461a9a0bcccd5f58d98287', 'admin', '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '0', '登录成功', null);
INSERT INTO `sys_login_log` VALUES ('de29321600526f6a11a8d5c700300a33', 'admin', '58.48.187.18', '湖北 武汉', 'Chrome', 'Windows 10', '1', '验证码错误', null);
INSERT INTO `sys_login_log` VALUES ('dea2fcfffc01318e826c56a769f5b872', 'admin', '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '0', '登录成功', null);
INSERT INTO `sys_login_log` VALUES ('e0bc2981cc8cc1ac633b14ffecda0507', 'admin', '58.48.187.18', '湖北 武汉', 'Chrome', 'Windows 10', '1', '验证码错误', null);
INSERT INTO `sys_login_log` VALUES ('e19d7fa6d6225ca65c4de0a36565ee79', 'admin', '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '0', '退出成功', null);
INSERT INTO `sys_login_log` VALUES ('e1d20253bee86b76914ff616c2a9abb3', 'admin', '58.48.187.18', '湖北 武汉', 'Chrome', 'Windows 10', '1', '验证码错误', null);
INSERT INTO `sys_login_log` VALUES ('e1f08748362c703ed584b484953cf138', 'admin', '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '0', '登录成功', null);
INSERT INTO `sys_login_log` VALUES ('e2a0d7e8664eb1bb4d3b8ee8638fd9bc', 'admin', '58.48.187.18', '湖北 武汉', 'Mobile Safari', 'Mac OS X (iPhone)', '0', '登录成功', null);
INSERT INTO `sys_login_log` VALUES ('e3b1fc3560ca29b7565628d5700208d4', 'admin', '58.48.187.18', '湖北 武汉', 'Chrome', 'Windows 10', '1', '验证码错误', null);
INSERT INTO `sys_login_log` VALUES ('e3b348d383e329582667a6fe1a33bfb2', 'admin', '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '0', '登录成功', null);
INSERT INTO `sys_login_log` VALUES ('e3e4f1f3d1f9734b133474a0783637d7', 'admin', '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '0', '登录成功', null);
INSERT INTO `sys_login_log` VALUES ('e3ff699e914a2fd55bd7f7767e878c76', 'admin', '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '1', '验证码错误', null);
INSERT INTO `sys_login_log` VALUES ('e4cd2515f8feb09938cfd98e9649c7b4', 'admin', '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '0', '登录成功', null);
INSERT INTO `sys_login_log` VALUES ('e5d8d9f7fe47dd2f35934f1ea5e320af', 'admin', '58.48.187.18', '湖北 武汉', 'Chrome', 'Windows 10', '1', '验证码错误', null);
INSERT INTO `sys_login_log` VALUES ('e875d74c8cc6cf09987ea02fbf1b7b91', 'admin', '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '0', '登录成功', null);
INSERT INTO `sys_login_log` VALUES ('e951fefabf5c1019f676db8813128753', 'admin', '58.48.187.18', '湖北 武汉', 'Chrome', 'Windows 10', '0', '登录成功', null);
INSERT INTO `sys_login_log` VALUES ('eaa3c66300e7047a0a78fa206433de95', 'admin', '171.83.87.161', '湖北 武汉', 'Chrome', 'Windows 10', '0', '登录成功', null);
INSERT INTO `sys_login_log` VALUES ('ebb0ebef3ccb85586c41387d91eef23d', 'admin', '58.48.187.18', 'XX XX', 'Chrome', 'Windows 10', '1', '验证码错误', null);
INSERT INTO `sys_login_log` VALUES ('ec851cc027deeab68e252e9900e08d11', 'admin', '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '0', '登录成功', null);
INSERT INTO `sys_login_log` VALUES ('ede6dd0f2afc6aab9d1faa2f9cac634e', 'admin', '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '0', '登录成功', null);
INSERT INTO `sys_login_log` VALUES ('ee0bbc416035f802a634275f10c42526', 'admin', '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '0', '登录成功', null);
INSERT INTO `sys_login_log` VALUES ('ee981d0982483f3b8dbeae1c127a9acf', 'admin', '171.83.87.161', '湖北 武汉', 'Chrome', 'Windows 10', '1', '验证码错误', null);
INSERT INTO `sys_login_log` VALUES ('ef0f78c93d5952a349d0664eacf48c4e', 'admin', '58.48.187.18', '湖北 武汉', 'Chrome', 'Windows 10', '0', '退出成功', null);
INSERT INTO `sys_login_log` VALUES ('f04770a7e5ad0cdb6c655524dc2976cc', 'admin', '58.48.187.18', '湖北 武汉', 'Chrome', 'Windows 10', '1', '验证码错误', null);
INSERT INTO `sys_login_log` VALUES ('f05781c50b057292a1d4ad6d77e39e71', 'admin', '122.192.12.230', '江苏 南京', 'Chrome', 'Windows 10', '1', '该账户正在使用', null);
INSERT INTO `sys_login_log` VALUES ('f0d1bf33656518cc0dba69acd18f9f6c', 'admin', '119.98.217.167', '湖北 武汉', 'Chrome', 'Windows 10', '1', '验证码错误', null);
INSERT INTO `sys_login_log` VALUES ('f2d584d7a10b89741f26e12f4830020e', 'admin', '122.192.12.230', '江苏 南京', 'Chrome', 'Windows 10', '1', '该账户正在使用', null);
INSERT INTO `sys_login_log` VALUES ('f32a3812481f89a23a0558eeb6e1cf41', 'admin', '171.83.82.227', '湖北 武汉', 'Firefox', 'Windows 10', '0', '登录成功', null);
INSERT INTO `sys_login_log` VALUES ('f381a0b6f2946e92eb915757fc0540ad', 'admina', '171.83.87.161', '湖北 武汉', 'Chrome', 'Windows 10', '1', '用户不存在/密码错误', null);
INSERT INTO `sys_login_log` VALUES ('f419d5100c46375511106cbbc8aa7f2c', 'admin', '171.83.87.161', '湖北 武汉', 'Chrome', 'Windows 10', '1', '验证码错误', null);
INSERT INTO `sys_login_log` VALUES ('f441d48e3cb6922f2ff9aa0f3d9795cf', 'admin', '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '0', '登录成功', null);
INSERT INTO `sys_login_log` VALUES ('f4e923fae8fc525e20089130a1ddbc05', 'admina', '171.83.87.161', '湖北 武汉', 'Chrome', 'Windows 10', '1', '验证码错误', null);
INSERT INTO `sys_login_log` VALUES ('f4ee2c6c34e0d162a294d9750aed2ad5', 'admin', '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '0', '登录成功', null);
INSERT INTO `sys_login_log` VALUES ('f52d3cf7aaf1230ac33b2fb189239dcf', 'admin', '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '0', '登录成功', null);
INSERT INTO `sys_login_log` VALUES ('f7b6f82b1f15642b9e075bda5ec9558d', 'admin', '58.48.187.18', '湖北 武汉', 'Chrome', 'Windows 10', '1', '验证码错误', null);
INSERT INTO `sys_login_log` VALUES ('f7bbe811bb93d00e4ac3d2a667d5b698', 'admin', '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '0', '登录成功', null);
INSERT INTO `sys_login_log` VALUES ('f7c9ed75546dcde56889306511d28597', 'admin', '171.83.87.161', '湖北 武汉', 'Chrome', 'Windows 10', '0', '登录成功', null);
INSERT INTO `sys_login_log` VALUES ('f85f9b319ca10f0b9cdc7364354179df', 'admin', '58.48.187.18', '湖北 武汉', 'Chrome', 'Windows 10', '1', '验证码错误', null);
INSERT INTO `sys_login_log` VALUES ('f9c6b4cc128ecd922e04cac2f7c06a29', 'admin', '119.98.217.184', '湖北 武汉', 'Firefox', 'Windows 10', '1', '该账户正在使用', null);
INSERT INTO `sys_login_log` VALUES ('fa05ba1080940c6813ed5f898b4a2e92', 'admin', '58.48.187.18', '湖北 武汉', 'Chrome', 'Windows 10', '1', '验证码错误', null);
INSERT INTO `sys_login_log` VALUES ('fa858817840f5e5458a6676388b82473', 'admin', '171.83.87.161', 'XX XX', 'Chrome', 'Windows 10', '1', '验证码错误', null);
INSERT INTO `sys_login_log` VALUES ('fbe200450550c52822ee5dca23943afd', 'admin', '171.83.87.161', '湖北 武汉', 'Chrome', 'Windows 10', '1', '验证码错误', null);
INSERT INTO `sys_login_log` VALUES ('fc0f82f3f5951c3ced5ae5cab03b9499', 'admin', '59.173.30.34', '湖北 武汉', 'Firefox', 'Mac OS X', '0', '登录成功', null);
INSERT INTO `sys_login_log` VALUES ('fc3166118e6850dec27292d53047b72b', 'admin', '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', '0', '登录成功', null);
INSERT INTO `sys_login_log` VALUES ('fc34c372e1c97e6be66432c261fe2a0f', 'admin', '119.98.217.184', '湖北 武汉', 'Firefox', 'Windows 10', '1', '该账户正在使用', null);
INSERT INTO `sys_login_log` VALUES ('fec6218f11ead7458657db2a0b3b670a', 'admina', '171.83.87.161', '湖北 武汉', 'Chrome', 'Windows 10', '1', '验证码错误', null);
INSERT INTO `sys_login_log` VALUES ('ffec2c6acf428d7adf98ef94cdda644a', 'admin', '58.48.187.18', '湖北 武汉', 'Chrome', 'Windows 10', '1', '验证码错误', null);
INSERT INTO `sys_login_log` VALUES ('fff9372d14e761a579f47d5f20e532b6', 'admin', '122.192.12.230', '江苏 南京', 'Chrome', 'Windows 10', '1', '该账户正在使用', null);

-- ----------------------------
-- Table structure for sys_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_menu`;
CREATE TABLE `sys_menu` (
  `MENU_ID` varchar(32) NOT NULL COMMENT '菜单ID',
  `MENU_NAME` varchar(50) NOT NULL COMMENT '菜单名称',
  `PARENT_ID` varchar(32) DEFAULT '0' COMMENT '父菜单ID',
  `ORDER_NUM` int(4) DEFAULT '0' COMMENT '显示顺序',
  `MENU_URL` varchar(200) DEFAULT '#' COMMENT '请求地址',
  `MENU_TYPE` char(1) DEFAULT '' COMMENT '菜单类型（M目录 C菜单 F按钮）',
  `MENU_VISIBLE` char(1) DEFAULT '0' COMMENT '菜单状态（0显示 1隐藏）',
  `MENU_PERMS` varchar(100) DEFAULT '' COMMENT '权限标识',
  `MENU_ICON` varchar(100) DEFAULT '#' COMMENT '菜单图标',
  `DEL_FLAG` int(1) DEFAULT '1' COMMENT '逻辑删除标识(1正常 0删除)',
  `REMARK` varchar(500) DEFAULT NULL COMMENT '备注说明',
  `VERSION` int(11) DEFAULT '0' COMMENT '版本号',
  `CREATE_USER` varchar(32) DEFAULT NULL COMMENT '创建人',
  `CREATE_TIME` datetime DEFAULT NULL COMMENT '创建时间',
  `UPDATE_USER` varchar(32) DEFAULT NULL COMMENT '修改人',
  `UPDATE_TIME` datetime DEFAULT NULL COMMENT '修改时间',
  PRIMARY KEY (`MENU_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='菜单权限表';

-- ----------------------------
-- Records of sys_menu
-- ----------------------------
INSERT INTO `sys_menu` VALUES ('1', '系统管理', '0', '6', '#', 'M', '0', '', 'fa fa-gear', '1', '系统管理目录', '0', null, null, null, null);
INSERT INTO `sys_menu` VALUES ('100', '用户管理', '1', '1', '/system/user', 'C', '0', 'system:user:view', '#', '1', '用户管理菜单', '0', null, null, null, null);
INSERT INTO `sys_menu` VALUES ('1000', '用户查询', '100', '1', '#', 'F', '0', 'system:user:list', '#', '1', '', '0', null, null, null, null);
INSERT INTO `sys_menu` VALUES ('1001', '用户新增', '100', '2', '#', 'F', '0', 'system:user:add', '#', '1', '', '0', null, null, null, null);
INSERT INTO `sys_menu` VALUES ('1002', '用户修改', '100', '3', '#', 'F', '0', 'system:user:edit', '#', '1', '', '0', null, null, null, null);
INSERT INTO `sys_menu` VALUES ('1003', '用户删除', '100', '4', '#', 'F', '0', 'system:user:remove', '#', '1', '', '0', null, null, null, null);
INSERT INTO `sys_menu` VALUES ('1004', '用户导出', '100', '5', '#', 'F', '0', 'system:user:export', '#', '1', '', '0', null, null, null, null);
INSERT INTO `sys_menu` VALUES ('1005', '重置密码', '100', '6', '#', 'F', '0', 'system:user:resetPwd', '#', '1', '', '0', null, null, null, null);
INSERT INTO `sys_menu` VALUES ('1006', '角色查询', '101', '1', '#', 'F', '0', 'system:role:list', '#', '1', '', '0', null, null, null, null);
INSERT INTO `sys_menu` VALUES ('1007', '角色新增', '101', '2', '#', 'F', '0', 'system:role:add', '#', '1', '', '0', null, null, null, null);
INSERT INTO `sys_menu` VALUES ('1008', '角色修改', '101', '3', '#', 'F', '0', 'system:role:edit', '#', '1', '', '0', null, null, null, null);
INSERT INTO `sys_menu` VALUES ('1009', '角色删除', '101', '4', '#', 'F', '0', 'system:role:remove', '#', '1', '', '0', null, null, null, null);
INSERT INTO `sys_menu` VALUES ('101', '角色管理', '1', '2', '/system/role', 'C', '0', 'system:role:view', '#', '1', '角色管理菜单', '0', null, null, null, null);
INSERT INTO `sys_menu` VALUES ('1010', '角色导出', '101', '5', '#', 'F', '0', 'system:role:export', '#', '1', '', '0', null, null, null, null);
INSERT INTO `sys_menu` VALUES ('1011', '菜单查询', '102', '1', '#', 'F', '0', 'system:menu:list', '#', '1', '', '0', null, null, null, null);
INSERT INTO `sys_menu` VALUES ('1012', '菜单新增', '102', '2', '#', 'F', '0', 'system:menu:add', '#', '1', '', '0', null, null, null, null);
INSERT INTO `sys_menu` VALUES ('1013', '菜单修改', '102', '3', '#', 'F', '0', 'system:menu:edit', '#', '1', '', '0', null, null, null, null);
INSERT INTO `sys_menu` VALUES ('1014', '菜单删除', '102', '4', '#', 'F', '0', 'system:menu:remove', '#', '1', '', '0', null, null, null, null);
INSERT INTO `sys_menu` VALUES ('102', '菜单管理', '1', '3', '/system/menu', 'C', '0', 'system:menu:view', '#', '1', '菜单管理菜单', '0', null, null, null, null);
INSERT INTO `sys_menu` VALUES ('1024', '字典查询', '105', '1', '#', 'F', '0', 'system:dict:list', '#', '1', '', '0', null, null, null, null);
INSERT INTO `sys_menu` VALUES ('1025', '字典新增', '105', '2', '#', 'F', '0', 'system:dict:add', '#', '1', '', '0', null, null, null, null);
INSERT INTO `sys_menu` VALUES ('1026', '字典修改', '105', '3', '#', 'F', '0', 'system:dict:edit', '#', '1', '', '0', null, null, null, null);
INSERT INTO `sys_menu` VALUES ('1027', '字典删除', '105', '4', '#', 'F', '0', 'system:dict:remove', '#', '1', '', '0', null, null, null, null);
INSERT INTO `sys_menu` VALUES ('1028', '字典导出', '105', '5', '#', 'F', '0', 'system:dict:export', '#', '1', '', '0', null, null, null, null);
INSERT INTO `sys_menu` VALUES ('1029', '参数查询', '106', '1', '#', 'F', '0', 'system:config:list', '#', '1', '', '0', null, null, null, null);
INSERT INTO `sys_menu` VALUES ('1030', '参数新增', '106', '2', '#', 'F', '0', 'system:config:add', '#', '1', '', '0', null, null, null, null);
INSERT INTO `sys_menu` VALUES ('1031', '参数修改', '106', '3', '#', 'F', '0', 'system:config:edit', '#', '1', '', '0', null, null, null, null);
INSERT INTO `sys_menu` VALUES ('1032', '参数删除', '106', '4', '#', 'F', '0', 'system:config:remove', '#', '1', '', '0', null, null, null, null);
INSERT INTO `sys_menu` VALUES ('1033', '参数导出', '106', '5', '#', 'F', '0', 'system:config:export', '#', '1', '', '0', null, null, null, null);
INSERT INTO `sys_menu` VALUES ('1038', '操作查询', '500', '1', '#', 'F', '0', 'monitor:operlog:list', '#', '1', '', '0', null, null, null, null);
INSERT INTO `sys_menu` VALUES ('1039', '操作删除', '500', '2', '#', 'F', '0', 'monitor:operlog:remove', '#', '1', '', '0', null, null, null, null);
INSERT INTO `sys_menu` VALUES ('1040', '详细信息', '500', '3', '#', 'F', '0', 'monitor:operlog:detail', '#', '1', '', '0', null, null, null, null);
INSERT INTO `sys_menu` VALUES ('1041', '日志导出', '500', '4', '#', 'F', '0', 'monitor:operlog:export', '#', '1', '', '0', null, null, null, null);
INSERT INTO `sys_menu` VALUES ('1042', '登录查询', '501', '1', '#', 'F', '0', 'monitor:logininfor:list', '#', '1', '', '0', null, null, null, null);
INSERT INTO `sys_menu` VALUES ('1043', '登录删除', '501', '2', '#', 'F', '0', 'monitor:logininfor:remove', '#', '1', '', '0', null, null, null, null);
INSERT INTO `sys_menu` VALUES ('1044', '日志导出', '501', '3', '#', 'F', '0', 'monitor:logininfor:export', '#', '1', '', '0', null, null, null, null);
INSERT INTO `sys_menu` VALUES ('1045', '在线查询', '109', '1', '#', 'F', '0', 'monitor:online:list', '#', '1', '', '0', null, null, null, null);
INSERT INTO `sys_menu` VALUES ('1046', '批量强退', '109', '2', '#', 'F', '0', 'monitor:online:batchForceLogout', '#', '1', '', '0', null, null, null, null);
INSERT INTO `sys_menu` VALUES ('1047', '单条强退', '109', '3', '#', 'F', '0', 'monitor:online:forceLogout', '#', '1', '', '0', null, null, null, null);
INSERT INTO `sys_menu` VALUES ('1048', '任务查询', '110', '1', '#', 'F', '0', 'monitor:job:list', '#', '1', '', '0', null, null, null, null);
INSERT INTO `sys_menu` VALUES ('1049', '任务新增', '110', '2', '#', 'F', '0', 'monitor:job:add', '#', '1', '', '0', null, null, null, null);
INSERT INTO `sys_menu` VALUES ('105', '字典管理', '1', '6', '/system/dict', 'C', '0', 'system:dict:view', '#', '1', '字典管理菜单', '0', null, null, null, null);
INSERT INTO `sys_menu` VALUES ('1050', '任务修改', '110', '3', '#', 'F', '0', 'monitor:job:edit', '#', '1', '', '0', null, null, null, null);
INSERT INTO `sys_menu` VALUES ('1051', '任务删除', '110', '4', '#', 'F', '0', 'monitor:job:remove', '#', '1', '', '0', null, null, null, null);
INSERT INTO `sys_menu` VALUES ('1052', '状态修改', '110', '5', '#', 'F', '0', 'monitor:job:changeStatus', '#', '1', '', '0', null, null, null, null);
INSERT INTO `sys_menu` VALUES ('1053', '任务详细', '110', '6', '#', 'F', '0', 'monitor:job:detail', '#', '1', '', '0', null, null, null, null);
INSERT INTO `sys_menu` VALUES ('1054', '任务导出', '110', '7', '#', 'F', '0', 'monitor:job:export', '#', '1', '', '0', null, null, null, null);
INSERT INTO `sys_menu` VALUES ('106', '参数设置', '1', '7', '/system/config', 'C', '0', 'system:config:view', '#', '1', '参数设置菜单', '0', null, null, null, null);
INSERT INTO `sys_menu` VALUES ('108', '日志管理', '1', '9', '#', 'M', '0', '', '#', '1', '日志管理菜单', '0', null, null, null, null);
INSERT INTO `sys_menu` VALUES ('109', '在线用户', '2', '1', '/monitor/online', 'C', '0', 'monitor:online:view', '#', '1', '在线用户菜单', '0', null, null, null, null);
INSERT INTO `sys_menu` VALUES ('110', '定时任务', '2', '2', '/monitor/job', 'C', '0', 'monitor:job:view', '#', '1', '定时任务菜单', '0', null, null, null, null);
INSERT INTO `sys_menu` VALUES ('500', '操作日志', '108', '1', '/monitor/operlog', 'C', '0', 'monitor:operlog:view', '#', '1', '操作日志菜单', '0', null, null, null, null);
INSERT INTO `sys_menu` VALUES ('501', '登录日志', '108', '2', '/monitor/logininfor', 'C', '0', 'monitor:logininfor:view', '#', '1', '登录日志菜单', '0', null, null, null, null);
INSERT INTO `sys_menu` VALUES ('6', '平台管理', '0', '5', '#', 'M', '0', '', 'fa fa-sitemap', '1', '平台目录', '0', null, null, null, null);

-- ----------------------------
-- Table structure for sys_oper_log
-- ----------------------------
DROP TABLE IF EXISTS `sys_oper_log`;
CREATE TABLE `sys_oper_log` (
  `OPER_ID` varchar(32) NOT NULL COMMENT '日志主键',
  `OPER_TITLE` varchar(50) DEFAULT '' COMMENT '模块标题',
  `BUSINESS_TYPE` int(2) DEFAULT '0' COMMENT '业务类型（0其它 1新增 2修改 3删除）',
  `OPER_METHOD` varchar(100) DEFAULT '' COMMENT '方法名称',
  `OPER_TYPE` int(1) DEFAULT '0' COMMENT '操作类别（0其它 1后台用户 2手机端用户）',
  `OPER_NAME` varchar(50) DEFAULT '' COMMENT '操作人员',
  `OPER_URL` varchar(255) DEFAULT '' COMMENT '请求URL',
  `OPER_IP` varchar(50) DEFAULT '' COMMENT '主机地址',
  `OPER_LOCATION` varchar(255) DEFAULT '' COMMENT '操作地点',
  `OPER_PARAM` varchar(255) DEFAULT '' COMMENT '请求参数',
  `OPER_STATUS` int(1) DEFAULT '0' COMMENT '操作状态（0正常 1异常）',
  `ERROR_MSG` varchar(2000) DEFAULT '' COMMENT '错误消息',
  `OPER_TIME` datetime DEFAULT NULL COMMENT '操作时间',
  PRIMARY KEY (`OPER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='操作日志记录';

-- ----------------------------
-- Records of sys_oper_log
-- ----------------------------
INSERT INTO `sys_oper_log` VALUES ('009c6668b4e2a149c8d0a17597d47a76', '用户账号', '2', 'com.basics.cu.controller.AccountController.editSave()', '1', 'admin', '/cu/account/edit', '122.192.12.230', '江苏 南京', '{\"customerId\":[\"b3b3f5b6348d6a4e9c69df21543d3eae\"],\"useCoin\":[\"1000\"],\"useMoney\":[\"0E-8\"]}', '0', '', null);
INSERT INTO `sys_oper_log` VALUES ('01eb9dc1c545f192501e6df8bad655e8', '批量注册', '1', 'com.basics.cu.controller.CustomerController.bitchRegiestSave()', '1', 'admin', '/cu/customer/bitchRegiest', '119.98.217.167', 'XX XX', '{\"parentNumber\":[\"hello\"],\"preNumber\":[\"a\"],\"phone\":[\"123456\"],\"password\":[\"1\"],\"num\":[\"2\"],\"type\":[\"1\"]}', '0', '', null);
INSERT INTO `sys_oper_log` VALUES ('021610dded903fef181c01799aff0321', '代码生成', '8', 'com.basics.system.controller.tool.GenController.batchGenCode()', '1', 'admin', '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{\"tables\":[\"app_activemq_request,app_activemq_response,app_banner,app_code,app_coin,app_dapps,app_invest,app_level,app_money_rate,app_sale_reward,app_team_reward,app_token,cu_account,cu_coin,cu_count,cu_customer,cu_profit,cu_team_count\"]}', '1', 'duplicate entry: coinMenu.sql', null);
INSERT INTO `sys_oper_log` VALUES ('023a3035bd5071f184fa3a41fb1feb89', '静态释放', '1', 'com.basics.cu.controller.CustomerController.staticReleaseReward()', '1', 'admin', '/cu/customer/staticReleaseReward', '171.83.87.161', '湖北 武汉', '{}', '0', '', null);
INSERT INTO `sys_oper_log` VALUES ('034a565635a0840d07f851deb27907c7', '用户账号', '2', 'com.basics.cu.controller.AccountController.editSave()', '1', 'admin', '/cu/account/edit', '122.194.3.237', '江苏 南京', '{\"customerId\":[\"700a0fe697f1800cfcca9b384b8793e7\"],\"useCoin\":[\"1000\"],\"useMoney\":[\"0E-8\"]}', '0', '', null);
INSERT INTO `sys_oper_log` VALUES ('03cebaff2a7f8273ea27a35902a9736e', '系统初始化', '1', 'com.basics.cu.controller.CustomerController.initStstem()', '1', 'admin', '/cu/customer/initStstem', '58.48.187.18', '湖北 武汉', '{\"preNumber\":[\"hello\"],\"phone\":[\"123456\"],\"password\":[\"1\"]}', '0', '', null);
INSERT INTO `sys_oper_log` VALUES ('046ac802397edc068b9aa021abda0bc3', '直推收益配置', '2', 'com.basics.app.controller.SaleRewardController.editSave()', '1', 'admin', '/app/saleReward/edit', '127.0.0.1', '内网IP', '{\"saleTeamId\":[\"asgdfgjhfghjsfdghd\"],\"firstRate\":[\"0.1000\"],\"secondRate\":[\"0.05000\"],\"thirdRate\":[\"0.02000\"]}', '0', '', null);
INSERT INTO `sys_oper_log` VALUES ('047dbff4b6df29aae0516d359b623c41', '静态释放', '1', 'com.basics.cu.controller.CustomerController.staticReleaseReward()', '1', 'admin', '/cu/customer/staticReleaseReward', '122.192.12.230', '江苏 南京', '{}', '0', '', null);
INSERT INTO `sys_oper_log` VALUES ('0548785bff8b8d2587db0ae00169ced9', '静态释放', '1', 'com.basics.cu.controller.CustomerController.staticReleaseReward()', '1', 'admin', '/cu/customer/staticReleaseReward', '119.98.217.167', 'XX XX', '{}', '0', '', null);
INSERT INTO `sys_oper_log` VALUES ('0581c17bdc2b14605a5e07f2fffad0b2', '用户账号', '2', 'com.basics.cu.controller.AccountController.editSave()', '1', 'admin', '/cu/account/edit', '122.194.3.237', '江苏 南京', '{\"customerId\":[\"95c4e843a11029737227a63a4b92444d\"],\"useCoin\":[\"1000\"],\"useMoney\":[\"0E-8\"]}', '0', '', null);
INSERT INTO `sys_oper_log` VALUES ('05823ea3ba24c43c9fac2476d21f6862', '系统初始化', '1', 'com.basics.cu.controller.CustomerController.initStstem()', '1', 'admin', '/cu/customer/initStstem', '119.98.217.167', '湖北 武汉', '{\"preNumber\":[\"hello\"],\"phone\":[\"13812341234\"],\"password\":[\"1\"]}', '0', '', null);
INSERT INTO `sys_oper_log` VALUES ('05c8669299ca2c412807ef4198488f62', '批量注册', '1', 'com.basics.cu.controller.CustomerController.bitchRegiestSave()', '1', 'admin', '/cu/customer/bitchRegiest', '58.48.187.18', '湖北 武汉', '{\"parentNumber\":[\"a1\"],\"preNumber\":[\"3\"],\"phone\":[\"1\"],\"password\":[\"1\"],\"num\":[\"3\"],\"type\":[\"2\"]}', '0', '', null);
INSERT INTO `sys_oper_log` VALUES ('05fd8bb6fe88abf62641486c71f3d978', '用户账号', '2', 'com.basics.cu.controller.AccountController.editSave()', '1', 'admin', '/cu/account/edit', '122.192.12.230', '江苏 南京', '{\"customerId\":[\"a80bbba1d8607631a1f7f48eb219791d\"],\"useCoin\":[\"100\"],\"useMoney\":[\"0E-8\"]}', '0', '', null);
INSERT INTO `sys_oper_log` VALUES ('062cbe3542e79192c91a1e549e77c3ca', '用户账号', '2', 'com.basics.cu.controller.AccountController.editSave()', '1', 'admin', '/cu/account/edit', '122.194.3.237', '江苏 南京', '{\"customerId\":[\"d0dd1cd59fc6346602345d26abb43036\"],\"useCoin\":[\"1000\"],\"useMoney\":[\"0E-8\"]}', '0', '', null);
INSERT INTO `sys_oper_log` VALUES ('06d556f7df7d30964e45fd001cc873e7', '批量注册', '1', 'com.basics.cu.controller.CustomerController.bitchRegiestSave()', '1', 'admin', '/cu/customer/bitchRegiest', '58.48.187.18', '湖北 武汉', '{\"parentNumber\":[\"hello\"],\"preNumber\":[\"a\"],\"phone\":[\"123456\"],\"password\":[\"1\"],\"num\":[\"1\"],\"type\":[\"1\"]}', '0', '', null);
INSERT INTO `sys_oper_log` VALUES ('07a710e75d549cc130afae4842044114', '批量注册', '1', 'com.basics.cu.controller.CustomerController.bitchRegiestSave()', '1', 'admin', '/cu/customer/bitchRegiest', '119.98.217.167', '湖北 武汉', '{\"parentNumber\":[\"a1\"],\"preNumber\":[\"1\"],\"phone\":[\"123456\"],\"password\":[\"1\"],\"num\":[\"3\"],\"type\":[\"2\"]}', '0', '', null);
INSERT INTO `sys_oper_log` VALUES ('07d6be3cac831b33c1f22af933abccfb', '节点收益配置', '2', 'com.basics.app.controller.TeamRewardController.editSave()', '1', 'admin', '/app/teamReward/edit', '171.83.87.161', '湖北 武汉', '{\"teamId\":[\"4\"],\"selfNum\":[\"4\"],\"rewardRate\":[\"0.03\"],\"generationNum\":[\"4\"]}', '0', '', null);
INSERT INTO `sys_oper_log` VALUES ('086dfb83ab23de10908d876ad4b038de', '批量注册', '1', 'com.basics.cu.controller.CustomerController.bitchRegiestSave()', '1', 'admin', '/cu/customer/bitchRegiest', '58.48.187.18', '湖北 武汉', '{\"parentNumber\":[\"hello\"],\"preNumber\":[\"a\"],\"phone\":[\"123456\"],\"password\":[\"1\"],\"num\":[\"1\"],\"type\":[\"1\"]}', '0', '', null);
INSERT INTO `sys_oper_log` VALUES ('087c8247d7c289a5b06d04ea730dca99', '用户账号', '2', 'com.basics.cu.controller.AccountController.editSave()', '1', 'admin', '/cu/account/edit', '122.192.12.230', '江苏 南京', '{\"customerId\":[\"9198a92cda1f36a5ffdc3c16e6b7f5ec\"],\"useCoin\":[\"1000\"],\"useMoney\":[\"0E-8\"]}', '0', '', null);
INSERT INTO `sys_oper_log` VALUES ('0af210b4f89b842f055232a97ca472ef', '用户账号', '2', 'com.basics.cu.controller.AccountController.editSave()', '1', 'admin', '/cu/account/edit', '58.48.187.18', '湖北 武汉', '{\"customerId\":[\"470e30873cc02d09be2103efd2622e73\"],\"useCoin\":[\"1000\"],\"useMoney\":[\"0E-8\"]}', '0', '', null);
INSERT INTO `sys_oper_log` VALUES ('0b1e1d15133272ad1cdf8dfeacc2753e', '批量注册', '1', 'com.basics.cu.controller.CustomerController.bitchRegiestSave()', '1', 'admin', '/cu/customer/bitchRegiest', '122.194.3.237', '江苏 南京', '{\"parentNumber\":[\"hello\"],\"preNumber\":[\"a\"],\"phone\":[\"123456\"],\"password\":[\"1\"],\"num\":[\"3\"],\"type\":[\"1\"]}', '0', '', null);
INSERT INTO `sys_oper_log` VALUES ('0b8193e31a98a1f4cddcbcb21ffd0bdd', '用户账号', '2', 'com.basics.cu.controller.AccountController.editSave()', '1', 'admin', '/cu/account/edit', '119.98.217.167', '湖北 武汉', '{\"customerId\":[\"53e75160e48c6a34cbd6566a8ab4366c\"],\"useCoin\":[\"1000\"],\"useMoney\":[\"0E-8\"]}', '0', '', null);
INSERT INTO `sys_oper_log` VALUES ('0c3798c0316640d9f343beb6810e5b36', '用户账号', '2', 'com.basics.cu.controller.AccountController.editSave()', '1', 'admin', '/cu/account/edit', '119.98.217.167', '湖北 武汉', '{\"customerId\":[\"7dfd5ac9fa90a916ce9170495770a63e\"],\"useCoin\":[\"1000\"],\"useMoney\":[\"0E-8\"]}', '0', '', null);
INSERT INTO `sys_oper_log` VALUES ('0c49efd5739f13657b042b72e624d2bc', '批量注册', '1', 'com.basics.cu.controller.CustomerController.bitchRegiestSave()', '1', 'admin', '/cu/customer/bitchRegiest', '58.48.187.18', '湖北 武汉', '{\"parentNumber\":[\"hello\"],\"preNumber\":[\"a\"],\"phone\":[\"123456\"],\"password\":[\"1\"],\"num\":[\"2\"],\"type\":[\"1\"]}', '0', '', null);
INSERT INTO `sys_oper_log` VALUES ('0cce670697134f7b50a23315c422c492', '投资收益配置', '2', 'com.basics.app.controller.InvestController.editSave()', '1', 'admin', '/app/invest/edit', '58.48.187.18', '湖北 武汉', '{\"investId\":[\"d1a2cb6349a72ccbaf120e02dfb86adc\"],\"dappsId\":[\"ebabe549f896d078ced3cf6514112d34\"],\"minAmount\":[\"100.00000000\"],\"maxAmount\":[\"100000.00000000\"],\"investRate\":[\"0.70000000\"],\"investCycle\":[\"12\"]}', '0', '', null);
INSERT INTO `sys_oper_log` VALUES ('0d2299cadef6a912dfdff8529fe2ef8f', '平台横幅', '1', 'com.basics.app.controller.BannerController.addSave()', '1', 'admin', '/app/banner/add', '127.0.0.1', '内网IP', '{\"bannerTitle\":[\"测试的风格\"],\"bannerType\":[\"1\"],\"bannerImage\":[\"http://pic.51yuansu.com/pic3/cover/00/63/25/589bdedf5475d_610.jpg\"],\"bannerUrl\":[\"http://pic.51yuansu.com/pic3/cover/00/63/25/589bdedf5475d_610.jpg\"],\"bannerSort\":[\"1\"]}', '0', '', null);
INSERT INTO `sys_oper_log` VALUES ('0d3f2b9c60855a50b70cd10bc92a53ab', '批量注册', '1', 'com.basics.cu.controller.CustomerController.bitchRegiestSave()', '1', 'admin', '/cu/customer/bitchRegiest', '58.48.187.18', '湖北 武汉', '{\"parentNumber\":[\"12\"],\"preNumber\":[\"12\"],\"phone\":[\"123456\"],\"password\":[\"1\"],\"num\":[\"3\"],\"type\":[\"1\"]}', '0', '', null);
INSERT INTO `sys_oper_log` VALUES ('0d5a67705e83423fda7bcbe5742458ad', '用户账号', '2', 'com.basics.cu.controller.AccountController.editSave()', '1', 'admin', '/cu/account/edit', '58.48.187.18', '湖北 武汉', '{\"customerId\":[\"df65669e1f15688d1b2aff7d09571b84\"],\"useCoin\":[\"10000\"],\"useMoney\":[\"0E-8\"]}', '0', '', null);
INSERT INTO `sys_oper_log` VALUES ('0da5f2c30cac40731b3601093b676ec6', '用户账号', '2', 'com.basics.cu.controller.AccountController.editSave()', '1', 'admin', '/cu/account/edit', '122.194.3.237', '江苏 南京', '{\"customerId\":[\"52d356c53422839629dfab5586465159\"],\"useCoin\":[\"0\"],\"useMoney\":[\"0E-8\"]}', '0', '', null);
INSERT INTO `sys_oper_log` VALUES ('0dc32a684ab334a1ea57eb6ba7bb0a0d', '批量注册', '1', 'com.basics.cu.controller.CustomerController.bitchRegiestSave()', '1', 'admin', '/cu/customer/bitchRegiest', '58.48.187.18', 'XX XX', '{\"parentNumber\":[\"hello\"],\"preNumber\":[\"a\"],\"phone\":[\"1\"],\"password\":[\"1\"],\"num\":[\"3\"],\"type\":[\"1\"]}', '0', '', null);
INSERT INTO `sys_oper_log` VALUES ('0dc32b98512b4abc735cf7838d214c61', '用户账号', '2', 'com.basics.cu.controller.AccountController.editSave()', '1', 'admin', '/cu/account/edit', '58.48.187.18', '湖北 武汉', '{\"customerId\":[\"50c191d8e02d6b81f94d7e61adac02bb\"],\"useCoin\":[\"1000\"],\"useMoney\":[\"0E-8\"]}', '0', '', null);
INSERT INTO `sys_oper_log` VALUES ('0e7f2695ba770cd17b92b2cfe2dec0f1', '投资收益配置', '3', 'com.basics.app.controller.InvestController.remove()', '1', 'admin', '/app/invest/remove', '171.83.87.161', '湖北 武汉', '{\"ids\":[\"111\"]}', '0', '', null);
INSERT INTO `sys_oper_log` VALUES ('0f0408916e79f6b58bd1a55246cb66c2', '用户账号', '2', 'com.basics.cu.controller.AccountController.editSave()', '1', 'admin', '/cu/account/edit', '119.98.217.167', '湖北 武汉', '{\"customerId\":[\"372b15a2451d421027c57e98115c843f\"],\"useCoin\":[\"1000\"],\"useMoney\":[\"0E-8\"]}', '0', '', null);
INSERT INTO `sys_oper_log` VALUES ('0f8ae90374eb8cdccc67b6459d1ae497', '批量注册', '1', 'com.basics.cu.controller.CustomerController.bitchRegiestSave()', '1', 'admin', '/cu/customer/bitchRegiest', '119.98.217.167', '湖北 武汉', '{\"parentNumber\":[\"12\"],\"preNumber\":[\"12\"],\"phone\":[\"123456\"],\"password\":[\"1\"],\"num\":[\"1\"],\"type\":[\"1\"]}', '0', '', null);
INSERT INTO `sys_oper_log` VALUES ('1045a464d367271b46b05a7048e02ece', '用户账号', '2', 'com.basics.cu.controller.AccountController.editSave()', '1', 'admin', '/cu/account/edit', '119.98.217.167', '湖北 武汉', '{\"customerId\":[\"edee9fb934b073c9b5d2637cefdc9505\"],\"useCoin\":[\"300\"],\"useMoney\":[\"0E-8\"]}', '0', '', null);
INSERT INTO `sys_oper_log` VALUES ('10654279ad1e4e7dc4470a2f88013cbe', '批量注册', '1', 'com.basics.cu.controller.CustomerController.bitchRegiestSave()', '1', 'admin', '/cu/customer/bitchRegiest', '171.83.87.161', '湖北 武汉', '{\"parentNumber\":[\"hello\"],\"preNumber\":[\"aaa_\"],\"phone\":[\"123456\"],\"password\":[\"123456\"],\"num\":[\"10\"],\"type\":[\"1\"]}', '0', '', null);
INSERT INTO `sys_oper_log` VALUES ('10ae096e322bd37a5e16fca736586760', '用户账号', '2', 'com.basics.cu.controller.AccountController.editSave()', '1', 'admin', '/cu/account/edit', '122.194.3.237', 'XX XX', '{\"customerId\":[\"ee890589388c1c75cb9cfb8bcb1b4088\"],\"useCoin\":[\"1000\"],\"useMoney\":[\"0E-8\"]}', '0', '', null);
INSERT INTO `sys_oper_log` VALUES ('113ba50e788ad393451d80c7561b265c', '批量注册', '1', 'com.basics.cu.controller.CustomerController.bitchRegiestSave()', '1', 'admin', '/cu/customer/bitchRegiest', '122.192.12.230', '江苏 南京', '{\"parentNumber\":[\"10\"],\"preNumber\":[\"10\"],\"phone\":[\"123456\"],\"password\":[\"1\"],\"num\":[\"3\"],\"type\":[\"1\"]}', '0', '', null);
INSERT INTO `sys_oper_log` VALUES ('125a831771b5155a52bbe84c0b5c9b81', '静态释放', '1', 'com.basics.cu.controller.CustomerController.staticReleaseReward()', '1', 'admin', '/cu/customer/staticReleaseReward', '58.48.187.18', 'XX XX', '{}', '0', '', null);
INSERT INTO `sys_oper_log` VALUES ('129fe6bc2f1652546ed7ea81a83d2ef7', '会员等级', '2', 'com.basics.app.controller.LevelController.editSave()', '1', 'admin', '/app/Level/edit', '58.48.187.18', '湖北 武汉', '{\"levelId\":[\"6\"],\"levelName\":[\"五星会员\"],\"salfNum\":[\"3\"],\"teamSale\":[\"200000.00000000\"],\"rateNum\":[\"0.0000\"],\"totalRate\":[\"0.05\"]}', '0', '', null);
INSERT INTO `sys_oper_log` VALUES ('12b428863b0dae1cce7f6e68edc7f196', '用户账号', '2', 'com.basics.cu.controller.AccountController.editSave()', '1', 'admin', '/cu/account/edit', '119.98.217.167', '湖北 武汉', '{\"customerId\":[\"1ca99233f4b02c9df46c02b343053ac0\"],\"useCoin\":[\"1000\"],\"useMoney\":[\"0E-8\"]}', '0', '', null);
INSERT INTO `sys_oper_log` VALUES ('12ca371fa9cbedc7f28345d33ac0a22d', '批量注册', '1', 'com.basics.cu.controller.CustomerController.bitchRegiestSave()', '1', 'admin', '/cu/customer/bitchRegiest', '58.48.187.18', 'XX XX', '{\"parentNumber\":[\"hello\"],\"preNumber\":[\"a\"],\"phone\":[\"123456\"],\"password\":[\"1\"],\"num\":[\"1\"],\"type\":[\"1\"]}', '0', '', null);
INSERT INTO `sys_oper_log` VALUES ('13a51cc310bdf0f5feb699471dece3c5', '用户账号', '2', 'com.basics.cu.controller.AccountController.editSave()', '1', 'admin', '/cu/account/edit', '58.48.187.18', '湖北 武汉', '{\"customerId\":[\"1c257c53285fbe779e10e0a6b02179cf\"],\"useCoin\":[\"1000\"],\"useMoney\":[\"0E-8\"]}', '0', '', null);
INSERT INTO `sys_oper_log` VALUES ('150b32e5f38f32fbea2c9c661c79b28f', '批量注册', '1', 'com.basics.cu.controller.CustomerController.bitchRegiestSave()', '1', 'admin', '/cu/customer/bitchRegiest', '122.192.12.230', '江苏 南京', '{\"parentNumber\":[\"a0\"],\"preNumber\":[\"1\"],\"phone\":[\"123456\"],\"password\":[\"1\"],\"num\":[\"3\"],\"type\":[\"1\"]}', '0', '', null);
INSERT INTO `sys_oper_log` VALUES ('15ac7e0b3f20f0f3b2291a5a207fa356', '批量注册', '1', 'com.basics.cu.controller.CustomerController.bitchRegiestSave()', '1', 'admin', '/cu/customer/bitchRegiest', '122.192.12.230', '江苏 南京', '{\"parentNumber\":[\"hello\"],\"preNumber\":[\"a\"],\"phone\":[\"123456\"],\"password\":[\"1\"],\"num\":[\"1\"],\"type\":[\"1\"]}', '0', '', null);
INSERT INTO `sys_oper_log` VALUES ('16220ffa0b118b70f3ecbff2141e7e8b', '系统初始化', '1', 'com.basics.cu.controller.CustomerController.initStstem()', '1', 'admin', '/cu/customer/initStstem', '58.48.187.18', 'XX XX', '{\"preNumber\":[\"hello\"],\"phone\":[\"123456\"],\"password\":[\"1\"]}', '0', '', null);
INSERT INTO `sys_oper_log` VALUES ('16cb165fe045201c092c2fc665490448', '用户账号', '2', 'com.basics.cu.controller.AccountController.editSave()', '1', 'admin', '/cu/account/edit', '119.98.217.167', '湖北 武汉', '{\"customerId\":[\"87a23ad380c0365496c208b52a032c31\"],\"useCoin\":[\"100\"],\"useMoney\":[\"0E-8\"]}', '0', '', null);
INSERT INTO `sys_oper_log` VALUES ('1726aed7209f37a0b2a5e0b9c89ab1c6', '批量注册', '1', 'com.basics.cu.controller.CustomerController.bitchRegiestSave()', '1', 'admin', '/cu/customer/bitchRegiest', '58.48.187.18', '湖北 武汉', '{\"parentNumber\":[\"hello\"],\"preNumber\":[\"a\"],\"phone\":[\"123456\"],\"password\":[\"1\"],\"num\":[\"1\"],\"type\":[\"1\"]}', '0', '', null);
INSERT INTO `sys_oper_log` VALUES ('1735d784833661fbc7fd4bc8bf8a3d01', '用户账号', '2', 'com.basics.cu.controller.AccountController.editSave()', '1', 'admin', '/cu/account/edit', '183.13.203.72', '广东 深圳', '{\"customerId\":[\"1f4ba21ec63cecb702e472a412c42760\"],\"useCoin\":[\"1000\"],\"useMoney\":[\"0E-8\"]}', '0', '', null);
INSERT INTO `sys_oper_log` VALUES ('1772a81006244eaf1fd41b3dda5074de', '批量注册', '1', 'com.basics.cu.controller.CustomerController.bitchRegiestSave()', '1', 'admin', '/cu/customer/bitchRegiest', '119.98.217.167', '湖北 武汉', '{\"parentNumber\":[\"a0\"],\"preNumber\":[\"4\"],\"phone\":[\"123456\"],\"password\":[\"1\"],\"num\":[\"1\"],\"type\":[\"1\"]}', '0', '', null);
INSERT INTO `sys_oper_log` VALUES ('17a429a35a628f92162a59a6998560ad', '用户账号', '2', 'com.basics.cu.controller.AccountController.editSave()', '1', 'admin', '/cu/account/edit', '171.83.87.161', '湖北 武汉', '{\"customerId\":[\"f57a7abaac2b4eb7a63e6de2a34444d2\"],\"useCoin\":[\"200\"],\"useMoney\":[\"0E-8\"]}', '0', '', null);
INSERT INTO `sys_oper_log` VALUES ('1834226e98b7fcfdc4b39c84c8e87e5b', '用户账号', '2', 'com.basics.cu.controller.AccountController.editSave()', '1', 'admin', '/cu/account/edit', '122.192.12.230', '江苏 南京', '{\"customerId\":[\"276c7ab415c2ccd66e2b5940d2ff6daf\"],\"useCoin\":[\"1000\"],\"useMoney\":[\"0E-8\"]}', '0', '', null);
INSERT INTO `sys_oper_log` VALUES ('192644f44eb6754492fcef0c40d28a2d', '用户账号', '2', 'com.basics.cu.controller.AccountController.editSave()', '1', 'admin', '/cu/account/edit', '58.48.187.18', '湖北 武汉', '{\"customerId\":[\"79982c44e10524a69cca07e51f1ef227\"],\"useCoin\":[\"1000\"],\"useMoney\":[\"0E-8\"]}', '0', '', null);
INSERT INTO `sys_oper_log` VALUES ('19a3e406aebe3f0da0cea9c83aea76b8', '用户账号', '2', 'com.basics.cu.controller.AccountController.editSave()', '1', 'admin', '/cu/account/edit', '171.83.87.161', '湖北 武汉', '{\"customerId\":[\"9bf83ee58e5ccc8e1918b702e74bc768\"],\"useCoin\":[\"300\"],\"useMoney\":[\"0E-8\"]}', '0', '', null);
INSERT INTO `sys_oper_log` VALUES ('1b0f5ac056b1b22a8c6fa8d2a8a60b5e', '静态释放', '1', 'com.basics.cu.controller.CustomerController.staticReleaseReward()', '1', 'admin', '/cu/customer/staticReleaseReward', '58.48.187.18', '湖北 武汉', '{}', '0', '', null);
INSERT INTO `sys_oper_log` VALUES ('1b1b945112e34f107d31239e6bbeb653', '批量注册', '1', 'com.basics.cu.controller.CustomerController.bitchRegiestSave()', '1', 'admin', '/cu/customer/bitchRegiest', '122.192.12.230', '江苏 南京', '{\"parentNumber\":[\"a0\"],\"preNumber\":[\"1\"],\"phone\":[\"123456\"],\"password\":[\"1\"],\"num\":[\"3\"],\"type\":[\"1\"]}', '0', '', null);
INSERT INTO `sys_oper_log` VALUES ('1bc1c3a193390816e99dd1f51e864f49', '静态释放', '1', 'com.basics.cu.controller.CustomerController.staticReleaseReward()', '1', 'admin', '/cu/customer/staticReleaseReward', '183.13.203.72', '广东 深圳', '{}', '0', '', null);
INSERT INTO `sys_oper_log` VALUES ('1bdb397aa74e92fca7d0ad6e6340d5aa', '用户账号', '2', 'com.basics.cu.controller.AccountController.editSave()', '1', 'admin', '/cu/account/edit', '119.98.217.167', '湖北 武汉', '{\"customerId\":[\"37f296d5db7b85b86d1fb8dd3f6801d4\"],\"useCoin\":[\"100\"],\"useMoney\":[\"0E-8\"]}', '0', '', null);
INSERT INTO `sys_oper_log` VALUES ('1c395640835201346efdeb66fa67dd90', '代码生成', '8', 'com.basics.system.controller.tool.GenController.genCode()', '1', 'admin', '/tool/gen/genCode/cu_customer', '127.0.0.1', '内网IP', '{}', '0', '', null);
INSERT INTO `sys_oper_log` VALUES ('1d24d4d12e2dea8832fa222782c145a9', '用户账号', '2', 'com.basics.cu.controller.AccountController.editSave()', '1', 'admin', '/cu/account/edit', '119.98.217.167', '湖北 武汉', '{\"customerId\":[\"18b01aa4b0f4f12feaaa9d48674b97a8\"],\"useCoin\":[\"1000\"],\"useMoney\":[\"0E-8\"]}', '0', '', null);
INSERT INTO `sys_oper_log` VALUES ('1dcfefc3a3bda793b1efd6f1dc5a6e21', '静态释放', '1', 'com.basics.cu.controller.CustomerController.staticReleaseReward()', '1', 'admin', '/cu/customer/staticReleaseReward', '171.83.87.161', '湖北 武汉', '{}', '0', '', null);
INSERT INTO `sys_oper_log` VALUES ('1e8129761a2ca84a9593ce638f2b2934', '用户账号', '2', 'com.basics.cu.controller.AccountController.editSave()', '1', 'admin', '/cu/account/edit', '58.48.187.18', '湖北 武汉', '{\"customerId\":[\"f6737fc2cec9cb96375ea52839d010e9\"],\"useCoin\":[\"1000\"],\"useMoney\":[\"0E-8\"]}', '0', '', null);
INSERT INTO `sys_oper_log` VALUES ('1fd3aa71c5e3a15f93ae8c7ac477f64f', '静态释放', '1', 'com.basics.cu.controller.CustomerController.staticReleaseReward()', '1', 'admin', '/cu/customer/staticReleaseReward', '58.48.187.18', '湖北 武汉', '{}', '0', '', null);
INSERT INTO `sys_oper_log` VALUES ('20919c33392b8a073b32339b739bf35c', '用户账号', '2', 'com.basics.cu.controller.AccountController.editSave()', '1', 'admin', '/cu/account/edit', '58.48.187.18', '湖北 武汉', '{\"customerId\":[\"09097a478260d5a57fe59fb042e93ac7\"],\"useCoin\":[\"1000\"],\"useMoney\":[\"0E-8\"]}', '0', '', null);
INSERT INTO `sys_oper_log` VALUES ('22c7ae0cd62a15261fb00754808ce553', '批量注册', '1', 'com.basics.cu.controller.CustomerController.bitchRegiestSave()', '1', 'admin', '/cu/customer/bitchRegiest', '183.13.203.72', '广东 深圳', '{\"parentNumber\":[\"10\"],\"preNumber\":[\"10\"],\"phone\":[\"123456\"],\"password\":[\"1\"],\"num\":[\"3\"],\"type\":[\"1\"]}', '0', '', null);
INSERT INTO `sys_oper_log` VALUES ('22ec6f624ffd651904405d1cfdc67df8', '静态释放', '1', 'com.basics.cu.controller.CustomerController.staticReleaseReward()', '1', 'admin', '/cu/customer/staticReleaseReward', '58.48.187.18', '湖北 武汉', '{}', '0', '', null);
INSERT INTO `sys_oper_log` VALUES ('233546a9b3880c9f7a7daf5c32566661', '用户账号', '2', 'com.basics.cu.controller.AccountController.editSave()', '1', 'admin', '/cu/account/edit', '183.13.203.72', '广东 深圳', '{\"customerId\":[\"a41fe7c3a0322a4483256a84a6a899db\"],\"useCoin\":[\"1000\"],\"useMoney\":[\"0E-8\"]}', '0', '', null);
INSERT INTO `sys_oper_log` VALUES ('2340b6c61090877c9058a55f7f7bdb7e', '用户账号', '2', 'com.basics.cu.controller.AccountController.editSave()', '1', 'admin', '/cu/account/edit', '58.48.187.18', '湖北 武汉', '{\"customerId\":[\"4439638dff432b97b1d861bb671baa0b\"],\"useCoin\":[\"1000\"],\"useMoney\":[\"0E-8\"]}', '0', '', null);
INSERT INTO `sys_oper_log` VALUES ('238dce11645a524f0b365e2a5b59f083', '用户账号', '2', 'com.basics.cu.controller.AccountController.editSave()', '1', 'admin', '/cu/account/edit', '122.192.12.230', '江苏 南京', '{\"customerId\":[\"276c7ab415c2ccd66e2b5940d2ff6daf\"],\"useCoin\":[\"0\"],\"useMoney\":[\"0E-8\"]}', '0', '', null);
INSERT INTO `sys_oper_log` VALUES ('23f587154b22d815bf9bea5c67056e3d', '用户账号', '2', 'com.basics.cu.controller.AccountController.editSave()', '1', 'admin', '/cu/account/edit', '122.194.3.237', '江苏 南京', '{\"customerId\":[\"eaca783d8475723871dab71733108de9\"],\"useCoin\":[\"1000\"],\"useMoney\":[\"0E-8\"]}', '0', '', null);
INSERT INTO `sys_oper_log` VALUES ('24556884eebd9140358934cc4aaba498', '用户账号', '2', 'com.basics.cu.controller.AccountController.editSave()', '1', 'admin', '/cu/account/edit', '122.192.12.230', '江苏 南京', '{\"customerId\":[\"69474b88d738031fedc955aab261a440\"],\"useCoin\":[\"0\"],\"useMoney\":[\"0E-8\"]}', '0', '', null);
INSERT INTO `sys_oper_log` VALUES ('250d3fe8174f3e82bd896da10b8bfbc6', '用户账号', '2', 'com.basics.cu.controller.AccountController.editSave()', '1', 'admin', '/cu/account/edit', '58.48.187.18', '湖北 武汉', '{\"customerId\":[\"6e5b93c93c2ca7658665e12e43f7b1f3\"],\"useCoin\":[\"0\"],\"useMoney\":[\"0E-8\"]}', '0', '', null);
INSERT INTO `sys_oper_log` VALUES ('25cd479f98f7892b732c70a9755b2226', '批量注册', '1', 'com.basics.cu.controller.CustomerController.bitchRegiestSave()', '1', 'admin', '/cu/customer/bitchRegiest', '58.48.187.18', '湖北 武汉', '{\"parentNumber\":[\"a0\"],\"preNumber\":[\"a0\"],\"phone\":[\"123456\"],\"password\":[\"1\"],\"num\":[\"3\"],\"type\":[\"2\"]}', '0', '', null);
INSERT INTO `sys_oper_log` VALUES ('26107ac04059029a35da043633f6cd28', '用户账号', '2', 'com.basics.cu.controller.AccountController.editSave()', '1', 'admin', '/cu/account/edit', '58.48.187.18', '湖北 武汉', '{\"customerId\":[\"2c34ca58a3e5f092b4f240199b3fea58\"],\"useCoin\":[\"100\"],\"useMoney\":[\"0E-8\"]}', '0', '', null);
INSERT INTO `sys_oper_log` VALUES ('2619baca1a8571c9abf898c1207adf22', '批量注册', '1', 'com.basics.cu.controller.CustomerController.bitchRegiestSave()', '1', 'admin', '/cu/customer/bitchRegiest', '58.48.187.18', 'XX XX', '{\"parentNumber\":[\"a1\"],\"preNumber\":[\"1\"],\"phone\":[\"123456\"],\"password\":[\"1\"],\"num\":[\"3\"],\"type\":[\"2\"]}', '0', '', null);
INSERT INTO `sys_oper_log` VALUES ('262ec3da6679387ddac207f5bde0412d', '会员等级', '2', 'com.basics.app.controller.LevelController.editSave()', '1', 'admin', '/app/Level/edit', '171.83.87.161', '湖北 武汉', '{\"levelId\":[\"5\"],\"levelName\":[\"四星会员\"],\"salfNum\":[\"3\"],\"teamSale\":[\"120000.00000000\"],\"rateNum\":[\"0.2000\"],\"totalRate\":[\"0.00\"]}', '0', '', null);
INSERT INTO `sys_oper_log` VALUES ('265370289fd84ac5e9b7a385b5c46a6f', '批量注册', '1', 'com.basics.cu.controller.CustomerController.bitchRegiestSave()', '1', 'admin', '/cu/customer/bitchRegiest', '171.83.87.161', '湖北 武汉', '{\"parentNumber\":[\"hello\"],\"preNumber\":[\"a\"],\"phone\":[\"123456\"],\"password\":[\"1\"],\"num\":[\"3\"],\"type\":[\"1\"]}', '0', '', null);
INSERT INTO `sys_oper_log` VALUES ('27f7d964b3c03333f840a9fb8f48d299', '角色管理', '2', 'com.basics.system.controller.RoleController.editSave()', '1', 'admin', '/system/role/edit', '127.0.0.1', '内网IP', '{\"roleId\":[\"1\"],\"roleName\":[\"管理员\"],\"roleKey\":[\"admin\"],\"roleSort\":[\"1\"],\"roleStatus\":[\"1\"],\"remark\":[\"超级管理员\"],\"menuIds\":[\"\"]}', '0', '', null);
INSERT INTO `sys_oper_log` VALUES ('284e8c54ec4cf566911daf72af0ca082', '节点收益配置', '3', 'com.basics.app.controller.TeamRewardController.remove()', '1', 'admin', '/app/teamReward/remove', '171.83.87.161', '湖北 武汉', '{\"ids\":[\"2a063cec61cb854c6043cce1a690bb72\"]}', '0', '', null);
INSERT INTO `sys_oper_log` VALUES ('28aa9c683a8490dc9121d03993ef74bb', '批量注册', '1', 'com.basics.cu.controller.CustomerController.bitchRegiestSave()', '1', 'admin', '/cu/customer/bitchRegiest', '171.83.87.161', 'XX XX', '{\"parentNumber\":[\"a1\"],\"preNumber\":[\"1\"],\"phone\":[\"123456\"],\"password\":[\"1\"],\"num\":[\"3\"],\"type\":[\"2\"]}', '0', '', null);
INSERT INTO `sys_oper_log` VALUES ('290cd0740e7c84a5262af2a2d661399b', '批量注册', '1', 'com.basics.cu.controller.CustomerController.bitchRegiestSave()', '1', 'admin', '/cu/customer/bitchRegiest', '58.48.187.18', '湖北 武汉', '{\"parentNumber\":[\"a1\"],\"preNumber\":[\"3\"],\"phone\":[\"123456\"],\"password\":[\"1\"],\"num\":[\"3\"],\"type\":[\"2\"]}', '0', '', null);
INSERT INTO `sys_oper_log` VALUES ('29cd3a84684dd2fa919c5ebf601b9e17', '批量注册', '1', 'com.basics.cu.controller.CustomerController.bitchRegiestSave()', '1', 'admin', '/cu/customer/bitchRegiest', '122.192.12.230', '江苏 南京', '{\"parentNumber\":[\"a0\"],\"preNumber\":[\"2\"],\"phone\":[\"123456\"],\"password\":[\"1\"],\"num\":[\"3\"],\"type\":[\"1\"]}', '0', '', null);
INSERT INTO `sys_oper_log` VALUES ('2a85fc9babdd99dd22d9e98296618ba6', '用户账号', '2', 'com.basics.cu.controller.AccountController.editSave()', '1', 'admin', '/cu/account/edit', '58.48.187.18', '湖北 武汉', '{\"customerId\":[\"26c45ddfa6131de704b8697d1c97ec03\"],\"useCoin\":[\"100\"],\"useMoney\":[\"0E-8\"]}', '0', '', null);
INSERT INTO `sys_oper_log` VALUES ('2b2f580d8540f44bb786e76902660fc8', '会员等级', '2', 'com.basics.app.controller.LevelController.editSave()', '1', 'admin', '/app/Level/edit', '58.48.187.18', 'XX XX', '{\"levelId\":[\"6\"],\"levelName\":[\"五星会员\"],\"salfNum\":[\"3\"],\"teamSale\":[\"50000.00000000\"],\"rateNum\":[\"0.0000\"],\"totalRate\":[\"0.05\"]}', '0', '', null);
INSERT INTO `sys_oper_log` VALUES ('2b3999a254193cfd051673fc3d9c41cd', '用户账号', '2', 'com.basics.cu.controller.AccountController.editSave()', '1', 'admin', '/cu/account/edit', '122.192.12.230', '江苏 南京', '{\"customerId\":[\"26b7908ee085a32fa9c6ba2ae4d4bf7c\"],\"useCoin\":[\"1000\"],\"useMoney\":[\"0E-8\"]}', '0', '', null);
INSERT INTO `sys_oper_log` VALUES ('2bc66dd94ae96931aee89737e4291ac6', '批量注册', '1', 'com.basics.cu.controller.CustomerController.bitchRegiestSave()', '1', 'admin', '/cu/customer/bitchRegiest', '58.48.187.18', '湖北 武汉', '{\"parentNumber\":[\"a1\"],\"preNumber\":[\"1\"],\"phone\":[\"1\"],\"password\":[\"1\"],\"num\":[\"3\"],\"type\":[\"2\"]}', '0', '', null);
INSERT INTO `sys_oper_log` VALUES ('2bc7bc07b9820e3df5abd75f91e0aeac', '批量注册', '1', 'com.basics.cu.controller.CustomerController.bitchRegiestSave()', '1', 'admin', '/cu/customer/bitchRegiest', '122.192.12.230', '江苏 南京', '{\"parentNumber\":[\"11\"],\"preNumber\":[\"11\"],\"phone\":[\"123456\"],\"password\":[\"1\"],\"num\":[\"3\"],\"type\":[\"1\"]}', '0', '', null);
INSERT INTO `sys_oper_log` VALUES ('2beeea4d70ec2d471e2d71c12133d1bf', '系统初始化', '1', 'com.basics.cu.controller.CustomerController.initStstem()', '1', 'admin', '/cu/customer/initStstem', '171.83.87.161', '湖北 武汉', '{\"preNumber\":[\"hello\"],\"phone\":[\"123456\"],\"password\":[\"1\"]}', '0', '', null);
INSERT INTO `sys_oper_log` VALUES ('2d3a2d5ad67dba99d58697fad3aff38e', '批量注册', '1', 'com.basics.cu.controller.CustomerController.bitchRegiestSave()', '1', 'admin', '/cu/customer/bitchRegiest', '119.98.217.167', '湖北 武汉', '{\"parentNumber\":[\"a0\"],\"preNumber\":[\"2\"],\"phone\":[\"123456\"],\"password\":[\"1\"],\"num\":[\"3\"],\"type\":[\"2\"]}', '0', '', null);
INSERT INTO `sys_oper_log` VALUES ('2dcd06882a8598ab2e35aa75eca5090e', '用户账号', '2', 'com.basics.cu.controller.AccountController.editSave()', '1', 'admin', '/cu/account/edit', '119.98.217.167', '湖北 武汉', '{\"customerId\":[\"78c7bf64f5ad31ce35f75f7c35fb0609\"],\"useCoin\":[\"1000\"],\"useMoney\":[\"0E-8\"]}', '0', '', null);
INSERT INTO `sys_oper_log` VALUES ('2ddb144cbfb8072f3b6f7c87da05060a', '用户账号', '2', 'com.basics.cu.controller.AccountController.editSave()', '1', 'admin', '/cu/account/edit', '58.48.187.18', '湖北 武汉', '{\"customerId\":[\"8245fd2b7a0369d14461bab6ad59190c\"],\"useCoin\":[\"1000\"],\"useMoney\":[\"0E-8\"]}', '0', '', null);
INSERT INTO `sys_oper_log` VALUES ('2e20a8d1d80c08f66c22cde0959a42c9', '批量注册', '1', 'com.basics.cu.controller.CustomerController.bitchRegiestSave()', '1', 'admin', '/cu/customer/bitchRegiest', '58.48.187.18', '湖北 武汉', '{\"parentNumber\":[\"a1\"],\"preNumber\":[\"2\"],\"phone\":[\"1\"],\"password\":[\"1\"],\"num\":[\"3\"],\"type\":[\"2\"]}', '0', '', null);
INSERT INTO `sys_oper_log` VALUES ('2e2cae965e676ee163158b3c9994eea8', '批量注册', '1', 'com.basics.cu.controller.CustomerController.bitchRegiestSave()', '1', 'admin', '/cu/customer/bitchRegiest', '122.192.12.230', '江苏 南京', '{\"parentNumber\":[\"12\"],\"preNumber\":[\"12\"],\"phone\":[\"123456\"],\"password\":[\"1\"],\"num\":[\"3\"],\"type\":[\"1\"]}', '0', '', null);
INSERT INTO `sys_oper_log` VALUES ('2e2d4850c6f36c5cc7395ddbacd5a5be', '系统初始化', '1', 'com.basics.cu.controller.CustomerController.initStstem()', '1', 'admin', '/cu/customer/initStstem', '119.98.217.167', '湖北 武汉', '{\"preNumber\":[\"hello\"],\"phone\":[\"\\t13812341234\"],\"password\":[\"1\"]}', '1', '\n### Error updating database.  Cause: com.mysql.jdbc.MysqlDataTruncation: Data truncation: Data too long for column \'CUSTOMER_PHONE\' at row 1\n### The error may involve com.basics.cu.mapper.CustomerMapper.insert-Inline\n### The error occurred while setting parameters\n### SQL: INSERT INTO cu_customer  ( CUSTOMER_ID, customer_number, customer_password, pass_salt, customer_name,  customer_phone, invite_code, referee_id, customer_status,      create_user, create_time )  VALUES  ( ?, ?, ?, ?, ?,  ?, ?, ?, ?,      ?, ? )\n### Cause: com.mysql.jdbc.MysqlDataTruncation: Data truncation: Data too long for column \'CUSTOMER_PHONE\' at row 1\n; ]; Data truncation: Data too long for column \'CUSTOMER_PHONE\' at row 1; nested exception is com.mysql.jdbc.MysqlDataTruncation: Data truncation: Data too long for column \'CUSTOMER_PHONE\' at row 1', null);
INSERT INTO `sys_oper_log` VALUES ('2eab5c5d2d6972747e4f6569c4a83da6', '用户账号', '2', 'com.basics.cu.controller.AccountController.editSave()', '1', 'admin', '/cu/account/edit', '171.83.87.161', 'XX XX', '{\"customerId\":[\"aedefa56b91b2e682d3d38e2de671bdb\"],\"useCoin\":[\"200\"],\"useMoney\":[\"0E-8\"]}', '0', '', null);
INSERT INTO `sys_oper_log` VALUES ('2edc752f9fb2fde9a6424931a8162ec0', '用户账号', '2', 'com.basics.cu.controller.AccountController.editSave()', '1', 'admin', '/cu/account/edit', '58.48.187.18', 'XX XX', '{\"customerId\":[\"bc069e41230cde3472bc6b7fef02df63\"],\"useCoin\":[\"1000\"],\"useMoney\":[\"0E-8\"]}', '0', '', null);
INSERT INTO `sys_oper_log` VALUES ('30b39fa1bdd61c615b2f83de5b158632', '用户账号', '2', 'com.basics.cu.controller.AccountController.editSave()', '1', 'admin', '/cu/account/edit', '183.13.203.72', '广东 深圳', '{\"customerId\":[\"a41fe7c3a0322a4483256a84a6a899db\"],\"useCoin\":[\"0\"],\"useMoney\":[\"0E-8\"]}', '0', '', null);
INSERT INTO `sys_oper_log` VALUES ('30c5df464e15dc4f4d370fc3c878c73f', '静态释放', '1', 'com.basics.cu.controller.CustomerController.staticReleaseReward()', '1', 'admin', '/cu/customer/staticReleaseReward', '58.48.187.18', '湖北 武汉', '{}', '0', '', null);
INSERT INTO `sys_oper_log` VALUES ('3137b01fd2d13c82d9933cdceaefdaf2', '用户账号', '2', 'com.basics.cu.controller.AccountController.editSave()', '1', 'admin', '/cu/account/edit', '58.48.187.18', '湖北 武汉', '{\"customerId\":[\"850341a8ad68d18d6018f3129bfe3a52\"],\"useCoin\":[\"500000\"],\"useMoney\":[\"0E-8\"]}', '0', '', null);
INSERT INTO `sys_oper_log` VALUES ('3150d829ba51be0abbfefde207fec5b1', '用户账号', '2', 'com.basics.cu.controller.AccountController.editSave()', '1', 'admin', '/cu/account/edit', '58.48.187.18', '湖北 武汉', '{\"customerId\":[\"9b076d36d4abe55fd864aded4268c28f\"],\"useCoin\":[\"100\"],\"useMoney\":[\"0E-8\"]}', '0', '', null);
INSERT INTO `sys_oper_log` VALUES ('3157643c64888a06963279c1f1112181', '批量注册', '1', 'com.basics.cu.controller.CustomerController.bitchRegiestSave()', '1', 'admin', '/cu/customer/bitchRegiest', '58.48.187.18', '湖北 武汉', '{\"parentNumber\":[\"hello\"],\"preNumber\":[\"a\"],\"phone\":[\"123\"],\"password\":[\"1\"],\"num\":[\"3\"],\"type\":[\"1\"]}', '0', '', null);
INSERT INTO `sys_oper_log` VALUES ('3199a40da5a0e129a4b8d67b594b7d25', '批量注册', '1', 'com.basics.cu.controller.CustomerController.bitchRegiestSave()', '1', 'admin', '/cu/customer/bitchRegiest', '119.98.217.167', '湖北 武汉', '{\"parentNumber\":[\"a1\"],\"preNumber\":[\"1\"],\"phone\":[\"123456\"],\"password\":[\"1\"],\"num\":[\"3\"],\"type\":[\"2\"]}', '0', '', null);
INSERT INTO `sys_oper_log` VALUES ('319a661d2d0d37771251788cb7bcbc94', '用户管理', '1', 'com.basics.system.controller.UserController.addSave()', '1', 'admin', '/system/user/add', '127.0.0.1', '内网IP', '{\"loginName\":[\"111\"],\"userName\":[\"1111\"],\"userPassword\":[\"123456\"],\"userEmail\":[\"11111@qq.com\"],\"userPhone\":[\"15207180221\"],\"userSex\":[\"0\"],\"remark\":[\"测试\"],\"userStatus\":[\"0\"],\"roleIds\":[\"\"]}', '0', '', null);
INSERT INTO `sys_oper_log` VALUES ('325c2f5ea74da5f5ecc027c5d1dd7105', '批量注册', '1', 'com.basics.cu.controller.CustomerController.bitchRegiestSave()', '1', 'admin', '/cu/customer/bitchRegiest', '119.98.217.167', '湖北 武汉', '{\"parentNumber\":[\"a1\"],\"preNumber\":[\"1\"],\"phone\":[\"123456\"],\"password\":[\"1\"],\"num\":[\"3\"],\"type\":[\"2\"]}', '0', '', null);
INSERT INTO `sys_oper_log` VALUES ('3303b67d643a741f75c0d734bc2ebaab', '代码生成', '8', 'com.basics.system.controller.tool.GenController.batchGenCode()', '1', 'admin', '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{\"tables\":[\"bl_address,bl_blockchain,bl_coinin,bl_currency\"]}', '0', '', null);
INSERT INTO `sys_oper_log` VALUES ('335331889e31b82e2cac0b95e9178625', '用户账号', '2', 'com.basics.cu.controller.AccountController.editSave()', '1', 'admin', '/cu/account/edit', '119.98.217.167', '湖北 武汉', '{\"customerId\":[\"87a23ad380c0365496c208b52a032c31\"],\"useCoin\":[\"1000\"],\"useMoney\":[\"0E-8\"]}', '0', '', null);
INSERT INTO `sys_oper_log` VALUES ('343b0ad1e4b9b8b720b56f2919621454', '用户账号', '2', 'com.basics.cu.controller.AccountController.editSave()', '1', 'admin', '/cu/account/edit', '58.48.187.18', '湖北 武汉', '{\"customerId\":[\"c394dfd4d9b59e8060170e0007e7f72e\"],\"useCoin\":[\"1000\"],\"useMoney\":[\"0E-8\"]}', '0', '', null);
INSERT INTO `sys_oper_log` VALUES ('3448ce7340d7b35aaf8484714be6db7c', '用户账号', '2', 'com.basics.cu.controller.AccountController.editSave()', '1', 'admin', '/cu/account/edit', '119.98.217.167', '湖北 武汉', '{\"customerId\":[\"edd15880d03a52eb97e7ff9ff99784ad\"],\"useCoin\":[\"100\"],\"useMoney\":[\"0E-8\"]}', '0', '', null);
INSERT INTO `sys_oper_log` VALUES ('34b1f00a7280a665d5824040c9aac24f', '用户账号', '2', 'com.basics.cu.controller.AccountController.editSave()', '1', 'admin', '/cu/account/edit', '58.48.187.18', '湖北 武汉', '{\"customerId\":[\"98f31c54c5748b7d10f00a4e0f8c55ed\"],\"useCoin\":[\"1000\"],\"useMoney\":[\"0E-8\"]}', '0', '', null);
INSERT INTO `sys_oper_log` VALUES ('34b271d628685d8c7d94eb239d6b5f3a', '会员等级', '2', 'com.basics.app.controller.LevelController.editSave()', '1', 'admin', '/app/Level/edit', '171.83.87.161', '湖北 武汉', '{\"levelId\":[\"3\"],\"levelName\":[\"二星会员\"],\"salfNum\":[\"3\"],\"teamSale\":[\"30000.00000000\"],\"rateNum\":[\"0.1000\"],\"totalRate\":[\"0.00\"]}', '0', '', null);
INSERT INTO `sys_oper_log` VALUES ('34c692326d0356fc3dc9d094b1e3f603', '用户账号', '2', 'com.basics.cu.controller.AccountController.editSave()', '1', 'admin', '/cu/account/edit', '122.194.3.237', '江苏 南京', '{\"customerId\":[\"0b4ea63eed868ab7d1d343a9cff72f51\"],\"useCoin\":[\"1000\"],\"useMoney\":[\"0E-8\"]}', '0', '', null);
INSERT INTO `sys_oper_log` VALUES ('3570de832b21b80dfbcebced030654b0', '用户账号', '2', 'com.basics.cu.controller.AccountController.editSave()', '1', 'admin', '/cu/account/edit', '58.48.187.18', '湖北 武汉', '{\"customerId\":[\"7e183b1fbce83fa4bd2fda29579ba615\"],\"useCoin\":[\"1000\"],\"useMoney\":[\"0E-8\"]}', '0', '', null);
INSERT INTO `sys_oper_log` VALUES ('35d267f600f31675191f27279851019f', '批量注册', '1', 'com.basics.cu.controller.CustomerController.bitchRegiestSave()', '1', 'admin', '/cu/customer/bitchRegiest', '183.13.203.72', '广东 深圳', '{\"parentNumber\":[\"hello\"],\"preNumber\":[\"a\"],\"phone\":[\"123456\"],\"password\":[\"1\"],\"num\":[\"1\"],\"type\":[\"1\"]}', '0', '', null);
INSERT INTO `sys_oper_log` VALUES ('3648c62c457fd339af7ddb73e5c7c0f4', '静态释放', '1', 'com.basics.cu.controller.CustomerController.staticReleaseReward()', '1', 'admin', '/cu/customer/staticReleaseReward', '119.98.217.167', '湖北 武汉', '{}', '0', '', null);
INSERT INTO `sys_oper_log` VALUES ('3713ddf812f480ad3b8c803f11c1c084', '用户账号', '2', 'com.basics.cu.controller.AccountController.editSave()', '1', 'admin', '/cu/account/edit', '119.98.217.167', '湖北 武汉', '{\"customerId\":[\"32fe3673975815ae1688edb7dadc0ca5\"],\"useCoin\":[\"1000\"],\"useMoney\":[\"0E-8\"]}', '0', '', null);
INSERT INTO `sys_oper_log` VALUES ('374a6541dda247fe5c1b67f4a55baa48', '投资收益配置', '1', 'com.basics.app.controller.InvestController.addSave()', '1', 'admin', '/app/invest/add', '171.83.87.161', 'XX XX', '{\"dappsId\":[\"ebabe549f896d078ced3cf6514112d34\"],\"minAmount\":[\"100\"],\"maxAmount\":[\"1000\"],\"investRate\":[\"0.3\"],\"investCycle\":[\"6\"]}', '0', '', null);
INSERT INTO `sys_oper_log` VALUES ('376979b4fbb08f8a89618aa490987c86', '用户账号', '2', 'com.basics.cu.controller.AccountController.editSave()', '1', 'admin', '/cu/account/edit', '122.192.12.230', '江苏 南京', '{\"customerId\":[\"54ff945456178895976cd74e34938fce\"],\"useCoin\":[\"0\"],\"useMoney\":[\"0E-8\"]}', '0', '', null);
INSERT INTO `sys_oper_log` VALUES ('37ab661912bf2ada578c3cbf4ecea2e5', '静态释放', '1', 'com.basics.cu.controller.CustomerController.staticReleaseReward()', '1', 'admin', '/cu/customer/staticReleaseReward', '119.98.217.167', '湖北 武汉', '{}', '0', '', null);
INSERT INTO `sys_oper_log` VALUES ('3826fcaf0741af90d70458a5f12c90a6', '用户账号', '2', 'com.basics.cu.controller.AccountController.editSave()', '1', 'admin', '/cu/account/edit', '122.192.12.230', '江苏 南京', '{\"customerId\":[\"d70527daa2e0c3ea625aea5296675b79\"],\"useCoin\":[\"1000\"],\"useMoney\":[\"0E-8\"]}', '0', '', null);
INSERT INTO `sys_oper_log` VALUES ('38a6325135e28ef337d37bbe63dcf157', '系统初始化', '1', 'com.basics.cu.controller.CustomerController.initStstem()', '1', 'admin', '/cu/customer/initStstem', '171.83.87.161', '湖北 武汉', '{\"preNumber\":[\"hello\"],\"phone\":[\"13812341234\"],\"password\":[\"123456\"]}', '0', '', null);
INSERT INTO `sys_oper_log` VALUES ('397a026d88c712b851f3be0d2d026883', '静态释放', '1', 'com.basics.cu.controller.CustomerController.staticReleaseReward()', '1', 'admin', '/cu/customer/staticReleaseReward', '58.48.187.18', '湖北 武汉', '{}', '0', '', null);
INSERT INTO `sys_oper_log` VALUES ('3b1c79662e15abdf4f2bb6da5d370bcc', '会员等级', '2', 'com.basics.app.controller.LevelController.editSave()', '1', 'admin', '/app/Level/edit', '171.83.87.161', '湖北 武汉', '{\"levelId\":[\"6\"],\"levelName\":[\"五星会员\"],\"salfNum\":[\"3\"],\"teamSale\":[\"500000.00000000\"],\"rateNum\":[\"0.2000\"],\"totalRate\":[\"0.00\"]}', '0', '', null);
INSERT INTO `sys_oper_log` VALUES ('3bbcbfe0386f5835a37dd03412b63ab1', 'DAPPS', '1', 'com.basics.app.controller.DappsController.addSave()', '1', 'admin', '/app/dapps/add', '127.0.0.1', '内网IP', '{\"dappsName\":[\"矿机合约\"],\"dappsLogo\":[\"http://pic.51yuansu.com/pic3/cover/00/63/25/589bdedf5475d_610.jpg\"],\"dappsImage\":[\"\"],\"dappsSynopsis\":[\"\"]}', '1', '\r\n### Error updating database.  Cause: java.sql.SQLException: Field \'DAPPS_IMAGE\' doesn\'t have a default value\r\n### The error may involve com.basics.app.mapper.DappsMapper.insert-Inline\r\n### The error occurred while setting parameters\r\n### SQL: INSERT INTO app_dapps  ( DAPPS_ID, dapps_name, dapps_logo,      create_user, create_time )  VALUES  ( ?, ?, ?,      ?, ? )\r\n### Cause: java.sql.SQLException: Field \'DAPPS_IMAGE\' doesn\'t have a default value\n; ]; Field \'DAPPS_IMAGE\' doesn\'t have a default value; nested exception is java.sql.SQLException: Field \'DAPPS_IMAGE\' doesn\'t have a default value', null);
INSERT INTO `sys_oper_log` VALUES ('3d7183cfbc1a25c986e30dd05470e6e1', '静态释放', '1', 'com.basics.cu.controller.CustomerController.staticReleaseReward()', '1', 'admin', '/cu/customer/staticReleaseReward', '119.98.217.167', 'XX XX', '{}', '0', '', null);
INSERT INTO `sys_oper_log` VALUES ('3dc0e2f28b07292edf23ee7698d76d3c', '静态释放', '1', 'com.basics.cu.controller.CustomerController.staticReleaseReward()', '1', 'admin', '/cu/customer/staticReleaseReward', '119.98.217.167', '湖北 武汉', '{}', '0', '', null);
INSERT INTO `sys_oper_log` VALUES ('3f8f31c440227a7e3a3ea1aff6516ac5', '用户账号', '2', 'com.basics.cu.controller.AccountController.editSave()', '1', 'admin', '/cu/account/edit', '119.98.217.167', '湖北 武汉', '{\"customerId\":[\"a231704a9de5c844615d74f2ea2e1bd2\"],\"useCoin\":[\"1000\"],\"useMoney\":[\"0E-8\"]}', '0', '', null);
INSERT INTO `sys_oper_log` VALUES ('3fc253c5eb2df25904b993668838d6a3', '会员等级', '2', 'com.basics.app.controller.LevelController.editSave()', '1', 'admin', '/app/Level/edit', '58.48.187.18', '湖北 武汉', '{\"levelId\":[\"3\"],\"levelName\":[\"二星会员\"],\"salfNum\":[\"3\"],\"teamSale\":[\"3000.00000000\"],\"rateNum\":[\"0.1000\"],\"totalRate\":[\"0.00\"]}', '0', '', null);
INSERT INTO `sys_oper_log` VALUES ('40c7070a4fba291a408de35fb1cae4aa', '用户账号', '2', 'com.basics.cu.controller.AccountController.editSave()', '1', 'admin', '/cu/account/edit', '183.13.203.72', '广东 深圳', '{\"customerId\":[\"7258bbd135bd91f8beaf77467ce6dd30\"],\"useCoin\":[\"1000\"],\"useMoney\":[\"0E-8\"]}', '0', '', null);
INSERT INTO `sys_oper_log` VALUES ('4133927cd8245187e212f0d6a9013cb0', '批量注册', '1', 'com.basics.cu.controller.CustomerController.bitchRegiestSave()', '1', 'admin', '/cu/customer/bitchRegiest', '58.48.187.18', '湖北 武汉', '{\"parentNumber\":[\"a0\"],\"preNumber\":[\"1\"],\"phone\":[\"123456\"],\"password\":[\"1\"],\"num\":[\"3\"],\"type\":[\"1\"]}', '0', '', null);
INSERT INTO `sys_oper_log` VALUES ('428cacad393b6da7cdfcfc59677a96cc', '系统初始化', '1', 'com.basics.cu.controller.CustomerController.initStstem()', '1', 'admin', '/cu/customer/initStstem', '122.192.12.230', 'XX XX', '{\"preNumber\":[\"hello\"],\"phone\":[\"123456\"],\"password\":[\"1\"]}', '0', '', null);
INSERT INTO `sys_oper_log` VALUES ('42ae4914a57f874a240bf860cc9bfcaf', '用户账号', '2', 'com.basics.cu.controller.AccountController.editSave()', '1', 'admin', '/cu/account/edit', '58.48.187.18', '湖北 武汉', '{\"customerId\":[\"cd58af8d7141206513464435338b2533\"],\"useCoin\":[\"1000\"],\"useMoney\":[\"0E-8\"]}', '0', '', null);
INSERT INTO `sys_oper_log` VALUES ('42fe8c001167330557e4b8a96330d61d', '用户账号', '2', 'com.basics.cu.controller.AccountController.editSave()', '1', 'admin', '/cu/account/edit', '58.48.187.18', '湖北 武汉', '{\"customerId\":[\"3550290137857711724c04ffa50c3e0f\"],\"useCoin\":[\"1000\"],\"useMoney\":[\"0E-8\"]}', '0', '', null);
INSERT INTO `sys_oper_log` VALUES ('43f82033a82ee15144db84a73d540dcf', '批量注册', '1', 'com.basics.cu.controller.CustomerController.bitchRegiestSave()', '1', 'admin', '/cu/customer/bitchRegiest', '119.98.217.167', '湖北 武汉', '{\"parentNumber\":[\"hello\"],\"preNumber\":[\"a\"],\"phone\":[\"123456\"],\"password\":[\"1\"],\"num\":[\"1\"],\"type\":[\"1\"]}', '0', '', null);
INSERT INTO `sys_oper_log` VALUES ('440fb1296a548e6db859d6394e9c9689', '用户账号', '2', 'com.basics.cu.controller.AccountController.editSave()', '1', 'admin', '/cu/account/edit', '122.192.12.230', 'XX XX', '{\"customerId\":[\"fd402b132519abd21c75bcc4ccd4d78d\"],\"useCoin\":[\"1000\"],\"useMoney\":[\"0E-8\"]}', '0', '', null);
INSERT INTO `sys_oper_log` VALUES ('4425bb272a21af6b1c69aea1dbb773cb', '批量注册', '1', 'com.basics.cu.controller.CustomerController.bitchRegiestSave()', '1', 'admin', '/cu/customer/bitchRegiest', '171.83.87.161', '湖北 武汉', '{\"parentNumber\":[\"hello\"],\"preNumber\":[\"a\"],\"phone\":[\"123456\"],\"password\":[\"1\"],\"num\":[\"3\"],\"type\":[\"1\"]}', '0', '', null);
INSERT INTO `sys_oper_log` VALUES ('44f922f941f513cd0d24b599f1008158', '用户账号', '2', 'com.basics.cu.controller.AccountController.editSave()', '1', 'admin', '/cu/account/edit', '119.98.217.167', '湖北 武汉', '{\"customerId\":[\"5c38ad6ed1308227cb2fa33e885fd3da\"],\"useCoin\":[\"1000\"],\"useMoney\":[\"0E-8\"]}', '0', '', null);
INSERT INTO `sys_oper_log` VALUES ('45810b4449f8704ec708fe09b8a00394', '角色管理', '2', 'com.basics.system.controller.RoleController.editSave()', '1', 'admin', '/system/role/edit', '127.0.0.1', '内网IP', '{\"roleId\":[\"1\"],\"roleName\":[\"管理员\"],\"roleKey\":[\"admin\"],\"roleSort\":[\"1\"],\"roleStatus\":[\"1\"],\"remark\":[\"超级管理员\"],\"menuIds\":[\"\"]}', '0', '', null);
INSERT INTO `sys_oper_log` VALUES ('45a971ff9ae022dc893dee1285cf2848', '用户账号', '2', 'com.basics.cu.controller.AccountController.editSave()', '1', 'admin', '/cu/account/edit', '122.192.12.230', '江苏 南京', '{\"customerId\":[\"54ff945456178895976cd74e34938fce\"],\"useCoin\":[\"1000\"],\"useMoney\":[\"0E-8\"]}', '0', '', null);
INSERT INTO `sys_oper_log` VALUES ('45af5bb5dd5cd7032e35eec0062bbdf0', '用户账号', '2', 'com.basics.cu.controller.AccountController.editSave()', '1', 'admin', '/cu/account/edit', '58.48.187.18', '湖北 武汉', '{\"customerId\":[\"1ab5a7fa606c0371d545920780452da4\"],\"useCoin\":[\"1000\"],\"useMoney\":[\"0E-8\"]}', '0', '', null);
INSERT INTO `sys_oper_log` VALUES ('45c7a653907fdaf2d8d47791c144ae5c', '批量注册', '1', 'com.basics.cu.controller.CustomerController.bitchRegiestSave()', '1', 'admin', '/cu/customer/bitchRegiest', '58.48.187.18', '湖北 武汉', '{\"parentNumber\":[\"10\"],\"preNumber\":[\"10\"],\"phone\":[\"123456\"],\"password\":[\"1\"],\"num\":[\"3\"],\"type\":[\"1\"]}', '0', '', null);
INSERT INTO `sys_oper_log` VALUES ('4605d272446b17a262a395a720a9880d', '用户账号', '2', 'com.basics.cu.controller.AccountController.editSave()', '1', 'admin', '/cu/account/edit', '58.48.187.18', '湖北 武汉', '{\"customerId\":[\"678b148cdfdadaead229db2600796851\"],\"useCoin\":[\"0\"],\"useMoney\":[\"0E-8\"]}', '0', '', null);
INSERT INTO `sys_oper_log` VALUES ('461a8fd0090120559abd785ec989afcd', '批量注册', '1', 'com.basics.cu.controller.CustomerController.bitchRegiestSave()', '1', 'admin', '/cu/customer/bitchRegiest', '58.48.187.18', '湖北 武汉', '{\"parentNumber\":[\"a0\"],\"preNumber\":[\"1\"],\"phone\":[\"123456\"],\"password\":[\"1\"],\"num\":[\"4\"],\"type\":[\"1\"]}', '0', '', null);
INSERT INTO `sys_oper_log` VALUES ('4656e6f85b3647b224a1d10fe37048ad', '批量注册', '1', 'com.basics.cu.controller.CustomerController.bitchRegiestSave()', '1', 'admin', '/cu/customer/bitchRegiest', '171.83.87.161', '湖北 武汉', '{\"parentNumber\":[\"a1\"],\"preNumber\":[\"3\"],\"phone\":[\"123456\"],\"password\":[\"1\"],\"num\":[\"3\"],\"type\":[\"2\"]}', '0', '', null);
INSERT INTO `sys_oper_log` VALUES ('4715e668e07103642f2aa48220fabf59', '用户账号', '2', 'com.basics.cu.controller.AccountController.editSave()', '1', 'admin', '/cu/account/edit', '119.98.217.167', 'XX XX', '{\"customerId\":[\"37f296d5db7b85b86d1fb8dd3f6801d4\"],\"useCoin\":[\"1000\"],\"useMoney\":[\"0E-8\"]}', '0', '', null);
INSERT INTO `sys_oper_log` VALUES ('47436f3159cef1c9adb50cec582d7de0', '用户账号', '2', 'com.basics.cu.controller.AccountController.editSave()', '1', 'admin', '/cu/account/edit', '171.83.87.161', '湖北 武汉', '{\"customerId\":[\"642562312bcdf6c6eb01287a87da956c\"],\"useCoin\":[\"100\"],\"useMoney\":[\"0E-8\"]}', '0', '', null);
INSERT INTO `sys_oper_log` VALUES ('48a7da273247e6f29ae6a27686b0ce82', '节点收益配置', '1', 'com.basics.app.controller.TeamRewardController.addSave()', '1', 'admin', '/app/teamReward/add', '171.83.87.161', '湖北 武汉', '{\"selfNum\":[\"5\"],\"rewardRate\":[\"0.03\"],\"generationNum\":[\"5\"]}', '0', '', null);
INSERT INTO `sys_oper_log` VALUES ('48edf36114d74de2868a28c8ef87f753', '静态释放', '1', 'com.basics.cu.controller.CustomerController.staticReleaseReward()', '1', 'admin', '/cu/customer/staticReleaseReward', '122.194.3.237', '江苏 南京', '{}', '0', '', null);
INSERT INTO `sys_oper_log` VALUES ('495078491675dc074494153a7b15f1d6', '用户账号', '2', 'com.basics.cu.controller.AccountController.editSave()', '1', 'admin', '/cu/account/edit', '119.98.217.167', '湖北 武汉', '{\"customerId\":[\"f12942694f223847b3d2a5a4be3bec14\"],\"useCoin\":[\"1000\"],\"useMoney\":[\"0E-8\"]}', '0', '', null);
INSERT INTO `sys_oper_log` VALUES ('49fc7aeea76f8a78e203445ec8376310', '角色管理', '1', 'com.basics.system.controller.RoleController.addSave()', '1', 'admin', '/system/role/add', '171.83.87.161', '湖北 武汉', '{\"roleName\":[\"admina\"],\"roleKey\":[\"111\"],\"roleSort\":[\"1\"],\"roleStatus\":[\"0\"],\"remark\":[\"1\"],\"menuIds\":[\"1,100,1000,1001,1002,1003,1004,1005,101,1006,1007,1008,1009,1010,102,1011,1012,1013,1014,105,1024,1025,1026,1027,1028,106,1029,1030,1031,1032,1033,108,', '0', '', null);
INSERT INTO `sys_oper_log` VALUES ('4b434e412958cd476d8e8e823cf2267b', '节点收益配置', '1', 'com.basics.app.controller.TeamRewardController.addSave()', '1', 'admin', '/app/teamReward/add', '171.83.87.161', '湖北 武汉', '{\"selfNum\":[\"8\"],\"rewardRate\":[\"0.02\"],\"generationNum\":[\"8\"]}', '0', '', null);
INSERT INTO `sys_oper_log` VALUES ('4b6199a40d15f3e8ce1501e48ff114f2', '批量注册', '1', 'com.basics.cu.controller.CustomerController.bitchRegiestSave()', '1', 'admin', '/cu/customer/bitchRegiest', '171.83.87.161', '湖北 武汉', '{\"parentNumber\":[\"hello\"],\"preNumber\":[\"a\"],\"phone\":[\"123456\"],\"password\":[\"1\"],\"num\":[\"1\"],\"type\":[\"1\"]}', '0', '', null);
INSERT INTO `sys_oper_log` VALUES ('4b91cb9545c05cfcae8f3da288c3049a', '投资收益配置', '2', 'com.basics.app.controller.InvestController.editSave()', '1', 'admin', '/app/invest/edit', '58.48.187.18', '湖北 武汉', '{\"investId\":[\"a260ed31f3066f86734150db9ca10738\"],\"dappsId\":[\"ebabe549f896d078ced3cf6514112d34\"],\"minAmount\":[\"100.00000000\"],\"maxAmount\":[\"100000.00000000\"],\"investRate\":[\"0.30000000\"],\"investCycle\":[\"6\"]}', '0', '', null);
INSERT INTO `sys_oper_log` VALUES ('4cd9960710ff22db9ad77f207fb3c963', '用户账号', '2', 'com.basics.cu.controller.AccountController.editSave()', '1', 'admin', '/cu/account/edit', '58.48.187.18', '湖北 武汉', '{\"customerId\":[\"d76a929c5bc4507743687088589fc784\"],\"useCoin\":[\"1000\"],\"useMoney\":[\"0E-8\"]}', '0', '', null);
INSERT INTO `sys_oper_log` VALUES ('4d130097e0e3e000b7df861691adc5a8', '节点收益配置', '1', 'com.basics.app.controller.TeamRewardController.addSave()', '1', 'admin', '/app/teamReward/add', '171.83.87.161', '湖北 武汉', '{\"selfNum\":[\"8\"],\"rewardRate\":[\"0.02\"],\"generationNum\":[\"8\"]}', '0', '', null);
INSERT INTO `sys_oper_log` VALUES ('4d2b79f8983b4cb0366acb2528248533', '角色管理', '2', 'com.basics.system.controller.RoleController.editSave()', '1', 'admin', '/system/role/edit', '127.0.0.1', '内网IP', '{\"roleId\":[\"1\"],\"roleName\":[\"管理员\"],\"roleKey\":[\"admin\"],\"roleSort\":[\"1\"],\"roleStatus\":[\"1\"],\"remark\":[\"超级管理员\"],\"menuIds\":[\"\"]}', '0', '', null);
INSERT INTO `sys_oper_log` VALUES ('4fd90459b578be3d070781e96c08ecbe', '用户账号', '2', 'com.basics.cu.controller.AccountController.editSave()', '1', 'admin', '/cu/account/edit', '183.13.203.72', '广东 深圳', '{\"customerId\":[\"c714eaf2e7159d7f958eda49ca6aa6b5\"],\"useCoin\":[\"1000\"],\"useMoney\":[\"0E-8\"]}', '0', '', null);
INSERT INTO `sys_oper_log` VALUES ('5009e7544c90e7b2f06f3527cc488f7f', '批量注册', '1', 'com.basics.cu.controller.CustomerController.bitchRegiestSave()', '1', 'admin', '/cu/customer/bitchRegiest', '171.83.87.161', '湖北 武汉', '{\"parentNumber\":[\"a0\"],\"preNumber\":[\"1\"],\"phone\":[\"123456\"],\"password\":[\"1\"],\"num\":[\"3\"],\"type\":[\"1\"]}', '0', '', null);
INSERT INTO `sys_oper_log` VALUES ('51699d7eac02689d1b0a1271714b95f8', '代码生成', '8', 'com.basics.system.controller.tool.GenController.genCode()', '1', 'admin', '/tool/gen/genCode/cu_customer', '127.0.0.1', '内网IP', '{}', '0', '', null);
INSERT INTO `sys_oper_log` VALUES ('52480ae1980cfa4299947b6911bf842f', '批量注册', '1', 'com.basics.cu.controller.CustomerController.bitchRegiestSave()', '1', 'admin', '/cu/customer/bitchRegiest', '171.83.87.161', '湖北 武汉', '{\"parentNumber\":[\"a0\"],\"preNumber\":[\"1\"],\"phone\":[\"123456\"],\"password\":[\"1\"],\"num\":[\"3\"],\"type\":[\"1\"]}', '0', '', null);
INSERT INTO `sys_oper_log` VALUES ('52c4aa47a1db6fe0ccc3875752e7333f', '批量注册', '1', 'com.basics.cu.controller.CustomerController.bitchRegiestSave()', '1', 'admin', '/cu/customer/bitchRegiest', '58.48.187.18', '湖北 武汉', '{\"parentNumber\":[\"a1\"],\"preNumber\":[\"4\"],\"phone\":[\"1\"],\"password\":[\"1\"],\"num\":[\"3\"],\"type\":[\"2\"]}', '0', '', null);
INSERT INTO `sys_oper_log` VALUES ('5337c216bede6f85a9f2130ad0c6e110', '用户账号', '2', 'com.basics.cu.controller.AccountController.editSave()', '1', 'admin', '/cu/account/edit', '58.48.187.18', '湖北 武汉', '{\"customerId\":[\"1876110bafb514a5f865883805b9897d\"],\"useCoin\":[\"100\"],\"useMoney\":[\"0E-8\"]}', '0', '', null);
INSERT INTO `sys_oper_log` VALUES ('544aa097abaaf81f44780c9b36b01d00', '角色管理', '2', 'com.basics.system.controller.RoleController.editSave()', '1', 'admin', '/system/role/edit', '127.0.0.1', '内网IP', '{\"roleId\":[\"1\"],\"roleName\":[\"管理员\"],\"roleKey\":[\"admin\"],\"roleSort\":[\"1\"],\"roleStatus\":[\"1\"],\"remark\":[\"超级管理员\"],\"menuIds\":[\"\"]}', '0', '', null);
INSERT INTO `sys_oper_log` VALUES ('545ab0179d0410a4a841f3899ea7e0a6', '静态释放', '1', 'com.basics.cu.controller.CustomerController.staticReleaseReward()', '1', 'admin', '/cu/customer/staticReleaseReward', '119.98.217.167', 'XX XX', '{}', '0', '', null);
INSERT INTO `sys_oper_log` VALUES ('567b60401de56f35325694eb037f764e', '批量注册', '1', 'com.basics.cu.controller.CustomerController.bitchRegiestSave()', '1', 'admin', '/cu/customer/bitchRegiest', '58.48.187.18', '湖北 武汉', '{\"parentNumber\":[\"hello\"],\"preNumber\":[\"a\"],\"phone\":[\"123456\"],\"password\":[\"1\"],\"num\":[\"1\"],\"type\":[\"1\"]}', '0', '', null);
INSERT INTO `sys_oper_log` VALUES ('56c1f7789bbee8aea5ea7a7c27c22370', '静态释放', '1', 'com.basics.cu.controller.CustomerController.staticReleaseReward()', '1', 'admin', '/cu/customer/staticReleaseReward', '58.48.187.18', 'XX XX', '{}', '0', '', null);
INSERT INTO `sys_oper_log` VALUES ('56c6ac1af3a7ac489f4a303f76a0f022', '用户账号', '2', 'com.basics.cu.controller.AccountController.editSave()', '1', 'admin', '/cu/account/edit', '122.194.3.237', '江苏 南京', '{\"customerId\":[\"a92aa9fe3e1120c2fc54bb60299f3482\"],\"useCoin\":[\"0\"],\"useMoney\":[\"0E-8\"]}', '0', '', null);
INSERT INTO `sys_oper_log` VALUES ('56d58f3321bfebc92a92a2866cc939d6', '用户账号', '2', 'com.basics.cu.controller.AccountController.editSave()', '1', 'admin', '/cu/account/edit', '122.192.12.230', '江苏 南京', '{\"customerId\":[\"86724d5a4dbb4d1d6ea5d44040ab3fd6\"],\"useCoin\":[\"0\"],\"useMoney\":[\"0E-8\"]}', '0', '', null);
INSERT INTO `sys_oper_log` VALUES ('57351af6ead9720b70cea3953462be5c', '用户账号', '2', 'com.basics.cu.controller.AccountController.editSave()', '1', 'admin', '/cu/account/edit', '119.98.217.167', '湖北 武汉', '{\"customerId\":[\"c6c955bde9326bedb52d94b0994a95bd\"],\"useCoin\":[\"1000\"],\"useMoney\":[\"0E-8\"]}', '0', '', null);
INSERT INTO `sys_oper_log` VALUES ('57b4d241e5240598c349f06648079af1', '用户账号', '2', 'com.basics.cu.controller.AccountController.editSave()', '1', 'admin', '/cu/account/edit', '171.83.87.161', '湖北 武汉', '{\"customerId\":[\"700c4062e9a82ea88296c6b901c1c293\"],\"useCoin\":[\"1000\"],\"useMoney\":[\"0E-8\"]}', '0', '', null);
INSERT INTO `sys_oper_log` VALUES ('587129b1ec2689016bba726d9a8a4fd1', '批量注册', '1', 'com.basics.cu.controller.CustomerController.bitchRegiestSave()', '1', 'admin', '/cu/customer/bitchRegiest', '119.98.217.167', '湖北 武汉', '{\"parentNumber\":[\"a0\"],\"preNumber\":[\"1\"],\"phone\":[\"123456\"],\"password\":[\"1\"],\"num\":[\"3\"],\"type\":[\"2\"]}', '0', '', null);
INSERT INTO `sys_oper_log` VALUES ('587d2040aa6080c224d506c54731b8ea', '批量注册', '1', 'com.basics.cu.controller.CustomerController.bitchRegiestSave()', '1', 'admin', '/cu/customer/bitchRegiest', '119.98.217.167', '湖北 武汉', '{\"parentNumber\":[\"a1\"],\"preNumber\":[\"2\"],\"phone\":[\"123456\"],\"password\":[\"1\"],\"num\":[\"3\"],\"type\":[\"2\"]}', '0', '', null);
INSERT INTO `sys_oper_log` VALUES ('589fde418a8e0b5f8b0399b29ffb0085', '会员等级', '2', 'com.basics.app.controller.LevelController.editSave()', '1', 'admin', '/app/Level/edit', '171.83.87.161', '湖北 武汉', '{\"levelId\":[\"4\"],\"levelName\":[\"三星会员\"],\"salfNum\":[\"3\"],\"teamSale\":[\"90000.00000000\"],\"rateNum\":[\"0.1500\"],\"totalRate\":[\"0.00\"]}', '0', '', null);
INSERT INTO `sys_oper_log` VALUES ('58b20f1b1e53fc378682b6b4b7535778', '批量注册', '1', 'com.basics.cu.controller.CustomerController.bitchRegiestSave()', '1', 'admin', '/cu/customer/bitchRegiest', '58.48.187.18', '湖北 武汉', '{\"parentNumber\":[\"hello\"],\"preNumber\":[\"a\"],\"phone\":[\"123456\"],\"password\":[\"1\"],\"num\":[\"1\"],\"type\":[\"1\"]}', '0', '', null);
INSERT INTO `sys_oper_log` VALUES ('59b757810e8ea66c69eeab80c88ee0d4', '会员等级', '2', 'com.basics.app.controller.LevelController.editSave()', '1', 'admin', '/app/Level/edit', '58.48.187.18', '湖北 武汉', '{\"levelId\":[\"4\"],\"levelName\":[\"三星会员\"],\"salfNum\":[\"3\"],\"teamSale\":[\"9000.00000000\"],\"rateNum\":[\"0.1500\"],\"totalRate\":[\"0.00\"]}', '0', '', null);
INSERT INTO `sys_oper_log` VALUES ('5ae4ff47e0c9225dd8ee0e263f3ffbc3', '系统初始化', '1', 'com.basics.cu.controller.CustomerController.initStstem()', '1', 'admin', '/cu/customer/initStstem', '122.192.12.230', '江苏 南京', '{\"preNumber\":[\"hello\"],\"phone\":[\"123456\"],\"password\":[\"1\"]}', '0', '', null);
INSERT INTO `sys_oper_log` VALUES ('5bfeaaaf287ac36bfb0121d8e0e8d6f2', '静态释放', '1', 'com.basics.cu.controller.CustomerController.staticReleaseReward()', '1', 'admin', '/cu/customer/staticReleaseReward', '119.98.217.167', '湖北 武汉', '{}', '0', '', null);
INSERT INTO `sys_oper_log` VALUES ('5c8d46d8aba2e721e638e2b5633169b0', '静态释放', '1', 'com.basics.cu.controller.CustomerController.staticReleaseReward()', '1', 'admin', '/cu/customer/staticReleaseReward', '119.98.217.167', '湖北 武汉', '{}', '0', '', null);
INSERT INTO `sys_oper_log` VALUES ('5cc214af0be1b4d9a75fd33499c00a22', '批量注册', '1', 'com.basics.cu.controller.CustomerController.bitchRegiestSave()', '1', 'admin', '/cu/customer/bitchRegiest', '171.83.87.161', '湖北 武汉', '{\"parentNumber\":[\"a0\"],\"preNumber\":[\"1\"],\"phone\":[\"123456\"],\"password\":[\"1\"],\"num\":[\"3\"],\"type\":[\"1\"]}', '0', '', null);
INSERT INTO `sys_oper_log` VALUES ('5ced9db98b6f0b6c2d618939da2600f5', '用户账号', '2', 'com.basics.cu.controller.AccountController.editSave()', '1', 'admin', '/cu/account/edit', '183.13.203.72', '广东 深圳', '{\"customerId\":[\"abcff24db34329124927f581506f3214\"],\"useCoin\":[\"1000\"],\"useMoney\":[\"0E-8\"]}', '0', '', null);
INSERT INTO `sys_oper_log` VALUES ('5d06d9d299427a209538b5e9a2c8ffeb', '用户账号', '2', 'com.basics.cu.controller.AccountController.editSave()', '1', 'admin', '/cu/account/edit', '171.83.87.161', '湖北 武汉', '{\"customerId\":[\"5b25ed206c652747be7b8661f537d78f\"],\"useCoin\":[\"100\"],\"useMoney\":[\"0E-8\"]}', '0', '', null);
INSERT INTO `sys_oper_log` VALUES ('5d0988eb61cc5cd33365a9142c93065f', '系统初始化', '1', 'com.basics.cu.controller.CustomerController.initStstem()', '1', 'admin', '/cu/customer/initStstem', '58.48.187.18', '湖北 武汉', '{\"preNumber\":[\"hello\"],\"phone\":[\"123456\"],\"password\":[\"1\"]}', '0', '', null);
INSERT INTO `sys_oper_log` VALUES ('5e5e443fe891e9fb54ae5d5d7a0ee183', '用户账号', '2', 'com.basics.cu.controller.AccountController.editSave()', '1', 'admin', '/cu/account/edit', '119.98.217.167', '湖北 武汉', '{\"customerId\":[\"613a306cbc2ae5dedfcae7c1ebc2c6ab\"],\"useCoin\":[\"1000\"],\"useMoney\":[\"0E-8\"]}', '0', '', null);
INSERT INTO `sys_oper_log` VALUES ('5e615317730ae2410d5cebb538a2fd10', '系统初始化', '1', 'com.basics.cu.controller.CustomerController.initStstem()', '1', 'admin', '/cu/customer/initStstem', '171.83.87.161', '湖北 武汉', '{\"preNumber\":[\"hello\"],\"phone\":[\"13812341234\"],\"password\":[\"1\"]}', '0', '', null);
INSERT INTO `sys_oper_log` VALUES ('5eacc851c59c2712156bc4869a047bcf', '用户账号', '2', 'com.basics.cu.controller.AccountController.editSave()', '1', 'admin', '/cu/account/edit', '119.98.217.167', '湖北 武汉', '{\"customerId\":[\"a17f57d4b029b136c5c0a9be1daffaae\"],\"useCoin\":[\"1000\"],\"useMoney\":[\"0E-8\"]}', '0', '', null);
INSERT INTO `sys_oper_log` VALUES ('5f50dce7ef00bfa734da965f86618c4a', '用户账号', '2', 'com.basics.cu.controller.AccountController.editSave()', '1', 'admin', '/cu/account/edit', '119.98.217.167', '湖北 武汉', '{\"customerId\":[\"94459284aef7569f99275bbb00dba148\"],\"useCoin\":[\"1000\"],\"useMoney\":[\"0E-8\"]}', '0', '', null);
INSERT INTO `sys_oper_log` VALUES ('5fdd28c49e584d47e85deebeba4d7173', '批量注册', '1', 'com.basics.cu.controller.CustomerController.bitchRegiestSave()', '1', 'admin', '/cu/customer/bitchRegiest', '122.192.12.230', '江苏 南京', '{\"parentNumber\":[\"hello\"],\"preNumber\":[\"a\"],\"phone\":[\"123456\"],\"password\":[\"1\"],\"num\":[\"1\"],\"type\":[\"1\"]}', '0', '', null);
INSERT INTO `sys_oper_log` VALUES ('6009493dee8177e50a100ebe1abb8ed7', '系统初始化', '1', 'com.basics.cu.controller.CustomerController.initStstem()', '1', 'admin', '/cu/customer/initStstem', '58.48.187.18', '湖北 武汉', '{\"preNumber\":[\"hello\"],\"phone\":[\"123456\"],\"password\":[\"1\"]}', '0', '', null);
INSERT INTO `sys_oper_log` VALUES ('607bb8183ce92a3f52f9c622ff810bfd', '用户账号', '2', 'com.basics.cu.controller.AccountController.editSave()', '1', 'admin', '/cu/account/edit', '58.48.187.18', '湖北 武汉', '{\"customerId\":[\"cdebd67a2ffea26755158c53824d7897\"],\"useCoin\":[\"1000\"],\"useMoney\":[\"0E-8\"]}', '0', '', null);
INSERT INTO `sys_oper_log` VALUES ('61005cbbf5ec0d2c7921bd8e29c6dbfb', '批量注册', '1', 'com.basics.cu.controller.CustomerController.bitchRegiestSave()', '1', 'admin', '/cu/customer/bitchRegiest', '58.48.187.18', '湖北 武汉', '{\"parentNumber\":[\"hello\"],\"preNumber\":[\"a\"],\"phone\":[\"123456\"],\"password\":[\"1\"],\"num\":[\"1\"],\"type\":[\"1\"]}', '0', '', null);
INSERT INTO `sys_oper_log` VALUES ('61523daacf246db53cd14be1b99ca286', '系统初始化', '1', 'com.basics.cu.controller.CustomerController.initStstem()', '1', 'admin', '/cu/customer/initStstem', '171.83.87.161', '湖北 武汉', '{\"preNumber\":[\"hello\"],\"phone\":[\"123456\"],\"password\":[\"1\"]}', '0', '', null);
INSERT INTO `sys_oper_log` VALUES ('616b07ec8919338c577b2d4cb7b35e1f', '用户账号', '2', 'com.basics.cu.controller.AccountController.editSave()', '1', 'admin', '/cu/account/edit', '183.13.203.72', '广东 深圳', '{\"customerId\":[\"55a4734927478c29d4caf363347f139e\"],\"useCoin\":[\"1000\"],\"useMoney\":[\"0E-8\"]}', '0', '', null);
INSERT INTO `sys_oper_log` VALUES ('619dd769d21698345f6c86fafcaa6cc1', '用户账号', '2', 'com.basics.cu.controller.AccountController.editSave()', '1', 'admin', '/cu/account/edit', '58.48.187.18', '湖北 武汉', '{\"customerId\":[\"9b696fe055d1318dac40e4b4e16d9556\"],\"useCoin\":[\"1000\"],\"useMoney\":[\"0E-8\"]}', '0', '', null);
INSERT INTO `sys_oper_log` VALUES ('61e3c12af9bbfa65843b1778e3810660', '用户账号', '2', 'com.basics.cu.controller.AccountController.editSave()', '1', 'admin', '/cu/account/edit', '58.48.187.18', '湖北 武汉', '{\"customerId\":[\"1f99c7e8e9c905d69c4ac96b07f061ce\"],\"useCoin\":[\"1000\"],\"useMoney\":[\"0E-8\"]}', '0', '', null);
INSERT INTO `sys_oper_log` VALUES ('61eb9d177e672d340a815f78e1361534', '汇率', '2', 'com.basics.app.controller.MoneyRateController.editSave()', '1', 'admin', '/app/moneyRate/edit', '171.83.87.161', '湖北 武汉', '{\"rateId\":[\"1\"],\"dollarRate\":[\"1.00\"]}', '0', '', null);
INSERT INTO `sys_oper_log` VALUES ('62950a2fa1d324a507e8a6a2be4e5c82', '用户账号', '2', 'com.basics.cu.controller.AccountController.editSave()', '1', 'admin', '/cu/account/edit', '58.48.187.18', '湖北 武汉', '{\"customerId\":[\"b80387405535987fca03eeba69f25467\"],\"useCoin\":[\"0\"],\"useMoney\":[\"0E-8\"]}', '0', '', null);
INSERT INTO `sys_oper_log` VALUES ('62a1dcd7f28119f051d53dd4ab60fe12', '用户账号', '2', 'com.basics.cu.controller.AccountController.editSave()', '1', 'admin', '/cu/account/edit', '119.98.217.167', '湖北 武汉', '{\"customerId\":[\"420203409fc71dc94d521bd797667a7e\"],\"useCoin\":[\"100\"],\"useMoney\":[\"0E-8\"]}', '0', '', null);
INSERT INTO `sys_oper_log` VALUES ('6307785221afcfd4b4f02436a048216f', '批量注册', '1', 'com.basics.cu.controller.CustomerController.bitchRegiestSave()', '1', 'admin', '/cu/customer/bitchRegiest', '122.194.3.237', 'XX XX', '{\"parentNumber\":[\"10\"],\"preNumber\":[\"10\"],\"phone\":[\"123456\"],\"password\":[\"1\"],\"num\":[\"3\"],\"type\":[\"1\"]}', '0', '', null);
INSERT INTO `sys_oper_log` VALUES ('63d243d63638a9bcf76cfbb744aafb8a', '用户账号', '2', 'com.basics.cu.controller.AccountController.editSave()', '1', 'admin', '/cu/account/edit', '119.98.217.167', '湖北 武汉', '{\"customerId\":[\"b176b85b4a4f3400623fc5e13d7651c7\"],\"useCoin\":[\"1000\"],\"useMoney\":[\"0E-8\"]}', '0', '', null);
INSERT INTO `sys_oper_log` VALUES ('649581e7b962f1c65c35ae9a0040c003', '用户账号', '2', 'com.basics.cu.controller.AccountController.editSave()', '1', 'admin', '/cu/account/edit', '119.98.217.167', '湖北 武汉', '{\"customerId\":[\"19557ec35e84f333ae05cc687fd6ccbc\"],\"useCoin\":[\"1000\"],\"useMoney\":[\"0E-8\"]}', '0', '', null);
INSERT INTO `sys_oper_log` VALUES ('64d0804cb5517de8603195013e266ccb', '节点收益配置', '2', 'com.basics.app.controller.TeamRewardController.editSave()', '1', 'admin', '/app/teamReward/edit', '171.83.87.161', '湖北 武汉', '{\"teamId\":[\"c487bab40a4d8494d94de40fd7a7c4f6\"],\"selfNum\":[\"6\"],\"rewardRate\":[\"0.0200\"],\"generationNum\":[\"6\"]}', '0', '', null);
INSERT INTO `sys_oper_log` VALUES ('6592275a0947a4dede9df5544783e3c7', '批量注册', '1', 'com.basics.cu.controller.CustomerController.bitchRegiestSave()', '1', 'admin', '/cu/customer/bitchRegiest', '58.48.187.18', '湖北 武汉', '{\"parentNumber\":[\"a0\"],\"preNumber\":[\"1\"],\"phone\":[\"123456\"],\"password\":[\"1\"],\"num\":[\"15\"],\"type\":[\"1\"]}', '0', '', null);
INSERT INTO `sys_oper_log` VALUES ('6597b0cf8d645f9c87927c59f6d2df01', '批量注册', '1', 'com.basics.cu.controller.CustomerController.bitchRegiestSave()', '1', 'admin', '/cu/customer/bitchRegiest', '171.83.87.161', 'XX XX', '{\"parentNumber\":[\"a1\"],\"preNumber\":[\"2\"],\"phone\":[\"123456\"],\"password\":[\"1\"],\"num\":[\"3\"],\"type\":[\"2\"]}', '0', '', null);
INSERT INTO `sys_oper_log` VALUES ('659824f87fa6d4f9e570e910cd12323f', '系统初始化', '1', 'com.basics.cu.controller.CustomerController.initStstem()', '1', 'admin', '/cu/customer/initStstem', '58.48.187.18', '湖北 武汉', '{\"preNumber\":[\"hello\"],\"phone\":[\"123456\"],\"password\":[\"1\"]}', '0', '', null);
INSERT INTO `sys_oper_log` VALUES ('65bf2d38cfc3af865829d5f4d0d49672', '静态释放', '1', 'com.basics.cu.controller.CustomerController.staticReleaseReward()', '1', 'admin', '/cu/customer/staticReleaseReward', '119.98.217.167', '湖北 武汉', '{}', '0', '', null);
INSERT INTO `sys_oper_log` VALUES ('65e41b4c5165f7ad841de8f73d93d328', '用户账号', '2', 'com.basics.cu.controller.AccountController.editSave()', '1', 'admin', '/cu/account/edit', '183.13.203.72', '广东 深圳', '{\"customerId\":[\"a6bb4a25be703453029de9d9e1006eb0\"],\"useCoin\":[\"0\"],\"useMoney\":[\"0E-8\"]}', '0', '', null);
INSERT INTO `sys_oper_log` VALUES ('66fea022a5d41125fc159139715d0590', '静态释放', '1', 'com.basics.cu.controller.CustomerController.staticReleaseReward()', '1', 'admin', '/cu/customer/staticReleaseReward', '58.48.187.18', '湖北 武汉', '{}', '0', '', null);
INSERT INTO `sys_oper_log` VALUES ('683ec52dd27309c1966c2ee9e2a51521', '用户管理', '2', 'com.basics.system.controller.UserController.editSave()', '1', 'admin', '/system/user/edit', '127.0.0.1', '内网IP', '{\"userId\":[\"f912345968704fbb921554f55a7f2ba7\"],\"userName\":[\"穆里尼奥\"],\"userEmail\":[\"506839640@qq.com\"],\"userPhone\":[\"15207180551\"],\"userSex\":[\"1\"],\"userStatus\":[\"0\"],\"remark\":[\"\"],\"roleIds\":[\"1\"]}', '0', '', null);
INSERT INTO `sys_oper_log` VALUES ('688387aa3af44d8eaba9041240415633', '用户账号', '2', 'com.basics.cu.controller.AccountController.editSave()', '1', 'admin', '/cu/account/edit', '122.192.12.230', '江苏 南京', '{\"customerId\":[\"62a81db7802af99d344b0cbc94991fe9\"],\"useCoin\":[\"1000\"],\"useMoney\":[\"0E-8\"]}', '0', '', null);
INSERT INTO `sys_oper_log` VALUES ('68d92f805b9fc817612773205c5d9883', '系统初始化', '1', 'com.basics.cu.controller.CustomerController.initStstem()', '1', 'admin', '/cu/customer/initStstem', '119.98.217.167', 'XX XX', '{\"preNumber\":[\"hello\"],\"phone\":[\"123456\"],\"password\":[\"1\"]}', '0', '', null);
INSERT INTO `sys_oper_log` VALUES ('693242a755e45ccccee061acbebeb002', '用户账号', '2', 'com.basics.cu.controller.AccountController.editSave()', '1', 'admin', '/cu/account/edit', '58.48.187.18', '湖北 武汉', '{\"customerId\":[\"271c827901fc23518e18d58cac7bc308\"],\"useCoin\":[\"1000\"],\"useMoney\":[\"0E-8\"]}', '0', '', null);
INSERT INTO `sys_oper_log` VALUES ('69ab9510e4594bfa4b2ab99d2c92097a', '代码生成', '8', 'com.basics.system.controller.tool.GenController.batchGenCode()', '1', 'admin', '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{\"tables\":[\"bl_address,bl_blockchain,bl_coinin,bl_currency\"]}', '0', '', null);
INSERT INTO `sys_oper_log` VALUES ('6a0a3adf2181b5ffa3c31c89104ce1c4', '用户账号', '2', 'com.basics.cu.controller.AccountController.editSave()', '1', 'admin', '/cu/account/edit', '58.48.187.18', '湖北 武汉', '{\"customerId\":[\"212ba3dc5135455fc16016b942850ea9\"],\"useCoin\":[\"100\"],\"useMoney\":[\"0E-8\"]}', '0', '', null);
INSERT INTO `sys_oper_log` VALUES ('6a3c43f58944571436d0a54163bae3f6', '用户账号', '2', 'com.basics.cu.controller.AccountController.editSave()', '1', 'admin', '/cu/account/edit', '58.48.187.18', '湖北 武汉', '{\"customerId\":[\"59aa9e0d1a594698775f34031fb91a0f\"],\"useCoin\":[\"1000\"],\"useMoney\":[\"0E-8\"]}', '0', '', null);
INSERT INTO `sys_oper_log` VALUES ('6a9055e80df99303cf2ef156e83debc6', '系统初始化', '1', 'com.basics.cu.controller.CustomerController.initStstem()', '1', 'admin', '/cu/customer/initStstem', '119.98.217.167', '湖北 武汉', '{\"preNumber\":[\"hello\"],\"phone\":[\"13812341234\"],\"password\":[\"1\"]}', '0', '', null);
INSERT INTO `sys_oper_log` VALUES ('6aac562a238ac32f496db36e0b94e52c', '用户账号', '2', 'com.basics.cu.controller.AccountController.editSave()', '1', 'admin', '/cu/account/edit', '122.192.12.230', '江苏 南京', '{\"customerId\":[\"b131d2f0e242ad8969f02e0dff36be35\"],\"useCoin\":[\"1000\"],\"useMoney\":[\"0E-8\"]}', '0', '', null);
INSERT INTO `sys_oper_log` VALUES ('6abfbeca822d3610019a42afdee4e72c', '节点收益配置', '1', 'com.basics.app.controller.TeamRewardController.addSave()', '1', 'admin', '/app/teamReward/add', '171.83.87.161', '湖北 武汉', '{\"selfNum\":[\"13\"],\"rewardRate\":[\"0.01\"],\"generationNum\":[\"13\"]}', '0', '', null);
INSERT INTO `sys_oper_log` VALUES ('6ac37cb8d4e604425a5dbbcd2ed346e3', '批量注册', '1', 'com.basics.cu.controller.CustomerController.bitchRegiestSave()', '1', 'admin', '/cu/customer/bitchRegiest', '119.98.217.167', '湖北 武汉', '{\"parentNumber\":[\"a0\"],\"preNumber\":[\"3\"],\"phone\":[\"123456\"],\"password\":[\"1\"],\"num\":[\"3\"],\"type\":[\"2\"]}', '0', '', null);
INSERT INTO `sys_oper_log` VALUES ('6bca8b1aeb854dc807c992ff19106956', '静态释放', '1', 'com.basics.cu.controller.CustomerController.staticReleaseReward()', '1', 'admin', '/cu/customer/staticReleaseReward', '119.98.217.167', '湖北 武汉', '{}', '0', '', null);
INSERT INTO `sys_oper_log` VALUES ('6c2b5f8bfda04f0311d4e4279f6c6418', '批量注册', '1', 'com.basics.cu.controller.CustomerController.bitchRegiestSave()', '1', 'admin', '/cu/customer/bitchRegiest', '119.98.217.167', 'XX XX', '{\"parentNumber\":[\"a1\"],\"preNumber\":[\"3\"],\"phone\":[\"123456\"],\"password\":[\"1\"],\"num\":[\"3\"],\"type\":[\"2\"]}', '0', '', null);
INSERT INTO `sys_oper_log` VALUES ('6c334875ec00b97cca1744c98f3daaa1', '用户账号', '2', 'com.basics.cu.controller.AccountController.editSave()', '1', 'admin', '/cu/account/edit', '122.192.12.230', '江苏 南京', '{\"customerId\":[\"5b30e7ace29a7c4b4c794d5498f8242b\"],\"useCoin\":[\"1000\"],\"useMoney\":[\"0E-8\"]}', '0', '', null);
INSERT INTO `sys_oper_log` VALUES ('6c34483450aaa0403a8fd7adeb5b715d', '角色管理', '2', 'com.basics.system.controller.RoleController.editSave()', '1', 'admin', '/system/role/edit', '127.0.0.1', '内网IP', '{\"roleId\":[\"1\"],\"roleName\":[\"管理员\"],\"roleKey\":[\"admin\"],\"roleSort\":[\"1\"],\"roleStatus\":[\"1\"],\"remark\":[\"超级管理员\"],\"menuIds\":[\"\"]}', '0', '', null);
INSERT INTO `sys_oper_log` VALUES ('6ceb7d2a0f2f55dfabc124d960a1c3bc', '批量注册', '1', 'com.basics.cu.controller.CustomerController.bitchRegiestSave()', '1', 'admin', '/cu/customer/bitchRegiest', '58.48.187.18', 'XX XX', '{\"parentNumber\":[\"a0\"],\"preNumber\":[\"1\"],\"phone\":[\"123456\"],\"password\":[\"1\"],\"num\":[\"5\"],\"type\":[\"1\"]}', '0', '', null);
INSERT INTO `sys_oper_log` VALUES ('6cf2359cd36e9c481282558a2aecb854', 'DAPPS', '1', 'com.basics.app.controller.DappsController.addSave()', '1', 'admin', '/app/dapps/add', '127.0.0.1', '内网IP', '{\"dappsName\":[\"矿机合约\"],\"dappsLogo\":[\"http://pic.51yuansu.com/pic3/cover/00/63/25/589bdedf5475d_610.jpg\"],\"dappsImage\":[\"http://pic.51yuansu.com/pic3/cover/00/63/25/589bdedf5475d_610.jpg\"],\"dappsSynopsis\":[\"是否根据发动机风格和接口\"]}', '0', '', null);
INSERT INTO `sys_oper_log` VALUES ('6dd245b060f4872ef0aba388cad4fb92', '批量注册', '1', 'com.basics.cu.controller.CustomerController.bitchRegiestSave()', '1', 'admin', '/cu/customer/bitchRegiest', '58.48.187.18', '湖北 武汉', '{\"parentNumber\":[\"11\"],\"preNumber\":[\"11\"],\"phone\":[\"123456\"],\"password\":[\"1\"],\"num\":[\"3\"],\"type\":[\"1\"]}', '0', '', null);
INSERT INTO `sys_oper_log` VALUES ('6e74b6e8637d26f4d73f0f2b4f11feb5', '批量注册', '1', 'com.basics.cu.controller.CustomerController.bitchRegiestSave()', '1', 'admin', '/cu/customer/bitchRegiest', '58.48.187.18', '湖北 武汉', '{\"parentNumber\":[\"a0\"],\"preNumber\":[\"1\"],\"phone\":[\"123456\"],\"password\":[\"1\"],\"num\":[\"4\"],\"type\":[\"1\"]}', '0', '', null);
INSERT INTO `sys_oper_log` VALUES ('707261f88e0281500626fbfb63b80c23', '批量注册', '1', 'com.basics.cu.controller.CustomerController.bitchRegiestSave()', '1', 'admin', '/cu/customer/bitchRegiest', '119.98.217.167', '湖北 武汉', '{\"parentNumber\":[\"a0\"],\"preNumber\":[\"2\"],\"phone\":[\"123456\"],\"password\":[\"1\"],\"num\":[\"3\"],\"type\":[\"2\"]}', '0', '', null);
INSERT INTO `sys_oper_log` VALUES ('70e8aacf26fddb31ed2eb2fb9466f55a', '系统初始化', '1', 'com.basics.cu.controller.CustomerController.initStstem()', '1', 'admin', '/cu/customer/initStstem', '58.48.187.18', '湖北 武汉', '{\"preNumber\":[\"hello\"],\"phone\":[\"13812341234\"],\"password\":[\"1\"]}', '0', '', null);
INSERT INTO `sys_oper_log` VALUES ('719ba4c8b85139575d129b058bc39a99', '用户账号', '2', 'com.basics.cu.controller.AccountController.editSave()', '1', 'admin', '/cu/account/edit', '58.48.187.18', '湖北 武汉', '{\"customerId\":[\"e806e75997a42916cff7b19a4893795b\"],\"useCoin\":[\"1000\"],\"useMoney\":[\"0E-8\"]}', '0', '', null);
INSERT INTO `sys_oper_log` VALUES ('72b2bf2c1ebc6109933e0be6e8042bc5', '会员等级', '2', 'com.basics.app.controller.LevelController.editSave()', '1', 'admin', '/app/Level/edit', '58.48.187.18', '湖北 武汉', '{\"levelId\":[\"6\"],\"levelName\":[\"五星会员\"],\"salfNum\":[\"3\"],\"teamSale\":[\"5000.00000000\"],\"rateNum\":[\"0.0000\"],\"totalRate\":[\"0.05\"]}', '0', '', null);
INSERT INTO `sys_oper_log` VALUES ('73298a4456b5c481a0d07a00f4d287f7', '静态释放', '1', 'com.basics.cu.controller.CustomerController.staticReleaseReward()', '1', 'admin', '/cu/customer/staticReleaseReward', '119.98.217.167', '湖北 武汉', '{}', '0', '', null);
INSERT INTO `sys_oper_log` VALUES ('73601ed0ab257b05843a4eda08bf6b18', '用户账号', '2', 'com.basics.cu.controller.AccountController.editSave()', '1', 'admin', '/cu/account/edit', '58.48.187.18', '湖北 武汉', '{\"customerId\":[\"e42b1c0a4d314f937f503bcc445f4153\"],\"useCoin\":[\"1000\"],\"useMoney\":[\"0E-8\"]}', '0', '', null);
INSERT INTO `sys_oper_log` VALUES ('73bd9537901df8f1470295898c1eb2c2', '批量注册', '1', 'com.basics.cu.controller.CustomerController.bitchRegiestSave()', '1', 'admin', '/cu/customer/bitchRegiest', '119.98.217.167', '湖北 武汉', '{\"parentNumber\":[\"a0\"],\"preNumber\":[\"3\"],\"phone\":[\"123456\"],\"password\":[\"1\"],\"num\":[\"3\"],\"type\":[\"2\"]}', '0', '', null);
INSERT INTO `sys_oper_log` VALUES ('7461bafead1115f525a24ea591eeeb20', '用户账号', '2', 'com.basics.cu.controller.AccountController.editSave()', '1', 'admin', '/cu/account/edit', '58.48.187.18', '湖北 武汉', '{\"customerId\":[\"91bf5caf1820ba03386b8bb4adabc7be\"],\"useCoin\":[\"1000\"],\"useMoney\":[\"0E-8\"]}', '0', '', null);
INSERT INTO `sys_oper_log` VALUES ('74fa50b597229de5a2cc8251eaea757f', '用户账号', '2', 'com.basics.cu.controller.AccountController.editSave()', '1', 'admin', '/cu/account/edit', '122.192.12.230', '江苏 南京', '{\"customerId\":[\"97adc107c34a7bae71653a189ab47689\"],\"useCoin\":[\"100\"],\"useMoney\":[\"0E-8\"]}', '0', '', null);
INSERT INTO `sys_oper_log` VALUES ('75341d17422b59c0fe1b18ebce4d5c22', '用户账号', '2', 'com.basics.cu.controller.AccountController.editSave()', '1', 'admin', '/cu/account/edit', '122.192.12.230', '江苏 南京', '{\"customerId\":[\"f655adc27d945c4f53b4814b650cc5f5\"],\"useCoin\":[\"1000\"],\"useMoney\":[\"0E-8\"]}', '0', '', null);
INSERT INTO `sys_oper_log` VALUES ('7534db01f34797bcb9ec6a7c927f8803', '批量注册', '1', 'com.basics.cu.controller.CustomerController.bitchRegiestSave()', '1', 'admin', '/cu/customer/bitchRegiest', '122.194.3.237', '江苏 南京', '{\"parentNumber\":[\"hello\"],\"preNumber\":[\"a\"],\"phone\":[\"123456\"],\"password\":[\"1\"],\"num\":[\"1\"],\"type\":[\"1\"]}', '0', '', null);
INSERT INTO `sys_oper_log` VALUES ('759f7723eea122b93e18e67699bbf71c', '用户账号', '2', 'com.basics.cu.controller.AccountController.editSave()', '1', 'admin', '/cu/account/edit', '58.48.187.18', '湖北 武汉', '{\"customerId\":[\"1c257c53285fbe779e10e0a6b02179cf\"],\"useCoin\":[\"0\"],\"useMoney\":[\"0E-8\"]}', '0', '', null);
INSERT INTO `sys_oper_log` VALUES ('7860e6d2c4918bfbc4441727d6cf9ed6', '角色管理', '2', 'com.basics.system.controller.RoleController.editSave()', '1', 'admin', '/system/role/edit', '127.0.0.1', '内网IP', '{\"roleId\":[\"1\"],\"roleName\":[\"管理员\"],\"roleKey\":[\"admin\"],\"roleSort\":[\"1\"],\"roleStatus\":[\"1\"],\"remark\":[\"超级管理员\"],\"menuIds\":[\"\"]}', '0', '', null);
INSERT INTO `sys_oper_log` VALUES ('789ac4cf7dc21ee60e8bc477c8637635', '用户账号', '2', 'com.basics.cu.controller.AccountController.editSave()', '1', 'admin', '/cu/account/edit', '58.48.187.18', '湖北 武汉', '{\"customerId\":[\"17e4b9b19ab05148197af51fa95cbcdb\"],\"useCoin\":[\"100\"],\"useMoney\":[\"0E-8\"]}', '0', '', null);
INSERT INTO `sys_oper_log` VALUES ('7917c3ff7c6c65dda3d90cf1bc353893', '静态释放', '1', 'com.basics.cu.controller.CustomerController.staticReleaseReward()', '1', 'admin', '/cu/customer/staticReleaseReward', '171.83.87.161', 'XX XX', '{}', '0', '', null);
INSERT INTO `sys_oper_log` VALUES ('798cd5fc9a0cd75bc46c0fc8d74a1130', '系统初始化', '1', 'com.basics.cu.controller.CustomerController.initStstem()', '1', 'admin', '/cu/customer/initStstem', '122.192.12.230', '江苏 南京', '{\"preNumber\":[\"hello\"],\"phone\":[\"123456\"],\"password\":[\"1\"]}', '0', '', null);
INSERT INTO `sys_oper_log` VALUES ('79ca98f2fa577444ab227acfddae1c72', '用户账号', '2', 'com.basics.cu.controller.AccountController.editSave()', '1', 'admin', '/cu/account/edit', '119.98.217.167', 'XX XX', '{\"customerId\":[\"ea41a3dd402779d81bfaf5fba88376dc\"],\"useCoin\":[\"1000\"],\"useMoney\":[\"0E-8\"]}', '0', '', null);
INSERT INTO `sys_oper_log` VALUES ('7a29b4a51b6d610c437ef2db87b35d37', '用户账号', '2', 'com.basics.cu.controller.AccountController.editSave()', '1', 'admin', '/cu/account/edit', '58.48.187.18', '湖北 武汉', '{\"customerId\":[\"e11f4493e41e4bdabb9f485c1b103e8d\"],\"useCoin\":[\"500000\"],\"useMoney\":[\"0E-8\"]}', '0', '', null);
INSERT INTO `sys_oper_log` VALUES ('7a3dff069f50757f2b9cabc54ca61df9', '静态释放', '1', 'com.basics.cu.controller.CustomerController.staticReleaseReward()', '1', 'admin', '/cu/customer/staticReleaseReward', '58.48.187.18', '湖北 武汉', '{}', '0', '', null);
INSERT INTO `sys_oper_log` VALUES ('7a5e69efcff184c85ad3717a45fb1bbf', '批量注册', '1', 'com.basics.cu.controller.CustomerController.bitchRegiestSave()', '1', 'admin', '/cu/customer/bitchRegiest', '122.192.12.230', '江苏 南京', '{\"parentNumber\":[\"hello\"],\"preNumber\":[\"a\"],\"phone\":[\"123456\"],\"password\":[\"1\"],\"num\":[\"2\"],\"type\":[\"1\"]}', '0', '', null);
INSERT INTO `sys_oper_log` VALUES ('7a6eee42e17e9e9f26bede9602b249b3', '用户账号', '2', 'com.basics.cu.controller.AccountController.editSave()', '1', 'admin', '/cu/account/edit', '58.48.187.18', 'XX XX', '{\"customerId\":[\"1876110bafb514a5f865883805b9897d\"],\"useCoin\":[\"0\"],\"useMoney\":[\"0E-8\"]}', '0', '', null);
INSERT INTO `sys_oper_log` VALUES ('7aef838a0e7c18fbfa74d79ee9272552', '静态释放', '1', 'com.basics.cu.controller.CustomerController.staticReleaseReward()', '1', 'admin', '/cu/customer/staticReleaseReward', '122.192.12.230', '江苏 南京', '{}', '0', '', null);
INSERT INTO `sys_oper_log` VALUES ('7be51d53720b3d57599ddf841ddd7c98', '用户账号', '2', 'com.basics.cu.controller.AccountController.editSave()', '1', 'admin', '/cu/account/edit', '58.48.187.18', '湖北 武汉', '{\"customerId\":[\"b13f1338a580d579f784096ef96a16b9\"],\"useCoin\":[\"1000\"],\"useMoney\":[\"0E-8\"]}', '0', '', null);
INSERT INTO `sys_oper_log` VALUES ('7c50141841a00ebb34029fdcf2cf0688', '用户账号', '2', 'com.basics.cu.controller.AccountController.editSave()', '1', 'admin', '/cu/account/edit', '183.13.203.72', '广东 深圳', '{\"customerId\":[\"c714eaf2e7159d7f958eda49ca6aa6b5\"],\"useCoin\":[\"0\"],\"useMoney\":[\"0E-8\"]}', '0', '', null);
INSERT INTO `sys_oper_log` VALUES ('7c96b0b6416b14795c56f8fd01a847c0', '投资收益配置', '1', 'com.basics.app.controller.InvestController.addSave()', '1', 'admin', '/app/invest/add', '171.83.87.161', 'XX XX', '{\"dappsId\":[\"ebabe549f896d078ced3cf6514112d34\"],\"minAmount\":[\"100\"],\"maxAmount\":[\"1000\"],\"investRate\":[\"0.7\"],\"investCycle\":[\"12\"]}', '0', '', null);
INSERT INTO `sys_oper_log` VALUES ('7d33360874969324c44afea87adeec84', '用户账号', '2', 'com.basics.cu.controller.AccountController.editSave()', '1', 'admin', '/cu/account/edit', '183.13.203.72', '广东 深圳', '{\"customerId\":[\"7013cb0394350b809829898cb293ee4c\"],\"useCoin\":[\"1000\"],\"useMoney\":[\"0E-8\"]}', '0', '', null);
INSERT INTO `sys_oper_log` VALUES ('7dce8e0efd15f50750fb6c1103aa2951', '用户账号', '2', 'com.basics.cu.controller.AccountController.editSave()', '1', 'admin', '/cu/account/edit', '183.13.203.72', '广东 深圳', '{\"customerId\":[\"f15ce76071573f51ba4f166d5ca37495\"],\"useCoin\":[\"1000\"],\"useMoney\":[\"0E-8\"]}', '0', '', null);
INSERT INTO `sys_oper_log` VALUES ('7e8f9d6ee30298effe05f98dc8ed7025', '用户账号', '2', 'com.basics.cu.controller.AccountController.editSave()', '1', 'admin', '/cu/account/edit', '58.48.187.18', '湖北 武汉', '{\"customerId\":[\"91c327c2caf5c90a5e51f6f2300655ff\"],\"useCoin\":[\"1000\"],\"useMoney\":[\"0E-8\"]}', '0', '', null);
INSERT INTO `sys_oper_log` VALUES ('7ea0147ca06751930d1216135425c266', '系统初始化', '1', 'com.basics.cu.controller.CustomerController.initStstem()', '1', 'admin', '/cu/customer/initStstem', '119.98.217.167', '湖北 武汉', '{\"preNumber\":[\"hello\"],\"phone\":[\"123456\"],\"password\":[\"1\"]}', '0', '', null);
INSERT INTO `sys_oper_log` VALUES ('8065c91af794641c2f04bb21762d915f', '用户账号', '2', 'com.basics.cu.controller.AccountController.editSave()', '1', 'admin', '/cu/account/edit', '183.13.203.72', '广东 深圳', '{\"customerId\":[\"abcff24db34329124927f581506f3214\"],\"useCoin\":[\"0\"],\"useMoney\":[\"0E-8\"]}', '0', '', null);
INSERT INTO `sys_oper_log` VALUES ('81a952eaf3bb2dc7c9dcc47e24c687f1', '角色管理', '2', 'com.basics.system.controller.RoleController.editSave()', '1', 'admin', '/system/role/edit', '122.192.12.230', '江苏 南京', '{\"roleId\":[\"9f4ce05efdb1a3c56bc321fb57a8574c\"],\"roleName\":[\"admina\"],\"roleKey\":[\"111\"],\"roleSort\":[\"1\"],\"roleStatus\":[\"0\"],\"remark\":[\"1\"],\"menuIds\":[\"1,100,1000,1001,1002,1003,1004,1005,101,1006,1007,1008,1009,1010,102,1011,1012,1013,1014,105,1024,1025,10', '0', '', null);
INSERT INTO `sys_oper_log` VALUES ('823d50386a9524354cc217476c495bad', '用户账号', '2', 'com.basics.cu.controller.AccountController.editSave()', '1', 'admin', '/cu/account/edit', '119.98.217.167', '湖北 武汉', '{\"customerId\":[\"1a44f27f8622fbf7308e66d9c59b5f5c\"],\"useCoin\":[\"1000\"],\"useMoney\":[\"0E-8\"]}', '0', '', null);
INSERT INTO `sys_oper_log` VALUES ('82f315da92dc9cc42a81838d5b7a1017', '静态释放', '1', 'com.basics.cu.controller.CustomerController.staticReleaseReward()', '1', 'admin', '/cu/customer/staticReleaseReward', '122.192.12.230', '江苏 南京', '{}', '0', '', null);
INSERT INTO `sys_oper_log` VALUES ('837031574e533fec8c5449e4befbbe76', '用户账号', '2', 'com.basics.cu.controller.AccountController.editSave()', '1', 'admin', '/cu/account/edit', '58.48.187.18', 'XX XX', '{\"customerId\":[\"1344285b4b8a9af75663479949dfbace\"],\"useCoin\":[\"500000\"],\"useMoney\":[\"0E-8\"]}', '0', '', null);
INSERT INTO `sys_oper_log` VALUES ('838d55e829487186ab4c74c38447a10a', '角色管理', '2', 'com.basics.system.controller.RoleController.editSave()', '1', 'admin', '/system/role/edit', '127.0.0.1', '内网IP', '{\"roleId\":[\"1\"],\"roleName\":[\"管理员\"],\"roleKey\":[\"admin\"],\"roleSort\":[\"1\"],\"roleStatus\":[\"1\"],\"remark\":[\"超级管理员\"],\"menuIds\":[\"\"]}', '0', '', null);
INSERT INTO `sys_oper_log` VALUES ('83931577f3b700ec94cb7eee1f33332b', '批量注册', '1', 'com.basics.cu.controller.CustomerController.bitchRegiestSave()', '1', 'admin', '/cu/customer/bitchRegiest', '122.194.3.237', '江苏 南京', '{\"parentNumber\":[\"a0\"],\"preNumber\":[\"1\"],\"phone\":[\"123456\"],\"password\":[\"1\"],\"num\":[\"3\"],\"type\":[\"1\"]}', '0', '', null);
INSERT INTO `sys_oper_log` VALUES ('841ffd910e77ac632bd5b37b024c3861', '用户账号', '2', 'com.basics.cu.controller.AccountController.editSave()', '1', 'admin', '/cu/account/edit', '183.13.203.72', '广东 深圳', '{\"customerId\":[\"738bde7d5c59b04f177bb78111f27561\"],\"useCoin\":[\"1000\"],\"useMoney\":[\"0E-8\"]}', '0', '', null);
INSERT INTO `sys_oper_log` VALUES ('844455e8e106adf2043b07191c86b1f9', '静态释放', '1', 'com.basics.cu.controller.CustomerController.staticReleaseReward()', '1', 'admin', '/cu/customer/staticReleaseReward', '171.83.87.161', '湖北 武汉', '{}', '0', '', null);
INSERT INTO `sys_oper_log` VALUES ('850baed7a4a8b8f5f9b29ba9e639b069', '用户账号', '2', 'com.basics.cu.controller.AccountController.editSave()', '1', 'admin', '/cu/account/edit', '122.194.3.237', '江苏 南京', '{\"customerId\":[\"a0616a974c68edf4479b6b71c62dafc9\"],\"useCoin\":[\"1000\"],\"useMoney\":[\"0E-8\"]}', '0', '', null);
INSERT INTO `sys_oper_log` VALUES ('8558a247dde37e5babb2414859390d4f', '角色管理', '2', 'com.basics.system.controller.RoleController.ruleSave()', '1', 'admin', '/system/role/rule', '122.192.12.230', '江苏 南京', '{\"roleId\":[\"9f4ce05efdb1a3c56bc321fb57a8574c\"],\"roleName\":[\"admina\"],\"roleKey\":[\"111\"],\"dataScope\":[\"1\"]}', '0', '', null);
INSERT INTO `sys_oper_log` VALUES ('8576568d5f2129f2bcae0d2c87c8e36e', '用户账号', '2', 'com.basics.cu.controller.AccountController.editSave()', '1', 'admin', '/cu/account/edit', '58.48.187.18', '湖北 武汉', '{\"customerId\":[\"3f13c8f0560235a83a77552b09557407\"],\"useCoin\":[\"1000\"],\"useMoney\":[\"0E-8\"]}', '0', '', null);
INSERT INTO `sys_oper_log` VALUES ('85c5ae7b9f24075396ef6e44e26f254a', '用户账号', '2', 'com.basics.cu.controller.AccountController.editSave()', '1', 'admin', '/cu/account/edit', '119.98.217.167', '湖北 武汉', '{\"customerId\":[\"7c767c7513624f9a79eba6437479d535\"],\"useCoin\":[\"1000\"],\"useMoney\":[\"0E-8\"]}', '0', '', null);
INSERT INTO `sys_oper_log` VALUES ('85d598f00548f0998ecfc26842b07dab', '用户账号', '2', 'com.basics.cu.controller.AccountController.editSave()', '1', 'admin', '/cu/account/edit', '119.98.217.167', 'XX XX', '{\"customerId\":[\"d3136027d3e73a685e6350635e715ac1\"],\"useCoin\":[\"1000\"],\"useMoney\":[\"0E-8\"]}', '0', '', null);
INSERT INTO `sys_oper_log` VALUES ('868036a79c190dd0698dd2ce1b95d4ac', '节点收益配置', '2', 'com.basics.app.controller.TeamRewardController.editSave()', '1', 'admin', '/app/teamReward/edit', '171.83.87.161', '湖北 武汉', '{\"teamId\":[\"1\"],\"selfNum\":[\"1\"],\"rewardRate\":[\"0.15\"],\"generationNum\":[\"1\"]}', '0', '', null);
INSERT INTO `sys_oper_log` VALUES ('86b6b65854d365fc956bde9e78342287', '用户账号', '2', 'com.basics.cu.controller.AccountController.editSave()', '1', 'admin', '/cu/account/edit', '171.83.87.161', '湖北 武汉', '{\"customerId\":[\"bd8cd4e6ffbd47c42f126ac030b4b5c4\"],\"useCoin\":[\"1000\"],\"useMoney\":[\"0E-8\"]}', '0', '', null);
INSERT INTO `sys_oper_log` VALUES ('870b30f3d10b3236231f3720975c5dbf', '用户账号', '2', 'com.basics.cu.controller.AccountController.editSave()', '1', 'admin', '/cu/account/edit', '122.194.3.237', '江苏 南京', '{\"customerId\":[\"87be489f532cf1b5a2c9239d74bed0d8\"],\"useCoin\":[\"1000\"],\"useMoney\":[\"0E-8\"]}', '0', '', null);
INSERT INTO `sys_oper_log` VALUES ('87c0d086095b80044241b680b1c40b7a', '批量注册', '1', 'com.basics.cu.controller.CustomerController.bitchRegiestSave()', '1', 'admin', '/cu/customer/bitchRegiest', '183.13.203.72', '广东 深圳', '{\"parentNumber\":[\"a0\"],\"preNumber\":[\"1\"],\"phone\":[\"123456\"],\"password\":[\"1\"],\"num\":[\"3\"],\"type\":[\"1\"]}', '0', '', null);
INSERT INTO `sys_oper_log` VALUES ('885ac6ddfcba9407d10fa6b8a7b4d2e1', '批量注册', '1', 'com.basics.cu.controller.CustomerController.bitchRegiestSave()', '1', 'admin', '/cu/customer/bitchRegiest', '119.98.217.167', '湖北 武汉', '{\"parentNumber\":[\"hello\"],\"preNumber\":[\"a\"],\"phone\":[\"123456\"],\"password\":[\"1\"],\"num\":[\"3\"],\"type\":[\"1\"]}', '0', '', null);
INSERT INTO `sys_oper_log` VALUES ('88e2c14016d704c880eac2dded2d01d5', '用户账号', '2', 'com.basics.cu.controller.AccountController.editSave()', '1', 'admin', '/cu/account/edit', '58.48.187.18', '湖北 武汉', '{\"customerId\":[\"68b60fcee57f1562d94843efa5916e6b\"],\"useCoin\":[\"0\"],\"useMoney\":[\"0E-8\"]}', '0', '', null);
INSERT INTO `sys_oper_log` VALUES ('8996af7cb271c5f0b8ff728d03f5b67e', '批量注册', '1', 'com.basics.cu.controller.CustomerController.bitchRegiestSave()', '1', 'admin', '/cu/customer/bitchRegiest', '122.192.12.230', '江苏 南京', '{\"parentNumber\":[\"100\"],\"preNumber\":[\"z\"],\"phone\":[\"123456\"],\"password\":[\"1\"],\"num\":[\"3\"],\"type\":[\"1\"]}', '0', '', null);
INSERT INTO `sys_oper_log` VALUES ('8a4d1168ee83ad824450025c75a93eba', '用户账号', '2', 'com.basics.cu.controller.AccountController.editSave()', '1', 'admin', '/cu/account/edit', '122.194.3.237', '江苏 南京', '{\"customerId\":[\"6f1d193e8c4baa3d8832e268fa7e5f8e\"],\"useCoin\":[\"1000\"],\"useMoney\":[\"0E-8\"]}', '0', '', null);
INSERT INTO `sys_oper_log` VALUES ('8a5fede1a75ea250273a3fa7b219c1a4', '系统初始化', '1', 'com.basics.cu.controller.CustomerController.initStstem()', '1', 'admin', '/cu/customer/initStstem', '183.13.203.72', '广东 深圳', '{\"preNumber\":[\"hello\"],\"phone\":[\"123456\"],\"password\":[\"1\"]}', '0', '', null);
INSERT INTO `sys_oper_log` VALUES ('8aac0fcccc2d4d43ee0916337b89f7a5', '批量注册', '1', 'com.basics.cu.controller.CustomerController.bitchRegiestSave()', '1', 'admin', '/cu/customer/bitchRegiest', '171.83.87.161', '湖北 武汉', '{\"parentNumber\":[\"hello\"],\"preNumber\":[\"a\"],\"phone\":[\"123456\"],\"password\":[\"1\"],\"num\":[\"1\"],\"type\":[\"1\"]}', '0', '', null);
INSERT INTO `sys_oper_log` VALUES ('8b01f11c21dd69240014cb05a4d19abf', '批量注册', '1', 'com.basics.cu.controller.CustomerController.bitchRegiestSave()', '1', 'admin', '/cu/customer/bitchRegiest', '171.83.87.161', '湖北 武汉', '{\"parentNumber\":[\"hello\"],\"preNumber\":[\"a\"],\"phone\":[\"123456\"],\"password\":[\"1\"],\"num\":[\"1\"],\"type\":[\"1\"]}', '0', '', null);
INSERT INTO `sys_oper_log` VALUES ('8c62dba61eaf1ff9fe16937dbc0eb5de', '用户账号', '2', 'com.basics.cu.controller.AccountController.editSave()', '1', 'admin', '/cu/account/edit', '171.83.87.161', '湖北 武汉', '{\"customerId\":[\"f623bf6d69286de0c55d0953e209fde7\"],\"useCoin\":[\"100\"],\"useMoney\":[\"0E-8\"]}', '0', '', null);
INSERT INTO `sys_oper_log` VALUES ('8cb91dfcf868516b39f2f90406e9bdb5', '系统初始化', '1', 'com.basics.cu.controller.CustomerController.initStstem()', '1', 'admin', '/cu/customer/initStstem', '58.48.187.18', '湖北 武汉', '{\"preNumber\":[\"hello\"],\"phone\":[\"123456\"],\"password\":[\"1\"]}', '0', '', null);
INSERT INTO `sys_oper_log` VALUES ('8d0027ce52c75b00b9121f16caec103b', '用户账号', '2', 'com.basics.cu.controller.AccountController.editSave()', '1', 'admin', '/cu/account/edit', '122.194.3.237', '江苏 南京', '{\"customerId\":[\"d0dd1cd59fc6346602345d26abb43036\"],\"useCoin\":[\"0\"],\"useMoney\":[\"0E-8\"]}', '0', '', null);
INSERT INTO `sys_oper_log` VALUES ('8d79ee6ee2c0d9b98aa497c68d015116', '用户账号', '2', 'com.basics.cu.controller.AccountController.editSave()', '1', 'admin', '/cu/account/edit', '171.83.87.161', 'XX XX', '{\"customerId\":[\"5374901d41a202a0467f7c8d744d0a76\"],\"useCoin\":[\"100\"],\"useMoney\":[\"0E-8\"]}', '0', '', null);
INSERT INTO `sys_oper_log` VALUES ('8e4c8c399c2b4a6ae9acf5ba38c2c781', '批量注册', '1', 'com.basics.cu.controller.CustomerController.bitchRegiestSave()', '1', 'admin', '/cu/customer/bitchRegiest', '122.194.3.237', '江苏 南京', '{\"parentNumber\":[\"11\"],\"preNumber\":[\"11\"],\"phone\":[\"123456\"],\"password\":[\"1\"],\"num\":[\"3\"],\"type\":[\"1\"]}', '0', '', null);
INSERT INTO `sys_oper_log` VALUES ('8ef8eb0e8c74b71b54036d43a0dcf0df', '代码生成', '8', 'com.basics.system.controller.tool.GenController.batchGenCode()', '1', 'admin', '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{\"tables\":[\"app_activemq_request,app_activemq_response,app_banner,app_code,app_coins,app_dapps,app_invest,app_level,app_money_rate,app_sale_reward,app_team_reward,app_token,cu_account,cu_coin,cu_count,cu_customer,cu_profit,cu_team_count\"]}', '0', '', null);
INSERT INTO `sys_oper_log` VALUES ('8f75f9b08a35e75ac6fcfa2b5082eb35', '用户账号', '2', 'com.basics.cu.controller.AccountController.editSave()', '1', 'admin', '/cu/account/edit', '183.13.203.72', 'XX XX', '{\"customerId\":[\"a6bb4a25be703453029de9d9e1006eb0\"],\"useCoin\":[\"1000\"],\"useMoney\":[\"0E-8\"]}', '0', '', null);
INSERT INTO `sys_oper_log` VALUES ('9097690322bb2a17d050b0658e18d61c', '用户账号', '2', 'com.basics.cu.controller.AccountController.editSave()', '1', 'admin', '/cu/account/edit', '119.98.217.167', '湖北 武汉', '{\"customerId\":[\"63e7648ce1532ca4baf3aae76a29a03d\"],\"useCoin\":[\"1000\"],\"useMoney\":[\"0E-8\"]}', '0', '', null);
INSERT INTO `sys_oper_log` VALUES ('90df49b4be8c05ebc428607d2e714336', '静态释放', '1', 'com.basics.cu.controller.CustomerController.staticReleaseReward()', '1', 'admin', '/cu/customer/staticReleaseReward', '58.48.187.18', '湖北 武汉', '{}', '0', '', null);
INSERT INTO `sys_oper_log` VALUES ('919d73f234633393c5e7c4096148380e', '节点收益配置', '1', 'com.basics.app.controller.TeamRewardController.addSave()', '1', 'admin', '/app/teamReward/add', '171.83.87.161', '湖北 武汉', '{\"selfNum\":[\"10\"],\"rewardRate\":[\"0.02\"],\"generationNum\":[\"10\"]}', '0', '', null);
INSERT INTO `sys_oper_log` VALUES ('91eddc84e649c2fc676848835631bbd8', '批量注册', '1', 'com.basics.cu.controller.CustomerController.bitchRegiestSave()', '1', 'admin', '/cu/customer/bitchRegiest', '58.48.187.18', '湖北 武汉', '{\"parentNumber\":[\"hello\"],\"preNumber\":[\"a\"],\"phone\":[\"123456\"],\"password\":[\"1\"],\"num\":[\"3\"],\"type\":[\"1\"]}', '0', '', null);
INSERT INTO `sys_oper_log` VALUES ('91eea2229ab062ab294befc6e11ac3b7', '投资收益配置', '2', 'com.basics.app.controller.InvestController.editSave()', '1', 'admin', '/app/invest/edit', '171.83.87.161', '湖北 武汉', '{\"investId\":[\"2542\"],\"dappsId\":[\"442976c7c5fafbb5e2811ffbdd53c560\"],\"minAmount\":[\"100.00000000\"],\"maxAmount\":[\"10000.00000000\"],\"investRate\":[\"0.70000000\"],\"investCycle\":[\"12\"]}', '0', '', null);
INSERT INTO `sys_oper_log` VALUES ('928b0bb0ad0b99648c425715f5be188a', '用户账号', '2', 'com.basics.cu.controller.AccountController.editSave()', '1', 'admin', '/cu/account/edit', '58.48.187.18', '湖北 武汉', '{\"customerId\":[\"1d452976eb69f035416ba52104b31230\"],\"useCoin\":[\"100\"],\"useMoney\":[\"0E-8\"]}', '0', '', null);
INSERT INTO `sys_oper_log` VALUES ('92bba286287330eabde3881c1177c4f6', '节点收益配置', '1', 'com.basics.app.controller.TeamRewardController.addSave()', '1', 'admin', '/app/teamReward/add', '171.83.87.161', '湖北 武汉', '{\"selfNum\":[\"12\"],\"rewardRate\":[\"0.01\"],\"generationNum\":[\"12\"]}', '0', '', null);
INSERT INTO `sys_oper_log` VALUES ('930a772efc2c2980c400b8916f66546e', '节点收益配置', '2', 'com.basics.app.controller.TeamRewardController.editSave()', '1', 'admin', '/app/teamReward/edit', '171.83.87.161', '湖北 武汉', '{\"teamId\":[\"2\"],\"selfNum\":[\"2\"],\"rewardRate\":[\"0.1\"],\"generationNum\":[\"2\"]}', '0', '', null);
INSERT INTO `sys_oper_log` VALUES ('935a134797543bc59ca79808d6f9de02', '静态释放', '1', 'com.basics.cu.controller.CustomerController.staticReleaseReward()', '1', 'admin', '/cu/customer/staticReleaseReward', '119.98.217.167', '湖北 武汉', '{}', '0', '', null);
INSERT INTO `sys_oper_log` VALUES ('93b6d2f4bd40a6c5f8c861ffc7c36d39', '批量注册', '1', 'com.basics.cu.controller.CustomerController.bitchRegiestSave()', '1', 'admin', '/cu/customer/bitchRegiest', '171.83.87.161', '湖北 武汉', '{\"parentNumber\":[\"a1\"],\"preNumber\":[\"2\"],\"phone\":[\"123456\"],\"password\":[\"1\"],\"num\":[\"3\"],\"type\":[\"2\"]}', '0', '', null);
INSERT INTO `sys_oper_log` VALUES ('94c6f85c1b8d1b6dcc4870bb1f8d64cf', '会员等级', '2', 'com.basics.app.controller.LevelController.editSave()', '1', 'admin', '/app/Level/edit', '58.48.187.18', '湖北 武汉', '{\"levelId\":[\"5\"],\"levelName\":[\"四星会员\"],\"salfNum\":[\"3\"],\"teamSale\":[\"65000.00000000\"],\"rateNum\":[\"0.2000\"],\"totalRate\":[\"0.00\"]}', '0', '', null);
INSERT INTO `sys_oper_log` VALUES ('95c69a15d842e21d91aa740d3157012a', '用户账号', '2', 'com.basics.cu.controller.AccountController.editSave()', '1', 'admin', '/cu/account/edit', '58.48.187.18', '湖北 武汉', '{\"customerId\":[\"20065fd55119ee783e67da2ff949ac82\"],\"useCoin\":[\"1000\"],\"useMoney\":[\"0E-8\"]}', '0', '', null);
INSERT INTO `sys_oper_log` VALUES ('95feed662b13752e10351983fb4ba033', '批量注册', '1', 'com.basics.cu.controller.CustomerController.bitchRegiestSave()', '1', 'admin', '/cu/customer/bitchRegiest', '119.98.217.167', '湖北 武汉', '{\"parentNumber\":[\"a1\"],\"preNumber\":[\"2\"],\"phone\":[\"123456\"],\"password\":[\"1\"],\"num\":[\"3\"],\"type\":[\"2\"]}', '0', '', null);
INSERT INTO `sys_oper_log` VALUES ('96db0ab88e89252a5b4476375b00a608', '节点收益配置', '1', 'com.basics.app.controller.TeamRewardController.addSave()', '1', 'admin', '/app/teamReward/add', '171.83.87.161', '湖北 武汉', '{\"selfNum\":[\"7\"],\"rewardRate\":[\"0.02\"],\"generationNum\":[\"7\"]}', '0', '', null);
INSERT INTO `sys_oper_log` VALUES ('97a35b94e92c7477c8a4e013492c8f19', 'DAPPS', '2', 'com.basics.app.controller.DappsController.editSave()', '1', 'admin', '/app/dapps/edit', '171.83.87.161', '湖北 武汉', '{\"dappsId\":[\"ebabe549f896d078ced3cf6514112d34\"],\"dappsName\":[\"量子包\"],\"dappsLogo\":[\"http://pic.51yuansu.com/pic3/cover/00/63/25/589bdedf5475d_610.jpg\"],\"dappsImage\":[\"http://pic.51yuansu.com/pic3/cover/00/63/25/589bdedf5475d_610.jpg\"],\"dappsSynopsis\":[\"是否根据', '0', '', null);
INSERT INTO `sys_oper_log` VALUES ('984f2281d26b880a1c04ea84172882b1', '用户账号', '2', 'com.basics.cu.controller.AccountController.editSave()', '1', 'admin', '/cu/account/edit', '122.194.3.237', '江苏 南京', '{\"customerId\":[\"52d356c53422839629dfab5586465159\"],\"useCoin\":[\"1000\"],\"useMoney\":[\"0E-8\"]}', '0', '', null);
INSERT INTO `sys_oper_log` VALUES ('98e4fb9f2bf6e8a959743839a577b321', '用户账号', '2', 'com.basics.cu.controller.AccountController.editSave()', '1', 'admin', '/cu/account/edit', '58.48.187.18', '湖北 武汉', '{\"customerId\":[\"8f5e269f0714ca29e62109eb21b28916\"],\"useCoin\":[\"1000\"],\"useMoney\":[\"0E-8\"]}', '0', '', null);
INSERT INTO `sys_oper_log` VALUES ('990a4cfe43313e9b04fa0efe0412accd', '系统初始化', '1', 'com.basics.cu.controller.CustomerController.initStstem()', '1', 'admin', '/cu/customer/initStstem', '119.98.217.167', '湖北 武汉', '{\"preNumber\":[\"hello\"],\"phone\":[\"13812341234\"],\"password\":[\"1\"]}', '0', '', null);
INSERT INTO `sys_oper_log` VALUES ('9a6e85284cbd866050329ef0117a2fa1', '用户账号', '2', 'com.basics.cu.controller.AccountController.editSave()', '1', 'admin', '/cu/account/edit', '58.48.187.18', '湖北 武汉', '{\"customerId\":[\"9b696fe055d1318dac40e4b4e16d9556\"],\"useCoin\":[\"0\"],\"useMoney\":[\"0E-8\"]}', '0', '', null);
INSERT INTO `sys_oper_log` VALUES ('9b5992f7a415887fd77c777786e530f8', '代码生成', '8', 'com.basics.system.controller.tool.GenController.batchGenCode()', '1', 'admin', '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{\"tables\":[\"app_activemq_request,app_activemq_response,app_banner,app_code,app_coin,app_dapps,app_invest,app_level,app_money_rate,app_sale_reward,app_team_reward,app_token,cu_account,cu_coin,cu_count,cu_customer,cu_profit,cu_team_count\"]}', '1', 'duplicate entry: coinMenu.sql', null);
INSERT INTO `sys_oper_log` VALUES ('9b72a8a6ed07386f3c1539fdbc7864d2', '系统初始化', '1', 'com.basics.cu.controller.CustomerController.initStstem()', '1', 'admin', '/cu/customer/initStstem', '58.48.187.18', '湖北 武汉', '{\"preNumber\":[\"hello\"],\"phone\":[\"13812341234\"],\"password\":[\"123456\"]}', '0', '', null);
INSERT INTO `sys_oper_log` VALUES ('9b83b59978f44672d36af7dcc36b66f5', '用户账号', '2', 'com.basics.cu.controller.AccountController.editSave()', '1', 'admin', '/cu/account/edit', '122.192.12.230', 'XX XX', '{\"customerId\":[\"79ec3e154fb6366d44103584cf345c45\"],\"useCoin\":[\"100\"],\"useMoney\":[\"0E-8\"]}', '0', '', null);
INSERT INTO `sys_oper_log` VALUES ('9c1c1444dda5d7d95b1cffcad47b171a', '会员等级', '2', 'com.basics.app.controller.LevelController.editSave()', '1', 'admin', '/app/Level/edit', '171.83.87.161', '湖北 武汉', '{\"levelId\":[\"2\"],\"levelName\":[\"一星会员\"],\"salfNum\":[\"3\"],\"teamSale\":[\"10000.00000000\"],\"rateNum\":[\"0.0500\"],\"totalRate\":[\"0.00\"]}', '0', '', null);
INSERT INTO `sys_oper_log` VALUES ('9d485de511bf29ded4e40fd28ec870f2', '批量注册', '1', 'com.basics.cu.controller.CustomerController.bitchRegiestSave()', '1', 'admin', '/cu/customer/bitchRegiest', '58.48.187.18', '湖北 武汉', '{\"parentNumber\":[\"a0\"],\"preNumber\":[\"z\"],\"phone\":[\"123456\"],\"password\":[\"1\"],\"num\":[\"15\"],\"type\":[\"1\"]}', '0', '', null);
INSERT INTO `sys_oper_log` VALUES ('9dfc6aeb0e658f7de6e9df27195d6e25', '角色管理', '2', 'com.basics.system.controller.RoleController.editSave()', '1', 'admin', '/system/role/edit', '127.0.0.1', '内网IP', '{\"roleId\":[\"1\"],\"roleName\":[\"管理员\"],\"roleKey\":[\"admin\"],\"roleSort\":[\"1\"],\"roleStatus\":[\"1\"],\"remark\":[\"超级管理员\"],\"menuIds\":[\"1,100,1000,1001,1002,1003,1004,1005,101,1006,1007,1008,1009,1010,102,1011,1012,1013,1014,105,1024,1025,1026,1027,1028,106,1029,1030,1', '0', '', null);
INSERT INTO `sys_oper_log` VALUES ('a02f7336c292a6280a76ce3bbe326bda', '用户账号', '2', 'com.basics.cu.controller.AccountController.editSave()', '1', 'admin', '/cu/account/edit', '171.83.87.161', '湖北 武汉', '{\"customerId\":[\"3bfe65a74ae8ada85bbaf29957c901e9\"],\"useCoin\":[\"100\"],\"useMoney\":[\"0E-8\"]}', '0', '', null);
INSERT INTO `sys_oper_log` VALUES ('a0c7fc0535c9e51ae14e8567cf01030c', '静态释放', '1', 'com.basics.cu.controller.CustomerController.staticReleaseReward()', '1', 'admin', '/cu/customer/staticReleaseReward', '171.83.87.161', '湖北 武汉', '{}', '0', '', null);
INSERT INTO `sys_oper_log` VALUES ('a0d2ec46f66b30b14ba37dbe51b75462', '用户账号', '2', 'com.basics.cu.controller.AccountController.editSave()', '1', 'admin', '/cu/account/edit', '183.13.203.72', '广东 深圳', '{\"customerId\":[\"e78a266b451150f9123164da37813e4c\"],\"useCoin\":[\"1000\"],\"useMoney\":[\"0E-8\"]}', '0', '', null);
INSERT INTO `sys_oper_log` VALUES ('a1183a46aee31ba4feb1bcf126f0fd76', '批量注册', '1', 'com.basics.cu.controller.CustomerController.bitchRegiestSave()', '1', 'admin', '/cu/customer/bitchRegiest', '58.48.187.18', '湖北 武汉', '{\"parentNumber\":[\"a0\"],\"preNumber\":[\"a0\"],\"phone\":[\"123\"],\"password\":[\"1\"],\"num\":[\"3\"],\"type\":[\"1\"]}', '0', '', null);
INSERT INTO `sys_oper_log` VALUES ('a17279cf72e516410b7d0f8cc9470785', '用户账号', '2', 'com.basics.cu.controller.AccountController.editSave()', '1', 'admin', '/cu/account/edit', '58.48.187.18', '湖北 武汉', '{\"customerId\":[\"a88012f2f4bf8220cfb925117fce633b\"],\"useCoin\":[\"1000\"],\"useMoney\":[\"0E-8\"]}', '0', '', null);
INSERT INTO `sys_oper_log` VALUES ('a24d26a750ef913baf11e88c8a0b7a37', '批量注册', '1', 'com.basics.cu.controller.CustomerController.bitchRegiestSave()', '1', 'admin', '/cu/customer/bitchRegiest', '119.98.217.167', '湖北 武汉', '{\"parentNumber\":[\"a1\"],\"preNumber\":[\"2\"],\"phone\":[\"123456\"],\"password\":[\"1\"],\"num\":[\"3\"],\"type\":[\"2\"]}', '0', '', null);
INSERT INTO `sys_oper_log` VALUES ('a2e0bc676cc9269c1c1be335fa4bf249', '节点收益配置', '2', 'com.basics.app.controller.TeamRewardController.editSave()', '1', 'admin', '/app/teamReward/edit', '171.83.87.161', 'XX XX', '{\"teamId\":[\"daec1339bfeff8e32bcebb4ac0f8560c\"],\"selfNum\":[\"7\"],\"rewardRate\":[\"0.0200\"],\"generationNum\":[\"7\"]}', '0', '', null);
INSERT INTO `sys_oper_log` VALUES ('a2e360201a17bca23243b6f46c45b161', '会员等级', '2', 'com.basics.app.controller.LevelController.editSave()', '1', 'admin', '/app/Level/edit', '58.48.187.18', '湖北 武汉', '{\"levelId\":[\"2\"],\"levelName\":[\"一星会员\"],\"salfNum\":[\"3\"],\"teamSale\":[\"3000.00000000\"],\"rateNum\":[\"0.0500\"],\"totalRate\":[\"0.00\"]}', '0', '', null);
INSERT INTO `sys_oper_log` VALUES ('a2fc8ef6c48a037d425cf9b2fb36abc0', '静态释放', '1', 'com.basics.cu.controller.CustomerController.staticReleaseReward()', '1', 'admin', '/cu/customer/staticReleaseReward', '58.48.187.18', '湖北 武汉', '{}', '0', '', null);
INSERT INTO `sys_oper_log` VALUES ('a36fb747bd1f63b40779e527a143ed57', '用户账号', '2', 'com.basics.cu.controller.AccountController.editSave()', '1', 'admin', '/cu/account/edit', '58.48.187.18', '湖北 武汉', '{\"customerId\":[\"3c4191ef94a22f1ff5fe164ffb2442e9\"],\"useCoin\":[\"1000\"],\"useMoney\":[\"0E-8\"]}', '0', '', null);
INSERT INTO `sys_oper_log` VALUES ('a41679b86cb8346d7c0e502bb683b134', '用户账号', '2', 'com.basics.cu.controller.AccountController.editSave()', '1', 'admin', '/cu/account/edit', '171.83.87.161', '湖北 武汉', '{\"customerId\":[\"39e2455a60827c7d64038b3bb9f6b179\"],\"useCoin\":[\"200\"],\"useMoney\":[\"0E-8\"]}', '0', '', null);
INSERT INTO `sys_oper_log` VALUES ('a4643132161310e96d8233b62d1637ad', '用户账号', '2', 'com.basics.cu.controller.AccountController.editSave()', '1', 'admin', '/cu/account/edit', '119.98.217.167', '湖北 武汉', '{\"customerId\":[\"dfc5ca45a32e40a4e2f15a7907011f96\"],\"useCoin\":[\"100\"],\"useMoney\":[\"0E-8\"]}', '0', '', null);
INSERT INTO `sys_oper_log` VALUES ('a48c54ce368966818ee1a44224ea001a', '用户账号', '2', 'com.basics.cu.controller.AccountController.editSave()', '1', 'admin', '/cu/account/edit', '58.48.187.18', '湖北 武汉', '{\"customerId\":[\"17e4b9b19ab05148197af51fa95cbcdb\"],\"useCoin\":[\"0\"],\"useMoney\":[\"0E-8\"]}', '0', '', null);
INSERT INTO `sys_oper_log` VALUES ('a529b76129cdd68aaf988a5e0e8136f5', '用户账号', '2', 'com.basics.cu.controller.AccountController.editSave()', '1', 'admin', '/cu/account/edit', '183.13.203.72', 'XX XX', '{\"customerId\":[\"5c9b2b6ab2d7ad7a9cb5c921edea40ee\"],\"useCoin\":[\"1000\"],\"useMoney\":[\"0E-8\"]}', '0', '', null);
INSERT INTO `sys_oper_log` VALUES ('a53ac9f7e06d76a83ee4e24d7de39d65', '系统初始化', '1', 'com.basics.cu.controller.CustomerController.initStstem()', '1', 'admin', '/cu/customer/initStstem', '58.48.187.18', '湖北 武汉', '{\"preNumber\":[\"hello\"],\"phone\":[\"123456\"],\"password\":[\"1\"]}', '0', '', null);
INSERT INTO `sys_oper_log` VALUES ('a64df2f04de91c3a43f55df52fce3407', '静态释放', '1', 'com.basics.cu.controller.CustomerController.staticReleaseReward()', '1', 'admin', '/cu/customer/staticReleaseReward', '119.98.217.167', 'XX XX', '{}', '0', '', null);
INSERT INTO `sys_oper_log` VALUES ('a6ba3398ddc64557a69c646f143339be', '用户账号', '2', 'com.basics.cu.controller.AccountController.editSave()', '1', 'admin', '/cu/account/edit', '58.48.187.18', '湖北 武汉', '{\"customerId\":[\"a6cefb8f7613decfb87e66e1ce954394\"],\"useCoin\":[\"1000\"],\"useMoney\":[\"0E-8\"]}', '0', '', null);
INSERT INTO `sys_oper_log` VALUES ('a731fa9694730dc78302c352d22bd7ca', '用户管理', '2', 'com.basics.system.controller.UserController.editSave()', '1', 'admin', '/system/user/edit', '127.0.0.1', '内网IP', '{\"userId\":[\"2909718f20b9de3efa546fbe1d3300d2\"],\"userName\":[\"1111\"],\"userEmail\":[\"11111@qq.com\"],\"userPhone\":[\"15207180221\"],\"userSex\":[\"0\"],\"userStatus\":[\"1\"],\"remark\":[\"测试\"],\"roleIds\":[\"1\"]}', '0', '', null);
INSERT INTO `sys_oper_log` VALUES ('a81f1069a50f995094086fbd29bfaefe', '用户账号', '2', 'com.basics.cu.controller.AccountController.editSave()', '1', 'admin', '/cu/account/edit', '58.48.187.18', '湖北 武汉', '{\"customerId\":[\"b80387405535987fca03eeba69f25467\"],\"useCoin\":[\"100\"],\"useMoney\":[\"0E-8\"]}', '0', '', null);
INSERT INTO `sys_oper_log` VALUES ('a831e2499a16b0a6322395f48b6f72d9', '批量注册', '1', 'com.basics.cu.controller.CustomerController.bitchRegiestSave()', '1', 'admin', '/cu/customer/bitchRegiest', '183.13.203.72', '广东 深圳', '{\"parentNumber\":[\"100\"],\"preNumber\":[\"z\"],\"phone\":[\"123456\"],\"password\":[\"1\"],\"num\":[\"3\"],\"type\":[\"1\"]}', '0', '', null);
INSERT INTO `sys_oper_log` VALUES ('a8d06c11bf8ab2ab76462b7ace810283', '批量注册', '1', 'com.basics.cu.controller.CustomerController.bitchRegiestSave()', '1', 'admin', '/cu/customer/bitchRegiest', '58.48.187.18', '湖北 武汉', '{\"parentNumber\":[\"a0\"],\"preNumber\":[\"w\"],\"phone\":[\"123456\"],\"password\":[\"1\"],\"num\":[\"3\"],\"type\":[\"1\"]}', '0', '', null);
INSERT INTO `sys_oper_log` VALUES ('a8d50a2805458eac1b2ed19f776fafda', '用户账号', '2', 'com.basics.cu.controller.AccountController.editSave()', '1', 'admin', '/cu/account/edit', '122.192.12.230', '江苏 南京', '{\"customerId\":[\"4a343adcc7cab0fb241b37974fbabd9e\"],\"useCoin\":[\"1000\"],\"useMoney\":[\"0E-8\"]}', '0', '', null);
INSERT INTO `sys_oper_log` VALUES ('a943e9b075d7ea30fded915e282b4cd8', '用户账号', '2', 'com.basics.cu.controller.AccountController.editSave()', '1', 'admin', '/cu/account/edit', '58.48.187.18', '湖北 武汉', '{\"customerId\":[\"b29a34627269cadff8063bc6064182d3\"],\"useCoin\":[\"100\"],\"useMoney\":[\"0E-8\"]}', '0', '', null);
INSERT INTO `sys_oper_log` VALUES ('a957d9cb1e51eb2aeda2505f7b23af54', 'DAPPS', '1', 'com.basics.app.controller.DappsController.addSave()', '1', 'admin', '/app/dapps/add', '127.0.0.1', '内网IP', '{\"dappsName\":[\"收到回复\"],\"dappsLogo\":[\"东方红\"],\"dappsImage\":[\"的风格和\"],\"dappsSynopsis\":[\"发的是通过的风格和\"]}', '0', '', null);
INSERT INTO `sys_oper_log` VALUES ('aa0e38865a441458937e7540a1eae021', '用户账号', '2', 'com.basics.cu.controller.AccountController.editSave()', '1', 'admin', '/cu/account/edit', '119.98.217.167', 'XX XX', '{\"customerId\":[\"d1867c2b29aa58538be319763ea8754f\"],\"useCoin\":[\"200\"],\"useMoney\":[\"0E-8\"]}', '0', '', null);
INSERT INTO `sys_oper_log` VALUES ('aae9bcc583925f9bc101e05a0e7d85dc', '用户账号', '2', 'com.basics.cu.controller.AccountController.editSave()', '1', 'admin', '/cu/account/edit', '58.48.187.18', '湖北 武汉', '{\"customerId\":[\"da1342449cc9a4651e705c8a8e3c933a\"],\"useCoin\":[\"100\"],\"useMoney\":[\"0E-8\"]}', '0', '', null);
INSERT INTO `sys_oper_log` VALUES ('ab2ec56914a5284d6cec123f976bec58', '用户账号', '2', 'com.basics.cu.controller.AccountController.editSave()', '1', 'admin', '/cu/account/edit', '58.48.187.18', '湖北 武汉', '{\"customerId\":[\"956f6224d89bffa794b995545b34da2c\"],\"useCoin\":[\"100\"],\"useMoney\":[\"0E-8\"]}', '0', '', null);
INSERT INTO `sys_oper_log` VALUES ('ac5dd795142d692e983cf9080130f112', '投资收益配置', '3', 'com.basics.app.controller.InvestController.remove()', '1', 'admin', '/app/invest/remove', '171.83.87.161', '湖北 武汉', '{\"ids\":[\"111\"]}', '0', '', null);
INSERT INTO `sys_oper_log` VALUES ('acba0b568441ea317fb1bddcaeed676d', '用户账号', '2', 'com.basics.cu.controller.AccountController.editSave()', '1', 'admin', '/cu/account/edit', '122.192.12.230', '江苏 南京', '{\"customerId\":[\"067491f6f4846a943801d529bc8c67ee\"],\"useCoin\":[\"1000\"],\"useMoney\":[\"0E-8\"]}', '0', '', null);
INSERT INTO `sys_oper_log` VALUES ('ad182f735bcc28ea7ba79feea6fd42d9', '用户账号', '2', 'com.basics.cu.controller.AccountController.editSave()', '1', 'admin', '/cu/account/edit', '58.48.187.18', '湖北 武汉', '{\"customerId\":[\"f679202ebe59fd0b0734a5b510ab3912\"],\"useCoin\":[\"1000\"],\"useMoney\":[\"0E-8\"]}', '0', '', null);
INSERT INTO `sys_oper_log` VALUES ('adeb2f7516d1d40aa2664cd5799f6465', '系统初始化', '1', 'com.basics.cu.controller.CustomerController.initStstem()', '1', 'admin', '/cu/customer/initStstem', '122.194.3.237', '江苏 南京', '{\"preNumber\":[\"hello\"],\"phone\":[\"123456\"],\"password\":[\"1\"]}', '0', '', null);
INSERT INTO `sys_oper_log` VALUES ('ae5fc7bfee6e094e43c38f26b78efcbe', '用户账号', '2', 'com.basics.cu.controller.AccountController.editSave()', '1', 'admin', '/cu/account/edit', '58.48.187.18', '湖北 武汉', '{\"customerId\":[\"baa8280aadf6db0be3963bbb6d10337c\"],\"useCoin\":[\"1000\"],\"useMoney\":[\"0E-8\"]}', '0', '', null);
INSERT INTO `sys_oper_log` VALUES ('ae7596697cacdfb6a68fe562aa7ab8cb', '用户账号', '2', 'com.basics.cu.controller.AccountController.editSave()', '1', 'admin', '/cu/account/edit', '171.83.87.161', '湖北 武汉', '{\"customerId\":[\"b74b4a6ca9e7be5e55b158d84b175963\"],\"useCoin\":[\"100\"],\"useMoney\":[\"0E-8\"]}', '0', '', null);
INSERT INTO `sys_oper_log` VALUES ('aeda76e2376acdb975ce0ee7fd1c48a7', '用户账号', '2', 'com.basics.cu.controller.AccountController.editSave()', '1', 'admin', '/cu/account/edit', '58.48.187.18', '湖北 武汉', '{\"customerId\":[\"ccf38e3678ae30573ee44bafbf472fe3\"],\"useCoin\":[\"100\"],\"useMoney\":[\"0E-8\"]}', '0', '', null);
INSERT INTO `sys_oper_log` VALUES ('b06c772f146548bc90b6c4e69a89a59a', '系统初始化', '1', 'com.basics.cu.controller.CustomerController.initStstem()', '1', 'admin', '/cu/customer/initStstem', '58.48.187.18', '湖北 武汉', '{\"preNumber\":[\"hello\"],\"phone\":[\"123456\"],\"password\":[\"1\"]}', '0', '', null);
INSERT INTO `sys_oper_log` VALUES ('b14679bc56bca0d3ac34d2c57a3c808f', '角色管理', '2', 'com.basics.system.controller.RoleController.editSave()', '1', 'admin', '/system/role/edit', '127.0.0.1', '内网IP', '{\"roleId\":[\"1\"],\"roleName\":[\"管理员\"],\"roleKey\":[\"admin\"],\"roleSort\":[\"1\"],\"roleStatus\":[\"1\"],\"remark\":[\"超级管理员\"],\"menuIds\":[\"\"]}', '0', '', null);
INSERT INTO `sys_oper_log` VALUES ('b252284663b532aff19983aed4a1a4b5', '用户账号', '2', 'com.basics.cu.controller.AccountController.editSave()', '1', 'admin', '/cu/account/edit', '122.194.3.237', '江苏 南京', '{\"customerId\":[\"95c4e843a11029737227a63a4b92444d\"],\"useCoin\":[\"0\"],\"useMoney\":[\"0E-8\"]}', '0', '', null);
INSERT INTO `sys_oper_log` VALUES ('b31b54e50992b9f97bafb642cbac0c5a', '批量注册', '1', 'com.basics.cu.controller.CustomerController.bitchRegiestSave()', '1', 'admin', '/cu/customer/bitchRegiest', '119.98.217.167', '湖北 武汉', '{\"parentNumber\":[\"hello\"],\"preNumber\":[\"a\"],\"phone\":[\"123456\"],\"password\":[\"1\"],\"num\":[\"3\"],\"type\":[\"1\"]}', '0', '', null);
INSERT INTO `sys_oper_log` VALUES ('b37dd4a12d2c2e7d4f4a734f328e0e79', '用户账号', '2', 'com.basics.cu.controller.AccountController.editSave()', '1', 'admin', '/cu/account/edit', '58.48.187.18', '湖北 武汉', '{\"customerId\":[\"bc043e4ea2c73ad34d27233469f4e86c\"],\"useCoin\":[\"1000\"],\"useMoney\":[\"0E-8\"]}', '0', '', null);
INSERT INTO `sys_oper_log` VALUES ('b443ddd97e965e2dd930e7529822e798', '用户账号', '2', 'com.basics.cu.controller.AccountController.editSave()', '1', 'admin', '/cu/account/edit', '58.48.187.18', '湖北 武汉', '{\"customerId\":[\"1d22f31da37783ba419a7ecca4658214\"],\"useCoin\":[\"1000\"],\"useMoney\":[\"0E-8\"]}', '0', '', null);
INSERT INTO `sys_oper_log` VALUES ('b46f55cbdc115f9888cd133a337c22fc', '批量注册', '1', 'com.basics.cu.controller.CustomerController.bitchRegiestSave()', '1', 'admin', '/cu/customer/bitchRegiest', '119.98.217.167', '湖北 武汉', '{\"parentNumber\":[\"a0\"],\"preNumber\":[\"1\"],\"phone\":[\"123456\"],\"password\":[\"1\"],\"num\":[\"3\"],\"type\":[\"2\"]}', '0', '', null);
INSERT INTO `sys_oper_log` VALUES ('b511cef04969f90b423056d657544a79', '系统初始化', '1', 'com.basics.cu.controller.CustomerController.initStstem()', '1', 'admin', '/cu/customer/initStstem', '119.98.217.167', '湖北 武汉', '{\"preNumber\":[\"hello\"],\"phone\":[\"13812341234\"],\"password\":[\"1\"]}', '0', '', null);
INSERT INTO `sys_oper_log` VALUES ('b6a4318cca8205c4bc34e138299a39f9', '用户账号', '2', 'com.basics.cu.controller.AccountController.editSave()', '1', 'admin', '/cu/account/edit', '58.48.187.18', '湖北 武汉', '{\"customerId\":[\"ccf38e3678ae30573ee44bafbf472fe3\"],\"useCoin\":[\"0\"],\"useMoney\":[\"0E-8\"]}', '0', '', null);
INSERT INTO `sys_oper_log` VALUES ('b7d2e23a57a3039f8f386c47ca316178', '批量注册', '1', 'com.basics.cu.controller.CustomerController.bitchRegiestSave()', '1', 'admin', '/cu/customer/bitchRegiest', '122.194.3.237', '江苏 南京', '{\"parentNumber\":[\"12\"],\"preNumber\":[\"12\"],\"phone\":[\"123456\"],\"password\":[\"1\"],\"num\":[\"3\"],\"type\":[\"1\"]}', '0', '', null);
INSERT INTO `sys_oper_log` VALUES ('b807cf6ed4b5f5dce3c78002cf92a33f', '系统初始化', '1', 'com.basics.cu.controller.CustomerController.initStstem()', '1', 'admin', '/cu/customer/initStstem', '122.192.12.230', '江苏 南京', '{\"preNumber\":[\"hello\"],\"phone\":[\"123456\"],\"password\":[\"1\"]}', '0', '', null);
INSERT INTO `sys_oper_log` VALUES ('b8a532a4179755c1ff429d3a7aaa2c35', '用户账号', '2', 'com.basics.cu.controller.AccountController.editSave()', '1', 'admin', '/cu/account/edit', '119.98.217.167', '湖北 武汉', '{\"customerId\":[\"dfc5ca45a32e40a4e2f15a7907011f96\"],\"useCoin\":[\"1000\"],\"useMoney\":[\"0E-8\"]}', '0', '', null);
INSERT INTO `sys_oper_log` VALUES ('b8c3b5c3f2ac6fb2e849b80ddfe52174', '批量注册', '1', 'com.basics.cu.controller.CustomerController.bitchRegiestSave()', '1', 'admin', '/cu/customer/bitchRegiest', '58.48.187.18', '湖北 武汉', '{\"parentNumber\":[\"a1\"],\"preNumber\":[\"b\"],\"phone\":[\"123456\"],\"password\":[\"1\"],\"num\":[\"3\"],\"type\":[\"2\"]}', '0', '', null);
INSERT INTO `sys_oper_log` VALUES ('b9615a273d750781e9861ea0bb640497', '用户账号', '2', 'com.basics.cu.controller.AccountController.editSave()', '1', 'admin', '/cu/account/edit', '119.98.217.167', '湖北 武汉', '{\"customerId\":[\"ef2e3e6b5a4faeec0c795f357ea912dd\"],\"useCoin\":[\"100\"],\"useMoney\":[\"0E-8\"]}', '0', '', null);
INSERT INTO `sys_oper_log` VALUES ('b98aacc35432be8f12754309755f127c', '用户账号', '2', 'com.basics.cu.controller.AccountController.editSave()', '1', 'admin', '/cu/account/edit', '58.48.187.18', '湖北 武汉', '{\"customerId\":[\"68b60fcee57f1562d94843efa5916e6b\"],\"useCoin\":[\"1000\"],\"useMoney\":[\"0E-8\"]}', '0', '', null);
INSERT INTO `sys_oper_log` VALUES ('ba5b9582ce8798e7bd5483a1d13a4ec7', '系统初始化', '1', 'com.basics.cu.controller.CustomerController.initStstem()', '1', 'admin', '/cu/customer/initStstem', '58.48.187.18', '湖北 武汉', '{\"preNumber\":[\"hello\"],\"phone\":[\"123456\"],\"password\":[\"1\"]}', '0', '', null);
INSERT INTO `sys_oper_log` VALUES ('bb84e4057a97df44dda8c12db4a148cc', '用户账号', '2', 'com.basics.cu.controller.AccountController.editSave()', '1', 'admin', '/cu/account/edit', '58.48.187.18', '湖北 武汉', '{\"customerId\":[\"4b06bafdddda4d85620fb3a905c2fab2\"],\"useCoin\":[\"1000\"],\"useMoney\":[\"0E-8\"]}', '0', '', null);
INSERT INTO `sys_oper_log` VALUES ('bba67741c6a97ffe87b78082a4776096', '用户管理', '2', 'com.basics.system.controller.UserController.editSave()', '1', 'admin', '/system/user/edit', '127.0.0.1', '内网IP', '{\"userId\":[\"2909718f20b9de3efa546fbe1d3300d2\"],\"userName\":[\"1111\"],\"userEmail\":[\"11111@qq.com\"],\"userPhone\":[\"15207180221\"],\"userSex\":[\"0\"],\"userStatus\":[\"0\"],\"remark\":[\"测试\"],\"roleIds\":[\"1\"]}', '0', '', null);
INSERT INTO `sys_oper_log` VALUES ('bbf79b675996c06661c1abfb2292ff34', '批量注册', '1', 'com.basics.cu.controller.CustomerController.bitchRegiestSave()', '1', 'admin', '/cu/customer/bitchRegiest', '58.48.187.18', '湖北 武汉', '{\"parentNumber\":[\"a1\"],\"preNumber\":[\"w\"],\"phone\":[\"123456\"],\"password\":[\"1\"],\"num\":[\"3\"],\"type\":[\"1\"]}', '0', '', null);
INSERT INTO `sys_oper_log` VALUES ('bc352c55de50c63ab39d5b0f2df507cc', '用户账号', '2', 'com.basics.cu.controller.AccountController.editSave()', '1', 'admin', '/cu/account/edit', '183.13.203.72', '广东 深圳', '{\"customerId\":[\"544ebf641dd59649785e6b17dde474ae\"],\"useCoin\":[\"1000\"],\"useMoney\":[\"0E-8\"]}', '0', '', null);
INSERT INTO `sys_oper_log` VALUES ('bc960397093e73f7c951ce0bc353cce8', '用户账号', '2', 'com.basics.cu.controller.AccountController.editSave()', '1', 'admin', '/cu/account/edit', '122.192.12.230', '江苏 南京', '{\"customerId\":[\"d70527daa2e0c3ea625aea5296675b79\"],\"useCoin\":[\"0\"],\"useMoney\":[\"0E-8\"]}', '0', '', null);
INSERT INTO `sys_oper_log` VALUES ('bcc256782570d899739afce7f36c7328', '用户账号', '2', 'com.basics.cu.controller.AccountController.editSave()', '1', 'admin', '/cu/account/edit', '122.194.3.237', '江苏 南京', '{\"customerId\":[\"f7bc0a953e9e40a1a3c6e4461665c39e\"],\"useCoin\":[\"1000\"],\"useMoney\":[\"0E-8\"]}', '0', '', null);
INSERT INTO `sys_oper_log` VALUES ('be76fe077c7be47328829ef97d57310c', '用户账号', '2', 'com.basics.cu.controller.AccountController.editSave()', '1', 'admin', '/cu/account/edit', '171.83.87.161', '湖北 武汉', '{\"customerId\":[\"72f6a41c4c4beb20c5d65e662eafd49a\"],\"useCoin\":[\"1000\"],\"useMoney\":[\"0E-8\"]}', '0', '', null);
INSERT INTO `sys_oper_log` VALUES ('bed7de519d17d7e46a062ce42d052e1b', '会员等级', '2', 'com.basics.app.controller.LevelController.editSave()', '1', 'admin', '/app/Level/edit', '171.83.87.161', '湖北 武汉', '{\"levelId\":[\"6\"],\"levelName\":[\"五星会员\"],\"salfNum\":[\"3\"],\"teamSale\":[\"500000.00000000\"],\"rateNum\":[\"0.0000\"],\"totalRate\":[\"0.05\"]}', '0', '', null);
INSERT INTO `sys_oper_log` VALUES ('befe9e0419351b3f053e635e7a6a5b21', '节点收益配置', '1', 'com.basics.app.controller.TeamRewardController.addSave()', '1', 'admin', '/app/teamReward/add', '171.83.87.161', '湖北 武汉', '{\"selfNum\":[\"9\"],\"rewardRate\":[\"0.02\"],\"generationNum\":[\"9\"]}', '0', '', null);
INSERT INTO `sys_oper_log` VALUES ('c0fdb7c81bf361c1d44b9c901cf79902', '用户账号', '2', 'com.basics.cu.controller.AccountController.editSave()', '1', 'admin', '/cu/account/edit', '58.48.187.18', '湖北 武汉', '{\"customerId\":[\"dced5d3e0b19b5329f5155d134a66c52\"],\"useCoin\":[\"1000\"],\"useMoney\":[\"0E-8\"]}', '0', '', null);
INSERT INTO `sys_oper_log` VALUES ('c1a07fd4ddafdf60337558c041049432', '会员等级', '2', 'com.basics.app.controller.LevelController.editSave()', '1', 'admin', '/app/Level/edit', '58.48.187.18', '湖北 武汉', '{\"levelId\":[\"2\"],\"levelName\":[\"一星会员\"],\"salfNum\":[\"3\"],\"teamSale\":[\"1000.00000000\"],\"rateNum\":[\"0.0500\"],\"totalRate\":[\"0.00\"]}', '0', '', null);
INSERT INTO `sys_oper_log` VALUES ('c1b272b95c3467b0197e1e711df8b42c', '用户账号', '2', 'com.basics.cu.controller.AccountController.editSave()', '1', 'admin', '/cu/account/edit', '171.83.87.161', '湖北 武汉', '{\"customerId\":[\"72270020fe18c831d4d806bbaf0a2da4\"],\"useCoin\":[\"100\"],\"useMoney\":[\"0E-8\"]}', '0', '', null);
INSERT INTO `sys_oper_log` VALUES ('c1fc8fec18a49132d123534e6489a6d9', '节点收益配置', '1', 'com.basics.app.controller.TeamRewardController.addSave()', '1', 'admin', '/app/teamReward/add', '171.83.87.161', 'XX XX', '{\"selfNum\":[\"14\"],\"rewardRate\":[\"0.01\"],\"generationNum\":[\"14\"]}', '0', '', null);
INSERT INTO `sys_oper_log` VALUES ('c2f691721b9ffa85ad3458b6211ba087', '批量注册', '1', 'com.basics.cu.controller.CustomerController.bitchRegiestSave()', '1', 'admin', '/cu/customer/bitchRegiest', '58.48.187.18', '湖北 武汉', '{\"parentNumber\":[\"a1\"],\"preNumber\":[\"a1\"],\"phone\":[\"123\"],\"password\":[\"1\"],\"num\":[\"3\"],\"type\":[\"2\"]}', '0', '', null);
INSERT INTO `sys_oper_log` VALUES ('c343c98b8baef6e2f90462975268c53c', '代码生成', '8', 'com.basics.system.controller.tool.GenController.genCode()', '1', 'admin', '/tool/gen/genCode/cu_customer', '127.0.0.1', '内网IP', '{}', '0', '', null);
INSERT INTO `sys_oper_log` VALUES ('c364748d056c169be4cae17cfe61beaf', '节点收益配置', '3', 'com.basics.app.controller.TeamRewardController.remove()', '1', 'admin', '/app/teamReward/remove', '171.83.87.161', '湖北 武汉', '{\"ids\":[\"83a1a578a38fe3f39a4258fa043df1ca\"]}', '0', '', null);
INSERT INTO `sys_oper_log` VALUES ('c406e8fc2d339407793082c7476da44e', '用户账号', '2', 'com.basics.cu.controller.AccountController.editSave()', '1', 'admin', '/cu/account/edit', '58.48.187.18', '湖北 武汉', '{\"customerId\":[\"f4aea4fdf2863a35b63855f4fe823eef\"],\"useCoin\":[\"1000\"],\"useMoney\":[\"0E-8\"]}', '0', '', null);
INSERT INTO `sys_oper_log` VALUES ('c40e167f7fc3bd2bf27faeea1e4f60d0', '直推收益配置', '2', 'com.basics.app.controller.SaleRewardController.editSave()', '1', 'admin', '/app/saleReward/edit', '171.83.87.161', '湖北 武汉', '{\"saleTeamId\":[\"asgdfgjhfghjsfdghd\"],\"firstRate\":[\"0.05\"],\"secondRate\":[\"0.03\"],\"thirdRate\":[\"0.02\"]}', '0', '', null);
INSERT INTO `sys_oper_log` VALUES ('c41f2ee7b2e3a878385a0b2843b6ae3a', '静态释放', '1', 'com.basics.cu.controller.CustomerController.staticReleaseReward()', '1', 'admin', '/cu/customer/staticReleaseReward', '171.83.87.161', '湖北 武汉', '{}', '0', '', null);
INSERT INTO `sys_oper_log` VALUES ('c42677663da290b1a03359063f4a162d', '用户账号', '2', 'com.basics.cu.controller.AccountController.editSave()', '1', 'admin', '/cu/account/edit', '58.48.187.18', '湖北 武汉', '{\"customerId\":[\"b66b6add5b16bf1a54e4692d50e6b8f6\"],\"useCoin\":[\"1000\"],\"useMoney\":[\"0E-8\"]}', '0', '', null);
INSERT INTO `sys_oper_log` VALUES ('c4861a8c11112fdbde291b693cb468fa', '用户账号', '2', 'com.basics.cu.controller.AccountController.editSave()', '1', 'admin', '/cu/account/edit', '119.98.217.167', 'XX XX', '{\"customerId\":[\"dd755613b92610179803110ba4168f0c\"],\"useCoin\":[\"100\"],\"useMoney\":[\"0E-8\"]}', '0', '', null);
INSERT INTO `sys_oper_log` VALUES ('c4a299c882c9700633fed266352357e5', '用户账号', '2', 'com.basics.cu.controller.AccountController.editSave()', '1', 'admin', '/cu/account/edit', '122.192.12.230', '江苏 南京', '{\"customerId\":[\"69474b88d738031fedc955aab261a440\"],\"useCoin\":[\"1000\"],\"useMoney\":[\"0E-8\"]}', '0', '', null);
INSERT INTO `sys_oper_log` VALUES ('c4ac3d2621b3707dc68d037c98c90040', '用户账号', '2', 'com.basics.cu.controller.AccountController.editSave()', '1', 'admin', '/cu/account/edit', '58.48.187.18', 'XX XX', '{\"customerId\":[\"da1342449cc9a4651e705c8a8e3c933a\"],\"useCoin\":[\"1.13661203\"],\"useMoney\":[\"0E-8\"]}', '0', '', null);
INSERT INTO `sys_oper_log` VALUES ('c6a8691b700f7f0e6be3bcb4e2ad6360', '用户账号', '2', 'com.basics.cu.controller.AccountController.editSave()', '1', 'admin', '/cu/account/edit', '119.98.217.167', '湖北 武汉', '{\"customerId\":[\"96b1772bacef66d6ae0b0f69d2f26c38\"],\"useCoin\":[\"1000\"],\"useMoney\":[\"0E-8\"]}', '0', '', null);
INSERT INTO `sys_oper_log` VALUES ('c7ba7f89db4d7cf493131474c2128d62', '用户账号', '2', 'com.basics.cu.controller.AccountController.editSave()', '1', 'admin', '/cu/account/edit', '171.83.87.161', '湖北 武汉', '{\"customerId\":[\"00c36dc38bad6165b183a146a0cfec22\"],\"useCoin\":[\"100\"],\"useMoney\":[\"0E-8\"]}', '0', '', null);
INSERT INTO `sys_oper_log` VALUES ('c7c627e869fd31a34d1715c733878784', '用户账号', '2', 'com.basics.cu.controller.AccountController.editSave()', '1', 'admin', '/cu/account/edit', '122.192.12.230', '江苏 南京', '{\"customerId\":[\"0df0474473a9d3dd69ff9b77c1bd96af\"],\"useCoin\":[\"200\"],\"useMoney\":[\"0E-8\"]}', '0', '', null);
INSERT INTO `sys_oper_log` VALUES ('c7daf65bf108b0348367d854f19c896a', '用户账号', '2', 'com.basics.cu.controller.AccountController.editSave()', '1', 'admin', '/cu/account/edit', '58.48.187.18', '湖北 武汉', '{\"customerId\":[\"c5602c005409caaccde8e0b9d95808d9\"],\"useCoin\":[\"1000\"],\"useMoney\":[\"0E-8\"]}', '0', '', null);
INSERT INTO `sys_oper_log` VALUES ('c8be9370885c9f52af472d3dc028a08d', '批量注册', '1', 'com.basics.cu.controller.CustomerController.bitchRegiestSave()', '1', 'admin', '/cu/customer/bitchRegiest', '119.98.217.167', '湖北 武汉', '{\"parentNumber\":[\"a1\"],\"preNumber\":[\"1\"],\"phone\":[\"123456\"],\"password\":[\"1\"],\"num\":[\"3\"],\"type\":[\"2\"]}', '0', '', null);
INSERT INTO `sys_oper_log` VALUES ('c9386cd3ceb6d7c52104634199325b42', '用户账号', '2', 'com.basics.cu.controller.AccountController.editSave()', '1', 'admin', '/cu/account/edit', '122.194.3.237', '江苏 南京', '{\"customerId\":[\"a4d6f5ae4702655aa1cd87e679a5e38c\"],\"useCoin\":[\"1000\"],\"useMoney\":[\"0E-8\"]}', '0', '', null);
INSERT INTO `sys_oper_log` VALUES ('c9ea207a8d5d554434e5a08c9e5dbcd8', '批量注册', '1', 'com.basics.cu.controller.CustomerController.bitchRegiestSave()', '1', 'admin', '/cu/customer/bitchRegiest', '58.48.187.18', '湖北 武汉', '{\"parentNumber\":[\"hello\"],\"preNumber\":[\"q\"],\"phone\":[\"1234\"],\"password\":[\"1\"],\"num\":[\"3\"],\"type\":[\"1\"]}', '0', '', null);
INSERT INTO `sys_oper_log` VALUES ('ca5fd3e5925ef913c5ef1589ae2a02f1', '用户管理', '2', 'com.basics.system.controller.UserController.editSave()', '1', 'admin', '/system/user/edit', '127.0.0.1', '内网IP', '{\"userId\":[\"2909718f20b9de3efa546fbe1d3300d2\"],\"userName\":[\"1111\"],\"userEmail\":[\"11111@qq.com\"],\"userPhone\":[\"15207180221\"],\"userSex\":[\"0\"],\"userStatus\":[\"0\"],\"remark\":[\"测试\"],\"roleIds\":[\"1\"]}', '0', '', null);
INSERT INTO `sys_oper_log` VALUES ('ca81254200252dc9e9324cabd308b8b9', '用户账号', '2', 'com.basics.cu.controller.AccountController.editSave()', '1', 'admin', '/cu/account/edit', '58.48.187.18', 'XX XX', '{\"customerId\":[\"7d80f2c4805a51aab6b5b91c35716034\"],\"useCoin\":[\"1000\"],\"useMoney\":[\"0E-8\"]}', '0', '', null);
INSERT INTO `sys_oper_log` VALUES ('cadf107750ca5b0b2403535f90ace9d4', '用户账号', '2', 'com.basics.cu.controller.AccountController.editSave()', '1', 'admin', '/cu/account/edit', '58.48.187.18', '湖北 武汉', '{\"customerId\":[\"31feeadb6a42c5c5f30550d0d006cf1d\"],\"useCoin\":[\"1000\"],\"useMoney\":[\"0E-8\"]}', '0', '', null);
INSERT INTO `sys_oper_log` VALUES ('cb97bef6deb7b85988f6f0dde958992d', '批量注册', '1', 'com.basics.cu.controller.CustomerController.bitchRegiestSave()', '1', 'admin', '/cu/customer/bitchRegiest', '58.48.187.18', '湖北 武汉', '{\"parentNumber\":[\"hello\"],\"preNumber\":[\"a\"],\"phone\":[\"123456\"],\"password\":[\"1\"],\"num\":[\"1\"],\"type\":[\"1\"]}', '0', '', null);
INSERT INTO `sys_oper_log` VALUES ('cbee3c6f31c64fbfb0268e9f8b0d05d1', '用户账号', '2', 'com.basics.cu.controller.AccountController.editSave()', '1', 'admin', '/cu/account/edit', '58.48.187.18', '湖北 武汉', '{\"customerId\":[\"bea7d76d7775b339734a1a11a1a00679\"],\"useCoin\":[\"1000\"],\"useMoney\":[\"0E-8\"]}', '0', '', null);
INSERT INTO `sys_oper_log` VALUES ('cc05482047d5711e0fa870f1fdfb4d86', '静态释放', '1', 'com.basics.cu.controller.CustomerController.staticReleaseReward()', '1', 'admin', '/cu/customer/staticReleaseReward', '58.48.187.18', '湖北 武汉', '{}', '0', '', null);
INSERT INTO `sys_oper_log` VALUES ('cca49b5482c4277f7f422e4571680404', '批量注册', '1', 'com.basics.cu.controller.CustomerController.bitchRegiestSave()', '1', 'admin', '/cu/customer/bitchRegiest', '58.48.187.18', '湖北 武汉', '{\"parentNumber\":[\"10\"],\"preNumber\":[\"q\"],\"phone\":[\"123456\"],\"password\":[\"1\"],\"num\":[\"5\"],\"type\":[\"2\"]}', '0', '', null);
INSERT INTO `sys_oper_log` VALUES ('cccd56e5ff4343b7d012ea16bc61246e', '批量注册', '1', 'com.basics.cu.controller.CustomerController.bitchRegiestSave()', '1', 'admin', '/cu/customer/bitchRegiest', '58.48.187.18', 'XX XX', '{\"parentNumber\":[\"hello\"],\"preNumber\":[\"a\"],\"phone\":[\"123456\"],\"password\":[\"1\"],\"num\":[\"3\"],\"type\":[\"1\"]}', '0', '', null);
INSERT INTO `sys_oper_log` VALUES ('cd2957540a2d0f1f86a952028ac71b3b', '用户账号', '2', 'com.basics.cu.controller.AccountController.editSave()', '1', 'admin', '/cu/account/edit', '171.83.87.161', '湖北 武汉', '{\"customerId\":[\"f65f5bfd8caf0ed7bfb7939cef875fff\"],\"useCoin\":[\"1000\"],\"useMoney\":[\"0E-8\"]}', '0', '', null);
INSERT INTO `sys_oper_log` VALUES ('ce253b9b744231e208336beb450937d6', '用户账号', '2', 'com.basics.cu.controller.AccountController.editSave()', '1', 'admin', '/cu/account/edit', '58.48.187.18', '湖北 武汉', '{\"customerId\":[\"a79e5db616a4dd8ea2cc5887acdd0108\"],\"useCoin\":[\"1000\"],\"useMoney\":[\"0E-8\"]}', '0', '', null);
INSERT INTO `sys_oper_log` VALUES ('ceeb21d9e89da7923a6ff1b85c0e983f', '批量注册', '1', 'com.basics.cu.controller.CustomerController.bitchRegiestSave()', '1', 'admin', '/cu/customer/bitchRegiest', '171.83.87.161', '湖北 武汉', '{\"parentNumber\":[\"hello\"],\"preNumber\":[\"aa\"],\"phone\":[\"12345678\"],\"password\":[\"123456\"],\"num\":[\"3\"],\"type\":[\"1\"]}', '0', '', null);
INSERT INTO `sys_oper_log` VALUES ('cfb7846e641b408358a1e8a28d07a303', '系统初始化', '1', 'com.basics.cu.controller.CustomerController.initStstem()', '1', 'admin', '/cu/customer/initStstem', '171.83.87.161', '湖北 武汉', '{\"preNumber\":[\"hello\"],\"phone\":[\"13812341234\"],\"password\":[\"123456\"]}', '0', '', null);
INSERT INTO `sys_oper_log` VALUES ('cfc8016da1d0519cb15b5d54dbd87798', '节点收益配置', '2', 'com.basics.app.controller.TeamRewardController.editSave()', '1', 'admin', '/app/teamReward/edit', '171.83.87.161', '湖北 武汉', '{\"teamId\":[\"3\"],\"selfNum\":[\"3\"],\"rewardRate\":[\"0.05\"],\"generationNum\":[\"3\"]}', '0', '', null);
INSERT INTO `sys_oper_log` VALUES ('d08376dde3d129fe0f366919b312aa06', '用户账号', '2', 'com.basics.cu.controller.AccountController.editSave()', '1', 'admin', '/cu/account/edit', '58.48.187.18', '湖北 武汉', '{\"customerId\":[\"356749ad7fcaa478609511cdcb976554\"],\"useCoin\":[\"1000\"],\"useMoney\":[\"0E-8\"]}', '0', '', null);
INSERT INTO `sys_oper_log` VALUES ('d0bc32ded67583c1d5fc435a30dd8ad1', '批量注册', '1', 'com.basics.cu.controller.CustomerController.bitchRegiestSave()', '1', 'admin', '/cu/customer/bitchRegiest', '119.98.217.167', 'XX XX', '{\"parentNumber\":[\"hello\"],\"preNumber\":[\"a\"],\"phone\":[\"123456\"],\"password\":[\"1\"],\"num\":[\"2\"],\"type\":[\"1\"]}', '0', '', null);
INSERT INTO `sys_oper_log` VALUES ('d100900a0beb9fee5aa28097947b5623', '用户账号', '2', 'com.basics.cu.controller.AccountController.editSave()', '1', 'admin', '/cu/account/edit', '122.192.12.230', '江苏 南京', '{\"customerId\":[\"2ce1d7e290f7fe74c3d7bd939c53e97a\"],\"useCoin\":[\"1000\"],\"useMoney\":[\"0E-8\"]}', '0', '', null);
INSERT INTO `sys_oper_log` VALUES ('d15a843f5bec2c167e883bd289919629', '角色管理', '2', 'com.basics.system.controller.RoleController.editSave()', '1', 'admin', '/system/role/edit', '127.0.0.1', '内网IP', '{\"roleId\":[\"1\"],\"roleName\":[\"管理员\"],\"roleKey\":[\"admin\"],\"roleSort\":[\"1\"],\"roleStatus\":[\"1\"],\"remark\":[\"超级管理员\"],\"menuIds\":[\"\"]}', '0', '', null);
INSERT INTO `sys_oper_log` VALUES ('d2446795c630bca0d7d1ee5d2f4d6e0d', '批量注册', '1', 'com.basics.cu.controller.CustomerController.bitchRegiestSave()', '1', 'admin', '/cu/customer/bitchRegiest', '119.98.217.167', '湖北 武汉', '{\"parentNumber\":[\"hello\"],\"preNumber\":[\"a\"],\"phone\":[\"123456\"],\"password\":[\"1\"],\"num\":[\"2\"],\"type\":[\"1\"]}', '0', '', null);
INSERT INTO `sys_oper_log` VALUES ('d3515cd6f4105778fa4412fa52dc0a93', '批量注册', '1', 'com.basics.cu.controller.CustomerController.bitchRegiestSave()', '1', 'admin', '/cu/customer/bitchRegiest', '183.13.203.72', '广东 深圳', '{\"parentNumber\":[\"11\"],\"preNumber\":[\"11\"],\"phone\":[\"123456\"],\"password\":[\"1\"],\"num\":[\"3\"],\"type\":[\"1\"]}', '0', '', null);
INSERT INTO `sys_oper_log` VALUES ('d36508b1724adacd3bd018551e1a95da', '节点收益配置', '1', 'com.basics.app.controller.TeamRewardController.addSave()', '1', 'admin', '/app/teamReward/add', '171.83.87.161', '湖北 武汉', '{\"selfNum\":[\"8\"],\"rewardRate\":[\"0.02\"],\"generationNum\":[\"8\"]}', '0', '', null);
INSERT INTO `sys_oper_log` VALUES ('d3a082e64ac418e39de9aa82131a1734', '静态释放', '1', 'com.basics.cu.controller.CustomerController.staticReleaseReward()', '1', 'admin', '/cu/customer/staticReleaseReward', '119.98.217.167', '湖北 武汉', '{}', '0', '', null);
INSERT INTO `sys_oper_log` VALUES ('d3de80a8d119526e573b0b82af8a866c', '静态释放', '1', 'com.basics.cu.controller.CustomerController.staticReleaseReward()', '1', 'admin', '/cu/customer/staticReleaseReward', '58.48.187.18', '湖北 武汉', '{}', '0', '', null);
INSERT INTO `sys_oper_log` VALUES ('d3fa3a8b202159cf45b5dad0654216e7', '批量注册', '1', 'com.basics.cu.controller.CustomerController.bitchRegiestSave()', '1', 'admin', '/cu/customer/bitchRegiest', '119.98.217.167', '湖北 武汉', '{\"parentNumber\":[\"a1\"],\"preNumber\":[\"1\"],\"phone\":[\"123456\"],\"password\":[\"1\"],\"num\":[\"3\"],\"type\":[\"1\"]}', '0', '', null);
INSERT INTO `sys_oper_log` VALUES ('d3fc7916714a07e2a33eea78dac0254c', '批量注册', '1', 'com.basics.cu.controller.CustomerController.bitchRegiestSave()', '1', 'admin', '/cu/customer/bitchRegiest', '171.83.87.161', 'XX XX', '{\"parentNumber\":[\"a1\"],\"preNumber\":[\"1\"],\"phone\":[\"123456\"],\"password\":[\"1\"],\"num\":[\"3\"],\"type\":[\"2\"]}', '0', '', null);
INSERT INTO `sys_oper_log` VALUES ('d441e83b3fe749440dadcd07f8f5182d', '节点收益配置', '1', 'com.basics.app.controller.TeamRewardController.addSave()', '1', 'admin', '/app/teamReward/add', '171.83.87.161', '湖北 武汉', '{\"selfNum\":[\"6\"],\"rewardRate\":[\"0.02\"],\"generationNum\":[\"6\"]}', '0', '', null);
INSERT INTO `sys_oper_log` VALUES ('d4ff69e2f54f777ee57fed77945fceb9', '批量注册', '1', 'com.basics.cu.controller.CustomerController.bitchRegiestSave()', '1', 'admin', '/cu/customer/bitchRegiest', '119.98.217.167', '湖北 武汉', '{\"parentNumber\":[\"a1\"],\"preNumber\":[\"2\"],\"phone\":[\"123456\"],\"password\":[\"1\"],\"num\":[\"3\"],\"type\":[\"2\"]}', '0', '', null);
INSERT INTO `sys_oper_log` VALUES ('d542d29609f77958e3a24423530c1226', '批量注册', '1', 'com.basics.cu.controller.CustomerController.bitchRegiestSave()', '1', 'admin', '/cu/customer/bitchRegiest', '122.194.3.237', '江苏 南京', '{\"parentNumber\":[\"100\"],\"preNumber\":[\"Z\"],\"phone\":[\"123456\"],\"password\":[\"1\"],\"num\":[\"3\"],\"type\":[\"1\"]}', '0', '', null);
INSERT INTO `sys_oper_log` VALUES ('d6385101dc37ba2221d81b12a3b803e1', '用户账号', '2', 'com.basics.cu.controller.AccountController.editSave()', '1', 'admin', '/cu/account/edit', '183.13.203.72', '广东 深圳', '{\"customerId\":[\"7258bbd135bd91f8beaf77467ce6dd30\"],\"useCoin\":[\"0\"],\"useMoney\":[\"0E-8\"]}', '0', '', null);
INSERT INTO `sys_oper_log` VALUES ('d645a6b7e7c48c5624fe785371e7feea', '批量注册', '1', 'com.basics.cu.controller.CustomerController.bitchRegiestSave()', '1', 'admin', '/cu/customer/bitchRegiest', '58.48.187.18', '湖北 武汉', '{\"parentNumber\":[\"a1\"],\"preNumber\":[\"2\"],\"phone\":[\"123456\"],\"password\":[\"1\"],\"num\":[\"3\"],\"type\":[\"2\"]}', '0', '', null);
INSERT INTO `sys_oper_log` VALUES ('d784460471d2ddd1aa9c2edf56960b8b', '节点收益配置', '1', 'com.basics.app.controller.TeamRewardController.addSave()', '1', 'admin', '/app/teamReward/add', '171.83.87.161', '湖北 武汉', '{\"selfNum\":[\"11\"],\"rewardRate\":[\"0.01\"],\"generationNum\":[\"11\"]}', '0', '', null);
INSERT INTO `sys_oper_log` VALUES ('d99f349722653e2af92010f949cdb207', '系统初始化', '1', 'com.basics.cu.controller.CustomerController.initStstem()', '1', 'admin', '/cu/customer/initStstem', '58.48.187.18', '湖北 武汉', '{\"preNumber\":[\"hello\"],\"phone\":[\"123456\"],\"password\":[\"1\"]}', '0', '', null);
INSERT INTO `sys_oper_log` VALUES ('d9ccce92024d2827fea5c36d9ec43176', '角色管理', '2', 'com.basics.system.controller.RoleController.editSave()', '1', 'admin', '/system/role/edit', '127.0.0.1', '内网IP', '{\"roleId\":[\"1\"],\"roleName\":[\"管理员\"],\"roleKey\":[\"admin\"],\"roleSort\":[\"1\"],\"roleStatus\":[\"1\"],\"remark\":[\"超级管理员\"],\"menuIds\":[\"\"]}', '0', '', null);
INSERT INTO `sys_oper_log` VALUES ('d9f8f38cde215b11ac36fc8c9ece4153', '用户账号', '2', 'com.basics.cu.controller.AccountController.editSave()', '1', 'admin', '/cu/account/edit', '171.83.87.161', '湖北 武汉', '{\"customerId\":[\"0e70c6c705f129054dfbf07d0a721dba\"],\"useCoin\":[\"1000\"],\"useMoney\":[\"0E-8\"]}', '0', '', null);
INSERT INTO `sys_oper_log` VALUES ('da86f650683255975071e7e26ad75781', '用户账号', '2', 'com.basics.cu.controller.AccountController.editSave()', '1', 'admin', '/cu/account/edit', '58.48.187.18', '湖北 武汉', '{\"customerId\":[\"19975fb41cfcbc9f335e84bb16745be4\"],\"useCoin\":[\"1000\"],\"useMoney\":[\"0E-8\"]}', '0', '', null);
INSERT INTO `sys_oper_log` VALUES ('db8eb5c3bbbff8cdb0585e3a1f4f85f8', '用户账号', '2', 'com.basics.cu.controller.AccountController.editSave()', '1', 'admin', '/cu/account/edit', '171.83.87.161', '湖北 武汉', '{\"customerId\":[\"3974ecb6e4bd5ff597e91ba1d68469fc\"],\"useCoin\":[\"1000\"],\"useMoney\":[\"0E-8\"]}', '0', '', null);
INSERT INTO `sys_oper_log` VALUES ('dd1c72d79fd3012e206b23c8d01bc155', 'DAPPS', '3', 'com.basics.app.controller.DappsController.remove()', '1', 'admin', '/app/dapps/remove', '171.83.87.161', '湖北 武汉', '{\"ids\":[\"442976c7c5fafbb5e2811ffbdd53c560\"]}', '0', '', null);
INSERT INTO `sys_oper_log` VALUES ('dd2bccd76d3abb5d13d573177d0ed8cc', '用户账号', '2', 'com.basics.cu.controller.AccountController.editSave()', '1', 'admin', '/cu/account/edit', '58.48.187.18', '湖北 武汉', '{\"customerId\":[\"4af46b1d7e46c756be8a6b05d5bd9402\"],\"useCoin\":[\"1000\"],\"useMoney\":[\"0E-8\"]}', '0', '', null);
INSERT INTO `sys_oper_log` VALUES ('dd9ac646a5139c59053b487feb480928', '用户账号', '2', 'com.basics.cu.controller.AccountController.editSave()', '1', 'admin', '/cu/account/edit', '119.98.217.167', '湖北 武汉', '{\"customerId\":[\"e750a5e4d62e21d92020cbfd1ba6ad7b\"],\"useCoin\":[\"100\"],\"useMoney\":[\"0E-8\"]}', '0', '', null);
INSERT INTO `sys_oper_log` VALUES ('ddbb1590c8517fda4b3b2f0f694b5849', '静态释放', '1', 'com.basics.cu.controller.CustomerController.staticReleaseReward()', '1', 'admin', '/cu/customer/staticReleaseReward', '58.48.187.18', '湖北 武汉', '{}', '0', '', null);
INSERT INTO `sys_oper_log` VALUES ('ddbd24cb04d139705c658c8e106052c9', '系统初始化', '1', 'com.basics.cu.controller.CustomerController.initStstem()', '1', 'admin', '/cu/customer/initStstem', '171.83.87.161', 'XX XX', '{\"preNumber\":[\"hello\"],\"phone\":[\"13812341234\"],\"password\":[\"1\"]}', '0', '', null);
INSERT INTO `sys_oper_log` VALUES ('ddbe8743bbd556c89adfe345632b2d9c', '用户账号', '2', 'com.basics.cu.controller.AccountController.editSave()', '1', 'admin', '/cu/account/edit', '122.192.12.230', '江苏 南京', '{\"customerId\":[\"4067d6d4a5eb90e6db9d370aa1ec6b79\"],\"useCoin\":[\"100\"],\"useMoney\":[\"0E-8\"]}', '0', '', null);
INSERT INTO `sys_oper_log` VALUES ('de29b1b30edca1f8c53f12d29797deff', '用户账号', '2', 'com.basics.cu.controller.AccountController.editSave()', '1', 'admin', '/cu/account/edit', '58.48.187.18', '湖北 武汉', '{\"customerId\":[\"218bf120fac674f4e4edbfcc7a817ab3\"],\"useCoin\":[\"1000\"],\"useMoney\":[\"0E-8\"]}', '0', '', null);
INSERT INTO `sys_oper_log` VALUES ('de3143b2b902f5e5e9549ac6c7151bfd', '会员等级', '2', 'com.basics.app.controller.LevelController.editSave()', '1', 'admin', '/app/Level/edit', '58.48.187.18', '湖北 武汉', '{\"levelId\":[\"5\"],\"levelName\":[\"四星会员\"],\"salfNum\":[\"3\"],\"teamSale\":[\"12000.00000000\"],\"rateNum\":[\"0.2000\"],\"totalRate\":[\"0.00\"]}', '0', '', null);
INSERT INTO `sys_oper_log` VALUES ('df08837fb56345228dfa692eaa48eb76', '投资收益配置', '2', 'com.basics.app.controller.InvestController.editSave()', '1', 'admin', '/app/invest/edit', '171.83.87.161', '湖北 武汉', '{\"investId\":[\"111\"],\"dappsId\":[\"442976c7c5fafbb5e2811ffbdd53c560\"],\"minAmount\":[\"100.00000000\"],\"maxAmount\":[\"10000.00000000\"],\"investRate\":[\"0.30000000\"],\"investCycle\":[\"6\"]}', '0', '', null);
INSERT INTO `sys_oper_log` VALUES ('dfce24f0e217bf183990f8cad36ce750', '用户账号', '2', 'com.basics.cu.controller.AccountController.editSave()', '1', 'admin', '/cu/account/edit', '122.194.3.237', '江苏 南京', '{\"customerId\":[\"a92aa9fe3e1120c2fc54bb60299f3482\"],\"useCoin\":[\"1000\"],\"useMoney\":[\"0E-8\"]}', '0', '', null);
INSERT INTO `sys_oper_log` VALUES ('dffe20c4444dbd239b5636b215f8d614', '系统初始化', '1', 'com.basics.cu.controller.CustomerController.initStstem()', '1', 'admin', '/cu/customer/initStstem', '119.98.217.167', '湖北 武汉', '{\"preNumber\":[\"hello\"],\"phone\":[\"\\t13812341234\"],\"password\":[\"1\"]}', '1', '\n### Error updating database.  Cause: com.mysql.jdbc.MysqlDataTruncation: Data truncation: Data too long for column \'CUSTOMER_PHONE\' at row 1\n### The error may involve com.basics.cu.mapper.CustomerMapper.insert-Inline\n### The error occurred while setting parameters\n### SQL: INSERT INTO cu_customer  ( CUSTOMER_ID, customer_number, customer_password, pass_salt, customer_name,  customer_phone, invite_code, referee_id, customer_status,      create_user, create_time )  VALUES  ( ?, ?, ?, ?, ?,  ?, ?, ?, ?,      ?, ? )\n### Cause: com.mysql.jdbc.MysqlDataTruncation: Data truncation: Data too long for column \'CUSTOMER_PHONE\' at row 1\n; ]; Data truncation: Data too long for column \'CUSTOMER_PHONE\' at row 1; nested exception is com.mysql.jdbc.MysqlDataTruncation: Data truncation: Data too long for column \'CUSTOMER_PHONE\' at row 1', null);
INSERT INTO `sys_oper_log` VALUES ('e03291b8136007383ebbf97b3d5d2944', '用户账号', '2', 'com.basics.cu.controller.AccountController.editSave()', '1', 'admin', '/cu/account/edit', '58.48.187.18', '湖北 武汉', '{\"customerId\":[\"c74bc59842d805593ce2ee66dc0e9d0b\"],\"useCoin\":[\"1000\"],\"useMoney\":[\"0E-8\"]}', '0', '', null);
INSERT INTO `sys_oper_log` VALUES ('e0a9c852491864857678258c09c09cf7', '用户账号', '2', 'com.basics.cu.controller.AccountController.editSave()', '1', 'admin', '/cu/account/edit', '183.13.203.72', '广东 深圳', '{\"customerId\":[\"7fb0e38301200fa38dc621cbcd192818\"],\"useCoin\":[\"1000\"],\"useMoney\":[\"0E-8\"]}', '0', '', null);
INSERT INTO `sys_oper_log` VALUES ('e0e1d45df463bc6e8513e905254c0eaa', '用户账号', '2', 'com.basics.cu.controller.AccountController.editSave()', '1', 'admin', '/cu/account/edit', '119.98.217.167', '湖北 武汉', '{\"customerId\":[\"6b429fd67a72f13a032d0ebbd2719a27\"],\"useCoin\":[\"1000\"],\"useMoney\":[\"0E-8\"]}', '0', '', null);
INSERT INTO `sys_oper_log` VALUES ('e1b103fde42cc3eb76e3041eee5f53ad', '批量注册', '1', 'com.basics.cu.controller.CustomerController.bitchRegiestSave()', '1', 'admin', '/cu/customer/bitchRegiest', '171.83.87.161', 'XX XX', '{\"parentNumber\":[\"a1\"],\"preNumber\":[\"3\"],\"phone\":[\"123456\"],\"password\":[\"1\"],\"num\":[\"3\"],\"type\":[\"2\"]}', '0', '', null);
INSERT INTO `sys_oper_log` VALUES ('e2948563ef21548395ae38d1e89f4b39', '会员等级', '2', 'com.basics.app.controller.LevelController.editSave()', '1', 'admin', '/app/Level/edit', '58.48.187.18', 'XX XX', '{\"levelId\":[\"4\"],\"levelName\":[\"三星会员\"],\"salfNum\":[\"3\"],\"teamSale\":[\"20000.00000000\"],\"rateNum\":[\"0.1500\"],\"totalRate\":[\"0.00\"]}', '0', '', null);
INSERT INTO `sys_oper_log` VALUES ('e33838cf75fdf8e0b4bad013598906af', '批量注册', '1', 'com.basics.cu.controller.CustomerController.bitchRegiestSave()', '1', 'admin', '/cu/customer/bitchRegiest', '119.98.217.167', '湖北 武汉', '{\"parentNumber\":[\"a1\"],\"preNumber\":[\"3\"],\"phone\":[\"123456\"],\"password\":[\"1\"],\"num\":[\"3\"],\"type\":[\"2\"]}', '0', '', null);
INSERT INTO `sys_oper_log` VALUES ('e44468153cc7d519dfb926a92c82f30b', '用户账号', '2', 'com.basics.cu.controller.AccountController.editSave()', '1', 'admin', '/cu/account/edit', '122.192.12.230', '江苏 南京', '{\"customerId\":[\"ac87db38ee74083160a15533e2df699b\"],\"useCoin\":[\"100\"],\"useMoney\":[\"0E-8\"]}', '0', '', null);
INSERT INTO `sys_oper_log` VALUES ('e448ec2a7d21d2824f8739b0332ef0ae', '批量注册', '1', 'com.basics.cu.controller.CustomerController.bitchRegiestSave()', '1', 'admin', '/cu/customer/bitchRegiest', '122.192.12.230', 'XX XX', '{\"parentNumber\":[\"hello\"],\"preNumber\":[\"a\"],\"phone\":[\"123456\"],\"password\":[\"1\"],\"num\":[\"3\"],\"type\":[\"1\"]}', '0', '', null);
INSERT INTO `sys_oper_log` VALUES ('e4aa7ad074cafdd56a6cfdec592b6f8d', '系统初始化', '1', 'com.basics.cu.controller.CustomerController.initStstem()', '1', 'admin', '/cu/customer/initStstem', '171.83.82.227', 'XX XX', '{\"preNumber\":[\"hello\"],\"phone\":[\"13812341234\"],\"password\":[\"123456\"]}', '0', '', null);
INSERT INTO `sys_oper_log` VALUES ('e4d2077659b79828b890439b916c73f8', '系统初始化', '1', 'com.basics.cu.controller.CustomerController.initStstem()', '1', 'admin', '/cu/customer/initStstem', '122.194.3.237', 'XX XX', '{\"preNumber\":[\"hello\"],\"phone\":[\"123456\"],\"password\":[\"1\"]}', '0', '', null);
INSERT INTO `sys_oper_log` VALUES ('e50120b842983704e76a7d35afc368a1', '用户账号', '2', 'com.basics.cu.controller.AccountController.editSave()', '1', 'admin', '/cu/account/edit', '183.13.203.72', '广东 深圳', '{\"customerId\":[\"3731f6d99e9ccf9186953920496e1af7\"],\"useCoin\":[\"1000\"],\"useMoney\":[\"0E-8\"]}', '0', '', null);
INSERT INTO `sys_oper_log` VALUES ('e50a96225a4d82275de1cb392a57204d', '用户账号', '2', 'com.basics.cu.controller.AccountController.editSave()', '1', 'admin', '/cu/account/edit', '119.98.217.167', 'XX XX', '{\"customerId\":[\"4e793f4dc2f26b302f9cd3f00961eda5\"],\"useCoin\":[\"1000\"],\"useMoney\":[\"0E-8\"]}', '0', '', null);
INSERT INTO `sys_oper_log` VALUES ('e55d9295dd49b89d96a92b70a0548e02', '用户账号', '2', 'com.basics.cu.controller.AccountController.editSave()', '1', 'admin', '/cu/account/edit', '58.48.187.18', '湖北 武汉', '{\"customerId\":[\"678b148cdfdadaead229db2600796851\"],\"useCoin\":[\"1000\"],\"useMoney\":[\"0E-8\"]}', '0', '', null);
INSERT INTO `sys_oper_log` VALUES ('e5a382020d6126f4db18b62eeeed45ce', '系统初始化', '1', 'com.basics.cu.controller.CustomerController.initStstem()', '1', 'admin', '/cu/customer/initStstem', '58.48.187.18', '湖北 武汉', '{\"preNumber\":[\"hello\"],\"phone\":[\"13812341234\"],\"password\":[\"1\"]}', '0', '', null);
INSERT INTO `sys_oper_log` VALUES ('e69411b3a0bd379873d6ba336b973fc4', '用户账号', '2', 'com.basics.cu.controller.AccountController.editSave()', '1', 'admin', '/cu/account/edit', '122.192.12.230', '江苏 南京', '{\"customerId\":[\"0f33f29505624b0154e4b0d2321f5767\"],\"useCoin\":[\"100\"],\"useMoney\":[\"0E-8\"]}', '0', '', null);
INSERT INTO `sys_oper_log` VALUES ('e6a107ebbe94f705f64ed196f88b3bdd', '系统初始化', '1', 'com.basics.cu.controller.CustomerController.initStstem()', '1', 'admin', '/cu/customer/initStstem', '171.83.87.161', '湖北 武汉', '{\"preNumber\":[\"hello\"],\"phone\":[\"123456\"],\"password\":[\"1\"]}', '0', '', null);
INSERT INTO `sys_oper_log` VALUES ('e6ad714a0b973927df5ca453ce709a30', '批量注册', '1', 'com.basics.cu.controller.CustomerController.bitchRegiestSave()', '1', 'admin', '/cu/customer/bitchRegiest', '58.48.187.18', 'XX XX', '{\"parentNumber\":[\"100\"],\"preNumber\":[\"z\"],\"phone\":[\"123456\"],\"password\":[\"1\"],\"num\":[\"3\"],\"type\":[\"1\"]}', '0', '', null);
INSERT INTO `sys_oper_log` VALUES ('e72381ce50a1f18bbe5c6a9ec36e8ee4', '用户账号', '2', 'com.basics.cu.controller.AccountController.editSave()', '1', 'admin', '/cu/account/edit', '119.98.217.167', '湖北 武汉', '{\"customerId\":[\"90fca5823110ae1b495fa8280eb4c8fd\"],\"useCoin\":[\"1000\"],\"useMoney\":[\"0E-8\"]}', '0', '', null);
INSERT INTO `sys_oper_log` VALUES ('e72fc28875e3e7ad6d17e2f4cabedd4a', '角色管理', '2', 'com.basics.system.controller.RoleController.editSave()', '1', 'admin', '/system/role/edit', '127.0.0.1', '内网IP', '{\"roleId\":[\"1\"],\"roleName\":[\"管理员\"],\"roleKey\":[\"admin\"],\"roleSort\":[\"1\"],\"roleStatus\":[\"1\"],\"remark\":[\"超级管理员\"],\"menuIds\":[\"\"]}', '0', '', null);
INSERT INTO `sys_oper_log` VALUES ('e7d33d073a40511930ec469433c4cf2e', '用户账号', '2', 'com.basics.cu.controller.AccountController.editSave()', '1', 'admin', '/cu/account/edit', '183.13.203.72', '广东 深圳', '{\"customerId\":[\"1ef3c50b5078ee90f8f1f92d8b37326b\"],\"useCoin\":[\"1000\"],\"useMoney\":[\"0E-8\"]}', '0', '', null);
INSERT INTO `sys_oper_log` VALUES ('e859b6a45d39dee11f478187d1599071', '用户账号', '2', 'com.basics.cu.controller.AccountController.editSave()', '1', 'admin', '/cu/account/edit', '171.83.87.161', '湖北 武汉', '{\"customerId\":[\"d3bfbbdb6ac178e0610bff3a787a4a11\"],\"useCoin\":[\"1000\"],\"useMoney\":[\"0E-8\"]}', '0', '', null);
INSERT INTO `sys_oper_log` VALUES ('e87288caab775622229c251a5d6c9f68', '批量注册', '1', 'com.basics.cu.controller.CustomerController.bitchRegiestSave()', '1', 'admin', '/cu/customer/bitchRegiest', '58.48.187.18', 'XX XX', '{\"parentNumber\":[\"a0\"],\"preNumber\":[\"1\"],\"phone\":[\"123456\"],\"password\":[\"1\"],\"num\":[\"5\"],\"type\":[\"1\"]}', '0', '', null);
INSERT INTO `sys_oper_log` VALUES ('ea23e5f1662f8ee44312256427c218d7', '用户账号', '2', 'com.basics.cu.controller.AccountController.editSave()', '1', 'admin', '/cu/account/edit', '58.48.187.18', '湖北 武汉', '{\"customerId\":[\"b114eaa767dc555d694b42acf37f6fe3\"],\"useCoin\":[\"1000\"],\"useMoney\":[\"0E-8\"]}', '0', '', null);
INSERT INTO `sys_oper_log` VALUES ('ea317d48704365b44e6722a4fd001e04', '用户账号', '2', 'com.basics.cu.controller.AccountController.editSave()', '1', 'admin', '/cu/account/edit', '119.98.217.167', '湖北 武汉', '{\"customerId\":[\"372b15a2451d421027c57e98115c843f\"],\"useCoin\":[\"1000\"],\"useMoney\":[\"0E-8\"]}', '0', '', null);
INSERT INTO `sys_oper_log` VALUES ('ea5e74cd214b6153bf08f72bfcfd1833', '批量注册', '1', 'com.basics.cu.controller.CustomerController.bitchRegiestSave()', '1', 'admin', '/cu/customer/bitchRegiest', '171.83.87.161', '湖北 武汉', '{\"parentNumber\":[\"aa1\"],\"preNumber\":[\"zz\"],\"phone\":[\"1234567\"],\"password\":[\"123456\"],\"num\":[\"3\"],\"type\":[\"2\"]}', '0', '', null);
INSERT INTO `sys_oper_log` VALUES ('ea9faa094699ddb8576718a1f30f903b', '用户账号', '2', 'com.basics.cu.controller.AccountController.editSave()', '1', 'admin', '/cu/account/edit', '119.98.217.167', '湖北 武汉', '{\"customerId\":[\"73e150ae790aadcea5724e4bb5a66ef5\"],\"useCoin\":[\"1000\"],\"useMoney\":[\"0E-8\"]}', '0', '', null);
INSERT INTO `sys_oper_log` VALUES ('ebd144027bc463c31a6eeee66032e460', '批量注册', '1', 'com.basics.cu.controller.CustomerController.bitchRegiestSave()', '1', 'admin', '/cu/customer/bitchRegiest', '58.48.187.18', '湖北 武汉', '{\"parentNumber\":[\"a0\"],\"preNumber\":[\"1\"],\"phone\":[\"123456\"],\"password\":[\"1\"],\"num\":[\"4\"],\"type\":[\"1\"]}', '0', '', null);
INSERT INTO `sys_oper_log` VALUES ('ebf0a9626ba43a250b92b88bbcf5531c', '用户账号', '2', 'com.basics.cu.controller.AccountController.editSave()', '1', 'admin', '/cu/account/edit', '122.194.3.237', '江苏 南京', '{\"customerId\":[\"25d222a976646dfb6744989639bdb01b\"],\"useCoin\":[\"1000\"],\"useMoney\":[\"0E-8\"]}', '0', '', null);
INSERT INTO `sys_oper_log` VALUES ('ec28c92b30d487fd5d51dd97f03a26c2', '批量注册', '1', 'com.basics.cu.controller.CustomerController.bitchRegiestSave()', '1', 'admin', '/cu/customer/bitchRegiest', '122.192.12.230', '江苏 南京', '{\"parentNumber\":[\"hello\"],\"preNumber\":[\"a\"],\"phone\":[\"123456\"],\"password\":[\"1\"],\"num\":[\"1\"],\"type\":[\"1\"]}', '0', '', null);
INSERT INTO `sys_oper_log` VALUES ('ecb88049652e82744247803115c52879', '用户账号', '2', 'com.basics.cu.controller.AccountController.editSave()', '1', 'admin', '/cu/account/edit', '58.48.187.18', '湖北 武汉', '{\"customerId\":[\"19975fb41cfcbc9f335e84bb16745be4\"],\"useCoin\":[\"0\"],\"useMoney\":[\"0E-8\"]}', '0', '', null);
INSERT INTO `sys_oper_log` VALUES ('ed42abf20a920f12ad8f2ead36021927', '代码生成', '8', 'com.basics.system.controller.tool.GenController.genCode()', '1', 'admin', '/tool/gen/genCode/cu_customer', '127.0.0.1', '内网IP', '{}', '0', '', null);
INSERT INTO `sys_oper_log` VALUES ('ee27591083473f4b071671c91be9c2be', '批量注册', '1', 'com.basics.cu.controller.CustomerController.bitchRegiestSave()', '1', 'admin', '/cu/customer/bitchRegiest', '58.48.187.18', '湖北 武汉', '{\"parentNumber\":[\"hello\"],\"preNumber\":[\"a\"],\"phone\":[\"123456\"],\"password\":[\"1\"],\"num\":[\"1\"],\"type\":[\"1\"]}', '0', '', null);
INSERT INTO `sys_oper_log` VALUES ('ee3b668033a02dd132792096414383b7', '用户管理', '2', 'com.basics.system.controller.UserController.editSave()', '1', 'admin', '/system/user/edit', '127.0.0.1', '内网IP', '{\"userId\":[\"2909718f20b9de3efa546fbe1d3300d2\"],\"userName\":[\"1111\"],\"userEmail\":[\"11111@qq.com\"],\"userPhone\":[\"15207180221\"],\"userSex\":[\"0\"],\"userStatus\":[\"1\"],\"remark\":[\"测试\"],\"roleIds\":[\"1\"]}', '0', '', null);
INSERT INTO `sys_oper_log` VALUES ('eeea8ea5677e3d8dd45e9d9f0137b7e6', '静态释放', '1', 'com.basics.cu.controller.CustomerController.staticReleaseReward()', '1', 'admin', '/cu/customer/staticReleaseReward', '58.48.187.18', '湖北 武汉', '{}', '0', '', null);
INSERT INTO `sys_oper_log` VALUES ('f05f53704fea90c950312c98f8769be9', '会员等级', '2', 'com.basics.app.controller.LevelController.editSave()', '1', 'admin', '/app/Level/edit', '171.83.87.161', '湖北 武汉', '{\"levelId\":[\"3\"],\"levelName\":[\"二星会员\"],\"salfNum\":[\"3\"],\"teamSale\":[\"30000.00000000\"],\"rateNum\":[\"0.1500\"],\"totalRate\":[\"0.00\"]}', '0', '', null);
INSERT INTO `sys_oper_log` VALUES ('f0a30bb82bc496b629c99f357f135cd1', '用户账号', '2', 'com.basics.cu.controller.AccountController.editSave()', '1', 'admin', '/cu/account/edit', '58.48.187.18', '湖北 武汉', '{\"customerId\":[\"3550290137857711724c04ffa50c3e0f\"],\"useCoin\":[\"0\"],\"useMoney\":[\"0E-8\"]}', '0', '', null);
INSERT INTO `sys_oper_log` VALUES ('f0b7ee25374dd24fe35962bce7668a31', '用户账号', '2', 'com.basics.cu.controller.AccountController.editSave()', '1', 'admin', '/cu/account/edit', '119.98.217.167', '湖北 武汉', '{\"customerId\":[\"dd755613b92610179803110ba4168f0c\"],\"useCoin\":[\"1000\"],\"useMoney\":[\"0E-8\"]}', '0', '', null);
INSERT INTO `sys_oper_log` VALUES ('f0be3a4ae7886744c39dfb7e7f7c03d6', '用户账号', '2', 'com.basics.cu.controller.AccountController.editSave()', '1', 'admin', '/cu/account/edit', '122.194.3.237', '江苏 南京', '{\"customerId\":[\"02c1280acd6ee911ff1368cd007c8e2d\"],\"useCoin\":[\"1000\"],\"useMoney\":[\"0E-8\"]}', '0', '', null);
INSERT INTO `sys_oper_log` VALUES ('f10742840b68f8e8e2829dd7b285b635', '静态释放', '1', 'com.basics.cu.controller.CustomerController.staticReleaseReward()', '1', 'admin', '/cu/customer/staticReleaseReward', '119.98.217.167', '湖北 武汉', '{}', '0', '', null);
INSERT INTO `sys_oper_log` VALUES ('f1e18faceb1194d7b691c0e8358f7060', '会员等级', '2', 'com.basics.app.controller.LevelController.editSave()', '1', 'admin', '/app/Level/edit', '58.48.187.18', 'XX XX', '{\"levelId\":[\"3\"],\"levelName\":[\"二星会员\"],\"salfNum\":[\"3\"],\"teamSale\":[\"5000.00000000\"],\"rateNum\":[\"0.1000\"],\"totalRate\":[\"0.00\"]}', '0', '', null);
INSERT INTO `sys_oper_log` VALUES ('f26a25585bdb3329bf8f8107108c65d3', '用户账号', '2', 'com.basics.cu.controller.AccountController.editSave()', '1', 'admin', '/cu/account/edit', '122.192.12.230', '江苏 南京', '{\"customerId\":[\"02fc0287563d7a82c03bebe54d19e8ba\"],\"useCoin\":[\"100\"],\"useMoney\":[\"0E-8\"]}', '0', '', null);
INSERT INTO `sys_oper_log` VALUES ('f2a8a6c046a7c0a65a122f40b8a2ebe5', '用户账号', '2', 'com.basics.cu.controller.AccountController.editSave()', '1', 'admin', '/cu/account/edit', '122.194.3.237', '江苏 南京', '{\"customerId\":[\"87be489f532cf1b5a2c9239d74bed0d8\"],\"useCoin\":[\"0\"],\"useMoney\":[\"0E-8\"]}', '0', '', null);
INSERT INTO `sys_oper_log` VALUES ('f2cca9754bb6fe8e0b4fa51cdc16cddf', '用户账号', '2', 'com.basics.cu.controller.AccountController.editSave()', '1', 'admin', '/cu/account/edit', '171.83.87.161', '湖北 武汉', '{\"customerId\":[\"5c9a8a7b5a9df9912840d5ddecc530a1\"],\"useCoin\":[\"1000\"],\"useMoney\":[\"0E-8\"]}', '0', '', null);
INSERT INTO `sys_oper_log` VALUES ('f3a0c94a0cd69afb14c2c08161dd3914', '用户账号', '2', 'com.basics.cu.controller.AccountController.editSave()', '1', 'admin', '/cu/account/edit', '58.48.187.18', '湖北 武汉', '{\"customerId\":[\"ee60ccc4612c94b52b84ef699883ff9e\"],\"useCoin\":[\"100\"],\"useMoney\":[\"0E-8\"]}', '0', '', null);
INSERT INTO `sys_oper_log` VALUES ('f3a4be64a16d72843ef6a9a62c36d1d3', '批量注册', '1', 'com.basics.cu.controller.CustomerController.bitchRegiestSave()', '1', 'admin', '/cu/customer/bitchRegiest', '122.192.12.230', '江苏 南京', '{\"parentNumber\":[\"hello\"],\"preNumber\":[\"a\"],\"phone\":[\"123456\"],\"password\":[\"1\"],\"num\":[\"5\"],\"type\":[\"1\"]}', '0', '', null);
INSERT INTO `sys_oper_log` VALUES ('f42bf560d6f88d663de8f5b0ac996eb2', '系统初始化', '1', 'com.basics.cu.controller.CustomerController.initStstem()', '1', 'admin', '/cu/customer/initStstem', '58.48.187.18', '湖北 武汉', '{\"preNumber\":[\"hello\"],\"phone\":[\"123456\"],\"password\":[\"1\"]}', '0', '', null);
INSERT INTO `sys_oper_log` VALUES ('f42ec2504acc093cb05321d9084db20b', '批量注册', '1', 'com.basics.cu.controller.CustomerController.bitchRegiestSave()', '1', 'admin', '/cu/customer/bitchRegiest', '183.13.203.72', '广东 深圳', '{\"parentNumber\":[\"12\"],\"preNumber\":[\"12\"],\"phone\":[\"123456\"],\"password\":[\"1\"],\"num\":[\"3\"],\"type\":[\"1\"]}', '0', '', null);
INSERT INTO `sys_oper_log` VALUES ('f4e005dadf8dc825a373c377435831ed', '用户账号', '2', 'com.basics.cu.controller.AccountController.editSave()', '1', 'admin', '/cu/account/edit', '58.48.187.18', '湖北 武汉', '{\"customerId\":[\"01fe017defe4edaef0462b160e0c71ec\"],\"useCoin\":[\"1000\"],\"useMoney\":[\"0E-8\"]}', '0', '', null);
INSERT INTO `sys_oper_log` VALUES ('f5fbf37e222af96b5d49d6d9845cce40', '用户账号', '2', 'com.basics.cu.controller.AccountController.editSave()', '1', 'admin', '/cu/account/edit', '58.48.187.18', '湖北 武汉', '{\"customerId\":[\"1b44d563f166e3c7cd3c523638b5a0b4\"],\"useCoin\":[\"1000\"],\"useMoney\":[\"0E-8\"]}', '0', '', null);
INSERT INTO `sys_oper_log` VALUES ('f67605b2de88d6750c68e69b39bed98b', '用户账号', '2', 'com.basics.cu.controller.AccountController.editSave()', '1', 'admin', '/cu/account/edit', '171.83.87.161', 'XX XX', '{\"customerId\":[\"70bd47839f24f978ef5f663f0e65988e\"],\"useCoin\":[\"1000\"],\"useMoney\":[\"0E-8\"]}', '0', '', null);
INSERT INTO `sys_oper_log` VALUES ('f798048d322ff96de72bc348d5b8d38b', '用户账号', '2', 'com.basics.cu.controller.AccountController.editSave()', '1', 'admin', '/cu/account/edit', '119.98.217.167', '湖北 武汉', '{\"customerId\":[\"be5118c830ca9008dbdb97007cea03f2\"],\"useCoin\":[\"1000\"],\"useMoney\":[\"0E-8\"]}', '0', '', null);
INSERT INTO `sys_oper_log` VALUES ('f7de0f122c25f4fa347e937a279c87a3', '用户账号', '2', 'com.basics.cu.controller.AccountController.editSave()', '1', 'admin', '/cu/account/edit', '122.194.3.237', '江苏 南京', '{\"customerId\":[\"7f16e6ca4934c27bca2298e25790dfea\"],\"useCoin\":[\"1000\"],\"useMoney\":[\"0E-8\"]}', '0', '', null);
INSERT INTO `sys_oper_log` VALUES ('f8de3d19736f7cd838b8df921d474928', '用户账号', '2', 'com.basics.cu.controller.AccountController.editSave()', '1', 'admin', '/cu/account/edit', '119.98.217.167', '湖北 武汉', '{\"customerId\":[\"9fa497edf17ea51bf4f053827c173da8\"],\"useCoin\":[\"1000\"],\"useMoney\":[\"0E-8\"]}', '0', '', null);
INSERT INTO `sys_oper_log` VALUES ('f8e22fc6fb5acd5573a989d948f3e5f0', '用户账号', '2', 'com.basics.cu.controller.AccountController.editSave()', '1', 'admin', '/cu/account/edit', '122.192.12.230', '江苏 南京', '{\"customerId\":[\"86724d5a4dbb4d1d6ea5d44040ab3fd6\"],\"useCoin\":[\"1000\"],\"useMoney\":[\"0E-8\"]}', '0', '', null);
INSERT INTO `sys_oper_log` VALUES ('f8fe72ebf03ab9dcc694b3bbd5d46bbc', '用户账号', '2', 'com.basics.cu.controller.AccountController.editSave()', '1', 'admin', '/cu/account/edit', '58.48.187.18', '湖北 武汉', '{\"customerId\":[\"97e3d553348f16c5d1e069c33a51a881\"],\"useCoin\":[\"100\"],\"useMoney\":[\"0E-8\"]}', '0', '', null);
INSERT INTO `sys_oper_log` VALUES ('f9d8589e648be3f1591753fd2784dd65', '用户账号', '2', 'com.basics.cu.controller.AccountController.editSave()', '1', 'admin', '/cu/account/edit', '58.48.187.18', 'XX XX', '{\"customerId\":[\"9470836c1d8c8ea2db82cf4712241113\"],\"useCoin\":[\"1000\"],\"useMoney\":[\"0E-8\"]}', '0', '', null);
INSERT INTO `sys_oper_log` VALUES ('fbd2eb04957c59a80267e1849da5a0b6', '批量注册', '1', 'com.basics.cu.controller.CustomerController.bitchRegiestSave()', '1', 'admin', '/cu/customer/bitchRegiest', '119.98.217.167', 'XX XX', '{\"parentNumber\":[\"a1\"],\"preNumber\":[\"3\"],\"phone\":[\"123456\"],\"password\":[\"1\"],\"num\":[\"3\"],\"type\":[\"2\"]}', '0', '', null);
INSERT INTO `sys_oper_log` VALUES ('fc9f1bbb04d447f607a5da4225460e50', '用户账号', '2', 'com.basics.cu.controller.AccountController.editSave()', '1', 'admin', '/cu/account/edit', '171.83.87.161', 'XX XX', '{\"customerId\":[\"e323c8d6d091f1b9d65e9cce7b68cd41\"],\"useCoin\":[\"1000\"],\"useMoney\":[\"0E-8\"]}', '0', '', null);
INSERT INTO `sys_oper_log` VALUES ('fca5d9e1655e2274ec7382bdf6ce3958', '系统初始化', '1', 'com.basics.cu.controller.CustomerController.initStstem()', '1', 'admin', '/cu/customer/initStstem', '171.83.87.161', '湖北 武汉', '{\"preNumber\":[\"hello\"],\"phone\":[\"13812341234\"],\"password\":[\"1\"]}', '0', '', null);
INSERT INTO `sys_oper_log` VALUES ('fd61cd5fe1e6afc67d765357bbf325ba', '直推收益配置', '2', 'com.basics.app.controller.SaleRewardController.editSave()', '1', 'admin', '/app/saleReward/edit', '171.83.87.161', '湖北 武汉', '{\"saleTeamId\":[\"asgdfgjhfghjsfdghd\"],\"firstRate\":[\"5\"],\"secondRate\":[\"3\"],\"thirdRate\":[\"2\"]}', '0', '', null);
INSERT INTO `sys_oper_log` VALUES ('fe598bd883b749a1479897f6e419f52e', '批量注册', '1', 'com.basics.cu.controller.CustomerController.bitchRegiestSave()', '1', 'admin', '/cu/customer/bitchRegiest', '119.98.217.167', '湖北 武汉', '{\"parentNumber\":[\"hello\"],\"preNumber\":[\"a\"],\"phone\":[\"123456\"],\"password\":[\"1\"],\"num\":[\"1\"],\"type\":[\"1\"]}', '0', '', null);
INSERT INTO `sys_oper_log` VALUES ('feafe51eeeaff702f8d0dd58d2c77b7f', '节点收益配置', '1', 'com.basics.app.controller.TeamRewardController.addSave()', '1', 'admin', '/app/teamReward/add', '171.83.87.161', '湖北 武汉', '{\"selfNum\":[\"15\"],\"rewardRate\":[\"0.01\"],\"generationNum\":[\"15\"]}', '0', '', null);
INSERT INTO `sys_oper_log` VALUES ('ff595667ee8a38a2b203d81f622f9328', '用户账号', '2', 'com.basics.cu.controller.AccountController.editSave()', '1', 'admin', '/cu/account/edit', '119.98.217.167', '湖北 武汉', '{\"customerId\":[\"8f965b4b14d075e7049ff3b4d3219ec2\"],\"useCoin\":[\"1000\"],\"useMoney\":[\"0E-8\"]}', '0', '', null);
INSERT INTO `sys_oper_log` VALUES ('ff6aaedd9dec7e1781dae1f71f20bf22', '用户管理', '2', 'com.basics.system.controller.UserController.editSave()', '1', 'admin', '/system/user/edit', '127.0.0.1', '内网IP', '{\"userId\":[\"f912345968704fbb921554f55a7f2ba7\"],\"userName\":[\"穆里尼奥\"],\"userEmail\":[\"506839640@qq.com\"],\"userPhone\":[\"15207180551\"],\"userSex\":[\"1\"],\"userStatus\":[\"1\"],\"remark\":[\"\"],\"roleIds\":[\"1\"]}', '0', '', null);
INSERT INTO `sys_oper_log` VALUES ('ff932d27b7230924d0f034741dbe352f', '用户账号', '2', 'com.basics.cu.controller.AccountController.editSave()', '1', 'admin', '/cu/account/edit', '58.48.187.18', '湖北 武汉', '{\"customerId\":[\"6e5b93c93c2ca7658665e12e43f7b1f3\"],\"useCoin\":[\"100\"],\"useMoney\":[\"0E-8\"]}', '0', '', null);
INSERT INTO `sys_oper_log` VALUES ('ffedc5162293bfb34487a6df92feac93', '角色管理', '2', 'com.basics.system.controller.RoleController.editSave()', '1', 'admin', '/system/role/edit', '127.0.0.1', '内网IP', '{\"roleId\":[\"1\"],\"roleName\":[\"管理员\"],\"roleKey\":[\"admin\"],\"roleSort\":[\"1\"],\"roleStatus\":[\"1\"],\"remark\":[\"超级管理员\"],\"menuIds\":[\"\"]}', '0', '', null);

-- ----------------------------
-- Table structure for sys_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_role`;
CREATE TABLE `sys_role` (
  `ROLE_ID` varchar(32) NOT NULL COMMENT '角色ID',
  `ROLE_NAME` varchar(30) NOT NULL COMMENT '角色名称',
  `ROLE_KEY` varchar(100) NOT NULL COMMENT '角色权限字符串',
  `ROLE_SORT` int(4) NOT NULL COMMENT '显示顺序',
  `DATA_SCOPE` char(1) DEFAULT '1' COMMENT '数据范围（1：全部数据权限 2：自定数据权限）',
  `ROLE_STATUS` char(1) NOT NULL COMMENT '角色状态（0正常 1停用）',
  `DEL_FLAG` int(1) DEFAULT '1' COMMENT '逻辑删除标识(1正常 0删除)',
  `REMARK` varchar(500) DEFAULT NULL COMMENT '备注说明',
  `VERSION` int(11) DEFAULT '0' COMMENT '版本号',
  `CREATE_USER` varchar(32) DEFAULT NULL COMMENT '创建人',
  `CREATE_TIME` datetime DEFAULT NULL COMMENT '创建时间',
  `UPDATE_USER` varchar(32) DEFAULT NULL COMMENT '修改人',
  `UPDATE_TIME` datetime DEFAULT NULL COMMENT '修改时间',
  PRIMARY KEY (`ROLE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='角色信息表';

-- ----------------------------
-- Records of sys_role
-- ----------------------------
INSERT INTO `sys_role` VALUES ('1', '管理员', 'admin', '1', '1', '0', '1', '超级管理员', '0', null, null, null, null);
INSERT INTO `sys_role` VALUES ('9f4ce05efdb1a3c56bc321fb57a8574c', 'admina', '111', '1', '1', '0', '1', '1', '0', null, '2019-03-08 04:35:50', null, '2019-03-11 13:31:16');

-- ----------------------------
-- Table structure for sys_role_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_menu`;
CREATE TABLE `sys_role_menu` (
  `ROLE_ID` varchar(32) NOT NULL COMMENT '角色ID',
  `MENU_ID` varchar(32) NOT NULL COMMENT '菜单ID',
  PRIMARY KEY (`ROLE_ID`,`MENU_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='角色和菜单关联表';

-- ----------------------------
-- Records of sys_role_menu
-- ----------------------------

-- ----------------------------
-- Table structure for sys_user
-- ----------------------------
DROP TABLE IF EXISTS `sys_user`;
CREATE TABLE `sys_user` (
  `USER_ID` varchar(32) NOT NULL COMMENT '用户ID',
  `LOGIN_NAME` varchar(30) NOT NULL COMMENT '登录账号',
  `USER_NAME` varchar(30) NOT NULL COMMENT '用户昵称',
  `USER_TYPE` varchar(2) DEFAULT '00' COMMENT '用户类型（00系统用户）',
  `USER_EMAIL` varchar(50) DEFAULT '' COMMENT '用户邮箱',
  `USER_PHONE` varchar(11) DEFAULT '' COMMENT '手机号码',
  `USER_SEX` char(1) DEFAULT '0' COMMENT '用户性别（0男 1女 2未知）',
  `USER_AVATAR` varchar(100) DEFAULT '' COMMENT '头像路径',
  `USER_PASSWORD` varchar(50) DEFAULT '' COMMENT '密码',
  `USER_SALT` varchar(20) DEFAULT '' COMMENT '盐加密',
  `USER_STATUS` char(1) DEFAULT '0' COMMENT '帐号状态（0正常 1停用）',
  `LOGIN_IP` varchar(50) DEFAULT '' COMMENT '最后登陆IP',
  `LOGIN_DATE` datetime DEFAULT NULL COMMENT '最后登陆时间',
  `DEL_FLAG` int(1) DEFAULT '1' COMMENT '逻辑删除标识(1正常 0删除)',
  `REMARK` varchar(500) DEFAULT NULL COMMENT '备注说明',
  `VERSION` int(11) DEFAULT '0' COMMENT '版本号',
  `CREATE_USER` varchar(32) DEFAULT NULL COMMENT '创建人',
  `CREATE_TIME` datetime DEFAULT NULL COMMENT '创建时间',
  `UPDATE_USER` varchar(32) DEFAULT NULL COMMENT '修改人',
  `UPDATE_TIME` datetime DEFAULT NULL COMMENT '修改时间',
  PRIMARY KEY (`USER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户信息表';

-- ----------------------------
-- Records of sys_user
-- ----------------------------
INSERT INTO `sys_user` VALUES ('f912345968704fbb921554f55a7f2ba7', 'admin', '穆里尼奥', '00', '506839640@qq.com', '15207180551', '1', '', '29c67a30398638269fe600f73a054934', '111111', '0', '127.0.0.1', '2019-03-12 20:07:33', '1', null, '79', null, null, null, '2019-03-12 20:07:33');

-- ----------------------------
-- Table structure for sys_user_online
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_online`;
CREATE TABLE `sys_user_online` (
  `SESSION_ID` varchar(50) NOT NULL COMMENT '用户会话id',
  `LOGIN_NAME` varchar(50) DEFAULT '' COMMENT '登录账号',
  `LOGIN_IPADDR` varchar(50) DEFAULT '' COMMENT '登录IP地址',
  `LOGIN_LOCATION` varchar(255) DEFAULT '' COMMENT '登录地点',
  `LOGIN_BROWSER` varchar(50) DEFAULT '' COMMENT '浏览器类型',
  `LOGIN_OS` varchar(50) DEFAULT '' COMMENT '操作系统',
  `LOGIN_STATUS` varchar(10) DEFAULT '' COMMENT '在线状态on_line在线off_line离线',
  `START_TIMESTAMP` datetime DEFAULT NULL COMMENT 'session创建时间',
  `LAST_ACCESS_TIME` datetime DEFAULT NULL COMMENT 'session最后访问时间',
  `EXPIRE_TIME` bigint(11) DEFAULT '0' COMMENT '超时时间，单位为分钟',
  PRIMARY KEY (`SESSION_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='在线用户记录';

-- ----------------------------
-- Records of sys_user_online
-- ----------------------------
INSERT INTO `sys_user_online` VALUES ('9efb2fee-4002-4575-8904-582894ec3224', 'admin', '127.0.0.1', '内网IP', 'Firefox', 'Windows 10', 'on_line', '2019-03-13 15:41:13', '2019-03-13 16:38:58', '1800000');

-- ----------------------------
-- Table structure for sys_user_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_role`;
CREATE TABLE `sys_user_role` (
  `USER_ID` varchar(32) NOT NULL COMMENT '用户ID',
  `ROLE_ID` varchar(32) NOT NULL COMMENT '角色ID',
  PRIMARY KEY (`USER_ID`,`ROLE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户和角色关联表';

-- ----------------------------
-- Records of sys_user_role
-- ----------------------------
