package com.practice.express;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
@RequestMapping("/hello")
public class FormWebPageController {
	
	@RequestMapping("/displayForm")
	public String displayForm() {
		return "displayform-page";
	}
	
	@RequestMapping("/processForm")
	public String processForm() {
		return "webpageform";
		
	}
	@RequestMapping("/processFormRequestParam")
	public String displayFormdataFromModel(
			@RequestParam("EmployeeName") String name, 
			Model model) {
		
		/*
		 * //read the request parameter from HTML form String name =
		 * request.getParameter("EmployeeName");
		 */
		//Convert the data to all Caps
		name = name.toUpperCase();
		
		String result = "Hey my friend!" + name;
		
		//add message to model
		model.addAttribute("message", result);
		
		return "webpageform"; 
	}

} 
