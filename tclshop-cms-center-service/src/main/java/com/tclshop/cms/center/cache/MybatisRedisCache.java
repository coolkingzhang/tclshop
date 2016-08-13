package com.tclshop.cms.center.cache;

import java.util.concurrent.locks.ReadWriteLock;
import java.util.concurrent.locks.ReentrantReadWriteLock;
import org.apache.ibatis.cache.Cache;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import redis.clients.jedis.Jedis;

public class MybatisRedisCache implements Cache {
	private static Logger logger = LoggerFactory.getLogger(MybatisRedisCache.class);
	private String id;
	private final ReadWriteLock readWriteLock = new ReentrantReadWriteLock();

	public MybatisRedisCache(final String id) {
		if (logger.isInfoEnabled()) {
			logger.info("============ MybatisRedisCache id {} ============", id);
		}
		if (id == null) {
			throw new IllegalArgumentException("Cache instances require an ID");
		}
		this.id = id;
	}

	@Override
	public String getId() {
		return this.id;
	}

	@Override
	public int getSize() {
		Jedis jedis = null;
		int size = -1;
		try {
			jedis = RedisUtil.getJedisPool().getResource();
			size = Integer.valueOf(jedis.dbSize().toString());
		} catch (Exception e) {
			logger.error(e.getMessage(), e);
		} finally {
			if (jedis != null) {
				jedis.close();
			}
		}
		return size;
	}

	@Override
	public void putObject(Object key, Object value) {
		if (logger.isInfoEnabled()) {
			logger.info("============ putObject key: {}, value: {} ============", key, value);
		}
		Jedis jedis = null;
		try {
			jedis = RedisUtil.getJedisPool().getResource();
			byte[] byteKey = SerializeUtil.serialize(key);
			byte[] byteValue = SerializeUtil.serialize(value);
			jedis.set(byteKey, byteValue);
		} catch (Exception e) {
			logger.error(e.getMessage(), e);
		} finally {
			if (jedis != null) {
				jedis.close();
			}
		}
	}

	@Override
	public Object getObject(Object key) {
		if (logger.isInfoEnabled()) {
			logger.info("--------------------------------------------------------");
			logger.info("============ getObject key: {}============", key);
			logger.info("--------------------------------------------------------");
		}
		Object object = null;
		Jedis jedis = null;
		try {
			jedis = RedisUtil.getJedisPool().getResource();
			byte[] bytes = jedis.get(SerializeUtil.serialize(key));
			if (bytes != null) {
				object = SerializeUtil.unserialize(bytes);
			}
		} catch (Exception e) {
			logger.error(e.getMessage(), e);
		} finally {
			if (jedis != null) {
				jedis.close();
			}
		}
		return object;
	}

	@Override
	public Object removeObject(Object key) {
		if (logger.isInfoEnabled()) {
			logger.info("============ removeObject key: {}============", key);
		}
		String result = "success";
		Jedis jedis = null;
		try {
			jedis = RedisUtil.getJedisPool().getResource();
			jedis.del(String.valueOf(key));
		} catch (Exception e) {
			logger.error(e.getMessage(), e);
		} finally {
			if (jedis != null) {
				jedis.close();
			}
		}
		return result;
	}

	@Override
	public void clear() {
		if (logger.isInfoEnabled()) {
			logger.info("============ start clear cache ============");
		}
		String result = "fail";
		Jedis jedis = null;
		try {
			jedis = RedisUtil.getJedisPool().getResource();
			result = jedis.flushAll();
		} catch (Exception e) {
			logger.error(e.getMessage(), e);
		} finally {
			if (jedis != null) {
				jedis.close();
			}
		}
		if (logger.isInfoEnabled()) {
			logger.info("============ end clear cache result is {}============", result);
		}
	}

	@Override
	public ReadWriteLock getReadWriteLock() {
		return readWriteLock;
	}
}