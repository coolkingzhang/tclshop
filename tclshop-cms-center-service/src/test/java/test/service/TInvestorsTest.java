package test.service;

import com.alibaba.fastjson.JSON;
import com.baomidou.mybatisplus.plugins.Page;
import com.tclshop.cms.center.entity.TInvestors;
import com.tclshop.cms.center.service.ITInvestorsService;
import org.apache.log4j.Logger;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;

/**
 * Created by ${chengrz} on 2016/7/27 0027.
 */
public class TInvestorsTest extends BaseTest {
    private static final Logger logger = Logger.getLogger(TInvestorsTest.class);

    @Autowired
    private ITInvestorsService itInvestorsService;

    @Test
    public void findPages() {
        TInvestors tInvestors = new TInvestors();
        Page<TInvestors> pages = itInvestorsService.findPages(tInvestors, 1, 2);
        logger.info(JSON.toJSONString(pages));
    }
}
