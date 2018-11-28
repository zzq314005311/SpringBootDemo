package cn.pojo;

public class UserImpression {
	private Integer id;

	private String reputation;

	private Integer lawtypeId;

	private Integer userId;

	private String details;

	private Integer lawyerId;
	private String attitude;
	private String recovery_time;

	
	
	public String getAttitude() {
		return attitude;
	}

	public void setAttitude(String attitude) {
		this.attitude = attitude;
	}

	public String getRecovery_time() {
		return recovery_time;
	}

	public void setRecovery_time(String recovery_time) {
		this.recovery_time = recovery_time;
	}

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getReputation() {
		return reputation;
	}

	public void setReputation(String reputation) {
		this.reputation = reputation == null ? null : reputation.trim();
	}

	public Integer getLawtypeId() {
		return lawtypeId;
	}

	public void setLawtypeId(Integer lawtypeId) {
		this.lawtypeId = lawtypeId;
	}

	public Integer getUserId() {
		return userId;
	}

	public void setUserId(Integer userId) {
		this.userId = userId;
	}

	public String getDetails() {
		return details;
	}

	public void setDetails(String details) {
		this.details = details == null ? null : details.trim();
	}

	public Integer getLawyerId() {
		return lawyerId;
	}

	public void setLawyerId(Integer lawyerId) {
		this.lawyerId = lawyerId;
	}
}