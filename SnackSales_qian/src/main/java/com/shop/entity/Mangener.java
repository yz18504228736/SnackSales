package com.shop.entity;

public class Mangener {
    private Integer mangenerId;

    private String manName;

    private String manPwd;

    public Integer getMangenerId() {
        return mangenerId;
    }

    public void setMangenerId(Integer mangenerId) {
        this.mangenerId = mangenerId;
    }

    public String getManName() {
        return manName;
    }

    public void setManName(String manName) {
        this.manName = manName == null ? null : manName.trim();
    }

    public String getManPwd() {
        return manPwd;
    }

    public void setManPwd(String manPwd) {
        this.manPwd = manPwd == null ? null : manPwd.trim();
    }
}