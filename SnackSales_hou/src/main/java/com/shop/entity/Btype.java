package com.shop.entity;

public class Btype {
    private Integer btypeId;

    private String btypeName;

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

    @Override
    public String toString() {
        return "Btype{" +
                "btypeId=" + btypeId +
                ", btypeName='" + btypeName + '\'' +
                '}';
    }
}