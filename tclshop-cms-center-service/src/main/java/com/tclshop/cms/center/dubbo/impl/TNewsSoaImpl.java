package com.tclshop.cms.center.dubbo.impl;

import com.baomidou.mybatisplus.plugins.Page;
import com.tclshop.cms.center.dubbo.TNewsSoa;
import com.tclshop.cms.center.entity.TNews;
import com.tclshop.cms.center.service.ITNewsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created by ${chengrz} on 2016/7/21 0021.
 */
@Service("tNewsSoa")
public class TNewsSoaImpl implements TNewsSoa {

    @Autowired
    private ITNewsService itNewsService;

    @Override
    public void insert(TNews tNews) {
        itNewsService.insert(tNews);
    }

    @Override
    public void updateById(TNews tNews) {
        itNewsService.updateById(tNews);
    }

    @Override
    public void deleteByList(List<Long> idList) {
        itNewsService.deleteBatchIds(idList);
    }

    @Override
    public void updateSelectiveById(TNews tNews) {
        itNewsService.updateSelectiveById(tNews);
    }

    @Override
    public TNews selectById(Long id) {
        TNews tNews = itNewsService.selectById(id);
        return tNews;
    }

    @Override
    public Page<TNews> findByPage(TNews tNews, Integer current, Integer size) {
        Page<TNews> page = itNewsService.findByPage(tNews, current, size);
        return page;
    }

    @Override
    public List<TNews> findIndexData(TNews tNews) {
        List<TNews> indexData = itNewsService.findIndexData(tNews);
        return indexData;
    }

    @Override
    public List<TNews> indexData(int size) {
        List<TNews> indexData = itNewsService.indexData(size);
        return indexData;
    }

    @Override
    public Page<TNews> searchNews(TNews tNews, Integer current, Integer size, String starttime, String endtime) {
        Page<TNews> page = itNewsService.searchNews(tNews, current, size, starttime, endtime);
        return page;
    }

}
