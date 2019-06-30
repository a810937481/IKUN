package com.entity;

public class Administrators {

    private int ad_id;
    private String ad_name;
    private String ad_password;
    private String ad_nickname;
    private String ad_power;

    public Administrators(){}

    public int getAd_id() {
        return ad_id;
    }

    public void setAd_id(int ad_id) {
        this.ad_id = ad_id;
    }

    public String getAd_name() {
        return ad_name;
    }

    public void setAd_name(String ad_name) {
        this.ad_name = ad_name;
    }

    public String getAd_password() {
        return ad_password;
    }

    public void setAd_password(String ad_password) {
        this.ad_password = ad_password;
    }

    public String getAd_nickname() {
        return ad_nickname;
    }

    public void setAd_nickname(String ad_nickname) {
        this.ad_nickname = ad_nickname;
    }

    public String getAd_power() {
        return ad_power;
    }

    public void setAd_power(String ad_power) {
        this.ad_power = ad_power;
    }

    @Override
    public String toString() {
        return "Administrators{" +
                "ad_id=" + ad_id +
                ", ad_name='" + ad_name + '\'' +
                ", ad_password='" + ad_password + '\'' +
                ", ad_nickname='" + ad_nickname + '\'' +
                ", ad_power='" + ad_power + '\'' +
                '}';
    }
}
