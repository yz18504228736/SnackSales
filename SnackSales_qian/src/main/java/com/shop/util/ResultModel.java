package com.shop.util;

public class ResultModel {
    private String result;// 表示成功或失败
    private String resultDesc; // 表示失败描述
    private Object resultData; // 表示成功或返回的数据

    public String getResult() {
        return result;
    }

    public void setResult(String result) {
        this.result = result;
    }

    public String getResultDesc() {
        return resultDesc;
    }

    public void setResultDesc(String resultDesc) {
        this.resultDesc = resultDesc;
    }

    public Object getResultData() {
        return resultData;
    }

    public void setResultData(Object resultData) {
        this.resultData = resultData;
    }

    public static ResultModel createSuccessModel(Object data){
        ResultModel model = new ResultModel();
        model.result = "添加购物车成功";
        model.resultData = data;
        return model;
    }

    public static ResultModel createFailModel(String errorDesc){
        ResultModel model = new ResultModel();
        model.result = "添加购物车成功";
        model.resultDesc = errorDesc;
        return model;
    }
}
