package com.how2java.pojo;

public class Poorstudentcard {
    private Integer poorid;

    private String poorstate;

    private String pobtainprogress;

    private String phelpcontent;

    private String phelpcontacts;

    private Integer phelpphone;

    public Integer getPoorid() {
        return poorid;
    }

    public void setPoorid(Integer poorid) {
        this.poorid = poorid;
    }

    public String getPoorstate() {
        return poorstate;
    }

    public void setPoorstate(String poorstate) {
        this.poorstate = poorstate == null ? null : poorstate.trim();
    }

    public String getPobtainprogress() {
        return pobtainprogress;
    }

    public void setPobtainprogress(String pobtainprogress) {
        this.pobtainprogress = pobtainprogress == null ? null : pobtainprogress.trim();
    }

    public String getPhelpcontent() {
        return phelpcontent;
    }

    public void setPhelpcontent(String phelpcontent) {
        this.phelpcontent = phelpcontent == null ? null : phelpcontent.trim();
    }

    public String getPhelpcontacts() {
        return phelpcontacts;
    }

    public void setPhelpcontacts(String phelpcontacts) {
        this.phelpcontacts = phelpcontacts == null ? null : phelpcontacts.trim();
    }

    public Integer getPhelpphone() {
        return phelpphone;
    }

    public void setPhelpphone(Integer phelpphone) {
        this.phelpphone = phelpphone;
    }
}