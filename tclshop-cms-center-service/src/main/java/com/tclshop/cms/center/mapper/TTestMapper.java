package com.tclshop.cms.center.mapper;

import java.util.List;
import org.apache.ibatis.annotations.CacheNamespace;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import com.baomidou.mybatisplus.mapper.AutoMapper;
import com.baomidou.mybatisplus.plugins.Page;
import com.tclshop.cms.center.cache.MybatisRedisCache;
import com.tclshop.cms.center.entity.TTest;

/**
 *
 * TTest 表数据库控制层接口
 *
 */
//@CacheNamespace(implementation = MybatisRedisCache.class)
public interface TTestMapper extends AutoMapper<TTest> {

	List<TTest> findByPage(Page<TTest> page, @Param("model") TTest tTest);

	/*@Select("select * from t_test")
	List<TTest> getAllUsers();

	@Select("select * from t_test where id = #{id}")
	TTest findById(Long id);*/
}