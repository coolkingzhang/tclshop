package com.tclshop.cms.center.service;

import com.baomidou.framework.service.ISuperService;
import com.baomidou.mybatisplus.plugins.Page;
import com.tclshop.cms.center.entity.TNews;

import java.util.List;

/**
 *
 * TNews 表数据服务层接口
 *
 */
public interface ITNewsService extends ISuperService<TNews> {

    public Page<TNews> findByPage(TNews tNews, Integer current, Integer size);

    public List<TNews> findIndexData(TNews tNews);

    public List<TNews> indexData(int size);

    public Page<TNews> searchNews(TNews tNews, Integer current, Integer size, String starttime, String endtime);

}