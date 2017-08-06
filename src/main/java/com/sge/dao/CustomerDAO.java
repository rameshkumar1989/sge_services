package com.sge.dao;

import java.util.List;
import com.sge.model.CustomerModel;
import com.sge.model.CustomerSiteDetails;

public interface CustomerDAO {

	public int generateCustomerCode();

	public boolean addCustomer(CustomerModel customerModel);

	public List<CustomerModel> searchCustomer(String customerNameOrId);

	public List<CustomerSiteDetails> fetchCustomerSiteDetails(String projectSiteName);

}
