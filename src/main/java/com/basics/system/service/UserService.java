package com.basics.system.service;

import com.baomidou.mybatisplus.extension.service.IService;
import com.basics.system.entity.User;

/**
 * <p>
 * 用户信息表 服务类
 * </p>
 *
 * @author basics
 * @since 2018-12-12
 */
public interface UserService extends IService<User> {

	String selectUserRoleGroup(String userId);

	Boolean resetUserPwd(User user);

	String checkUserUnique(User user);

	boolean insertUser(User user);

	boolean updateUser(User user);
}
