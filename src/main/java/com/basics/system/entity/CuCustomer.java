package com.basics.system.entity;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import com.basics.framework.web.domain.BaseEntity;
import lombok.Data;
import lombok.EqualsAndHashCode;
import lombok.experimental.Accessors;

import java.math.BigDecimal;
import java.util.Date;

/**
 * 会员信息表
 *
 * @author RushLUO
 * @date 2019/10/31 11:14
 */
@Data
@EqualsAndHashCode(callSuper = false)
@Accessors(chain = true)
@TableName("cu_customer")
public class CuCustomer extends BaseEntity {

    private static final long serialVersionUID = 1L;

    /**
     * 会员ID
     */
    @TableId(value = "CUSTOMER_ID", type = IdType.UUID)
    private String customerId;

    /**
     * 昵称
     */
    private String customerName;

    /**
     * 头像
     */
    private String customerHead;

    /**
     * 手机号
     */
    private String customerPhone;

    /**
     * 推荐码
     */
    private String inviteCode;

    /**
     * 推荐人ID
     */
    private String refereeId;

    /**
     * 推荐人账号
     */
    private String refereePhone;

    /**
     * 星级
     */
    private String levelId;

    @TableField(exist = false)
    private String levelName;

}
