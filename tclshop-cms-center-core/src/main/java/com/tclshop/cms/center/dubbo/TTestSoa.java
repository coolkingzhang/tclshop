package com.tclshop.cms.center.dubbo;

import java.util.List;
import com.baomidou.mybatisplus.plugins.Page;
import com.tclshop.cms.center.entity.TTest;

public interface TTestSoa {
	public void insert(TTest tTest);

	public TTest selectById(Long id);

	public void updateById(TTest tTest);

    public void updateSelectiveById(TTest tTest);

	public List<TTest> listBy(TTest tTest);

	public Page<TTest> selectPage(Page<TTest> pageParam, TTest tTest);

	// 自定义分页查询
	public Page<TTest> findByPage(TTest tTest, Integer current, Integer size);

	public TTest display();
}
