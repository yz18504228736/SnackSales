package com.shop.entity;

import java.util.Date;

public class Orders {
    private Integer orderId;

    private User user;

    private OrderState orderState;

    private Integer orderProNum;

    private double orderProPrice;

    private String orderName;

    private Date orderTime;

    private String orderProName;

    private String orderProSize;

    private String orderProImg;

    private String receiverName;

    private String address;

    private String phonenum;

    private Long fee;

    private Date sendtime;

    private String receivetime;

    public Integer getOrderId() {
        return orderId;
    }

    public void setOrderId(Integer orderId) {
        this.orderId = orderId;
    }

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }

    public OrderState getOrderState() {
        return orderState;
    }

    public void setOrderState(OrderState orderState) {
        this.orderState = orderState;
    }

    public Integer getOrderProNum() {
        return orderProNum;
    }

    public void setOrderProNum(Integer orderProNum) {
        this.orderProNum = orderProNum;
    }

    public double getOrderProPrice() {
        return orderProPrice;
    }

    public void setOrderProPrice(double orderProPrice) {
        this.orderProPrice = orderProPrice;
    }

    public String getOrderName() {
        return orderName;
    }

    public void setOrderName(String orderName) {
        this.orderName = orderName == null ? null : orderName.trim();
    }

    public Date getOrderTime() {
        return orderTime;
    }

    public void setOrderTime(Date orderTime) {
        this.orderTime = orderTime;
    }

    public String getOrderProName() {
        return orderProName;
    }

    public void setOrderProName(String orderProName) {
        this.orderProName = orderProName == null ? null : orderProName.trim();
    }

    public String getOrderProSize() {
        return orderProSize;
    }

    public void setOrderProSize(String orderProSize) {
        this.orderProSize = orderProSize == null ? null : orderProSize.trim();
    }

    public String getOrderProImg() {
        return orderProImg;
    }

    public void setOrderProImg(String orderProImg) {
        this.orderProImg = orderProImg == null ? null : orderProImg.trim();
    }

    public String getReceiverName() {
        return receiverName;
    }

    public void setReceiverName(String receiverName) {
        this.receiverName = receiverName == null ? null : receiverName.trim();
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address == null ? null : address.trim();
    }

    public String getPhonenum() {
        return phonenum;
    }

    public void setPhonenum(String phonenum) {
        this.phonenum = phonenum == null ? null : phonenum.trim();
    }

    public Long getFee() {
        return fee;
    }

    public void setFee(Long fee) {
        this.fee = fee;
    }

    public Date getSendtime() {
        return sendtime;
    }

    public void setSendtime(Date sendtime) {
        this.sendtime = sendtime;
    }

    public String getReceivetime() {
        return receivetime;
    }

    public void setReceivetime(String receivetime) {
        this.receivetime = receivetime == null ? null : receivetime.trim();
    }

    @Override
    public String toString() {
        return "Orders{" +
                "orderId=" + orderId +
                ", user=" + user +
                ", orderState=" + orderState +
                ", orderProNum=" + orderProNum +
                ", orderProPrice=" + orderProPrice +
                ", orderName='" + orderName + '\'' +
                ", orderTime=" + orderTime +
                ", orderProName='" + orderProName + '\'' +
                ", orderProSize='" + orderProSize + '\'' +
                ", orderProImg='" + orderProImg + '\'' +
                ", receiverName='" + receiverName + '\'' +
                ", address='" + address + '\'' +
                ", phonenum='" + phonenum + '\'' +
                ", fee=" + fee +
                ", sendtime=" + sendtime +
                ", receivetime='" + receivetime + '\'' +
                '}';
    }
}