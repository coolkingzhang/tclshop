package com.tclshop.cms.center.service;

import com.tclshop.cms.center.entity.TRecruitmentEnterprise;

import java.util.List;

import com.baomidou.framework.service.ISuperService;
import com.baomidou.mybatisplus.plugins.Page;

/**
 *
 * TRecruitmentEnterprise 表数据服务层接口
 *
 */
public interface ITRecruitmentEnterpriseService extends ISuperService<TRecruitmentEnterprise> {

	/**
	 * 社会招聘分类 列表
	 * 
	 * @param tRecruitmentEnterprise
	 * @param current
	 * @param size
	 * @return
	 */
	public Page<TRecruitmentEnterprise> findByPage(TRecruitmentEnterprise tRecruitmentEnterprise, Integer current,
			Integer size);
	
	/**
	 * 社会招聘分类 全部
	 * 
	 * @param tRecruitmentEnterprise
	 * @param current
	 * @param size
	 * @return
	 */
	public List<TRecruitmentEnterprise> findAll();
}