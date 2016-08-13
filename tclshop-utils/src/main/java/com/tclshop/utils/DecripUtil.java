package com.tclshop.utils;

import java.security.MessageDigest;
import org.apache.commons.codec.binary.Base64;

/**
 * Java Base64、AES、SHA1、MD5加密算法
 */

public class DecripUtil {

	public final static String AES = "AES";
	public static final String VIPARA = "0102030405060708";
	public static final String bm = "utf-8";

	public static String sha1(String data) {
		String str = null;
		try {
			MessageDigest md = MessageDigest.getInstance("SHA-1");
			md.update(data.getBytes("UTF-8"));
			byte[] tmp = md.digest();
			str = toHex(tmp);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return str;
	}

	public static String sha(String data) {
		String str = null;
		try {
			MessageDigest md = MessageDigest.getInstance("SHA");
			md.update(data.getBytes("UTF-8"));
			byte[] tmp = md.digest();
			str = toHex(tmp);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return str;
	}

	public static String md5(String data) {
		String str = null;
		try {
			MessageDigest md = MessageDigest.getInstance("MD5");
			md.update(data.getBytes("UTF-8"));
			byte[] tmp = md.digest();
			str = toHex(tmp);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return str;
	}

	public static String string2MD5(String inStr) {
		MessageDigest md5 = null;
		try {
			md5 = MessageDigest.getInstance("MD5");
		} catch (Exception e) {
			System.out.println(e.toString());
			e.printStackTrace();
			return "";
		}
		char[] charArray = inStr.toCharArray();
		byte[] byteArray = new byte[charArray.length];

		for (int i = 0; i < charArray.length; i++)
			byteArray[i] = (byte) charArray[i];
		byte[] md5Bytes = md5.digest(byteArray);
		StringBuffer hexValue = new StringBuffer();
		for (int i = 0; i < md5Bytes.length; i++) {
			int val = ((int) md5Bytes[i]) & 0xff;
			if (val < 16)
				hexValue.append("0");
			hexValue.append(Integer.toHexString(val));
		}
		return hexValue.toString();

	}

	/**
	 * 加密解密算法 执行一次加密，两次解密
	 */
	public static String convertMD5(String inStr) {

		char[] a = inStr.toCharArray();
		for (int i = 0; i < a.length; i++) {
			a[i] = (char) (a[i] ^ 't');
		}
		String s = new String(a);
		return s;
	}

	// 测试
	/*
	 * public static void main(String args[]) { String s = new String("122323");
	 * System.out.println("原始：" + s); System.out.println("MD5后：" +
	 * string2MD5(s)); System.out.println("加密的：" + convertMD5(s));
	 * System.out.println("解密的：" + convertMD5(convertMD5(s)));
	 * 
	 * }
	 */
	/**
	 * base64 加密
	 */
	public static String encode64Str(String plainText) {

		byte[] b = plainText.getBytes();
		Base64 base64 = new Base64();
		b = base64.encode(b);
		String codeString = new String(b);
		return codeString;
	}

	/**
	 * base64 解密
	 */
	public static String decode64Str(String encodeStr) {
		byte[] b = encodeStr.getBytes();
		Base64 base64 = new Base64();
		b = base64.decode(b);
		String codeString = new String(b);
		return codeString;
	}

	/**
	 * 二进制转十六进制
	 * 
	 * @param data
	 * @return
	 */
	public static String toHex(byte[] data) {
		StringBuffer buffer = new StringBuffer();
		for (int i = 0; i < data.length; i++) {
			buffer.append(String.format("%02x", data[i]));
		}
		return buffer.toString();
	}

	/**
	 * 十六进制转换成二进制
	 * 
	 * @param hexData
	 * @return
	 */

	public static byte[] toByte(String hexData) {
		if (hexData == null) {
			return null;
		}
		int len = hexData.length();
		if (len % 2 == 1) {
			return null;
		}
		int dataLength = len / 2;
		byte[] result = new byte[dataLength];
		for (int i = 0; i < dataLength; i++) {
			result[i] = (byte) Integer.parseInt(hexData.substring(i * 2, i * 2 + 2), 16);
		}
		return result;
	}
}