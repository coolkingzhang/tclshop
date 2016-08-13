package com.tclshop.cms.center.service;

import com.baomidou.mybatisplus.plugins.Page;
import com.tclshop.cms.center.entity.TInvestors;
import com.baomidou.framework.service.ISuperService;

/**
 *
 * TInvestors 表数据服务层接口
 *
 */
public interface ITInvestorsService extends ISuperService<TInvestors> {

    Page<TInvestors> findPages(TInvestors tInvestors, Integer current, Integer size);

}