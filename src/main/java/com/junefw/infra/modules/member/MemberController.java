package com.junefw.infra.modules.member;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.junefw.infra.common.constants.Constants;
import com.junefw.infra.common.util.UtilDateTime;
import com.mysql.cj.protocol.x.SyncFlushDeflaterOutputStream;



@Controller
public class MemberController {

	private static final String MemberVo = null;
	@Autowired
	MemberServiceImpl service;
	
	@RequestMapping(value = "/member/memberList")
	public String memberList(@ModelAttribute("vo") MemberVo vo, Model model) throws Exception {
		
		vo.setShOptionDate(vo.getShOptionDate() == null ? 1 : vo.getShOptionDate());
		vo.setShDateStart(vo.getShDateStart() == null ? UtilDateTime.calculateDayString(UtilDateTime.nowLocalDateTime(), Constants.DATE_INTERVAL) : UtilDateTime.add00TimeString(vo.getShDateStart()));
		vo.setShDateEnd(vo.getShDateEnd() == null ? UtilDateTime.nowString() : UtilDateTime.addNowTimeString(vo.getShDateEnd()));
		 
		// count 가져올 것
		int count = service.selectOneMember(vo);
		
		vo.setParamsPaging(count);
		 
		// count 가 0이 아니면 List 가져오는 부분 수행 후 model 개체에 담기
		if (count != 0) {
			List<Member> list = service.selectList(vo);
			model.addAttribute("list", list);
		} else {
			// by pass
		}
		
		System.out.println("UtilDateTime.nowLocalDateTime(): " + UtilDateTime.nowLocalDateTime());
       	System.out.println("UtilDateTime.nowDate(): " + UtilDateTime.nowDate());
	    System.out.println("UtilDateTime.nowString(): " + UtilDateTime.nowString());
		
		return "member/memberList";
		
	}
	
	@ResponseBody
	@RequestMapping(value = "/member/loginProc")
	public Map<String, Object> loginProc(Member dto, HttpSession httpSession) throws Exception {
		Map<String, Object> returnMap = new HashMap<String, Object>();
		
		Member rtMember = service.selectOneLogin(dto);
		
		if(rtMember != null) {
//			rtMember = service.selectOneLogin(dto);

			if(rtMember.getIfmmSeq() != null) {
				httpSession.setMaxInactiveInterval( 60 * Constants.SESSION_MINUTE);	//60second * 30 = 30minute  
//				session.setMaxInactiveInterval(-1);		// session time unlimited
//	
				httpSession.setAttribute("sessSeq", rtMember.getIfmmSeq()); // 세션값(로그인 하고 계속 갖고있음. Seq, ID , name)
				httpSession.setAttribute("sessId", rtMember.getIfmmId());
				httpSession.setAttribute("sessName", rtMember.getIfmmName());
				
				returnMap.put("rt", "success");
			} else {
			returnMap.put("rt", "fail");
			}
		} else {
			returnMap.put("rt", "fail");
		}
		return returnMap;
	}
	
	
	@ResponseBody
	@RequestMapping(value = "/member/logoutProc")
	public Map<String, Object> logoutProc(HttpSession httpSession) throws Exception {
		Map<String, Object> returnMap = new HashMap<String, Object>();
		httpSession.invalidate();
		returnMap.put("rt", "success");
		return returnMap;
	}
		
	@RequestMapping(value = "/member/memberForm")
	public String memberForm(Model model) throws Exception {
		
//		model.addAllAttributes(CodeServiceImpl.selelctListCachedCode("3"));
		
		return "member/memberForm";
	}
	
