package com.basics.framework.web.domain;

import java.io.Serializable;
import java.util.List;

import org.springframework.validation.FieldError;
import org.springframework.validation.ObjectError;

import lombok.Data;

@Data
public class ApiResult implements Serializable {

	private String msg;
	private Integer code;
	private Object data;

	public ApiResult() {
	}

	/**
	 * 返回错误消息
	 * 
	 * @return 错误消息
	 */
	public static ApiResult error() {
		return error(1, "操作失败");
	}

	/**
	 * 返回错误消息
	 * 
	 * @param msg
	 *            内容
	 * @return 错误消息
	 */
	public static ApiResult error(String msg) {
		return error(500, msg);
	}

	public static ApiResult errorToken() {
		return error(2, "token失效");
	}

	/**
	 * 返回错误消息
	 * 
	 * @param code
	 *            错误码
	 * @param msg
	 *            内容
	 * @return 错误消息
	 */
	public static ApiResult error(int code, String msg) {
		ApiResult json = new ApiResult();
		json.setCode(code);
		json.setMsg(msg);
		return json;
	}

	/**
	 * 返回成功消息
	 * 
	 * @param msg
	 *            内容
	 * @return 成功消息
	 */
	public static ApiResult success(String msg) {
		ApiResult json = new ApiResult();
		json.setCode(0);
		json.setMsg(msg);
		return json;
	}

	/**
	 * 返回成功消息
	 * 
	 * @return 成功消息
	 */
	public static ApiResult success() {
		return ApiResult.success("操作成功");
	}

	/**
	 * 返回成功消息
	 * 
	 * @return 成功消息
	 */
	public static ApiResult success(Object data) {
		ApiResult json = success();
		if (null != data) {
			json.setData(data);
		}
		return json;
	}

	/**
	 * 处理hibernate validator 数据绑定异常信息
	 *
	 */
	public ApiResult onBindingError(List<ObjectError> errors) {
		ApiResult json = new ApiResult();
		json.setCode(500);
		json.setMsg(praseErrorMessage(errors));
		return json;
	}

	public static String praseErrorMessage(List<ObjectError> errors) {
		StringBuffer stringBuffer = new StringBuffer();
		for (ObjectError error : errors) {
			if (error instanceof FieldError) {
				FieldError fieldError = (FieldError) error;
				stringBuffer.append(fieldError.getDefaultMessage());
				stringBuffer.append(",");
			}
		}
		return stringBuffer.toString().substring(0, stringBuffer.toString().length() - 1);
	}
}
