package com.shop.entity;

public class ProDisplay {
    private Integer proDisplayId;

    private Integer productId;

    private String proDisplayImg;

    public Integer getProDisplayId() {
        return proDisplayId;
    }

    public void setProDisplayId(Integer proDisplayId) {
        this.proDisplayId = proDisplayId;
    }

    public Integer getProductId() {
        return productId;
    }

    public void setProductId(Integer productId) {
        this.productId = productId;
    }

    public String getProDisplayImg() {
        return proDisplayImg;
    }

    public void setProDisplayImg(String proDisplayImg) {
        this.proDisplayImg = proDisplayImg == null ? null : proDisplayImg.trim();
    }

    @Override
    public String toString() {
        return "ProDisplay{" +
                "proDisplayId=" + proDisplayId +
                ", productId=" + productId +
                ", proDisplayImg='" + proDisplayImg + '\'' +
                '}';
    }
}