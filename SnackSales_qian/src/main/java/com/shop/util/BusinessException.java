package com.shop.util;

/**
 * Created by Administrator on 2017/10/23.
 **/
public class BusinessException extends Exception{
    private static final long serialVersionUID = 2138324798345274429L;

    public BusinessException(String message){
        super(message);
    }
}
