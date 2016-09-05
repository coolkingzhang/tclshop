package com.tclshop.cms.center.web.controller;

import com.baomidou.mybatisplus.plugins.Page;
import com.tclshop.cms.center.dubbo.TAdvertisingSoa;
import com.tclshop.cms.center.entity.TAdvertising;

public class CommonInterface {

    /*
     * 标题图片文字数据
     */
    public Page<TAdvertising> findPictureFont(
            TAdvertisingSoa tAdvertisingSoa, Integer type, Integer pageNumber, Integer listAccount
    ) throws Exception {
        Page<TAdvertising> pageParam = null;
        TAdvertising tAdvertising = new TAdvertising();
        tAdvertising.setType(type);
        pageParam = tAdvertisingSoa.findByPage(tAdvertising, pageNumber, listAccount);
        return pageParam;
    }

}
