package com.tclshop.cms.center.service.impl;

import com.baomidou.framework.service.impl.SuperServiceImpl;
import com.baomidou.mybatisplus.plugins.Page;
import com.tclshop.cms.center.entity.TNewsType;
import com.tclshop.cms.center.mapper.TNewsTypeMapper;
import com.tclshop.cms.center.service.ITNewsTypeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 *
 * TNewsType 表数据服务层接口实现类
 *
 */
@Service("tNewsTypeService")
public class TNewsTypeServiceImpl extends SuperServiceImpl<TNewsTypeMapper, TNewsType> implements ITNewsTypeService {

    @Autowired
    TNewsTypeMapper tNewsTypeMapper;

    public Page<TNewsType> findByPage(TNewsType tNewsType, Integer current, Integer size) {
        if (current == null || size == null) {
            return new Page<TNewsType>(0, 0);
        }
        Page<TNewsType> page = new Page<TNewsType>(current, size);
        List<TNewsType> paginList = tNewsTypeMapper.findByPage(page, tNewsType);
        page.setRecords(paginList);
        return page;
    }

    @Override
    public List<TNewsType> findAll() {
        List<TNewsType> all = tNewsTypeMapper.findAll();
        return all;
    }

}