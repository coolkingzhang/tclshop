package com.tclshop.utils.bean;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Properties;

public class CacheMessages {
	private static Properties cache;
	static {
		cache = (Properties) BeanFactoryHelper.getBean("propertyMessage");
		if (cache == null)
			cache = new Properties();
	}

	public static String get(String key) {
		return cache.getProperty(key);
	}

	/**
	 * 获取key的值 转换成 List<Map<String,Object>>
	 * 
	 * @param key
	 * @return
	 */
	public static List<Map<String, Object>> getList(String key) {
		String sp = ";";
		String dp = ",";
		String keyName = "key";
		String valueName = "value";

		String str = cache.getProperty(key);
		if (str == null) {
			return null;
		} else {
			List<Map<String, Object>> result = new ArrayList<Map<String, Object>>();
			String[] group = str.split(sp);
			for (int index = 0; index < group.length; index++) {
				if (!group[index].equals("")) {
					String[] groupData = group[index].split(dp);
					Map<String, Object> data = new HashMap<String, Object>();
					data.put(keyName, groupData[0]);
					data.put(valueName, groupData[1]);
					result.add(data);
				}
			}
			return result;
		}
	}

	/**
	 * 获取key的值 转换成 String[]
	 * 
	 * @param key
	 * @return
	 */
	public static String[] getString(String key) {
		String sp = ";";

		String str = cache.getProperty(key);
		if (str == null) {
			return null;
		} else {

			String[] group = str.split(sp);
			return group;
		}
	}

	/**
	 * test case
	 * 
	 */
	public void main() {
		List<Map<String, Object>> test = new ArrayList<Map<String, Object>>();
		test = CacheMessages.getList("test.data");

		for (int i = 0; i < test.size(); i++) {
			System.out.print(test.get(i).get("value") + "\r\n");
		}

		String[] s = CacheMessages.getString("test.data");
		for (int i = 0; i < s.length; i++)
			System.out.println(s[i] + "\r\n");
	}
}