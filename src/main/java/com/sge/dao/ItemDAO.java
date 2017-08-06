package com.sge.dao;

import java.util.List;

import com.sge.model.ItemModel;

public interface ItemDAO {

	public List<String> getMaterialList();
	
	public List<ItemModel> getMaterialList(String itemNameOrId);
}
