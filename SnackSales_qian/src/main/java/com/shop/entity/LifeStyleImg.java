package com.shop.entity;

public class LifeStyleImg {
    private Integer lifestyleImgId;

    private String lifestyleImgName;

    public Integer getLifestyleImgId() {
        return lifestyleImgId;
    }

    public void setLifestyleImgId(Integer lifestyleImgId) {
        this.lifestyleImgId = lifestyleImgId;
    }

    public String getLifestyleImgName() {
        return lifestyleImgName;
    }

    public void setLifestyleImgName(String lifestyleImgName) {
        this.lifestyleImgName = lifestyleImgName == null ? null : lifestyleImgName.trim();
    }
}