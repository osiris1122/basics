package com.basics.system.controller;

import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.basics.common.utils.StringUtils;
import com.basics.common.utils.security.ShiroUtils;
import com.basics.framework.aspectj.lang.annotation.Log;
import com.basics.framework.aspectj.lang.enums.BusinessType;
import com.basics.framework.shiro.session.OnlineSessionDAO;
import com.basics.framework.web.controller.BaseController;
import com.basics.framework.web.domain.AjaxResult;
import com.basics.framework.web.page.PageDomain;
import com.basics.framework.web.page.TableDataInfo;
import com.basics.framework.web.page.TableSupport;
import com.basics.system.entity.OnlineSession;
import com.basics.system.entity.UserOnline;
import com.basics.system.service.UserOnlineService;

/**
 * 在线用户监控
 * 
 * @author basics
 */
@Controller
@RequestMapping("/monitor/online")
public class UserOnlineController extends BaseController {
	private String prefix = "monitor/online";

	@Autowired
	private UserOnlineService userOnlineService;

	@Autowired
	private OnlineSessionDAO onlineSessionDAO;

	@RequiresPermissions("monitor:online:view")
	@GetMapping()
	public String online() {
		return prefix + "/online";
	}

	@RequiresPermissions("monitor:online:list")
	@PostMapping("/list")
	@ResponseBody
	public TableDataInfo list(UserOnline userOnline) {
		QueryWrapper<UserOnline> eWrapper = new QueryWrapper<UserOnline>(userOnline);
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
		IPage<UserOnline> pageResult = userOnlineService.page(new Page<UserOnline>(pageNum, pageSize), eWrapper);
		return getDataTable(pageResult);
	}

	@RequiresPermissions("monitor:online:batchForceLogout")
	@Log(title = "在线用户", businessType = BusinessType.FORCE)
	@PostMapping("/batchForceLogout")
	@ResponseBody
	public AjaxResult batchForceLogout(@RequestParam("ids[]") String[] ids) {
		for (String sessionId : ids) {
			UserOnline online = userOnlineService.getById(sessionId);
			if (online == null) {
				return error("用户已下线");
			}
			OnlineSession onlineSession = (OnlineSession) onlineSessionDAO.readSession(online.getSessionId());
			if (onlineSession == null) {
				return error("用户已下线");
			}
			if (sessionId.equals(ShiroUtils.getSessionId())) {
				return error("当前登陆用户无法强退");
			}
			onlineSession.setStatus(OnlineSession.OnlineStatus.off_line);
			online.setLoginStatus(OnlineSession.OnlineStatus.off_line);
			userOnlineService.save(online);
		}
		return success();
	}

	@RequiresPermissions("monitor:online:forceLogout")
	@Log(title = "在线用户", businessType = BusinessType.FORCE)
	@PostMapping("/forceLogout")
	@ResponseBody
	public AjaxResult forceLogout(String sessionId) {
		UserOnline online = userOnlineService.getById(sessionId);
		if (sessionId.equals(ShiroUtils.getSessionId())) {
			return error("当前登陆用户无法强退");
		}
		if (online == null) {
			return error("用户已下线");
		}
		OnlineSession onlineSession = (OnlineSession) onlineSessionDAO.readSession(online.getSessionId());
		if (onlineSession == null) {
			return error("用户已下线");
		}
		onlineSession.setStatus(OnlineSession.OnlineStatus.off_line);
		online.setLoginStatus(OnlineSession.OnlineStatus.off_line);
		userOnlineService.save(online);
		return success();
	}
}
