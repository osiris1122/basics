package com.basics.system.mapper;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.core.toolkit.Constants;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.basics.system.entity.CuCustomer;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * @author RushLUO
 * @date 2019/10/31 11:28
 */
public interface CuCustomerMapper extends BaseMapper<CuCustomer> {
    List<CuCustomer> getListAndLevel(@Param("cuCustomer") CuCustomer cuCustomer, @Param("limit") Integer limit, @Param("offset") Integer offset);

    IPage<CuCustomer> selectLv(Page<CuCustomer> page, @Param(Constants.WRAPPER) QueryWrapper<CuCustomer> eWrapper);
}
