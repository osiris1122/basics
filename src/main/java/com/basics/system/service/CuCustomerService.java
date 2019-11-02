package com.basics.system.service;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.baomidou.mybatisplus.extension.service.IService;
import com.basics.system.entity.CuCustomer;

import java.util.List;

/**
 * @author RushLUO
 * @date 2019/10/31 11:23
 */
public interface CuCustomerService extends IService<CuCustomer> {
    /**
     * 新增会员
     * @param cuCustomer
     * @return
     */
    boolean insertCuCustomer(CuCustomer cuCustomer);

    List<CuCustomer> getListAndLevel(CuCustomer cuCustomer, Integer pageNum, Integer pageSize);

    IPage<CuCustomer> selectLv(Page<CuCustomer> cuCustomerPage, QueryWrapper<CuCustomer> eWrapper);
}
