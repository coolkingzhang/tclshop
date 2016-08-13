package com.tclshop.framework.core.web;

import java.io.Serializable;

public class RestApi implements Serializable {
	private static final long serialVersionUID = 1L;
	private Integer code = 500;
	private String message = "系统错误";
	private Object Data;

	public int getCode() {
		return code;
	}

	public void setCode(Integer code) {
		this.code = code;
	}

	public String getMessage() {
		return message;
	}

	public void setMessage(String message) {
		this.message = message;
	}

	public Object getData() {
		return Data;
	}

	public void setData(Object data) {
		Data = data;
	}
}
