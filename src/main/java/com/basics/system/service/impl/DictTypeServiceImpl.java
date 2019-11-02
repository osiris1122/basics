package com.basics.system.service.impl;

import com.basics.common.constant.UserConstants;
import com.basics.common.utils.StringUtils;
import com.basics.system.entity.DictType;
import com.basics.system.mapper.DictTypeMapper;
import com.basics.system.service.DictTypeService;
import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;

import java.util.List;

import org.apache.commons.collections.CollectionUtils;
import org.springframework.stereotype.Service;

/**
 * <p>
 * 字典类型表 服务实现类
 * </p>
 *
 * @author basics
 * @since 2018-12-12
 */
@Service
public class DictTypeServiceImpl extends ServiceImpl<DictTypeMapper, DictType> implements DictTypeService {

	@Override
	public String checkDictTypeUnique(DictType dictType) {
		if(StringUtils.isNotBlank(dictType.getDictType())) {
			List<DictType> list=baseMapper.selectList(new QueryWrapper<DictType>().eq("DICT_ID", dictType.getDictId()).eq("DICT_TYPE", dictType.getDictType()));
			if(CollectionUtils.isNotEmpty(list) && list.size()>1) {
				return UserConstants.CONFIG_KEY_NOT_UNIQUE;
			}
		}
		return UserConstants.CONFIG_KEY_UNIQUE;
	}

}
