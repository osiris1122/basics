package com.basics.system.entity;

import com.baomidou.mybatisplus.annotation.TableName;
import com.baomidou.mybatisplus.annotation.IdType;
import java.util.Date;
import com.baomidou.mybatisplus.annotation.TableId;
import java.io.Serializable;
import lombok.Data;
import lombok.EqualsAndHashCode;
import lombok.experimental.Accessors;

/**
 * <p>
 * 系统访问记录
 * </p>
 *
 * @author basics
 * @since 2018-12-12
 */
@Data
@EqualsAndHashCode(callSuper = false)
@Accessors(chain = true)
@TableName("sys_login_log")
public class LoginLog implements Serializable {

    private static final long serialVersionUID = 1L;

    /**
     * 访问ID
     */
    @TableId(value = "LOGIN_ID", type = IdType.UUID)
    private String loginId;

    /**
     * 登录账号
     */
    private String loginName;

    /**
     * 登录IP地址
     */
    private String loginIpaddr;

    /**
     * 登录地点
     */
    private String loginLocation;

    /**
     * 浏览器类型
     */
    private String loginBrowser;

    /**
     * 操作系统
     */
    private String loginOs;

    /**
     * 登录状态（0成功 1失败）
     */
    private String loginStatus;

    /**
     * 提示消息
     */
    private String loginMsg;

    /**
     * 访问时间
     */
    private Date loginTime;


}
