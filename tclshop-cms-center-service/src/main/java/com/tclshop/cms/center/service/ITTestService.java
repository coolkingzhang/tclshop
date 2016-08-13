package com.tclshop.cms.center.service;

import com.tclshop.cms.center.entity.TTest;
import com.baomidou.framework.service.ISuperService;
import com.baomidou.mybatisplus.plugins.Page;

/**
 *
 * TTest 表数据服务层接口
 *
 */
public interface ITTestService extends ISuperService<TTest> {

	// 分页查询
	public Page<TTest> findByPage(TTest tTest, Integer current, Integer size);
}