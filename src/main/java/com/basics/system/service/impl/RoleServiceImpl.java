package com.basics.system.service.impl;

import java.util.Arrays;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.basics.common.constant.UserConstants;
import com.basics.common.utils.StringUtils;
import com.basics.common.utils.security.ShiroUtils;
import com.basics.system.entity.Role;
import com.basics.system.entity.RoleMenu;
import com.basics.system.mapper.RoleMapper;
import com.basics.system.mapper.RoleMenuMapper;
import com.basics.system.service.RoleService;

/**
 * <p>
 * 角色信息表 服务实现类
 * </p>
 *
 * @author basics
 * @since 2018-12-12
 */
@Service
public class RoleServiceImpl extends ServiceImpl<RoleMapper, Role> implements RoleService {
	@Autowired
	private RoleMapper roleMapper;
	@Autowired
	private RoleMenuMapper roleMenuMapper;

	@Override
	public Set<String> selectRoleKeys(String userId) {
		List<Role> perms = baseMapper.selectRolesByUserId(userId);
		Set<String> permsSet = new HashSet<String>();
		for (Role perm : perms) {
			if (StringUtils.isNotNull(perms)) {
				permsSet.addAll(Arrays.asList(perm.getRoleKey().trim().split(",")));
			}
		}
		return permsSet;
	}

	@Override
	public String checkRoleNameUnique(Role role) {
		if (StringUtils.isNotBlank(role.getRoleId())) {
			int num = baseMapper.selectCount(new QueryWrapper<Role>().eq("ROLE_ID", role.getRoleId()).eq("ROLE_NAME", role.getRoleName()));
			if (num > 1) {
				return UserConstants.ROLE_NAME_NOT_UNIQUE;
			}
		}
		return UserConstants.ROLE_NAME_UNIQUE;
	}

	@Override
	public String checkRoleKeyUnique(Role role) {
		if (StringUtils.isNotBlank(role.getRoleId())) {
			int num = baseMapper.selectCount(new QueryWrapper<Role>().eq("ROLE_ID", role.getRoleId()).eq("ROLE_KEY", role.getRoleKey()));
			if (num > 1) {
				return UserConstants.ROLE_NAME_NOT_UNIQUE;
			}
		}
		return UserConstants.ROLE_NAME_UNIQUE;
	}

	@Override
	public List<Role> selectRolesByUserId(String userId) {
		List<Role> userRoles = roleMapper.selectRolesByUserId(userId);
		List<Role> roles = list();
		for (Role role : roles) {
			for (Role userRole : userRoles) {
				if (role.getRoleId().equals(userRole.getRoleId())) {
					role.setDelFlag(2);
					break;
				}
			}
		}
		return roles;
	}

	@Override
	public boolean insertRole(Role role) {
		role.setCreateUser(ShiroUtils.getLoginName());
		// 新增角色信息
		roleMapper.insert(role);
		ShiroUtils.clearCachedAuthorizationInfo();
		insertRoleMenu(role);
		return true;
	}

	@Override
	public boolean updateRole(Role role) {
		role.setUpdateUser(ShiroUtils.getLoginName());
		// 修改角色信息
		roleMapper.updateById(role);
		ShiroUtils.clearCachedAuthorizationInfo();
		// 删除角色与菜单关联
		roleMenuMapper.delete(new QueryWrapper<RoleMenu>().eq("ROLE_ID", role.getRoleId()));
		insertRoleMenu(role);
		return true;
	}

	/**
	 * 新增角色菜单信息
	 * 
	 * @param role
	 *            角色对象
	 */
	public int insertRoleMenu(Role role) {
		int rows = 1;
		// 新增用户与角色管理
		RoleMenu rm = null;
		for (String menuId : role.getMenuIds()) {
			rm = new RoleMenu();
			rm.setRoleId(role.getRoleId());
			rm.setMenuId(menuId);
			roleMenuMapper.insert(rm);
		}

		return rows;
	}

}
