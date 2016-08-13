package test.dubbo;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.context.support.ClassPathXmlApplicationContext;

public class DubboProvider {

	private static final Log logger = LogFactory.getLog(DubboProvider.class);
	private static ClassPathXmlApplicationContext context;

	public static void main(String[] args) {
		try {
			context = new ClassPathXmlApplicationContext("classpath:conf/spring/spring-context.xml");
			context.start();
		} catch (Exception e) {
			logger.error("== DubboProvider context start error:", e);
		}
		synchronized (DubboProvider.class) {
			while (true) {
				try {
					DubboProvider.class.wait();
				} catch (InterruptedException e) {
					logger.error("== synchronized error:", e);
				}
			}
		}
	}
}