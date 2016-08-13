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
@TableName(value = "t_sys_menu")
public class TSysMenu implements Serializable {

	@TableField(exist = false)
	private static final long serialVersionUID = 1L;

	/**  */
	@TableId(type = IdType.AUTO)
	private String menuid;

	/**  */
	@TableField(value = "pop_menuid")
	private String popMenuid;

	/**  */
	private String menuname;

	/**  */
	private String menuaddress;

	/**  */
	private Integer menusequence;

	/**  */
	private Integer islist;

	public String getMenuid() {
		return this.menuid;
	}

	public void setMenuid(String menuid) {
		this.menuid = menuid;
	}

	public String getPopMenuid() {
		return this.popMenuid;
	}

	public void setPopMenuid(String popMenuid) {
		this.popMenuid = popMenuid;
	}

	public String getMenuname() {
		return this.menuname;
	}

	public void setMenuname(String menuname) {
		this.menuname = menuname;
	}

	public String getMenuaddress() {
		return this.menuaddress;
	}

	public void setMenuaddress(String menuaddress) {
		this.menuaddress = menuaddress;
	}

	public Integer getMenusequence() {
		return this.menusequence;
	}

	public void setMenusequence(Integer menusequence) {
		this.menusequence = menusequence;
	}

	public Integer getIslist() {
		return this.islist;
	}

	public void setIslist(Integer islist) {
		this.islist = islist;
	}

}
