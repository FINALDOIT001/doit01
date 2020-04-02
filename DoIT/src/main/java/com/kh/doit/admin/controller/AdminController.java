package com.kh.doit.admin.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class AdminController {
	
	
	@RequestMapping("go.ad")
	public String gogoAdmin() {
		
		return "AdminPage/main";
	}
}
