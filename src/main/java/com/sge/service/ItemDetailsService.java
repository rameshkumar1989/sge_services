package com.sge.service;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.sge.dao.ItemDAO;
import com.sge.model.ItemModel;

@Service
public class ItemDetailsService {

	private static final Logger logger = LoggerFactory.getLogger(ItemDetailsService.class);

	@Autowired
	ItemDAO itemDaoImpl;

	public List<String> getMaterialList() {
		logger.info("List<String> fetchMaterialList() method begins");
		List<String> materialList = itemDaoImpl.getMaterialList();
		logger.info("List<String> fetchMaterialList() method ends");
		return materialList;
	}

	public List<ItemModel> getMaterialList(String itemNameOrId) {
		logger.info("List<ItemModel> getMaterialList(String itemNameOrId) method begins");
		List<ItemModel> itemList = itemDaoImpl.getMaterialList(itemNameOrId);
		logger.info("List<ItemModel> getMaterialList(String itemNameOrId) method ends");
		return itemList;
	}

}
