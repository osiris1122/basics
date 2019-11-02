package com.basics.system.entity;

import com.baomidou.mybatisplus.annotation.TableName;
import com.basics.framework.web.domain.BaseEntity;
import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableField;

import java.util.Date;
import java.util.List;

import org.apache.shiro.crypto.SecureRandomNumberGenerator;

import com.baomidou.mybatisplus.annotation.TableId;
import lombok.Data;
import lombok.EqualsAndHashCode;
import lombok.experimental.Accessors;

/**
 * <p>
 * 用户信息表
 * </p>
 *
 * @author basics
 * @since 2018-12-12
 */
@Data
@EqualsAndHashCode(callSuper = false)
@Accessors(chain = true)
@TableName("sys_user")
public class User extends BaseEntity {

    private static final long serialVersionUID = 1L;

    /**
     * 用户ID
     */
    @TableId(value = "USER_ID", type = IdType.UUID)
    private String userId;

    /**
     * 登录账号
     */
    private String loginName;

    /**
     * 用户昵称
     */
    private String userName;

    /**
     * 用户类型（00系统用户）
     */
    private String userType;

    /**
     * 用户邮箱
     */
    private String userEmail;

    /**
     * 手机号码
     */
    private String userPhone;

    /**
     * 用户性别（0男 1女 2未知）
     */
    private String userSex;

    /**
     * 头像路径
     */
    private String userAvatar;

    /**
     * 密码
     */
    private String userPassword;

    /**
     * 盐加密
     */
    private String userSalt;

    /**
     * 帐号状态（0正常 1停用）
     */
    private String userStatus;

    /**
     * 最后登陆IP
     */
    private String loginIp;

    /**
     * 最后登陆时间
     */
    private Date loginDate;

    /** 角色集合 */
    @TableField(exist=false)
    private List<Role> roles;

    /** 角色组 */
    @TableField(exist=false)
    private String[] roleIds;

    public boolean isAdmin()
    {
        return isAdmin(this.userId);
    }

    public static boolean isAdmin(String userId)
    {
        return "f912345968704fbb921554f55a7f2ba7".equals(userId);
    }
    
    /**
     * 生成随机盐
     */
    public void randomSalt()
    {
        // 一个Byte占两个字节，此处生成的3字节，字符串长度为6
        SecureRandomNumberGenerator secureRandom = new SecureRandomNumberGenerator();
        String hex = secureRandom.nextBytes(3).toHex();
        setUserSalt(hex);
    }
}
