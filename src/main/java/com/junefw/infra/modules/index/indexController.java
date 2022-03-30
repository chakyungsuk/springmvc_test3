package com.junefw.infra.modules.index;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;


@Controller
public class indexController {
	
	@RequestMapping(value = "/index/indexView")
	public String indexView() throws Exception {
		
		
		return "index/indexView";
	}
	
}
