package test.service;

import org.apache.log4j.Logger;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;

import com.alibaba.fastjson.JSON;
import com.baomidou.mybatisplus.plugins.Page;
import com.tclshop.cms.center.entity.TRecruitmentEnterprise;
import com.tclshop.cms.center.service.ITRecruitmentEnterpriseService;

/**
 * Created by ${chengrz} on 2016/7/21 0021.
 */
public class TRecruitmentEnterpriseTest extends BaseTest {
	private static Logger logger = Logger.getLogger(TRecruitmentEnterpriseTest.class);

	@Autowired
	private ITRecruitmentEnterpriseService iTRecruitmentEnterpriseService;

	@Test
	public void findByPage() {
		TRecruitmentEnterprise tRecruitmentEnterprise = new TRecruitmentEnterprise();
		Page<TRecruitmentEnterprise> page = iTRecruitmentEnterpriseService.findByPage(tRecruitmentEnterprise, 1, 10);
		logger.info(JSON.toJSONString(page));
	}
}
