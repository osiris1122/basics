package com.basics.system.entity;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import com.basics.framework.web.domain.BaseEntity;
import io.swagger.models.auth.In;
import lombok.Data;
import lombok.EqualsAndHashCode;
import lombok.experimental.Accessors;

import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.Date;

/**
 * 等级配置表
 *
 * @author RushLUO
 * @date 2019/10/31 11:01
 */
@Data
@EqualsAndHashCode(callSuper = false)
@Accessors(chain = true)
@TableName("app_level")
public class Level extends BaseEntity {

    private static final long serialVersionUID = 1L;

    /**
     * 等级ID
     */
    @TableId(value = "LEVEL_ID", type = IdType.UUID)
    private String levelId;

    /**
     * 等级名称
     */
    private String levelName;

    /**
     * 星级
     */
    private Integer starNum;

    /**
     * 金额
     */
    private BigDecimal levelMoney;

}
