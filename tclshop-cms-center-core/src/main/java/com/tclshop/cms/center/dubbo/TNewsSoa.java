package com.tclshop.cms.center.dubbo;

import com.baomidou.mybatisplus.plugins.Page;
import com.tclshop.cms.center.entity.TNews;

import java.util.List;

/**
 * Created by ${chengrz} on 2016/7/21 0021.
 */
// 新闻内容的查询接口，当type=6的时候是视频新闻
public interface TNewsSoa {

    public void insert(TNews tNews);

    public void updateById(TNews tNews);

    public void deleteByList(List<Long> idList);

    public void updateSelectiveById(TNews tNews);

    public TNews selectById(Long id);

    public Page<TNews> findByPage(TNews tNews, Integer current, Integer size);

    public List<TNews> findIndexData(TNews tNews);

    public List<TNews> indexData(int size);

    public Page<TNews> searchNews(TNews tNews, Integer current, Integer size, String starttime, String endtime);

}
