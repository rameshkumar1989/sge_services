package com.sge.service;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.sge.dao.VendorDAO;
import com.sge.model.VendorModel;

@Service
public class ManageVendorService {

	private static final Logger logger = LoggerFactory.getLogger(ManageCustomerService.class);
	@Autowired
	VendorDAO vendorDaoImpl;

	public List<VendorModel> fetchVendorNamesList(String vendorName) {
		logger.info("List<VendorModel> fetchVendorNamesList(String vendorName) method begins");

		List<VendorModel> vendorList = vendorDaoImpl.fetchVendorList(vendorName);
		logger.info("vendorList size:", vendorList.size());
		logger.info("List<VendorModel> fetchVendorNamesList(String vendorName) method ends");

		return vendorList;
	}

	public boolean addVendor(VendorModel vendorModel) {
		logger.info("addVendor(VendorModel vendorModel) method begins");
		boolean isVendorAdded = false;
		isVendorAdded = vendorDaoImpl.addVendor(vendorModel);
		logger.info("addVendor(VendorModel vendorModel) method ends");
		return isVendorAdded;
	}

	public List<String> fetchMaterialList() {
		logger.info("List<String> fetchMaterialList() method begins");
		List<String> materialList = vendorDaoImpl.getMaterialList();
		logger.info("List<String> fetchMaterialList() method ends");
		return materialList;
	}

}
