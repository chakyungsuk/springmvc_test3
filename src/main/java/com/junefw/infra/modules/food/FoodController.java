package com.junefw.infra.modules.food;

import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.github.scribejava.core.model.OAuth2AccessToken;
import com.junefw.infra.common.constants.Constants;
import com.junefw.infra.common.util.UtilDateTime;
import com.junefw.infra.modules.naver.NaverLoginBO;

@Controller
public class FoodController {

	private static final String FoodVo = null;
	@Autowired
	FoodServiceImpl service;

	@RequestMapping(value = "/food/FoodMain")
	public String FoodMain(@ModelAttribute("vo") FoodVo vo, Model model) throws Exception {

		vo.setShOptionDate(vo.getShOptionDate() == null ? 1 : vo.getShOptionDate());
		vo.setShDateStart(vo.getShDateStart() == null
				? UtilDateTime.calculateDayString(UtilDateTime.nowLocalDateTime(), Constants.DATE_INTERVAL)
				: UtilDateTime.add00TimeString(vo.getShDateStart()));
		vo.setShDateEnd(vo.getShDateEnd() == null ? UtilDateTime.nowString()
				: UtilDateTime.addNowTimeString(vo.getShDateEnd()));

		// count 가져올 것
		int count = service.selectOneFood(vo);

		vo.setParamsPaging(count);

		// count 가 0이 아니면 List 가져오는 부분 수행 후 model 개체에 담기
		if (count != 0) {
			List<Food> list = service.selectList(vo);
			model.addAttribute("list", list);
		} else {
			// by pass
		}

		System.out.println("UtilDateTime.nowLocalDateTime(): " + UtilDateTime.nowLocalDateTime());
		System.out.println("UtilDateTime.nowDate(): " + UtilDateTime.nowDate());
		System.out.println("UtilDateTime.nowString(): " + UtilDateTime.nowString());

		return "/food/FoodMain";

	}

	@ResponseBody
	@RequestMapping(value = "/food/loginProc") // 로그인
	public Map<String, Object> loginProc(Food dto, HttpSession httpSession) throws Exception {
		Map<String, Object> returnMap = new HashMap<String, Object>();

		Food rtFood = service.selectOneLogin(dto);

		if (rtFood != null) {
//			rtMember = service.selectOneLogin(dto);
			if (rtFood.getIfmmSeq() != null) {
				httpSession.setMaxInactiveInterval(60 * Constants.SESSION_MINUTE); // 60second * 30 = 30minute
//				session.setMaxInactiveInterval(-1);		// session time unlimited
//	
				httpSession.setAttribute("sessSeq", rtFood.getIfmmSeq()); // 세션값(로그인 하고 계속 갖고있음. Seq, ID , name)
				httpSession.setAttribute("sessId", rtFood.getIfmmId());
				httpSession.setAttribute("sessPassword", rtFood.getIfmmPassword());
				httpSession.setAttribute("sessName", rtFood.getIfmmName());

				returnMap.put("rt", "success");
			} else {
				returnMap.put("rt", "fail");
			}
		} else {
			returnMap.put("rt", "fail");
		}
		return returnMap;
	}

	@ResponseBody // 구글 로그인
	@RequestMapping(value = "/food/loginProcGoogle")
	public Map<String, Object> GloginProc(@RequestParam("ifmmName") String name, Food dto, HttpSession httpSession)
			throws Exception {
		Map<String, Object> returnMap = new HashMap<String, Object>();

		System.out.println(name);
		httpSession.setAttribute("sessSeq", "구글 회원입니다");
		httpSession.setAttribute("sessName", name);
		httpSession.setAttribute("sessId", "차경석");

		returnMap.put("rt", "success");

		return returnMap;
	}

	@ResponseBody //카카오 로그인
	@RequestMapping(value = "/food/KakaoLgProc")
	public Map<String, Object> KakaoLgProc(@RequestParam("ifmmName")String name, Food dto, HttpSession httpSession) throws Exception {
		Map<String, Object> returnMap = new HashMap<String, Object>();
		
		System.out.println(name);
		httpSession.setAttribute("sessName", name);
		httpSession.setAttribute("sessId","카카오 회원입니다");
		httpSession.setAttribute("sessSeq","카카오 회원입니다");
		
		returnMap.put("item", "success");
		
		return returnMap;	
	}
	
	/* NaverLoginBO */
	private NaverLoginBO naverLoginBO;
	private String apiResult = null;

