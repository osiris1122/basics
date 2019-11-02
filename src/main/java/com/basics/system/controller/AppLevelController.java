package com.basics.system.controller;

import com.alibaba.fastjson.JSONObject;
import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.basics.common.utils.StringUtils;
import com.basics.framework.aspectj.lang.annotation.Log;
import com.basics.framework.aspectj.lang.enums.BusinessType;
import com.basics.framework.web.domain.AjaxResult;
import com.basics.framework.web.page.PageDomain;
import com.basics.framework.web.page.TableDataInfo;
import com.basics.framework.web.page.TableSupport;
import com.basics.system.entity.Level;
import com.basics.system.entity.Menu;
import com.basics.system.entity.RoleMenu;
import com.basics.system.service.AppLevelService;
import com.google.common.collect.Lists;
import lombok.extern.slf4j.Slf4j;
import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.*;
import com.basics.framework.web.controller.BaseController;

import java.util.Arrays;
import java.util.List;

/**
 * 等级配置表
 *
 * @author RushLUO
 * @date 2019/10/31 10:55
 */
@Slf4j
@Controller
@RequestMapping("/system/level")
public class AppLevelController extends BaseController {
    //指向html目录
    private String prefix = "system/level";

    @Autowired
    private AppLevelService levelService;

    @RequiresPermissions("system:level:view")
    @GetMapping()
    public String level() {
        return prefix + "/level";
    }

    /**
     * 查询等级列表
     * @param level
     * @return
     */
    @RequiresPermissions("system:level:list")
    @PostMapping("/list")
    @ResponseBody
    public TableDataInfo list(Level level) {
        QueryWrapper<Level> eWrapper = new QueryWrapper<Level>(level);
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
        IPage<Level> pageResult = levelService.page(new Page<Level>(pageNum, pageSize), eWrapper);
        return getDataTable(pageResult);
    }

    /**
     * 新增等级
     */
    @GetMapping("/add")
    public String add(ModelMap mmap) {
        return prefix + "/add";
    }
    /**
     * 新增保存等级
     */
    @RequiresPermissions("system:level:add")
    @Log(title = "等级管理", businessType = BusinessType.INSERT)
    @PostMapping("/add")
    @Transactional(rollbackFor = Exception.class)
    @ResponseBody
    public AjaxResult addSave(Level level) {
        return toAjax(levelService.insertLevel(level));
    }

    /**
     * 修改等级
     */
    @GetMapping("/edit/{levelId}")
    public String edit(@PathVariable("levelId") String levelId, ModelMap mmap) {
        mmap.put("level", levelService.getById(levelId));
        return prefix + "/edit";
    }

    /**
     * 修改保存等级
     */
    @RequiresPermissions("system:level:edit")
    @Log(title = "等级管理", businessType = BusinessType.UPDATE)
    @PostMapping("/edit")
    @Transactional(rollbackFor = Exception.class)
    @ResponseBody
    public AjaxResult editSave(Level level) {
       /* if (StringUtils.isNotNull(level.getLevelId()) && level.isAdmin(user.getUserId())) {
            return error("不允许修改超级管理员用户");
        }*/
        return toAjax(levelService.updateById(level));
    }

    @RequiresPermissions("system:level:remove")
    @Log(title = "等级管理", businessType = BusinessType.DELETE)
    @PostMapping("/remove")
    @ResponseBody
    public AjaxResult remove(String ids) {
        try {
            return toAjax(levelService.removeByIds(Arrays.asList(ids.split(","))));
        } catch (Exception e) {
            return error(e.getMessage());
        }
    }

}
