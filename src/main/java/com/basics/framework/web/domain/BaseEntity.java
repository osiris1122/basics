package com.basics.framework.web.domain;

import java.io.Serializable;
import java.util.Date;
import java.util.Map;

import com.baomidou.mybatisplus.annotation.FieldFill;
import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableLogic;
import com.baomidou.mybatisplus.annotation.Version;
import com.fasterxml.jackson.annotation.JsonFormat;

import lombok.Data;

/**
 * Entity基类
 * 
 * @author basics
 */
@Data
public class BaseEntity implements Serializable
{
    /** 搜索值 */
    @TableField(exist = false)
    private String searchValue;

    /** 请求参数 */
    @TableField(exist = false)
    private Map<String, Object> params;

    /**
     * 逻辑删除标识(1正常 0删除)
     */
    @TableLogic
    private Integer delFlag;

    /**
     * 备注说明
     */
    private String remark;

    /**
     * 版本号
     */
    @Version
    private Integer version;

    /**
     * 创建人
     */
    @TableField(fill = FieldFill.INSERT)
    private String createUser;

    /**
     * 创建时间
     */
    @JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss")
    @TableField(fill = FieldFill.INSERT)
    private Date createTime;

    /**
     * 修改人
     */
    @TableField(fill = FieldFill.UPDATE)
    private String updateUser;

    /**
     * 修改时间
     */
    @JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss")
    @TableField(fill = FieldFill.UPDATE)
    private Date updateTime;
}
