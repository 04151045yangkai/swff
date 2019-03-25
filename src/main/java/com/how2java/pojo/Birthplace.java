package com.how2java.pojo;

public class  Birthplace {
    private Integer birthId;

    private String birthPath;

    private String cityOrTownship;

    private String address;

    private Integer homePhone;

    private Integer zipCode;

    private String isSuballowance;

    public Integer getBirthId() {
        return birthId;
    }

    public void setBirthId(Integer birthId) {
        this.birthId = birthId;
    }

    public String getBirthPath() {
        return birthPath;
    }

    public void setBirthPath(String birthPath) {
        this.birthPath = birthPath;
    }

    public String getCityorTownship() {
        return cityOrTownship;
    }

    public void setCityorTownship(String cityorTownship) {
        this.cityOrTownship = cityorTownship;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public Integer getHomePhone() {
        return homePhone;
    }

    public void setHomePhone(Integer homePhone) {
        this.homePhone = homePhone;
    }

    public Integer getZipCode() {
        return zipCode;
    }

    public void setZipCode(Integer zipCode) {
        this.zipCode = zipCode;
    }

    public String getIssuballowance() {
        return isSuballowance;
    }

    public void setIssuballowance(String isSuballowance) {
        this.isSuballowance = isSuballowance;
    }

    public Birthplace() {
    }

    public Birthplace(Integer birthId, String birthPath, String cityOrTownship, String address, Integer homePhone, Integer zipCode, String isSuballowance) {
        this.birthId = birthId;
        this.birthPath = birthPath;
        this.cityOrTownship = cityOrTownship;
        this.address = address;
        this.homePhone = homePhone;
        this.zipCode = zipCode;
        this.isSuballowance = isSuballowance;
    }
}