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

import com.sge.constants.CustomerConstants;
import com.sge.model.CustomerAccountsDeptModel;
import com.sge.model.CustomerModel;
import com.sge.model.CustomerPurchaseDeptModel;
import com.sge.model.CustomerSiteDetails;

@Repository
public class CustomerDAOImpl implements CustomerDAO {

	private static final Logger logger = LoggerFactory.getLogger(CustomerDAOImpl.class);
	@Autowired
	private JdbcTemplate jdbcTemplate;
	@Autowired
	private TransactionTemplate transactionTemplate;
	
	private static final String GENERATE_CUSTOMER_CODE = "select generate_customer_id_seq.nextval from dual";
	private static final String INSERT_CUSTOMER_MASTER = "insert into sg_customer_master (customer_id, customer_name, customer_shortname,introduced_by, address, ho_address, ro_address, office_contact1, office_contact2, office_contact3, office_contact4, office_email1, office_email2, tin_gst_no, cst_no, cin_no, company_pan_no, is_active, billing_frequency) values(?, ?, ?, ?, ?, ?,?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
	private static final String INSERT_CUSTOMER_PURCHASE_CONTACT_DETAILS = "insert into sg_customer_purchase_dept(customer_id, contact_name, designation, email_id, mobile_no1, mobile_no2, is_active) values(?, ?, ?, ?, ?, ?, ?)";
	private static final String INSERT_CUSTOMER_ACCOUNT_CONTACT_DETAILS = "insert into sg_customer_accounts_dept(customer_id, contact_name, designation, mobile_no, email_id, is_active) values(?, ?, ?, ?, ?, ?)";
	private static final String INSERT_CUSTOMER_SITE_DETAILS = "insert into sg_customer_site_details(customer_id, site_name, site_address, contact_name, designation, mobile_no, email_id, is_active) values(?, ?, ?, ?, ?, ?, ?, ?)";

	public int generateCustomerCode() {
		logger.info("int generateCustomerCode() method begins");
		int customerCode = 0;
		try {
			customerCode = Integer.parseInt(jdbcTemplate.queryForObject(GENERATE_CUSTOMER_CODE, String.class));
		} catch (DataAccessException e) {
			logger.error("DataAccessException ", e);
		}
		logger.info("int generateCustomerCode() method ends");
		return customerCode;
	}

