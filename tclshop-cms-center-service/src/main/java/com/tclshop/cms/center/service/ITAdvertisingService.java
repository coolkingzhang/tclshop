package com.tclshop.cms.center.service;

import com.tclshop.cms.center.entity.TAdvertising;
import com.baomidou.framework.service.ISuperService;
import com.baomidou.mybatisplus.plugins.Page;

/**
 *
 * TAdvertising 表数据服务层接口
 *
 */
public interface ITAdvertisingService extends ISuperService<TAdvertising> {

	public Page<TAdvertising> findByPage(TAdvertising tAdvertising, Integer current, Integer size);
}