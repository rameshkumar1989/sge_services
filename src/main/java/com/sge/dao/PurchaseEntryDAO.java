

package com.sge.dao;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Service;

import com.sge.model.CustomerModel1;
import com.sge.model.ItemModel;
import com.sge.model.PurchaseEntryModel;
import com.sge.model.VendorModel1;

@Service
public interface PurchaseEntryDAO {
          
     int generatePurchaseEntryNo();
	 public List<VendorModel1> returnVendorName(String vendorName);
	 public List<CustomerModel1> returnCustomeName(String customerName);
	 public List<CustomerModel1> returnDeliveryPlace(String customerName,String deliveryPlace);
	 public List<ItemModel> returnItemDetail(String itemName);
	 public Map<String,Object> savePurchaseEntryDetails(PurchaseEntryModel inputpurchaseEntryModel);
	 
}
