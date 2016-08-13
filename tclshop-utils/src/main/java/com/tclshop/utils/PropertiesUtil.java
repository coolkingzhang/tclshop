package com.tclshop.utils;

import java.util.Properties;

public class PropertiesUtil {

	protected static ServiceLocatorUtil service = ServiceLocatorUtil.getInstance();
	protected static String beanName;

	// 通过 key 获取 message.txt里的键值
	public static String getMessageByKey(String key) {
		return getProperties("propertyMessage").getProperty(key).toString();
	}

	// 通过 key 获取 config.properties 里的键值
	public static String getConfigByKey(String key) {
		return getProperties("propertyConfig").getProperty(key).toString();
	}

	public static Properties getProperties(String myBean) {
		beanName = myBean;
		return (Properties) ServiceLocatorUtil.getService(beanName);
	}

	public static Properties getMessage() {
		return (Properties) ServiceLocatorUtil.getService("propertyMessage");
	}

	public static Properties getConfig() {
		return (Properties) ServiceLocatorUtil.getService("propertyConfig");
	}
}
