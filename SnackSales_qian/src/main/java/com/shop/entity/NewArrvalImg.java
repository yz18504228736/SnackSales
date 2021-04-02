package com.shop.entity;

public class NewArrvalImg {
    private Integer newArrvalImgId;

    private String newArrvalImgName;

    public Integer getNewArrvalImgId() {
        return newArrvalImgId;
    }

    public void setNewArrvalImgId(Integer newArrvalImgId) {
        this.newArrvalImgId = newArrvalImgId;
    }

    public String getNewArrvalImgName() {
        return newArrvalImgName;
    }

    public void setNewArrvalImgName(String newArrvalImgName) {
        this.newArrvalImgName = newArrvalImgName == null ? null : newArrvalImgName.trim();
    }
}