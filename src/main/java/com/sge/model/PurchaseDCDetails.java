package com.sge.model;

public class PurchaseDCDetails {
	
	private String dcDate,customerMRNNo,vehicleDCNo,uom,quantity,rate,amount,createdUser,createdDate,modifiedUser,modifiedDate;

	public String getDcDate() {
		return dcDate;
	}

	public String getCreatedUser() {
		return createdUser;
	}

	public void setCreatedUser(String createdUser) {
		this.createdUser = createdUser;
	}

	public String getCreatedDate() {
		return createdDate;
	}

	public void setCreatedDate(String createdDate) {
		this.createdDate = createdDate;
	}

	public String getModifiedUser() {
		return modifiedUser;
	}

	public void setModifiedUser(String modifiedUser) {
		this.modifiedUser = modifiedUser;
	}

	public String getModifiedDate() {
		return modifiedDate;
	}

	public void setModifiedDate(String modifiedDate) {
		this.modifiedDate = modifiedDate;
	}

	public void setDcDate(String dcDate) {
		this.dcDate = dcDate;
	}

	public String getCustomerMRNNo() {
		return customerMRNNo;
	}

	public void setCustomerMRNNo(String customerMRNNo) {
		this.customerMRNNo = customerMRNNo;
	}

	public String getVehicleDCNo() {
		return vehicleDCNo;
	}

	public void setVehicleDCNo(String vehicleDCNo) {
		this.vehicleDCNo = vehicleDCNo;
	}

	public String getUom() {
		return uom;
	}

	public void setUom(String uom) {
		this.uom = uom;
	}

	public String getQuantity() {
		return quantity;
	}

	public void setQuantity(String quantity) {
		this.quantity = quantity;
	}

	public String getRate() {
		return rate;
	}

	public void setRate(String rate) {
		this.rate = rate;
	}

	public String getAmount() {
		return amount;
	}

	public void setAmount(String amount) {
		this.amount = amount;
	}


}
