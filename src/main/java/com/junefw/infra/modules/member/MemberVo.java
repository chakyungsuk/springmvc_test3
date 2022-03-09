package com.junefw.infra.modules.member;

public class MemberVo {
	
// Vo

	private String ifmmSeq;
	private String ifmmId;
	private String ifmmPassword;
	private Integer ifmmSaved;
	private Integer ifmmDelNy;

	//==========================
	
	public String getIfmmSeq() {
		return ifmmSeq;
	}
	
	public void setIfmmSeq(String ifmmSeq) {
		this.ifmmSeq = ifmmSeq;
	}
	
	public String getIfmmId() {
		return ifmmId;
	}

	public void setIfmmId(String ifmmId) {
		this.ifmmId = ifmmId;
	}

	public String getIfmmPassword() {
		return ifmmPassword;
	}

	public void setIfmmPassword(String ifmmPassword) {
		this.ifmmPassword = ifmmPassword;
	}

	public Integer getIfmmSaved() {
		return ifmmSaved;
	}

	public void setIfmmSaved(Integer ifmmSaved) {
		this.ifmmSaved = ifmmSaved;
	}

	public Integer getIfmmDelNy() {
		return ifmmDelNy;
	}

	public void setIfmmDelNy(Integer ifmmDelNy) {
		this.ifmmDelNy = ifmmDelNy;
	}
	
}
