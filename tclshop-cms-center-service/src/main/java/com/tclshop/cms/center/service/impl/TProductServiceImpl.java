package com.tclshop.cms.center.service.impl;

import org.springframework.stereotype.Service;

import com.tclshop.cms.center.mapper.TProductMapper;
import com.tclshop.cms.center.entity.TProduct;
import com.tclshop.cms.center.service.ITProductService;
import com.baomidou.framework.service.impl.SuperServiceImpl;

/**
 *
 * TProduct 表数据服务层接口实现类
 *
 */
@Service
public class TProductServiceImpl extends SuperServiceImpl<TProductMapper, TProduct> implements ITProductService {


}