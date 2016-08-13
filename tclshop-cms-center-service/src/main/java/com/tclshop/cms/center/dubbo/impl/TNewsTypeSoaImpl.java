package com.tclshop.cms.center.dubbo.impl;

import com.baomidou.mybatisplus.plugins.Page;
import com.tclshop.cms.center.dubbo.TNewsTypeSoa;
import com.tclshop.cms.center.entity.TNewsType;
import com.tclshop.cms.center.service.ITNewsTypeService;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

/**
 * Created by ${chengrz} on 2016/7/20 0020.
 */
@Service("tNewsTypeSoa")
public class TNewsTypeSoaImpl implements TNewsTypeSoa {
    protected static final org.slf4j.Logger log = LoggerFactory.getLogger(TTestSoaImpl.class);

    @Autowired
    @Qualifier("tNewsTypeService")
    private ITNewsTypeService itNewsTypeService;

    @Override
    public void insert(TNewsType tNewsType) {
        itNewsTypeService.insert(tNewsType);
    }

    @Override
    public void updateById(TNewsType tNewsType) {
        itNewsTypeService.updateById(tNewsType);
    }

    @Override
    public void updateSelectiveById(TNewsType tNewsType) {
        itNewsTypeService.updateSelectiveById(tNewsType);
    }

    @Override
    public void deleteByList(List<Long> idList) {
        // 新闻类型不能删除固定的那几个
        List<Long> list = new ArrayList<Long>();
        for (Long id : idList) {
            if (id > 7) {
                list.add(id);
            }
        }
        if (list.size() > 0) {
            itNewsTypeService.deleteBatchIds(list);
        }
    }

    @Override
    public TNewsType selectById(Long id) {
        return itNewsTypeService.selectById(id);
    }

    @Override
    public Page<TNewsType> findByPage(TNewsType tNewsType, Integer current, Integer size) {
        return itNewsTypeService.findByPage(tNewsType, current, size);
    }

    @Override
    public List<TNewsType> findAll() {
        return itNewsTypeService.findAll();
    }

}
