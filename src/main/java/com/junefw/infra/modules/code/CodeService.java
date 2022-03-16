package com.junefw.infra.modules.code;

import java.util.List;

public interface CodeService {
	
	//fdcodeGroup
	int selectOneCount(CodeVo vo) throws Exception;
	List<Code> selectList(CodeVo vo) throws Exception; 
	int insert(Code dto) throws Exception;
	Code selectOne(CodeVo vo) throws Exception;
	int update(Code dto) throws Exception;
	
	//fdcode
	int selectOneCountCode(CodeVo vo) throws Exception;
	List<Code> selectListCode(CodeVo vo) throws Exception; 
	int insertCode(Code dto) throws Exception;
	Code selectOneCode(CodeVo vo) throws Exception;
	int updateCode(Code dto) throws Exception;
}