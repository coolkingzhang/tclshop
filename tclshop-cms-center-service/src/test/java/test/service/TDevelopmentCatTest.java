package test.service;

import com.tclshop.cms.center.entity.TDevelopmentCate;
import com.tclshop.cms.center.service.ITDevelopmentCateService;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;

/**
 * Created by ${chengrz} on 2016/8/3 0003.
 */
public class TDevelopmentCatTest extends BaseTest {

    @Autowired
    private ITDevelopmentCateService itDevelopmentCateService;

    @Test
    public void test() {
        TDevelopmentCate tc = new TDevelopmentCate();
        tc.setSort(1);
        itDevelopmentCateService.findByPage(tc, 1, 10);
    }
}
