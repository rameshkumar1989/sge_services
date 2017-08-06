package com.sge.service;

import java.util.List;
import java.util.Map;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.sge.dao.PurchaseEntryDAO;
import com.sge.model.CustomerModel1;
import com.sge.model.ItemModel;
import com.sge.model.PurchaseEntryModel;
import com.sge.model.VendorModel1;

@Service
public class PurchaseEntryLevelService {

	private static final Logger logger = LoggerFactory.getLogger(PurchaseEntryLevelService.class);
	@Autowired
	PurchaseEntryDAO purchaseEntryDAOImpl;

	public int getPurchaseEntryNo() {

		int peNo = purchaseEntryDAOImpl.generatePurchaseEntryNo();
		if (peNo > 0) {
			logger.info("Purchase Entry number is ", peNo);
		} else {
			logger.info("Error while generating the purchase entry number");
		}
		return peNo;

	}

	public List<VendorModel1> getVendorName(String vendorName) {

		return purchaseEntryDAOImpl.returnVendorName(vendorName);

	}
	
	public List<CustomerModel1> getCustomerName(String customerName) {

		return purchaseEntryDAOImpl.returnCustomeName(customerName);

	}
	
	public List<CustomerModel1> getDeliveryPlace(String customerName,String deliveryPlace) {

		return purchaseEntryDAOImpl.returnDeliveryPlace(customerName,deliveryPlace);

	}
	
	
	public List<ItemModel> getItemDetails(String itemName) {

		return purchaseEntryDAOImpl.returnItemDetail(itemName);

	}
	
	
	public Map<String,Object> savePurchaseEntryDetails(PurchaseEntryModel purchaseEntryModel) {

	
		return purchaseEntryDAOImpl.savePurchaseEntryDetails(purchaseEntryModel);

	}
	

}
