package com.tclshop.cms.center.dubbo.impl;

import java.util.List;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;
import com.baomidou.mybatisplus.plugins.Page;
import com.tclshop.cms.center.dubbo.TDevelopmentCateSoa;
import com.tclshop.cms.center.entity.TDevelopmentCate;
import com.tclshop.cms.center.service.ITDevelopmentCateService;

@Service("tDevelopmentCateSoa")
public class TDevelopmentCateSoaImpl implements TDevelopmentCateSoa {
	protected static final org.slf4j.Logger log = LoggerFactory.getLogger(TDevelopmentCateSoaImpl.class);
	@Autowired
	@Qualifier("tDevelopmentCateService")
	private ITDevelopmentCateService iTDevelopmentCateService;

	public void insert(TDevelopmentCate tDevelopmentCate) {
		iTDevelopmentCateService.insert(tDevelopmentCate);
	}

	public TDevelopmentCate selectById(Long id) {
		return iTDevelopmentCateService.selectById(id);
	}

	public boolean deleteBatchIds(List<Long> ids) {
		return iTDevelopmentCateService.deleteBatchIds(ids);
	}

	public boolean updateById(TDevelopmentCate tDevelopmentCate) {
		return iTDevelopmentCateService.updateById(tDevelopmentCate);
	}

	public boolean updateSelectiveById(TDevelopmentCate tDevelopmentCate) {
		return iTDevelopmentCateService.updateSelectiveById(tDevelopmentCate);
	}

	public List<TDevelopmentCate> listBy(TDevelopmentCate tDevelopmentCate) {
		return iTDevelopmentCateService.selectList(tDevelopmentCate);
	}

	public Page<TDevelopmentCate> selectPage(Page<TDevelopmentCate> pageParam, TDevelopmentCate tDevelopmentCate) {
		return iTDevelopmentCateService.selectPage(pageParam, tDevelopmentCate);
	}

	// 自定义分页查询
	public Page<TDevelopmentCate> findByPage(TDevelopmentCate tDevelopmentCate, Integer current, Integer size) {
		return iTDevelopmentCateService.findByPage(tDevelopmentCate, current, size);
	}

	// 查询全部
	public List<TDevelopmentCate> findAll() {
		return iTDevelopmentCateService.findAll();
	}
}