	public boolean addCustomer(CustomerModel inputCustomerModel) {
		final CustomerModel customerModel = inputCustomerModel;
		boolean customerAdded = false;
		try {

			TransactionCallback<Integer> txnCallBack = new TransactionCallback<Integer>() {
				public Integer doInTransaction(TransactionStatus status) {
					int insertedRows = 0;
					try {
						int customerId = generateCustomerCode();
						
						List<CustomerAccountsDeptModel> accountContactList = customerModel.getAccountsDeptContact();
						List<CustomerPurchaseDeptModel> purchaseContactList = customerModel.getPurchaseDeptContact();
						List<CustomerSiteDetails> siteDetailsList = customerModel.getSiteDetails();

						Object[] customerParams = { customerId, customerModel.getCustomerName().toUpperCase(), customerModel.getCustomerShortName().toUpperCase(),
								customerModel.getIntroducedBy(),customerModel.getAddress(), customerModel.getHeadOfficeAddress(),
								customerModel.getRegisteredOfficeAddress(), customerModel.getOfficeContact1(),
								customerModel.getOfficeContact2(), customerModel.getOfficeContact3(),
								customerModel.getOfficeContact4(), customerModel.getEmailId1(), customerModel.getEmailId2(),
								customerModel.getTinGstNo(), customerModel.getCstNo(), customerModel.getCinNo(),
								customerModel.getPanNo(), CustomerConstants.CUSTOMER_ACTIVE,
								customerModel.getBillingFrequency() };

						int[] customerTypes = { Types.NUMERIC, Types.VARCHAR, Types.VARCHAR, Types.VARCHAR, Types.VARCHAR, Types.VARCHAR,
								Types.VARCHAR,Types.VARCHAR, Types.VARCHAR, Types.VARCHAR, Types.VARCHAR, Types.VARCHAR, Types.VARCHAR,
								Types.VARCHAR, Types.VARCHAR, Types.VARCHAR, Types.VARCHAR, Types.NUMERIC, Types.NUMERIC };
						insertedRows += jdbcTemplate.update(INSERT_CUSTOMER_MASTER, customerParams, customerTypes );
						logger.info("{} customer master records inserted", insertedRows);

						for (CustomerPurchaseDeptModel purchaseContact : purchaseContactList) {

							Object[] purchaseParams = { customerId, purchaseContact.getContactName().toUpperCase(),
									purchaseContact.getDesignation(), purchaseContact.getEmailId(),
									purchaseContact.getMobileNo1(), purchaseContact.getMobileNo2(),
									CustomerConstants.CUSTOMER_ACTIVE };

							int[] purchaseTypes = {Types.NUMERIC, Types.VARCHAR, Types.VARCHAR, Types.VARCHAR, Types.VARCHAR, Types.VARCHAR, Types.NUMERIC};
							insertedRows += jdbcTemplate.update(INSERT_CUSTOMER_PURCHASE_CONTACT_DETAILS, purchaseParams, purchaseTypes);
							logger.info("{} records inserted after purchase contact", insertedRows);
						}
						
						for (CustomerAccountsDeptModel accountsContact : accountContactList) {

							Object[] accountsParams = { customerId, accountsContact.getContactName(),
									accountsContact.getDesignation(), accountsContact.getMobileNo(),
									accountsContact.getEmailId(), CustomerConstants.CUSTOMER_ACTIVE };
							int[] accountsTypes = { Types.NUMERIC, Types.VARCHAR, Types.VARCHAR, Types.VARCHAR,
									Types.VARCHAR, Types.NUMERIC };

							insertedRows += jdbcTemplate.update(INSERT_CUSTOMER_ACCOUNT_CONTACT_DETAILS, accountsParams, accountsTypes);
							logger.info("{} records inserted after accounts contact", insertedRows);
						}
						
						for (CustomerSiteDetails siteDetails : siteDetailsList) {
							Object[] siteParams = { customerId, siteDetails.getSiteName(), siteDetails.getSiteAddress(),
									siteDetails.getContactName(), siteDetails.getDesignation(),
									siteDetails.getMobileNo(), siteDetails.getEmailId(),
									CustomerConstants.CUSTOMER_ACTIVE };
							int[] siteTypes = { Types.NUMERIC, Types.VARCHAR, Types.VARCHAR, Types.VARCHAR,
									Types.VARCHAR, Types.VARCHAR, Types.VARCHAR, Types.NUMERIC };
							
							insertedRows += jdbcTemplate.update(INSERT_CUSTOMER_SITE_DETAILS, siteParams, siteTypes);
							logger.info("{} records inserted after site details", insertedRows);
						}
						
					} catch (Exception e) {
						
						logger.error("Exception occurred while inserting customer ", e);
						status.setRollbackOnly();
					}
					return insertedRows;
				}
			};
			
			int insertedCount = transactionTemplate.execute(txnCallBack);
			if (insertedCount == (customerModel.getPurchaseDeptContact().size() + customerModel.getAccountsDeptContact().size() + customerModel.getSiteDetails().size() + 1)){
				customerAdded = true;
			}
		} catch (DataAccessException dae) {
			logger.error("Error occurred ", dae);
		}
		
		return customerAdded;
	}

