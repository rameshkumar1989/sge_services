package com.sge.handler;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

@RestController
public class PurchaseEntryLevel2Handler {

	private static final Logger logger = LoggerFactory.getLogger(PurchaseEntryLevel1Handler.class);

	
	@GetMapping(path = "/purchaseentryscreen2")
	public ModelAndView loadPurchaseEntryLevel2Screen() {
		logger.info("loadPurchaseEntryLevel2Screen() method begins");
		ModelAndView model = new ModelAndView();
		model.setViewName("purchaseentryscreen2");
		logger.info("loadPurchaseEntryLevel2Screen() method ends");
		return model;
	}
	
}
