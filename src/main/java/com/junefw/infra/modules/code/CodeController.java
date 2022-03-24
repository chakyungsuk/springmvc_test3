package com.junefw.infra.modules.code;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

@Controller
public class CodeController {


//---------------------------------------------------------------------------------------------------
	
	
	private static final String CodeVo = null;
	@Autowired
	CodeServiceImpl service;
	
	
	//fdcodeGroup
	
	@RequestMapping(value = "/code/codeGroupList")  // method = RequestMethod.POST (POST로만 받게끔한다)
													// method = RequestMethod.GET (GET으로만 받게끔한다)
	
	public String codeGroupList(@ModelAttribute("vo") CodeVo vo, Model model) throws Exception {
	
		// count 가져올 것
		int count = service.selectOneCount(vo);
		
		vo.setParamsPaging(count);
		
		// count 가 0이 아니면 List 가져오는 부분 수행 후 model 개체에 담기
		if (count != 0) {
			List<Code> list = service.selectList(vo);
			model.addAttribute("list", list);
		} else {
			// by pass
		}
		
		// model.addAttribute("vo", vo); 은 위에 있는 @ModelAttribute("vo") 와 같으므로 편한대로 쓸수 있다. 
		
		return "code/codeGroupList";
	}
	

	
	@RequestMapping(value = "/code/codeGroupForm")
	public String codeGroupForm(@ModelAttribute("vo") CodeVo vo) throws Exception {
	
		return "code/codeGroupForm";
	}
	
	@RequestMapping(value = "/code/codeGroupInst")
	public String codeGroupInst(Code dto, CodeVo vo, RedirectAttributes redirectAttributes) throws Exception {
	
		System.out.println("dto.getFdcgSeq()" + dto.getFdcgSeq());
		//입력이 되어야 함 - 입력시행
		service.insert(dto);
		
		System.out.println("dto.getFdcgSeq()" + dto.getFdcgSeq());
		
		redirectAttributes.addAttribute("fdcgSeq", dto.getFdcgSeq()); // get 방식
		redirectAttributes.addAttribute("thisPage", vo.getThisPage()); // get 방식
		redirectAttributes.addAttribute("shFdcgDelNy", vo.getShFdcgDelNy()); // get 방식
		redirectAttributes.addAttribute("shFdcgName", vo.getShFdcgName()); // get 방식
		
		return "redirect:/code/codeGroupView"; 
//		return "redirect:/code/codeGroupView?fdcgSeq=" + dto.getFdcgSeq() + makeQueryString(vo); 
	}
	
	public String makeQueryString(CodeVo vo) {
		String tmp = "&thisPage=" + vo.getThisPage() + 
					"&shFdcgDelNy=" + vo.getShFdcgDelNy() + 
					"&shFdcgName=" + vo.getShFdcgName(); 
		return tmp;
	}
	
	
	@RequestMapping(value = "/code/codeGroupView")
	public String codeGroupView(@ModelAttribute("vo") CodeVo vo, Model model) throws Exception {
	
		System.out.println("vo.getFdcgSeq()" + vo.getFdcgSeq());
		System.out.println("vo.getFdcgSeq()" + vo.getFdcdSeq());
		
		//디비까지 가서 한건의 데이터 값을 가지고 온다 , VO
		Code rt = service.selectOne(vo);
		
		//가지고 온값을 jsp로 넘겨준다
		model.addAttribute("item", rt);
		
		return "code/codeGroupView";
	}
	
	// 수정폼이 보여지는 주소
	@RequestMapping(value = "/code/codeGroupForm2")
	public String codeGroupForm2(@ModelAttribute("vo") CodeVo vo, Model model) throws Exception {
		
		// 한건의 데이터를 가져온다
		Code rt = service.selectOne(vo);
		
		model.addAttribute("item", rt);
		
		return "code/codeGroupForm2";
	}
	
	
	//실제 수정을 하는 주소
	@RequestMapping(value = "/code/codeGroupUpdt")
	public String codeGroupUpdt(Code dto, CodeVo vo) throws Exception {
		
		//수정 프로세스 실행
		service.update(dto);
		
		return "redirect:/code/codeGroupView?fdcgSeq=" + dto.getFdcgSeq() + "&thisPage=" + vo.getThisPage() + 
				"&shFdcgDelNy=" + vo.getShFdcgDelNy() + "&shFdcgName=" + vo.getShFdcgName(); 
	}
	
	@RequestMapping(value = "/code/codeGroupDele")
	public String codeGroupDele(CodeVo vo, RedirectAttributes redirectAttributes) throws Exception {
	
		service.delete(vo);
		
		redirectAttributes.addAttribute("thisPage", vo.getThisPage()); // get 방식
		redirectAttributes.addAttribute("shFdcgDelNy", vo.getShFdcgDelNy()); // get 방식
		redirectAttributes.addAttribute("shFdcgName", vo.getShFdcgName()); // get 방식
		
		return "redirect:/code/codeGroupList";
	}
	
	@RequestMapping(value = "/code/codeGroupNele")
	public String codeGroupNele(CodeVo vo, RedirectAttributes redirectAttributes) throws Exception {
		
		service.updateDelete(vo);
		
		redirectAttributes.addAttribute("thisPage", vo.getThisPage()); // get 방식
		redirectAttributes.addAttribute("shFdcgDelNy", vo.getShFdcgDelNy()); // get 방식
		redirectAttributes.addAttribute("shFdcgName", vo.getShFdcgName()); // get 방식
		
		return "redirect:/code/codeGroupList";
	}
	//------------------------------------
	
	
	
	// fdcode
	
	@RequestMapping(value = "/code/codeList")
	

	public String codeList(@ModelAttribute("vo") CodeVo vo, Model model) throws Exception {
	
		int count = service.selectOneCountCode(vo);
		
		vo.setParamsPaging(count);
		
		if (count != 0) {
		List<Code> list = service.selectListCode(vo);
		model.addAttribute("list", list);
		
		List<Code> listCodeGroup = service.selectList(vo);
		model.addAttribute("listcodeGroup", listCodeGroup);
		} else {
			
		}
		return "code/codeList";
	}
	
	@RequestMapping(value = "/code/codeForm")
	public String codeForm(CodeVo vo, Model model) throws Exception {
	
		List<Code> list = service.selectList(vo);
		
		model.addAttribute("list", list);
		
		return "code/codeForm";
	}
	
	@RequestMapping(value = "/code/codeInst")
	public String codeInst(Code dto) throws Exception {
	
		//입력이 되어야 함 - 입력시행
		service.insertCode(dto);
		
		return "redirect:/code/codeGroupView";
	}
	
	@RequestMapping(value = "/code/codeView")
	public String codeView(CodeVo vo, Model model) throws Exception {
	
		//디비까지 가서 한건의 데이터 값을 가지고 온다 , VO
		Code rt = service.selectOneCode(vo);
		
		//가지고 온값을 jsp로 넘겨준다
		model.addAttribute("item", rt);
		
		return "code/codeView";
	}
	
	// 수정폼이 보여지는 주소
	@RequestMapping(value = "/code/codeForm2")
	public String codeForm2(CodeVo vo, Model model) throws Exception {
		
		// 한건의 데이터를 가져온다
		Code rt = service.selectOneCode(vo);
		
		model.addAttribute("item", rt);
		
		return "code/codeForm2";
	}
	
	
	//실제 수정을 하는 주소
	@RequestMapping(value = "/code/codeUpdt")
	public String codeUpdt(Code dto) throws Exception {
		
		//수정 프로세스 실행
		service.updateCode(dto);
		
		return "";
	}
}


