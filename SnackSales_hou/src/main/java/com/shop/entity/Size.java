package com.shop.entity;

public class Size {
    private Integer sizeId;

    private Integer productId;

    private String sizeName;

    public Integer getSizeId() {
        return sizeId;
    }

    public void setSizeId(Integer sizeId) {
        this.sizeId = sizeId;
    }

    public Integer getProductId() {
        return productId;
    }

    public void setProductId(Integer productId) {
        this.productId = productId;
    }

    public String getSizeName() {
        return sizeName;
    }

    public void setSizeName(String sizeName) {
        this.sizeName = sizeName == null ? null : sizeName.trim();
    }

    @Override
    public String toString() {
        return "Size{" +
                "sizeId=" + sizeId +
                ", productId=" + productId +
                ", sizeName='" + sizeName + '\'' +
                '}';
    }
}