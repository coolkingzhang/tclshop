package com.tclshop.cms.center.dubbo.impl;

import java.util.List;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;
import com.baomidou.mybatisplus.plugins.Page;
import com.tclshop.cms.center.dubbo.TRecruitmentEnterpriseSoa;
import com.tclshop.cms.center.entity.TRecruitmentEnterprise;
import com.tclshop.cms.center.service.ITRecruitmentEnterpriseService;

@Service("tRecruitmentEnterpriseSoa")
public class TRecruitmentEnterpriseSoaImpl implements TRecruitmentEnterpriseSoa {
	protected static final org.slf4j.Logger log = LoggerFactory.getLogger(TRecruitmentEnterpriseSoaImpl.class);
	@Autowired
	@Qualifier("tRecruitmentEnterpriseService")
	private ITRecruitmentEnterpriseService iTRecruitmentEnterpriseService;

	public void insert(TRecruitmentEnterprise tRecruitmentEnterprise) {
		iTRecruitmentEnterpriseService.insert(tRecruitmentEnterprise);
	}

	public void insertSelective(TRecruitmentEnterprise tRecruitmentEnterprise) {
		iTRecruitmentEnterpriseService.insertSelective(tRecruitmentEnterprise);
	}

	public TRecruitmentEnterprise selectById(Long id) {
		return iTRecruitmentEnterpriseService.selectById(id);
	}

	public void updateById(TRecruitmentEnterprise tRecruitmentEnterprise) {
		iTRecruitmentEnterpriseService.updateById(tRecruitmentEnterprise);
	}

	public void updateSelectiveById(TRecruitmentEnterprise tRecruitmentEnterprise) {
		iTRecruitmentEnterpriseService.updateSelectiveById(tRecruitmentEnterprise);
	}

	public boolean deleteByList(List<Long> idList) {
		return iTRecruitmentEnterpriseService.deleteBatchIds(idList);
	}

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
		return iTRecruitmentEnterpriseService.findByPage(tRecruitmentEnterprise, current, size);
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
		return iTRecruitmentEnterpriseService.findAll();
	}
}
