package com.tclshop.cms.center.enums;

public enum TAdvertisingEnum {

    // 1 企业信息 2 关于TCL 3 发展历程 4 技术研发 5 新闻焦点 6 投资者关系 7社会责任 8 人才招聘
    company("企业信息焦点图", 1),
    abouttcl("关于TCL焦点图", 2),
    develop("发展历程焦点图", 3),
    technology("技术研究发焦点图", 4),
    news("新闻集点图", 5),
    investor("投资者关系", 6),
    social("社会责任", 7),
    job("人才招聘", 8);

    /**
     * 描述
     */
    private String desc;
    /**
     * 枚举值
     */
    private int value;

    private TAdvertisingEnum(String desc, int value) {
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
        for (TAdvertisingEnum spe : TAdvertisingEnum.values()) {
            if (spe.value == value) {
                return spe.getDesc();
            }
        }
        return "";
    }
}
