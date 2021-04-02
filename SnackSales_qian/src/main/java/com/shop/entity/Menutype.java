package com.shop.entity;

public class Menutype {
    private Integer menuTypeId;

    private String menuTypeName;

    public Integer getMenuTypeId() {
        return menuTypeId;
    }

    public void setMenuTypeId(Integer menuTypeId) {
        this.menuTypeId = menuTypeId;
    }

    public String getMenuTypeName() {
        return menuTypeName;
    }

    public void setMenuTypeName(String menuTypeName) {
        this.menuTypeName = menuTypeName == null ? null : menuTypeName.trim();
    }
}