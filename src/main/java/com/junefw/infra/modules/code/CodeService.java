package com.junefw.infra.modules.code;

import java.util.List;

public interface CodeService {
	
	//fdcodeGroup
	public List<Code> selectList() throws Exception; 
	public int insert(Code dto) throws Exception;
	public Code selectOne(CodeVo vo) throws Exception;
	public int update(Code dto) throws Exception;
	
	//fdcode
	public List<Code> selectListCode() throws Exception; 
	public int insertCode(Code dto) throws Exception;
	public Code selectOneCode(CodeVo vo) throws Exception;
	public int updateCode(Code dto) throws Exception;
}