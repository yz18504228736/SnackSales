package com.shop.util;


public class BusinessException extends Exception{
    private static final long serialVersionUID = 2138324798345274429L;

    public BusinessException(String message){
        super(message);
    }
}
