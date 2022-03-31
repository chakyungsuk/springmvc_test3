package com.junefw.infra.modules.member;

import java.util.Date;

public class Member {
// dto	
	
	//member
	private String ifmmSeq;
	private String ifmmId;
	private String ifmmPassword;
	private String ifmmName;
	private Integer ifmmGenderCd;
	private String ifmmDob;
	private Integer ifmmDelNy;
	private String ifmmSaved;
	/* @DateTimeFormat */
	
	//memberEmail
	private String fdmeEmailFull;
	
	//memberMobile
	private String fdmpNumber;
	private String mobile;
	private String fdmpTelecomCd;
	
	//memberAddress
	private String fdmaZipcode;
	private String fdmaTitle1;
	private String fdmaTitle2;
	private String fdmaAddress;
	
	
	//ConsentNy
	private Integer ifmmEmailConsentNy;
	private Integer ifmmSmsConsentNy;
	private String EmailConsent;
	private String MobileConsent;
	
	//Date
	private Date RegDateTime;
	private Date ModDateTime;
	
	// checkbox
	private String[] checkboxSeqArray;
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
	public String getIfmmSaved() {
		return ifmmSaved;
	}
	public void setIfmmSaved(String ifmmSaved) {
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
	public Integer getIfmmSmsConsentNy() {
		return ifmmSmsConsentNy;
	}
	public void setIfmmSmsConsentNy(Integer ifmmSmsConsentNy) {
		this.ifmmSmsConsentNy = ifmmSmsConsentNy;
	}
	public Integer getIfmmEmailConsentNy() {
		return ifmmEmailConsentNy;
	}
	public void setIfmmEmailConsentNy(Integer ifmmEmailConsentNy) {
		this.ifmmEmailConsentNy = ifmmEmailConsentNy;
	}
	public String getEmailConsent() {
		return EmailConsent;
	}
	public void setEmailConsent(String emailConsent) {
		EmailConsent = emailConsent;
	}
	public String getMobileConsent() {
		return MobileConsent;
	}
	public void setMobileConsent(String mobileConsent) {
		MobileConsent = mobileConsent;
	}
	public Date getRegDateTime() {
		return RegDateTime;
	}
    public void setRegDateTime(Date regDateTime) {
		this.RegDateTime = regDateTime;
	}
	public Date getModDateTime() {
		return ModDateTime;
	}
	public void setModDateTime(Date modDateTime) {
		this.ModDateTime = modDateTime;
	}
	public String getIfmmName() {
		return ifmmName;
	}
	public void setIfmmName(String ifmmName) {
		this.ifmmName = ifmmName;
	}
	public Integer getIfmmGenderCd() {
		return ifmmGenderCd;
	}
	public void setIfmmGenderCd(Integer ifmmGenderCd) {
		this.ifmmGenderCd = ifmmGenderCd;
	}
	public String getIfmmDob() {
		return ifmmDob;
	}
	public void setIfmmDob(String ifmmDob) {
		this.ifmmDob = ifmmDob;
	}
	public String getFdmaAddress() {
		return fdmaAddress;
	}
	public void setFdmaAddress(String fdmaAddress) {
		this.fdmaAddress = fdmaAddress;
	}
	public String[] getCheckboxSeqArray() {
		return checkboxSeqArray;
	}
	public void setCheckboxSeqArray(String[] checkboxSeqArray) {
		this.checkboxSeqArray = checkboxSeqArray;
	}
	public String getFdmaZipcode() {
		return fdmaZipcode;
	}
	public void setFdmaZipcode(String fdmaZipcode) {
		this.fdmaZipcode = fdmaZipcode;
	}
	public String getFdmaTitle1() {
		return fdmaTitle1;
	}
	public void setFdmaTitle1(String fdmaTitle1) {
		this.fdmaTitle1 = fdmaTitle1;
	}
	public String getFdmaTitle2() {
		return fdmaTitle2;
	}
	public void setFdmaTitle2(String fdmaTitle2) {
		this.fdmaTitle2 = fdmaTitle2;
	}
	public String getFdmpTelecomCd() {
		return fdmpTelecomCd;
	}
	public void setFdmpTelecomCd(String fdmpTelecomCd) {
		this.fdmpTelecomCd = fdmpTelecomCd;
	}
	
	
}
