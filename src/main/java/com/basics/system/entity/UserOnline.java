package com.basics.system.entity;

import java.io.Serializable;
import java.util.Date;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import com.basics.system.entity.OnlineSession.OnlineStatus;

import lombok.Data;
import lombok.EqualsAndHashCode;
import lombok.experimental.Accessors;

/**
 * <p>
 * 在线用户记录
 * </p>
 *
 * @author basics
 * @since 2018-12-12
 */
@Data
@EqualsAndHashCode(callSuper = false)
@Accessors(chain = true)
@TableName("sys_user_online")
public class UserOnline implements Serializable {

	private static final long serialVersionUID = 1L;

	/**
	 * 用户会话id
	 */
	@TableId(value = "SESSION_ID", type = IdType.UUID)
	private String sessionId;

	/** 登录名称 */
	private String loginName;

	/** 登录IP地址 */
	private String loginIpaddr;

	/** 登录地址 */
	private String loginLocation;

	/** 浏览器类型 */
	private String loginBrowser;

	/** 操作系统 */
	private String loginOs;

	/** session创建时间 */
	private Date startTimestamp;

	/** session最后访问时间 */
	private Date lastAccessTime;

	/** 超时时间，单位为分钟 */
	private Long expireTime;

	/** 在线状态 */
	private OnlineStatus loginStatus = OnlineStatus.on_line;

	/** 备份的当前用户会话 */
	@TableField(exist = false)
	private OnlineSession session;
}
