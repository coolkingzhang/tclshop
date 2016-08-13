package com.tclshop.cms.center.dubbo.impl;

import com.baomidou.mybatisplus.plugins.Page;
import com.tclshop.cms.center.dubbo.TAboutSoa;
import com.tclshop.cms.center.entity.TAbout;
import com.tclshop.cms.center.service.ITAboutService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created by ${chengrz} on 2016/7/26 0026.
 */
@Service("tAboutSoa")
public class TAboutSoaImpl implements TAboutSoa {

    @Autowired
    ITAboutService itAboutService;

    @Override
    public void insert(TAbout tAbout) {
        itAboutService.insert(tAbout);
    }

    @Override
    public void updateById(TAbout tAbout) {
        itAboutService.updateById(tAbout);
    }

    @Override
    public void updateSelectiveById(TAbout tAbout) {
        itAboutService.updateSelectiveById(tAbout);
    }

    @Override
    public void deleteByList(List<Long> idList) {
        itAboutService.deleteBatchIds(idList);
    }

    @Override
    public TAbout selectById(Long id) {
        TAbout tAbout = itAboutService.selectById(id);
        return tAbout;
    }

    @Override
    public Page<TAbout> findByPage(TAbout tAbout, Integer current, Integer size) {
        Page<TAbout> byPage = itAboutService.findByPage(tAbout, current, size);
        return byPage;
    }

    @Override
    public List<TAbout> findIndexData(TAbout tAbout, Integer num) {
        List<TAbout> indexData = itAboutService.findIndexData(tAbout, num);
        return indexData;
    }

    @Override
    public List<TAbout> findDevelopData(TAbout tAbout) {
        List<TAbout> developData = itAboutService.findDevelopData(tAbout);
        return developData;
    }

    @Override
    public List<TAbout> findAll(TAbout tAbout) {
        List<TAbout> developData = itAboutService.findAll(tAbout);
        return developData;
    }
}
