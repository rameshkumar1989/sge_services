package com.sge.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.sge.dao.CustomerDAO;
import com.sge.model.CustomerModel;
import com.sge.model.CustomerSiteDetails;

@Service
public class ManageCustomerService {

	private static final Logger logger = LoggerFactory.getLogger(ManageCustomerService.class);
	@Autowired
	CustomerDAO manageCustomerDAOImpl;

	public int getCustomerCode() {
		logger.info("int getCustomerCode() method begins");
		int customerCode = manageCustomerDAOImpl.generateCustomerCode();
		logger.info("int getCustomerCode() method ends with ", customerCode);
		return customerCode;
	}

	public Map<String, Object> addCustomer(CustomerModel customerModel) {
		logger.info("Map<String, Object> addCustomer(Map<String, Object> inputMap) method begins");

		Map<String, Object> outMap = new HashMap<String, Object>();
		boolean isCustomerAdded = manageCustomerDAOImpl.addCustomer(customerModel);
		
		outMap.put("isCustomerAdded",isCustomerAdded);

		logger.info("Map<String, Object> addCustomer(Map<String, Object> inputMap) method ends");
		return outMap;
	}

	
	public List<CustomerModel> searchCustomer(String customerNameOrId){
		logger.info("searchCustomer(String customerNameOrId) method begins");
		
		List<CustomerModel> customerNamesList = manageCustomerDAOImpl.searchCustomer(customerNameOrId);
		
		logger.info("customer name list size {}", customerNamesList.size() );
		
		logger.info("searchCustomer(String customerNameOrId) method ends");
		return customerNamesList;
	}

	public List<CustomerSiteDetails> searchSiteName(String projectSiteName) {
		logger.info("List<CustomerSiteDetails> searchSiteName(String projectSiteName) method begins");
		
		List<CustomerSiteDetails> siteDetailsList = manageCustomerDAOImpl.fetchCustomerSiteDetails(projectSiteName);
		logger.info("SiteDetailsList size {}", siteDetailsList.size());
		logger.info("List<CustomerSiteDetails> searchSiteName(String projectSiteName) method ends");
		
		return siteDetailsList;
	}
	
}
