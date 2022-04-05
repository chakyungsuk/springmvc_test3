package com.junefw.infra.modules.food;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.junefw.infra.common.util.UtilDateTime;

@Service
public class FoodServiceImpl implements FoodService{

	@Autowired
	FoodDao dao;
	
	@Override
	public int selectOneFood(FoodVo vo) throws Exception {
		return dao.selectOneFood(vo);
	}
	
	@Override
	public List<Food> selectList(FoodVo vo) throws Exception {
		return dao.selectList(vo);
	}
	
	@Override
	public int insert(Food dto) throws Exception {
		
		dto.setRegDateTime(UtilDateTime.nowDate());		// 날짜
		dto.setModDateTime(UtilDateTime.nowDate());		// 날짜
		
		dao.insert(dto);
		dao.insertMobile(dto);
		dao.insertAddress(dto);
		
		return 1; 
	}

	@Override
	public Food selectOne(FoodVo vo) throws Exception {
		return dao.selectOne(vo);
	}

	@Override
	public int update(Food dto) throws Exception {
		
		dao.update(dto);
		dao.updateEmail(dto);
		dao.updateMobile(dto);
		dao.updateAddress(dto);
		
		return 1;
	}

	@Override
	public int insertEmail(Food dto) throws Exception {
		return dao.insertEmail(dto);
	}

	@Override
	public int insertMobile(Food dto) throws Exception {
		return dao.insertMobile(dto);
	}
	
	@Override
	public int insertAddress(Food dto) throws Exception {
		return dao.insertAddress(dto);
	}

		
  @Override public int updateEmail(Food dto) throws Exception { 
	  return dao.updateEmail(dto); 
  }
  
  @Override public int updateMobile(Food dto) throws Exception { 
	  return dao.updateMobile(dto); 
  }
  
  @Override public int updateAddress(Food dto) throws Exception { 
	  return dao.updateAddress(dto); 
  }

	@Override
	public int delete(FoodVo vo) throws Exception {
		return dao.delete(vo);
	}
	
	@Override
	public int updateDelete(FoodVo vo) throws Exception {
		return dao.updateDelete(vo);
	}
	
	@Override
	public Food selectOneLogin(Food dto) throws Exception {
		return dao.selectOneLogin(dto);
	}

}
		 


