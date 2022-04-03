package com.junefw.infra.modules.food;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class FoodController {
	
	@RequestMapping(value = "/food/foodLogin")
	public String foodLogin() throws Exception {
		
		
		return "food/foodLogin";
	}
	
	@RequestMapping(value = "/food/foodMain")
	public String foodMain() throws Exception {
		
		
		return "food/foodMain";
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
	
}
