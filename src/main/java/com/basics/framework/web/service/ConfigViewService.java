package com.basics.framework.web.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.basics.system.entity.Config;
import com.basics.system.service.ConfigService;


/**
 * basics首创 html调用 thymeleaf 实现参数管理
 * 
 * @author basics
 */
@Service("config")
public class ConfigViewService
{
    @Autowired
    private ConfigService configService;

    /**
     * 根据键名查询参数配置信息
     * 
     * @param configName 参数名称
     * @return 参数键值
     */
    public String getKey(String configKey)
    {
        return configService.getOne(new QueryWrapper<Config>().eq("CONFIG_KEY", configKey)).getConfigValue();
    }

}
