package com.tclshop.cms.center.dubbo;

import com.baomidou.mybatisplus.plugins.Page;
import com.tclshop.cms.center.entity.TInvestors;

import java.util.List;

/**
 * 投资者关系
 *
 * type分类描述
 * 1=经营报告分析, 2=上市公司报告, 3=投资机构研究报告, 4=上市公司管理制度
 * 5=论坛互动精华, 6=公平在身边
 *
 * Created by ${chengrz} on 2016/7/27 0027.
 */
public interface TInvestorsSoa {
    /**
     * 插入投资者相关信息
     *
     * @param tInvestors
     */
    public void insert(TInvestors tInvestors);

    /**
     * 更新投资者相关信息
     *
     * @param tInvestors
     */
    public void updateById(TInvestors tInvestors);

    public void updateSelectiveById(TInvestors tInvestors);

    /**
     * 删除
     *
     * @param idlist
     */
    public void deleteByList(List<Long> idlist);

    /**
     * 根据ID查询
     *
     * @param id
     * @return
     */
    public TInvestors selectById(Long id);

    /**
     * 分页查询
     *
     * @param tInvestors
     * @param current
     * @param size
     * @return
     */
    public Page<TInvestors> findByPage(TInvestors tInvestors, Integer current, Integer size);

}
