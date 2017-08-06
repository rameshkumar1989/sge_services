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
import org.springframework.transaction.TransactionStatus;
import org.springframework.transaction.support.TransactionCallback;
import org.springframework.transaction.support.TransactionTemplate;

import com.sge.model.VendorModel;

@Repository
public class VendorDAOImpl implements VendorDAO {

	private static final Logger logger = LoggerFactory.getLogger(VendorDAOImpl.class);
	@Autowired
	private JdbcTemplate jdbcTemplate;
	@Autowired
	private TransactionTemplate transactionTemplate;

	private static final String INSERT_VENDOR = "";
	private static final String INSERT_VENDOR_BANK_AC = "";
	
	public List<VendorModel> fetchVendorList(String vendorShortName) {
		logger.info("List<VendorModel> fetchVendorList(String vendorShortName) method begins with {}", vendorShortName);
		String sql = "select * from SG_VENDOR_MASTER where COMPANY_NAME like '" + vendorShortName.toUpperCase() + "%' order by COMPANY_NAME";
		List<VendorModel> vendorsList = new ArrayList<VendorModel>();
		try {
			vendorsList = jdbcTemplate.query(sql, new VendorModelRowMapper());
		} catch (DataAccessException e) {
			logger.error("DataAccessException occured:", e);
		}
		logger.info("List<VendorModel> fetchVendorList(String vendorShortName) method ends with {}", vendorShortName);
		return vendorsList;
	}
	
	public class VendorModelRowMapper implements RowMapper<VendorModel> {
		public VendorModel mapRow(ResultSet rs, int rowNum) throws SQLException {

			VendorModel vendor = new VendorModel();
			vendor.setVendorId(rs.getInt("VENDOR_ID"));
			vendor.setVendorCompanyName(rs.getString("COMPANY_NAME"));
			vendor.setOfficeAddress(rs.getString("OFFICE_ADDRESS"));

			return vendor;
		}
	}

	public boolean addVendor(VendorModel inputVendorModel) {
		logger.info("addVendor(VendorModel vendorModel) method begins");
		
		final VendorModel vendorModel = inputVendorModel;
		
		TransactionCallback<Object> transactionCallback = new TransactionCallback<Object>() {

			public Object doInTransaction(TransactionStatus status) {

				Object[] args = { vendorModel.getVendorId() };
				int[] types = { Types.NUMERIC };

				jdbcTemplate.update("", args, types);

				return null;
			}
		};
		transactionTemplate.execute(transactionCallback);
		
		logger.info("addVendor(VendorModel vendorModel) method ends");
		return true;
	}


	public List<String> getMaterialList() {
		logger.info("List<String> getMaterialList() method begins");

		List<String> materialList = new ArrayList<String>();
		try {
			materialList = jdbcTemplate.queryForList("SELECT itemname FROM itemdetails ORDER BY itemname ASC", String.class);
			logger.info("Material List {}", materialList);
		} catch (DataAccessException dae) {
			logger.error("DataAccessException {} ", dae);
		}
		
		logger.info("List<String> getMaterialList() method ends");
		return materialList;

	}
		
}
