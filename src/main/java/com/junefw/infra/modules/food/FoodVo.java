package com.junefw.infra.modules.food;

public class FoodVo {
	
// Vo

	//member
	private String ifmmSeq;
	private String ifmmId;
	private String ifmmPassword;
	private String ifmmName;
	private String ifmmSaved;
	private Integer ifmmDelNy;
	
	//food
	private String fdrsSeq;
	private String fdrsName;
	private String fdrsIntroduction;
	private Integer fdrsServingsCd;
	private Integer fdrsTimeCd;
	private Integer fdrsDifficultyCd;
	private String fdrsTip;
	private Integer fdrsDelNy;

	//shmemberId = search
	private String shMemberName;
	private Integer shmemberDelNy;
	
	//common
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
		
		
		if (thisPage == 1 || thisPage == 0 ) {
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

	public String getIfmmName() {
		return ifmmName;
	}

	public void setIfmmName(String ifmmName) {
		this.ifmmName = ifmmName;
	}

	public String getIfmmSaved() {
		return ifmmSaved;
	}

	public void setIfmmSaved(String ifmmSaved) {
		this.ifmmSaved = ifmmSaved;
	}

	public Integer getIfmmDelNy() {
		return ifmmDelNy;
	}

	public void setIfmmDelNy(Integer ifmmDelNy) {
		this.ifmmDelNy = ifmmDelNy;
	}

	public String getFdrsSeq() {
		return fdrsSeq;
	}

	public void setFdrsSeq(String fdrsSeq) {
		this.fdrsSeq = fdrsSeq;
	}

	public String getFdrsName() {
		return fdrsName;
	}

	public void setFdrsName(String fdrsName) {
		this.fdrsName = fdrsName;
	}

	public String getFdrsIntroduction() {
		return fdrsIntroduction;
	}

	public void setFdrsIntroduction(String fdrsIntroduction) {
		this.fdrsIntroduction = fdrsIntroduction;
	}

	public Integer getFdrsServingsCd() {
		return fdrsServingsCd;
	}

	public void setFdrsServingsCd(Integer fdrsServingsCd) {
		this.fdrsServingsCd = fdrsServingsCd;
	}

	public Integer getFdrsTimeCd() {
		return fdrsTimeCd;
	}

	public void setFdrsTimeCd(Integer fdrsTimeCd) {
		this.fdrsTimeCd = fdrsTimeCd;
	}

	public Integer getFdrsDifficultyCd() {
		return fdrsDifficultyCd;
	}

	public void setFdrsDifficultyCd(Integer fdrsDifficultyCd) {
		this.fdrsDifficultyCd = fdrsDifficultyCd;
	}

	public String getFdrsTip() {
		return fdrsTip;
	}

	public void setFdrsTip(String fdrsTip) {
		this.fdrsTip = fdrsTip;
	}

	public Integer getFdrsDelNy() {
		return fdrsDelNy;
	}

	public void setFdrsDelNy(Integer fdrsDelNy) {
		this.fdrsDelNy = fdrsDelNy;
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

	public String[] getCheckboxSeqArray() {
		return checkboxSeqArray;
	}

	public void setCheckboxSeqArray(String[] checkboxSeqArray) {
		this.checkboxSeqArray = checkboxSeqArray;
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




	
}
