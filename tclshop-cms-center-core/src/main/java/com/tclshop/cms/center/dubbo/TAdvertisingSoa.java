package com.tclshop.cms.center.dubbo;

import java.util.List;
import com.baomidou.mybatisplus.plugins.Page;
import com.tclshop.cms.center.entity.TAdvertising;

public interface TAdvertisingSoa {
	public void insert(TAdvertising tAdvertising);

	public TAdvertising selectById(Long id);

    public boolean deleteBatchIds(List<Long> ids);

	public void updateById(TAdvertising tAdvertising);

	public void updateSelectiveById(TAdvertising tAdvertising);

	public List<TAdvertising> listBy(TAdvertising tAdvertising);

	public Page<TAdvertising> selectPage(Page<TAdvertising> pageParam, TAdvertising tAdvertising);

	// 自定义分页查询
	public Page<TAdvertising> findByPage(TAdvertising tAdvertising, Integer current, Integer size);
}