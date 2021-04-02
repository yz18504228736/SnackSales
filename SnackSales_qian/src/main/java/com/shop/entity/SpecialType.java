package com.shop.entity;

public class SpecialType {
    private Integer specialTypeId;

    private String specialTypeName;

    public Integer getSpecialTypeId() {
        return specialTypeId;
    }

    public void setSpecialTypeId(Integer specialTypeId) {
        this.specialTypeId = specialTypeId;
    }

    public String getSpecialTypeName() {
        return specialTypeName;
    }

    public void setSpecialTypeName(String specialTypeName) {
        this.specialTypeName = specialTypeName == null ? null : specialTypeName.trim();
    }
}