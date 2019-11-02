package com.basics.framework.manager.factory;

import java.util.TimerTask;

import com.basics.system.entity.LoginLog;
import com.basics.system.entity.OnlineSession;
import com.basics.system.entity.OperLog;
import com.basics.system.entity.UserOnline;
import com.basics.system.service.OperLogService;
import com.basics.system.service.UserOnlineService;
import com.basics.system.service.impl.LoginLogServiceImpl;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import com.basics.common.constant.Constants;
import com.basics.common.utils.AddressUtils;
import com.basics.common.utils.LogUtils;
import com.basics.common.utils.ServletUtils;
import com.basics.common.utils.security.ShiroUtils;
import com.basics.common.utils.spring.SpringUtils;
import eu.bitwalker.useragentutils.UserAgent;

/**
 * 异步工厂（产生任务用）
 * 
 * @author liuhulu
 *
 */
public class AsyncFactory
{
    private static final Logger sys_user_logger = LoggerFactory.getLogger("sys-user");

    /**
     * 同步session到数据库
     * 
     * @param session 在线用户会话
     * @return 任务task
     */
    public static TimerTask syncSessionToDb(final OnlineSession session)
    {
        return new TimerTask()
        {
            @Override
            public void run()
            {
                UserOnline online = new UserOnline();
                online.setSessionId(String.valueOf(session.getId()));
                online.setLoginName(session.getLoginName());
                online.setStartTimestamp(session.getStartTimestamp());
                online.setLastAccessTime(session.getLastAccessTime());
                online.setExpireTime(session.getTimeout());
                online.setLoginIpaddr(session.getHost());
                online.setLoginLocation(AddressUtils.getRealAddressByIP(session.getHost()));
                online.setLoginBrowser(session.getBrowser());
                online.setLoginOs(session.getOs());
                online.setLoginStatus(session.getStatus());
                online.setSession(session);
                SpringUtils.getBean(UserOnlineService.class).save(online);

            }
        };
    }

    /**
     * 操作日志记录
     * 
     * @param operLog 操作日志信息
     * @return 任务task
     */
    public static TimerTask recordOper(final OperLog operLog)
    {
        return new TimerTask()
        {
            @Override
            public void run()
            {
                // 远程查询操作地点
                operLog.setOperLocation(AddressUtils.getRealAddressByIP(operLog.getOperIp()));
                SpringUtils.getBean(OperLogService.class).save(operLog);
            }
        };
    }

    /**
     * 记录登陆信息
     * 
     * @param username 用户名
     * @param status 状态
     * @param message 消息
     * @param args 列表
     * @return 任务task
     */
    public static TimerTask recordLogininfor(final String username, final String status, final String message, final Object... args)
    {
        final UserAgent userAgent = UserAgent.parseUserAgentString(ServletUtils.getRequest().getHeader("User-Agent"));
        final String ip = ShiroUtils.getIp();
        return new TimerTask()
        {
            @Override
            public void run()
            {
                StringBuilder s = new StringBuilder();
                s.append(LogUtils.getBlock(ip));
                s.append(AddressUtils.getRealAddressByIP(ip));
                s.append(LogUtils.getBlock(username));
                s.append(LogUtils.getBlock(status));
                s.append(LogUtils.getBlock(message));
                // 打印信息到日志
                sys_user_logger.info(s.toString(), args);
                // 获取客户端操作系统
                String os = userAgent.getOperatingSystem().getName();
                // 获取客户端浏览器
                String browser = userAgent.getBrowser().getName();
                // 封装对象
                LoginLog logininfor = new LoginLog();
                logininfor.setLoginName(username);
                logininfor.setLoginIpaddr(ip);
                logininfor.setLoginLocation(AddressUtils.getRealAddressByIP(ip));
                logininfor.setLoginBrowser(browser);
                logininfor.setLoginOs(os);
                logininfor.setLoginMsg(message);
                // 日志状态
                if (Constants.LOGIN_SUCCESS.equals(status) || Constants.LOGOUT.equals(status))
                {
                    logininfor.setLoginStatus(Constants.SUCCESS);
                }
                else if (Constants.LOGIN_FAIL.equals(status))
                {
                    logininfor.setLoginStatus(Constants.FAIL);
                }
                // 插入数据
                SpringUtils.getBean(LoginLogServiceImpl.class).save(logininfor);
            }
        };
    }
}
