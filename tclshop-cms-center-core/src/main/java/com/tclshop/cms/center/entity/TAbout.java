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
@TableName(value = "t_about")
public class TAbout implements Serializable {

	@TableField(exist = false)
	private static final long serialVersionUID = 1L;

	/**  */
	@TableId(type = IdType.AUTO)
	private Integer id;

	/**  */
	private String title;

	/**  */
	private String name;

	/**  */
	private String description;

	/**  */
	private String content;

	/**  */
	private String pic;

	/**  */
	@TableField(value = "r_pic")
	private String rPic;

	/**  */
	private String url;

	/**  */
	private Integer years;

	/** 关于ＴＣＬ分类 */
	private Integer type;

	/** 排序 */
	private Integer sort;

	/**  */
	@TableField(value = "issue_time")
	private Integer issueTime;

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

	public String getName() {
		return this.name;
	}

	public void setName(String name) {
		this.name = name;
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

	public String getPic() {
		return this.pic;
	}

	public void setPic(String pic) {
		this.pic = pic;
	}

	public String getUrl() {
		return this.url;
	}

	public void setUrl(String url) {
		this.url = url;
	}

	public Integer getYears() {
		return this.years;
	}

	public void setYears(Integer years) {
		this.years = years;
	}

	public Integer getType() {
		return this.type;
	}

	public void setType(Integer type) {
		this.type = type;
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

	public Date getCreatetime() {
		return this.createtime;
	}

	public void setCreatetime(Date createtime) {
		this.createtime = createtime;
	}

	public String getrPic() {
		return rPic;
	}

	public void setrPic(String rPic) {
		this.rPic = rPic;
	}

}
