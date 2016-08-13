package com.tclshop.cms.center.service;

import com.tclshop.cms.center.entity.TRecruitment;
import com.baomidou.framework.service.ISuperService;
import com.baomidou.mybatisplus.plugins.Page;

/**
 *
 * TRecruitment 招聘职位信息
 *
 */
public interface ITRecruitmentService extends ISuperService<TRecruitment> {

	/**
	 * 职位查询
	 * 
	 * @param tRecruitment
	 * @param current
	 * @param size
	 * @return
	 */
	public Page<TRecruitment> findByPage(TRecruitment tRecruitment, Integer current, Integer size);

    /**
     * 后台职位信息表查询接口
     *
     * @param tRecruitment
     * @param current
     * @param size
     * @return
     */
    public Page<TRecruitment> mgrFindByPage(TRecruitment tRecruitment, Integer current, Integer size);

	/**
	 * 非职位查询
	 * 
	 * @param tRecruitment
	 * @param current
	 * @param size
	 * @return
	 */
	public Page<TRecruitment> findContentByPage(TRecruitment tRecruitment, Integer current, Integer size);
}