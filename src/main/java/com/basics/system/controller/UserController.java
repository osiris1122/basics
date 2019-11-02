package com.basics.system.controller;

import java.util.List;

import com.basics.framework.activemp.Producer;
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
import com.basics.framework.shiro.service.PasswordService;
import com.basics.framework.web.controller.BaseController;
import com.basics.framework.web.domain.AjaxResult;
import com.basics.framework.web.page.PageDomain;
import com.basics.framework.web.page.TableDataInfo;
import com.basics.framework.web.page.TableSupport;
import com.basics.system.entity.User;
import com.basics.system.service.RoleService;
import com.basics.system.service.UserService;

/**
 * 用户信息
 * 
 * @author basics
 */
@Controller
@RequestMapping("/system/user")
public class UserController extends BaseController {
	private String prefix = "system/user";

	@Autowired
	private UserService userService;

	@Autowired
	private RoleService roleService;

	@Autowired
	private PasswordService passwordService;

	@RequiresPermissions("system:user:view")
	@GetMapping()
	public String user() {
		return prefix + "/user";
	}

	@RequiresPermissions("system:user:list")
	@PostMapping("/list")
	@ResponseBody
	public TableDataInfo list(User user) {
		QueryWrapper<User> eWrapper = new QueryWrapper<User>(user);
		PageDomain pageDomain = TableSupport.buildPageRequest();
		Integer pageNum = pageDomain.getPageNum();
		Integer pageSize = pageDomain.getPageSize();
		if (StringUtils.isNotBlank(pageDomain.getOrderByColumn()) && StringUtils.isNotBlank(pageDomain.getIsAsc())) {
			if ("asc".equals(pageDomain.getIsAsc())) {
				eWrapper.orderByAsc(StringUtils.camel2Underline(pageDomain.getOrderByColumn()));
			} else {
				eWrapper.orderByDesc(StringUtils.camel2Underline(pageDomain.getOrderByColumn()));
			}
		}
		IPage<User> pageResult = userService.page(new Page<User>(pageNum, pageSize), eWrapper);
		return getDataTable(pageResult);
	}

	@Log(title = "用户管理", businessType = BusinessType.EXPORT)
	@RequiresPermissions("system:user:export")
	@PostMapping("/export")
	@ResponseBody
	public AjaxResult export(User user) {
		List<User> list = userService.list(new QueryWrapper<User>(user));
		ExcelUtil<User> util = new ExcelUtil<User>(User.class);
		return util.exportExcel(list, "user");
	}

	/**
	 * 新增用户
	 */
	@GetMapping("/add")
	public String add(ModelMap mmap) {
		mmap.put("roles", roleService.list());
		return prefix + "/add";
	}

	/**
	 * 新增保存用户
	 */
	@RequiresPermissions("system:user:add")
	@Log(title = "用户管理", businessType = BusinessType.INSERT)
	@PostMapping("/add")
	@Transactional(rollbackFor = Exception.class)
	@ResponseBody
	public AjaxResult addSave(User user) {
		if (StringUtils.isNotNull(user.getUserId()) && User.isAdmin(user.getUserId())) {
			return error("不允许修改超级管理员用户");
		}
		return toAjax(userService.insertUser(user));
	}

	/**
	 * 修改用户
	 */
	@GetMapping("/edit/{userId}")
	public String edit(@PathVariable("userId") String userId, ModelMap mmap) {
		mmap.put("user", userService.getById(userId));
		mmap.put("roles", roleService.selectRolesByUserId(userId));
		return prefix + "/edit";
	}

	/**
	 * 修改保存用户
	 */
	@RequiresPermissions("system:user:edit")
	@Log(title = "用户管理", businessType = BusinessType.UPDATE)
	@PostMapping("/edit")
	@Transactional(rollbackFor = Exception.class)
	@ResponseBody
	public AjaxResult editSave(User user) {
		if (StringUtils.isNotNull(user.getUserId()) && User.isAdmin(user.getUserId())) {
			return error("不允许修改超级管理员用户");
		}
		return toAjax(userService.updateUser(user));
	}

	@RequiresPermissions("system:user:resetPwd")
	@Log(title = "重置密码", businessType = BusinessType.UPDATE)
	@GetMapping("/resetPwd/{userId}")
	public String resetPwd(@PathVariable("userId") String userId, ModelMap mmap) {
		mmap.put("user", userService.getById(userId));
		return prefix + "/resetPwd";
	}

	@RequiresPermissions("system:user:resetPwd")
	@Log(title = "重置密码", businessType = BusinessType.UPDATE)
	@PostMapping("/resetPwd")
	@ResponseBody
	public AjaxResult resetPwd(User user) {
		return toAjax(userService.resetUserPwd(user));
	}

	@RequiresPermissions("system:user:remove")
	@Log(title = "用户管理", businessType = BusinessType.DELETE)
	@PostMapping("/remove")
	@ResponseBody
	public AjaxResult remove(String ids) {
		try {
			return toAjax(userService.removeById(ids));
		} catch (Exception e) {
			return error(e.getMessage());
		}
	}

	/**
	 * 校验用户名
	 */
	@PostMapping("/checkLoginNameUnique")
	@ResponseBody
	public String checkLoginNameUnique(User user) {
		return userService.checkUserUnique(user);
	}

	/**
	 * 校验手机号码
	 */
	@PostMapping("/checkPhoneUnique")
	@ResponseBody
	public String checkPhoneUnique(User user) {
		return userService.checkUserUnique(user);
	}

	/**
	 * 校验email邮箱
	 */
	@PostMapping("/checkEmailUnique")
	@ResponseBody
	public String checkEmailUnique(User user) {
		return userService.checkUserUnique(user);
	}
}