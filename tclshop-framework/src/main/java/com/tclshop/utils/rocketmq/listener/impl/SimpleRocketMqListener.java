package com.tclshop.utils.rocketmq.listener.impl;

import java.io.UnsupportedEncodingException;
import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import com.alibaba.rocketmq.client.consumer.listener.ConsumeConcurrentlyContext;
import com.alibaba.rocketmq.common.message.MessageExt;
import com.tclshop.utils.rocketmq.message.codec.JsonMessageDecoder;

/**
 * 业务监听实现Demo
 */
public class SimpleRocketMqListener implements RocketMqMessageListener {
	Logger logger = LoggerFactory.getLogger(getClass());
	JsonMessageDecoder jsonMessageDecoder;
    public boolean onMessage(List<MessageExt> messages, ConsumeConcurrentlyContext Context) {
    	logger.info("------------------------------------------------------");
        logger.info("Messages Size: " +messages.size());

    	for(int i = 0;i<messages.size();i++){
     	String strMessage = "";
     	try {
			 strMessage = new String(messages.get(i).getBody(),"UTF-8");
		        logger.info("Messages keys: " +messages.get(i).getKeys());

		} catch (UnsupportedEncodingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
     	logger.info("strMessage:"+strMessage);
    	}
     	
        return true;
    }
}
