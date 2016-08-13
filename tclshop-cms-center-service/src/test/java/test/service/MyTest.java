package test.service;

import java.util.Date;
import org.junit.AfterClass;
import org.junit.BeforeClass;
import org.junit.Test;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import com.alibaba.fastjson.JSON;
import com.baomidou.mybatisplus.plugins.Page;
import com.tclshop.cms.center.entity.TAdvertising;
import com.tclshop.cms.center.entity.TTest;
import com.tclshop.cms.center.mapper.TAdvertisingMapper;
import com.tclshop.cms.center.service.ITTestService;

public class MyTest extends BaseTest {
	private static final Logger logger = LoggerFactory.getLogger(MyTest.class);

	@Autowired
	private ITTestService iTTestService;

//	@Autowired
//	private TAdvertisingMapper tAdvertisingMapper;

//	@BeforeClass
	public static void beforeclass() throws Exception {
		logger.info("---------------------------------------Testting start :");
	}

//	@AfterClass
	public static void afterclass() {
		logger.info("---------------------------------------Testting end :");
		// while (true)
		// ;
	}

	@Test
	public void findByPage() {
		TTest tTest = new TTest();
//		tTest.setTitle("标题");
//		tTest.setContext("内容");
		Page<TTest> list = iTTestService.findByPage(tTest, 2, 2);

		logger.info(JSON.toJSONString(list));
//		logger.info("==" + list.getRecords().get(0).getContext());
	}

	@Test
	public void updates() {
		TTest tTest = new TTest();
		tTest.setId(1);
		tTest.setCreateTime(new Date());
		// iTTestService.updateSelectiveById(tTest);
		iTTestService.updateSelectiveById(tTest);
	}
	
	@Test
	public void select() {
		TTest tTest = new TTest();
		tTest = iTTestService.selectById(2L);
		System.out.println(JSON.toJSONString(tTest));
	}

//	@Test
//	public void testA() {
//		TAdvertising aa = new TAdvertising();
//		aa = tAdvertisingMapper.selectById(1L);
//		System.out.println(JSON.toJSONString(aa));
//	}
}