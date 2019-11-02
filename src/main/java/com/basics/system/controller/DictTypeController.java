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
import com.basics.system.entity.DictType;
import com.basics.system.service.DictTypeService;

/**
 * 数据字典信息
 * 
 * @author basics
 */
@Controller
@RequestMapping("/system/dict")
public class DictTypeController extends BaseController
{
    private String prefix = "system/dict/type";

    @Autowired
    private DictTypeService dictTypeService;

    @RequiresPermissions("system:dict:view")
    @GetMapping()
    public String dictType()
    {
        return prefix + "/type";
    }

    @PostMapping("/list")
    @RequiresPermissions("system:dict:list")
    @ResponseBody
    public TableDataInfo list(DictType dictType)
    {
		QueryWrapper<DictType> eWrapper = new QueryWrapper<DictType>(dictType);
		PageDomain pageDomain = TableSupport.buildPageRequest();
        if (StringUtils.isNotBlank(pageDomain.getOrderByColumn()) && StringUtils.isNotBlank(pageDomain.getIsAsc()))
        {
        	if("asc".equals(pageDomain.getIsAsc())) {
        		eWrapper.orderByAsc(StringUtils.camel2Underline(pageDomain.getOrderByColumn()));
        	}else {
        		eWrapper.orderByDesc(StringUtils.camel2Underline(pageDomain.getOrderByColumn()));
        	}
        }
		IPage<DictType> pageResult=dictTypeService.page(new Page<DictType>(pageDomain.getPageNum(),pageDomain.getPageSize()),eWrapper);
		return getDataTable(pageResult);
    }

    @Log(title = "字典类型", businessType = BusinessType.EXPORT)
    @RequiresPermissions("system:dict:export")
    @PostMapping("/export")
    @ResponseBody
    public AjaxResult export(DictType dictType)
    {
        List<DictType> list = dictTypeService.list(new QueryWrapper<DictType>(dictType));
        ExcelUtil<DictType> util = new ExcelUtil<DictType>(DictType.class);
        return util.exportExcel(list, "dictType");
    }

    /**
     * 新增字典类型
     */
    @GetMapping("/add")
    public String add()
    {
        return prefix + "/add";
    }

    /**
     * 新增保存字典类型
     */
    @Log(title = "字典类型", businessType = BusinessType.INSERT)
    @RequiresPermissions("system:dict:add")
    @PostMapping("/add")
    @ResponseBody
    public AjaxResult addSave(DictType dict)
    {
        return toAjax(dictTypeService.save(dict));
    }

    /**
     * 修改字典类型
     */
    @GetMapping("/edit/{dictId}")
    public String edit(@PathVariable("dictId") String dictId, ModelMap mmap)
    {
        mmap.put("dict", dictTypeService.getById(dictId));
        return prefix + "/edit";
    }

    /**
     * 修改保存字典类型
     */
    @Log(title = "字典类型", businessType = BusinessType.UPDATE)
    @RequiresPermissions("system:dict:edit")
    @PostMapping("/edit")
    @ResponseBody
    public AjaxResult editSave(DictType dict)
    {
        return toAjax(dictTypeService.saveOrUpdate(dict));
    }

    @Log(title = "字典类型", businessType = BusinessType.DELETE)
    @RequiresPermissions("system:dict:remove")
    @PostMapping("/remove")
    @ResponseBody
    public AjaxResult remove(String ids)
    {
        try
        {
            return toAjax(dictTypeService.removeById(ids));
        }
        catch (Exception e)
        {
            return error(e.getMessage());
        }
    }

    /**
     * 查询字典详细
     */
    @RequiresPermissions("system:dict:list")
    @GetMapping("/detail/{dictId}")
    public String detail(@PathVariable("dictId") String dictId, ModelMap mmap)
    {
        mmap.put("dict", dictTypeService.getById(dictId));
        mmap.put("dictList", dictTypeService.list());
        return "system/dict/data/data";
    }

    /**
     * 校验字典类型
     */
    @PostMapping("/checkDictTypeUnique")
    @ResponseBody
    public String checkDictTypeUnique(DictType dictType)
    {
        return dictTypeService.checkDictTypeUnique(dictType);
    }
}
