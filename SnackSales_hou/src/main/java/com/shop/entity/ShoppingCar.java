package com.shop.entity;

public class ShoppingCar {
    private Integer shoppingcartId;

    private User user;

    private Integer shoppingcartProNum;

    private Long shoppingcartProPrice;

    private String shoppingcartProName;

    private String shoppingcartProSize;

    private String shoppingcartProImg;

    public Integer getShoppingcartId() {
        return shoppingcartId;
    }

    public void setShoppingcartId(Integer shoppingcartId) {
        this.shoppingcartId = shoppingcartId;
    }

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }

    public Integer getShoppingcartProNum() {
        return shoppingcartProNum;
    }

    public void setShoppingcartProNum(Integer shoppingcartProNum) {
        this.shoppingcartProNum = shoppingcartProNum;
    }

    public Long getShoppingcartProPrice() {
        return shoppingcartProPrice;
    }

    public void setShoppingcartProPrice(Long shoppingcartProPrice) {
        this.shoppingcartProPrice = shoppingcartProPrice;
    }

    public String getShoppingcartProName() {
        return shoppingcartProName;
    }

    public void setShoppingcartProName(String shoppingcartProName) {
        this.shoppingcartProName = shoppingcartProName == null ? null : shoppingcartProName.trim();
    }

    public String getShoppingcartProSize() {
        return shoppingcartProSize;
    }

    public void setShoppingcartProSize(String shoppingcartProSize) {
        this.shoppingcartProSize = shoppingcartProSize == null ? null : shoppingcartProSize.trim();
    }

    public String getShoppingcartProImg() {
        return shoppingcartProImg;
    }

    public void setShoppingcartProImg(String shoppingcartProImg) {
        this.shoppingcartProImg = shoppingcartProImg == null ? null : shoppingcartProImg.trim();
    }

    @Override
    public String toString() {
        return "ShoppingCar{" +
                "shoppingcartId=" + shoppingcartId +
                ", user=" + user +
                ", shoppingcartProNum=" + shoppingcartProNum +
                ", shoppingcartProPrice=" + shoppingcartProPrice +
                ", shoppingcartProName='" + shoppingcartProName + '\'' +
                ", shoppingcartProSize='" + shoppingcartProSize + '\'' +
                ", shoppingcartProImg='" + shoppingcartProImg + '\'' +
                '}';
    }
}