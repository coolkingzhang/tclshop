package com.tclshop.cms.center.enums;

/**
 * Created by ${chengrz} on 2016/8/5 0005.
 */
public enum TAboutEnum {
    // 企业公民活动主页显示（type=11）， 华萌基金主页显示（type=12），志愿者风采主页显示（type=13）, 社会责任报告（type=14）
    CEO("董事长致辞", 1),
    developmentCourse("发展历程", 3),
    managementTeam("管理团队", 7),
    activity("公民活动", 11),
    hmFund("华萌基金", 12),
    volunteer("志愿者风采", 13),
    dutyReport("社会责任报告", 14),
    compenyHonor("企业荣誉", 18),
    techHonor("科技创新荣誉", 19);

    /**
     * 描述
     */
    private String desc;
    /**
     * 枚举值
     */
    private int value;

    private TAboutEnum(String desc, int value) {
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

    public static String getDescByType(int value) {
        for (TAboutEnum spe : TAboutEnum.values()) {
            if (spe.value == value) {
                return spe.getDesc();
            }
        }
        return "";
    }
}
