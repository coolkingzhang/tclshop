package test.service;

import com.alibaba.fastjson.JSON;
import com.baomidou.mybatisplus.plugins.Page;
import com.tclshop.cms.center.entity.TNewsType;
import com.tclshop.cms.center.service.ITNewsTypeService;
import org.apache.log4j.Logger;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

/**
 * Created by ${chengrz} on 2016/7/20 0020.
 */
public class TNewsTypeTest extends BaseTest {
    private static Logger logger = Logger.getLogger(TNewsTypeTest.class);

    @Autowired
    private ITNewsTypeService itNewsTypeService;

    @Test
    public void findByPage() {
        TNewsType tNewsType = new TNewsType();
        Page<TNewsType> page = itNewsTypeService.findByPage(tNewsType, 1, 5);
        logger.info(JSON.toJSONString(page));
    }

    @Test
    public void findAll() {
        TNewsType tNewsType = new TNewsType();
        List<TNewsType> list = itNewsTypeService.findAll();
        logger.info(JSON.toJSONString(list));
    }

    @Test
    public void selectOne() {
        TNewsType t = new TNewsType();
        t.setId(1);
        TNewsType tNewsType = itNewsTypeService.selectOne(t);
        logger.info(JSON.toJSON(tNewsType));
    }

    @Test
    public void insert() {
        TNewsType t = new TNewsType();
        t.setName("test");
        t.setPic("test.url");
        t.setCreatetime(new Date());
        boolean insert = itNewsTypeService.insert(t);
        String result = insert ? "=== insert Succeed ===" : "=== insert Faild ===";
        logger.info(result);
    }

    @Test
    public void updateById() {
        TNewsType t = new TNewsType();
        Page<TNewsType> page = itNewsTypeService.findByPage(t, 1, 5);
        TNewsType tNewsType = itNewsTypeService.selectOne(page.getRecords().get(0));
        tNewsType.setName(tNewsType.getName() + "_Ad_");
        boolean update = itNewsTypeService.updateById(tNewsType);
        String result = update ? "=== update Succeed ===" : "=== update Faild ===";
        logger.info(result);
    }

    @Test
    public void deleteByList() {
        List<Long> idList = new ArrayList<Long>();
        TNewsType t = new TNewsType();
        Page<TNewsType> page = itNewsTypeService.findByPage(t, 1, 5);
        Integer id = page.getRecords().get(0).getId();
        idList.add((long)id);
        boolean delete = itNewsTypeService.deleteBatchIds(idList);
        String result = delete ? "=== delete Succeed ===" : "=== delete Faild ===";
        logger.info(result);
    }

}
