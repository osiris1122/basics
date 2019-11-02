package com.basics.system.controller;

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
import com.basics.system.entity.Config;
import com.basics.system.service.ConfigService;

import java.util.List;

import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;

/**
 * <p>
 * 参数配置表 前端控制器
 * </p>
 *
 * @author basics
 * @since 2018-12-12
 */
@Controller
@RequestMapping("/system/config")
public class ConfigController extends BaseController {
	private String prefix = "system/config";

	@Autowired
	private ConfigService configService;

	@RequiresPermissions("system:config:view")
	@GetMapping()
	public String config() {
		return prefix + "/config";
	}

	/**
	 * 查询参数配置列表
	 */
	@RequiresPermissions("system:config:list")
	@PostMapping("/list")
	@ResponseBody
	public TableDataInfo list(Config config) {
		QueryWrapper<Config> eWrapper = new QueryWrapper<Config>(config);
		PageDomain pageDomain = TableSupport.buildPageRequest();
        if (StringUtils.isNotBlank(pageDomain.getOrderByColumn()) && StringUtils.isNotBlank(pageDomain.getIsAsc()))
        {
        	if("asc".equals(pageDomain.getIsAsc())) {
        		eWrapper.orderByAsc(StringUtils.camel2Underline(pageDomain.getOrderByColumn()));
        	}else {
        		eWrapper.orderByDesc(StringUtils.camel2Underline(pageDomain.getOrderByColumn()));
        	}
        }
		IPage<Config> pageResult=configService.page(new Page<Config>(pageDomain.getPageNum(),pageDomain.getPageSize()),eWrapper);
		return getDataTable(pageResult);
	}

	@Log(title = "参数管理", businessType = BusinessType.EXPORT)
	@RequiresPermissions("system:config:export")
	@PostMapping("/export")
	@ResponseBody
	public AjaxResult export(Config config) {
		List<Config> list = configService.list(new QueryWrapper<Config>(config));
		ExcelUtil<Config> util = new ExcelUtil<Config>(Config.class);
		return util.exportExcel(list, "config");
	}

	/**
	 * 新增参数配置
	 */
	@GetMapping("/add")
	public String add() {
		return prefix + "/add";
	}

	/**
	 * 新增保存参数配置
	 */
	@RequiresPermissions("system:config:add")
	@Log(title = "参数管理", businessType = BusinessType.INSERT)
	@PostMapping("/add")
	@ResponseBody
	public AjaxResult addSave(Config config) {
		return toAjax(configService.save(config));
	}

	/**
	 * 修改参数配置
	 */
	@GetMapping("/edit/{configId}")
	public String edit(@PathVariable("configId") Long configId, ModelMap mmap) {
		mmap.put("config", configService.getById(configId));
		return prefix + "/edit";
	}

	/**
	 * 修改保存参数配置
	 */
	@RequiresPermissions("system:config:edit")
	@Log(title = "参数管理", businessType = BusinessType.UPDATE)
	@PostMapping("/edit")
	@ResponseBody
	public AjaxResult editSave(Config config) {
		return toAjax(configService.saveOrUpdate(config));
	}

	/**
	 * 删除参数配置
	 */
	@RequiresPermissions("system:config:remove")
	@Log(title = "参数管理", businessType = BusinessType.DELETE)
	@PostMapping("/remove")
	@ResponseBody
	public AjaxResult remove(String ids) {
		return toAjax(configService.removeById(ids));
	}

	/**
	 * 校验参数键名
	 */
	@PostMapping("/checkConfigKeyUnique")
	@ResponseBody
	public String checkConfigKeyUnique(Config config) {
		return configService.checkConfigKeyUnique(config);
	}
}
