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
@TableName(value = "t_query")
public class TQuery implements Serializable {

	@TableField(exist = false)
	private static final long serialVersionUID = 1L;

	/**  */
	@TableId(type = IdType.AUTO)
	private String id;

	/**  */
	private String customername;

	/**  */
	private String customertel;

	/**  */
	private String productbig;

	/**  */
	private String protypename;

	/**  */
	private String proccessstatus;

	/**  */
	private String sentnum;

	/**  */
	private String createtime;

	/**  */
	private String status;

	/**  */
	@TableField(value = "work_code")
	private String workCode;

	/**  */
	private String enginename;

	/**  */
	private String enginetel;

	/**  */
	private Date createdate;

	/**  */
	@TableField(value = "case_code")
	private String caseCode;

	public String getId() {
		return this.id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getCustomername() {
		return this.customername;
	}

	public void setCustomername(String customername) {
		this.customername = customername;
	}

	public String getCustomertel() {
		return this.customertel;
	}

	public void setCustomertel(String customertel) {
		this.customertel = customertel;
	}

	public String getProductbig() {
		return this.productbig;
	}

	public void setProductbig(String productbig) {
		this.productbig = productbig;
	}

	public String getProtypename() {
		return this.protypename;
	}

	public void setProtypename(String protypename) {
		this.protypename = protypename;
	}

	public String getProccessstatus() {
		return this.proccessstatus;
	}

	public void setProccessstatus(String proccessstatus) {
		this.proccessstatus = proccessstatus;
	}

	public String getSentnum() {
		return this.sentnum;
	}

	public void setSentnum(String sentnum) {
		this.sentnum = sentnum;
	}

	public String getCreatetime() {
		return this.createtime;
	}

	public void setCreatetime(String createtime) {
		this.createtime = createtime;
	}

	public String getStatus() {
		return this.status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public String getWorkCode() {
		return this.workCode;
	}

	public void setWorkCode(String workCode) {
		this.workCode = workCode;
	}

	public String getEnginename() {
		return this.enginename;
	}

	public void setEnginename(String enginename) {
		this.enginename = enginename;
	}

	public String getEnginetel() {
		return this.enginetel;
	}

	public void setEnginetel(String enginetel) {
		this.enginetel = enginetel;
	}

	public Date getCreatedate() {
		return this.createdate;
	}

	public void setCreatedate(Date createdate) {
		this.createdate = createdate;
	}

	public String getCaseCode() {
		return this.caseCode;
	}

	public void setCaseCode(String caseCode) {
		this.caseCode = caseCode;
	}

}
