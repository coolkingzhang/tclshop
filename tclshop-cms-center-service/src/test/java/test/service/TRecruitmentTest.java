package test.service;

import org.apache.log4j.Logger;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;
import com.alibaba.fastjson.JSON;
import com.baomidou.mybatisplus.plugins.Page;
import com.tclshop.cms.center.entity.TRecruitment;
import com.tclshop.cms.center.enums.TRecruitmentEnum;
import com.tclshop.cms.center.service.ITRecruitmentService;

/**
 * Created by ${chengrz} on 2016/7/21 0021.
 */
public class TRecruitmentTest extends BaseTest {
	private static Logger logger = Logger.getLogger(TRecruitmentTest.class);

	@Autowired
	private ITRecruitmentService iTRecruitmentService;

	@Test
	public void findByPage() {
		TRecruitment tRecruitment = new TRecruitment();
		tRecruitment.setType(TRecruitmentEnum.job.getValue());
		Page<TRecruitment> page = iTRecruitmentService.findByPage(tRecruitment, 1, 10);
		logger.info(JSON.toJSONString(page));
	}
}