	public List<CustomerModel> searchCustomer(String customerNameOrId) {
		
		List<CustomerPurchaseDeptModel> purchaseDeptContact = new ArrayList<CustomerPurchaseDeptModel>();
		List<CustomerAccountsDeptModel> accountsDeptContact = new ArrayList<CustomerAccountsDeptModel>();
		List<CustomerSiteDetails> siteDetails = new ArrayList<CustomerSiteDetails>();

		String searchCustomerQuery = "select * from sg_customer_master where ";
		String searchCustomerPurchaseQuery = "select a.*,b.* from sg_customer_purchase_dept b,sg_customer_master a where ";
		String searchCustomerAccountsQuery = "select a.*,c.* from sg_customer_accounts_dept c, sg_customer_master a where ";
		String searchCustomerSiteQuery = "select a.*,d.* from  sg_customer_site_details d, sg_customer_master a where ";
		if (customerNameOrId.matches("\\d*")) {
			logger.info("this is search by customer id ");
			searchCustomerQuery = searchCustomerQuery + "customer_id = " + customerNameOrId;
			searchCustomerPurchaseQuery= searchCustomerPurchaseQuery + "b.customer_id = " + customerNameOrId +" and a.customer_id=b.customer_id ";
			searchCustomerAccountsQuery=searchCustomerAccountsQuery + "c.customer_id = " + customerNameOrId +" and a.customer_id=c.customer_id ";
			searchCustomerSiteQuery= searchCustomerSiteQuery + "d.customer_id = " + customerNameOrId +" and a.customer_id=d.customer_id ";
		} else {
			logger.info("this is search by customer name");
			searchCustomerQuery = searchCustomerQuery + "customer_name like '" + customerNameOrId.toUpperCase() + "%' " ;
			searchCustomerPurchaseQuery= searchCustomerPurchaseQuery + "a.customer_name like '" + customerNameOrId.toUpperCase() + "%' and a.customer_id=b.customer_id ";
			searchCustomerAccountsQuery=searchCustomerAccountsQuery + "a.customer_name like '" + customerNameOrId.toUpperCase() + "%' and a.customer_id=c.customer_id ";
			searchCustomerSiteQuery= searchCustomerSiteQuery + "a.customer_name like '" + customerNameOrId.toUpperCase() + "%' and a.customer_id=d.customer_id ";
		}

		searchCustomerQuery = searchCustomerQuery + " and is_active = 1 order by customer_name";
		searchCustomerPurchaseQuery= searchCustomerPurchaseQuery + "and b.is_active = 1 order by a.customer_name";
		searchCustomerAccountsQuery=searchCustomerAccountsQuery + "and c.is_active = 1 order by a.customer_name";
		searchCustomerSiteQuery= searchCustomerSiteQuery + "and d.is_active = 1 order by a.customer_name";
		logger.info("final query {}", searchCustomerQuery);
		List<CustomerModel> customerNamesList = null;
		try {
			customerNamesList = jdbcTemplate.query(searchCustomerQuery, new CustomerMasterRowMapper());
			purchaseDeptContact=jdbcTemplate.query(searchCustomerPurchaseQuery, new CustomerPurchaseRowMapper());
			accountsDeptContact=jdbcTemplate.query(searchCustomerAccountsQuery, new CustomerAccountRowMapper());
			siteDetails=jdbcTemplate.query(searchCustomerSiteQuery, new CustomerSiteRowMapper());
			if(customerNamesList != null) {
				customerNamesList.get(0).setAccountsDeptContact(accountsDeptContact);
				customerNamesList.get(0).setPurchaseDeptContact(purchaseDeptContact);
				customerNamesList.get(0).setSiteDetails(siteDetails);
			}
		} catch (DataAccessException e) {
			logger.error("DataAccessException occured: {}", e);
		}

		return customerNamesList;
	}

