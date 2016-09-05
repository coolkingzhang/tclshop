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
@TableName(value = "t_development")
public class TDevelopment implements Serializable {

	@TableField(exist = false)
	private static final long serialVersionUID = 1L;

	/**  */
	@TableId(type = IdType.AUTO)
	private Integer id;

	/** 年份 */
	private Integer years;

	/** 列表封面 */
	private String pic;

	/** 内页封面 */
	@TableField(value = "b_pic")
	private String bpic;

	/**  */
	private Date createtime;

	public Integer getId() {
		return this.id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public Integer getYears() {
		return this.years;
	}

	public void setYears(Integer years) {
		this.years = years;
	}

	public String getPic() {
		return this.pic;
	}

	public void setPic(String pic) {
		this.pic = pic;
	}

	public Date getCreatetime() {
		return this.createtime;
	}

	public void setCreatetime(Date createtime) {
		this.createtime = createtime;
	}

    public String getBpic() {
        return bpic;
    }

    public void setBpic(String bpic) {
        this.bpic = bpic;
    }
}
