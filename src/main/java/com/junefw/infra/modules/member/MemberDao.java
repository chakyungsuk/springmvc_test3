package com.junefw.infra.modules.member;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

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
	public int update(Member dto) {return sqlSession.update(namespace + ".update", dto);}
}