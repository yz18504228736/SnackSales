package com.shop.entity;

public class Stype {
    private Integer stypeId;

    private String stypeName;

    private Btype btype;

    public Integer getStypeId() {
        return stypeId;
    }

    public void setStypeId(Integer stypeId) {
        this.stypeId = stypeId;
    }

    public String getStypeName() {
        return stypeName;
    }

    public void setStypeName(String stypeName) {
        this.stypeName = stypeName == null ? null : stypeName.trim();
    }

    public Btype getBtype() {
        return btype;
    }

    public void setBtype(Btype btype) {
        this.btype = btype;
    }

    @Override
    public String toString() {
        return "Stype{" +
                "stypeId=" + stypeId +
                ", stypeName='" + stypeName + '\'' +
                ", btype=" + btype +
                '}';
    }
}