package cn.pojo;

import java.io.Serializable;

public class Lawyer implements Serializable {
    private Integer id;

    private String name;

    private String pwd;

    private String phonenum;

    private String address;

    private String lawyercard;

    private Integer majormajorid;

    private Integer minormajorid;

    private Integer reputation;

    private Integer average;

    private Integer helpcount;

    private Integer oline;

    private String head;

    private String describe;

    private String service_Time;

    private String service_Address;

    private String seniority;

    private String institutions;

    private String email;
    
    private Lawtype lawtypeMajormajorid;
    
    private Lawtype lawtypeMinormajorid;
    
    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name == null ? null : name.trim();
    }

    public String getPwd() {
        return pwd;
    }

    public void setPwd(String pwd) {
        this.pwd = pwd == null ? null : pwd.trim();
    }

    public String getPhonenum() {
        return phonenum;
    }

    public void setPhonenum(String phonenum) {
        this.phonenum = phonenum == null ? null : phonenum.trim();
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address == null ? null : address.trim();
    }

    public String getLawyercard() {
        return lawyercard;
    }

    public void setLawyercard(String lawyercard) {
        this.lawyercard = lawyercard == null ? null : lawyercard.trim();
    }

    public Integer getMajormajorid() {
        return majormajorid;
    }

    public void setMajormajorid(Integer majormajorid) {
        this.majormajorid = majormajorid;
    }

    public Integer getMinormajorid() {
        return minormajorid;
    }

    public void setMinormajorid(Integer minormajorid) {
        this.minormajorid = minormajorid;
    }

    public Integer getReputation() {
        return reputation;
    }

    public void setReputation(Integer reputation) {
        this.reputation = reputation;
    }

    public Integer getAverage() {
        return average;
    }

    public void setAverage(Integer average) {
        this.average = average;
    }

    public Integer getHelpcount() {
        return helpcount;
    }

    public void setHelpcount(Integer helpcount) {
        this.helpcount = helpcount;
    }

    public Integer getOline() {
        return oline;
    }

    public void setOline(Integer oline) {
        this.oline = oline;
    }

    public String getHead() {
        return head;
    }

    public void setHead(String head) {
        this.head = head == null ? null : head.trim();
    }

    public String getDescribe() {
        return describe;
    }


	

	public Lawtype getLawtypeMajormajorid() {
		return lawtypeMajormajorid;
	}

	public void setLawtypeMajormajorid(Lawtype lawtypeMajormajorid) {
		this.lawtypeMajormajorid = lawtypeMajormajorid;
	}

	public Lawtype getLawtypeMinormajorid() {
		return lawtypeMinormajorid;
	}

	public void setLawtypeMinormajorid(Lawtype lawtypeMinormajorid) {
		this.lawtypeMinormajorid = lawtypeMinormajorid;
	}

	public void setDescribe(String describe) {
        this.describe = describe == null ? null : describe.trim();
    }

    public String getService_Time() {
        return service_Time;
    }

    public void setService_Time(String service_Time) {
        this.service_Time = service_Time == null ? null : service_Time.trim();
    }

    public String getService_Address() {
        return service_Address;
    }

    public void setService_Address(String service_Address) {
        this.service_Address = service_Address == null ? null : service_Address.trim();
    }

    public String getSeniority() {
        return seniority;
    }

    public void setSeniority(String seniority) {
        this.seniority = seniority == null ? null : seniority.trim();
    }

    public String getInstitutions() {
        return institutions;
    }

    public void setInstitutions(String institutions) {
        this.institutions = institutions == null ? null : institutions.trim();
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email == null ? null : email.trim();
    }
}