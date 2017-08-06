package com.sge.dao;

import java.util.List;

import com.sge.model.VendorModel;

public interface VendorDAO {

	public List<VendorModel> fetchVendorList(String vendorShortName);

	public boolean addVendor(VendorModel vendorModel);
	
	public List<String> getMaterialList();

}
