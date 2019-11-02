package com.basics.system.service;

import com.basics.system.entity.Menu;
import com.basics.system.entity.Role;
import com.basics.system.entity.User;

import java.util.List;
import java.util.Map;
import java.util.Set;

import com.baomidou.mybatisplus.extension.service.IService;

/**
 * <p>
 * 菜单权限表 服务类
 * </p>
 *
 * @author basics
 * @since 2018-12-12
 */
public interface MenuService extends IService<Menu> {

	Set<String> selectPermsByUserId(String userId);

	List<Menu> selectMenusByUser(User user);

	Menu selectMenuById(String menuId);

	String checkMenuNameUnique(Menu menu);
	/**
	 * 加载角色菜单列表树
	 */
	List<Map<String, Object>> roleMenuTreeData(Role role);
	/**
	 * 加载所有菜单列表树
	 */
	List<Map<String, Object>> menuTreeData();

}
