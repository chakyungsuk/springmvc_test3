package com.junefw.infra.modules.food;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.junefw.infra.common.util.UtilDateTime;
import com.junefw.infra.modules.Util.UtilUpload;

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
	public List<Food> selectfdmaterialList(FoodVo vo) throws Exception {
		return dao.selectfdmaterialList(vo);
	}

	@Override
	public int insert(Food dto) throws Exception {
		
		dto.setRegDateTime(UtilDateTime.nowDate());		// 날짜
		dto.setModDateTime(UtilDateTime.nowDate());		// 날짜
		dao.insert(dto);
		dao.insertmaterial(dto);
		
		for(int i = 0; i < dto.getFdmtMaterialArray().length; i++) {
			dto.setFdmtMaterial(dto.getFdmtMaterialArray()[i]);
			dto.setFdmtAmount(dto.getFdmtAmountArray()[i]);
			dao.insertmaterial(dto);
			} 
		
		for(int i = 0; i < dto.getFdspStepArray().length; i++) {
			dto.setFdspStep(dto.getFdspStepArray()[i]);
			dao.insertstep(dto);
			} 
		
		int j = 0;
		for(MultipartFile multipartFile : dto.getFile0() ) {
			String pathModule = this.getClass().getSimpleName().toString().toLowerCase().replace("serviceimpl", "");
			UtilUpload.upload1(multipartFile, pathModule, dto );
				
			dto.setTableName("fdFoodUploaded");
			dto.setType(0);
			dto.setDefaultNy(0);
			dto.setSort(j);
			dto.setPseq(dto.getFdrsSeq());
			
			/*
			 * dto.setTableName("fdmemberuploaded"); dto.setType(0); dto.setDefaultNy(0);
			 * dto.setSort(j); dto.setPseq(dto.getIfmmSeq());
			 */			  
			dao.insertUploaded(dto);
			j++;
		}
		
		
		  j = 0; 
		  for(MultipartFile multipartFile : dto.getFile1() ) { 
		  String pathModule= this.getClass().getSimpleName().toString().toLowerCase().replace("serviceimpl", ""); 
		  UtilUpload.upload1(multipartFile, pathModule, dto );
		  
		  dto.setTableName("fdFoodUploaded"); 
		  dto.setType(1); 
		  dto.setDefaultNy(0);
		  dto.setSort(j); 
		  dto.setPseq(dto.getFdrsSeq());
		  
		  dao.insertUploaded(dto);
		  j++; 
	  }
		return 1; 
	}
	
	@Override
	public int insertmaterial(Food dto) throws Exception {
		return dao.insertmaterial(dto);
	}

	@Override
	public int insertstep(Food dto) throws Exception {
		return dao.insertstep(dto);
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

	@Override
	public List<Food> selectFoodUploaded(FoodVo vo) throws Exception {
		return dao.selectFoodUploaded(vo);
	}

	@Override
	public List<Food> selectfdrsStepList(FoodVo vo) throws Exception {
		return dao.selectfdrsStepList(vo);
	}





}
		 


