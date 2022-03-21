package com.junefw.infra.modules.member;

import java.util.List;

public interface MemberService {
	
	int selectOneMember(MemberVo vo) throws Exception;
	List<Member> selectList(MemberVo vo) throws Exception; 
	int insert(Member dto) throws Exception; 
	int insertEmail(Member dto) throws Exception; 
	int insertMobile(Member dto) throws Exception; 
	Member selectOne(MemberVo vo) throws Exception;
	
	int update(Member dto) throws Exception;
	int updateEmail(Member dto) throws Exception;
	int updateMobile(Member dto) throws Exception;

}