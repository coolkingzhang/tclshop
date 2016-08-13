package com.tclshop.cms.center.dubbo.impl;

import java.util.List;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;
import com.baomidou.mybatisplus.plugins.Page;
import com.tclshop.cms.center.dubbo.TRecruitmentSoa;
import com.tclshop.cms.center.entity.TRecruitment;
import com.tclshop.cms.center.service.ITRecruitmentService;

@Service("tRecruitmentSoa")
public class TRecruitmentSoaImpl implements TRecruitmentSoa {
	protected static final org.slf4j.Logger log = LoggerFactory.getLogger(TRecruitmentSoaImpl.class);
	
	@Autowired
	@Qualifier("tRecruitmentService")
	private ITRecruitmentService iTRecruitmentService;

	public void insert(TRecruitment tRecruitment) {
		iTRecruitmentService.insert(tRecruitment);
	}

	public void insertSelective(TRecruitment tRecruitment) {
		iTRecruitmentService.insertSelective(tRecruitment);
	}

	public TRecruitment selectById(Long id) {
		return iTRecruitmentService.selectById(id);
	}

	public void updateById(TRecruitment tRecruitment) {
		iTRecruitmentService.updateById(tRecruitment);
	}

	public void updateSelectiveById(TRecruitment tRecruitment) {
		iTRecruitmentService.updateSelectiveById(tRecruitment);
	}

	public boolean deleteByList(List<Long> idList) {
		return iTRecruitmentService.deleteBatchIds(idList);
	}

	/**
	 * 职位查询列表分页
	 */
	public Page<TRecruitment> findByPage(TRecruitment tRecruitment, Integer current, Integer size) {
		return iTRecruitmentService.findByPage(tRecruitment, current, size);
	}

    @Override
    public Page<TRecruitment> mgrFindByPage(TRecruitment tRecruitment, Integer current, Integer size) {
        return iTRecruitmentService.mgrFindByPage(tRecruitment, current, size);
    }

    /**
	 * 非职位列表分页
	 */
	public Page<TRecruitment> findContentByPage(TRecruitment tRecruitment, Integer current, Integer size) {
		return iTRecruitmentService.findContentByPage(tRecruitment, current, size);
	}
}
