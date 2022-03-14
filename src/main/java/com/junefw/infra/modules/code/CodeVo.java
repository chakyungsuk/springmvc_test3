package com.junefw.infra.modules.code;

public class CodeVo {
	
// Vo
	//fdcodeGroup
	private String fdcgSeq;
	
	//shFdcgName = search
	private String shFdcgName;
	private Integer shFdcgDelNy;
	
	//fdcode
	private String fdcdSeq;
	private String shFdcgSeq;
	private String shFdcdName;
	
	//common
	private String shOption;
	private String shValue;
	
	
//  ============================================	

	public String getShFdcgSeq() {
		return shFdcgSeq;
	}

	public void setShFdcgSeq(String shFdcgSeq) {
		this.shFdcgSeq = shFdcgSeq;
	}

	public String getFdcgSeq() {
		return fdcgSeq;
	}

	public void setFdcgSeq(String fdcgSeq) {
		this.fdcgSeq = fdcgSeq;
	}

	public String getFdcdSeq() {
		return fdcdSeq;
	}

	public void setFdcdSeq(String fdcdSeq) {
		this.fdcdSeq = fdcdSeq;
	}

	public String getShFdcgName() {
		return shFdcgName;
	}

	public void setShFdcgName(String shFdcgName) {
		this.shFdcgName = shFdcgName;
	}

	public Integer getShFdcgDelNy() {
		return shFdcgDelNy;
	}

	public void setShFdcgDelNy(Integer shFdcgDelNy) {
		this.shFdcgDelNy = shFdcgDelNy;
	}

	public String getShFdcdName() {
		return shFdcdName;
	}

	public void setShFdcdName(String shFdcdName) {
		this.shFdcdName = shFdcdName;
	}

	public String getShValue() {
		return shValue;
	}

	public void setShValue(String shValue) {
		this.shValue = shValue;
	}

	public String getShOption() {
		return shOption;
	}

	public void setShOption(String shOption) {
		this.shOption = shOption;
	}

	
	

}
