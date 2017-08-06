/**
 * 
 */
package com.sge.handler;

import java.util.List;
import java.util.Map;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.sge.model.CustomerModel1;
import com.sge.model.ItemModel;
import com.sge.model.PurchaseEntryModel;
import com.sge.model.VendorModel1;
import com.sge.service.ManageVendorService;
import com.sge.service.PurchaseEntryLevelService;

/**
 * @author Ramesh
 *
 */
@Controller
public class PurchaseEntryLevel1Handler {

	private static final Logger logger = LoggerFactory.getLogger(PurchaseEntryLevel1Handler.class);
	@Autowired
	PurchaseEntryLevelService purchaseEntryLevelService;
	
	@Autowired
	ManageVendorService manageVendorService;

	@RequestMapping(path = "/purchaseentryscreen", method = RequestMethod.GET)
	public ModelAndView returnPurchaseEntryNo() {
		logger.info("returnPurchaseEntryNo() method begins");
		int purchaseEntryNo = purchaseEntryLevelService.getPurchaseEntryNo();
		ModelAndView model = new ModelAndView();
		model.setViewName("purchase_entry_level1");
		model.addObject("peNo", purchaseEntryNo);
		logger.info("returnPurchaseEntryNo() method ends");
		return model;
	}

	@RequestMapping(path = "/vendorName", method = RequestMethod.POST)
	public @ResponseBody List<VendorModel1> returnVendorName(@RequestParam String name) {
		logger.info("List<VendorModel> returnVendorName(@RequestParam String vendorName) method begins");
		List<VendorModel1> vendorList = purchaseEntryLevelService.getVendorName(name);
		logger.info("List<VendorModel> returnVendorName(@RequestParam String vendorName) method ends");

		return vendorList;
	}
	
	
	
	@RequestMapping(path = "/customerName", method = RequestMethod.POST)
	public @ResponseBody List<CustomerModel1> returnCustomerName(@RequestParam String customerName) {
		
		List<CustomerModel1> customerList;
			
		customerList=purchaseEntryLevelService.getCustomerName(customerName);
		
		return customerList;
	}
	
	
	@RequestMapping(path = "/deliveryPlace", method = RequestMethod.POST)
	public @ResponseBody List<CustomerModel1> returnDeliveryPlace(@RequestParam String customerName,String deliveryPlace) {
		
		List<CustomerModel1> customerList;
			
		customerList=purchaseEntryLevelService.getDeliveryPlace(customerName,deliveryPlace);
		
		
		return customerList;
	}
	
	@RequestMapping(path = "/itemDetail", method = RequestMethod.POST)
	public @ResponseBody List<ItemModel> returnItemDetail(@RequestParam String itemName) {
		
		List<ItemModel> itemList;
			
		itemList=purchaseEntryLevelService.getItemDetails(itemName);
		
		
		return itemList;
	}
	
	
	
	
	@RequestMapping(path = "/purchaseentrysubmit", method = RequestMethod.POST)
	public @ResponseBody Map<String,Object> savePurchaseEntry(@RequestBody PurchaseEntryModel purchaseEntryModel) {
		
		Map<String,Object> purchaseDetails;
			
		purchaseDetails=purchaseEntryLevelService.savePurchaseEntryDetails(purchaseEntryModel);
		
		
		return purchaseDetails;
	}


}
