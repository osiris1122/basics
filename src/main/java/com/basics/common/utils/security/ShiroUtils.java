package com.basics.common.utils.security;

import com.basics.system.entity.User;
import org.apache.shiro.SecurityUtils;
import org.apache.shiro.mgt.RealmSecurityManager;
import org.apache.shiro.session.Session;
import org.apache.shiro.subject.Subject;
import com.basics.common.utils.StringUtils;
import com.basics.common.utils.bean.BeanUtils;
import com.basics.framework.shiro.realm.UserRealm;

/**
 * shiro 工具类
 * 
 * @author basics
 */
public class ShiroUtils
{
    public static Subject getSubjct()
    {
        return SecurityUtils.getSubject();
    }

    public static Session getSession()
    {
        return SecurityUtils.getSubject().getSession();
    }

    public static void logout()
    {
        getSubjct().logout();
    }

    public static User getSysUser()
    {
        User user = null;
        Object obj = getSession().getAttribute("sysUser");
        if (StringUtils.isNotNull(obj))
        {
            user = new User();
            BeanUtils.copyBeanProp(user, obj);
        }
        return user;
    }

    public static void setSysUser(User user)
    {
        ShiroUtils.getSession().setAttribute("sysUser", user);
    }

    public static void clearCachedAuthorizationInfo()
    {
        RealmSecurityManager rsm = (RealmSecurityManager) SecurityUtils.getSecurityManager();
        UserRealm realm = (UserRealm) rsm.getRealms().iterator().next();
        realm.clearCachedAuthorizationInfo();
    }

    public static String getUserId()
    {
        return getSysUser().getUserId();
    }

    public static String getLoginName()
    {
        return getSysUser().getLoginName();
    }

    public static String getIp()
    {
        return getSubjct().getSession().getHost();
    }

    public static String getSessionId()
    {
        return String.valueOf(getSubjct().getSession().getId());
    }
}
