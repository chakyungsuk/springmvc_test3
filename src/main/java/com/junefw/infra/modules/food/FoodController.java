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
	
}
