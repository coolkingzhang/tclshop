package com.tclshop.cms.center.web.controller;

import java.util.List;

import com.baomidou.mybatisplus.plugins.Page;
import com.tclshop.cms.center.dubbo.TAdvertisingSoa;
import com.tclshop.cms.center.entity.TAdvertising;

public class CommonInterface {

    /*
     * 标题图片文字数据
     */
    public List<TAdvertising> findPictureFont(
            TAdvertisingSoa tAdvertisingSoa, Integer type, Integer pageNumber, Integer listAccount
    ) throws Exception {
        List<TAdvertising> advertList = null;
        TAdvertising tAdvertising = new TAdvertising();
        tAdvertising.setType(type);
        Page<TAdvertising> pageParam = tAdvertisingSoa.findByPage(tAdvertising, pageNumber, listAccount);
        if (pageParam != null && pageParam.getTotal() > 0) {
            advertList = pageParam.getRecords();
        }
        return advertList;
    }


}
