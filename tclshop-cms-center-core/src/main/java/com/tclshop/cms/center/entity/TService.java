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
@TableName(value = "t_service")
public class TService implements Serializable {

	@TableField(exist = false)
	private static final long serialVersionUID = 1L;

	/**  */
	@TableId(type = IdType.AUTO)
	private Integer id;

	/** 类别ID */
	private Integer cid;

	/** 子类别ID */
	private Integer csid;

	/** 系列ID */
	private Integer cmid;

	/** 1.相关下载 2.常见问题 3.服务政策 4.服务门店  */
	private Integer type;

	/** 1.相关下载-说明书 2.相关下载-应用软件 3.服务政策-服务政策 4.服务政策-收费标准 */
	@TableField(value = "s_type")
	private Integer sType;

	/**  */
	private String title;

	/** 常见问题-答案 或 服务政策-内容 */
	private String content;

	/** 常见问题-提问 */
	private String question;

	/** 服务门店信息 */
	private String description;

	/** 下载地址 */
	private String url;

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

	public Integer getCid() {
		return this.cid;
	}

	public void setCid(Integer cid) {
		this.cid = cid;
	}

	public Integer getCsid() {
		return this.csid;
	}

	public void setCsid(Integer csid) {
		this.csid = csid;
	}

	public Integer getCmid() {
		return this.cmid;
	}

	public void setCmid(Integer cmid) {
		this.cmid = cmid;
	}

	public Integer getType() {
		return this.type;
	}

	public void setType(Integer type) {
		this.type = type;
	}

	public Integer getSType() {
		return this.sType;
	}

	public void setSType(Integer sType) {
		this.sType = sType;
	}

	public String getTitle() {
		return this.title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getContent() {
		return this.content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public String getQuestion() {
		return this.question;
	}

	public void setQuestion(String question) {
		this.question = question;
	}

	public String getDescription() {
		return this.description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public String getUrl() {
		return this.url;
	}

	public void setUrl(String url) {
		this.url = url;
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
