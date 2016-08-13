package com.tclshop.cms.center.enums;

/**
 * Created by ${chengrz} on 2016/8/5 0005.
 */
public enum TNewsEnum {

    /*
     * 此枚举数据依赖于newsType表
     * 如果newsType表中对应数据修改则此处还需要修改
     */
    groupNews("集团新闻", 1),
    productsNews("产品新闻", 2),
    serviceNews("服务新闻", 3),
    communityNews("社区新闻", 4),
    otherOpinion("第三方观点", 5),
    videoNews("视频新闻", 6),
    newMedia("新媒体", 7);

    /**
     * 描述
     */
    private String desc;
    /**
     * 枚举值
     */
    private int value;

    private TNewsEnum(String desc, int value) {
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
        for (TNewsEnum spe : TNewsEnum.values()) {
            if (spe.value == value) {
                return spe.getDesc();
            }
        }
        return "";
    }

}
