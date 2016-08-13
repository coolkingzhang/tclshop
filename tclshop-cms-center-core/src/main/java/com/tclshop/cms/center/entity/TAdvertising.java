package com.tclshop.cms.center.entity;

import java.io.Serializable;
import java.util.Date;

import com.baomidou.mybatisplus.annotations.IdType;
import com.baomidou.mybatisplus.annotations.TableField;
import com.baomidou.mybatisplus.annotations.TableId;
import com.baomidou.mybatisplus.annotations.TableName;

/**
 *
 * 广告焦点图片
 *
 */
@TableName("t_advertising")
public class TAdvertising implements Serializable {

	@TableField(exist = false)
	private static final long serialVersionUID = 1L;

	/** 广告图片表 id */
	@TableId(type = IdType.AUTO)
	private Integer id;

	/** 广告图片title */
	private String title;

	/** 短标题 */
	private String shorttile;

	/** 简介 */
	private String introduction;

	/** 1 企业信息  2 关于TCL 3 发展历程 4 技术研发 5 新闻焦点 6 投资者关系  7社会责任 8 人才招聘  */
	private Integer type;

	/** 类别名称  */
	@TableField(value = "type_name")
	private String typeName;

	/** web图片地址 */
	@TableField(value = "web_pic")
	private String webPic;

	/**  */
	@TableField(value = "web_url")
	private String webUrl;

	/** 按钮名称 */
	@TableField(value = "button_name")
	private String buttonName;

	/** 按钮的url地址 */
	@TableField(value = "button_url")
	private String buttonUrl;

	/** 排序号 小的在前 */
	private Integer sort;

	/** 详细内容 */
	private String content;

	/** 创建时间 */
	@TableField(value = "create_time")
	private Date createTime;

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

	public String getShorttile() {
		return this.shorttile;
	}

	public void setShorttile(String shorttile) {
		this.shorttile = shorttile;
	}

	public String getIntroduction() {
		return this.introduction;
	}

	public void setIntroduction(String introduction) {
		this.introduction = introduction;
	}

	public Integer getType() {
		return this.type;
	}

	public void setType(Integer type) {
		this.type = type;
	}

	public String getTypeName() {
		return this.typeName;
	}

	public void setTypeName(String typeName) {
		this.typeName = typeName;
	}

	public String getWebPic() {
		return this.webPic;
	}

	public void setWebPic(String webPic) {
		this.webPic = webPic;
	}

	public String getWebUrl() {
		return this.webUrl;
	}

	public void setWebUrl(String webUrl) {
		this.webUrl = webUrl;
	}

	public String getButtonName() {
		return this.buttonName;
	}

	public void setButtonName(String buttonName) {
		this.buttonName = buttonName;
	}

	public String getButtonUrl() {
		return this.buttonUrl;
	}

	public void setButtonUrl(String buttonUrl) {
		this.buttonUrl = buttonUrl;
	}

	public Integer getSort() {
		return this.sort;
	}

	public void setSort(Integer sort) {
		this.sort = sort;
	}

	public String getContent() {
		return this.content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public Date getCreateTime() {
		return this.createTime;
	}

	public void setCreateTime(Date createTime) {
		this.createTime = createTime;
	}

}
