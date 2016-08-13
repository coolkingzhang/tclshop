package com.tclshop.cms.center.mapper;

import com.tclshop.cms.center.entity.TAdvertising;
import java.util.List;
import org.apache.ibatis.annotations.Param;
import com.baomidou.mybatisplus.mapper.AutoMapper;
import com.baomidou.mybatisplus.plugins.Page;

/**
 *
 * TAdvertising 表数据库控制层接口
 *
 */
public interface TAdvertisingMapper extends AutoMapper<TAdvertising> {

	List<TAdvertising> findByPage(Page<TAdvertising> page, @Param("model") TAdvertising tAdvertising);
}