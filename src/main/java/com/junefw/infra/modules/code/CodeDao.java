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

	//fdcodeGroup
	public List<Code> selectList(){ return sqlSession.selectList(namespace + ".selectList", "");}
	public int insert(Code dto) {return sqlSession.insert(namespace + ".insert", dto);}
	public Code selectOne(CodeVo vo) {return sqlSession.selectOne(namespace + ".selectOne", vo);}
	public int update(Code dto) {return sqlSession.update(namespace + ".update", dto);}
	
	//fdcode
	public List<Code> selectListCode(){ return sqlSession.selectList(namespace + ".selectListCode", "");}
	public int insertCode(Code dto) {return sqlSession.insert(namespace + ".insertCode", dto);}
	public Code selectOneCode(CodeVo vo) {return sqlSession.selectOne(namespace + ".selectOneCode", vo);}
	public int updateCode(Code dto) {return sqlSession.update(namespace + ".updateCode", dto);}
}