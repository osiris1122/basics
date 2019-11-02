package com.basics.system.controller;

import java.util.List;
import java.util.Map;

import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.basics.framework.aspectj.lang.annotation.Log;
import com.basics.framework.aspectj.lang.enums.BusinessType;
import com.basics.framework.web.controller.BaseController;
import com.basics.framework.web.domain.AjaxResult;
import com.basics.system.entity.Menu;
import com.basics.system.entity.Role;
import com.basics.system.entity.RoleMenu;
import com.basics.system.service.MenuService;
import com.basics.system.service.RoleMenuService;

/**
 * 菜单信息
 * 
 * @author basics
 */
@Controller
@RequestMapping("/system/menu")
public class MenuController extends BaseController {
	private String prefix = "system/menu";

	@Autowired
	private MenuService menuService;
	@Autowired
	private RoleMenuService roleMenuService;

	@RequiresPermissions("system:menu:view")
	@GetMapping()
	public String menu() {
		return prefix + "/menu";
	}

	@RequiresPermissions("system:menu:list")
	@GetMapping("/list")
	@ResponseBody
	public List<Menu> list(Menu menu) {
		List<Menu> menuList = menuService.list(new QueryWrapper<Menu>(menu));
		return menuList;
	}

	/**
	 * 删除菜单
	 */
	@Log(title = "菜单管理", businessType = BusinessType.DELETE)
	@RequiresPermissions("system:menu:remove")
	@PostMapping("/remove/{menuId}")
	@ResponseBody
	public AjaxResult remove(@PathVariable("menuId") String menuId) {

		if (menuService.count(new QueryWrapper<Menu>().eq("PARENT_ID", menuId)) > 0) {
			return error(1, "存在子菜单,不允许删除");
		}
		if (roleMenuService.count(new QueryWrapper<RoleMenu>().eq("MENU_ID", menuId)) > 0) {
			return error(1, "菜单已分配,不允许删除");
		}
		return toAjax(menuService.removeById(menuId));
	}

	/**
	 * 新增
	 */
	@GetMapping("/add/{parentId}")
	public String add(@PathVariable("parentId") String parentId, ModelMap mmap) {
		Menu menu = null;
		if (!"0".equals(parentId)) {
			menu = menuService.selectMenuById(parentId);
		} else {
			menu = new Menu();
			menu.setMenuId("0");
			menu.setMenuName("主目录");
		}
		mmap.put("menu", menu);
		return prefix + "/add";
	}

	/**
	 * 新增保存菜单
	 */
	@Log(title = "菜单管理", businessType = BusinessType.INSERT)
	@RequiresPermissions("system:menu:add")
	@PostMapping("/add")
	@ResponseBody
	public AjaxResult addSave(Menu menu) {
		return toAjax(menuService.save(menu));
	}

	/**
	 * 修改菜单
	 */
	@GetMapping("/edit/{menuId}")
	public String edit(@PathVariable("menuId") String menuId, ModelMap mmap) {
		mmap.put("menu", menuService.selectMenuById(menuId));
		return prefix + "/edit";
	}

	/**
	 * 修改保存菜单
	 */
	@Log(title = "菜单管理", businessType = BusinessType.UPDATE)
	@RequiresPermissions("system:menu:edit")
	@PostMapping("/edit")
	@ResponseBody
	public AjaxResult editSave(Menu menu) {
		return toAjax(menuService.saveOrUpdate(menu));
	}

	/**
	 * 选择菜单图标
	 */
	@GetMapping("/icon")
	public String icon() {
		return prefix + "/icon";
	}

	/**
	 * 校验菜单名称
	 */
	@PostMapping("/checkMenuNameUnique")
	@ResponseBody
	public String checkMenuNameUnique(Menu menu) {
		return menuService.checkMenuNameUnique(menu);
	}

	/**
	 * 加载角色菜单列表树
	 */
	@GetMapping("/roleMenuTreeData")
	@ResponseBody
	public List<Map<String, Object>> roleMenuTreeData(Role role) {
		List<Map<String, Object>> tree = menuService.roleMenuTreeData(role);
		return tree;
	}

	/**
	 * 加载所有菜单列表树
	 */
	@GetMapping("/menuTreeData")
	@ResponseBody
	public List<Map<String, Object>> menuTreeData(Role role) {
		List<Map<String, Object>> tree = menuService.menuTreeData();
		return tree;
	}

	/**
	 * 选择菜单树
	 */
	@GetMapping("/selectMenuTree/{menuId}")
	public String selectMenuTree(@PathVariable("menuId") String menuId, ModelMap mmap) {
		mmap.put("menu", menuService.selectMenuById(menuId));
		return prefix + "/tree";
	}
}