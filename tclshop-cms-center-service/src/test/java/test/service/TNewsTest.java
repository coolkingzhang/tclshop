package test.service;

import com.alibaba.fastjson.JSON;
import com.baomidou.mybatisplus.plugins.Page;
import com.tclshop.cms.center.entity.TNews;
import com.tclshop.cms.center.service.ITNewsService;
import com.tclshop.utils.DateUtil;
import org.apache.log4j.Logger;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;

import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.List;

/**
 * Created by ${chengrz} on 2016/7/21 0021.
 */
public class TNewsTest extends BaseTest {
    private static Logger logger = Logger.getLogger(TNewsTest.class);

    @Autowired
    private ITNewsService itNewsService;

    @Test
    public void findByPage() {
        TNews tNews = new TNews();
//        tNews.setStatus(1);
//        tNews.setType(6);
        tNews.setId(1768);
        Page<TNews> page = itNewsService.findByPage(tNews, 0, 1);
        List<TNews> records = page.getRecords();
        TNews tNews1 = records.get(0);

        logger.info(JSON.toJSONString(page));
        System.out.println("=================");
//        Page<TNews> vpage = itNewsService.findVideoNewsByPage(tNews, 1, 2);
//        logger.info(JSON.toJSONString(vpage));
//        System.out.println("=================");
//        Page<TNews> ipage = itNewsService.findIndexNewsByPage(tNews, 1, 2);
//        logger.info(JSON.toJSONString(ipage));
//        System.out.println("=================");
//        Page<TNews> tpage = itNewsService.findThirdNewsByPage(tNews, 1, 2);
//        logger.info(JSON.toJSONString(tpage));
//        System.out.println("=================");
//        Page<TNews> vipage = itNewsService.findVideoIndexNewsByPage(tNews, 1, 2);
//        logger.info(JSON.toJSONString(vipage));
    }

    @Test
    public void searchNews() {
        TNews tNews = new TNews();
        tNews.setType(1);
        tNews.setTitle("tcl");
        Page<TNews> page = itNewsService.searchNews(tNews, 1, 10, "2015-12-1", "2016-03-21");
        logger.info(JSON.toJSONString(page));
        System.out.println("=================");
    }

    @Test
    public void selectOne() {
        TNews tNews = itNewsService.selectById(10000L);
        logger.info(JSON.toJSON(tNews));
    }

    @Test
    public void insert() {
        TNews t = new TNews();
        t.setTitle("test");
        t.setPic("test.url");
        t.setComment(1);
        t.setCreatetime(11111);
        t.setIssueTime(123);
        t.setSubjecttype(1);
        t.setrContent("1");
        boolean insert = itNewsService.insert(t);
        String result = insert ? "=== insert Succeed ===" : "=== insert Faild ===";
        logger.info(result);
    }

    @Test
    public void updateById() {
        TNews t = new TNews();
        Page<TNews> page = itNewsService.findByPage(t, 1, 5);
        List<TNews> records = page.getRecords();
        TNews tNews = records.get(0);
        tNews.setTitle(tNews.getTitle() + "_Ad_");
        tNews.setrContent("1");
        boolean update = itNewsService.updateById(tNews);
        String result = update ? "=== update Succeed ===" : "=== update Faild ===";
        logger.info(result);
    }

    @Test
    public void update() {
        TNews t = new TNews();
        t.setId(1778);
        t.setTitle("=======");
        boolean update = itNewsService.update(t,t);
        String result = update ? "=== update Succeed ===" : "=== update Faild ===";
        logger.info(result);
    }

    @Test
    public void deleteByList() {
        List<Long> idList = new ArrayList<Long>();
        TNews t = new TNews();
        Page<TNews> page = itNewsService.findByPage(t, 1, 5);
        List<TNews> records = page.getRecords();
        TNews tNews = records.get(0);
        idList.add((long)tNews.getId());
        boolean delete = itNewsService.deleteBatchIds(idList);
        String result = delete ? "=== delete Succeed <id = " + tNews.getId() + " >===" : "=== delete Faild ===";
        logger.info(result);
    }
}
