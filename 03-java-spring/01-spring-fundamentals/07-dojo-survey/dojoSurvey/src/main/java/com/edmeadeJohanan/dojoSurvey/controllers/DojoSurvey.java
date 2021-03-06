package com.edmeadeJohanan.dojoSurvey.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class DojoSurvey {
	@RequestMapping("/")
	public String main() {
		return "index.jsp";
	}
	@PostMapping("/result")
	public String result(@RequestParam(value="name")String name, @RequestParam(value="location")String location, @RequestParam(value="language")String language, @RequestParam(value="comment")String comment, Model model) {
		model.addAttribute("name", name);
		model.addAttribute("loation", location);
		model.addAttribute("language", language);
		model.addAttribute("comment", comment);
		return "results.jsp";
	}
}
