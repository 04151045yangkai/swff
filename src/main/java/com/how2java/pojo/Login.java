package com.how2java.pojo;

public class Login {

    private int userid;

    private String password;

    private int  userflag;

    public Login() {
    }

    public Login(int userid, String password) {
        this.userid = userid;
        this.password = password;
    }

    public Login(int userid, String password, int userflag) {

        this.userid = userid;
        this.password = password;
        this.userflag = userflag;
    }

    public int getUserid() {
        return userid;
    }

    public void setUserid(int userid) {
        this.userid = userid;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public int getUserflag() {
        return userflag;
    }

    public void setUserflag(int userflag) {
        this.userflag = userflag;
    }

    @Override
    public String toString() {
        return "Login{" +
                "userid=" + userid +
                ", password='" + password + '\'' +
                ", userflag=" + userflag +
                '}';
    }
}
