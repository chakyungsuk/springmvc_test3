package com.junefw.infra.modules.member;

public class MemberVo {
	
// Vo

	//member
	private String ifmmSeq;
	private String ifmmId;
	private String ifmmPassword;
	private Integer ifmmSaved;
	private Integer ifmmDelNy;

	//memberEmail
	private String fdmeEmailFull;
	
	//memberMobile
	private String fdmpNumber;
	private String mobile;
	
//	//shmemberId = search
//	private String shFdcgName;
//	private Integer shFdcgDelNy;
//	
//	//common
//	private String shOption;
//	private String shValue;
	
//	//paging
//	private int thisPage = 1;									// 현재 페이지
//	private int rowNumToShow = 5;								// 화면에 보여줄 데이터 줄 갯수
//	private int pageNumToShow = 3;								// 화면에 보여줄 페이징 번호 갯수
//
//	private int totalRows;										// 전체 데이터 갯수
//	private int totalPages;										// 전체 페이지 번호
//	private int startPage;										// 시작 페이지 번호
//	private int endPage;										// 마지막 페이지 번호
//	
//	private int startRnumForOracle = 1;							// 쿼리 시작 row
//	private int endRnumForOracle;								// 쿼리 끝 row
//	private Integer RNUM;
//	
//	private int startRnumForMysql = 0;							// 쿼리 시작 row
	
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
