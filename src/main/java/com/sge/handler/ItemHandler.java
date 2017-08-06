package com.sge.handler;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.sge.model.ItemModel;
import com.sge.service.ItemDetailsService;

@Controller
public class ItemHandler {
	
	private static final Logger logger = LoggerFactory.getLogger(ItemHandler.class);
	
	@Autowired
	ItemDetailsService itemDetailsService;
	
	@PostMapping(path = "/searchItem")
	public @ResponseBody List<ItemModel> searchItem(@RequestParam String itemNameOrId) {
		logger.info("List<ItemModel> searchItem(@RequestParam String itemNameOrId) method begins");
		
		List<ItemModel> itemList = itemDetailsService.getMaterialList(itemNameOrId);
		
		logger.info("List<ItemModel> searchItem(@RequestParam String itemNameOrId) method ends");
		return itemList;
	}
	
}
