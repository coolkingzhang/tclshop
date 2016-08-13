package com.tclshop.cms.center.entity;

import java.io.Serializable;

import com.baomidou.mybatisplus.annotations.IdType;
import com.baomidou.mybatisplus.annotations.TableField;
import com.baomidou.mybatisplus.annotations.TableId;
import com.baomidou.mybatisplus.annotations.TableName;

/**
 *
 * 
 *
 */
@TableName(value = "t_news_english")
public class TNewsEnglish implements Serializable {

	@TableField(exist = false)
	private static final long serialVersionUID = 1L;

	/**  */
	@TableId(type = IdType.AUTO)
	private Integer id;

	/**  */
	private String title;

	/**  */
	private String shorttitle;

	/**  */
	private String source;

	/**  */
	private String keywords;

	/**  */
	private Integer isurl;

	/**  */
	private String url;

	/**  */
	private String description;

	/**  */
	private String content;

	/**  */
	@TableField(value = "recommend_news")
	private String recommendNews;

	/**  */
	private String pic;

	/**  */
	private Integer type;

	/**  */
	private Integer comment;

	/**  */
	private Integer status;

	/**  */
	private Integer recommended;

	/**  */
	@TableField(value = "r_pic")
	private String rPic;

	/**  */
	@TableField(value = "r_pic_title")
	private String rPicTitle;

	/**  */
	@TableField(value = "r_content")
	private String rContent;

	/**  */
	@TableField(value = "issue_time")
	private Integer issueTime;

	/**  */
	private Integer createtime;

	public Integer getId() {
		return this.id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getTitle() {
		return this.title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getShorttitle() {
		return this.shorttitle;
	}

	public void setShorttitle(String shorttitle) {
		this.shorttitle = shorttitle;
	}

	public String getSource() {
		return this.source;
	}

	public void setSource(String source) {
		this.source = source;
	}

	public String getKeywords() {
		return this.keywords;
	}

	public void setKeywords(String keywords) {
		this.keywords = keywords;
	}

	public Integer getIsurl() {
		return this.isurl;
	}

	public void setIsurl(Integer isurl) {
		this.isurl = isurl;
	}

	public String getUrl() {
		return this.url;
	}

	public void setUrl(String url) {
		this.url = url;
	}

	public String getDescription() {
		return this.description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public String getContent() {
		return this.content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public String getRecommendNews() {
		return this.recommendNews;
	}

	public void setRecommendNews(String recommendNews) {
		this.recommendNews = recommendNews;
	}

	public String getPic() {
		return this.pic;
	}

	public void setPic(String pic) {
		this.pic = pic;
	}

	public Integer getType() {
		return this.type;
	}

	public void setType(Integer type) {
		this.type = type;
	}

	public Integer getComment() {
		return this.comment;
	}

	public void setComment(Integer comment) {
		this.comment = comment;
	}

	public Integer getStatus() {
		return this.status;
	}

	public void setStatus(Integer status) {
		this.status = status;
	}

	public Integer getRecommended() {
		return this.recommended;
	}

	public void setRecommended(Integer recommended) {
		this.recommended = recommended;
	}

	public String getRPic() {
		return this.rPic;
	}

	public void setRPic(String rPic) {
		this.rPic = rPic;
	}

	public String getRPicTitle() {
		return this.rPicTitle;
	}

	public void setRPicTitle(String rPicTitle) {
		this.rPicTitle = rPicTitle;
	}

	public String getRContent() {
		return this.rContent;
	}

	public void setRContent(String rContent) {
		this.rContent = rContent;
	}

	public Integer getIssueTime() {
		return this.issueTime;
	}

	public void setIssueTime(Integer issueTime) {
		this.issueTime = issueTime;
	}

	public Integer getCreatetime() {
		return this.createtime;
	}

	public void setCreatetime(Integer createtime) {
		this.createtime = createtime;
	}

}
