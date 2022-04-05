package com.junefw.infra.modules.food;

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

import com.junefw.infra.common.constants.Constants;
import com.junefw.infra.common.util.UtilDateTime;

@Controller
public class FoodController {
	
	private static final String FoodVo = null;
	@Autowired
	FoodServiceImpl service;
	
	@RequestMapping(value = "/food/FoodMain")
	public String FoodMain(@ModelAttribute("vo") FoodVo vo, Model model) throws Exception {
		
		vo.setShOptionDate(vo.getShOptionDate() == null ? 1 : vo.getShOptionDate());
		vo.setShDateStart(vo.getShDateStart() == null ? UtilDateTime.calculateDayString(UtilDateTime.nowLocalDateTime(), Constants.DATE_INTERVAL) : UtilDateTime.add00TimeString(vo.getShDateStart()));
		vo.setShDateEnd(vo.getShDateEnd() == null ? UtilDateTime.nowString() : UtilDateTime.addNowTimeString(vo.getShDateEnd()));
		 
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
	
	@RequestMapping(value = "/food/FoodLogin")
	public String FoodLogin() throws Exception {
		
		
		return "food/FoodLogin";
	}
	
	
	@ResponseBody
	@RequestMapping(value = "/food/loginProc") // 로그인
	public Map<String, Object> loginProc(Food dto, HttpSession httpSession) throws Exception {
		Map<String, Object> returnMap = new HashMap<String, Object>();
		
		Food rtFood = service.selectOneLogin(dto);
		
		System.out.println("rtFood()----------" + rtFood);
		
		if(rtFood != null) {
//			rtMember = service.selectOneLogin(dto);
		System.out.println("rtFood.getIfmmSeq()----------" + rtFood.getIfmmSeq());
			if(rtFood.getIfmmSeq() != null) {
				httpSession.setMaxInactiveInterval( 60 * Constants.SESSION_MINUTE);	//60second * 30 = 30minute  
//				session.setMaxInactiveInterval(-1);		// session time unlimited
//	
				httpSession.setAttribute("sessSeq", rtFood.getIfmmSeq());  // 세션값(로그인 하고 계속 갖고있음. Seq, ID , name)
				httpSession.setAttribute("sessId", rtFood.getIfmmId());
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
	
	
	@ResponseBody
	@RequestMapping(value = "/food/logoutProc")   // 로그아웃
	public Map<String, Object> logoutProc(HttpSession httpSession) throws Exception {
		Map<String, Object> returnMap = new HashMap<String, Object>();
		httpSession.invalidate();
		returnMap.put("rt", "success");
		return returnMap;
	}
	
	
	@RequestMapping(value = "/food/Fooddater")
	public String Fooddater() throws Exception {
		
		
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
	public String Foodreg() throws Exception {
		
		
		return "food/Foodreg";
	}
	
}
