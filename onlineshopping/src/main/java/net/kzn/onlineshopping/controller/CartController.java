package net.kzn.onlineshopping.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import net.kzn.onlineshopping.service.CartService;

@Controller
@RequestMapping("/cart")
public class CartController {

	@Autowired
	private CartService cartService;
	
	@RequestMapping("/show")
	public ModelAndView showCart(@RequestParam(name = "result", required=false)String result) {
		ModelAndView mv = new ModelAndView("page");
		if(result!=null) {
			switch(result) {
			case "updated":
					mv.addObject("message", "CartLine has been updated successfully!");
					break;
			case "deleted":
				mv.addObject("message", "CartLine has been removed successfully!");
				break;					
			case "error":
				mv.addObject("message", "Something went wrong!");
				break;			
			}
		}
		mv.addObject("title", "User Cart");
		mv.addObject("userClickShowCart", true);
		mv.addObject("cartLines", cartService.getCartLines());		
		return mv;		
	}
	
	@RequestMapping("/{cartLineId}/update")
	public String updateCart(@PathVariable int cartLineId, @RequestParam int count) {		
		String response = cartService.updateCartLine(cartLineId, count);		
		return "redirect:/cart/show?"+response;
		
	}
		
	@RequestMapping("/{cartLineId}/delete")
	public String updateCart(@PathVariable int cartLineId) {		
		String response = cartService.deleteCartLine(cartLineId);		
		return "redirect:/cart/show?"+response;
		
	}
	
	
}
