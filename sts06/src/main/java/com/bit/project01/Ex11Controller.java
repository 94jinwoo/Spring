package com.bit.project01;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class Ex11Controller {

	@RequestMapping("/ex11")
//	public String ex11(String id) {
//	public String ex11(@RequestParam String id) {
//	public String ex11(@RequestParam("id") String id, Model model) {
	public String ex11(@ModelAttribute("msg") String msg) {
		System.out.println(msg);
//		model.addAttribute("id",id);
		return "ex11";
	}
	
//	@RequestMapping("/ex12/{1}/{2}")
//	public String ex12(@PathVariable("1") String id, @PathVariable("2") String pw) {
	@RequestMapping("/ex12/{id}")
	public String ex12(@PathVariable String id) {
		System.out.println(id);
//		System.out.println(pw);
		return "ex11";
	}
	
}
