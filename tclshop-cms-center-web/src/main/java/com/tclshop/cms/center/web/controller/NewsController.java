package com.tclshop.cms.center.web.controller;

import com.baomidou.mybatisplus.plugins.Page;
import com.tclshop.cms.center.dubbo.TAdvertisingSoa;
import com.tclshop.cms.center.dubbo.TNewsSoa;
import com.tclshop.cms.center.dubbo.TNewsTypeSoa;
import com.tclshop.cms.center.entity.TNews;
import com.tclshop.cms.center.entity.TNewsType;
import com.tclshop.cms.center.enums.TAdvertisingEnum;
import com.tclshop.cms.center.enums.TNewsEnum;
import com.tclshop.framework.core.web.RestApi;

import org.apache.commons.lang.StringUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.List;

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

    /*
     * 新闻首页
     */
    @RequestMapping(value = "/index", method = RequestMethod.GET)
    public String index(Model model) {
    	 TNews tNews = new TNews();
        try {
            model.addAttribute("title", findTitle());//标题
            model.addAttribute("pictureFont", commonInterface.findPictureFont(tAdvertisingSoa, TAdvertisingEnum.news.getValue(), 1, 5));//头图
            model.addAttribute("viewPoint", findIndexList(TNewsEnum.otherOpinion.getValue(), null, 1, 4));//第三方观点
            model.addAttribute("videl", findIndexList(TNewsEnum.videoNews.getValue(), null, 1, 3));//视频新闻
            tNews.setStatus(1);//置顶
            tNews.setType(TNewsEnum.newMedia.getValue());
            model.addAttribute("media", tNewsSoa.findIndexData(tNews));//新媒体
        } catch (Exception e) {
            return "errors/500";
        }
        return "news/index";
    }


    /*
     * 首页-横幅标题
     */
    private RestApi findTitle() throws Exception {
        RestApi result = new RestApi();
        List<TNewsType> newsData = tNewsTypeSoa.findAll();
        result.setData(newsData);
        return result;
    }

    /*
     * 首页
     */
    public RestApi findIndexList(
            @RequestParam(value = "type", required = true) Integer type,
            @RequestParam(value = "status", required = false) Integer status,
            @RequestParam(value = "pageNumber", required = false, defaultValue = "1") Integer pageNumber,
            @RequestParam(value = "listAccount", required = false, defaultValue = "10") Integer listAccount
    ) throws Exception {
        RestApi result = new RestApi();
        List<TNews> pageParam = null;
        TNews tNews = new TNews();
        tNews.setType(type);
        if (status != null) {
            tNews.setStatus(status);
        }
        pageParam = tNewsSoa.findByPage(tNews, pageNumber, listAccount).getRecords();
        result.setData(pageParam);
        result.setCode(200);
        result.setMessage("success");
        return result;
    }

    /*
     * 分页列表
     */
    @ResponseBody
    @RequestMapping(value = "/findJsonData", produces = "application/json", method = RequestMethod.POST)
    public RestApi findJsonData(
            @RequestParam(value = "type", required = true) Integer type,
            @RequestParam(value = "status", required = false) Integer status,
            @RequestParam(value = "title", required = false ) String title,
            @RequestParam(value = "beaginTime", required = false ) String beaginTime,
            @RequestParam(value = "endTime", required = false) String endTime,
            @RequestParam(value = "pageNumber", required = false) Integer pageNumber,
            @RequestParam(value = "listAccount", required = false) Integer listAccount
    ) {
        RestApi result = null;
        Page<TNews> pageParam = null;
        TNews tNews = new TNews();
        try {
            tNews.setType(type);
            if (status != null) {
                tNews.setStatus(status);
            }
            
            if(!StringUtils.isEmpty(title) || !StringUtils.isEmpty(beaginTime) || !StringUtils.isEmpty(endTime)){//如果是条件查询进入的
            	result = findConditions(type,title,beaginTime,endTime,pageNumber,listAccount);
            }else{
            	result = new RestApi();
            	pageParam = tNewsSoa.findByPage(tNews, pageNumber, listAccount);
                result.setCode(200);
                result.setMessage("success");
                result.setData(pageParam);
            }
        } catch (Exception e) {
            result.setCode(500);
        }
        return result;
    }

    /*
     * 查询条件
	 */
    public RestApi findConditions(
            @RequestParam(value = "type", required = true) Integer type,
            @RequestParam(value = "title", required = false) String title,
            @RequestParam(value = "beaginTime", required = false) String beaginTime,
            @RequestParam(value = "endTime", required = false) String endTime,
            @RequestParam(value = "pageNumber", required = false, defaultValue = "1") Integer pageNumber,
            @RequestParam(value = "listAccount", required = false, defaultValue = "10") Integer listAccount
    ) {
        RestApi result = new RestApi(); 
        Page<TNews> pageParam = null;
        TNews tNews = new TNews();
        try {
        	String  beagin = null;
        	String end = null;
        	if(!StringUtils.isEmpty(beaginTime)) {//如果开始时间参数不为null
        		SimpleDateFormat format =  new SimpleDateFormat("yyyy-MM-dd"); 
        		Date date = format.parse(beaginTime);
        		beagin = ((Long)(date.getTime() / 1000)).toString();
        	 }  
        	if(!StringUtils.isEmpty(endTime)) {//如果结束时间参数不为null
        		SimpleDateFormat format =  new SimpleDateFormat("yyyy-MM-dd"); 
        		Date date = format.parse(endTime);
        		end = ((Long)(date.getTime() / 1000)).toString(); 
         	 }
        	if(!StringUtils.isEmpty(title)){
        		tNews.setTitle(title.trim());
        	}
            tNews.setType(type);
			pageParam  = tNewsSoa.searchNews(tNews, pageNumber, listAccount, beagin, end);
            result.setCode(200);
            result.setMessage("success");
            result.setData(pageParam);
        } catch (Exception e) {
            result.setCode(500);
        }
        return result;
    }

    /*


    /*
     * 全局详情
     */
    @RequestMapping(value = "/newsDetails", method = RequestMethod.GET)
    public String viewDetailsNews(Model model, @RequestParam(value = "id", required = true) Long id,
    		@RequestParam(value = "type", required = true) Long type) {
        TNews tNews = null;
        try {
            tNews = tNewsSoa.selectById(id);
            model.addAttribute("result", tNews);
            model.addAttribute("returnPath", tNewsTypeSoa.selectById(type));
        } catch (Exception e) {
            return "errors/500";
        }
        return "news/details";
    }

	
	/*
     * 全局列表
	 */

    @RequestMapping(value = "/newsList", method = RequestMethod.GET)
    public String findGlobalList(
    	Model model,
        @RequestParam(value = "type", required = true) Integer type,
        @RequestParam(value = "pageNumber", required = false, defaultValue = "1") Integer pageNumber,
        @RequestParam(value = "listAccount", required = false, defaultValue = "10") Integer listAccount
        ){
        Page<TNews> pageParam = null;
	    try {
	        TNews tNews = new TNews();
	        tNews.setType(type);
	        pageParam = tNewsSoa.findByPage(tNews, pageNumber, listAccount);
	        model.addAttribute("result", pageParam);
	        model.addAttribute("type", type);
	        model.addAttribute("title", tNewsTypeSoa.selectById((long)type));
	    } catch (Exception e) {
	        return "errors/500";
	    }
	        return "news/list";
	 }

}
