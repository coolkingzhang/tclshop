package com.tclshop.cms.center.web.controller;

import com.baomidou.mybatisplus.plugins.Page;
import com.tclshop.cms.center.dubbo.TAboutSoa;
import com.tclshop.cms.center.dubbo.TAdvertisingSoa;
import com.tclshop.cms.center.entity.TAbout;
import com.tclshop.cms.center.enums.TAboutEnum;
import com.tclshop.cms.center.enums.TAdvertisingEnum;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.List;


/*
 * 社会责任全菜单模块Controller
 */
@Controller
@RequestMapping("/societyDuty")
public class SocietyDutyContorller {

    private static final Logger logger = LoggerFactory.getLogger(SocietyDutyContorller.class);

    @Autowired
    private TAboutSoa tAboutSoa;

    @Autowired
    private TAdvertisingSoa tAdvertisingSoa;
    private CommonInterface commonInterface = new CommonInterface();
    /*
     * 企业社会责任主页
     */
    @RequestMapping(value = "/index", method = RequestMethod.GET)
    public String index(Model model) {
    	try{
    		 model.addAttribute("activity", getIndexData(TAboutEnum.activity.getValue(), 3));
    		 //社会责任焦点图
    	     model.addAttribute("pictureFont", commonInterface.findPictureFont(tAdvertisingSoa, TAdvertisingEnum.social.getValue(), 1, 1));
    	     TAbout tAbout = new TAbout();
    	     tAbout.setType(TAboutEnum.dutyReport.getValue());
    	     tAbout.setSort(2);
    	     List<TAbout> indexData = tAboutSoa.findIndexData(tAbout, 3);
    	     if (indexData.size() > 0 && valuableList(indexData)) {
    	         model.addAttribute("duty", indexData);
    	     }
    		
    	}catch(Exception e){
    		return "exception/500";
    	}

        return "responsibility/responsibility";
    }

    private boolean valuableList(List<TAbout> list) {
        if (list.size() <= 0) return false;
        for (Object obj : list) {
            if (obj == null) {
                return false;
            }
        }
        return true;
    }

    /*
     * 社会责任报告列表
	 */
    @RequestMapping(value = "/socialDutyList", method = RequestMethod.GET)
    public String socialDutyList(
            Model model,
            @RequestParam(value = "pageNumber", required = false, defaultValue = "1") Integer pageNumber,
            @RequestParam(value = "listAccount", required = false, defaultValue = "5") Integer pageSize
    ) {
        TAbout tAbout = new TAbout();
        tAbout.setType(TAboutEnum.dutyReport.getValue());
        tAbout.setSort(2);
        Page<TAbout> pageDataByType = tAboutSoa.findByPage(tAbout, pageNumber, pageSize);
        model.addAttribute("result", pageDataByType);
        return "responsibility/responsibility_report";
    }

    /*
     * 企业公民活动页
	 */
    @RequestMapping(value = "/socialActivityList", method = RequestMethod.GET)
    public String socialActivityList(
            Model model,
            @RequestParam(value = "pageNumber", required = false, defaultValue = "1") Integer pageNumber,
            @RequestParam(value = "listAccount", required = false, defaultValue = "3") Integer pageSize
    ) {
        model.addAttribute("activity", getPageDataByType(TAboutEnum.activity.getValue(), pageNumber, pageSize));
        model.addAttribute("fund", getPageDataByType(TAboutEnum.hmFund.getValue(), pageNumber, pageSize));
        model.addAttribute("volunteer", getPageDataByType(TAboutEnum.volunteer.getValue(), pageNumber, pageSize));
        return "responsibility/responsibility_activity";
    }

    /*
    * 企业公民列表数据加载
    */
    @RequestMapping(value = "/loadListData", method = RequestMethod.GET)
    public String loadListData(
            Model model,
            @RequestParam(value = "type", required = true) Integer type,
            @RequestParam(value = "pageNumber", required = false, defaultValue = "1") Integer pageNumber,
            @RequestParam(value = "listAccount", required = false, defaultValue = "5") Integer pageSize
    ) {
        String typeName = "loadData";
        TAbout about = new TAbout();
        about.setType(type);
        if (type == TAboutEnum.dutyReport.getValue()) {
            about.setSort(2);
        }
        Page<TAbout> byPage = tAboutSoa.findByPage(about, pageNumber, pageSize);
        model.addAttribute(typeName, byPage);
        return "responsibility/responsibility_actList";
    }

    /*
     * 企业公民活动详情/华萌基金详情/志愿者风采详情/社会责任详情
	 */
    @RequestMapping(value = "/societyDutyDetail", method = RequestMethod.GET)
    public String getSolDetail(Model model, @RequestParam(value = "id", required = true) Long id) {
        TAbout temp = new TAbout();
        TAbout tAbout = tAboutSoa.selectById(id);
        if (tAbout != null) {
            temp = tAbout;
        }
        model.addAttribute("detail", temp);
        return "responsibility/responsibility_detail";
    }

    // 企业公民活动主页显示（type=11）， 华萌基金主页显示（type=12），志愿者风采主页显示（type=13）, 社会责任报告（type=14）
    private List<TAbout> getIndexData(Integer type, Integer num) {
        TAbout about = new TAbout();
        about.setType(type);
        List<TAbout> tAboutList = tAboutSoa.findIndexData(about, num);
        return tAboutList;
    }

    private Page<TAbout> getPageDataByType(int type, int pageNum, int size) {
        TAbout about = new TAbout();
        about.setType(type);
        Page<TAbout> byPage = tAboutSoa.findByPage(about, pageNum, size);
        return byPage;
    }
}
