package com.basics.system.mapper;

import com.basics.system.entity.OperLog;
import com.baomidou.mybatisplus.core.mapper.BaseMapper;

/**
 * <p>
 * 操作日志记录 Mapper 接口
 * </p>
 *
 * @author basics
 * @since 2018-12-12
 */
public interface OperLogMapper extends BaseMapper<OperLog> {

	void cleanOperLog();

}
