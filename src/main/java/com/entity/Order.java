package com.entity;

import java.sql.Timestamp;
public class Order {
    private Integer order_id;//订单id
    private String number;//订单编号
    private Integer user_id;//消费者
    private Timestamp createTime;//生成时间
    private Integer product_id;//商品信息 多表查询查找product的id （提供商）
    private Integer status;//订单状态 0待支付，1已支付未发货，2完成，3退款，4关闭（退款结束后或者有争议或者取消）

    public Order() {
    }

    public Integer getOrder_id() {
        return order_id;
    }

    public void setOrder_id(Integer order_id) {
        this.order_id = order_id;
    }

    public String getNumber() {
        return number;
    }

    public void setNumber(String number) {
        this.number = number;
    }

    public Integer getUser_id() {
        return user_id;
    }

    public void setUser_id(Integer user_id) {
        this.user_id = user_id;
    }

    public Timestamp getCreateTime() {
        return createTime;
    }

    public void setCreateTime(Timestamp createTime) {
        this.createTime = createTime;
    }

    public Integer getStatus() {
        return status;
    }

    public void setStatus(Integer status) {
        this.status = status;
    }

    public Integer getProduct_id() {
        return product_id;
    }

    public void setProduct_id(Integer product_id) {
        this.product_id = product_id;
    }

    @Override
    public String toString() {
        return "Order{" +
                "order_id=" + order_id +
                ", number='" + number + '\'' +
                ", user_id=" + user_id +
                ", createTime=" + createTime +
                ", product_id=" + product_id +
                ", status=" + status +
                '}';
    }
}
