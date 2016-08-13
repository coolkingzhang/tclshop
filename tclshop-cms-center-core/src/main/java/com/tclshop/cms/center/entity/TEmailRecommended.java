package com.tclshop.cms.center.entity;

import java.io.Serializable;
import java.util.Date;

import com.baomidou.mybatisplus.annotations.IdType;
import com.baomidou.mybatisplus.annotations.TableField;
import com.baomidou.mybatisplus.annotations.TableId;
import com.baomidou.mybatisplus.annotations.TableName;

/**
 *
 * 
 *
 */
@TableName(value = "t_email_recommended")
public class TEmailRecommended implements Serializable {

	@TableField(exist = false)
	private static final long serialVersionUID = 1L;

	/**  */
	@TableId(type = IdType.AUTO)
	private Integer id;

	/**  */
	private String title;

	/**  */
	@TableField(value = "news1_title")
	private String news1Title;

	/**  */
	@TableField(value = "news1_img")
	private String news1Img;

	/**  */
	@TableField(value = "news1_url")
	private String news1Url;

	/**  */
	@TableField(value = "news1_description")
	private String news1Description;

	/**  */
	@TableField(value = "news1_issue_time")
	private String news1IssueTime;

	/**  */
	@TableField(value = "news2_title")
	private String news2Title;

	/**  */
	@TableField(value = "news2_img")
	private String news2Img;

	/**  */
	@TableField(value = "news2_url")
	private String news2Url;

	/**  */
	@TableField(value = "news2_description")
	private String news2Description;

	/**  */
	@TableField(value = "news2_issue_time")
	private String news2IssueTime;

	/**  */
	@TableField(value = "news3_title")
	private String news3Title;

	/**  */
	@TableField(value = "news3_issue_time")
	private Date news3IssueTime;

	/**  */
	@TableField(value = "news3_description")
	private String news3Description;

	/**  */
	@TableField(value = "news3_url")
	private String news3Url;

	/**  */
	@TableField(value = "news3_comment1")
	private String news3Comment1;

	/**  */
	@TableField(value = "news3_comment2")
	private String news3Comment2;

	/**  */
	@TableField(value = "news3_comment3")
	private String news3Comment3;

	/**  */
	@TableField(value = "news3_comment4")
	private String news3Comment4;

	/**  */
	@TableField(value = "news3_comment5")
	private String news3Comment5;

	/**  */
	@TableField(value = "news3_comment6")
	private String news3Comment6;

	/**  */
	@TableField(value = "news3_author1")
	private String news3Author1;

	/**  */
	@TableField(value = "news3_author2")
	private String news3Author2;

	/**  */
	@TableField(value = "news3_author3")
	private String news3Author3;

	/**  */
	@TableField(value = "news3_author4")
	private String news3Author4;

	/**  */
	@TableField(value = "news3_author5")
	private String news3Author5;

	/**  */
	@TableField(value = "news3_author6")
	private String news3Author6;

	/**  */
	@TableField(value = "news3_img")
	private String news3Img;

	/**  */
	private Integer state;

	/**  */
	private Date createtime;

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

	public String getNews1Title() {
		return this.news1Title;
	}

	public void setNews1Title(String news1Title) {
		this.news1Title = news1Title;
	}

	public String getNews1Img() {
		return this.news1Img;
	}

	public void setNews1Img(String news1Img) {
		this.news1Img = news1Img;
	}

	public String getNews1Url() {
		return this.news1Url;
	}

	public void setNews1Url(String news1Url) {
		this.news1Url = news1Url;
	}

	public String getNews1Description() {
		return this.news1Description;
	}

	public void setNews1Description(String news1Description) {
		this.news1Description = news1Description;
	}

	public String getNews1IssueTime() {
		return this.news1IssueTime;
	}

	public void setNews1IssueTime(String news1IssueTime) {
		this.news1IssueTime = news1IssueTime;
	}

	public String getNews2Title() {
		return this.news2Title;
	}

