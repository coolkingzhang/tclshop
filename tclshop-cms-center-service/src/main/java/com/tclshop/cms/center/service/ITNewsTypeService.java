package com.tclshop.cms.center.service;

import com.baomidou.framework.service.ISuperService;
import com.baomidou.mybatisplus.plugins.Page;
import com.tclshop.cms.center.entity.TNewsType;

import java.util.List;

/**
 *
 * TNewsType 表数据服务层接口
 *
 */
public interface ITNewsTypeService extends ISuperService<TNewsType> {

    public Page<TNewsType> findByPage(TNewsType tNewsType, Integer current, Integer size);

    public List<TNewsType> findAll();

}