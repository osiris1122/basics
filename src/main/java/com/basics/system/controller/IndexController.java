package com.basics.system.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;

import com.basics.framework.config.BasicsConfig;
import com.basics.framework.web.controller.BaseController;
import com.basics.system.entity.Menu;
import com.basics.system.entity.User;
import com.basics.system.service.MenuService;

/**
 * 首页 业务处理
 * 
 * @author basics
 */
@Controller
public class IndexController extends BaseController {
	@Autowired
	private MenuService menuService;

	@Autowired
	private BasicsConfig basicsConfig;

	// 系统首页
	@GetMapping("/index")
	public String index(ModelMap mmap) {
		// 取身份信息
		User user = getSysUser();
		// 根据用户id取出菜单
		List<Menu> menus = menuService.selectMenusByUser(user);
		mmap.put("menus", menus);
		mmap.put("user", user);
		mmap.put("copyrightYear", basicsConfig.getCopyrightYear());
		return "index";
	}

	// 系统介绍
	@GetMapping("/system/main")
	public String main(ModelMap mmap) {
		mmap.put("version", basicsConfig.getVersion());
		return "main";
	}
}