	public void setNews2Title(String news2Title) {
		this.news2Title = news2Title;
	}

	public String getNews2Img() {
		return this.news2Img;
	}

	public void setNews2Img(String news2Img) {
		this.news2Img = news2Img;
	}

	public String getNews2Url() {
		return this.news2Url;
	}

	public void setNews2Url(String news2Url) {
		this.news2Url = news2Url;
	}

	public String getNews2Description() {
		return this.news2Description;
	}

	public void setNews2Description(String news2Description) {
		this.news2Description = news2Description;
	}

	public String getNews2IssueTime() {
		return this.news2IssueTime;
	}

	public void setNews2IssueTime(String news2IssueTime) {
		this.news2IssueTime = news2IssueTime;
	}

	public String getNews3Title() {
		return this.news3Title;
	}

	public void setNews3Title(String news3Title) {
		this.news3Title = news3Title;
	}

	public Date getNews3IssueTime() {
		return this.news3IssueTime;
	}

	public void setNews3IssueTime(Date news3IssueTime) {
		this.news3IssueTime = news3IssueTime;
	}

	public String getNews3Description() {
		return this.news3Description;
	}

	public void setNews3Description(String news3Description) {
		this.news3Description = news3Description;
	}

	public String getNews3Url() {
		return this.news3Url;
	}

	public void setNews3Url(String news3Url) {
		this.news3Url = news3Url;
	}

	public String getNews3Comment1() {
		return this.news3Comment1;
	}

	public void setNews3Comment1(String news3Comment1) {
		this.news3Comment1 = news3Comment1;
	}

	public String getNews3Comment2() {
		return this.news3Comment2;
	}

	public void setNews3Comment2(String news3Comment2) {
		this.news3Comment2 = news3Comment2;
	}

	public String getNews3Comment3() {
		return this.news3Comment3;
	}

	public void setNews3Comment3(String news3Comment3) {
		this.news3Comment3 = news3Comment3;
	}

	public String getNews3Comment4() {
		return this.news3Comment4;
	}

	public void setNews3Comment4(String news3Comment4) {
		this.news3Comment4 = news3Comment4;
	}

	public String getNews3Comment5() {
		return this.news3Comment5;
	}

	public void setNews3Comment5(String news3Comment5) {
		this.news3Comment5 = news3Comment5;
	}

	public String getNews3Comment6() {
		return this.news3Comment6;
	}

	public void setNews3Comment6(String news3Comment6) {
		this.news3Comment6 = news3Comment6;
	}

	public String getNews3Author1() {
		return this.news3Author1;
	}

	public void setNews3Author1(String news3Author1) {
		this.news3Author1 = news3Author1;
	}

	public String getNews3Author2() {
		return this.news3Author2;
	}

	public void setNews3Author2(String news3Author2) {
		this.news3Author2 = news3Author2;
	}

	public String getNews3Author3() {
		return this.news3Author3;
	}

	public void setNews3Author3(String news3Author3) {
		this.news3Author3 = news3Author3;
	}

	public String getNews3Author4() {
		return this.news3Author4;
	}

	public void setNews3Author4(String news3Author4) {
		this.news3Author4 = news3Author4;
	}

	public String getNews3Author5() {
		return this.news3Author5;
	}

	public void setNews3Author5(String news3Author5) {
		this.news3Author5 = news3Author5;
	}

	public String getNews3Author6() {
		return this.news3Author6;
	}

	public void setNews3Author6(String news3Author6) {
		this.news3Author6 = news3Author6;
	}

	public String getNews3Img() {
		return this.news3Img;
	}

	public void setNews3Img(String news3Img) {
		this.news3Img = news3Img;
	}

	public Integer getState() {
		return this.state;
	}

	public void setState(Integer state) {
		this.state = state;
	}

	public Date getCreatetime() {
		return this.createtime;
	}

	public void setCreatetime(Date createtime) {
		this.createtime = createtime;
	}

}
