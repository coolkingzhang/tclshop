package com.tclshop.cms.center.wap.controller;

import com.alibaba.fastjson.JSONObject;
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

import javax.servlet.http.HttpServletResponse;

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
            @RequestParam(value = "listAccount", required = false, defaultValue = "3") Integer listAccount
    ) {
        try {
            model.addAttribute("analysis", findAnalysis(pageNumber, listAccount));//分析及报告
            model.addAttribute("lawAndBbs", findLawAndBbs(pageNumber, listAccount));//相关法律法规
            model.addAttribute("pictureFont", commonInterface.findPictureFont(//头图
                    tAdvertisingSoa, TAdvertisingEnum.investor.getValue(), 1, 1));
        } catch (Exception e) {
            model.addAttribute("exception", e);
            return "errors/exception";
        }
        return "investors/index";
    }

    /*
     * 投资者关系首页-分析及报告
     */
    public RestApi findAnalysis(
            @RequestParam(value = "pageNumber", required = false, defaultValue = "1") Integer pageNumber,
            @RequestParam(value = "listAccount", required = false, defaultValue = "5") Integer listAccount
    ) throws Exception {
        RestApi result = new RestApi();
        TInvestors tInvestors = new TInvestors();
        tInvestors.setType(TInvestorsEnum.operationalReport.getValue());//定期经营报告分析
        Page<TInvestors> manageReport = tInvestorsSoa.findByPage(tInvestors, pageNumber, listAccount);
        tInvestors.setType(TInvestorsEnum.companyReport.getValue());//上市公司报告
        Page<TInvestors> publicCompanyReport = tInvestorsSoa.findByPage(tInvestors, pageNumber, listAccount);
        tInvestors.setType(TInvestorsEnum.investmentReport.getValue());//投资机构报告
        Page<TInvestors> investmentReport = tInvestorsSoa.findByPage(tInvestors, pageNumber, listAccount);

        Map<String, Object> map = new HashMap<>();
        map.put("manageReport", manageReport);
        map.put("publicCompanyReport", publicCompanyReport);
        map.put("investmentReport", investmentReport);
        result.setData(map);
        return result;
    }

    /*
     * 投资者关系首页-相关法律法规
     */
    public RestApi findLawAndBbs(
            @RequestParam(value = "pageNumber", required = false, defaultValue = "1") Integer pageNumber,
            @RequestParam(value = "listAccount", required = false, defaultValue = "5") Integer listAccount
    ) throws Exception {
        RestApi result = new RestApi();
        TInvestors tInvestors = new TInvestors();
        tInvestors.setType(TInvestorsEnum.managementSystem.getValue());//上市公司管理制度
        Page<TInvestors> publicCompanyManger = tInvestorsSoa.findByPage(tInvestors, pageNumber, listAccount); //定期经营报告分析
        tInvestors.setType(TInvestorsEnum.BBS.getValue());//投资者问答论坛
        Page<TInvestors> investorQA = tInvestorsSoa.findByPage(tInvestors, pageNumber, listAccount); //投资机构报告

        Map<String, Object> map = new HashMap<>();
        map.put("publicCompanyManger", publicCompanyManger);
        map.put("investorQA", investorQA);
        result.setData(map);
        return result;
    }

    /*根据投资者类型查找内容列表*/
    @RequestMapping(value = "/investorsList", method = RequestMethod.GET)
    public String findInvestorsList(
            Model model,
            @RequestParam(value = "type", required = true) String type,
            @RequestParam(value = "pageNumber", required = false, defaultValue = "1") Integer pageNumber,
            @RequestParam(value = "listAccount", required = false, defaultValue = "3") Integer listAccount
    ) {
        List<TInvestors> findIndexData = null;
        int total;
        try {
            TInvestors paramTNews = new TInvestors();
            paramTNews.setType(Integer.parseInt(type));
            Page<TInvestors> pageData = tInvestorsSoa.findByPage(paramTNews, pageNumber, listAccount);
            findIndexData = pageData.getRecords();
            total = pageData.getPages();
        } catch (Exception e) {
            model.addAttribute("exception", e);
            return "errors/exception";
        }
        model.addAttribute("total", total);
        model.addAttribute("pageNumber", pageNumber);
        model.addAttribute("listAccount", listAccount);
        model.addAttribute("type", type);
        model.addAttribute("investorList", findIndexData);
        return "investors/list";
    }


    /*跳转到投资者列表页面*/
    @RequestMapping(value = "/investorsQA", method = RequestMethod.GET)
    public String viewInvestorQA(
            Model model,
            @RequestParam(value = "id", required = true) int id,
            @RequestParam(value = "pageNumber", required = false, defaultValue = "1") Integer pageNumber,
            @RequestParam(value = "listAccount", required = false, defaultValue = "3") Integer listAccount
    ) {
        List<TInvestors> InvestorQAList;
        int pagesSum = 0;
        try {
            InvestorQAList = findInvestorQA(id, pageNumber, listAccount).getRecords();
            pagesSum = findInvestorQA(id, pageNumber, listAccount).getPages();
        } catch (Exception e) {
            model.addAttribute("exception", e);
            return "errors/exception";
        }
        model.addAttribute("pagesSum", pagesSum);
        model.addAttribute("InvestorQAList", InvestorQAList);
        return "investors/qa_list";

    }

    /* 异步加载投资者列表内容*/
    @RequestMapping(value = "/viewAjaxInvestorQA")
    @ResponseBody
    public void viewAjaxInvestorQA(
            HttpServletResponse response,
            @RequestParam(value = "id", required = true) int id,
            @RequestParam(value = "pageNumber", required = false, defaultValue = "1") Integer pageNumber,
            @RequestParam(value = "listAccount", required = false, defaultValue = "3") Integer listAccount
    ) {
        List<TInvestors> InvestorQAList;
        try {
            InvestorQAList = findInvestorQA(id, pageNumber, listAccount).getRecords();
            response.setCharacterEncoding("utf-8");
            response.getWriter().print(JSONObject.toJSONString(InvestorQAList));
        } catch (Exception e) {
            log.error(e.getMessage());
        }
    }


    /*查询投资者关问答列表*/
    public Page<TInvestors> findInvestorQA(int id, Integer pageNumber, Integer listAccount) throws Exception {
        TInvestors paramTNews = new TInvestors();
        paramTNews.setType(id);
        Page<TInvestors> pageData = tInvestorsSoa.findByPage(paramTNews, pageNumber, listAccount);

        return pageData;
    }
}
