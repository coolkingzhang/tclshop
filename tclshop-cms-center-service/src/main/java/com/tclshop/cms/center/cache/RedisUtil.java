package com.tclshop.cms.center.cache;

import java.util.Properties;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import redis.clients.jedis.JedisPool;
import redis.clients.jedis.JedisPoolConfig;

public class RedisUtil {
	private final static Logger logger = LoggerFactory.getLogger(RedisUtil.class);
	private static JedisPool jedisPool;
	static {
		try {

			Properties properties = new Properties();
			properties.load(RedisUtil.class.getClassLoader().getResourceAsStream("conf/redis.properties"));

			String redisHost = properties.getProperty("redis.host");
			// String redisPassword = pps.getProperty("redis.password");
			Integer redisPort = Integer.parseInt(properties.getProperty("redis.port"));
			Integer maxTotal = Integer.parseInt(properties.getProperty("redis.pool.maxTotal"));
			Integer maxIdle = Integer.parseInt(properties.getProperty("redis.pool.maxIdle"));

			JedisPoolConfig jedisPoolConfig = new JedisPoolConfig();
			jedisPoolConfig.setMaxTotal(maxTotal);
			jedisPoolConfig.setMaxIdle(maxIdle);
			jedisPool = new JedisPool(jedisPoolConfig, redisHost, redisPort);
		} catch (Exception e) {
			logger.error(e.getMessage(), e);
		}
	}

	public static JedisPool getJedisPool() {
		return jedisPool;
	}
}