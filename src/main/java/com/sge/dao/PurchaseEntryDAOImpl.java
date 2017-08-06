package com.sge.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Types;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

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

import com.sge.model.CustomerModel1;
import com.sge.model.ItemModel;
import com.sge.model.PurchaseCustomerModel;
import com.sge.model.PurchaseDCDetails;
import com.sge.model.PurchaseEntryModel;
import com.sge.model.PurchasePaymentModel;
import com.sge.model.PurchaseVendorModel;
import com.sge.model.VendorModel1;

@Repository
public class PurchaseEntryDAOImpl implements PurchaseEntryDAO {

	@Autowired
	private JdbcTemplate jdbcTemplate;
	@Autowired
	private TransactionTemplate transactionTemplate;

	private static final Logger daoLogger = LoggerFactory.getLogger(PurchaseEntryDAOImpl.class);
	private static final String GET_PURCHASE_ENTRY_NO = "select PURCHASE_ENTRY_NO_SEQ.nextval from dual";
	private static final String GENERATE_PURCHASE_ID = "select SEQ_PUR_ID.nextval from dual";
	private static final String GENERATE_PURCHASE_CUSTOMER_ID = "select SEQ_PUR_CUST_ID.nextval from dual";
	private static final String GENERATE_PURCHASE_CUSTOMER_DC_ID = "select SEQ_PUR_CUST_DC_ID.nextval from dual";
	private static final String GENERATE_PURCHASE_CUSTOMER_DC_PYM_ID = "select SEQ_PUR_CUST_DC_PYM_ID.nextval from dual";
	private static final String INSERT_PURCHASE_ENTRY_MASTER1 = "insert into SG_PURCHASE_ENTRY_LEVEL_1 (PUR_ID, VENDOR_NAME, RTGS_DETAILS,PURCHASE_DATE, PURCHASE_NO, PO_NO, CREATED_USER, CREATED_DATE, MODIFIED_USER, MODIFIED_DTAE) values(?, ?, ?, ?, ?, ?,?, ?, ?, ?)";
	private static final String INSERT_PURCHASE_CUST_DTL = "insert into SG_PURCHASE_CUST_DTL(PUR_CUST_ID, PUR_ID, PO_NO, ROMAN_LETTER, CUSTOMER_NAME, DELIVERY_PLACE, ITEM_OF_METAL,CREATED_USER,CREATED_DATE,MODIFIED_USER,MODIFIED_DTAE) values(?, ?, ?, ?, ?, ?, ?,?,?,?,?)";
	private static final String INSERT_PURCHASE_CUST_DC_DTL = "insert into SG_PURCHASE_CUST_DC_DTL(PUR_CUST_DC_ID, PUR_CUST_ID, PUR_ID, DC_DATE, CUSTOMER_MRN_NO, VEHICLE_DC_NO,UOM,QTY,RATE,AMOUNT,CREATED_USER,CREATED_DATE,MODIFIED_USER,MODIFIED_DTAE) values(?, ?, ?, ?, ?, ?,?, ?, ?, ?, ?, ?,?,?)";
	private static final String INSERT_PURCHASE_CUST_DC_PYM = "insert into SG_PURCHASE_CUST_DC_PYM(PUR_PYM_ID, PUR_ID, PAYMENT_DATE, PAYMENT_MODE, VAT, CST, DISCOUNT, ROUND_OFF,NET_AMOUNT,ADVANCE_AMOUNT,PAID_AMOUNT,BALANCE_AMOUNT,REMARKS,INV_DATE,INV_NO,CREATED_USER,CREATED_DATE,MODIFIED_USER,MODIFIED_DTAE) values(?, ?, ?, ?, ?, ?, ?, ?,?, ?, ?, ?, ?, ?, ?, ?,?,?,?)";



	public int generatePurchaseEntryNo() {
		daoLogger.info("int generatePurchaseEntryNo() method begins");
		int peNo = 0;
		try {
			peNo = Integer.parseInt(jdbcTemplate.queryForObject(GET_PURCHASE_ENTRY_NO, String.class));
		} catch (DataAccessException dae) {
			daoLogger.error("Exception Occured ", dae);
		}
		daoLogger.info("int generatePurchaseEntryNo() method ends with ", peNo);
		return peNo;
	}
	
	


