package com.shop.entity;

import java.sql.Date;

public class Comment {
    private Integer commentId;

    private User user;

    private Product product;

    private String commentContent;

    private Integer commentGrade;

    private Date commentTime;

    public Integer getCommentId() {
        return commentId;
    }

    public void setCommentId(Integer commentId) {
        this.commentId = commentId;
    }

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }

    public Product getProduct() {
        return product;
    }

    public void setProduct(Product product) {
        this.product = product;
    }

    public String getCommentContent() {
        return commentContent;
    }

    public void setCommentContent(String commentContent) {
        this.commentContent = commentContent == null ? null : commentContent.trim();
    }

    public Integer getCommentGrade() {
        return commentGrade;
    }

    public void setCommentGrade(Integer commentGrade) {
        this.commentGrade = commentGrade;
    }

    public Date getCommentTime() {
        return commentTime;
    }

    public void setCommentTime(Date commentTime) {
        this.commentTime = commentTime;
    }

    @Override
    public String toString() {
        return "Comment{" +
                "commentId=" + commentId +
                ", user=" + user +
                ", product=" + product +
                ", commentContent='" + commentContent + '\'' +
                ", commentGrade=" + commentGrade +
                ", commentTime=" + commentTime +
                '}';
    }
}