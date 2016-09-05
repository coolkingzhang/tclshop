package com.tclshop.cms.center.web.controller;

import com.tclshop.cms.center.dubbo.TAboutSoa;
import com.tclshop.cms.center.dubbo.TAdvertisingSoa;
import com.tclshop.cms.center.dubbo.TInvestorsSoa;
import com.tclshop.cms.center.dubbo.TNewsSoa;
import com.tclshop.cms.center.entity.TAbout;
import com.tclshop.cms.center.entity.TInvestors;
import com.tclshop.cms.center.enums.TAdvertisingEnum;
import com.tclshop.cms.center.enums.TInvestorsEnum;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class IndexController {

	private static final Logger log = LoggerFactory.getLogger(IndexController.class);
    @Autowired
    private TInvestorsSoa tInvestorsSoa;
    @Autowired
    private TAdvertisingSoa tAdvertisingSoa;
    @Autowired
    private TAboutSoa tAboutSoa;
    @Autowired
    private TNewsSoa tNewsSoa;
    
    private CommonInterface commonInterface = new CommonInterface();
    
    @RequestMapping(value = { "/index", "/"}, method = RequestMethod.GET)
    public String index(Model model) {
        try {
            int value = TAdvertisingEnum.index.getValue();
            // 焦点图
            model.addAttribute("pictureFont", commonInterface.findPictureFont(tAdvertisingSoa, value, 1, 1));
            //新闻资讯
            model.addAttribute("message", tNewsSoa.indexData(8));
            // 定期经营报告分析
            TInvestors tInvestors = new TInvestors();
            tInvestors.setType(TInvestorsEnum.operationalReport.getValue());
            model.addAttribute("report",tInvestorsSoa.findByPage(tInvestors, 1, 5).getRecords());
            // 企业公民活动
            TAbout about = new TAbout();
            about.setType(11);
            model.addAttribute("activity", tAboutSoa.findIndexData(about, 3));
        } catch (Exception e) {
            return "errors/500";
        }
        return "index";
    }
    
}
