package ua.kiev.police.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class HomeController {

	@RequestMapping("/")
	public String home() {
		return "home";
	}






	@RequestMapping("/help")
	public String help(){
		return "help";
	}


}

