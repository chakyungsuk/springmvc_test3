package com.junefw.infra.modules.food;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class FoodController {
	
	@RequestMapping(value = "/food/FoodLogin")
	public String FoodLogin() throws Exception {
		
		
		return "food/FoodLogin";
	}
	
	@RequestMapping(value = "/food/FoodMain")
	public String FoodMain() throws Exception {
		
		
		return "food/FoodMain";
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
	
}
