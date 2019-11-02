package com.basics.system.controller;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.basics.common.utils.StringUtils;
import com.basics.framework.aspectj.lang.annotation.Log;
import com.basics.framework.aspectj.lang.enums.BusinessType;
import com.basics.framework.web.controller.BaseController;
import com.basics.framework.web.domain.AjaxResult;
import com.basics.framework.web.page.PageDomain;
import com.basics.framework.web.page.TableDataInfo;
import com.basics.framework.web.page.TableSupport;
import com.basics.system.entity.CuCustomer;
import com.basics.system.entity.Level;
import com.basics.system.mapper.CuCustomerMapper;
import com.basics.system.service.AppLevelService;
import com.basics.system.service.CuCustomerService;
import lombok.extern.slf4j.Slf4j;
import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.jsoup.helper.DataUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.*;

import java.util.Arrays;
import java.util.Collections;
import java.util.List;

/**
 * 会员管理
 *
 * @author RushLUO
 * @date 2019/10/31 15:49
 */
@Slf4j
@Controller
@RequestMapping("/system/cuCustomer")
public class CuCustomerController extends BaseController {
    //指向html目录
    private String prefix = "system/cuCustomer";
    @Autowired
    private CuCustomerService customerService;
    @Autowired
    private AppLevelService appLevelService;
    /**
     * 会员视图
     * @return
     */
    @RequiresPermissions("system:cuCustomer:view")
    @GetMapping()
    public String cuCustomer() {
        return prefix + "/cuCustomer";
    }

    /**
     * 查询会员列表
     * @param cuCustomer
     * @return
     */
    @RequiresPermissions("system:cuCustomer:list")
    @PostMapping("/list")
    @ResponseBody
    public TableDataInfo list(CuCustomer cuCustomer) {
        QueryWrapper<CuCustomer> eWrapper = new QueryWrapper<CuCustomer>(cuCustomer);
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
        Page<CuCustomer> page = new Page<>(pageNum, pageSize);
        IPage<CuCustomer> pageResult = customerService.page(page, eWrapper);
        TableDataInfo dataTable = getDataTable(pageResult);
        //写入星级名称
        List<CuCustomer> cuCustomers = (List<CuCustomer>) dataTable.getRows();
        List<Level> levelList = appLevelService.list();
        cuCustomers.forEach(customer -> {
            for (Level level : levelList){
                if (customer.getLevelId().equals(level.getLevelId())){
                    customer.setLevelName(level.getLevelName());
                }
            }
        });
//        List<CuCustomer> listAndLevel = customerService.getListAndLevel(cuCustomer, pageNum, pageSize);
//        TableDataInfo dataTable = new TableDataInfo();
//        dataTable.setRows(listAndLevel);
//        dataTable.setTotal(customerService.count());
        return dataTable;
    }

    /**
     * 查询会员列表
     * @param cuCustomer
     * @return
     */
   /* @RequiresPermissions("system:cuCustomer:list")
    @PostMapping("/list")
    @ResponseBody
    public TableDataInfo list(CuCustomer cuCustomer) {
        QueryWrapper<CuCustomer> eWrapper = new QueryWrapper<CuCustomer>(cuCustomer);
        if (cuCustomer != null && cuCustomer.getCustomerName() != null){
            eWrapper.eq("customer_name", cuCustomer.getCustomerName());
        }
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
        IPage<CuCustomer> pageResult = customerService.selectLv(new Page<CuCustomer>(pageNum, pageSize), eWrapper);
        TableDataInfo dataTable = getDataTable(pageResult);
        return dataTable;
    }*/

    /**
     * 会员导出
     * @param cuCustomer
     * @return
     */
  /*  @Log(title = "会员管理", businessType = BusinessType.EXPORT)
    @RequiresPermissions("system:cuCustomer:export")
    @PostMapping("/export")
    @ResponseBody
    public AjaxResult export(CuCustomer cuCustomer) {
        List<CuCustomer> list = customerService.list(new QueryWrapper<CuCustomer>(cuCustomer));
        ExcelUtil<CuCustomer> util = new ExcelUtil<CuCustomer>(CuCustomer.class);
        return util.exportExcel(list, "cuCustomer");
    }*/

    /**
     * 新增会员
     */
    @GetMapping("/add")
    public String add(ModelMap mmap) {
        mmap.put("appLevels", appLevelService.list());
        return prefix + "/add";
    }
    /**
     * 新增保存会员
     */
    @RequiresPermissions("system:cuCustomer:add")
    @Log(title = "会员管理", businessType = BusinessType.INSERT)
    @PostMapping("/add")
    @Transactional(rollbackFor = Exception.class)
    @ResponseBody
    public AjaxResult addSave(CuCustomer CuCustomer) {
        return toAjax(customerService.insertCuCustomer(CuCustomer));
    }

    /**
     * 修改会员
     */
    @GetMapping("/edit/{customerId}")
    public String edit(@PathVariable("customerId") String customerId, ModelMap mmap) {
        CuCustomer cuCustomer = customerService.getById(customerId);
        mmap.put("cuCustomer", cuCustomer);
        mmap.put("appLevels", appLevelService.selectAppLevelsByCustomer(cuCustomer));
        return prefix + "/edit";
    }

    /**
     * 修改保存会员
     */
    @RequiresPermissions("system:cuCustomer:edit")
    @Log(title = "会员管理", businessType = BusinessType.UPDATE)
    @PostMapping("/edit")
    @Transactional(rollbackFor = Exception.class)
    @ResponseBody
    public AjaxResult editSave(CuCustomer cuCustomer) {
       /* if (StringUtils.isNotNull(CuCustomer.getCuCustomerId()) && CuCustomer.isAdmin(user.getUserId())) {
            return error("不允许修改超级管理员用户");
        }*/
        return toAjax(customerService.updateById(cuCustomer));
    }

    @RequiresPermissions("system:cuCustomer:remove")
    @Log(title = "会员管理", businessType = BusinessType.DELETE)
    @PostMapping("/remove")
    @ResponseBody
    public AjaxResult remove(String ids) {
        try {
            return toAjax(customerService.removeByIds(Arrays.asList(ids.split(","))));
        } catch (Exception e) {
            return error(e.getMessage());
        }
    }


}
