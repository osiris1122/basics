package com.basics.common.exception.user;

/**
 * 用户信息异常类
 * 
 * @author basics
 */
public class UserLogingException extends UserException {
	private static final long serialVersionUID = 1L;

	public UserLogingException() {
		super("user.have.login", null);
	}

}
