package com.sge.handler;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class SalesHandler {

	private static final Logger logger = LoggerFactory.getLogger(SalesHandler.class);

	
	@GetMapping(path = "/salesentry")
	public ModelAndView loadSalesEntryScreen() {
		logger.info("loadSalesEntryScreen method begins");
		ModelAndView mv = new ModelAndView();
		mv.setViewName("salesentry");
		logger.info("loadSalesEntryScreen method ends");
		return mv;
	}

}