	public List<VendorModel1> returnVendorName(String vendorName) {

		String sql = "SELECT * FROM SUPPLIERDETAILS WHERE upper(suppliername) like '" + vendorName.toUpperCase() + "%' and rownum < 11 order by SUPPLIERNAME";
		List<VendorModel1> vendorList = jdbcTemplate.query(sql,  new VendorRowMapper());
		daoLogger.info("vendorList::::" + vendorList.toString());

		return vendorList;
	}
	
	public List<CustomerModel1> returnCustomeName(String customerName) {

		String sql = "SELECT CUSTOMERCODE,CUSTOMERNAME,'' as SITENAME FROM CUSTOMERDETAILS WHERE upper(CUSTOMERNAME) like '" + customerName.toUpperCase() + "%' and rownum < 11 order by CUSTOMERNAME";
		List<CustomerModel1> customerList = jdbcTemplate.query(sql,  new CustomerRowMapper());
		System.out.println("customerList::::" + customerList.toString());

		return customerList;
	}
	
	public List<CustomerModel1> returnDeliveryPlace(String customerName,String deliveryPlace) {

		String sql = "SELECT a.CUSTOMERNAME,a.CUSTOMERCODE,b.SITENAME FROM CUSTOMERDETAILS a,SITEDETAILS b WHERE upper(a.CUSTOMERNAME)='"+customerName+"' and upper(b.SITENAME) like '" + deliveryPlace.toUpperCase() + "%' and a.CUSTOMERCODE=b.CUSTOMERNAME and rownum < 11 order by SITENAME";
		List<CustomerModel1> customerList = jdbcTemplate.query(sql,  new CustomerRowMapper());
		daoLogger.info("customerList::::" + customerList.toString());

		return customerList;
	}
	
	public List<ItemModel> returnItemDetail(String itemName) {

		String sql = "SELECT ITEMCODE,ITEMNAME FROM ITEMDETAILS WHERE upper(ITEMNAME) like '" + itemName.toUpperCase() + "%' and rownum < 11 order by ITEMNAME";
		List<ItemModel> itemList = jdbcTemplate.query(sql,  new ItemRowMapper());
		daoLogger.info("customerList::::" + itemList.toString());

		return itemList;
	}
	

	public int generatePurchaseId() {
		daoLogger.info("int generateCustomerCode() method begins");
		int purchaseId = 0;
		try {
			purchaseId = Integer.parseInt(jdbcTemplate.queryForObject(GENERATE_PURCHASE_ID, String.class));
		} catch (DataAccessException e) {
			daoLogger.error("DataAccessException ", e);
		}
		daoLogger.info("int generateCustomerCode() method ends");
		return purchaseId;
	}
	
	public int generatePurchaseCustomerId() {
		daoLogger.info("int generatePurchaseCustomerId() method begins");
		int peNo = 0;
		try {
			peNo = Integer.parseInt(jdbcTemplate.queryForObject(GENERATE_PURCHASE_CUSTOMER_ID, String.class));
		} catch (DataAccessException dae) {
			daoLogger.error("Exception Occured ", dae);
		}
		daoLogger.info("int generatePurchaseCustomerId() method ends with ", peNo);
		return peNo;
	}
	
	public int generatePurchaseCustomerDCId() {
		daoLogger.info("int generatePurchaseCustomerDCId() method begins");
		int peNo = 0;
		try {
			peNo = Integer.parseInt(jdbcTemplate.queryForObject(GENERATE_PURCHASE_CUSTOMER_DC_ID, String.class));
		} catch (DataAccessException dae) {
			daoLogger.error("Exception Occured ", dae);
		}
		daoLogger.info("int generatePurchaseCustomerDCId() method ends with ", peNo);
		return peNo;
	}
	
	public int generatePurchaseCustomerDCPymId() {
		daoLogger.info("int generatePurchaseCustomerDCPymId() method begins");
		int peNo = 0;
		try {
			peNo = Integer.parseInt(jdbcTemplate.queryForObject(GENERATE_PURCHASE_CUSTOMER_DC_PYM_ID, String.class));
		} catch (DataAccessException dae) {
			daoLogger.error("Exception Occured ", dae);
		}
		daoLogger.info("int generatePurchaseCustomerDCPymId() method ends with ", peNo);
		return peNo;
	}
	
