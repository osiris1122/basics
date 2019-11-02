package com.basics.system.service;

import com.basics.system.entity.Config;
import com.baomidou.mybatisplus.extension.service.IService;

/**
 * <p>
 * 参数配置表 服务类
 * </p>
 *
 * @author basics
 * @since 2018-12-12
 */
public interface ConfigService extends IService<Config> {

	String checkConfigKeyUnique(Config config);

}
