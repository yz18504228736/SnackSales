package com.shop.entity;

import java.util.Date;
import java.util.List;

public class OrderList {
    private List<NameImg> nameImg;
    private Double price;
    private Date date;
    private OrderState orderState;
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

    public List<NameImg> getNameImg() {
        return nameImg;
    }

    public void setNameImg(List<NameImg> nameImg) {
        this.nameImg = nameImg;
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
                "nameImg=" + nameImg +
                ", price=" + price +
                ", date=" + date +
                ", orderState=" + orderState +
                ", orderName='" + orderName + '\'' +
                ", count=" + count +
                '}';
    }
}
