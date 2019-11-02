package com.basics.system.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.basics.common.utils.file.FileUploadUtils;
import com.basics.framework.aspectj.lang.annotation.Log;
import com.basics.framework.aspectj.lang.enums.BusinessType;
import com.basics.framework.config.BasicsConfig;
import com.basics.framework.shiro.service.PasswordService;
import com.basics.framework.web.controller.BaseController;
import com.basics.framework.web.domain.AjaxResult;
import com.basics.framework.web.service.DictService;
import com.basics.system.entity.User;
import com.basics.system.service.UserService;

/**
 * 个人信息 业务处理
 * 
 * @author basics
 */
@Controller
@RequestMapping("/system/user/profile")
public class ProfileController extends BaseController {
	private static final Logger log = LoggerFactory.getLogger(ProfileController.class);

	private String prefix = "system/user/profile";

	@Autowired
	private UserService userService;

	@Autowired
	private PasswordService passwordService;

	@Autowired
	private DictService dict;

	/**
	 * 个人信息
	 */
	@GetMapping()
	public String profile(ModelMap mmap) {
		User user = getSysUser();
		user.setUserSex(dict.getLabel("sys_user_sex", user.getUserSex()));
		mmap.put("user", user);
		mmap.put("roleGroup", userService.selectUserRoleGroup(user.getUserId()));
		return prefix + "/profile";
	}

	@GetMapping("/checkPassword")
	@ResponseBody
	public boolean checkPassword(String password) {
		User user = getSysUser();
		if (passwordService.matches(user, password)) {
			return true;
		}
		return false;
	}

	@GetMapping("/resetPwd")
	public String resetPwd(ModelMap mmap) {
		User user = getSysUser();
		mmap.put("user", userService.getById(user.getUserId()));
		return prefix + "/resetPwd";
	}

	@Log(title = "重置密码", businessType = BusinessType.UPDATE)
	@PostMapping("/resetPwd")
	@ResponseBody
	public AjaxResult resetPwd(User user) {
		if (userService.resetUserPwd(user)) {
			setSysUser(userService.getById(user.getUserId()));
			return success();
		}
		return error();
	}

	/**
	 * 修改用户
	 */
	@GetMapping("/edit/{userId}")
	public String edit(@PathVariable("userId") String userId, ModelMap mmap) {
		mmap.put("user", userService.getById(userId));
		return prefix + "/edit";
	}

	/**
	 * 修改头像
	 */
	@GetMapping("/avatar/{userId}")
	public String avatar(@PathVariable("userId") String userId, ModelMap mmap) {
		mmap.put("user", userService.getById(userId));
		return prefix + "/avatar";
	}

	/**
	 * 修改用户
	 */
	@Log(title = "个人信息", businessType = BusinessType.UPDATE)
	@PostMapping("/update")
	@ResponseBody
	public AjaxResult update(User user) {
		if (userService.saveOrUpdate(user)) {
			setSysUser(userService.getById(user.getUserId()));
			return success();
		}
		return error();
	}

	/**
	 * 保存头像
	 */
	@Log(title = "个人信息", businessType = BusinessType.UPDATE)
	@PostMapping("/updateAvatar")
	@ResponseBody
	public AjaxResult updateAvatar(User user, @RequestParam("avatarfile") MultipartFile file) {
		try {
			if (!file.isEmpty()) {
				String avatar = FileUploadUtils.upload(BasicsConfig.getAvatarPath(), file);
				user.setUserAvatar(avatar);
				if (userService.saveOrUpdate(user)) {
					setSysUser(userService.getById(user.getUserId()));
					return success();
				}
			}
			return error();
		} catch (Exception e) {
			log.error("修改头像失败！", e);
			return error(e.getMessage());
		}
	}
}
