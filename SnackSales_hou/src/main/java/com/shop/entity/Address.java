package com.shop.entity;

public class Address {
    private Integer addressId;

    private User user;

    private String addressName;

    private String receiverName;

    private String phonenum;

    private String unicode;

    public Integer getAddressId() {
        return addressId;
    }

    public void setAddressId(Integer addressId) {
        this.addressId = addressId;
    }

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }

    public String getAddressName() {
        return addressName;
    }

    public void setAddressName(String addressName) {
        this.addressName = addressName == null ? null : addressName.trim();
    }

    public String getReceiverName() {
        return receiverName;
    }

    public void setReceiverName(String receiverName) {
        this.receiverName = receiverName == null ? null : receiverName.trim();
    }

    public String getPhonenum() {
        return phonenum;
    }

    public void setPhonenum(String phonenum) {
        this.phonenum = phonenum == null ? null : phonenum.trim();
    }

    public String getUnicode() {
        return unicode;
    }

    public void setUnicode(String unicode) {
        this.unicode = unicode == null ? null : unicode.trim();
    }

    @Override
    public String toString() {
        return "Address{" +
                "addressId=" + addressId +
                ", user=" + user +
                ", addressName='" + addressName + '\'' +
                ", receiverName='" + receiverName + '\'' +
                ", phonenum='" + phonenum + '\'' +
                ", unicode='" + unicode + '\'' +
                '}';
    }
}