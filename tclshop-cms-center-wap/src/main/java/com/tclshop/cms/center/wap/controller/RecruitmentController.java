package com.tclshop.cms.center.wap.controller;

import java.util.List;

import com.tclshop.cms.center.enums.TRecruitmentEnum;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.baomidou.mybatisplus.plugins.Page;
import com.tclshop.cms.center.dubbo.TAdvertisingSoa;
import com.tclshop.cms.center.dubbo.TRecruitmentEnterpriseSoa;
import com.tclshop.cms.center.dubbo.TRecruitmentSoa;
import com.tclshop.cms.center.entity.TRecruitment;
import com.tclshop.cms.center.entity.TRecruitmentEnterprise;
import com.tclshop.cms.center.enums.TAdvertisingEnum;
import com.tclshop.framework.core.web.RestApi;

/*
 * 前台人才招聘全菜单模块Controller
 */
@Controller
@RequestMapping("/recruitment")
public class RecruitmentController {

	private static final Logger log = LoggerFactory.getLogger(RecruitmentController.class);
	@Autowired
	private TRecruitmentSoa tRecruitmentSoa;
	@Autowired
	private TRecruitmentEnterpriseSoa tRecruitmentEnterpriseSoa;
	@Autowired
	private TAdvertisingSoa tAdvertisingSoa;
	private CommonInterface commonInterface = new CommonInterface();

	/*
	 * 人才招聘首页
	 */
	@RequestMapping(value = "/index")
	public String index(Model model, @RequestParam(value = "pageNumber", required = false, defaultValue = "1") Integer pageNumber, @RequestParam(value = "listAccount", required = false, defaultValue = "10") Integer listAccount) {
		try {
			// 获取所有社会招聘分类
			List<TRecruitmentEnterprise> reList = tRecruitmentEnterpriseSoa.findAll();
			// 人才招聘焦点图
			model.addAttribute("pictureFont", commonInterface.findPictureFont(tAdvertisingSoa, TAdvertisingEnum.job.getValue(), 1, 1));
			model.addAttribute("reList", reList);
			model.addAttribute("empDevelopment", findGlobalList(TRecruitmentEnum.developInfo.getValue(), 1, 1));// type为3是员工发展信息
			model.addAttribute("empLife", findGlobalList(TRecruitmentEnum.employeeLife.getValue(), 1, 1));// type为4是员工生活信息
			model.addAttribute("campusRecruitment", findGlobalList(TRecruitmentEnum.campusRecruitment.getValue(), 1, 1));// type为5是校园招聘信息
			model.addAttribute("socialRecruitment", findGlobalList(TRecruitmentEnum.socialRecruitment.getValue(), 1, 1));// type为6是社会招聘信息
		} catch (Exception e) {
			model.addAttribute("exception", e);
			return "errors/exception";
		}
		return "recruitment/index";
	}

	/*
	 * 首页社会招聘下拉框
	 */
	public List<TRecruitmentEnterprise> findSocialRecruitment() {
		List<TRecruitmentEnterprise> pageParam = null;
		pageParam = tRecruitmentEnterpriseSoa.findAll();
		return pageParam;
	}

	/*
	 * 通用列表接口
	 */
	public Page<TRecruitment> findGlobalList(@RequestParam(value = "type", required = true) Integer type, @RequestParam(value = "pageNumber", required = false, defaultValue = "1") Integer pageNumber, @RequestParam(value = "listAccount", required = false, defaultValue = "10") Integer listAccount) throws Exception {
		TRecruitment tRecruitment = new TRecruitment();
		tRecruitment.setType(type);
		Page<TRecruitment> pageParam = null;
		pageParam = tRecruitmentSoa.findByPage(tRecruitment, pageNumber, listAccount);
		return pageParam;
	}

	/*
	 * 通用详情接口
	 */
	@RequestMapping(value = "/recruitmentDetails", method = RequestMethod.GET)
	public String findGlobalDetails(Model model, @RequestParam(value = "id", required = true) Long id) {
		try {
			TRecruitment result = null;
			result = tRecruitmentSoa.selectById(id);
			if (result.getType() == TRecruitmentEnum.socialRecruitment.getValue()) {
				model.addAttribute("socialRecruitmentList", findSocialRecruitment());
			}
			model.addAttribute("result", result);
		} catch (Exception e) {
			model.addAttribute("exception", e);
			return "errors/exception";
		}
		return "recruitment/details";
	}

	/*
	 * 首页-热招岗位分页Ajax
	 */
	// @CrossOrigin
	@ResponseBody
	@RequestMapping(value = "/findSocialRecruitment", produces = "application/json", method = RequestMethod.GET)
	public RestApi findSocialRecruitment(@RequestParam(value = "type", required = true) Integer type, @RequestParam(value = "pageNumber", required = false, defaultValue = "1") Integer pageNumber, @RequestParam(value = "listAccount", required = false, defaultValue = "10") Integer listAccount) {
		RestApi result = new RestApi();
		TRecruitment tRecruitment = new TRecruitment();
		tRecruitment.setType(type);// type为6是社会招聘信息
		Page<TRecruitment> pageParam = null;
		try {
			pageParam = tRecruitmentSoa.findContentByPage(tRecruitment, pageNumber, listAccount);
			result.setCode(200);
			result.setData(pageParam);
			result.setMessage("success");
		} catch (Exception e) {
			result.setCode(500);
		}
		return result;
	}

}