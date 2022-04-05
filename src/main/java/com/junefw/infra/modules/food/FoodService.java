package com.junefw.infra.modules.food;

import java.util.List;

public interface FoodService {
	
	int selectOneFood(FoodVo vo) throws Exception;
	List<Food> selectList(FoodVo vo) throws Exception; 
	int insert(Food dto) throws Exception; 
	int insertEmail(Food dto) throws Exception; 
	int insertMobile(Food dto) throws Exception; 
	int insertAddress(Food dto) throws Exception; 

	Food selectOne(FoodVo vo) throws Exception;
	
	int delete(FoodVo vo) throws Exception;
	int updateDelete(FoodVo vo) throws Exception;
	
	int update(Food dto) throws Exception;
	int updateEmail(Food dto) throws Exception; 
	int updateMobile(Food dto) throws Exception;
	int updateAddress(Food dto) throws Exception;
	
	Food selectOneLogin(Food dto) throws Exception;
	 

}