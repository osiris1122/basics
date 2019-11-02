package com.basics.system.service.impl;

import com.basics.system.entity.OperLog;
import com.basics.system.mapper.OperLogMapper;
import com.basics.system.service.OperLogService;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import org.springframework.stereotype.Service;

/**
 * <p>
 * 操作日志记录 服务实现类
 * </p>
 *
 * @author basics
 * @since 2018-12-12
 */
@Service
public class OperLogServiceImpl extends ServiceImpl<OperLogMapper, OperLog> implements OperLogService {

	@Override
	public void cleanOperLog() {
		baseMapper.cleanOperLog();
	}

}