	public Map<String,Object> savePurchaseEntryDetails(PurchaseEntryModel inputpurchaseEntryModel) {
		final PurchaseEntryModel purchaseEntryModel = inputpurchaseEntryModel;
		boolean customerAdded = false;
		Map<String,Object> outMap =new HashMap<String,Object>();
		try {

			TransactionCallback<Integer> txnCallBack = new TransactionCallback<Integer>() {
				public Integer doInTransaction(TransactionStatus status) {
					int insertedRows = 0;
					try {
						int purchaseId = generatePurchaseId();
						int purchaseCustomerId = generatePurchaseCustomerId();
						int purchaseCustomerDCId = generatePurchaseCustomerDCId();
						int purchaseCustomerDCPymId = generatePurchaseCustomerDCPymId();		
						
						
						PurchaseVendorModel purchaseVendorModel= purchaseEntryModel.getPurchaseVendorModel();
						List<PurchaseCustomerModel> purchaseCustomerDetail = purchaseEntryModel.getPurchaseCustomerList();
						List<PurchaseDCDetails> purchaseDCDetailList = purchaseEntryModel.getPurchaseDCDetails();
						PurchasePaymentModel purchasePaymentDetail = purchaseEntryModel.getPurchasePaymentDetails();

						Object[] purchaseVendorParams = { purchaseId, purchaseVendorModel.getVendorName().toUpperCase(), purchaseVendorModel.getRtgsDetail().toUpperCase(),
								purchaseVendorModel.getPurchaseDate(),purchaseVendorModel.getPurchaseNo(), purchaseVendorModel.getPoNo(),
								purchaseVendorModel.getCreatedUser(), purchaseVendorModel.getCreatedDate(),
								purchaseVendorModel.getModifiedUser(), purchaseVendorModel.getModifiedDate()
							     };

						int[] purchaseVendorTypes = { Types.NUMERIC, Types.VARCHAR, Types.VARCHAR, Types.VARCHAR, Types.VARCHAR, Types.VARCHAR,
								Types.VARCHAR,Types.VARCHAR, Types.VARCHAR, Types.VARCHAR };
						insertedRows += jdbcTemplate.update(INSERT_PURCHASE_ENTRY_MASTER1, purchaseVendorParams, purchaseVendorTypes );
						daoLogger.info("{} purchase Vendor details records inserted", insertedRows);

						for (PurchaseCustomerModel purchaseCustomerModel : purchaseCustomerDetail) {

							Object[] purchaseCustomerParams = { purchaseCustomerId, purchaseId,purchaseVendorModel.getPoNo(),"1",
									purchaseCustomerModel.getCustomerName(), purchaseCustomerModel.getDeliveryPlace(),
									purchaseCustomerModel.getItemOfModel(), purchaseCustomerModel.getCreatedUser(),
									purchaseCustomerModel.getCreatedDate(), purchaseCustomerModel.getModifiedUser(),
									purchaseCustomerModel.getModifiedDate()
									};

							int[] purchaseCustomerTypes = {Types.NUMERIC, Types.NUMERIC,Types.VARCHAR, Types.VARCHAR, Types.VARCHAR, Types.VARCHAR, Types.VARCHAR, Types.VARCHAR, Types.VARCHAR, Types.VARCHAR,Types.VARCHAR};
							insertedRows += jdbcTemplate.update(INSERT_PURCHASE_CUST_DTL, purchaseCustomerParams, purchaseCustomerTypes);
							daoLogger.info("{} records inserted after purchase Customer", insertedRows);
						}
						
						for (PurchaseDCDetails purchaseDCDetails : purchaseDCDetailList) {

							Object[] purchaseDCParams = { purchaseCustomerDCId, purchaseCustomerId,
									purchaseId, purchaseDCDetails.getDcDate(),
									purchaseDCDetails.getCustomerMRNNo(), purchaseDCDetails.getVehicleDCNo(),
									purchaseDCDetails.getUom(), purchaseDCDetails.getQuantity(),
									purchaseDCDetails.getRate(), purchaseDCDetails.getAmount(),
									purchaseDCDetails.getCreatedUser(), purchaseDCDetails.getCreatedDate(),
									purchaseDCDetails.getModifiedUser(), purchaseDCDetails.getModifiedDate()
									};
							int[] purchaseDCTypes = { Types.NUMERIC,Types.NUMERIC,Types.NUMERIC, Types.VARCHAR, Types.VARCHAR, Types.VARCHAR,
									Types.VARCHAR, Types.VARCHAR, Types.VARCHAR, Types.VARCHAR, Types.VARCHAR,
									Types.VARCHAR, Types.VARCHAR,Types.VARCHAR};

							insertedRows += jdbcTemplate.update(INSERT_PURCHASE_CUST_DC_DTL, purchaseDCParams, purchaseDCTypes);
							daoLogger.info("{} records inserted after accounts contact", insertedRows);
						}
						
							Object[] purchasePaymentParams = { purchaseCustomerDCPymId, purchaseId, purchasePaymentDetail.getPaymentDate(),
									purchasePaymentDetail.getPaymentMode(), purchasePaymentDetail.getVat(),
									purchasePaymentDetail.getGst(), purchasePaymentDetail.getDiscount(),
									purchasePaymentDetail.getRoundOff(),purchasePaymentDetail.getNetAmount(),
									purchasePaymentDetail.getAdvanceAmount(),purchasePaymentDetail.getPaidAmount(),
									purchasePaymentDetail.getBalanceAmount(),purchasePaymentDetail.getRemarks(),
									purchasePaymentDetail.getInvDate(),purchasePaymentDetail.getInvNo(),purchasePaymentDetail.getCreatedUser(),
									purchasePaymentDetail.getCreatedDate(), purchasePaymentDetail.getModifiedUser(),
									purchasePaymentDetail.getModifiedDate() 
									};
							int[] purchasePaymentTypes = { Types.NUMERIC,Types.NUMERIC,Types.VARCHAR, Types.VARCHAR, Types.VARCHAR, Types.VARCHAR,
									Types.VARCHAR, Types.VARCHAR, Types.VARCHAR, Types.VARCHAR, Types.VARCHAR,
									Types.VARCHAR, Types.VARCHAR,Types.VARCHAR,Types.VARCHAR,
									Types.VARCHAR, Types.VARCHAR,Types.VARCHAR,Types.VARCHAR  };
							
							insertedRows += jdbcTemplate.update(INSERT_PURCHASE_CUST_DC_PYM, purchasePaymentParams, purchasePaymentTypes);
							daoLogger.info("{} records inserted after site details", insertedRows);
						
						
					} catch (Exception e) {
						
						daoLogger.error("Exception occurred while inserting customer ", e);
						status.setRollbackOnly();
					}
					return insertedRows;
				}
			};
			
			int insertedCount = transactionTemplate.execute(txnCallBack);
			if (insertedCount == (purchaseEntryModel.getPurchaseCustomerList().size() + purchaseEntryModel.getPurchaseDCDetails().size() + 1 + 1)){
				customerAdded = true;
				outMap.put("customerAdded", customerAdded);
			}else{
				outMap.put("customerAdded", customerAdded);
			}
		} catch (DataAccessException dae) {
			daoLogger.error("Error occurred ", dae);
			outMap.put("customerAdded", customerAdded);
		}
		
		return outMap;
	}
	
	
	public class VendorRowMapper implements RowMapper<VendorModel1> {

