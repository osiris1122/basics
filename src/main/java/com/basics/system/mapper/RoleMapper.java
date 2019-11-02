package com.basics.system.mapper;

import com.basics.system.entity.Role;

import java.util.List;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;

/**
 * <p>
 * 角色信息表 Mapper 接口
 * </p>
 *
 * @author basics
 * @since 2018-12-12
 */
public interface RoleMapper extends BaseMapper<Role> {

	List<Role> selectRolesByUserId(String userId);

}