	public class CustomerMasterRowMapper implements RowMapper<CustomerModel> {
		public CustomerModel mapRow(ResultSet rs, int rowNum) throws SQLException {
			CustomerModel customerModel = new CustomerModel();
			customerModel.setCustomerId(rs.getInt("CUSTOMER_ID"));
			customerModel.setCustomerName(rs.getString("CUSTOMER_NAME"));
			customerModel.setCustomerShortName(rs.getString("CUSTOMER_SHORTNAME"));
			customerModel.setIntroducedBy(rs.getString("INTRODUCED_BY"));
			customerModel.setAddress(rs.getString("ADDRESS"));
			customerModel.setOfficeContact1(rs.getString("OFFICE_CONTACT1"));
			customerModel.setTinGstNo(rs.getString("TIN_GST_NO"));
			customerModel.setCstNo(rs.getString("CST_NO"));
			customerModel.setCinNo(rs.getString("CIN_NO"));
			customerModel.setEmailId1(rs.getString("OFFICE_EMAIL1"));
			customerModel.setEmailId2(rs.getString("OFFICE_EMAIL2"));
			customerModel.setHeadOfficeAddress(rs.getString("HO_ADDRESS"));
			customerModel.setRegisteredOfficeAddress(rs.getString("RO_ADDRESS"));
			customerModel.setOfficeContact2(rs.getString("OFFICE_CONTACT2"));
			customerModel.setOfficeContact3(rs.getString("OFFICE_CONTACT3"));
			customerModel.setOfficeContact4(rs.getString("OFFICE_CONTACT4"));
			return customerModel;
		}

	}
	
	
	public class CustomerPurchaseRowMapper implements RowMapper<CustomerPurchaseDeptModel> {
		public CustomerPurchaseDeptModel mapRow(ResultSet rs, int rowNum) throws SQLException {
			CustomerPurchaseDeptModel customerModel = new CustomerPurchaseDeptModel();
			customerModel.setCustomerId(rs.getInt("CUSTOMER_ID"));
			customerModel.setContactName(rs.getString("CONTACT_NAME"));
			customerModel.setDesignation(rs.getString("DESIGNATION"));
			customerModel.setMobileNo1(rs.getString("MOBILE_NO1"));
			customerModel.setMobileNo2(rs.getString("MOBILE_NO2"));
			customerModel.setEmailId(rs.getString("EMAIL_ID"));
			return customerModel;
		}
	}
	
	
	public class CustomerAccountRowMapper implements RowMapper<CustomerAccountsDeptModel> {
		public CustomerAccountsDeptModel mapRow(ResultSet rs, int rowNum) throws SQLException {
			CustomerAccountsDeptModel customerModel = new CustomerAccountsDeptModel();
			customerModel.setCustomerId(rs.getInt("CUSTOMER_ID"));
			customerModel.setContactName(rs.getString("CONTACT_NAME"));
			customerModel.setDesignation(rs.getString("DESIGNATION"));
			customerModel.setMobileNo(rs.getString("MOBILE_NO"));
			customerModel.setEmailId(rs.getString("EMAIL_ID"));
			return customerModel;
		}
	}
	
	public class CustomerSiteRowMapper implements RowMapper<CustomerSiteDetails> {
		public CustomerSiteDetails mapRow(ResultSet rs, int rowNum) throws SQLException {
			CustomerSiteDetails customerModel = new CustomerSiteDetails();
			customerModel.setCustomerId(rs.getInt("CUSTOMER_ID"));
			customerModel.setSiteName(rs.getString("SITE_NAME"));
			customerModel.setSiteAddress(rs.getString("SITE_ADDRESS"));
			customerModel.setContactName(rs.getString("CONTACT_NAME"));
			customerModel.setDesignation(rs.getString("DESIGNATION"));
			customerModel.setMobileNo(rs.getString("MOBILE_NO"));
			customerModel.setEmailId(rs.getString("EMAIL_ID"));
			customerModel.setTransactionLimit(rs.getString("TRANSACTION_LIMIT"));
			return customerModel;
		}
	}

	
	public List<CustomerSiteDetails> fetchCustomerSiteDetails(String projectSiteName) {
		logger.info("List<CustomerSiteDetails> fetchCustomerSiteDetails(String projectSiteName) method begins");
		
		String siteSearchQuery = "select A.CUSTOMER_ID, B.* from SG_CUSTOMER_MASTER A, SG_CUSTOMER_SITE_DETAILS B where A.CUSTOMER_ID = B.CUSTOMER_ID and A.IS_ACTIVE=1 and B.SITE_NAME LIKE '" + projectSiteName.toUpperCase() + "%' order by B.SITE_NAME ASC";

		List<CustomerSiteDetails> siteDetailsList = null;
		try {
			siteDetailsList = jdbcTemplate.query(siteSearchQuery, new CustomerSiteRowMapper());
			logger.info("SiteDetailsList size is {}", siteDetailsList.size());
		} catch (DataAccessException e) {
			logger.error("DataAccessException occured: ", e);
		}
		
		logger.info("List<CustomerSiteDetails> fetchCustomerSiteDetails(String projectSiteName) method ends");
		return siteDetailsList;
	}

}
