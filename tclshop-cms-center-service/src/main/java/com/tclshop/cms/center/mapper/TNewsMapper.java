package com.tclshop.cms.center.mapper;

import com.baomidou.mybatisplus.mapper.AutoMapper;
import com.baomidou.mybatisplus.plugins.Page;
import com.tclshop.cms.center.entity.TNews;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 *
 * TNews 表数据库控制层接口
 *
 */
public interface TNewsMapper extends AutoMapper<TNews> {

    List<TNews> findByPage(Page<TNews> page, @Param("model") TNews tNews);

    List<TNews> findIndexData(@Param("model") TNews tNews);

    List<TNews> indexData(@Param("size") int size);

    List<TNews> searchNews(Page<TNews> page, @Param("model") TNews tNews, @Param("start") String starttime, @Param("end") String endtime);

}