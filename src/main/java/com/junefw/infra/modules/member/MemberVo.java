package com.junefw.infra.modules.member;

import java.util.Date;

public class MemberVo {
	
// Vo

	//member
	private String ifmmSeq;
	private String ifmmId;
	private String ifmmPassword;
	private String ifmmName;
	private Integer ifmmGenderCd;
	private String ifmmDob;
	private String fdmaAddress;
	private Integer ifmmSaved;
	private Integer ifmmDelNy;

	//memberEmail
	private String fdmeEmailFull;
	
	//memberMobile
	private String fdmpNumber;
	private String mobile;
	private String fdmpTelecomCd;
	
	//ConsentNy
	private Integer ifmmEmailConsentNy;
	private Integer ifmmSmsConsentNy;
	private String EmailConsent;
	private String MobileConsent;
	
	//shmemberId = search
	private String shMemberName;
	private Integer shmemberDelNy;
//	
	//common
	private String shOption;
	private String shValue;
	private Integer shOptionDate;
	private String shDateStart;
	private String shDateEnd;
	private String shDate;
	
	//checkbox
	private String[] checkboxSeqArray;
	
	//paging
	private int thisPage = 1;									// 현재 페이지
	private int rowNumToShow = 5;								// 화면에 보여줄 데이터 줄 갯수
	private int pageNumToShow = 3;								// 화면에 보여줄 페이징 번호 갯수

	private int totalRows;										// 전체 데이터 갯수
	private int totalPages;										// 전체 페이지 번호
	private int startPage;										// 시작 페이지 번호
	private int endPage;										// 마지막 페이지 번호
	
	private int startRnumForOracle = 1;							// 쿼리 시작 ro
	private int endRnumForOracle;								// 쿼리 끝 row
	private Integer RNUM;
	
	private int startRnumForMysql = 0;							// 쿼리 시작 row
	
	//==========================
	
	public void setParamsPaging(int totalRowsParam) {
		
		totalRows = totalRowsParam;

		totalPages = totalRows / rowNumToShow;

		if (totalRows % rowNumToShow > 0) {
			totalPages = totalPages+ 1;
		}

		if (totalPages < thisPage) {
			thisPage = totalPages;
		}
		
		startPage = (((thisPage - 1) / pageNumToShow) * pageNumToShow + 1);

		endPage = (startPage + pageNumToShow - 1);

		if (endPage > totalPages) {
			endPage = (totalPages);
		}
		
		endRnumForOracle = ((rowNumToShow * thisPage));
		startRnumForOracle = ((endRnumForOracle - rowNumToShow) + 1);
		if (startRnumForOracle < 1) startRnumForOracle = 1;
		
		
		if (thisPage == 1) {
			startRnumForMysql = 0;
		} else {
			startRnumForMysql = ((rowNumToShow * (thisPage-1)));
		}
		
		System.out.println("getThisPage():" + thisPage);
		System.out.println("getTotalRows():" + totalRows);
		System.out.println("getRowNumToShow():" + rowNumToShow);
		System.out.println("getTotalPages():" + totalPages);
		System.out.println("getStartPage():" + startPage);
		System.out.println("getEndPage():" + endPage);		
		System.out.println("getStartRnumForOracle():" + startRnumForOracle);
		System.out.println("getEndRnumForOracle():" + endRnumForOracle);
		System.out.println("getStartRnumForMysql(): " + startRnumForMysql);
		
		}

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

	public int getThisPage() {
		return thisPage;
	}

	public void setThisPage(int thisPage) {
		this.thisPage = thisPage;
	}

	public int getRowNumToShow() {
		return rowNumToShow;
	}

	public void setRowNumToShow(int rowNumToShow) {
		this.rowNumToShow = rowNumToShow;
	}

	public int getPageNumToShow() {
		return pageNumToShow;
	}

	public void setPageNumToShow(int pageNumToShow) {
		this.pageNumToShow = pageNumToShow;
	}

	public int getTotalRows() {
		return totalRows;
	}

	public void setTotalRows(int totalRows) {
		this.totalRows = totalRows;
	}

	public int getTotalPages() {
		return totalPages;
	}

	public void setTotalPages(int totalPages) {
		this.totalPages = totalPages;
	}

	public int getStartPage() {
		return startPage;
	}

	public void setStartPage(int startPage) {
		this.startPage = startPage;
	}

	public int getEndPage() {
		return endPage;
	}

	public void setEndPage(int endPage) {
		this.endPage = endPage;
	}

	public int getStartRnumForOracle() {
		return startRnumForOracle;
	}

	public void setStartRnumForOracle(int startRnumForOracle) {
		this.startRnumForOracle = startRnumForOracle;
	}

	public int getEndRnumForOracle() {
		return endRnumForOracle;
	}

	public void setEndRnumForOracle(int endRnumForOracle) {
		this.endRnumForOracle = endRnumForOracle;
	}

	public Integer getRNUM() {
		return RNUM;
	}

	public void setRNUM(Integer rNUM) {
		RNUM = rNUM;
	}

	public int getStartRnumForMysql() {
		return startRnumForMysql;
	}

	public void setStartRnumForMysql(int startRnumForMysql) {
		this.startRnumForMysql = startRnumForMysql;
	}

	public String getShMemberName() {
		return shMemberName;
	}

	public void setShMemberName(String shMemberName) {
		this.shMemberName = shMemberName;
	}

	public Integer getShmemberDelNy() {
		return shmemberDelNy;
	}

	public void setShmemberDelNy(Integer shmemberDelNy) {
		this.shmemberDelNy = shmemberDelNy;
	}

	public String getShOption() {
		return shOption;
	}

	public void setShOption(String shOption) {
		this.shOption = shOption;
	}

	public String getShValue() {
		return shValue;
	}

	public void setShValue(String shValue) {
		this.shValue = shValue;
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


	public Integer getShOptionDate() {
		return shOptionDate;
	}

	public void setShOptionDate(Integer shOptionDate) {
		this.shOptionDate = shOptionDate;
	}

	public String getShDateStart() {
		return shDateStart;
	}

	public void setShDateStart(String shDateStart) {
		this.shDateStart = shDateStart;
	}

	public String getShDateEnd() {
		return shDateEnd;
	}

	public void setShDateEnd(String shDateEnd) {
		this.shDateEnd = shDateEnd;
	}

	public String getShDate() {
		return shDate;
	}

	public void setShDate(String shDate) {
		this.shDate = shDate;
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

	public String getFdmpTelecomCd() {
		return fdmpTelecomCd;
	}

	public void setFdmpTelecomCd(String fdmpTelecomCd) {
		this.fdmpTelecomCd = fdmpTelecomCd;
	}



	
}
