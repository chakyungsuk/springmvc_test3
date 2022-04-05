package com.junefw.infra.modules.food;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

@Repository
public class FoodDao {
	
	@Inject
//	@Resource(name = "sqlSession")
	private SqlSession sqlSession;
	
	private static String namespace = "com.junefw.infra.modules.food.FoodMpp";
	
	public int selectOneFood(FoodVo vo) {return sqlSession.selectOne(namespace + ".selectOneFood", vo);}
	public List<Food> selectList(FoodVo vo){ return sqlSession.selectList(namespace + ".selectList", vo);}
	
	public int insert(Food dto){ return sqlSession.insert(namespace + ".insert", dto);}
	public int insertEmail(Food dto){ return sqlSession.insert(namespace + ".insertEmail", dto);}
	public int insertMobile(Food dto){ return sqlSession.insert(namespace + ".insertMobile", dto);}
	public int insertAddress(Food dto){ return sqlSession.insert(namespace + ".insertAddress", dto);}
	
	public Food selectOne(FoodVo vo) {return sqlSession.selectOne(namespace + ".selectOne", vo);}
	
	public int delete(FoodVo vo) {return sqlSession.delete(namespace + ".delete", vo);}
	public int updateDelete(FoodVo vo) {return sqlSession.update(namespace + ".updateDelete", vo);}
	
	public int update(Food dto) {return sqlSession.update(namespace + ".update", dto);}
	public int updateEmail(Food dto) {return sqlSession.update(namespace + ".updateEmail", dto);}
	public int updateMobile(Food dto) {return sqlSession.update(namespace + ".updateMobile", dto);}
	public int updateAddress(Food dto) {return sqlSession.update(namespace + ".updateAddress", dto);}
	
	public Food selectOneLogin(Food dto) {return sqlSession.selectOne(namespace + ".selectOneLogin", dto);}
}