package com.shop.entity;


import java.sql.Date;

public class Product {
//    产品Id
    private Integer productId;
//      小类Id
    private Stype stype;
//  产品名字
    private String productName;
//  产品产地
    private String productPro;
// 产品品牌
    private String productBrand;
// 产品数量
    private Integer productNum;
//  发货地
    private String productFrom;
//  产品价格
    private double productPrice;
//  进货时间
    private Date productTime;
//   产品描述
    private String productDesc;
//  产品状态
    private String productState;

    public Integer getProductId() {
        return productId;
    }

    public void setProductId(Integer productId) {
        this.productId = productId;
    }

    public Stype getStype() {
        return stype;
    }

    public void setStype(Stype stype) {
        this.stype = stype;
    }

    public String getProductName() {
        return productName;
    }

    public void setProductName(String productName) {
        this.productName = productName == null ? null : productName.trim();
    }

    public String getProductPro() {
        return productPro;
    }

    public void setProductPro(String productPro) {
        this.productPro = productPro == null ? null : productPro.trim();
    }

    public String getProductBrand() {
        return productBrand;
    }

    public void setProductBrand(String productBrand) {
        this.productBrand = productBrand == null ? null : productBrand.trim();
    }

    public Integer getProductNum() {
        return productNum;
    }

    public void setProductNum(Integer productNum) {
        this.productNum = productNum;
    }

    public String getProductFrom() {
        return productFrom;
    }

    public void setProductFrom(String productFrom) {
        this.productFrom = productFrom == null ? null : productFrom.trim();
    }

    public double getProductPrice() {
        return productPrice;
    }

    public void setProductPrice(double productPrice) {
        this.productPrice = productPrice;
    }

    public Date getProductTime() {
        return productTime;
    }

    public void setProductTime(Date productTime) {
        this.productTime = productTime;
    }

    public String getProductDesc() {
        return productDesc;
    }

    public void setProductDesc(String productDesc) {
        this.productDesc = productDesc == null ? null : productDesc.trim();
    }

    public String getProductState() {
        return productState;
    }

    public void setProductState(String productState) {
        this.productState = productState == null ? null : productState.trim();
    }

    @Override
    public String toString() {
        return "Product{" +
                "productId=" + productId +
                ", stype=" + stype +
                ", productName='" + productName + '\'' +
                ", productPro='" + productPro + '\'' +
                ", productBrand='" + productBrand + '\'' +
                ", productNum=" + productNum +
                ", productFrom='" + productFrom + '\'' +
                ", productPrice=" + productPrice +
                ", productTime=" + productTime +
                ", productDesc='" + productDesc + '\'' +
                ", productState='" + productState + '\'' +
                '}';
    }
}