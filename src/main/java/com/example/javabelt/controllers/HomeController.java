package com.example.javabelt.controllers;

import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;

import com.example.javabelt.models.Show;
import com.example.javabelt.services.ShowService;

@Controller
public class HomeController {

	@Autowired
	private ShowService showService;
	
	@GetMapping("/shows")
	public String dashboard(HttpSession session, Model model) {
		if(session.getAttribute("userId")==null) {
			session.invalidate();
			return "redirect:/logout";
		}
		model.addAttribute("showList",showService.allShows());
		return "dashboard.jsp";
	}
	
		//CREATE
	@GetMapping("/shows/new")
	public String renderCreateShow(
			@ModelAttribute("newShow")Show newShow, HttpSession session) {
		if(session.getAttribute("userId")==null) {
			session.invalidate();
			return "redirect:/logout";}
		return "newShow.jsp";
	}
	
	@PostMapping("/shows/process")
	public String processShowForm(
			@Valid @ModelAttribute("newShow")Show show,
			BindingResult result, Model model) {
		if(result.hasErrors()){
			return "newShow.jsp";
	}else {
		showService.createShow(show);
		return "redirect:/shows";
		}
	}
		//DETAILS
		@GetMapping("/shows/{id}")	
		public String showDetails(
				@PathVariable("id")Long id, Model model) {
		Show foundShow = showService.oneShow(id);
		model.addAttribute("show", foundShow);
		return "oneShow.jsp";
	}
		
		//EDIT
		//1. show form
		@GetMapping("/shows/edit/{id}")
		public String showEditForm(@PathVariable("id")Long id, Model model) {
			Show foundShow = showService.oneShow(id);
			model.addAttribute("show", foundShow);
			return "editShow.jsp";
		}
		@PutMapping("/shows/edit/{id}")
		public String processEditForm(
				@Valid @ModelAttribute("show")Show show,
				BindingResult result, Model model) {
			if(result.hasErrors()) {
				return "editShow.jsp";
			}else {
				showService.createShow(show);
				return "redirect:/shows";
			}
		}
		//DELETE
		@DeleteMapping("/shows/delete/{id}")
		public String deleteShow(@PathVariable("id")Long id) {
			showService.deleteShow(id);
			return "redirect:/shows";
		}
		
}
