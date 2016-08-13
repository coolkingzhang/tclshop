package com.tclshop.utils.bean;

import com.tclshop.utils.DecripUtil;

public class BaseBean {

	// 为减少重复<合并且重用方法>,CommonController extends BaseBean XXX TODO 待定...
	public String toStr(java.util.Map<String, Object> map, String kw) {
		return map == null ? "" : toStr(map.get(toStr(kw)));
	}

	public int toInt(java.util.Map<String, Object> map, String kw) {
		return toInt(toStr(map, kw));
	}

	public int toInt(Object ov) {
		return ov == null ? 0 : Integer.parseInt(("0" + ov).replaceAll("[^0-9]", ""), 10);
	}

	public long toLong(Object ov) {
		return ov == null ? 0l : Long.parseLong(("0" + ov).replaceAll("[^0-9]", ""), 10);
	}

	public String toStr(Object ov) {
		return ov == null ? "" : ov.toString().trim();
	}

	public String uuid() {
		return java.util.UUID.randomUUID().toString().replaceAll("-", "");
	}

	public String md5(Object vo) {
		return DecripUtil.md5(String.valueOf(vo));
	}

	public int now() {
		return Integer.parseInt(String.valueOf(System.currentTimeMillis() / 1000));
	}

	public int nowSpan(long span) {
		long mills = System.currentTimeMillis() + span;
		return Integer.parseInt(String.valueOf(mills / 1000));
	}

}