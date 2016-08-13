package com.tclshop.cms.center.web.controller;

import java.util.Locale;
import java.util.ResourceBundle;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import com.alibaba.fastjson.JSON;
import com.baomidou.mybatisplus.plugins.Page;
import com.tclshop.cms.center.dubbo.TTestSoa;
import com.tclshop.cms.center.entity.TTest;
import com.tclshop.framework.core.web.RestApi;

@RestController
@RequestMapping("/test")
public class TTestController {

	private static final Logger log = LoggerFactory.getLogger(TTestController.class);

	@Autowired 
	private TTestSoa tTestSoa;

	@RequestMapping(value = "/findByPage", produces = "application/json", method = RequestMethod.GET)
	// @CrossOrigin
	public RestApi findByPage(
			@RequestParam(value = "pageNumber", required = false, defaultValue = "1") Integer pageNumber,
			@RequestParam(value = "listAccount", required = false, defaultValue = "10") Integer listAccount,
			TTest partnerWrapper) {
		RestApi result = new RestApi();

		Page<TTest> pageParam = null;
		try {
			pageParam = tTestSoa.findByPage(partnerWrapper, pageNumber, listAccount);
			result.setCode(200);
			result.setData(pageParam);
			result.setMessage("success");
			log.info(JSON.toJSONString(pageParam));
		} catch (Exception e) {
			e.printStackTrace();
		}
		return result;
	}

	@RequestMapping(value = "/language", method = RequestMethod.GET)
	// @CrossOrigin
	public String language() {
		Locale locale = new Locale("zh");
		// 指定语言环境的资源文件
		ResourceBundle bundle = ResourceBundle.getBundle("messages.group", locale);
		// 获取键对应的值并输出
		String helloWorld = bundle.getString("helloWorld");
		String ttt = bundle.getString("theme.grey");
		System.out.println("hello:" + helloWorld);
		System.out.println("ttt:" + ttt);
		return "string";
	}
}