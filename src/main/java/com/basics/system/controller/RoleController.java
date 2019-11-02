package com.basics.system.controller;

import java.util.List;

import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.basics.common.utils.StringUtils;
import com.basics.common.utils.poi.ExcelUtil;
import com.basics.framework.aspectj.lang.annotation.Log;
import com.basics.framework.aspectj.lang.enums.BusinessType;
import com.basics.framework.web.controller.BaseController;
import com.basics.framework.web.domain.AjaxResult;
import com.basics.framework.web.page.PageDomain;
import com.basics.framework.web.page.TableDataInfo;
import com.basics.framework.web.page.TableSupport;
import com.basics.system.entity.Role;
import com.basics.system.service.RoleService;

/**
 * 角色信息
 * 
 * @author basics
 */
@Controller
@RequestMapping("/system/role")
public class RoleController extends BaseController {
	private String prefix = "system/role";

	@Autowired
	private RoleService roleService;

	@RequiresPermissions("system:role:view")
	@GetMapping()
	public String role() {
		return prefix + "/role";
	}

	@RequiresPermissions("system:role:list")
	@PostMapping("/list")
	@ResponseBody
	public TableDataInfo list(Role role) {
		QueryWrapper<Role> eWrapper = new QueryWrapper<Role>(role);
		PageDomain pageDomain = TableSupport.buildPageRequest();
		if (StringUtils.isNotBlank(pageDomain.getOrderByColumn()) && StringUtils.isNotBlank(pageDomain.getIsAsc())) {
			if ("asc".equals(pageDomain.getIsAsc())) {
				eWrapper.orderByAsc(StringUtils.camel2Underline(pageDomain.getOrderByColumn()));
			} else {
				eWrapper.orderByDesc(StringUtils.camel2Underline(pageDomain.getOrderByColumn()));
			}
		}
		IPage<Role> pageResult = roleService.page(new Page<Role>(pageDomain.getPageNum(), pageDomain.getPageSize()), eWrapper);
		return getDataTable(pageResult);
	}

	@Log(title = "角色管理", businessType = BusinessType.EXPORT)
	@RequiresPermissions("system:role:export")
	@PostMapping("/export")
	@ResponseBody
	public AjaxResult export(Role role) {
		List<Role> list = roleService.list(new QueryWrapper<Role>(role));
		ExcelUtil<Role> util = new ExcelUtil<Role>(Role.class);
		return util.exportExcel(list, "role");
	}

	/**
	 * 新增角色
	 */
	@GetMapping("/add")
	public String add() {
		return prefix + "/add";
	}

	/**
	 * 新增保存角色
	 */
	@RequiresPermissions("system:role:add")
	@Log(title = "角色管理", businessType = BusinessType.INSERT)
	@PostMapping("/add")
	@Transactional(rollbackFor = Exception.class)
	@ResponseBody
	public AjaxResult addSave(Role role) {
		return toAjax(roleService.insertRole(role));

	}

	/**
	 * 修改角色
	 */
	@GetMapping("/edit/{roleId}")
	public String edit(@PathVariable("roleId") String roleId, ModelMap mmap) {
		mmap.put("role", roleService.getById(roleId));
		return prefix + "/edit";
	}

	/**
	 * 修改保存角色
	 */
	@RequiresPermissions("system:role:edit")
	@Log(title = "角色管理", businessType = BusinessType.UPDATE)
	@PostMapping("/edit")
	@Transactional(rollbackFor = Exception.class)
	@ResponseBody
	public AjaxResult editSave(Role role) {
		return toAjax(roleService.updateRole(role));
	}

	/**
	 * 新增数据权限
	 */
	@GetMapping("/rule/{roleId}")
	public String rule(@PathVariable("roleId") String roleId, ModelMap mmap) {
		mmap.put("role", roleService.getById(roleId));
		return prefix + "/rule";
	}

	/**
	 * 修改保存数据权限
	 */
	@RequiresPermissions("system:role:edit")
	@Log(title = "角色管理", businessType = BusinessType.UPDATE)
	@PostMapping("/rule")
	@Transactional(rollbackFor = Exception.class)
	@ResponseBody
	public AjaxResult ruleSave(Role role) {
		return toAjax(roleService.updateRole(role));
	}

	@RequiresPermissions("system:role:remove")
	@Log(title = "角色管理", businessType = BusinessType.DELETE)
	@PostMapping("/remove")
	@ResponseBody
	public AjaxResult remove(String ids) {
		try {
			return toAjax(roleService.removeById(ids));
		} catch (Exception e) {
			return error(e.getMessage());
		}
	}

	/**
	 * 校验角色名称
	 */
	@PostMapping("/checkRoleNameUnique")
	@ResponseBody
	public String checkRoleNameUnique(Role role) {
		return roleService.checkRoleNameUnique(role);
	}

	/**
	 * 校验角色权限
	 */
	@PostMapping("/checkRoleKeyUnique")
	@ResponseBody
	public String checkRoleKeyUnique(Role role) {
		return roleService.checkRoleKeyUnique(role);
	}

	/**
	 * 选择菜单树
	 */
	@GetMapping("/selectMenuTree")
	public String selectMenuTree() {
		return prefix + "/tree";
	}
}