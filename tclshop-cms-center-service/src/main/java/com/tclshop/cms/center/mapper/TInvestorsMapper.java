package com.tclshop.cms.center.mapper;

import com.baomidou.mybatisplus.plugins.Page;
import com.tclshop.cms.center.entity.TInvestors;
import com.baomidou.mybatisplus.mapper.AutoMapper;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 *
 * TInvestors 表数据库控制层接口
 *
 */
public interface TInvestorsMapper extends AutoMapper<TInvestors> {

    List<TInvestors> findByPage(Page<TInvestors> page, @Param("model") TInvestors tInvestors);

}