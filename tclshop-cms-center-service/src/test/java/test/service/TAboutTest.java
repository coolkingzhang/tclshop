package test.service;


import com.alibaba.fastjson.JSON;
import com.baomidou.mybatisplus.plugins.Page;
import com.tclshop.cms.center.entity.TAbout;
import com.tclshop.cms.center.service.ITAboutService;
import org.apache.log4j.Logger;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;
import java.util.List;

/**
 * Created by ${chengrz} on 2016/7/26 0026.
 */
public class TAboutTest extends BaseTest {
    private static Logger logger = Logger.getLogger(TAboutTest.class);

    @Autowired
    private ITAboutService itAboutService;

    @Test
    public void testFindByPage() {
        TAbout tAbout = new TAbout();
        tAbout.setType(0);
        Page<TAbout> byPage = itAboutService.findByPage(tAbout, 1, 10);
        logger.info(JSON.toJSONString(byPage));
    }

    @Test
    public void testFindIndexData() {
        TAbout tAbout = new TAbout();
        tAbout.setType(11);
        List<TAbout> indexData = itAboutService.findIndexData(tAbout, 4);
        logger.info(JSON.toJSONString(indexData));
    }

    @Test
    public void testFindDevelopData() {
        TAbout tAbout = new TAbout();
        tAbout.setType(3);
        List<TAbout> indexData = itAboutService.findDevelopData(tAbout);
        logger.info(JSON.toJSONString(indexData));
    }
}