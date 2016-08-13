package com.tclshop.cms.center.service.impl;

import com.baomidou.framework.service.impl.SuperServiceImpl;
import com.baomidou.mybatisplus.plugins.Page;
import com.tclshop.cms.center.entity.TAbout;
import com.tclshop.cms.center.mapper.TAboutMapper;
import com.tclshop.cms.center.service.ITAboutService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * TAbout 表数据服务层接口实现类
 */
@Service("tAboutService")
public class TAboutServiceImpl extends SuperServiceImpl<TAboutMapper, TAbout> implements ITAboutService {

    @Autowired
    TAboutMapper tAboutMapper;

    @Override
    public Page<TAbout> findByPage(TAbout about, Integer current, Integer size) {
        if (current == null || size == null) {
            return new Page<TAbout>(0, 0);
        }
        Page<TAbout> page = new Page<TAbout>(current, size);
        List<TAbout> byPage = tAboutMapper.findByPage(about, page);
        page.setRecords(byPage);
        return page;
    }

    @Override
    public List<TAbout> findIndexData(TAbout tAbout, Integer num) {
        List<TAbout> indexData = tAboutMapper.findIndexData(tAbout, num);
        return indexData;
    }

    @Override
    public List<TAbout> findDevelopData(TAbout about) {
        List<TAbout> developData = tAboutMapper.findDevelopData(about);
        return developData;
    }

    @Override
    public List<TAbout> findAll(TAbout about) {
        List<TAbout> developData = tAboutMapper.findAll(about);
        return developData;
    }
}