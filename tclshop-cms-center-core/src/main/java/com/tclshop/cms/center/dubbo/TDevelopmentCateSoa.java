package com.tclshop.cms.center.dubbo;

import com.baomidou.mybatisplus.plugins.Page;
import com.tclshop.cms.center.entity.TDevelopmentCate;

import java.util.List;

public interface TDevelopmentCateSoa {
	public void insert(TDevelopmentCate tDevelopmentCate);

	public TDevelopmentCate selectById(Long id);

	public boolean deleteBatchIds(List<Long> ids);

	public boolean updateById(TDevelopmentCate tDevelopmentCate);

    public boolean updateSelectiveById(TDevelopmentCate tDevelopmentCate);

	public List<TDevelopmentCate> listBy(TDevelopmentCate tDevelopmentCate);

	public Page<TDevelopmentCate> selectPage(Page<TDevelopmentCate> pageParam, TDevelopmentCate tDevelopmentCate);

	// 自定义分页查询
	public Page<TDevelopmentCate> findByPage(TDevelopmentCate tDevelopmentCate, Integer current, Integer size);

	// 查询全部
	public List<TDevelopmentCate> findAll();
}
