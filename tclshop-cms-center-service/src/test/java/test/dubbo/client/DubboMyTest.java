package test.dubbo.client;

import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;
import com.alibaba.fastjson.JSON;
import com.baomidou.mybatisplus.plugins.Page;
import com.tclshop.cms.center.dubbo.TRecruitmentSoa;
import com.tclshop.cms.center.entity.TRecruitment;
import com.tclshop.cms.center.enums.TRecruitmentEnum;

public class DubboMyTest extends BaseTest {

//	@Autowired
//	private TRecruitmentEnterpriseSoa tRecruitmentEnterpriseSoa;
//	
//
//	@Test
//	public void TRecruitmentEnterpriseSoa() throws InterruptedException {
//		TRecruitmentEnterprise tRecruitmentEnterprise = new TRecruitmentEnterprise();
//		Page<TRecruitmentEnterprise> page = tRecruitmentEnterpriseSoa.findByPage(tRecruitmentEnterprise, 1, 10);
//		System.out.println(JSON.toJSONString(page));
//	}
	
	/*@Autowired
	private TRecruitmentSoa tRecruitmentSoa;
	
	@Test
	public void RecruitmentSoa() {
		System.out.println(JSON.toJSONString(tRecruitmentSoa.selectById(23L)));
		
		TRecruitment tRecruitment = new TRecruitment();
		tRecruitment.setType(TRecruitmentEnum.job.getValue());
		Page<TRecruitment> page = tRecruitmentSoa.findContentByPage(tRecruitment, 1, 10);
		System.out.println(JSON.toJSONString(page));
	}*/
}
