package cn.pojo;

import java.io.Serializable;

public class LawyerInfo implements Serializable {
	private int id;
	private String description;
	private int lawTypeId;
	private String typeName;
	
	
	
	public String getTypeName() {
		return typeName;
	}
	public void setTypeName(String typeName) {
		this.typeName = typeName;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public int getLawTypeId() {
		return lawTypeId;
	}
	public void setLawTypeId(int lawTypeId) {
		this.lawTypeId = lawTypeId;
	}

}
