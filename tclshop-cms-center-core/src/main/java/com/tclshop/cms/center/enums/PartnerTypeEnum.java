package com.tclshop.cms.center.enums;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public enum PartnerTypeEnum {

    first("一级", 1),
    second("二级", 2);

    /** 描述 */
    private String desc;
    /** 枚举值 */
    private int value;

    private PartnerTypeEnum(String desc, int value) {
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

    public static PartnerTypeEnum getEnum(int value){
        PartnerTypeEnum resultEnum = null;
        PartnerTypeEnum[] enumAry = PartnerTypeEnum.values();
        for(int i = 0;i<enumAry.length;i++){
            if(enumAry[i].getValue() == value){
                resultEnum = enumAry[i];
                break;
            }
        }
        return resultEnum;
    }

    public static Map<String, Map<String, Object>> toMap() {
        PartnerTypeEnum[] ary = PartnerTypeEnum.values();
        Map<String, Map<String, Object>> enumMap = new HashMap<String, Map<String, Object>>();
        for (int num = 0; num < ary.length; num++) {
            Map<String, Object> map = new HashMap<String, Object>();
            String key = String.valueOf(getEnum(ary[num].getValue()));
            map.put("value", String.valueOf(ary[num].getValue()));
            map.put("desc", ary[num].getDesc());
            enumMap.put(key, map);
        }
        return enumMap;
    }

    @SuppressWarnings({ "rawtypes", "unchecked" })
    public static List toList(){
        PartnerTypeEnum[] ary = PartnerTypeEnum.values();
        List list = new ArrayList();
        for(int i=0;i<ary.length;i++){
            Map<String,String> map = new HashMap<String,String>();
            map.put("value",String.valueOf(ary[i].getValue()));
            map.put("desc", ary[i].getDesc());
            list.add(map);
        }
        return list;
    }
}