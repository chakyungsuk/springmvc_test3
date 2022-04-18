package com.junefw.infra.modules.member;

import java.util.Date;

import org.springframework.web.multipart.MultipartFile;

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
	private String ifmmDesc;
	
	/* @DateTimeFormat */
	
	//memberEmail
	private String fdmeEmailFull;
	
	//memberMobile
	private String fdmpNumber;
	private String mobile;
	private Integer fdmpTelecomCd;
	
	//memberAddress
	private String fdmaZipcode;
	private String fdmaTitle1;
	private String fdmaTitle2;
	private String fdmaAddress;
	private Double fdmaLat;
	private Double fdmaLng;
	
	
	//memberAddressArray
	private String[] fdmaZipcodeArray;
	private String[] fdmaTitle1Array;
	private String[] fdmaTitle2Array;
	private String[] fdmaAddressArray;
	private Double[] fdmaLatArray;
	private Double[] fdmaLngArray;
	
	//file
	private MultipartFile[] file0;
	private MultipartFile[] file1;
	
	//fileUploaded
	private String TableName;
	private String Seq;
	private Integer type;
	private Integer defaultNy;
	private Integer sort;
	private String originalName;
	private String uuidName;
	private String ext;
	private Long size;
	private Integer DelNy;
	private String Path;
	private String pseq;
	
	private String originalFileName;
	private String uuidFileName;
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

	public Integer getFdmpTelecomCd() {
		return fdmpTelecomCd;
	}

	public void setFdmpTelecomCd(Integer fdmpTelecomCd) {
		this.fdmpTelecomCd = fdmpTelecomCd;
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

	public String getFdmaAddress() {
		return fdmaAddress;
	}

	public void setFdmaAddress(String fdmaAddress) {
		this.fdmaAddress = fdmaAddress;
	}

	public Double getFdmaLat() {
		return fdmaLat;
	}

	public void setFdmaLat(Double fdmaLat) {
		this.fdmaLat = fdmaLat;
	}

	public Double getFdmaLng() {
		return fdmaLng;
	}

	public void setFdmaLng(Double fdmaLng) {
		this.fdmaLng = fdmaLng;
	}

	public String[] getFdmaZipcodeArray() {
		return fdmaZipcodeArray;
	}

	public void setFdmaZipcodeArray(String[] fdmaZipcodeArray) {
		this.fdmaZipcodeArray = fdmaZipcodeArray;
	}

	public String[] getFdmaTitle1Array() {
		return fdmaTitle1Array;
	}

	public void setFdmaTitle1Array(String[] fdmaTitle1Array) {
		this.fdmaTitle1Array = fdmaTitle1Array;
	}

	public String[] getFdmaTitle2Array() {
		return fdmaTitle2Array;
	}

	public void setFdmaTitle2Array(String[] fdmaTitle2Array) {
		this.fdmaTitle2Array = fdmaTitle2Array;
	}

	public String[] getFdmaAddressArray() {
		return fdmaAddressArray;
	}

	public void setFdmaAddressArray(String[] fdmaAddressArray) {
		this.fdmaAddressArray = fdmaAddressArray;
	}

	public Double[] getFdmaLatArray() {
		return fdmaLatArray;
	}

	public void setFdmaLatArray(Double[] fdmaLatArray) {
		this.fdmaLatArray = fdmaLatArray;
	}

	public Double[] getFdmaLngArray() {
		return fdmaLngArray;
	}

	public void setFdmaLngArray(Double[] fdmaLngArray) {
		this.fdmaLngArray = fdmaLngArray;
	}

	public MultipartFile[] getFile0() {
		return file0;
	}

	public void setFile0(MultipartFile[] file0) {
		this.file0 = file0;
	}

	public MultipartFile[] getFile1() {
		return file1;
	}

	public void setFile1(MultipartFile[] file1) {
		this.file1 = file1;
	}

	public String getTableName() {
		return TableName;
	}

	public void setTableName(String tableName) {
		TableName = tableName;
	}

	public String getSeq() {
		return Seq;
	}

	public void setSeq(String seq) {
		Seq = seq;
	}

	public Integer getType() {
		return type;
	}

	public void setType(Integer type) {
		this.type = type;
	}

	public Integer getDefaultNy() {
		return defaultNy;
	}

	public void setDefaultNy(Integer defaultNy) {
		this.defaultNy = defaultNy;
	}

	public Integer getSort() {
		return sort;
	}

	public void setSort(Integer sort) {
		this.sort = sort;
	}

	public String getOriginalName() {
		return originalName;
	}

	public void setOriginalName(String originalName) {
		this.originalName = originalName;
	}

	public String getUuidName() {
		return uuidName;
	}

	public void setUuidName(String uuidName) {
		this.uuidName = uuidName;
	}

	public String getExt() {
		return ext;
	}

	public void setExt(String ext) {
		this.ext = ext;
	}

	public Long getSize() {
		return size;
	}

	public void setSize(Long size) {
		this.size = size;
	}

	public Integer getDelNy() {
		return DelNy;
	}

	public void setDelNy(Integer delNy) {
		DelNy = delNy;
	}

	public String getPseq() {
		return pseq;
	}

	public void setPseq(String pseq) {
		this.pseq = pseq;
	}

	public String getOriginalFileName() {
		return originalFileName;
	}

	public void setOriginalFileName(String originalFileName) {
		this.originalFileName = originalFileName;
	}

	public String getUuidFileName() {
		return uuidFileName;
	}

	public void setUuidFileName(String uuidFileName) {
		this.uuidFileName = uuidFileName;
	}

	public Integer getIfmmEmailConsentNy() {
		return ifmmEmailConsentNy;
	}

	public void setIfmmEmailConsentNy(Integer ifmmEmailConsentNy) {
		this.ifmmEmailConsentNy = ifmmEmailConsentNy;
	}

	public Integer getIfmmSmsConsentNy() {
		return ifmmSmsConsentNy;
	}

	public void setIfmmSmsConsentNy(Integer ifmmSmsConsentNy) {
		this.ifmmSmsConsentNy = ifmmSmsConsentNy;
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
		RegDateTime = regDateTime;
	}

	public Date getModDateTime() {
		return ModDateTime;
	}

	public void setModDateTime(Date modDateTime) {
		ModDateTime = modDateTime;
	}

	public String[] getCheckboxSeqArray() {
		return checkboxSeqArray;
	}

	public void setCheckboxSeqArray(String[] checkboxSeqArray) {
		this.checkboxSeqArray = checkboxSeqArray;
	}

	public String getIfmmDesc() {
		return ifmmDesc;
	}

	public void setIfmmDesc(String ifmmDesc) {
		this.ifmmDesc = ifmmDesc;
	}

	public String getPath() {
		return Path;
	}

	public void setPath(String path) {
		Path = path;
	}
	
	
	
}
