package com.junefw.infra.modules.member;

public class Member {
	
	//member
	private String ifmmSeq;
	private String ifmmId;
	private String ifmmPassword;
	private Integer ifmmDelNy;
	private Integer ifmmSaved;
	
	//memberEmail
	private String fdmeEmailFull;
	
	//memberMobile
	private String fdmpNumber;
	private String mobile;
	
//  ============================================	
	
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
	public Integer getIfmmDelNy() {
		return ifmmDelNy;
	}
	public void setIfmmDelNy(Integer ifmmDelNy) {
		this.ifmmDelNy = ifmmDelNy;
	}
	public Integer getIfmmSaved() {
		return ifmmSaved;
	}
	public void setIfmmSaved(Integer ifmmSaved) {
		this.ifmmSaved = ifmmSaved;
	}
	public String getFdmeEmailFull() {
		return fdmeEmailFull;
	}
	public void setFdmeEmailFull(String fdmeEmailFull) {
		this.fdmeEmailFull = fdmeEmailFull;
	}
	public String getFdmpNumber() {
		return fdmpNumber;
	}
	public void setFdmpNumber(String fdmpNumber) {
		this.fdmpNumber = fdmpNumber;
	}
	public String getMobile() {
		return mobile;
	}
	public void setMobile(String mobile) {
		this.mobile = mobile;
	}
	
	
}
