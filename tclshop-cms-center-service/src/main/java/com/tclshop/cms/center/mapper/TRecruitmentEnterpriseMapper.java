package com.tclshop.cms.center.mapper;

import com.tclshop.cms.center.entity.TRecruitmentEnterprise;
import java.util.List;
import org.apache.ibatis.annotations.Param;
import com.baomidou.mybatisplus.mapper.AutoMapper;
import com.baomidou.mybatisplus.plugins.Page;

/**
 *
 * TRecruitmentEnterprise 表数据库控制层接口
 *
 */
public interface TRecruitmentEnterpriseMapper extends AutoMapper<TRecruitmentEnterprise> {

	/**
	 * 社会招聘分类列表
	 * 
	 * @param page
	 * @param tTest
	 * @return
	 */
	List<TRecruitmentEnterprise> findByPage(Page<TRecruitmentEnterprise> page,
			@Param("model") TRecruitmentEnterprise TRecruitmentEnterprise);

	/**
	 * 社会招聘分类全部
	 * 
	 * @param page
	 * @param tTest
	 * @return
	 */
	List<TRecruitmentEnterprise> findAll();

}