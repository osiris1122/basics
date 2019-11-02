package com.basics.system.service.impl;

import com.basics.system.entity.UserOnline;
import com.basics.system.mapper.UserOnlineMapper;
import com.basics.system.service.UserOnlineService;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import org.springframework.stereotype.Service;

/**
 * <p>
 * 在线用户记录 服务实现类
 * </p>
 *
 * @author basics
 * @since 2018-12-12
 */
@Service
public class UserOnlineServiceImpl extends ServiceImpl<UserOnlineMapper, UserOnline> implements UserOnlineService {

}
