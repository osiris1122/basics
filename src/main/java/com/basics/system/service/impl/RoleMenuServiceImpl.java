package com.basics.system.service.impl;

import com.basics.system.entity.RoleMenu;
import com.basics.system.mapper.RoleMenuMapper;
import com.basics.system.service.RoleMenuService;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import org.springframework.stereotype.Service;

/**
 * <p>
 * 角色和菜单关联表 服务实现类
 * </p>
 *
 * @author basics
 * @since 2018-12-12
 */
@Service
public class RoleMenuServiceImpl extends ServiceImpl<RoleMenuMapper, RoleMenu> implements RoleMenuService {

}
