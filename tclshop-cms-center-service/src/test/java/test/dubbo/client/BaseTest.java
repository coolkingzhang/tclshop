package test.dubbo.client;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration({ "classpath:conf/test/spring-dubbo-test.xml" })
public class BaseTest {

	@Test
	public void testInit() {
	}
}
