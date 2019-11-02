package com.basics.framework.config;

import java.util.Date;

import org.apache.ibatis.reflection.MetaObject;
import org.springframework.stereotype.Component;

import com.baomidou.mybatisplus.core.handlers.MetaObjectHandler;

@Component
public class MyMetaObjectHandler implements MetaObjectHandler {

	@Override
	public void insertFill(MetaObject metaObject) {
		this.setFieldValByName("createTime", new Date(), metaObject);
		/*if (null != ShiroUtils.getSysUser()) {
			this.setFieldValByName("createUser", ShiroUtils.getSysUser().getUserId(), metaObject);
		}*/

	}

	@Override
	public void updateFill(MetaObject metaObject) {
		this.setFieldValByName("updateTime", new Date(), metaObject);
	}

}
