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
@TableName(value = "t_product_en")
public class TProductEn implements Serializable {

	@TableField(exist = false)
	private static final long serialVersionUID = 1L;

	/**  */
	@TableId(type = IdType.AUTO)
	private Integer id;

	/**  */
	private String name;

	/**  */
	private String description;

	/**  */
	private String pic;

	/**  */
	@TableField(value = "pic_m")
	private String picM;

	/**  */
	@TableField(value = "r_pic")
	private String rPic;

	/**  */
	private String content1;

	/**  */
	private String content2;

	/**  */
	private String content3;

	/**  */
	private String url;

	/**  */
	@TableField(value = "url_m")
	private String urlM;

	/**  */
	private Integer type;

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

	public String getPic() {
		return this.pic;
	}

	public void setPic(String pic) {
		this.pic = pic;
	}

	public String getPicM() {
		return this.picM;
	}

	public void setPicM(String picM) {
		this.picM = picM;
	}

	public String getRPic() {
		return this.rPic;
	}

	public void setRPic(String rPic) {
		this.rPic = rPic;
	}

	public String getContent1() {
		return this.content1;
	}

	public void setContent1(String content1) {
		this.content1 = content1;
	}

	public String getContent2() {
		return this.content2;
	}

	public void setContent2(String content2) {
		this.content2 = content2;
	}

	public String getContent3() {
		return this.content3;
	}

	public void setContent3(String content3) {
		this.content3 = content3;
	}

	public String getUrl() {
		return this.url;
	}

	public void setUrl(String url) {
		this.url = url;
	}

	public String getUrlM() {
		return this.urlM;
	}

	public void setUrlM(String urlM) {
		this.urlM = urlM;
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

	public Integer getCreatetime() {
		return this.createtime;
	}

	public void setCreatetime(Integer createtime) {
		this.createtime = createtime;
	}

}
