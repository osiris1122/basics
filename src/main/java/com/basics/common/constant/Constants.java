package com.basics.common.constant;

/**
 * 通用常量信息
 * 
 * @author basics
 */
public class Constants {
	/**
	 * UTF-8 字符集
	 */
	public static final String UTF8 = "UTF-8";

	/**
	 * 通用成功标识
	 */
	public static final String SUCCESS = "0";

	/**
	 * 通用失败标识
	 */
	public static final String FAIL = "1";

	public static final Integer PAGE_NUMS = 0;

	public static final Integer PAGE_SIZES = 10;

	/**
	 * 登录成功
	 */
	public static final String LOGIN_SUCCESS = "Success";

	/**
	 * 注销
	 */
	public static final String LOGOUT = "Logout";

	/**
	 * 登录失败
	 */
	public static final String LOGIN_FAIL = "Error";

	public static final Integer STATE_BLACK = 2;

	public static final Integer STATE_YES = 1;

	public static final Integer STATE_NO = 0;

	public static final String YES = "Y";

	public static final String NO = "N";

	public static final String MOBILE_REGX = "^((13[0-9])|(14[579])|(15([0-3]|[5-9]))|(166)|(17[0135678])|(18[0-9])|(19[8|9]))\\d{8}$";

	/**
	 * 自动去除表前缀
	 */
	public static String AUTO_REOMVE_PRE = "true";

	/**
	 * 当前记录起始索引
	 */
	public static String PAGE_NUM = "pageNum";

	/**
	 * 每页显示记录数
	 */
	public static String PAGE_SIZE = "pageSize";

	/**
	 * 排序列
	 */
	public static String ORDER_BY_COLUMN = "orderByColumn";

	/**
	 * 排序的方向 "desc" 或者 "asc".
	 */
	public static final String IS_ASC = "isAsc";

}
