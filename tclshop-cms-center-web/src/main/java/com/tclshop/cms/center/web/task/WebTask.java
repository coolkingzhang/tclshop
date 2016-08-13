package com.tclshop.cms.center.web.task;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.scheduling.annotation.Scheduled;
import org.springframework.stereotype.Component;
import com.tclshop.utils.HttpUtil;
import com.tclshop.utils.IoUtil;
import com.tclshop.utils.SpringUtil;

@Component
public class WebTask {

	private static final Logger logger = LoggerFactory.getLogger(WebTask.class);

	// 每小时执行一次
	// http://www.yunwei8.com/crontab/
	// @Scheduled(cron = "*/30 * * * * ?")
	public void tclTask() {
		String topStr = "<%@ page language=\"java\" contentType=\"text/html; charset=UTF-8\" pageEncoding=\"UTF-8\" %>";
		String path = SpringUtil.getPath();
		String staticUrl = path.concat("/WEB-INF/template/common/commonStatic.jsp");
		String headerUrl = path.concat("/WEB-INF/template/common/header.jsp");
		String footUrl = path.concat("/WEB-INF/template/common/footer.jsp");
		try {
			logger.info("write header foot");
			// www.tcl.com静态模板
			String contentStatic = HttpUtil.sendGet("http://www.tcl.com:8081/getHeaderAndFooter/getStaticFile", "");
			IoUtil.saveFile(staticUrl, topStr + contentStatic, false);
			
			// www.tcl.com头部
			String contentHeader = HttpUtil.sendGet("http://www.tcl.com:8081/getHeaderAndFooter/getHeaderHtml", "");
			IoUtil.saveFile(headerUrl, topStr + contentHeader, false);

			// www.tcl.com尾部
			String contentFoot = HttpUtil.sendGet("http://www.tcl.com:8081/getHeaderAndFooter/getFooterHtml", "");
			IoUtil.saveFile(footUrl, topStr + contentFoot, false);

		} catch (Exception e) {
			logger.error(e.getMessage());
		}
	}
}