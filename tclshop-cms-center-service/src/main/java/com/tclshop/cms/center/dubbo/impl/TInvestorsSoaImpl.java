package com.tclshop.cms.center.dubbo.impl;

import com.baomidou.mybatisplus.plugins.Page;
import com.tclshop.cms.center.dubbo.TInvestorsSoa;
import com.tclshop.cms.center.entity.TInvestors;
import com.tclshop.cms.center.service.ITInvestorsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created by ${chengrz} on 2016/7/27 0027.
 */
@Service("tInvestorsSoa")
public class TInvestorsSoaImpl implements TInvestorsSoa {

    @Autowired
    ITInvestorsService itInvestorsService;

    @Override
    public void insert(TInvestors tInvestors) {
        itInvestorsService.insert(tInvestors);
    }

    @Override
    public void updateById(TInvestors tInvestors) {
        itInvestorsService.updateById(tInvestors);
    }

    @Override
    public void updateSelectiveById(TInvestors tInvestors) {
        itInvestorsService.updateSelectiveById(tInvestors);
    }

    @Override
    public void deleteByList(List<Long> idlist) {
        itInvestorsService.deleteBatchIds(idlist);
    }

    @Override
    public TInvestors selectById(Long id) {
        TInvestors tInvestors = itInvestorsService.selectById(id);
        return tInvestors;
    }

    @Override
    public Page<TInvestors> findByPage(TInvestors tInvestors, Integer current, Integer size) {
        Page<TInvestors> pages = itInvestorsService.findPages(tInvestors, current, size);
        return pages;
    }
}
