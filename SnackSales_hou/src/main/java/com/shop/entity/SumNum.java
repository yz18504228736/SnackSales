package com.shop.entity;

public class SumNum {
    private String proName;

    private int proNum;

    public String getProName() {
        return proName;
    }

    public void setProName(String proName) {
        this.proName = proName;
    }

    public int getProNum() {
        return proNum;
    }

    public void setProNum(int proNum) {
        this.proNum = proNum;
    }

    @Override
    public String toString() {
        return "SumNum{" +
                "proName='" + proName + '\'' +
                ", proNum=" + proNum +
                '}';
    }
}
