package com.shop.entity.VO;


import com.shop.entity.Product;

public class ProductVO {
    private int btypeId;
    private int stypeId;
    private String [] sizes;
    private Product product;

    public int getBtypeId() {
        return btypeId;
    }

    public void setBtypeId(int btypeId) {
        this.btypeId = btypeId;
    }

    public int getStypeId() {
        return stypeId;
    }

    public void setStypeId(int stypeId) {
        this.stypeId = stypeId;
    }

    public String[] getSizes() {
        return sizes;
    }

    public void setSizes(String[] sizes) {
        this.sizes = sizes;
    }

    public Product getProduct() {
        return product;
    }

    public void setProduct(Product product) {
        this.product = product;
    }

}