		public VendorModel1 mapRow(ResultSet rs, int rowNum) throws SQLException {

			VendorModel1 vendor = new VendorModel1();
			vendor.setVendorCode(rs.getString("SUPPLIERCODE"));
			vendor.setVendorName(rs.getString("SUPPLIERNAME"));
			vendor.setAddress1(rs.getString("ADDRESS1"));
			vendor.setAddress2(rs.getString("ADDRESS2"));
			vendor.setCity(rs.getString("CITY"));
			vendor.setPinCode(rs.getString("PINCODE"));
			vendor.setOfficeNo(rs.getString("OFFICEPHONE"));
			vendor.setContactPerson(rs.getString("CONTACTPERSON"));
			vendor.setFax(rs.getString("FAX"));
			vendor.setMobile(rs.getString("MOBILE"));
			vendor.setEmail(rs.getString("EMAIL"));
			
			return vendor;
		}
	}
		
		public class CustomerRowMapper implements RowMapper<CustomerModel1> {

			public CustomerModel1 mapRow(ResultSet rs, int rowNum) throws SQLException {

				CustomerModel1 customer = new CustomerModel1();
				customer.setCustomerCode(rs.getString("CUSTOMERCODE"));
				customer.setCustomerName(rs.getString("CUSTOMERNAME"));
			if(rs.getString("SITENAME")!=null && !rs.getString("SITENAME").isEmpty()){
				customer.setSiteName(rs.getString("SITENAME"));
			}
				return customer;
			}

	}
		
		public class ItemRowMapper implements RowMapper<ItemModel> {

			public ItemModel mapRow(ResultSet rs, int rowNum) throws SQLException {

				ItemModel item = new ItemModel();
				item.setItemId(rs.getInt("ITEMCODE"));
				item.setItemName(rs.getString("ITEMNAME"));
			
				return item;
			}

	}


}
