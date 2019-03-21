package com.how2java.pojo;

import java.util.Date;

public class Account {
    private String idCard;

    private Integer AuserId;

    private String politics;

    private String nation;

    private String majorField;

    private Date birthday;

    private String archivesInSchool;

    private String rResidenceInSchool;

    private String archivesPath;

    private String rResidencePath;

    private Integer qqNum;

    private Integer phoneNum;

    private String email;

    public String getIdCard() {
        return idCard;
    }

    public void setIdCard(String idCard) {
        this.idCard = idCard;
    }

    public Integer getAuserId() {
        return AuserId;
    }

    public void setAuserId(Integer auserId) {
        AuserId = auserId;
    }

    public String getPolitics() {
        return politics;
    }

    public void setPolitics(String politics) {
        this.politics = politics;
    }

    public String getNation() {
        return nation;
    }

    public void setNation(String nation) {
        this.nation = nation;
    }

    public String getMajorField() {
        return majorField;
    }

    public void setMajorField(String majorField) {
        this.majorField = majorField;
    }

    public Date getBirthday() {
        return birthday;
    }

    public void setBirthday(Date birthday) {
        this.birthday = birthday;
    }

    public String getArchivesInSchool() {
        return archivesInSchool;
    }

    public void setArchivesInSchool(String archivesInSchool) {
        this.archivesInSchool = archivesInSchool;
    }

    public String getrResidenceInSchool() {
        return rResidenceInSchool;
    }

    public void setrResidenceInSchool(String rResidenceInSchool) {
        this.rResidenceInSchool = rResidenceInSchool;
    }

    public String getArchivesPath() {
        return archivesPath;
    }

    public void setArchivesPath(String archivesPath) {
        this.archivesPath = archivesPath;
    }

    public String getrResidencePath() {
        return rResidencePath;
    }

    public void setrResidencePath(String rResidencePath) {
        this.rResidencePath = rResidencePath;
    }

    public Integer getQqNum() {
        return qqNum;
    }

    public void setQqNum(Integer qqNum) {
        this.qqNum = qqNum;
    }

    public Integer getPhoneNum() {
        return phoneNum;
    }

    public void setPhoneNum(Integer phoneNum) {
        this.phoneNum = phoneNum;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }
}