package com.practice.express;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class RequestMappingController {
	
	@RequestMapping("/displayForm")
	public String displayTheForm() {
		return "displayform-page";
	}
}
