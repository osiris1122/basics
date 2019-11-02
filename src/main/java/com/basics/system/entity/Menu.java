package com.basics.system.entity;

import com.baomidou.mybatisplus.annotation.TableName;
import com.basics.framework.web.domain.BaseEntity;
import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableField;
import java.util.ArrayList;
import java.util.List;

import com.baomidou.mybatisplus.annotation.TableId;
import lombok.Data;
import lombok.EqualsAndHashCode;
import lombok.experimental.Accessors;

/**
 * <p>
 * 菜单权限表
 * </p>
 *
 * @author basics
 * @since 2018-12-12
 */
@Data
@EqualsAndHashCode(callSuper = false)
@Accessors(chain = true)
@TableName("sys_menu")
public class Menu extends BaseEntity {

    private static final long serialVersionUID = 1L;

    /**
     * 菜单ID
     */
    @TableId(value = "MENU_ID", type = IdType.UUID)
    private String menuId;

    /**
     * 菜单名称
     */
    private String menuName;

    /**
     * 父菜单ID
     */
    private String parentId;

    /**
     * 显示顺序
     */
    private Integer orderNum;

    /**
     * 请求地址
     */
    private String menuUrl;

    /**
     * 菜单类型（M目录 C菜单 F按钮）
     */
    private String menuType;

    /**
     * 菜单状态（0显示 1隐藏）
     */
    private String menuVisible;

    /**
     * 权限标识
     */
    private String menuPerms;

    /**
     * 菜单图标
     */
    private String menuIcon;

    /** 子菜单 */
    @TableField(exist=false)
    private List<Menu> children = new ArrayList<Menu>();
    
    /** 父菜单名称 */
    @TableField(exist=false)
    private String parentName;

}
