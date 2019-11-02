package com.basics.system.service.impl;

import java.util.List;

import org.apache.commons.collections.CollectionUtils;
import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.basics.common.constant.UserConstants;
import com.basics.common.utils.security.ShiroUtils;
import com.basics.framework.shiro.service.PasswordService;
import com.basics.system.entity.Role;
import com.basics.system.entity.User;
import com.basics.system.entity.UserRole;
import com.basics.system.mapper.RoleMapper;
import com.basics.system.mapper.UserMapper;
import com.basics.system.mapper.UserRoleMapper;
import com.basics.system.service.UserService;

/**
 * <p>
 * 用户信息表 服务实现类
 * </p>
 *
 * @author basics
 * @since 2018-12-12
 */
@Service
public class UserServiceImpl extends ServiceImpl<UserMapper, User> implements UserService {
	@Autowired
	private RoleMapper roleMapper;
	@Autowired
	private PasswordService passwordService;
	@Autowired
	private UserRoleMapper userRoleMapper;

	@Override
	public String selectUserRoleGroup(String userId) {
		List<Role> list = roleMapper.selectRolesByUserId(userId);
		StringBuffer idsStr = new StringBuffer();
		for (Role role : list) {
			idsStr.append(role.getRoleName()).append(",");
		}
		if (StringUtils.isNotEmpty(idsStr.toString())) {
			return idsStr.substring(0, idsStr.length() - 1);
		}
		return idsStr.toString();
	}

	/**
	 * 新增保存用户信息
	 * 
	 * @param user 用户信息
	 * @return 结果
	 */
	@Override
	public boolean insertUser(User user) {
		user.randomSalt();
		user.setUserPassword(passwordService.encryptPassword(user.getLoginName(), user.getUserPassword(), user.getUserSalt()));
		user.setCreateUser(ShiroUtils.getLoginName());
		// 新增用户信息
		baseMapper.insert(user);
		// 新增用户与角色管理
		insertUserRole(user);
		return true;
	}

	/**
	 * 修改保存用户信息
	 * 
	 * @param user 用户信息
	 * @return 结果
	 */
	@Override
	public boolean updateUser(User user) {
		String userId = user.getUserId();
		user.setUpdateUser(ShiroUtils.getLoginName());
		// 删除用户与角色关联
		userRoleMapper.delete(new QueryWrapper<UserRole>().eq("USER_ID", userId));
		// 新增用户与角色管理
		insertUserRole(user);
		baseMapper.updateById(user);
		return true;
	}

	/**
	 * 新增用户角色信息
	 * 
	 * @param user 用户对象
	 */
	public void insertUserRole(User user) {
		String[] roles = user.getRoleIds();
		if (null != roles && roles.length > 0) {
			// 新增用户与角色管理
			UserRole ur = null;
			for (String roleId : user.getRoleIds()) {
				ur = new UserRole();
				ur.setUserId(user.getUserId());
				ur.setRoleId(roleId);
				userRoleMapper.insert(ur);
			}
		}
	}

	@Override
	@Transactional
	public Boolean resetUserPwd(User user) {
		user.randomSalt();
		user.setUserPassword(passwordService.encryptPassword(user.getLoginName(), user.getUserPassword(), user.getUserSalt()));
		return saveOrUpdate(user);
	}

	@Override
	public String checkUserUnique(User user) {
		List<User> list = baseMapper.selectList(new QueryWrapper<User>(user));
		if (CollectionUtils.isNotEmpty(list) && list.size() > 1) {
			return UserConstants.USER_NAME_NOT_UNIQUE;
		}
		return UserConstants.USER_NAME_UNIQUE;
	}

}
