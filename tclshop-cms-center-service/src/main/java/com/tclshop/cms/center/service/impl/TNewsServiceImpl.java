package com.tclshop.cms.center.service.impl;

import com.baomidou.framework.service.impl.SuperServiceImpl;
import com.baomidou.mybatisplus.plugins.Page;
import com.tclshop.cms.center.entity.TNews;
import com.tclshop.cms.center.mapper.TNewsMapper;
import com.tclshop.cms.center.service.ITNewsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 *
 * TNews 表数据服务层接口实现类
 *
 */
@Service("tNewsService")
public class TNewsServiceImpl extends SuperServiceImpl<TNewsMapper, TNews> implements ITNewsService {

    @Autowired
    TNewsMapper tNewsMapper;

    @Override
    public Page<TNews> findByPage(TNews tNews, Integer current, Integer size) {
        if (current == null || size == null) {
            return new Page<TNews>(0, 0);
        }
        Page<TNews> page = new Page<TNews>(current, size);
        List<TNews> list = tNewsMapper.findByPage(page, tNews);
        page.setRecords(list);
        return page;
    }

    @Override
    public List<TNews> findIndexData(TNews tNews) {
        List<TNews> indexData = tNewsMapper.findIndexData(tNews);
        return indexData;
    }

    @Override
    public Page<TNews> searchNews(TNews tNews, Integer current, Integer size, String starttime, String endtime) {
        if (current == null || size == null) {
            return new Page<TNews>(0, 0);
        }
        Page<TNews> page = new Page<TNews>(current, size);
        List<TNews> list = tNewsMapper.searchNews(page, tNews, starttime, endtime);
        page.setRecords(list);
        return page;
    }

}