package com.basics.system.service;

import com.basics.system.entity.DictType;
import com.baomidou.mybatisplus.extension.service.IService;

/**
 * <p>
 * 字典类型表 服务类
 * </p>
 *
 * @author basics
 * @since 2018-12-12
 */
public interface DictTypeService extends IService<DictType> {

	String checkDictTypeUnique(DictType dictType);

}
