package com.sge.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Types;
import java.util.ArrayList;
import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataAccessException;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

import com.sge.model.ItemModel;

@Repository
public class ItemDAOImpl implements ItemDAO {

	private static final Logger logger = LoggerFactory.getLogger(ItemDAOImpl.class);
	@Autowired
	private JdbcTemplate jdbcTemplate;

	private static final String GET_ALL_MATERIAL = "SELECT itemname FROM itemdetails ORDER BY itemname ASC";
	

	public List<String> getMaterialList() {
		logger.info("List<String> getMaterialList() method begins");

		List<String> materialList = new ArrayList<String>();
		try {
			materialList = jdbcTemplate.queryForList(GET_ALL_MATERIAL, String.class);
			logger.info("Material List {}", materialList);
		} catch (DataAccessException dae) {
			logger.error("DataAccessException {} ", dae);
		}

		logger.info("List<String> getMaterialList() method ends");
		return materialList;

	}

	public List<ItemModel> getMaterialList(String itemNameOrId) {
		logger.info("List<ItemModel> getMaterialList(String itemNameOrId) method begins");

		List<ItemModel> materialList = new ArrayList<ItemModel>();
		try {
			String getSelectiveQuery = "SELECT itemcode, itemname FROM itemdetails WHERE #dynamicparam# isdeleted=0 ORDER BY itemname ASC";
			String query = "";
			if (itemNameOrId.matches("\\d*")) {
				logger.info("search by item code");
				query = getSelectiveQuery.replace("#dynamicparam#", "itemcode like '" + itemNameOrId + "%' and ");
			} else {
				logger.info("search by item name");
				query = getSelectiveQuery.replace("#dynamicparam#", "itemname like '" + itemNameOrId.toUpperCase() + "%' and ");
			}
			logger.info(" final query is {}", query);
			materialList = jdbcTemplate.query(query, new ItemModelRowMapper());
			logger.info("Material List {}", materialList);
		} catch (DataAccessException dae) {
			logger.error("DataAccessException {} ", dae);
		}

		logger.info("List<ItemModel> getMaterialList(String itemNameOrId) method ends");
		return materialList;
	}

	public class ItemModelRowMapper implements RowMapper<ItemModel> {
		public ItemModel mapRow(ResultSet rs, int rowNum) throws SQLException {
			ItemModel itemModel = new ItemModel();
			itemModel.setItemId(rs.getInt("ITEMCODE"));
			itemModel.setItemName(rs.getString("ITEMNAME"));

			return itemModel;
		}

	}

}
