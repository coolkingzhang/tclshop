package com.tclshop.utils;

import org.springframework.beans.BeansException;
import org.springframework.beans.factory.BeanFactory;
import org.springframework.beans.factory.BeanFactoryAware;

/**
 * bean工厂助手，用来获取spring 环境下的bea
 */

public class ServiceLocatorUtil implements BeanFactoryAware {

	private static BeanFactory FACTORY = null;
	private static ServiceLocatorUtil SERVLOCATOR = null;

	public void setBeanFactory(BeanFactory factory) throws BeansException {
		ServiceLocatorUtil.FACTORY = factory;
	}

	public BeanFactory getBeanFactory() {
		return FACTORY;
	}

	public static ServiceLocatorUtil getInstance() {
		if (SERVLOCATOR == null)
			SERVLOCATOR = (ServiceLocatorUtil) FACTORY.getBean("serviceLocatorUtil");
		return SERVLOCATOR;
	}

	/**
	 * 根据提供的bean名称得到相应的服务类
	 * 
	 * @param servName
	 *            bean名称
	 */
	public static Object getService(String servName) {
		return FACTORY.getBean(servName);
	}

	/**
	 * 根据提供的bean名称得到对应于指定类型的服务类
	 * 
	 * @param servName
	 *            bean名称
	 * @param clazz
	 *            返回的bean类型,若类型不匹配,将抛出异常
	 */
	public static Object getService(String servName, Class<?> clazz) {
		return FACTORY.getBean(servName, clazz);
	}
}