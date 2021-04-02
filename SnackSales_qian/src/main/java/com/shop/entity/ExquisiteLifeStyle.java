package com.shop.entity;

public class ExquisiteLifeStyle {
    private Integer lifestyleId;

    private SpecialType specialType;

    private Stype stype;

    private Product product;

    private LifeStyleImg lifeStyleImg;

    public Integer getLifestyleId() {
        return lifestyleId;
    }

    public void setLifestyleId(Integer lifestyleId) {
        this.lifestyleId = lifestyleId;
    }

    public SpecialType getSpecialType() {
        return specialType;
    }

    public void setSpecialType(SpecialType specialType) {
        this.specialType = specialType;
    }

    public Stype getStype() {
        return stype;
    }

    public void setStype(Stype stype) {
        this.stype = stype;
    }

    public Product getProduct() {
        return product;
    }

    public void setProduct(Product product) {
        this.product = product;
    }

    public LifeStyleImg getLifeStyleImg() {
        return lifeStyleImg;
    }

    public void setLifeStyleImg(LifeStyleImg lifeStyleImg) {
        this.lifeStyleImg = lifeStyleImg;
    }
}