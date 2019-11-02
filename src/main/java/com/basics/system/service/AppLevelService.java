package com.basics.system.service;

import com.baomidou.mybatisplus.extension.service.IService;
import com.basics.system.entity.CuCustomer;
import com.basics.system.entity.Level;

import java.util.List;

/**
 * @author RushLUO
 * @date 2019/10/31 11:22
 */
public interface AppLevelService extends IService<Level> {
    /**
     * 新增等级
     * @param level
     * @return
     */
    boolean insertLevel(Level level);

    List<Level> selectAppLevelsByCustomer(CuCustomer cuCustomer);
}
