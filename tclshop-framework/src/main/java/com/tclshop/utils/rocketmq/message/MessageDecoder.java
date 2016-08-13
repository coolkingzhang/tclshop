package com.tclshop.utils.rocketmq.message;

/**
 * Created by cn40387 on 15/5/12.
 */
public interface MessageDecoder<T> {

    T decode(byte[] message);
}
