package com.tclshop.cms.center.web.controller;

import com.baomidou.mybatisplus.plugins.Page;
import com.tclshop.cms.center.dubbo.TAdvertisingSoa;
import com.tclshop.cms.center.dubbo.TInvestorsSoa;
import com.tclshop.cms.center.entity.TInvestors;
import com.tclshop.cms.center.enums.TAdvertisingEnum;
import com.tclshop.cms.center.enums.TInvestorsEnum;
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
 * 投资者关系菜单功能Controller
 */
@Controller
@RequestMapping("/investors")
public class InvestorsContorller {

    private static final Logger log = LoggerFactory.getLogger(InvestorsContorller.class);

    @Autowired
    private TInvestorsSoa tInvestorsSoa;

    @Autowired
    private TAdvertisingSoa tAdvertisingSoa;

    private CommonInterface commonInterface = new CommonInterface();

    /*
     * 投资者关系首页
     */
    @RequestMapping(value = "/index", method = RequestMethod.GET)
    public String index(
            Model model,
            @RequestParam(value = "pageNumber", required = false, defaultValue = "1") Integer pageNumber,
            @RequestParam(value = "listAccount", required = false, defaultValue = "5") Integer listAccount
    ) {
        try {
            model.addAttribute("indexData", findIndexDatas(pageNumber, listAccount));// 首页全部数据存到map
            model.addAttribute("pictureFont", commonInterface.findPictureFont(tAdvertisingSoa, TAdvertisingEnum.investor.getValue(), 1, 1));// 头图
        } catch (Exception e) {
            model.addAttribute("exception", e);
            return "errors/500";
        }
        return "investors/index";
    }

    /*
     * 投资者关系首页-分析及报告-相关法律法规
     */
    public Map<String, List<TInvestors>> findIndexDatas(
            @RequestParam(value = "pageNumber", required = false, defaultValue = "1") Integer pageNumber,
            @RequestParam(value = "listAccount", required = false, defaultValue = "10") Integer listAccount
    ) throws Exception {
        Map<String, List<TInvestors>> map = new HashMap<>();
        TInvestors tInvestors = new TInvestors();
        tInvestors.setType(TInvestorsEnum.operationalReport.getValue());// 1 定期经营报告分析
        map.put("one", tInvestorsSoa.findByPage(tInvestors, pageNumber, listAccount).getRecords());
        tInvestors.setType(TInvestorsEnum.companyReport.getValue());// 2 上市公司报告
        map.put("two", tInvestorsSoa.findByPage(tInvestors, pageNumber, listAccount).getRecords());
        tInvestors.setType(TInvestorsEnum.investmentReport.getValue());// 3 投资机构报告
        map.put("three", tInvestorsSoa.findByPage(tInvestors, pageNumber, listAccount).getRecords());
        tInvestors.setType(TInvestorsEnum.managementSystem.getValue());// 4 上市公司管理制度
        map.put("four", tInvestorsSoa.findByPage(tInvestors, pageNumber, listAccount).getRecords());
        tInvestors.setType(TInvestorsEnum.BBS.getValue());// 5 股票论坛
        map.put("five", tInvestorsSoa.findByPage(tInvestors, pageNumber, listAccount).getRecords());
        tInvestors.setType(TInvestorsEnum.fair.getValue());// 6 公平在身边
        map.put("six", tInvestorsSoa.findByPage(tInvestors, pageNumber, listAccount).getRecords());
        return map;
    }

    /*
     * Ajax请求
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
            Page<TInvestors> pageParam = null;
            TInvestors tInvestors = new TInvestors();
            tInvestors.setType(type);
            pageParam = tInvestorsSoa.findByPage(tInvestors, pageNumber, listAccount);
            result.setCode(200);
            result.setData(pageParam);
            result.setMessage("success");
        } catch (Exception e) {
            result.setCode(500);
        }
        return result;
    }

    /*
     * 列表
     */
    @RequestMapping(value = "/investorsList", method = RequestMethod.GET)
    public String findInvestorsList(
            Model model,
            @RequestParam(value = "type", required = true) Integer type,
            @RequestParam(value = "pageNumber", required = false, defaultValue = "1") Integer pageNumber,
            @RequestParam(value = "listAccount", required = false, defaultValue = "10") Integer listAccount
    ) {
        try {
            Page<TInvestors> pageParam = null;
            TInvestors tInvestors = new TInvestors();
            tInvestors.setType(type);
            pageParam = tInvestorsSoa.findByPage(tInvestors, pageNumber, listAccount);
            model.addAttribute("result", pageParam);
        } catch (Exception e) {
            model.addAttribute("exception", e);
            return "errors/500";
        }
        return "investors/list";
    }
    
    /*
     * 详情
     */
    @RequestMapping(value = "/investorsDetails", method = RequestMethod.GET)
    public String investorsDetails(
            Model model,
            @RequestParam(value = "id", required = true) Long id
    ) {
    	TInvestors result = null;
        try {
        	result = tInvestorsSoa.selectById(id);
            model.addAttribute("result", result);
        } catch (Exception e) {
            model.addAttribute("exception", e);
            return "errors/500";
        }
        return "investors/details";
    }

}
