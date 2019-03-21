package com.how2java.pojo;

public class Skillcertificate {
    private Integer scid;

    private String scname;

    private String sccontent;

    public Integer getScid() {
        return scid;
    }

    public void setScid(Integer scid) {
        this.scid = scid;
    }

    public String getScname() {
        return scname;
    }

    public void setScname(String scname) {
        this.scname = scname == null ? null : scname.trim();
    }

    public String getSccontent() {
        return sccontent;
    }

    public void setSccontent(String sccontent) {
        this.sccontent = sccontent == null ? null : sccontent.trim();
    }
}