package com.tclshop.cms.center.enums;

public enum TRecruitmentEnum {
	job("职位", 1),
    talentConcept("人才理念", 2),
    developInfo("员工发展信息", 3),
    employeeLife ("员工生活信息", 4),
    campusRecruitment("校园招聘信息", 5),
    socialRecruitment("社会招聘信息", 6);

	/** 描述 */
	private String desc;
	/** 枚举值 */
	private int value;

	private TRecruitmentEnum(String desc, int value) {
		this.desc = desc;
		this.value = value;
	}

	public int getValue() {
		return value;
	}

	public void setValue(int value) {
		this.value = value;
	}

	public String getDesc() {
		return desc;
	}

	public void setDesc(String desc) {
		this.desc = desc;
	}
}
