package com.basics.system.mapper;

import com.basics.system.entity.LoginLog;
import com.baomidou.mybatisplus.core.mapper.BaseMapper;

/**
 * <p>
 * 系统访问记录 Mapper 接口
 * </p>
 *
 * @author basics
 * @since 2018-12-12
 */
public interface LoginLogMapper extends BaseMapper<LoginLog> {

	void cleanLogininfor();

}
