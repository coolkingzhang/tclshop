package com.tclshop.cms.center.cache;

import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;

public class JRedisSerializationUtil {

	public JRedisSerializationUtil() {
	}

	// JDK 原生序列换方案
	public static byte[] jdkserialize(Object obj) {
		try (ByteArrayOutputStream baos = new ByteArrayOutputStream(); ObjectOutputStream oos = new ObjectOutputStream(baos);) {
			oos.writeObject(obj);
			return baos.toByteArray();
		} catch (IOException e) {
			throw new RuntimeException(e);
		}
	}

	public static Object jdkdeserialize(byte[] bits) {
		try (ByteArrayInputStream bais = new ByteArrayInputStream(bits); ObjectInputStream ois = new ObjectInputStream(bais);

		) {
			return ois.readObject();
		} catch (Exception e) {
			throw new RuntimeException(e);
		}
	}
}