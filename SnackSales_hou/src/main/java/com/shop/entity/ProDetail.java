package com.shop.entity;

public class ProDetail {
    private Integer proDetailId;

    private Integer productId;

    private String proDetailImg;

    public Integer getProDetailId() {
        return proDetailId;
    }

    public void setProDetailId(Integer proDetailId) {
        this.proDetailId = proDetailId;
    }

    public Integer getProductId() {
        return productId;
    }

    public void setProductId(Integer productId) {
        this.productId = productId;
    }

    public String getProDetailImg() {
        return proDetailImg;
    }

    public void setProDetailImg(String proDetailImg) {
        this.proDetailImg = proDetailImg == null ? null : proDetailImg.trim();
    }

    @Override
    public String toString() {
        return "ProDetail{" +
                "proDetailId=" + proDetailId +
                ", productId=" + productId +
                ", proDetailImg='" + proDetailImg + '\'' +
                '}';
    }
}