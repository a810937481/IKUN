package com.entity;

public class Company {
    private String compan_info;//公司简介
    private Integer company_id;//公司id
    private String company_name;//公司名称
    private String contact;//联系方式
    private String address;//地址
    private Integer company_status;//公司状态
    private Integer company_kind;//公司类别
    private Integer user_id;//？？对应的用户表里的ID

    public Company() {
    }

    public String getCompan_info() {
        return compan_info;
    }

    public void setCompan_info(String compan_info) {
        this.compan_info = compan_info;
    }

    public Integer getCompany_id() {
        return company_id;
    }

    public void setCompany_id(Integer company_id) {
        this.company_id = company_id;
    }

    public String getCompany_name() {
        return company_name;
    }

    public void setCompany_name(String company_name) {
        this.company_name = company_name;
    }

    public String getContact() {
        return contact;
    }

    public void setContact(String contact) {
        this.contact = contact;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public Integer getCompany_status() {
        return company_status;
    }

    public void setCompany_status(Integer company_status) {
        this.company_status = company_status;
    }

    public Integer getCompany_kind() {
        return company_kind;
    }

    public void setCompany_kind(Integer company_kind) {
        this.company_kind = company_kind;
    }

    public Integer getUser_id() {
        return user_id;
    }

    public void setUser_id(Integer user_id) {
        this.user_id = user_id;
    }

    @Override
    public String toString() {
        return "Company{" +
                "compan_info='" + compan_info + '\'' +
                ", company_id=" + company_id +
                ", company_name='" + company_name + '\'' +
                ", contact='" + contact + '\'' +
                ", address='" + address + '\'' +
                ", company_status=" + company_status +
                ", company_kind=" + company_kind +
                ", user_id=" + user_id +
                '}';
    }
}
