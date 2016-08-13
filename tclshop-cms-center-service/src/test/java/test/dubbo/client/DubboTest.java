package test.dubbo.client;

import com.tclshop.cms.center.dubbo.TNewsSoa;
import com.tclshop.cms.center.dubbo.TNewsTypeSoa;
import com.tclshop.cms.center.entity.TNews;
import com.tclshop.cms.center.entity.TNewsType;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;
import com.alibaba.fastjson.JSON;
import com.tclshop.cms.center.dubbo.TTestSoa;
import com.tclshop.cms.center.entity.TTest;

public class DubboTest extends BaseTest {

	@Autowired
	private TTestSoa tTestSoa;

    @Autowired
    private TNewsSoa tNewsSoa;

    @Autowired
    private TNewsTypeSoa tNewsTypeSoa;

	@Test
	public void testSoa() throws InterruptedException {
		TTest tTest = new TTest();
		System.out.println("===============");
		System.out.println(JSON.toJSONString(tTestSoa.findByPage(tTest, 1, 1)));
		System.out.println("===============");
		Thread.sleep(2000);
	}

    @Test
    public void newsTypeSoa() throws InterruptedException {
        TNewsType tNewsType = new TNewsType();
        System.out.println("===============");
        System.out.println(JSON.toJSONString(tNewsTypeSoa.findByPage(tNewsType, 1, 4)));
        System.out.println("===============");
        Thread.sleep(2000);
    }

    @Test
    public void newsSoa() throws InterruptedException {
        TNews tNews = new TNews();
        System.out.println("===============");
        System.out.println(JSON.toJSONString(tNewsSoa.findByPage(tNews, 1, 2)));
        System.out.println("===============");
        Thread.sleep(2000);
    }
}
