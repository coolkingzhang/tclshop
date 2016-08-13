package com.tclshop.cms.center.dubbo.impl;

import java.util.List;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;
import com.baomidou.mybatisplus.plugins.Page;
import com.tclshop.cms.center.dubbo.TAdvertisingSoa;
import com.tclshop.cms.center.entity.TAdvertising;
import com.tclshop.cms.center.service.ITAdvertisingService;

@Service("tAdvertisingSoa")
public class TAdvertisingSoaImpl implements TAdvertisingSoa {
	protected static final org.slf4j.Logger log = LoggerFactory.getLogger(TAdvertisingSoaImpl.class);

	@Autowired
	@Qualifier("tAdvertisingService")
	private ITAdvertisingService iTAdvertisingService;

	public void insert(TAdvertising tAdvertising) {
		iTAdvertisingService.insert(tAdvertising);
	}

	public TAdvertising selectById(Long id) {
		return iTAdvertisingService.selectById(id);
	}

    @Override
    public boolean deleteBatchIds(List<Long> ids) {
        return iTAdvertisingService.deleteBatchIds(ids);
    }

    public void updateById(TAdvertising tAdvertising) {
		iTAdvertisingService.updateById(tAdvertising);
	}

	public void updateSelectiveById(TAdvertising tAdvertising) {
		iTAdvertisingService.updateSelectiveById(tAdvertising);
	}

	public List<TAdvertising> listBy(TAdvertising tAdvertising) {
		return iTAdvertisingService.selectList(tAdvertising);
	}

	public Page<TAdvertising> selectPage(Page<TAdvertising> pageParam, TAdvertising tAdvertising) {
		return iTAdvertisingService.selectPage(pageParam, tAdvertising);
	}

	// 自定义分页查询
	public Page<TAdvertising> findByPage(TAdvertising tAdvertising, Integer current, Integer size) {
		return iTAdvertisingService.findByPage(tAdvertising, current, size);
	}
}