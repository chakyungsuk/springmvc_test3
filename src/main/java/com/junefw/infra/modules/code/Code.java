package com.junefw.infra.modules.code;

import java.util.ArrayList;
import java.util.List;

import org.springframework.web.multipart.MultipartFile;

public class Code {
	
// DTO
	//fdcodeGroup
	private String fdcgSeq;
	private String fdcgName;
	private Integer fdcgDelNy;
	private String fdcgNameEng;
	
// --------------------------------	
	//fdcode
	private String fdcdSeq;
	private String fdcdName;
	private Integer fdcdDelNy;
	private String fdcdOrder;
	private String ifcgSeq;
	
	//uploaded
	public MultipartFile file;
	public MultipartFile file1;
	
	private String originalFileName;
	private String uuidFileName;
	
	//	for cache
	public static List<Code> cachedCodeArrayList = new ArrayList<Code>();	//메모리에 리스트가 상주돼있음
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
	public String getFdcgNameEng() {
		return fdcgNameEng;
	}
	public void setFdcgNameEng(String fdcgNameEng) {
		this.fdcgNameEng = fdcgNameEng;
	}
	
	public MultipartFile getFile() {
		return file;
	}
	public void setFile(MultipartFile file) {
		this.file = file;
	}
	public MultipartFile getFile1() {
		return file1;
	}
	public void setFile1(MultipartFile file1) {
		this.file1 = file1;
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
	

}
