package com.example.javabelt.controllers;

import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import com.example.javabelt.models.LoginUser;
import com.example.javabelt.models.User;
import com.example.javabelt.services.UserService;

@Controller
public class UserController {

	@Autowired
	private UserService userService;
	
	@GetMapping("/")
	public String index(Model model	) {
		model.addAttribute("newUser", new User());
		model.addAttribute("newLogin", new LoginUser());
		return "logreg.jsp";
	}
	
	@PostMapping("/register")
	public String processRegister( @Valid @ModelAttribute("newUser") User newUser,
			BindingResult result, Model model, HttpSession session) {
		User registeredUser = userService.register(newUser, result);
		if(result.hasErrors()) {
			model.addAttribute("newLogin", new LoginUser());
			return "logreg.jsp";
		}else { 
			//save it on database
			session.setAttribute("userId", registeredUser.getId());
			session.setAttribute("userName", registeredUser.getName());
			return "redirect:/shows";
		}
	}
	// Login
	
	@PostMapping("/login")
	public String processLogin( @Valid @ModelAttribute("newLogin") LoginUser newLogin,
			BindingResult result, Model model, HttpSession session) {
		User user = userService.login(newLogin, result);
		if(result.hasErrors()) {
			model.addAttribute("newUser", new User());
			return "logreg.jsp";
		}else { 
			//save it on database
			session.setAttribute("userId", user.getId());
			session.setAttribute("userName", user.getName());
			return "redirect:/shows";
		}
	}
	
	@GetMapping("/logout")
	public String logout(HttpSession session) {
		session.invalidate();
		return "redirect:/";
	}
	
	
}
