package com.junefw.infra.modules.member;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.junefw.infra.modules.code.CodeVo;

@Repository
public class MemberDao {
	
	@Inject
//	@Resource(name = "sqlSession")
	private SqlSession sqlSession;
	
	private static String namespace = "com.junefw.infra.modules.member.MemberMpp";
	
	public int selectOneMember(MemberVo vo) {return sqlSession.selectOne(namespace + ".selectOneMember", vo);}
	public List<Member> selectList(MemberVo vo){ return sqlSession.selectList(namespace + ".selectList", vo);}
	
	public int insert(Member dto){ return sqlSession.insert(namespace + ".insert", dto);}
	public int insertEmail(Member dto){ return sqlSession.insert(namespace + ".insertEmail", dto);}
	public int insertMobile(Member dto){ return sqlSession.insert(namespace + ".insertMobile", dto);}
	
	public Member selectOne(MemberVo vo) {return sqlSession.selectOne(namespace + ".selectOne", vo);}
	
	public int delete(MemberVo vo) {return sqlSession.delete(namespace + ".delete", vo);}
	public int updateDelete(MemberVo vo) {return sqlSession.update(namespace + ".updateDelete", vo);}
	
	public int update(Member dto) {return sqlSession.update(namespace + ".update", dto);}
	public int updateEmail(Member dto) {return sqlSession.update(namespace + ".updateEmail", dto);}
	public int updateMobile(Member dto) {return sqlSession.update(namespace + ".updateMobile", dto);}
	public int updateAddress(Member dto) {return sqlSession.update(namespace + ".updateAddress", dto);}
	
	public Member selectOneLogin(Member dto) {return sqlSession.selectOne(namespace + ".selectOneLogin", dto);}
}