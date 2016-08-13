package com.tclshop.cms.center.service;

import com.baomidou.framework.service.ISuperService;
import com.baomidou.mybatisplus.plugins.Page;
import com.tclshop.cms.center.entity.TAbout;

import java.util.List;

/**
 * TAbout 表数据服务层接口
 */
public interface ITAboutService extends ISuperService<TAbout> {

    Page<TAbout> findByPage(TAbout about, Integer current, Integer size);

    List<TAbout> findIndexData(TAbout about, Integer num);

    List<TAbout> findDevelopData(TAbout about);

    List<TAbout> findAll(TAbout about);
}