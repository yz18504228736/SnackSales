package com.shop.entity;

public class BtypeImg {
    private Integer btypeImgId;

    private Integer btypeId;

    private String btypeName;

    public Integer getBtypeImgId() {
        return btypeImgId;
    }

    public void setBtypeImgId(Integer btypeImgId) {
        this.btypeImgId = btypeImgId;
    }

    public Integer getBtypeId() {
        return btypeId;
    }

    public void setBtypeId(Integer btypeId) {
        this.btypeId = btypeId;
    }

    public String getBtypeName() {
        return btypeName;
    }

    public void setBtypeName(String btypeName) {
        this.btypeName = btypeName == null ? null : btypeName.trim();
    }
}