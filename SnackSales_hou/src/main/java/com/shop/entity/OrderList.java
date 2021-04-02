package com.shop.entity;

import java.sql.Date;
import java.util.List;

public class OrderList {
    private List<String> proName;
    private Double price;
    private Date date;
    private OrderState orderState;
    private List<String> proImg;
    public String orderName;
    public int count;

    public int getCount() {
        return count;
    }

    public void setCount(int count) {
        this.count = count;
    }

    public String getOrderName() {
        return orderName;
    }

    public void setOrderName(String orderName) {
        this.orderName = orderName;
    }

    public List<String> getProName() {
        return proName;
    }

    public void setProName(List<String> proName) {
        this.proName = proName;
    }

    public List<String> getProImg() {
        return proImg;
    }

    public void setProImg(List<String> proImg) {
        this.proImg = proImg;
    }

    public Double getPrice() {
        return price;
    }

    public void setPrice(Double price) {
        this.price = price;
    }

    public Date getDate() {
        return date;
    }

    public void setDate(Date date) {
        this.date = date;
    }

    public OrderState getOrderState() {
        return orderState;
    }

    public void setOrderState(OrderState orderState) {
        this.orderState = orderState;
    }

    @Override
    public String toString() {
        return "OrderList{" +
                "proName=" + proName +
                ", price=" + price +
                ", date=" + date +
                ", orderState=" + orderState +
                ", proImg=" + proImg +
                ", orderName='" + orderName + '\'' +
                ", count=" + count +
                '}';
    }
}
