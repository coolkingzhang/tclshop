package com.tclshop.cms.center.web.controller;

import com.baomidou.mybatisplus.plugins.Page;
import com.tclshop.cms.center.dubbo.TAboutSoa;
import com.tclshop.cms.center.dubbo.TAdvertisingSoa;
import com.tclshop.cms.center.dubbo.TDevelopmentCateSoa;
import com.tclshop.cms.center.entity.TAbout;
import com.tclshop.cms.center.entity.TDevelopmentCate;
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
    private TDevelopmentCateSoa tDevelopmentCateSoa;
    @Autowired
    private TAdvertisingSoa tAdvertisingSoa;
    private CommonInterface commonInterface = new CommonInterface();

    /*
     * 关于tcl路径
     */
    @RequestMapping(value = "/index", method = RequestMethod.GET)
    public String findAboutTCL(
            Model model,
            @RequestParam(value = "pageNumber", required = false, defaultValue = "1") Integer pageNumber,
            @RequestParam(value = "listAccount", required = false, defaultValue = "10") Integer listAccount) {
        try {
            model.addAttribute("speech", findList(TAboutEnum.CEO.getValue(), null, 1).get(0));// 董事长致辞
        } catch (Exception e) {
            model.addAttribute("exception", e);
            return "errors/exception";
        }
        return "aboutTCL/aboutTCL";
    }

    /*
    * 数据重加载
    */
    @ResponseBody
    @RequestMapping(value = "/reloadContentData", produces = "application/json", method = RequestMethod.GET)
    public RestApi reloadContentData(@RequestParam(value = "type", required = true) Integer type) {
        if (type <= TAboutEnum.CEO.getValue()) {
            return singleDataReq(type);
        } else {
            return multiplyDataReq(type);
        }
    }

    private RestApi singleDataReq(Integer type) {
        RestApi result = new RestApi();
        try {
            TAbout tAbout = new TAbout();
            tAbout.setType(type);
            List<TAbout> aboutList = tAboutSoa.findIndexData(tAbout, 1);
            if (aboutList.size() > 0) {
                result.setData(aboutList.get(0));
            }
            result.setCode(200);
            result.setMessage("success");
        } catch (Exception e) {
            result.setCode(500);
        }
        return result;
    }

    private RestApi multiplyDataReq(Integer type) {
        RestApi result = new RestApi();
        try {
            if (type == TAboutEnum.developmentCourse.getValue()) {//发展历程
                Page<TDevelopmentCate> byPage = tDevelopmentCateSoa.findByPage(new TDevelopmentCate(), 1, 5);
                Map<String, List<TAbout>> detailByName = getDetailByName(byPage.getRecords());
                Map<String, Object> data = new HashMap<>();
                data.put("developCat", byPage.getRecords());
                data.put("detailByName", detailByName);
                result.setData(data);
            }
            if (type == TAboutEnum.techHonor.getValue() || type == TAboutEnum.compenyHonor.getValue()) {//科技创新荣誉
                TAbout tAbout = new TAbout();
                tAbout.setType(type);
                List<TAbout> all = tAboutSoa.findAll(tAbout);
                result.setData(all);
            }
            result.setCode(200);
            result.setMessage("success");
        } catch (Exception e) {
            result.setCode(500);
        }
        return result;
    }

    private Map<String, List<TAbout>> getDetailByName(List<TDevelopmentCate> list) {//发展历程规模类型
        Map<String, List<TAbout>> aboutMap = new HashMap<String, List<TAbout>>();
        TAbout about = new TAbout();
        for (TDevelopmentCate devc : list) {//将所有的发展历程规模的数据全部查出
            Integer id = devc.getId();
            about.setName(id + "");
            about.setType(3);
            List<TAbout> developData = tAboutSoa.findDevelopData(about);
            aboutMap.put(id + "", developData);
        }
        return aboutMap;
    }

    /*
     * 公司架构路径
     */
    @RequestMapping(value = "/companyInfoArch", method = RequestMethod.GET)
    public String findCmpArchitecture() {
        return "aboutTCL/company_structure";
    }

    /*
     * 不带分页列表接口
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

    /* 技术研发  */
    @RequestMapping(value = "/companyInfoRDev", method = RequestMethod.GET)
    public String technology(Model model) {
    	try {
    		//技术研发焦点图
			model.addAttribute("pictureFont", commonInterface.findPictureFont(tAdvertisingSoa, TAdvertisingEnum.technology.getValue(), 1, 1));
		} catch (Exception e) {
			return "exception/500";
		}
        return "aboutTCL/technology";
    }

    /* 使用条款  */
    @RequestMapping(value = "/userProvision", method = RequestMethod.GET)
    public String userProvision() {
        return "aboutTCL/terms_of_service";
    }

    /* 隐私保护  */
    @RequestMapping(value = "/privacyProtection", method = RequestMethod.GET)
    public String privacyProtection() {
        return "aboutTCL/privacy_protection";
    }

    /* 法律申明 */
    @RequestMapping(value = "/legalNotices", method = RequestMethod.GET)
    public String legalNotices() {
        return "aboutTCL/legal_notices";
    }
}
