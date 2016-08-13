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
@TableName(value = "t_multimedia")
public class TMultimedia implements Serializable {

	@TableField(exist = false)
	private static final long serialVersionUID = 1L;

	/**  */
	@TableId(type = IdType.AUTO)
	private Integer id;

	/** 客户姓名 */
	private String custname;

	/** 联系电话 */
	private String phonenumber;

	/** 省 */
	private String province;

	/** 市 */
	private String city;

	/** 区 */
	private String district;

	/** 详细地址 */
	private String detailaddress;

	/** 产品品牌 */
	private String productbrand;

	/** 产品类型 */
	private String productcategory;

	/** 产品型号 */
	private String modelnumber;

	/** 需求类别 */
	private String demandcategory;

	/** 需求描述 */
	private String demanddesc;

	/** 是否需要上门 */
	private String isdispatch;

	/** 预约时间 */
	private String expecttime;

	/** 备注信息 */
	private String inforemark;

	/**  */
	private Integer state;

	/** 提交时间 */
	private Date submittime;

	public Integer getId() {
		return this.id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getCustname() {
		return this.custname;
	}

	public void setCustname(String custname) {
		this.custname = custname;
	}

	public String getPhonenumber() {
		return this.phonenumber;
	}

	public void setPhonenumber(String phonenumber) {
		this.phonenumber = phonenumber;
	}

	public String getProvince() {
		return this.province;
	}

	public void setProvince(String province) {
		this.province = province;
	}

	public String getCity() {
		return this.city;
	}

	public void setCity(String city) {
		this.city = city;
	}

	public String getDistrict() {
		return this.district;
	}

	public void setDistrict(String district) {
		this.district = district;
	}

	public String getDetailaddress() {
		return this.detailaddress;
	}

	public void setDetailaddress(String detailaddress) {
		this.detailaddress = detailaddress;
	}

	public String getProductbrand() {
		return this.productbrand;
	}

	public void setProductbrand(String productbrand) {
		this.productbrand = productbrand;
	}

	public String getProductcategory() {
		return this.productcategory;
	}

	public void setProductcategory(String productcategory) {
		this.productcategory = productcategory;
	}

	public String getModelnumber() {
		return this.modelnumber;
	}

	public void setModelnumber(String modelnumber) {
		this.modelnumber = modelnumber;
	}

	public String getDemandcategory() {
		return this.demandcategory;
	}

	public void setDemandcategory(String demandcategory) {
		this.demandcategory = demandcategory;
	}

	public String getDemanddesc() {
		return this.demanddesc;
	}

	public void setDemanddesc(String demanddesc) {
		this.demanddesc = demanddesc;
	}

	public String getIsdispatch() {
		return this.isdispatch;
	}

	public void setIsdispatch(String isdispatch) {
		this.isdispatch = isdispatch;
	}

	public String getExpecttime() {
		return this.expecttime;
	}

	public void setExpecttime(String expecttime) {
		this.expecttime = expecttime;
	}

	public String getInforemark() {
		return this.inforemark;
	}

	public void setInforemark(String inforemark) {
		this.inforemark = inforemark;
	}

	public Integer getState() {
		return this.state;
	}

	public void setState(Integer state) {
		this.state = state;
	}

	public Date getSubmittime() {
		return this.submittime;
	}

	public void setSubmittime(Date submittime) {
		this.submittime = submittime;
	}

}
