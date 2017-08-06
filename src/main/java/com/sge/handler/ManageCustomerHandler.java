package com.sge.handler;

import java.util.List;
import java.util.Map;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.sge.model.CustomerModel;
import com.sge.model.CustomerSiteDetails;
import com.sge.service.ManageCustomerService;

@Controller
public class ManageCustomerHandler {

	private static final Logger logger = LoggerFactory.getLogger(ManageCustomerHandler.class);

	@Autowired
	ManageCustomerService manageCustomerService;

	@GetMapping(path = "/customermasterscreen")
	public ModelAndView loadCustomerMasterScreen() {
		logger.info("ModelAndView loadCustomerMasterScreen() method begins");
		int customerCode = manageCustomerService.getCustomerCode();
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("customermasterscreen");
		modelAndView.addObject("customerCode", customerCode);
		logger.info("ModelAndView loadCustomerMasterScreen() method ends");
		return modelAndView;
	}

	@PostMapping(path = "/addcustomer")
	public @ResponseBody Map<String, Object> addCustomer(@RequestBody CustomerModel customerModel) {
		Map<String, Object> outMap = manageCustomerService.addCustomer(customerModel);
		boolean isCustomerAdded= (Boolean) outMap.get("isCustomerAdded");
		if(isCustomerAdded){
			outMap.put("staus", "Customer Added Successfully");
		}else{
			outMap.put("staus", "Error while Adding data.");
		}
		return outMap;
	}

	@PostMapping(path = "/searchCustomer")
	public @ResponseBody List<CustomerModel> searchCustomer(@RequestParam String customerNameOrId) {
		logger.info("searchCustomer(@RequestParam String customerName) method begins with {} ", customerNameOrId);
		List<CustomerModel> customerList = null;
		
		try {
			customerList = manageCustomerService.searchCustomer(customerNameOrId);
		} catch (Exception e) {
			logger.error("Exception occured:", e);
		}
		
		logger.info("searchCustomer(@RequestParam String customerName) method ends");
		return customerList;
	}
	
	@PostMapping(path="/searchprojectsitename")
	public @ResponseBody List<CustomerSiteDetails> searchprojectSiteNames(@RequestParam String projectSiteName){
		
		logger.info("List<CustomerSiteDetails> searchprojectSiteNames(@RequestParam String projectSiteName) method begins");
		
		List<CustomerSiteDetails> customerSiteList = null;
		try {
			customerSiteList = manageCustomerService.searchSiteName(projectSiteName);
		} catch (Exception e) {

		}
		logger.info("List<CustomerSiteDetails> searchprojectSiteNames(@RequestParam String projectSiteName) method ends");
		return customerSiteList;
	}
}
