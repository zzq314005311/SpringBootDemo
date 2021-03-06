package cn.pojo;

import org.springframework.web.bind.annotation.RequestMapping;

public class User {

	private Integer id;

	private String name;

	private String pwd;

	private String phonenum;

	private String address;

	private String sex;

	private String head;

	private String email;
	
	private int rold;

	public int getRold() {
		return rold;
	}

	public void setRold(int rold) {
		this.rold = rold;
	}

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

	public String getSex() {
		return sex;
	}

	public void setSex(String sex) {
		this.sex = sex == null ? null : sex.trim();
	}

	public String getHead() {
		return head;
	}

	public void setHead(String head) {
		this.head = head == null ? null : head.trim();
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email == null ? null : email.trim();
	}

}