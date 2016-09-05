package com.tclshop.cms.center.wap.controller;

import org.springframework.http.HttpStatus;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseStatus;

/**
 * Created by ${chengrz} on 2016/8/25 0025.
 */
@Controller
public class IndexController {
    @ResponseStatus(HttpStatus.MOVED_PERMANENTLY)
    @RequestMapping(value = { "/index", "/"}, method = RequestMethod.GET)
    public String index() {
    	return "redirect:/companyInfo/index";
    }
}
