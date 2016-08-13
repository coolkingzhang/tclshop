package com.tclshop.cms.center.service;

import com.tclshop.cms.center.entity.TDevelopmentCate;

import java.util.List;

import com.baomidou.framework.service.ISuperService;
import com.baomidou.mybatisplus.plugins.Page;

/**
 *
 * TDevelopmentCate 表数据服务层接口
 *
 */
public interface ITDevelopmentCateService extends ISuperService<TDevelopmentCate> {

	public Page<TDevelopmentCate> findByPage(TDevelopmentCate tDevelopmentCate, Integer current, Integer size);

	// 全部查询
	public List<TDevelopmentCate> findAll();
}