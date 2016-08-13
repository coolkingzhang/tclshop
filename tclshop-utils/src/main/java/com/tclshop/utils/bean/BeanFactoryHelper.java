package com.tclshop.utils.bean;

import org.springframework.beans.BeansException;
import org.springframework.beans.factory.BeanFactory;
import org.springframework.beans.factory.BeanFactoryAware;

public class BeanFactoryHelper implements BeanFactoryAware {
	private static BeanFactory beanFactory = null;

	@Override
	public void setBeanFactory(BeanFactory factory) throws BeansException {
		BeanFactoryHelper.beanFactory = factory;
	}

	public static Object getBean(String arg0) {
		return beanFactory.getBean(arg0);
	}
}

// private static BeanFactoryHelper helper = new BeanFactoryHelper();
// protected static BeanFactoryHelper getInstance() {
// return helper;
// }
// private BeanFactoryHelper() { }
// public static BeanFactory getBeanfactory() {
// return beanFactory;
// }