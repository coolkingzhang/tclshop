package com.tclshop.cms.center.web.controller;

import java.io.File;
import java.io.IOException;
import java.util.Date;
import java.util.Locale;
import java.util.ResourceBundle;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.commons.CommonsMultipartFile;
import org.springframework.web.servlet.ModelAndView;

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

	@CrossOrigin
	@RequestMapping(value = "/findByPage", produces = "application/json", method = RequestMethod.GET)
	// @CrossOrigin
	public RestApi findByPage(@RequestParam(value = "pageNumber", required = false, defaultValue = "1") Integer pageNumber, @RequestParam(value = "listAccount", required = false, defaultValue = "10") Integer listAccount, TTest partnerWrapper) {
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

	@RequestMapping("/show")
	public ModelAndView show(HttpServletRequest request, HttpServletResponse response) throws Exception {
		ModelAndView mav = new ModelAndView("header");
		mav.addObject("account", "account -1");
		return mav;
	}

	@RequestMapping(value = "/display", produces = "application/json", method = RequestMethod.GET)
	public RestApi display() {
		RestApi result = new RestApi();
		result.setCode(200);
		result.setMessage("success");
		result.setData(tTestSoa.display());
		return result;
	}

	@RequestMapping("/webtest")
	public String webtest() {
		return "webtest";
	}

	/*
	 * 采用file.Transto 来保存上传的文件
	 */
	@RequestMapping("/upload")
	public String upload(@RequestParam("file") CommonsMultipartFile file) throws IOException {
		long startTime = System.currentTimeMillis();
		System.out.println("fileName：" + file.getOriginalFilename());
		String path = "I:/" + new Date().getTime() + file.getOriginalFilename();

		File newFile = new File(path);
		// 通过CommonsMultipartFile的方法直接写文件（注意这个时候）
		file.transferTo(newFile);
		long endTime = System.currentTimeMillis();
		System.out.println("方法二的运行时间：" + String.valueOf(endTime - startTime) + "ms");
		return "/success";
	}
}