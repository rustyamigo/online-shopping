package net.kzn.onlineshopping.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/cart")
public class CartController {

	@RequestMapping("/show")
	public ModelAndView showCart() {
		
		ModelAndView mv = new ModelAndView("page");
		
		mv.addObject("title", "User Cart");
		mv.addObject("userClickShowCart", true);
		mv.addObject("cartLines", null);
		
		return mv;
		
		
	}
	
	
}
