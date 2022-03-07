package com.junefw.infra.modules.code;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

@Repository
public class CodeDao {
	
	@Inject
//	@Resource(name = "sqlSession")
	private SqlSession sqlSession;
	
	private static String namespace = "com.junefw.infra.modules.code.CodeMpp";

	public List<Code> selectList(){ return sqlSession.selectList(namespace + ".selectList", "");}
	
	public int insert(Code dto) {return sqlSession.insert(namespace + ".insert", dto);}

	public Code selectOne(CodeVo vo) {return sqlSession.selectOne(namespace + ".selectOne", vo);}
	
	public int update(Code dto) {return sqlSession.update(namespace + ".update", dto);}
}