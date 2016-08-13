package com.tclshop.cms.center.dubbo;

import java.util.List;

import com.baomidou.mybatisplus.plugins.Page;
import com.tclshop.cms.center.entity.TRecruitmentEnterprise;

public interface TRecruitmentEnterpriseSoa {

	/**
	 * 插入社会招聘分类信息
	 * 
	 * @param tRecruitmentEnterprise
	 */
	public void insert(TRecruitmentEnterprise tRecruitmentEnterprise);

	public void insertSelective(TRecruitmentEnterprise tRecruitmentEnterprise);

	/**
	 * 查询社会招聘分类
	 * 
	 * @param id
	 * @return
	 */
	public TRecruitmentEnterprise selectById(Long id);

	public boolean deleteByList(List<Long> idList);

	/**
	 * 更新社会招聘
	 * 
	 * @param tRecruitmentEnterprise
	 */
	public void updateById(TRecruitmentEnterprise tRecruitmentEnterprise);

	public void updateSelectiveById(TRecruitmentEnterprise tRecruitmentEnterprise);

	/**
	 * 社会招聘分类列表
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
