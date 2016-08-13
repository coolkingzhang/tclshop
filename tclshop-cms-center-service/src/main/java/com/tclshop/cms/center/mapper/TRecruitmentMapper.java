package com.tclshop.cms.center.mapper;

import com.tclshop.cms.center.entity.TRecruitment;
import java.util.List;
import org.apache.ibatis.annotations.Param;
import com.baomidou.mybatisplus.mapper.AutoMapper;
import com.baomidou.mybatisplus.plugins.Page;

/**
 *
 * TRecruitment 表数据库控制层接口
 *
 */
public interface TRecruitmentMapper extends AutoMapper<TRecruitment> {

	/**
	 * 职位信息表
	 *
	 * @param page
	 * @param tTest
	 * @return
	 */
	List<TRecruitment> findByPage(Page<TRecruitment> page, @Param("model") TRecruitment tRecruitment);

    /**
     * 后台职位信息表查询接口
     *
     * @param page
     * @param tTest
     * @return
     */
    List<TRecruitment> mgrFindByPage(Page<TRecruitment> page, @Param("model") TRecruitment tRecruitment);

	/**
	 * 非职位信息表 type > 1
	 * 
	 * @param page
	 * @param tTest
	 * @return
	 */
	List<TRecruitment> findContentByPage(Page<TRecruitment> page, @Param("model") TRecruitment tRecruitment);
}