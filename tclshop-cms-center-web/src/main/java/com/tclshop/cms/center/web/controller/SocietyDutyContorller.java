package com.tclshop.cms.center.web.controller;

import com.baomidou.mybatisplus.plugins.Page;
import com.tclshop.cms.center.dubbo.TAboutSoa;
import com.tclshop.cms.center.dubbo.TAdvertisingSoa;
import com.tclshop.cms.center.entity.TAbout;
import com.tclshop.cms.center.enums.TAboutEnum;
import com.tclshop.cms.center.enums.TAdvertisingEnum;
import com.tclshop.framework.core.web.RestApi;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;


/*
 * 社会责任全菜单模块Controller
 */
@Controller
@RequestMapping("/societyDuty")
public class SocietyDutyContorller {
    private static final Logger log = LoggerFactory.getLogger(SocietyDutyContorller.class);
    @Autowired
    private TAboutSoa tAboutSoa;
    @Autowired
    private TAdvertisingSoa tAdvertisingSoa;
    CommonInterface commonInterface = new CommonInterface();


    /*
     * 企业社会责任主页
     */
    @RequestMapping(value = "/index", method = RequestMethod.GET)
    public String index(Model model) {
        try {
            model.addAttribute("activity", getIndexData(TAboutEnum.activity.getValue(), 3));
            model.addAttribute("fund", getIndexData(TAboutEnum.hmFund.getValue(), 5));
            model.addAttribute("volunteer", getIndexData(TAboutEnum.volunteer.getValue(), 5));
            model.addAttribute("pictureFont", commonInterface.findPictureFont(tAdvertisingSoa, TAdvertisingEnum.social.getValue(), 1, 1));// 社会责任头图
            TAbout tAbout = new TAbout();
            tAbout.setType(TAboutEnum.dutyReport.getValue());
            tAbout.setSort(1);
            List<TAbout> indexData = tAboutSoa.findIndexData(tAbout, 1);
            if (indexData.get(0) != null) {
                model.addAttribute("duty", indexData.get(0));
            }
        } catch (Exception e) {
            model.addAttribute("exception", e);
            return "errors/500";
        }
        return "responsibility/index";
    }

    /*
     * 企业公民活动列表
	 */
    @RequestMapping(value = "/socialActivityList", method = RequestMethod.GET)
    public String findADirectoryList(
            Model model,
            @RequestParam(value = "pageNumber", required = false, defaultValue = "1") Integer pageNumber,
            @RequestParam(value = "listAccount", required = false, defaultValue = "10") Integer pageSize
    ) {
    	try{
    		Page<TAbout> pageDataByType = getPageDataByType(TAboutEnum.activity.getValue(), pageNumber, pageSize);
            model.addAttribute("result", pageDataByType);
            model.addAttribute("type", TAboutEnum.activity.getValue());
    	}catch(Exception e){
    		return "exception/500";
    	}
        return "responsibility/action_list";
    }

    /*
     * 分页列表
     */
    @ResponseBody
    @RequestMapping(value = "/findJsonData", produces = "application/json", method = RequestMethod.GET)
    public RestApi findJsonData(
            @RequestParam(value = "type", required = true) Integer type,
            @RequestParam(value = "pageNumber", required = false, defaultValue = "1") Integer pageNumber,
            @RequestParam(value = "listAccount", required = false, defaultValue = "10") Integer listAccount
    ) {
        RestApi result = new RestApi();
        try {
            Page<TAbout> pageParam = null;
            TAbout tAbout = new TAbout();
            tAbout.setType(type);
            if (type == TAboutEnum.dutyReport.getValue()) {
                tAbout.setSort(2);
            }
            pageParam = tAboutSoa.findByPage(tAbout, pageNumber, listAccount);
            result.setCode(200);
            result.setMessage("success");
            result.setData(pageParam);
        } catch (Exception e) {
            result.setCode(500);
        }
        return result;
    }

