package com.tclshop.cms.center.service.impl;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.baomidou.framework.service.impl.SuperServiceImpl;
import com.baomidou.mybatisplus.plugins.Page;
import com.tclshop.cms.center.entity.TAdvertising;
import com.tclshop.cms.center.mapper.TAdvertisingMapper;
import com.tclshop.cms.center.service.ITAdvertisingService;

/**
 *
 * TAdvertising 表数据服务层接口实现类
 *
 */
@Service("tAdvertisingService")
public class TAdvertisingServiceImpl extends SuperServiceImpl<TAdvertisingMapper, TAdvertising>
		implements ITAdvertisingService {

	@Autowired
	TAdvertisingMapper tAdvertisingMapper;

	// 分页查询
	public Page<TAdvertising> findByPage(TAdvertising tAdvertising, Integer current, Integer size) {
		Page<TAdvertising> page = new Page<TAdvertising>(current, size);
		List<TAdvertising> paginList = tAdvertisingMapper.findByPage(page, tAdvertising);
		page.setRecords(paginList);
		return page;
	}
}