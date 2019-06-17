package com.entity;

public class Product {
    private Integer product_id;//产品id
    private String product_name;//产品名称
    private String product_info;//产品的信息
    private Integer company_id;//留公司id，多表查询公司的信息（联系方式，地址等） 可为null
    private String coment;//产品的评价

    public Product() {
    }

    public Integer getProduct_id() {
        return product_id;
    }

    public void setProduct_id(Integer product_id) {
        this.product_id = product_id;
    }

    public String getProduct_name() {
        return product_name;
    }

    public void setProduct_name(String product_name) {
        this.product_name = product_name;
    }

    public String getProduct_info() {
        return product_info;
    }

    public void setProduct_info(String product_info) {
        this.product_info = product_info;
    }

    public Integer getCompany_id() {
        return company_id;
    }

    public void setCompany_id(Integer company_id) {
        this.company_id = company_id;
    }

    public String getComent() {
        return coment;
    }

    public void setComent(String coment) {
        this.coment = coment;
    }

    @Override
    public String toString() {
        return "Product{" +
                "product_id=" + product_id +
                ", product_name='" + product_name + '\'' +
                ", product_info='" + product_info + '\'' +
                ", company_id=" + company_id +
                ", coment='" + coment + '\'' +
                '}';
    }
}
