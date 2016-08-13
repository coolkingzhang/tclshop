package com.tclshop.cms.center.service.impl;

import com.baomidou.mybatisplus.plugins.Page;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.tclshop.cms.center.mapper.TInvestorsMapper;
import com.tclshop.cms.center.entity.TInvestors;
import com.tclshop.cms.center.service.ITInvestorsService;
import com.baomidou.framework.service.impl.SuperServiceImpl;

import java.util.List;

/**
 *
 * TInvestors 表数据服务层接口实现类
 *
 */
@Service("tInvestorsService")
public class TInvestorsServiceImpl extends SuperServiceImpl<TInvestorsMapper, TInvestors> implements ITInvestorsService {

    @Autowired
    TInvestorsMapper tInvestorsMapper;

    @Override
    public Page<TInvestors> findPages(TInvestors tInvestors, Integer current, Integer size) {
        if (current == null || size == null) {
            return new Page<TInvestors>(0, 0);
        }
        Page<TInvestors> page = new Page<TInvestors>(current, size);
        List<TInvestors> byPage = tInvestorsMapper.findByPage(page, tInvestors);
        page.setRecords(byPage);
        return page;
    }
}