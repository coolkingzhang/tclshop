package com.tclshop.cms.center.wap.controller;

import com.baomidou.mybatisplus.plugins.Page;
import com.tclshop.cms.center.dubbo.TAdvertisingSoa;
import com.tclshop.cms.center.dubbo.TNewsSoa;
import com.tclshop.cms.center.dubbo.TNewsTypeSoa;
import com.tclshop.cms.center.entity.TAdvertising;
import com.tclshop.cms.center.entity.TNews;
import com.tclshop.cms.center.entity.TNewsType;
import com.tclshop.cms.center.enums.TAdvertisingEnum;
import com.tclshop.cms.center.enums.TNewsEnum;
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
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

/*
 * 新闻中心全菜单模块Controller
 */
@Controller
@RequestMapping("/news")
public class NewsController {

    private static final Logger log = LoggerFactory.getLogger(NewsController.class);
    @Autowired
    private TNewsTypeSoa tNewsTypeSoa;
    @Autowired
    private TNewsSoa tNewsSoa;
    @Autowired
    private TAdvertisingSoa tAdvertisingSoa;
    private CommonInterface commonInterface = new CommonInterface();
    

    //轮播
    @ResponseBody
    @RequestMapping(value = "/newsbanne" , produces="application/json" , method = RequestMethod.GET)
    public RestApi message(){
    	 RestApi result = new RestApi();
    	 try {
			List<TAdvertising> data = commonInterface.findPictureFont(tAdvertisingSoa, TAdvertisingEnum.news.getValue(), 1, 5);
			result.setData(data);
			result.setMessage("success");
		} catch (Exception e) {
			result.setCode(500);
		}
    	 return result;
    }
    
    /*
     * 新闻首页
     */
    @RequestMapping(value = "/index", method = RequestMethod.GET)
    public String index(Model model) {
        try {
            model.addAttribute("typeAndNews", findTitle(1, 10));//标题
        } catch (Exception e) {
            model.addAttribute("exception", e);
            return "errors/exception";
        }
        return "news/index";
    }

    /**
     * 查询分类标题信息和新闻列表
     *
     * @param pageNumber
     * @param listAccount
     * @return
     * @throws Exception
     */
    private RestApi findTitle(
            @RequestParam(value = "pageNumber", required = false, defaultValue = "1") Integer pageNumber,
            @RequestParam(value = "listAccount", required = false, defaultValue = "10") Integer listAccount
    ) throws Exception {

        List<TNewsType> tempData = tNewsTypeSoa.findAll();
        Map<Integer, Object> typeData = new LinkedHashMap<Integer, Object>();

        Map<String, Object> map = new HashMap<>();
        RestApi result = new RestApi();
        List<TNews> newsList = null;
        if (tempData.size() > 0) {
            TNews tnews = new TNews();
            for (TNewsType newType : tempData) {
                tnews.setType(newType.getId());
                int pages = tNewsSoa.findByPage(tnews, pageNumber, listAccount).getPages();
                newType.setPic(pages+"");
                typeData.put(newType.getId(), newType);
            }

            tnews.setType(tempData.get(0).getId());
            newsList = tNewsSoa.findByPage(tnews, pageNumber, listAccount).getRecords();
            map.put("news", newsList);
            map.put("typeNeme", tempData.get(0).getName());
        }

        map.put("title", typeData);
        result.setData(map);
        return result;
    }

    /*
     * 根据新闻类型查找新闻内容列表
     */
    @RequestMapping(value = "/newsList", method = RequestMethod.GET)
    public String findNewsList(
            Model model,
            @RequestParam("type") String type,
            @RequestParam(value = "pageNumber", required = false, defaultValue = "1") Integer pageNumber,
            @RequestParam(value = "listAccount", required = false, defaultValue = "10") Integer listAccount
    ) {
        TNewsType typeName = tNewsTypeSoa.selectById(Long.parseLong(type));
        List<TNews> findIndexData = null;
        try {
            TNews paramTNews = new TNews();
            paramTNews.setType(Integer.parseInt(type));
            Page<TNews> pageData = tNewsSoa.findByPage(paramTNews, pageNumber, listAccount);
            findIndexData = pageData.getRecords();
        } catch (Exception e) {
            model.addAttribute("exception", e);
            return "errors/exception";
        }
        model.addAttribute("typeName", typeName.getName());
        model.addAttribute("newsList", findIndexData);
        return "news/list";
    }

    /*
     * 查看分类新闻的详情内容
     */
    @RequestMapping(value = "/newsDetails", method = RequestMethod.GET)
    public String viewDetailsNews(Model model, @RequestParam(value = "id", required = true) String id) {
        try {
            TNews news = tNewsSoa.selectById(Long.parseLong(id));
            model.addAttribute("news", news);
        } catch (Exception e) {
            model.addAttribute("exception", e);
            return "errors/exception";
        }
        return "news/details";
    }

}