	@Autowired
	private void setNaverLoginBO(NaverLoginBO naverLoginBO) {
		this.naverLoginBO = naverLoginBO;
	}

	// 로그인 첫 화면 요청 메소드
	@RequestMapping(value = "/food/FoodLogin", method = { RequestMethod.GET, RequestMethod.POST })
	public String login(Model model, HttpSession session) {

		/* 네이버아이디로 인증 URL을 생성하기 위하여 naverLoginBO클래스의 getAuthorizationUrl메소드 호출 */
		String naverAuthUrl = naverLoginBO.getAuthorizationUrl(session);

		// https://nid.naver.com/oauth2.0/authorize?response_type=code&client_id=sE***************&
		// redirect_uri=http%3A%2F%2F211.63.89.90%3A8090%2Flogin_project%2Fcallback&state=e68c269c-5ba9-4c31-85da-54c16c658125

		
		  //네이버 
		  model.addAttribute("url", naverAuthUrl);
		  
		  //생성한 인증 URL을 View로 전달 
		  return "/food/FoodLogin";
		 
	}

    @RequestMapping(value = "/food/callback", method = { RequestMethod.GET, RequestMethod.POST })
    public String NaverLgProc(@RequestParam String code, @RequestParam String state, HttpSession session) throws IOException {
		OAuth2AccessToken oauthToken = naverLoginBO.getAccessToken(session, code, state);
		
		//로그인 사용자 정보를 읽어온다.
		String apiResult = naverLoginBO.getUserProfile(oauthToken);
//      System.out.println(naverLoginBO.getUserProfile(oauthToken).toString());
        session.setAttribute("result", apiResult);
        System.out.println("result"+apiResult);
        
        session.setAttribute("sessSeq", 0); //생략 가능
        /* 네이버 로그인 성공 페이지 View 호출 */
        return "redirect:/food/FoodMain";
    }	

    @ResponseBody //페북 로그인
	@RequestMapping(value = "/food/FBLgProc")
	public Map<String, Object> FBLgProc(@RequestParam("ifmmname")String name, Food dto, HttpSession httpSession) throws Exception {
		Map<String, Object> returnMap = new HashMap<String, Object>();
		
		System.out.println(name);
		httpSession.setAttribute("sessName", name);
		httpSession.setAttribute("sessId","페이스북 회원입니다");
		httpSession.setAttribute("sessSeq","페이스북 회원입니다");
		
		returnMap.put("item", "success");
		
		return returnMap;	
	}    

    
	@ResponseBody
	@RequestMapping(value = "/food/logoutProc") // 로그아웃
	public Map<String, Object> logoutProc(HttpSession httpSession) throws Exception {
		Map<String, Object> returnMap = new HashMap<String, Object>();
		httpSession.invalidate();
		returnMap.put("rt", "success");
		return returnMap;
	}

	@RequestMapping(value = "/food/Fooddater")
	public String Fooddater(@ModelAttribute("vo") FoodVo vo, Model model) throws Exception {

		Food rt = service.selectOne(vo);

		model.addAttribute("item", rt);
		//파생테이블이 가지고 있는 데이터
		model.addAttribute("material", service.selectfdmaterialList(vo));
		
		
		return "food/Fooddater";
	}

	@RequestMapping(value = "/food/Fooddater2")
	public String Fooddater2() throws Exception {

		return "food/Fooddater2";
	}

	@RequestMapping(value = "/food/Fooddater3")
	public String Fooddater3() throws Exception {

		return "food/Fooddater3";
	}

	@RequestMapping(value = "/food/FoodFindPW")
	public String FoodFindPW() throws Exception {

		return "food/FoodFindPW";
	}

	@RequestMapping(value = "/food/FoodFindPW2")
	public String FoodFindPW2() throws Exception {

		return "food/FoodFindPW2";
	}

	@RequestMapping(value = "/food/Foodreg")
	public String Foodreg(Model model) throws Exception {

		return "food/Foodreg";
	}

	@SuppressWarnings(value = { "all" })
	@RequestMapping(value = "/food/FoodInst")
	public String FoodInst(FoodVo vo, Food dto, RedirectAttributes redirectAttributes) throws Exception {

		service.insert(dto);

		vo.setFdrsSeq(dto.getFdrsSeq());

		redirectAttributes.addFlashAttribute("vo", vo);

		if (Constants.INSERT_AFTER_TYPE == 1) {
			return "redirect:/food/FoodMain";
		} else {
			return "redirect:/food/Foodreg";
		}
	}
}
