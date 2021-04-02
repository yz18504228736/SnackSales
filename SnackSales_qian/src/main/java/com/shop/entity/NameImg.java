package com.shop.entity;

public class NameImg {
    private String proName;
    private String proImg;
    private int proId;

    public void setProId(int proId) {
        this.proId = proId;
    }

    public int getProId() {
        return proId;
    }

    public String getProName() {
        return proName;
    }

    public void setProName(String proName) {
        this.proName = proName;
    }

    public String getProImg() {
        return proImg;
    }

    public void setProImg(String proImg) {
        this.proImg = proImg;
    }

    @Override
    public String toString() {
        return "NameImg{" +
                "proName='" + proName + '\'' +
                ", proImg='" + proImg + '\'' +
                ", proId=" + proId +
                '}';
    }
}
