package com.tclshop.cms.center.enums;

/**
 * Created by ${chengrz} on 2016/8/5 0005.
 */
public enum TInvestorsEnum {

    operationalReport("定期经营报告分析", 1),
    companyReport("上市公司报告", 2),
    investmentReport ("投资机构报告", 3),
    managementSystem("上市公司管理制度", 4),
    BBS("股票论坛", 5),
    fair("公平在身边", 6);

    /**
     * 描述
     */
    private String desc;
    /**
     * 枚举值
     */
    private int value;

    private TInvestorsEnum(String desc, int value) {
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
        for (TInvestorsEnum spe : TInvestorsEnum.values()) {
            if (spe.value == value) {
                return spe.getDesc();
            }
        }
        return "";
    }

}
