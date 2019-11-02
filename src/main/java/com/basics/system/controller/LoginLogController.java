package com.basics.system.controller;


import org.springframework.web.bind.annotation.GetMapping;
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
import com.basics.system.entity.LoginLog;
import com.basics.system.service.LoginLogService;

import java.util.List;

import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

/**
 * <p>
 * 系统访问记录 前端控制器
 * </p>
 *
 * @author basics
 * @since 2018-12-12
 */
@Controller
@RequestMapping("/monitor/logininfor")
public class LoginLogController extends BaseController{
	private String prefix = "monitor/logininfor";

    @Autowired
    private LoginLogService loginLogService;

    @RequiresPermissions("monitor:logininfor:view")
    @GetMapping()
    public String logininfor()
    {
        return prefix + "/logininfor";
    }

    @RequiresPermissions("monitor:logininfor:list")
    @PostMapping("/list")
    @ResponseBody
    public TableDataInfo list(LoginLog loginLog)
    {
    	QueryWrapper<LoginLog> eWrapper = new QueryWrapper<LoginLog>(loginLog);
		PageDomain pageDomain = TableSupport.buildPageRequest();
        Integer pageNum = pageDomain.getPageNum();
        Integer pageSize = pageDomain.getPageSize();
        if (StringUtils.isNotBlank(pageDomain.getOrderByColumn()) && StringUtils.isNotBlank(pageDomain.getIsAsc()))
        {
        	if("asc".equals(pageDomain.getIsAsc())) {
        		eWrapper.orderByAsc(StringUtils.camel2Underline(pageDomain.getOrderByColumn()));
        	}else {
        		eWrapper.orderByDesc(StringUtils.camel2Underline(pageDomain.getOrderByColumn()));
        	}
        }
		IPage<LoginLog> pageResult=loginLogService.page(new Page<LoginLog>(pageNum,pageSize),eWrapper);
		return getDataTable(pageResult);
    }

    @Log(title = "登陆日志", businessType = BusinessType.EXPORT)
    @RequiresPermissions("monitor:logininfor:export")
    @PostMapping("/export")
    @ResponseBody
    public AjaxResult export(LoginLog loginLog)
    {
        List<LoginLog> list = loginLogService.list(new QueryWrapper<LoginLog>(loginLog));
        ExcelUtil<LoginLog> util = new ExcelUtil<LoginLog>(LoginLog.class);
        return util.exportExcel(list, "logininfor");
    }

    @RequiresPermissions("monitor:logininfor:remove")
    @Log(title = "登陆日志", businessType = BusinessType.DELETE)
    @PostMapping("/remove")
    @ResponseBody
    public AjaxResult remove(String ids)
    {
        return toAjax(loginLogService.removeById(ids));
    }
    
    @RequiresPermissions("monitor:logininfor:remove")
    @Log(title = "登陆日志", businessType = BusinessType.CLEAN)
    @PostMapping("/clean")
    @ResponseBody
    public AjaxResult clean()
    {
    	loginLogService.cleanLogininfor();
        return success();
    }
}

