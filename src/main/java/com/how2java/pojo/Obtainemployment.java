package com.how2java.pojo;

public class Obtainemployment {
    private Integer oeid;

    private String oeintent;

    private String oeintentcity;

    private String oeintentsalary;

    public Obtainemployment(Integer oeid, String oeintent, String oeintentcity, String oeintentsalary) {
        this.oeid = oeid;
        this.oeintent = oeintent;
        this.oeintentcity = oeintentcity;
        this.oeintentsalary = oeintentsalary;
    }

    public Integer getOeid() {
        return oeid;
    }

    public void setOeid(Integer oeid) {
        this.oeid = oeid;
    }

    public String getOeintent() {
        return oeintent;
    }

    public void setOeintent(String oeintent) {
        this.oeintent = oeintent == null ? null : oeintent.trim();
    }

    public String getOeintentcity() {
        return oeintentcity;
    }

    public void setOeintentcity(String oeintentcity) {
        this.oeintentcity = oeintentcity == null ? null : oeintentcity.trim();
    }

    public String getOeintentsalary() {
        return oeintentsalary;
    }

    public void setOeintentsalary(String oeintentsalary) {
        this.oeintentsalary = oeintentsalary == null ? null : oeintentsalary.trim();
    }
}