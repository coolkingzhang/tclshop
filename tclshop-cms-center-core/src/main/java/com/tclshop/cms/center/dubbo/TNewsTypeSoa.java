package com.tclshop.cms.center.dubbo;

import com.baomidou.mybatisplus.plugins.Page;
import com.tclshop.cms.center.entity.TNewsType;

import java.util.List;

/**
 * Created by ${chengrz} on 2016/7/20 0020.
 */
public interface TNewsTypeSoa {

    public void insert(TNewsType tNewsType);

    public void updateById(TNewsType tNewsType);

    public void updateSelectiveById(TNewsType tNewsType);

    public void deleteByList(List<Long> idList);

    public TNewsType selectById(Long id);

    public Page<TNewsType> findByPage(TNewsType tNewsType, Integer current, Integer size);

    public List<TNewsType> findAll();
}
