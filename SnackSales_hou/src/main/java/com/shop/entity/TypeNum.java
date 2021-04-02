package com.shop.entity;

public class TypeNum {
    private String typeName;
    private int sellNum;

    public String getTypeName() {
        return typeName;
    }

    public void setTypeName(String typeName) {
        this.typeName = typeName;
    }

    public int getSellNum() {
        return sellNum;
    }

    public void setSellNum(int sellNum) {
        this.sellNum = sellNum;
    }

    @Override
    public String toString() {
        return "TypeNum{" +
                "typeName='" + typeName + '\'' +
                ", sellNum=" + sellNum +
                '}';
    }
}
