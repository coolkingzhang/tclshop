package com.tclshop.cms.center.wap.task;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.scheduling.annotation.Scheduled;
import org.springframework.stereotype.Component;
import com.alibaba.druid.util.StringUtils;
import com.tclshop.utils.HttpUtil;
import com.tclshop.utils.IoUtil;
import com.tclshop.utils.SpringUtil;

@Component
public class WebTask {

	private static final Logger logger = LoggerFactory.getLogger(WebTask.class);

	// 每小时执行一次
	// http://www.yunwei8.com/crontab/
	@Scheduled(cron = "0 0/20 * * * ?")
	public void tclTask() {
		String topStr = "<%@ page language=\"java\" contentType=\"text/html; charset=UTF-8\" pageEncoding=\"UTF-8\" %>";
		String path = SpringUtil.getPath();
		String staticUrl = path.concat("/WEB-INF/template/common/commonStatic.jsp");
		String headerUrl = path.concat("/WEB-INF/template/common/header.jsp");
		String footUrl = path.concat("/WEB-INF/template/common/footer.jsp");
		try {
			logger.info("write header foot");
			// www.tcl.com静态模板
			String contentStatic = HttpUtil.sendGet("http://m.tcl.com/getHeaderAndFooter/getStaticFile", "");
			if (!StringUtils.isEmpty(contentStatic) && !isContainErr(contentStatic)) {
				IoUtil.saveFile(staticUrl, topStr + contentStatic, false);
			}

			// www.tcl.com头部
			String contentHeader = HttpUtil.sendGet("http://m.tcl.com/getHeaderAndFooter/getHeaderHtml", "");
			if (!StringUtils.isEmpty(contentHeader) && !isContainErr(contentHeader)) {
				IoUtil.saveFile(headerUrl, topStr + contentHeader, false);
			}

			// www.tcl.com尾部
			String contentFoot = HttpUtil.sendGet("http://m.tcl.com/getHeaderAndFooter/getFooterHtml", "");
			if (!StringUtils.isEmpty(contentFoot) && !isContainErr(contentFoot)) {
				IoUtil.saveFile(footUrl, topStr + contentFoot, false);
			}

		} catch (Exception e) {
			logger.error(e.getMessage());
		}
	}

    private boolean isContainErr(String str) {
        boolean result = true;
        if (str.contains("404") && str.contains("errorInfoDiv")) {
            return result;
        }
        if (str.contains("500") && str.contains("errorInfoDiv")) {
            return result;
        }
        result = false;
        return result;
    }
}