package com.junefw.infra.modules.member;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.junefw.infra.common.util.UtilDateTime;

@Service
public class MemberServiceImpl implements MemberService{

	@Autowired
	MemberDao dao;
	
	@Override
	public int selectOneMember(MemberVo vo) throws Exception {
		return dao.selectOneMember(vo);
	}
	
	@Override
	public List<Member> selectList(MemberVo vo) throws Exception {
		return dao.selectList(vo);
	}
	
	@Override
	public int insert(Member dto) throws Exception {
		
		dto.setRegDateTime(UtilDateTime.nowDate());		// 날짜
		dto.setModDateTime(UtilDateTime.nowDate());		// 날짜
		
		dao.insert(dto); 
		dao.insertEmail(dto);
		dao.insertMobile(dto);
		return 1; 
	}

	@Override
	public Member selectOne(MemberVo vo) throws Exception {
		return dao.selectOne(vo);
	}

	@Override
	public int update(Member dto) throws Exception {
		dao.update(dto);
		dao.updateEmail(dto);
		dao.updateMobile(dto);
		return 1;
	}

	@Override
	public int insertEmail(Member dto) throws Exception {
		return dao.insertEmail(dto);
	}

	@Override
	public int insertMobile(Member dto) throws Exception {
		return dao.insertMobile(dto);
	}
	
	@Override
	public int insertAddress(Member dto) throws Exception {
		return dao.insertAddress(dto);
	}

		
  @Override public int updateEmail(Member dto) throws Exception { 
	  return dao.updateEmail(dto); 
  }
  
  @Override public int updateMobile(Member dto) throws Exception { 
	  return dao.updateMobile(dto); 
  }
  
  @Override public int updateAddress(Member dto) throws Exception { 
	  return dao.updateAddress(dto); 
  }

	@Override
	public int delete(MemberVo vo) throws Exception {
		return dao.delete(vo);
	}
	
	@Override
	public int updateDelete(MemberVo vo) throws Exception {
		return dao.updateDelete(vo);
	}
	
	@Override
	public Member selectOneLogin(Member dto) throws Exception {
		return dao.selectOneLogin(dto);
	}

}
		 


