package com.tclshop.cms.center.mapper;

import java.util.List;
import org.apache.ibatis.annotations.Param;
import com.baomidou.mybatisplus.mapper.AutoMapper;
import com.baomidou.mybatisplus.plugins.Page;
import com.tclshop.cms.center.entity.TDevelopmentCate;

/**
 *
 * TDevelopmentCate 表数据库控制层接口
 *
 */
public interface TDevelopmentCateMapper extends AutoMapper<TDevelopmentCate> {

	List<TDevelopmentCate> findByPage(Page<TDevelopmentCate> page, @Param("model") TDevelopmentCate tDevelopmentCate);
	
	List<TDevelopmentCate> findAll();
}