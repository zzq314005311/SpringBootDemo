package cn.pojo;

import java.util.Date;

public class Reply {
	private int id;
	private int entrust_id;
	private String content;
	private Date time;
	private String name;
	private String head;
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public int getEntrust_id() {
		return entrust_id;
	}
	public void setEntrust_id(int entrust_id) {
		this.entrust_id = entrust_id;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public Date getTime() {
		return time;
	}
	public void setTime(Date time) {
		this.time = time;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getHead() {
		return head;
	}
	public void setHead(String head) {
		this.head = head;
	}
	
	
}
