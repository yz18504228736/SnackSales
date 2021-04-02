package com.shop.entity;

public class Favorite {
    private Integer favoriteId;

    private User user;

    private double favoriteProPrice;

    private String favoriteProName;

    private String favoriteProSize;

    private String favoriteProImg;

    public Integer getFavoriteId() {
        return favoriteId;
    }

    public void setFavoriteId(Integer favoriteId) {
        this.favoriteId = favoriteId;
    }

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }

    public double getFavoriteProPrice() {
        return favoriteProPrice;
    }

    public void setFavoriteProPrice(double favoriteProPrice) {
        this.favoriteProPrice = favoriteProPrice;
    }

    public String getFavoriteProName() {
        return favoriteProName;
    }

    public void setFavoriteProName(String favoriteProName) {
        this.favoriteProName = favoriteProName == null ? null : favoriteProName.trim();
    }

    public String getFavoriteProSize() {
        return favoriteProSize;
    }

    public void setFavoriteProSize(String favoriteProSize) {
        this.favoriteProSize = favoriteProSize == null ? null : favoriteProSize.trim();
    }

    public String getFavoriteProImg() {
        return favoriteProImg;
    }

    public void setFavoriteProImg(String favoriteProImg) {
        this.favoriteProImg = favoriteProImg == null ? null : favoriteProImg.trim();
    }

    @Override
    public String toString() {
        return "Favorite{" +
                "favoriteId=" + favoriteId +
                ", user=" + user +
                ", favoriteProPrice=" + favoriteProPrice +
                ", favoriteProName='" + favoriteProName + '\'' +
                ", favoriteProSize='" + favoriteProSize + '\'' +
                ", favoriteProImg='" + favoriteProImg + '\'' +
                '}';
    }
}