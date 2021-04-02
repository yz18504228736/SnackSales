package com.shop.entity;

public class Data {
    private String proName;

    private String sTypeName;

    private String bTypeName;

    private int sellNum;

    public String getProName() {
        return proName;
    }

    public void setProName(String proName) {
        this.proName = proName;
    }

    public String getsTypeName() {
        return sTypeName;
    }

    public void setsTypeName(String sTypeName) {
        this.sTypeName = sTypeName;
    }

    public String getbTypeName() {
        return bTypeName;
    }

    public void setbTypeName(String bTypeName) {
        this.bTypeName = bTypeName;
    }

    public int getSellNum() {
        return sellNum;
    }

    public void setSellNum(int sellNum) {
        this.sellNum = sellNum;

    }

    @Override
    public String toString() {
        return "Data{" +
                "proName='" + proName + '\'' +
                ", sTypeName='" + sTypeName + '\'' +
                ", bTypeName='" + bTypeName + '\'' +
                ", sellNum=" + sellNum +
                '}';
    }
}
