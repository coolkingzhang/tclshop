package com.tclshop.utils;

import java.awt.Font;
import java.awt.Graphics2D;
import java.awt.Image;
import java.awt.RenderingHints;
import java.awt.image.BufferedImage;
import java.io.FileOutputStream;
import javax.imageio.ImageIO;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

public class CreateImageUtil {
	private static Logger LOG = LoggerFactory.getLogger(CreateImageUtil.class);

	public static boolean createImage(String srcImgPath, String dstImgPath, java.util.List<String> list) throws Exception {
		int len = list == null ? 0 : list.size();
		if (len < 3 || toStr(srcImgPath).length() < 9 || toStr(dstImgPath).length() < 9)
			return false;
		Image srcImg = ImageIO.read(new java.net.URL(srcImgPath));
		BufferedImage bi = new BufferedImage(srcImg.getWidth(null), srcImg.getHeight(null), BufferedImage.TYPE_INT_RGB);
		Graphics2D gr = bi.createGraphics(); // gr.setColor(new Color(0, 0,
												// 235));
		gr.setRenderingHint(RenderingHints.KEY_INTERPOLATION, RenderingHints.VALUE_INTERPOLATION_BILINEAR);
		gr.drawImage(srcImg.getScaledInstance(srcImg.getWidth(null), srcImg.getHeight(null), Image.SCALE_SMOOTH), 0, 0, null);

		String a = toStr(list.get(0));
		String b = toStr(list.get(1));
		String c = toStr(list.get(2));

		Font font = new Font("微软雅黑", Font.ROMAN_BASELINE, 36); // | 36.8889 |
																// 44.0000 |
		gr.setFont(font);
		gr.drawString(a, leftA(a), 52f);

		font = new Font("微软雅黑", Font.ROMAN_BASELINE, 42);
		gr.setFont(font);
		gr.drawString(b, leftB(b), 146f);
		String d = len < 4 ? "" : toStr(list.get(3));
		font = new Font("微软雅黑", Font.ROMAN_BASELINE, 30);
		gr.setFont(font);
		gr.drawString(c, leftC(d), 212f);
		gr.dispose();

		// dstImgPath = dstImgPath.replace(".",
		// "-fengzi-"+System.currentTimeMillis()+"."); //XXX for testing ...
		FileOutputStream out = new FileOutputStream(dstImgPath);
		ImageIO.write(bi, "JPG", out);
		out.flush();
		out.close();
		LOG.debug("Create Image done ~ "); // XXX for testing ...
		return true;
	}

	public static String toStr(Object ov) {
		return ov == null ? "" : ov.toString().trim();
	}

	public static float leftA(String a) {
		return 510 - a.length() * 36.8892f / 2.0f + a.replaceAll("[^0-9]", "").length() * 8;
	}

	public static float leftB(String b) {
		return 510 - b.length() * 44.0004f / 2.0f + b.replaceAll("[^0-9]", "").length() * 10;
	}

	public static float leftC(String c) {
		float f = 335f;
		if (c.length() > 0)
			f = Float.parseFloat(c);
		return f;
	}

}

// public static void main(String[] args) throws Exception {
// String srcImgPath = "D:/00/01yy.jpg"; //"D:/00/00.jpg"; //
// String dstImgPath = "D:/00/abb/01yy_new.jpg";
// //createImage(srcImgPath, dstImgPath);
// String shopName = "洞庭土菜馆总部店";
// String foodName = "红烧排骨一份";
// String validDate = "2015.05.01—2015.08.10";
// java.util.List<String> list = new java.util.ArrayList<String>();
// list.add(shopName);
// list.add(foodName);
// list.add(validDate);
// createImage(srcImgPath, dstImgPath, list);
//
// validDate = "2015.06.01—2015.07.15";
// srcImgPath = "D:/00/01dj.jpg";
// list = new java.util.ArrayList<String>();
// list.add(shopName);
// list.add("￥200抵350元");
// list.add(validDate);
// createImage(srcImgPath, dstImgPath, list);
// System.out.println("Hello World!");
// }