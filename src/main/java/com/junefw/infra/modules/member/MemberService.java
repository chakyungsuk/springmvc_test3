package com.junefw.infra.modules.member;

import java.util.List;

public interface MemberService {
	
	public List<Member> selectList() throws Exception; 
	
	public int insert(Member dto) throws Exception; 

}