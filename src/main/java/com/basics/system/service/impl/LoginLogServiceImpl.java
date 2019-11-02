package com.basics.system.service.impl;

import com.basics.system.entity.LoginLog;
import com.basics.system.mapper.LoginLogMapper;
import com.basics.system.service.LoginLogService;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import org.springframework.stereotype.Service;

/**
 * <p>
 * 系统访问记录 服务实现类
 * </p>
 *
 * @author basics
 * @since 2018-12-12
 */
@Service
public class LoginLogServiceImpl extends ServiceImpl<LoginLogMapper, LoginLog> implements LoginLogService {

	@Override
	public void cleanLogininfor() {
		baseMapper.cleanLogininfor();
	}

}
