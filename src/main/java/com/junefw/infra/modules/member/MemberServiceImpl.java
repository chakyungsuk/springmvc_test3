package com.junefw.infra.modules.member;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.junefw.infra.common.util.UtilDateTime;
import com.junefw.infra.common.util.UtilMail;
import com.junefw.infra.modules.Util.UtilUpload;
import com.mysql.cj.util.Util;

@Service
public class MemberServiceImpl implements MemberService {

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
	public List<Member> selectRestList(MemberVo vo) throws Exception {
		return dao.selectRestList(vo);
	}

	@Override
	public List<Member> selectListMemberUploaded(MemberVo vo) throws Exception {
		return dao.selectListMemberUploaded(vo);
	}

	@Override
	public int insert(Member dto) throws Exception {

		dto.setRegDateTime(UtilDateTime.nowDate()); // 날짜
		dto.setModDateTime(UtilDateTime.nowDate()); // 날짜

		dao.insert(dto);

		/*
		 * int j = 0; for(MultipartFile multipartFile : dto.getFile0() ) { String
		 * pathModule =
		 * this.getClass().getSimpleName().toString().toLowerCase().replace(
		 * "serviceimpl", ""); UtilUpload.upload(multipartFile, pathModule, dto );
		 * 
		 * dto.setTableName("fdmemberuploaded"); dto.setType(0); dto.setDefaultNy(0);
		 * dto.setSort(j); dto.setPseq(dto.getIfmmSeq());
		 * 
		 * 
		 * dto.setTableName("fdmemberuploaded"); dto.setType(0); dto.setDefaultNy(0);
		 * dto.setSort(j); dto.setPseq(dto.getIfmmSeq());
		 * 
		 * dao.insertUploaded(dto); j++; }
		 * 
		 * j = 0; for(MultipartFile multipartFile : dto.getFile1() ) { String pathModule
		 * = this.getClass().getSimpleName().toString().toLowerCase().replace(
		 * "serviceimpl", ""); UtilUpload.upload(multipartFile, pathModule, dto );
		 * 
		 * 
		 * dto.setTableName("fdmemberuploaded"); dto.setType(1); dto.setDefaultNy(0);
		 * dto.setSort(j); dto.setPseq(dto.getIfmmSeq());
		 * 
		 * dao.insertUploaded(dto); j++; }
		 */

		dao.insertMobile(dto);
		dao.insertEmail(dto);
		dao.insertAddress(dto);
		/* dao.insertUploaded(dto); */

		/* UtilMail.sendMail(); */

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
		dao.updateAddress(dto);

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

	@Override
	public int updateEmail(Member dto) throws Exception {
		return dao.updateEmail(dto);
	}

	@Override
	public int updateMobile(Member dto) throws Exception {
		return dao.updateMobile(dto);
	}

	@Override
	public int updateAddress(Member dto) throws Exception {
		return dao.updateAddress(dto);
	}

	@Override
	public int insertUploaded(Member dto) throws Exception {
		return dao.insertUploaded(dto);
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

	@Override
	public int insertPost(Member dto) throws Exception {
		return dao.insertPost(dto);
	}

	@Override
	public int deletephone(MemberVo vo) throws Exception {
		return dao.deletephone(vo);
	}

	@Override
	public int deletemail(MemberVo vo) throws Exception {
		return dao.deletemail(vo);
	}

	@Override
	public int deleteaddress(MemberVo vo) throws Exception {
		return dao.deleteaddress(vo);
	}

	@Override
	public List<Member> selectListOracle(MemberVo vo) throws Exception {
		return dao.selectListOracle(vo);
	}

}
