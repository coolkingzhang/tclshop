package com.tclshop.cms.center.web.controller;

import com.tclshop.cms.center.dubbo.TAboutSoa;
import com.tclshop.cms.center.dubbo.TAdvertisingSoa;
import com.tclshop.cms.center.dubbo.TDevelopmentCateSoa;
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

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/*
 * 公司信息全菜单模块Controller
 */
@Controller
@RequestMapping("/companyInfo")
public class CompanyInfoController {

    private static final Logger log = LoggerFactory.getLogger(CompanyInfoController.class);

    @Autowired
    private TAboutSoa tAboutSoa;
    @Autowired
    private TAdvertisingSoa tAdvertisingSoa;
    @Autowired
    private TDevelopmentCateSoa tDevelopmentCateSoa;

    private CommonInterface commonInterface = new CommonInterface();

    @RequestMapping(value = "/slipPath", method = RequestMethod.GET)
    public String slipPath(Model model, @RequestParam(value = "type", required = false) Integer type) {
        //type =1 关于tcl简介    type = 2 卵化中心简介   type = 3 tcl简介 
        model.addAttribute("page", type);
        return "company/static";
    }

    @RequestMapping(value = "/developList", method = RequestMethod.GET)
    public String developList() {
        return "company/list";
    }

    /*
     * 关于tcl路径
     */
    @RequestMapping(value = "/index", method = RequestMethod.GET)
    public String index(Model model) {
        try {
            model.addAttribute("pictureFont", commonInterface.findPictureFont(tAdvertisingSoa, TAdvertisingEnum.abouttcl.getValue(), 1, 1));// 关于tcl头图
            model.addAttribute("speech", findList(TAboutEnum.CEO.getValue(), null, 1));// 董事长致辞
            model.addAttribute("manageTeam", findList(TAboutEnum.managementTeam.getValue(), null, 10));// 管理团队
            TAbout about_hon = new TAbout();
            about_hon.setType(TAboutEnum.compenyHonor.getValue());
            model.addAttribute("honor", tAboutSoa.findIndexData(about_hon, 3));// 企业荣誉
        } catch (Exception e) {
            model.addAttribute("exception", e);
            return "errors/500";
        }
        return "company/index";
    }

    /*
     * 公司架构路径
     */
    @RequestMapping(value = "/companyInfoArch", method = RequestMethod.GET)
    public String companyInfoArch() {
        return "company/structure";
    }

    /*
     * 技术研发路径
     */
    @RequestMapping(value = "/companyInfoRDev", method = RequestMethod.GET)
    public String companyInfoRDev(Model model) {
        try {
            model.addAttribute("pictureFont", commonInterface.findPictureFont(tAdvertisingSoa, TAdvertisingEnum.technology.getValue(), 1, 1));// 技术研发头图
        } catch (Exception e) {
            model.addAttribute("exception", e);
            return "errors/500";
        }
        return "company/technology";
    }
    
    /*
     * 查找列表接口
     */
    @RequestMapping(value = "/companyInfoList", method = RequestMethod.GET)
    public List<TAbout> findList(Integer type, Integer years, Integer size) throws Exception {
        TAbout tAbout = new TAbout();
        tAbout.setType(type);
        if (years != null) {
            tAbout.setYears(years);
        }
        List<TAbout> pageParam = tAboutSoa.findIndexData(tAbout, size);
        return pageParam;
    }

    /*
     * 科技创新荣誉/企业荣誉列表接口
     */
    @RequestMapping(value = "/companyInfoPagingList", method = RequestMethod.GET)
    public String findListByPaging(
            Model model,
            @RequestParam(value = "type", required = true) Integer type
    ) {
        TAbout tAbout = new TAbout();
        try {
            if (type == TAboutEnum.compenyHonor.getValue()) {//企业荣誉
                tAbout.setType(type);
                List<TAbout> list = tAboutSoa.findAll(tAbout);
                model.addAttribute("result", list);
            } else {//其他  （发展历程）
                tAbout.setType(type);
                tAbout.setSort(1);//荣誉
                List<TAbout> list1 = tAboutSoa.findAll(tAbout);
                tAbout.setSort(2);//新技术，新产品
                List<TAbout> list2 = tAboutSoa.findAll(tAbout);
                tAbout.setSort(3);//专利奖
                List<TAbout> list3 = tAboutSoa.findAll(tAbout);
                model.addAttribute("result", list1);
                model.addAttribute("list2", list2);
                model.addAttribute("list3", list3);
            }
        } catch (Exception e) {
            return "errors/500";
        }
        return "company/details";
    }

    /*
     * 发展历程列表ajax接口
     */
    @ResponseBody
    @RequestMapping(value = "/companyInfoCourseList",  produces = "application/json",  method = RequestMethod.GET)
    public RestApi findCourseList(
            @RequestParam(value = "type", required = true) Integer type,
            @RequestParam(value = "name", required = true) String name
    ) {
        RestApi result = new RestApi();
        TAbout tAbout = new TAbout();
        Map<String, Object> map = new HashMap<>();
        List<TAbout> data = null;
        try {
            map.put("pictureFont", commonInterface.findPictureFont(// 发展历程的头图
                    tAdvertisingSoa, TAdvertisingEnum.develop.getValue(), 1, 1));
            map.put("courseType", tDevelopmentCateSoa.findAll());// 发展历程规模类型数据
            tAbout.setType(type);
            tAbout.setName(name);
            data = tAboutSoa.findAll(tAbout);
            map.put("data", data);
            result.setCode(200);
            result.setData(map);
            result.setMessage("success");
        } catch (Exception e) {
            result.setCode(500);
        }
       return result;
    }

    /*
     * 详情接口
     */
    @RequestMapping(value = "/companyInfoDetails", method = RequestMethod.GET)
    public String findPageDetails(
            Model model,
            @RequestParam(value = "id", required = false) Long id,
            @RequestParam(value = "years", required = false) Integer years,
            @RequestParam(value = "type", required = false) Integer type
    ) {
        try {
            TAbout tAbout = new TAbout();
            List<TAbout> result = new ArrayList<>();
            if (id != null) { // 按id查找
                tAbout = tAboutSoa.selectById(id);
                result.add(tAbout);
                model.addAttribute("result", result);
            }
            if (years != null) { // 发展历程详情按年份查找
                tAbout.setYears(years);
                tAbout.setType(type);
                result = tAboutSoa.findIndexData(tAbout, 100);
                model.addAttribute("result", result);
            }
            if (years == null && type != null) { //years==null防止与发展详情冲突
                tAbout.setType(type);
                model.addAttribute("result", tAboutSoa.findIndexData(tAbout, 1));
            }
        } catch (Exception e) {
            return "errors/500";
        }
        return "company/details";
    }
}
