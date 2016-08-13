package com.tclshop.cms.center.dubbo;

import com.baomidou.mybatisplus.plugins.Page;
import com.tclshop.cms.center.entity.TAbout;

import java.util.List;

/**
 * 社会责任
 *
 * type分类描述
 * 11=企业公民活动, 12=华萌基金, 13=志愿者风采
 *
 * Created by ${chengrz} on 2016/7/26 0026.
 */
public interface TAboutSoa {

    public void insert(TAbout tAbout);

    public void updateById(TAbout tAbout);

    public void updateSelectiveById(TAbout tAbout);

    public void deleteByList(List<Long> idList);

    public TAbout selectById(Long id);

    public Page<TAbout> findByPage(TAbout tAbout, Integer current, Integer size);

    // 企业公民活动主页显示（type=11）， 华萌基金主页显示（type=12），志愿者风采主页显示（type=13）
    public List<TAbout> findIndexData(TAbout tAbout, Integer num);

    public List<TAbout> findDevelopData(TAbout tAbout);

    public List<TAbout> findAll(TAbout tAbout);
}
