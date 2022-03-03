package com.junefw.infra.modules.code;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class CodeServiceImpl implements CodeService{

	@Autowired
	CodeDao dao;
	
	@Override
	public List<Code> selectList() throws Exception {
		return dao.selectList(); 
	}

	@Override
	public int insert(Code dto) throws Exception {
		return dao.insert(dto);
	}

	@Override
	public Code selectOne(CodeVo vo) throws Exception {
		// TODO Auto-generated method stub
		return null;
	}
	
}