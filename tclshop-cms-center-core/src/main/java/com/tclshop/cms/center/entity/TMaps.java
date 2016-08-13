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
@TableName(value = "t_maps")
public class TMaps implements Serializable {

	@TableField(exist = false)
	private static final long serialVersionUID = 1L;

	/**  */
	@TableId(type = IdType.AUTO)
	private Integer id;

	/**  */
	private Integer cid;

	/** 子类别ID */
	private Integer csid;

	/** 店铺名称 */
	private String name;

	/** 店铺地址 */
	private String address;

	/** 店铺电话 */
	private String tel;

	/** 经度 */
	private String jingdu;

	/** 纬度 */
	private String weidu;

	/** 省 */
	private Integer province;

	/** 市 */
	private Integer city;

	/** 区 */
	private Integer area;

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

	public String getName() {
		return this.name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getAddress() {
		return this.address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getTel() {
		return this.tel;
	}

	public void setTel(String tel) {
		this.tel = tel;
	}

	public String getJingdu() {
		return this.jingdu;
	}

	public void setJingdu(String jingdu) {
		this.jingdu = jingdu;
	}

	public String getWeidu() {
		return this.weidu;
	}

	public void setWeidu(String weidu) {
		this.weidu = weidu;
	}

	public Integer getProvince() {
		return this.province;
	}

	public void setProvince(Integer province) {
		this.province = province;
	}

	public Integer getCity() {
		return this.city;
	}

	public void setCity(Integer city) {
		this.city = city;
	}

	public Integer getArea() {
		return this.area;
	}

	public void setArea(Integer area) {
		this.area = area;
	}

	public Integer getCreatetime() {
		return this.createtime;
	}

	public void setCreatetime(Integer createtime) {
		this.createtime = createtime;
	}

}