	@RequestMapping(value = "/member/memberInst")
	public String memberInst(Member dto, MemberVo vo, RedirectAttributes redirectAttributes) throws Exception {
		
		service.insert(dto);
		
		/*
		 * redirectAttributes.addAttribute("ifmmSeq", dto.getIfmmSeq());
		 * redirectAttributes.addAttribute("thisPage", vo.getThisPage());
		 * redirectAttributes.addAttribute("shmemberDelNy", vo.getShmemberDelNy());
		 * redirectAttributes.addAttribute("shOption", vo.getShOption());
		 * redirectAttributes.addAttribute("shValue", vo.getShValue());
		 */
		
		/* vo.setIfmmSeq(dto.getIfmmSeq()); */
		
		redirectAttributes.addFlashAttribute("vo", vo);
		
		return "redirect:/member/memberList";
	}
	
	@RequestMapping(value = "/member/memberDele")
	public String memberDele(MemberVo vo, RedirectAttributes redirectAttributes) throws Exception {
	
		service.delete(vo);
		
		/*
		 * redirectAttributes.addAttribute("thisPage", vo.getThisPage()); // get 방식
		 * redirectAttributes.addAttribute("shFdcgDelNy", vo.getIfmmDelNy()); // get 방식
		 * redirectAttributes.addAttribute("shFdcgName", vo.getIfmmName()); // get 방식
		 */		
		redirectAttributes.addFlashAttribute("vo", vo);
		
		return "redirect:/member/memberList";
	}
	
	@RequestMapping(value = "/member/memberNele")
	public String memberNele(MemberVo vo, RedirectAttributes redirectAttributes) throws Exception {
		
	
		service.updateDelete(vo);
		
		/*
		 * redirectAttributes.addAttribute("thisPage", vo.getThisPage()); // get 방식
		 * redirectAttributes.addAttribute("shFdcgDelNy", vo.getIfmmDelNy()); // get 방식
		 * redirectAttributes.addAttribute("shFdcgName", vo.getIfmmName()); // get 방식
		 */		
		redirectAttributes.addFlashAttribute("vo", vo);
		
		return "redirect:/member/memberList";
	}
		
	@RequestMapping(value = "/member/memberMultiUele")
	public String memberMultiUele(MemberVo vo, RedirectAttributes redirectAttributes) throws Exception {
		
		String[] checkboxSeqArray = vo.getCheckboxSeqArray();
		
		System.out.println("vo.getCheckboxSeqArray();-----------------------------------------------" + vo.getCheckboxSeqArray());
		
		for(String checkboxSeq : checkboxSeqArray) {
			vo.setIfmmSeq(checkboxSeq);
			 service.updateDelete(vo); 
		}
		
		redirectAttributes.addFlashAttribute("vo", vo);
		
		return "redirect:/member/memberList";
	}
	
	public String makeQueryString(MemberVo vo) {
		String tmp = "&thisPage" + vo.getThisPage() +
					"&shmemberDelNy" + vo.getShmemberDelNy() +
					"&shOption" + vo.getShOption() +
					"&shValue" + vo.getShValue();
		return tmp;
	}
	
	@RequestMapping(value = "/member/memberView")
	public String memberView(@ModelAttribute("vo") MemberVo vo, Model model) throws Exception {
		
		Member rt = service.selectOne(vo);
		
		model.addAttribute("item", rt);
		
		return "member/memberView";
	}
	
	@RequestMapping(value = "/member/memberForm2")
	public String memberForm2(@ModelAttribute("vo") MemberVo vo, Model model) throws Exception {
		
		// 한건의 데이터를 가져온다
		Member rt = service.selectOne(vo);
		
		model.addAttribute("item", rt);
		
		return "member/memberForm2";
	}
	
	
	//실제 수정을 하는 주소
	@RequestMapping(value = "/member/memberUpdt")
	public String memberUpdt(@ModelAttribute("vo") Member dto, MemberVo vo, RedirectAttributes redirectAttributes) throws Exception {
		
		//수정 프로세스 실행
		service.update(dto);
		
		/* vo.setIfmmSeq(dto.getIfmmSeq()); */

		redirectAttributes.addFlashAttribute("vo", vo);
		
		return "redirect:/member/memberView";
	}
	
	@RequestMapping(value = "/member/memberLogin")
	public String memberLogin() throws Exception {
		
		
		return "member/memberLogin";
	}
	


}



