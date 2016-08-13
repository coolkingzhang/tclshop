package com.tclshop.cms.center.service.impl;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.baomidou.framework.service.impl.SuperServiceImpl;
import com.baomidou.mybatisplus.plugins.Page;
import com.tclshop.cms.center.entity.TRecruitment;
import com.tclshop.cms.center.mapper.TRecruitmentMapper;
import com.tclshop.cms.center.service.ITRecruitmentService;

/**
 *
 * TRecruitment 人才招聘职位信息
 *
 */
@Service("tRecruitmentService")
public class TRecruitmentServiceImpl extends SuperServiceImpl<TRecruitmentMapper, TRecruitment>
		implements ITRecruitmentService {

	@Autowired
	TRecruitmentMapper tRecruitmentMapper;

	/**
	 * 职位查询
	 */
	public Page<TRecruitment> findByPage(TRecruitment tRecruitment, Integer current, Integer size) {
        if (current == null || size == null) {
            return new Page<TRecruitment>(0, 0);
        }
		Page<TRecruitment> page = new Page<TRecruitment>(current, size);
		List<TRecruitment> paginList = tRecruitmentMapper.findByPage(page, tRecruitment);
		page.setRecords(paginList);
		return page;
	}

    @Override
    public Page<TRecruitment> mgrFindByPage(TRecruitment tRecruitment, Integer current, Integer size) {
        if (current == null || size == null) {
            return new Page<TRecruitment>(0, 0);
        }
        Page<TRecruitment> page = new Page<TRecruitment>(current, size);
        List<TRecruitment> paginList = tRecruitmentMapper.mgrFindByPage(page, tRecruitment);
        page.setRecords(paginList);
        return page;
    }

    /**
	 * 非职位查询
	 * 
	 * @param tRecruitment
	 * @param current
	 * @param size
	 * @return
	 */
	public Page<TRecruitment> findContentByPage(TRecruitment tRecruitment, Integer current, Integer size) {
        if (current == null || size == null) {
            return new Page<TRecruitment>(0, 0);
        }
		Page<TRecruitment> page = new Page<TRecruitment>(current, size);
		List<TRecruitment> paginList = tRecruitmentMapper.findContentByPage(page, tRecruitment);
		page.setRecords(paginList);
		return page;
	}
}