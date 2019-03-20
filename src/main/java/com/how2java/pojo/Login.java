package com.how2java.pojo;

import java.io.Serializable;

public class Login implements Serializable {

    private int userId;

    private String passWord;

    private int  userFlag;

    public int getUserId() {
        return userId;
    }

    public void setUserId(int userId) {
        this.userId = userId;
    }

    public String getPassWord() {
        return passWord;
    }

    public void setPassWord(String passWord) {
        this.passWord = passWord;
    }

    public int getUserFlag() {
        return userFlag;
    }

    public void setUserFlag(int userFlag) {
        this.userFlag = userFlag;
    }

    @Override
    public String toString() {
        return "Login{" +
                "userId=" + userId +
                ", passWord='" + passWord + '\'' +
                ", userFlag=" + userFlag +
                '}';
    }

    public Login(int userId, String passWord, int userFlag) {
        this.userId = userId;
        this.passWord = passWord;
        this.userFlag = userFlag;
    }
    public Login() {
    }
}
