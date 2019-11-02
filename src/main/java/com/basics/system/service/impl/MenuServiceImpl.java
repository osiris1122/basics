package com.basics.system.service.impl;

import com.basics.common.constant.UserConstants;
import com.basics.common.utils.StringUtils;
import com.basics.common.utils.TreeUtils;
import com.basics.system.entity.Menu;
import com.basics.system.entity.Role;
import com.basics.system.entity.User;
import com.basics.system.mapper.MenuMapper;
import com.basics.system.service.MenuService;
import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.HashSet;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.Set;

import org.springframework.stereotype.Service;

/**
 * <p>
 * 菜单权限表 服务实现类
 * </p>
 *
 * @author basics
 * @since 2018-12-12
 */
@Service
public class MenuServiceImpl extends ServiceImpl<MenuMapper, Menu> implements MenuService {

	@Override
	public Set<String> selectPermsByUserId(String userId) {
		List<String> perms = baseMapper.selectPermsByUserId(userId);
        Set<String> permsSet = new HashSet<String>();
        for (String perm : perms)
        {
            if (StringUtils.isNotEmpty(perm))
            {
                permsSet.addAll(Arrays.asList(perm.trim().split(",")));
            }
        }
        return permsSet;
	}

	@Override
	public List<Menu> selectMenusByUser(User user) {
		List<Menu> menus = new LinkedList<Menu>();
        // 管理员显示所有菜单信息
        if (user.isAdmin())
        {
            menus = baseMapper.selectMenuNormalAll();
        }
        else
        {
            menus = baseMapper.selectMenusByUserId(user.getUserId());
        }
        return TreeUtils.getChildPerms(menus, "0");
	}

	@Override
	public Menu selectMenuById(String menuId) {
		return baseMapper.selectMenuById(menuId);
	}

	@Override
	public String checkMenuNameUnique(Menu menu) {
		if(StringUtils.isNotBlank(menu.getMenuId())) {
			int num=baseMapper.selectCount(new QueryWrapper<Menu>().eq("MENU_NAME", menu.getMenuName()).eq("MENU_ID", menu.getMenuId()));
			if(num>1) {
				return UserConstants.MENU_NAME_NOT_UNIQUE;
			}
		}
        return UserConstants.MENU_NAME_UNIQUE;
	}

	@Override
	public List<Map<String, Object>> roleMenuTreeData(Role role) {
        List<Map<String, Object>> trees = new ArrayList<Map<String, Object>>();
        List<Menu> menuList = baseMapper.selectList(null);
        if (StringUtils.isNotNull(role.getRoleId()))
        {
            List<String> roleMenuList = baseMapper.selectMenuTree(role.getRoleId());
            trees = getTrees(menuList, true, roleMenuList, true);
        }
        else
        {
            trees = getTrees(menuList, false, null, true);
        }
        return trees;
	}

	private List<Map<String, Object>> getTrees(List<Menu> menuList, boolean isCheck, List<String> roleMenuList, boolean permsFlag) {
		List<Map<String, Object>> trees = new ArrayList<Map<String, Object>>();
        for (Menu menu : menuList)
        {
            Map<String, Object> menuMap = new HashMap<String, Object>();
            menuMap.put("id", menu.getMenuId());
            menuMap.put("pId", menu.getParentId());
            menuMap.put("name", transMenuName(menu, roleMenuList, permsFlag));
            menuMap.put("title", menu.getMenuName());
            if (isCheck)
            {
            	menuMap.put("checked", roleMenuList.contains(menu.getMenuId() + menu.getMenuPerms()));
            }
            else
            {
            	menuMap.put("checked", false);
            }
            trees.add(menuMap);
        }
        return trees;
	}

	private Object transMenuName(Menu menu, List<String> roleMenuList, boolean permsFlag) {
		StringBuffer sb = new StringBuffer();
        sb.append(menu.getMenuName());
        if (permsFlag)
        {
            sb.append("<font color=\"#888\">&nbsp;&nbsp;&nbsp;" + menu.getMenuPerms() + "</font>");
        }
        return sb.toString();
	}

	@Override
	public List<Map<String, Object>> menuTreeData() {
		List<Map<String, Object>> trees = new ArrayList<Map<String, Object>>();
        List<Menu> menuList = baseMapper.selectList(null);
        trees = getTrees(menuList, false, null, false);
        return trees;
	}

}
