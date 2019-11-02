package com.basics.system.service.impl;

import com.basics.common.constant.UserConstants;
import com.basics.common.utils.StringUtils;
import com.basics.system.entity.Config;
import com.basics.system.mapper.ConfigMapper;
import com.basics.system.service.ConfigService;
import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;

import java.util.List;

import org.apache.commons.collections.CollectionUtils;
import org.springframework.stereotype.Service;

/**
 * <p>
 * 参数配置表 服务实现类
 * </p>
 *
 * @author basics
 * @since 2018-12-12
 */
@Service
public class ConfigServiceImpl extends ServiceImpl<ConfigMapper, Config> implements ConfigService {

	@Override
	public String checkConfigKeyUnique(Config config) {
		if(StringUtils.isNotBlank(config.getConfigKey())) {
			List<Config> list=baseMapper.selectList(new QueryWrapper<Config>().eq("CONFIG_ID", config.getConfigId()).eq("CONFIG_KEY", config.getConfigKey()));
			if(CollectionUtils.isNotEmpty(list) && list.size()>1) {
				return UserConstants.CONFIG_KEY_NOT_UNIQUE;
			}
		}
		return UserConstants.CONFIG_KEY_UNIQUE;
	}

}
