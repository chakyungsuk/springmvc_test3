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

	public List<Member> selectList(){ 
		return sqlSession.selectList(namespace + ".selectList", "");
	}
	
	public int insert(Member dto){ 
		return sqlSession.insert(namespace + ".insert", dto);
	}

}