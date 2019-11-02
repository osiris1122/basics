package com.basics.system.service.impl;

import com.basics.common.utils.security.ShiroUtils;
import com.basics.system.entity.CuCustomer;
import com.basics.system.entity.Level;
import com.basics.system.mapper.AppLevelMapper;
import com.basics.system.service.AppLevelService;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import org.springframework.stereotype.Service;

import java.util.Date;
import java.util.List;

/**
 * @author RushLUO
 * @date 2019/10/31 11:24
 */
@Service
public class AppLevelServiceImpl extends ServiceImpl<AppLevelMapper, Level> implements AppLevelService {


    @Override
    public boolean insertLevel(Level level) {
        level.setCreateUser(ShiroUtils.getLoginName());
        level.setCreateTime(new Date());
        baseMapper.insert(level);
        return true;
    }

    @Override
    public List<Level> selectAppLevelsByCustomer(CuCustomer cuCustomer) {
        //会员的星级Id
        String levelId = cuCustomer.getLevelId();

        //给会员对应的等级打上标签
        List<Level> levels = list();
        for (Level level : levels) {
            if (level.getLevelId().equals(levelId)) {
                level.setDelFlag(2);
                break;
            }
        }
        return levels;
    }
}
