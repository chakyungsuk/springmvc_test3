package com.junefw.infra.modules.food;

import java.util.Date;

import org.springframework.web.multipart.MultipartFile;

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
	private String fdrsIntroduction;
	private Integer fdrsServingsCd;
	private Integer fdrsTimeCd;
	private Integer fdrsDifficultyCd;
	private String fdrsTip;
	private Integer fdrsDelNy;
	
	
	//material
	private String fdmtMaterial;
	private String fdmtAmount;
	private Integer fdmtDelNy;
	
	//materialArray
	private String[] fdmtMaterialArray;
	private String[] fdmtAmountArray;
	
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
	private String path;
	private String pseq;
	
	//Date
	private Date RegDateTime;
	private Date ModDateTime;
	
	//checkbox
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

	public String getFdmtMaterial() {
		return fdmtMaterial;
	}

	public void setFdmtMaterial(String fdmtMaterial) {
		this.fdmtMaterial = fdmtMaterial;
	}

	public String getFdmtAmount() {
		return fdmtAmount;
	}

	public void setFdmtAmount(String fdmtAmount) {
		this.fdmtAmount = fdmtAmount;
	}

	public Integer getFdmtDelNy() {
		return fdmtDelNy;
	}

	public void setFdmtDelNy(Integer fdmtDelNy) {
		this.fdmtDelNy = fdmtDelNy;
	}

	public String[] getFdmtMaterialArray() {
		return fdmtMaterialArray;
	}

	public void setFdmtMaterialArray(String[] fdmtMaterialArray) {
		this.fdmtMaterialArray = fdmtMaterialArray;
	}

	public String[] getFdmtAmountArray() {
		return fdmtAmountArray;
	}

	public void setFdmtAmountArray(String[] fdmtAmountArray) {
		this.fdmtAmountArray = fdmtAmountArray;
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

	public String getPath() {
		return path;
	}

	public void setPath(String path) {
		this.path = path;
	}

	
	
}
