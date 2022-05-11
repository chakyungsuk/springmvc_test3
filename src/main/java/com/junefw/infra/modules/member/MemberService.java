package com.junefw.infra.modules.member;

import java.util.List;

public interface MemberService {
	
	int selectOneMember(MemberVo vo) throws Exception;
	List<Member> selectList(MemberVo vo) throws Exception; 
	List<Member> selectListMemberUploaded(MemberVo vo) throws Exception; 
	
	int insert(Member dto) throws Exception; 
	int insertPost(Member dto) throws Exception; 
	int insertEmail(Member dto) throws Exception; 
	int insertMobile(Member dto) throws Exception; 
	int insertAddress(Member dto) throws Exception; 
	int insertUploaded(Member dto) throws Exception; 

	Member selectOne(MemberVo vo) throws Exception;
	
	int delete(MemberVo vo) throws Exception;
	int updateDelete(MemberVo vo) throws Exception;
	
	int update(Member dto) throws Exception;
	int updateEmail(Member dto) throws Exception; 
	int updateMobile(Member dto) throws Exception;
	int updateAddress(Member dto) throws Exception;
	
	Member selectOneLogin(Member dto) throws Exception;
	 

}