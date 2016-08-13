package com.tclshop.cms.center.service.impl;

import org.springframework.stereotype.Service;

import com.tclshop.cms.center.mapper.TCommentMapper;
import com.tclshop.cms.center.entity.TComment;
import com.tclshop.cms.center.service.ITCommentService;
import com.baomidou.framework.service.impl.SuperServiceImpl;

/**
 *
 * TComment 表数据服务层接口实现类
 *
 */
@Service
public class TCommentServiceImpl extends SuperServiceImpl<TCommentMapper, TComment> implements ITCommentService {


}