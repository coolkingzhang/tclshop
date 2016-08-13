package com.tclshop.cms.center.mapper;

import com.baomidou.mybatisplus.mapper.AutoMapper;
import com.baomidou.mybatisplus.plugins.Page;
import com.tclshop.cms.center.entity.TAbout;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * TAbout 表数据库控制层接口
 */
public interface TAboutMapper extends AutoMapper<TAbout> {
    List<TAbout> findByPage(@Param("model") TAbout about, Page<TAbout> page);

    List<TAbout> findDevelopData(@Param("model") TAbout about);

    List<TAbout> findIndexData(@Param("model") TAbout about, @Param("num") Integer num);

    List<TAbout> findAll(@Param("model") TAbout about);

}