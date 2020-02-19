package com.bit.project01;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class Ex05Controller {

	@RequestMapping("/ex05")
	public String func01(Model model, HttpSession session) {
		System.out.println(model);
		System.out.println(session);
		model.addAttribute("serverTime", "ex05 page");
		return "home";
	}
	@RequestMapping("/ex06")
	public String ex07(Model model){
		model.addAttribute("serverTime", "ex06 page");
		return "home";
	}
}
