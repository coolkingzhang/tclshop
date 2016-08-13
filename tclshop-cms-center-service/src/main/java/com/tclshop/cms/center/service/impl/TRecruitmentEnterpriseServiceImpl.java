package com.tclshop.cms.center.service.impl;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.baomidou.framework.service.impl.SuperServiceImpl;
import com.baomidou.mybatisplus.plugins.Page;
import com.tclshop.cms.center.entity.TRecruitmentEnterprise;
import com.tclshop.cms.center.mapper.TRecruitmentEnterpriseMapper;
import com.tclshop.cms.center.service.ITRecruitmentEnterpriseService;

/**
 *
 * TRecruitmentEnterprise 表数据服务层接口实现类
 *
 */
@Service("tRecruitmentEnterpriseService")
public class TRecruitmentEnterpriseServiceImpl
		extends SuperServiceImpl<TRecruitmentEnterpriseMapper, TRecruitmentEnterprise>
		implements ITRecruitmentEnterpriseService {

	@Autowired
	TRecruitmentEnterpriseMapper tRecruitmentEnterpriseMapper;

	/**
	 * 社会招聘分类 列表
	 * 
	 * @param tRecruitmentEnterprise
	 * @param current
	 * @param size
	 * @return
	 */
	public Page<TRecruitmentEnterprise> findByPage(TRecruitmentEnterprise tRecruitmentEnterprise, Integer current,
			Integer size) {
        if (current == null || size == null) {
            return new Page<TRecruitmentEnterprise>(0, 0);
        }
		Page<TRecruitmentEnterprise> page = new Page<TRecruitmentEnterprise>(current, size);
		List<TRecruitmentEnterprise> paginList = tRecruitmentEnterpriseMapper.findByPage(page, tRecruitmentEnterprise);
		page.setRecords(paginList);
		return page;
	}

	/**
	 * 社会招聘分类 全部
	 * 
	 * @param tRecruitmentEnterprise
	 * @param current
	 * @param size
	 * @return
	 */
	public List<TRecruitmentEnterprise> findAll() {
		return tRecruitmentEnterpriseMapper.findAll();
	}
}