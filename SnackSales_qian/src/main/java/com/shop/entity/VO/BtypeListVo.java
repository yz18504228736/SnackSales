package com.shop.entity.VO;

import com.shop.entity.ProDisplay;

public class BtypeListVo{
    private int proId;
    private String proName;
    private double proPrice;
    private String proDesc;
    private ProDisplay proImg;

    public int getProId() {
        return proId;
    }

    public void setProId(int proId) {
        this.proId = proId;
    }

    public String getProName() {
        return proName;
    }

    public void setProName(String proName) {
        this.proName = proName;
    }

    public Double getProPrice() {
        return proPrice;
    }

    public void setProPrice(Double proPrice) {
        this.proPrice = proPrice;
    }

    public String getProDesc() {
        return proDesc;
    }

    public void setProDesc(String proDesc) {
        this.proDesc = proDesc;
    }

    public ProDisplay getProImg() {
        return proImg;
    }

    public void setProImg(ProDisplay proImg) {
        this.proImg = proImg;
    }
}