    /*
     * 华萌基金列表
	 */
    @RequestMapping(value = "/societyDutyFund", method = RequestMethod.GET)
    public String findFundList(
            Model model,
            @RequestParam(value = "pageNumber", required = false, defaultValue = "1") Integer pageNumber,
            @RequestParam(value = "listAccount", required = false, defaultValue = "10") Integer pageSize
    ) {
    	try{
    		Page<TAbout> pageDataByType = getPageDataByType(TAboutEnum.hmFund.getValue(), pageNumber, pageSize);
            model.addAttribute("result", pageDataByType);
            model.addAttribute("title", "华萌基金");
            model.addAttribute("type", TAboutEnum.hmFund.getValue());
    	}catch(Exception e){
    		return "exception/500";
    	}
        return "responsibility/hm_list";
    }

    /*
     * 志愿者风采列表
	 */
    @RequestMapping(value = "/societyDutyVolunteers", method = RequestMethod.GET)
    public String findVolunteersList(
            Model model,
            @RequestParam(value = "pageNumber", required = false, defaultValue = "1") Integer pageNumber,
            @RequestParam(value = "listAccount", required = false, defaultValue = "10") Integer pageSize
    ) {
    	try{
    		Page<TAbout> pageDataByType = getPageDataByType(TAboutEnum.volunteer.getValue(), pageNumber, pageSize);
            model.addAttribute("result", pageDataByType);
            model.addAttribute("title", "志愿者风采");
            model.addAttribute("type", TAboutEnum.volunteer.getValue());
    	}catch(Exception e){
    		return "exception/500";
    	}
        return "responsibility/hm_list";
    }

    /*
     * 社会责任报告列表
	 */
    @RequestMapping(value = "/societyDutyReport", method = RequestMethod.GET)
    public String findDutyList(
            Model model,
            @RequestParam(value = "pageNumber", required = false, defaultValue = "1") Integer pageNumber,
            @RequestParam(value = "listAccount", required = false, defaultValue = "10") Integer pageSize
    ) {
    	try{
    		TAbout about = new TAbout();
            about.setType(TAboutEnum.dutyReport.getValue());
            about.setSort(2);
            Page<TAbout> pageDataByType = tAboutSoa.findByPage(about, pageNumber, pageSize);
            model.addAttribute("result", pageDataByType);
            model.addAttribute("type", TAboutEnum.dutyReport.getValue());
    	}catch(Exception e){
    		return "exception/500";
    	}
        return "responsibility/duty_list";
    }

    /*
	 * 企业公民活动详情/华萌基金详情/志愿者风采详情/社会责任详情
	 */
    @RequestMapping(value = "/societyDutyDetail", method = RequestMethod.GET)
    public String getSolDetail(
    		Model model,
    		@RequestParam(value = "id", required = true) Long id,
    		@RequestParam(value = "type", required = false) Long type
    		) {
    	try{
    		TAbout temp = new TAbout();
            TAbout tAbout = tAboutSoa.selectById(id);
            if (tAbout != null) {
                temp = tAbout;
            }
            model.addAttribute("type", type);//面包屑导航用
            model.addAttribute("detail", temp);
    	}catch(Exception e){
    		return "exception/500";
    	}
       
        return "responsibility/details";
    }

    // 企业公民活动主页显示（type=11）， 华萌基金主页显示（type=12），志愿者风采主页显示（type=13）, 社会责任报告（type=14）
    private List<TAbout> getIndexData(Integer type, Integer num) throws Exception{
        TAbout about = new TAbout();
        about.setType(type);
        List<TAbout> tAboutList = tAboutSoa.findIndexData(about, num);
        return tAboutList;
    }

    private Page<TAbout> getPageDataByType(int type, int pageNum, int size) throws Exception{
        TAbout about = new TAbout();
        about.setType(type);
        Page<TAbout> byPage = tAboutSoa.findByPage(about, pageNum, size);
        return byPage;
    }
}
