package com.basics.system.controller;

import java.util.List;
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
import com.basics.system.entity.DictData;
import com.basics.system.service.DictDataService;

/**
 * 数据字典信息
 * 
 * @author basics
 */
@Controller
@RequestMapping("/system/dict/data")
public class DictDataController extends BaseController
{
    private String prefix = "system/dict/data";

    @Autowired
    private DictDataService dictDataService;

    @RequiresPermissions("system:dict:view")
    @GetMapping()
    public String dictData()
    {
        return prefix + "/data";
    }

    @PostMapping("/list")
    @RequiresPermissions("system:dict:list")
    @ResponseBody
    public TableDataInfo list(DictData dictData)
    {
		QueryWrapper<DictData> eWrapper = new QueryWrapper<DictData>(dictData);
		PageDomain pageDomain = TableSupport.buildPageRequest();
        if (StringUtils.isNotBlank(pageDomain.getOrderByColumn()) && StringUtils.isNotBlank(pageDomain.getIsAsc()))
        {
        	if("asc".equals(pageDomain.getIsAsc())) {
        		eWrapper.orderByAsc(StringUtils.camel2Underline(pageDomain.getOrderByColumn()));
        	}else {
        		eWrapper.orderByDesc(StringUtils.camel2Underline(pageDomain.getOrderByColumn()));
        	}
        }
		IPage<DictData> pageResult=dictDataService.page(new Page<DictData>(pageDomain.getPageNum(),pageDomain.getPageSize()),eWrapper);
		return getDataTable(pageResult);
    }

    @Log(title = "字典数据", businessType = BusinessType.EXPORT)
    @RequiresPermissions("system:dict:export")
    @PostMapping("/export")
    @ResponseBody
    public AjaxResult export(DictData dictData)
    {
        List<DictData> list = dictDataService.list(new QueryWrapper<DictData>(dictData));
        ExcelUtil<DictData> util = new ExcelUtil<DictData>(DictData.class);
        return util.exportExcel(list, "dictData");
    }

    /**
     * 新增字典类型
     */
    @GetMapping("/add/{dictType}")
    public String add(@PathVariable("dictType") String dictType, ModelMap mmap)
    {
        mmap.put("dictType", dictType);
        return prefix + "/add";
    }

    /**
     * 新增保存字典类型
     */
    @Log(title = "字典数据", businessType = BusinessType.INSERT)
    @RequiresPermissions("system:dict:add")
    @PostMapping("/add")
    @ResponseBody
    public AjaxResult addSave(DictData dict)
    {
        return toAjax(dictDataService.save(dict));
    }

    /**
     * 修改字典类型
     */
    @GetMapping("/edit/{dictCode}")
    public String edit(@PathVariable("dictCode") String dictCode, ModelMap mmap)
    {
        mmap.put("dict", dictDataService.getById(dictCode));
        return prefix + "/edit";
    }

    /**
     * 修改保存字典类型
     */
    @Log(title = "字典数据", businessType = BusinessType.UPDATE)
    @RequiresPermissions("system:dict:edit")
    @PostMapping("/edit")
    @ResponseBody
    public AjaxResult editSave(DictData dict)
    {
        return toAjax(dictDataService.saveOrUpdate(dict));
    }

    @Log(title = "字典数据", businessType = BusinessType.DELETE)
    @RequiresPermissions("system:dict:remove")
    @PostMapping("/remove")
    @ResponseBody
    public AjaxResult remove(String ids)
    {
        return toAjax(dictDataService.removeById(ids));
    }
}
