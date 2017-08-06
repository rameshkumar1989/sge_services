package com.sge.handler;

import java.util.HashMap;
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

import com.sge.model.VendorModel;
import com.sge.service.ManageVendorService;

@Controller
public class ManageVendorHandler {

	private static final Logger logger = LoggerFactory.getLogger(ManageCustomerHandler.class);

	@Autowired
	ManageVendorService manageVendorService;

	@GetMapping(path = "/vendormaster")
	public ModelAndView loadVendorMasterScreen() {
		logger.info("ModelAndView loadVendorMasterScreen() method begins");
		Map<String, Object> modelMap = new HashMap<String, Object>();
		
		modelMap.put("materialList", manageVendorService.fetchMaterialList());
		
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("vendormaster");
		modelAndView.addAllObjects(modelMap);
		logger.info("ModelAndView loadVendorMasterScreen() method ends");
		return modelAndView;
	}

	@PostMapping(path = "/addvendor")
	public @ResponseBody Map<String, Object> addVendor(@RequestBody VendorModel vendorModel) {
		logger.info("addVendor(VendorModel vendorModel) method begins"); 
		Map<String, Object> outMap = new HashMap<String, Object>();
		logger.info("{}", outMap);
		boolean isVendorAdded = manageVendorService.addVendor(vendorModel);
		
		if(isVendorAdded){
			outMap.put("status", "Vendor Added Successfully");
		} else {
			outMap.put("status", "Vendor not added");
		}
		
		logger.info("addVendor(VendorModel vendorModel) method ends");
		return outMap;
		
	}
	
	@PostMapping(path = "/searchVendor")
	public @ResponseBody List<VendorModel> searchVendor(@RequestParam String vendorName) {
		logger.info("@ResponseBody List<VendorModel> searchVendor(@RequestParam String vendorName) method begins");
		List<VendorModel> vendorList = manageVendorService.fetchVendorNamesList(vendorName);
		logger.info("@ResponseBody List<VendorModel> searchVendor(@RequestParam String vendorName) method ends");
		return vendorList;
	}
}
