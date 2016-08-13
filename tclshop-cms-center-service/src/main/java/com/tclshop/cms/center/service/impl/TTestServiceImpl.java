package com.tclshop.cms.center.service.impl;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.baomidou.framework.service.impl.SuperServiceImpl;
import com.baomidou.mybatisplus.plugins.Page;
import com.tclshop.cms.center.entity.TTest;
import com.tclshop.cms.center.mapper.TTestMapper;
import com.tclshop.cms.center.service.ITTestService;

/**
 *
 * TTest 表数据服务层接口实现类
 *
 */
@Service("tTestService")
public class TTestServiceImpl extends SuperServiceImpl<TTestMapper, TTest> implements ITTestService {

	@Autowired
	TTestMapper tTestMapper;

	// 分页查询
	public Page<TTest> findByPage(TTest tTest, Integer current, Integer size) {
		Page<TTest> page = new Page<TTest>(current, size);
		List<TTest> paginList = tTestMapper.findByPage(page, tTest);
		page.setRecords(paginList);
		return page;
	}
}