package com.junefw.infra.modules.member;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.junefw.infra.modules.code.Code;
import com.junefw.infra.modules.code.CodeVo;

@Controller
public class MemberController {

	private static final String MemberVo = null;
	@Autowired
	MemberServiceImpl service;
	
	@RequestMapping(value = "/member/memberList")
//	public String memberList(@ModelAttribute("vo") MemberVo vo, Model model) throws Exception {
	public String memberList(Model model) throws Exception {
		
		List<Member> list = service.selectList();
		model.addAttribute("list", list);

		return "member/memberList";
		
	}
	
	@RequestMapping(value = "/member/memberForm")
	public String memberForm(Model model) throws Exception {

		return "member/memberForm";
	}
	
	@RequestMapping(value = "/member/memberInst")
	public String memberInst(Member dto) throws Exception {
		
		service.insert(dto);
		return "";
	}
	
	@RequestMapping(value = "/member/memberView")
	public String memberView(MemberVo vo, Model model) throws Exception {
		
		Member rt = service.selectOne(vo);
		
		model.addAttribute("item", rt);
		
		return "member/memberView";
	}
	
	@RequestMapping(value = "/member/memberForm2")
	public String memberForm2(MemberVo vo, Model model) throws Exception {
		
		// 한건의 데이터를 가져온다
		Member rt = service.selectOne(vo);
		
		model.addAttribute("item", rt);
		
		return "member/memberForm2";
	}
	
	
	//실제 수정을 하는 주소
	@RequestMapping(value = "/member/memberUpdt")
	public String memberUpdt(Member dto) throws Exception {
		
		//수정 프로세스 실행
		service.update(dto);
		
		return "";
	}
}


