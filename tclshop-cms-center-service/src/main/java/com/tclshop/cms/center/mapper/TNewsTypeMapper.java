package com.tclshop.cms.center.mapper;

import com.baomidou.mybatisplus.mapper.AutoMapper;
import com.baomidou.mybatisplus.plugins.Page;
import com.tclshop.cms.center.entity.TNewsType;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 *
 * TNewsType 表数据库控制层接口
 *
 */
public interface TNewsTypeMapper extends AutoMapper<TNewsType> {
    // 查自定义分页查询
    List<TNewsType> findByPage(Page<TNewsType> page, @Param("model") TNewsType tNewsType);

    List<TNewsType> findAll();
}