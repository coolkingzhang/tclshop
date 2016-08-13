package com.tclshop.cms.center.service.impl;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.baomidou.framework.service.impl.SuperServiceImpl;
import com.baomidou.mybatisplus.plugins.Page;
import com.tclshop.cms.center.entity.TDevelopmentCate;
import com.tclshop.cms.center.mapper.TDevelopmentCateMapper;
import com.tclshop.cms.center.service.ITDevelopmentCateService;

/**
 *
 * TDevelopmentCate 表数据服务层接口实现类
 *
 */
@Service("tDevelopmentCateService")
public class TDevelopmentCateServiceImpl extends SuperServiceImpl<TDevelopmentCateMapper, TDevelopmentCate>
		implements ITDevelopmentCateService {

	@Autowired
	TDevelopmentCateMapper tDevelopmentCateMapper;

	// 分页查询
	public Page<TDevelopmentCate> findByPage(TDevelopmentCate tDevelopmentCate, Integer current, Integer size) {
		Page<TDevelopmentCate> page = new Page<TDevelopmentCate>(current, size);
		List<TDevelopmentCate> paginList = tDevelopmentCateMapper.findByPage(page, tDevelopmentCate);
		page.setRecords(paginList);
		return page;
	}

	// 全部查询
	public List<TDevelopmentCate> findAll() {
		return tDevelopmentCateMapper.findAll();
	}
}