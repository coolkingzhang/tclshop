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
@TableName("t_news")
public class TNews implements Serializable {

	@TableField(exist = false)
	private static final long serialVersionUID = 1L;

	/**  */
	@TableId(type = IdType.AUTO)
	private Integer id;

	/**  */
	private String title;

	/**  */
	private String shorttitle;

	/** 文章来源 */
	private String source;

	/**  */
	private String keywords;

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
	private Integer subjecttype;

	/**  */
	private Integer subjectid;

	/** 1为推荐首页显示 */
	private Integer status;

	/** 1为置顶 */
	private Integer recommended;

	/**  */
	@TableField(value = "r_pic")
	private String rpic;

	/**  */
	@TableField(value = "r_content")
	private String rcontent;

	/**  */
	private Integer sort;

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

	public Integer getSubjecttype() {
		return this.subjecttype;
	}

	public void setSubjecttype(Integer subjecttype) {
		this.subjecttype = subjecttype;
	}

	public Integer getSubjectid() {
		return this.subjectid;
	}

	public void setSubjectid(Integer subjectid) {
		this.subjectid = subjectid;
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

	public Integer getSort() {
		return this.sort;
	}

	public void setSort(Integer sort) {
		this.sort = sort;
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

	public String getRpic() {
		return rpic;
	}

	public void setRpic(String rpic) {
		this.rpic = rpic;
	}

	public String getRcontent() {
		return rcontent;
	}

	public void setRcontent(String rcontent) {
		this.rcontent = rcontent;
	}

}
