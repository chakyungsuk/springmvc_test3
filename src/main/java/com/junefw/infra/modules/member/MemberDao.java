package com.junefw.infra.modules.member;

import java.util.List;

import javax.annotation.Resource;
import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

@Repository
public class MemberDao {
	
	@Inject
	@Resource(name = "sqlSession")
	private SqlSession sqlSession;
	
	@Inject
	@Resource(name = "sqlSessionOracle")
	private SqlSession sqlSessionOracle;
	
	private static String namespace = "com.junefw.infra.modules.member.MemberMpp";
	
	public int selectOneMember(MemberVo vo) {return sqlSession.selectOne(namespace + ".selectOneMember", vo);}
	public List<Member> selectList(MemberVo vo){ return sqlSession.selectList(namespace + ".selectList", vo);}
	public List<Member> selectRestList(MemberVo vo){ return sqlSession.selectList(namespace + ".selectRestList", vo);}
	public List<Member> selectListMemberUploaded(MemberVo vo){ return sqlSession.selectList(namespace + ".selectListMemberUploaded", vo);}
	
	public int insert(Member dto){ return sqlSession.insert(namespace + ".insert", dto);}
	public int insertPost(Member dto){ return sqlSession.insert(namespace + ".insertPost", dto);}
	public int insertEmail(Member dto){ return sqlSession.insert(namespace + ".insertEmail", dto);}
	public int insertMobile(Member dto){ return sqlSession.insert(namespace + ".insertMobile", dto);}
	public int insertAddress(Member dto){ return sqlSession.insert(namespace + ".insertAddress", dto);}
	public int insertUploaded(Member dto){ return sqlSession.insert(namespace + ".insertUploaded", dto);}
	
	public Member selectOne(MemberVo vo) {return sqlSession.selectOne(namespace + ".selectOne", vo);}
	
	public int delete(MemberVo vo) {return sqlSession.delete(namespace + ".delete", vo);}
	public int deletephone(MemberVo vo) {return sqlSession.delete(namespace + ".deletephone", vo);}
	public int deletemail(MemberVo vo) {return sqlSession.delete(namespace + ".deletemail", vo);}
	public int deleteaddress(MemberVo vo) {return sqlSession.delete(namespace + ".deleteaddress", vo);}
	public int updateDelete(MemberVo vo) {return sqlSession.update(namespace + ".updateDelete", vo);}
	
	public int update(Member dto) {return sqlSession.update(namespace + ".update", dto);}
	public int updateEmail(Member dto) {return sqlSession.update(namespace + ".updateEmail", dto);}
	public int updateMobile(Member dto) {return sqlSession.update(namespace + ".updateMobile", dto);}
	public int updateAddress(Member dto) {return sqlSession.update(namespace + ".updateAddress", dto);}
	
	public Member selectOneLogin(Member dto) {return sqlSession.selectOne(namespace + ".selectOneLogin", dto);}
	
	public List<Member> selectListOracle(MemberVo vo){ return sqlSessionOracle.selectList(namespace + ".selectListOracle",vo); }
}