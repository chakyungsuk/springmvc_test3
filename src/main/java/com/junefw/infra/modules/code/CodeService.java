package com.junefw.infra.modules.code;

import java.util.List;

public interface CodeService {
	
	public List<Code> selectList() throws Exception; 

	public int insert(Code dto) throws Exception;

	public Code selectOne(CodeVo vo) throws Exception;
	
	public int update(Code dto) throws Exception;
}