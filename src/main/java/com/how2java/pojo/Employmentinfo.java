package com.how2java.pojo;

public class Employmentinfo {
    private Integer eiid;

    private String eigraduation;

    private String eiunitname;

    private String eioriganizationcode;

    private String eiunitproperties;

    private String eiunitpindustry;

    private String eicompanyaddress;

    private String eijobposition;

    private String eicontacts;

    private String eicontactsphone;

    private String eicontactemail;

    private String eizipcode;

    private String eifileforwardname;

    private Integer eiffzipcode;

    private String eitransferhousehold;

    private String eifileforwardaddress;

    public Employmentinfo() {
    }

    public Employmentinfo(Integer eiid, String eigraduation, String eiunitname, String eioriganizationcode,
                          String eiunitproperties, String eiunitpindustry, String eicompanyaddress, String eijobposition,
                          String eicontacts, String eicontactsphone, String eicontactemail, String eizipcode,
                          String eifileforwardname, Integer eiffzipcode, String eitransferhousehold, String eifileforwardaddress) {
        this.eiid = eiid;
        this.eigraduation = eigraduation;
        this.eiunitname = eiunitname;
        this.eioriganizationcode = eioriganizationcode;
        this.eiunitproperties = eiunitproperties;
        this.eiunitpindustry = eiunitpindustry;
        this.eicompanyaddress = eicompanyaddress;
        this.eijobposition = eijobposition;
        this.eicontacts = eicontacts;
        this.eicontactsphone = eicontactsphone;
        this.eicontactemail = eicontactemail;
        this.eizipcode = eizipcode;
        this.eifileforwardname = eifileforwardname;
        this.eiffzipcode = eiffzipcode;
        this.eitransferhousehold = eitransferhousehold;
        this.eifileforwardaddress = eifileforwardaddress;
    }

    public Integer getEiid() {
        return eiid;
    }

    public void setEiid(Integer eiid) {
        this.eiid = eiid;
    }

    public String getEigraduation() {
        return eigraduation;
    }

    public void setEigraduation(String eigraduation) {
        this.eigraduation = eigraduation == null ? null : eigraduation.trim();
    }

    public String getEiunitname() {
        return eiunitname;
    }

    public void setEiunitname(String eiunitname) {
        this.eiunitname = eiunitname == null ? null : eiunitname.trim();
    }

    public String getEioriganizationcode() {
        return eioriganizationcode;
    }

    public void setEioriganizationcode(String eioriganizationcode) {
        this.eioriganizationcode = eioriganizationcode == null ? null : eioriganizationcode.trim();
    }

    public String getEiunitproperties() {
        return eiunitproperties;
    }

    public void setEiunitproperties(String eiunitproperties) {
        this.eiunitproperties = eiunitproperties == null ? null : eiunitproperties.trim();
    }

    public String getEiunitpindustry() {
        return eiunitpindustry;
    }

    public void setEiunitpindustry(String eiunitpindustry) {
        this.eiunitpindustry = eiunitpindustry == null ? null : eiunitpindustry.trim();
    }

    public String getEicompanyaddress() {
        return eicompanyaddress;
    }

    public void setEicompanyaddress(String eicompanyaddress) {
        this.eicompanyaddress = eicompanyaddress == null ? null : eicompanyaddress.trim();
    }

    public String getEijobposition() {
        return eijobposition;
    }

    public void setEijobposition(String eijobposition) {
        this.eijobposition = eijobposition == null ? null : eijobposition.trim();
    }

    public String getEicontacts() {
        return eicontacts;
    }

    public void setEicontacts(String eicontacts) {
        this.eicontacts = eicontacts == null ? null : eicontacts.trim();
    }

    public String getEicontactsphone() {
        return eicontactsphone;
    }

    public void setEicontactsphone(String eicontactsphone) {
        this.eicontactsphone = eicontactsphone;
    }

    public String getEicontactemail() {
        return eicontactemail;
    }

    public void setEicontactemail(String eicontactemail) {
        this.eicontactemail = eicontactemail == null ? null : eicontactemail.trim();
    }

    public String getEizipcode() {
        return eizipcode;
    }

    public void setEizipcode(String eizipcode) {
        this.eizipcode = eizipcode == null ? null : eizipcode.trim();
    }

    public String getEifileforwardname() {
        return eifileforwardname;
    }

    public void setEifileforwardname(String eifileforwardname) {
        this.eifileforwardname = eifileforwardname == null ? null : eifileforwardname.trim();
    }

    public Integer getEiffzipcode() {
        return eiffzipcode;
    }

    public void setEiffzipcode(Integer eiffzipcode) {
        this.eiffzipcode = eiffzipcode;
    }

    public String getEitransferhousehold() {
        return eitransferhousehold;
    }

    public void setEitransferhousehold(String eitransferhousehold) {
        this.eitransferhousehold = eitransferhousehold == null ? null : eitransferhousehold.trim();
    }

    public String getEifileforwardaddress() {
        return eifileforwardaddress;
    }

    public void setEifileforwardaddress(String eifileforwardaddress) {
        this.eifileforwardaddress = eifileforwardaddress;
    }
}