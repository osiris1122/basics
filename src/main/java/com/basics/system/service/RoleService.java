package com.basics.system.service;

import java.util.List;
import java.util.Set;

import com.baomidou.mybatisplus.extension.service.IService;
import com.basics.system.entity.Role;

/**
 * <p>
 * 角色信息表 服务类
 * </p>
 *
 * @author basics
 * @since 2018-12-12
 */
public interface RoleService extends IService<Role> {

	Set<String> selectRoleKeys(String userId);

	String checkRoleNameUnique(Role role);

	String checkRoleKeyUnique(Role role);

	List<Role> selectRolesByUserId(String userId);

	boolean insertRole(Role role);

	boolean updateRole(Role role);

}
