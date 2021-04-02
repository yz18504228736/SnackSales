package com.shop.entity;

/**
 *  create xucheng
 */
public class NewArrival {
    private Integer newArrivalId;

    private SpecialType specialType;

    private Stype stype;

    private Product product;

    private NewArrvalImg newArrvalImg;

    public Integer getNewArrivalId() {
        return newArrivalId;
    }

    public void setNewArrivalId(Integer newArrivalId) {
        this.newArrivalId = newArrivalId;
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

    public NewArrvalImg getNewArrvalImg() {
        return newArrvalImg;
    }

    public void setNewArrvalImg(NewArrvalImg newArrvalImg) {
        this.newArrvalImg = newArrvalImg;
    }
}