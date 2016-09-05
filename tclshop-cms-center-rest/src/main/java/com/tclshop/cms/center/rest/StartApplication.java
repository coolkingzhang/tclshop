package com.tclshop.cms.center.rest;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.EnableAutoConfiguration;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.ImportResource;
import java.io.IOException;

@SpringBootApplication
@ComponentScan // 组件扫描
@Configuration // 配置控制
@EnableAutoConfiguration // 启用自动配置
@ImportResource({ "classpath:spring/spring-context.xml" })
public class StartApplication {

	public static void main(String[] args) {
		// System.out.println("启动开始");
		SpringApplication.run(StartApplication.class, args);
		try {
			// System.out.println("启动成功,按任意键关闭");
			System.in.read();
		} catch (IOException e) {
			// e.printStackTrace();
		}
	}
}
