package com.basics.system.service.impl;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.basics.common.utils.security.ShiroUtils;
import com.basics.system.entity.CuCustomer;
import com.basics.system.mapper.CuCustomerMapper;
import com.basics.system.service.CuCustomerService;
import org.springframework.stereotype.Service;

import java.util.Date;
import java.util.List;

/**
 * @author RushLUO
 * @date 2019/10/31 11:26
 */
@Service
public class CuCustomerServiceImpl extends ServiceImpl<CuCustomerMapper, CuCustomer> implements CuCustomerService {
    @Override
    public boolean insertCuCustomer(CuCustomer cuCustomer) {
        cuCustomer.setCreateUser(ShiroUtils.getLoginName());
        cuCustomer.setCreateTime(new Date());
        baseMapper.insert(cuCustomer);
        return true;
    }

    @Override
    public List<CuCustomer> getListAndLevel(CuCustomer cuCustomer, Integer pageNum, Integer pageSize) {
        return baseMapper.getListAndLevel(cuCustomer, (pageNum - 1) * pageSize, pageSize);
    }

    @Override
    public IPage<CuCustomer> selectLv(Page<CuCustomer> cuCustomerPage, QueryWrapper<CuCustomer> eWrapper) {
        return baseMapper.selectLv(cuCustomerPage, eWrapper);
    }
}
