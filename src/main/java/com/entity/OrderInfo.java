package com.entity;

public class OrderInfo {
    private Integer id;
    private Integer ofOrder;
    private Integer goods;
    private String product_name;

    public OrderInfo() {
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getOfOrder() {
        return ofOrder;
    }

    public Integer getGoods() {
        return goods;
    }

    public void setGoods(Integer goods) {
        this.goods = goods;
    }

    public void setOfOrder(Integer ofOrder) {
        this.ofOrder = ofOrder;
    }

    public String getProduct_name() {
        return product_name;
    }

    public void setProduct_name(String product_name) {
        this.product_name = product_name;
    }

    @Override
    public String toString() {
        return "OrderInfo{" +
                "id=" + id +
                ", ofOrder=" + ofOrder +
                ", goods='" + goods + '\'' +
                ", product_name='" + product_name + '\'' +
                '}';
    }
}
