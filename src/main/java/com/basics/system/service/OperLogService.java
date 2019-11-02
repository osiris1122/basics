package com.basics.system.service;

import com.basics.system.entity.OperLog;
import com.baomidou.mybatisplus.extension.service.IService;

/**
 * <p>
 * 操作日志记录 服务类
 * </p>
 *
 * @author basics
 * @since 2018-12-12
 */
public interface OperLogService extends IService<OperLog> {

	void cleanOperLog();

}
