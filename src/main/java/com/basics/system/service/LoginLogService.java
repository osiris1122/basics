package com.basics.system.service;

import com.basics.system.entity.LoginLog;
import com.baomidou.mybatisplus.extension.service.IService;

/**
 * <p>
 * 系统访问记录 服务类
 * </p>
 *
 * @author basics
 * @since 2018-12-12
 */
public interface LoginLogService extends IService<LoginLog> {

	void cleanLogininfor();

}
