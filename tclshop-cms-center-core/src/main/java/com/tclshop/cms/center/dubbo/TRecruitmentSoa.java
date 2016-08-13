package com.tclshop.cms.center.dubbo;

import java.util.List;

import com.baomidou.mybatisplus.plugins.Page;
import com.tclshop.cms.center.entity.TRecruitment;

public interface TRecruitmentSoa {

	/**
	 * 插入职位信息
	 * 
	 * @param tRecruitmentEnterprise
	 */
	public void insert(TRecruitment tRecruitment);
	
	public void insertSelective(TRecruitment tRecruitment);

	public TRecruitment selectById(Long id);

	public void updateById(TRecruitment tRecruitment);
	
	public void updateSelectiveById(TRecruitment tRecruitment);
	
	public boolean deleteByList(List<Long> idList);

	/**
	 * 职位查询列表分页
	 */
	public Page<TRecruitment> findByPage(TRecruitment tRecruitment, Integer current, Integer size);

    public Page<TRecruitment> mgrFindByPage(TRecruitment tRecruitment, Integer current, Integer size);

	/**
	 * 非职位列表分页
	 */
	public Page<TRecruitment> findContentByPage(TRecruitment tRecruitment, Integer current, Integer size);
}
