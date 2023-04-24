package com.william.omikuji.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import jakarta.servlet.http.HttpSession;

@Controller
@RequestMapping("/omikuji")
public class FormController {
	@RequestMapping("")
	public String form() {
		return "form.jsp";
	}
	@GetMapping("/show")
	public String display(HttpSession session, Model model) {
		String omikuji = (String) session.getAttribute("omikuji");
		model.addAttribute("omikuji", omikuji);
		return "display.jsp";
	}
	@PostMapping("/submit")
	public String submit(
		HttpSession session,
		@RequestParam(value="number") Integer number,
		@RequestParam(value="city") String city,
		@RequestParam(value="person") String person,
		@RequestParam(value="hobby") String hobby,
		@RequestParam(value="animal") String animal,
		@RequestParam(value="niceThing") String niceThing) {
		
		String omikuji = String.format(
				"In %s years you will live in %s with %s as your roommate, %s. The next time you see a %s, you will have good luck. Also, %s.", 
				number, city, person, hobby, animal, niceThing);
		session.setAttribute("omikuji", omikuji);
	
		return "redirect:/omikuji/show";
	}
}

