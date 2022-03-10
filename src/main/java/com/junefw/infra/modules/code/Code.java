package com.junefw.infra.modules.code;

public class Code {
	
// DTO
	//fdcodeGroup
	private String fdcgSeq;
	private String fdcgName;
	private Integer fdcgDelNy;
// --------------------------------	
	//fdcode
	private String fdcdSeq;
	private String fdcdName;
	private Integer fdcdDelNy;
	private String fdcdOrder;
	private String ifcgSeq;
//  ============================================	
	
	public String getIfcgSeq() {
		return ifcgSeq;
	}
	public void setIfcgSeq(String ifcgSeq) {
		this.ifcgSeq = ifcgSeq;
	}
	public String getFdcgSeq() {
		return fdcgSeq;
	}
	public void setFdcgSeq(String fdcgSeq) {
		this.fdcgSeq = fdcgSeq;
	}
	public String getFdcgName() {
		return fdcgName;
	}
	public void setFdcgName(String fdcgName) {
		this.fdcgName = fdcgName;
	}
	public Integer getFdcgDelNy() {
		return fdcgDelNy;
	}
	public void setFdcgDelNy(Integer fdcgDelNy) {
		this.fdcgDelNy = fdcgDelNy;
	}
	
	// --------------------------------------------
	public String getFdcdSeq() {
		return fdcdSeq;
	}
	public void setFdcdSeq(String fdcdSeq) {
		this.fdcdSeq = fdcdSeq;
	}
	public String getFdcdName() {
		return fdcdName;
	}
	public void setFdcdName(String fdcdName) {
		this.fdcdName = fdcdName;
	}
	public Integer getFdcdDelNy() {
		return fdcdDelNy;
	}
	public void setFdcdDelNy(Integer fdcdDelNy) {
		this.fdcdDelNy = fdcdDelNy;
	}
	public String getFdcdOrder() {
		return fdcdOrder;
	}
	public void setFdcdOrder(String fdcdOrder) {
		this.fdcdOrder = fdcdOrder;
	}
	

}
