package com.basics.system.controller;

import java.util.List;

import com.basics.system.service.UserService;
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
import com.basics.system.entity.OperLog;
import com.basics.system.service.OperLogService;

/**
 * 操作日志记录
 * 
 * @author basics
 */
@Controller
@RequestMapping("/monitor/operlog")
public class OperLogController extends BaseController
{
    private String prefix = "monitor/operlog";

    @Autowired
    private OperLogService operLogService;

    @RequiresPermissions("monitor:operlog:view")
    @GetMapping()
    public String operlog()
    {
        return prefix + "/operlog";
    }

    @RequiresPermissions("monitor:operlog:list")
    @PostMapping("/list")
    @ResponseBody
    public TableDataInfo list(OperLog operLog)
    {
    	QueryWrapper<OperLog> eWrapper = new QueryWrapper<OperLog>(operLog);
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
		IPage<OperLog> pageResult=operLogService.page(new Page<OperLog>(pageNum,pageSize),eWrapper);
		return getDataTable(pageResult);
    }

    @Log(title = "操作日志", businessType = BusinessType.EXPORT)
    @RequiresPermissions("monitor:operlog:export")
    @PostMapping("/export")
    @ResponseBody
    public AjaxResult export(OperLog operLog)
    {
        List<OperLog> list = operLogService.list(new QueryWrapper<OperLog>(operLog));
        ExcelUtil<OperLog> util = new ExcelUtil<>(OperLog.class);
        return util.exportExcel(list, "operLog");
    }

    @RequiresPermissions("monitor:operlog:remove")
    @PostMapping("/remove")
    @ResponseBody
    public AjaxResult remove(String ids)
    {
        return toAjax(operLogService.removeById(ids));
    }

    @RequiresPermissions("monitor:operlog:detail")
    @GetMapping("/detail/{operId}")
    public String detail(@PathVariable("operId") String operId, ModelMap mmap)
    {
        mmap.put("operLog", operLogService.getById(operId));
        return prefix + "/detail";
    }
    
    @Log(title = "操作日志", businessType = BusinessType.CLEAN)
    @RequiresPermissions("monitor:operlog:remove")
    @PostMapping("/clean")
    @ResponseBody
    public AjaxResult clean()
    {
        operLogService.cleanOperLog();
        return success();
    }
}
