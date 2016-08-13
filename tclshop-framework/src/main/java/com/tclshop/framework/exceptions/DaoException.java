package com.tclshop.framework.exceptions;

/**
 * Created by fang on 2016-07-07.
 */
public class DaoException extends Exception {
    /**
     * 异常信息
     */
    protected String msg;

    /**
     * 具体异常码
     */
    protected int code;

    public DaoException(int code, String msg) {
        this.code = code;
        this.msg = msg;
    }

    public DaoException(String message, int code, String msg) {
        super(message);
        this.code = code;
        this.msg = msg;
    }

    public DaoException(String message, Throwable cause, int code, String msg) {
        super(message, cause);
        this.code = code;
        this.msg = msg;
    }

    public DaoException(Throwable cause, int code, String msg) {
        super(cause);
        this.code = code;
        this.msg = msg;
    }

    public DaoException(String message, Throwable cause, boolean enableSuppression, boolean writableStackTrace, int code, String msg) {
        super(message, cause, enableSuppression, writableStackTrace);
        this.code = code;
        this.msg = msg;
    }
}
