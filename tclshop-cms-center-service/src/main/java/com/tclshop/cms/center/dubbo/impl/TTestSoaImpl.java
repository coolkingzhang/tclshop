package com.tclshop.cms.center.dubbo.impl;

import java.util.List;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;
import com.baomidou.mybatisplus.plugins.Page;
import com.tclshop.cms.center.dubbo.TTestSoa;
import com.tclshop.cms.center.entity.TTest;
import com.tclshop.cms.center.service.ITTestService;

@Service("tTestSoa")
public class TTestSoaImpl implements TTestSoa {
	protected static final org.slf4j.Logger log = LoggerFactory.getLogger(TTestSoaImpl.class);
	@Autowired
	@Qualifier("tTestService")
	private ITTestService iTTestService;

	public void insert(TTest tTest) {
		iTTestService.insert(tTest);
	}

	public TTest selectById(Long id) {
		return iTTestService.selectById(id);
	}

	public void updateById(TTest tTest) {
		iTTestService.updateById(tTest);
	}

    @Override
    public void updateSelectiveById(TTest tTest) {
        iTTestService.updateSelectiveById(tTest);
    }

    public List<TTest> listBy(TTest tTest) {
		return iTTestService.selectList(tTest);
	}

	public Page<TTest> selectPage(Page<TTest> pageParam, TTest tTest) {
		return iTTestService.selectPage(pageParam, tTest);
	}

	// 自定义分页查询
	public Page<TTest> findByPage(TTest tTest, Integer current, Integer size) {
		return iTTestService.findByPage(tTest, current, size);
	}
	
	public TTest display() {
		TTest tTest = new TTest();
		tTest.setContext("test");
		tTest.setId(123);
		return tTest;
	}
}
