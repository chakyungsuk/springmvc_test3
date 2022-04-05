package com.junefw.infra.modules.food;

import java.util.Date;

public class Food {
// dto	
	
	//member
	private String ifmmSeq;
	private String ifmmId;
	private String ifmmPassword;
	private String ifmmName;
	private Integer ifmmDelNy;
	private String ifmmSaved;
	/* @DateTimeFormat */
	
	//food
	private String fdrsSeq;
	private String fdrsName;
	private Integer fdrsDelNy;
	
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

	public Integer getFdrsDelNy() {
		return fdrsDelNy;
	}

	public void setFdrsDelNy(Integer fdrsDelNy) {
		this.fdrsDelNy = fdrsDelNy;
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


	
	
}
