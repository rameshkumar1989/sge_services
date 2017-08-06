package com.sge.model;

import java.util.List;

public class PurchaseEntryModel {

	private PurchaseVendorModel purchaseVendorModel;

	private List<PurchaseCustomerModel> purchaseCustomerList;

	private List<PurchaseDCDetails> purchaseDCDetails;

	private PurchasePaymentModel purchasePaymentDetails;

	
	public PurchaseVendorModel getPurchaseVendorModel() {
		return purchaseVendorModel;
	}

	public void setPurchaseVendorModel(PurchaseVendorModel purchaseVendorModel) {
		this.purchaseVendorModel = purchaseVendorModel;
	}

	public List<PurchaseCustomerModel> getPurchaseCustomerList() {
		return purchaseCustomerList;
	}

	public void setPurchaseCustomerList(List<PurchaseCustomerModel> purchaseCustomerList) {
		this.purchaseCustomerList = purchaseCustomerList;
	}

	public List<PurchaseDCDetails> getPurchaseDCDetails() {
		return purchaseDCDetails;
	}

	public void setPurchaseDCDetails(List<PurchaseDCDetails> purchaseDCDetails) {
		this.purchaseDCDetails = purchaseDCDetails;
	}

	public PurchasePaymentModel getPurchasePaymentDetails() {
		return purchasePaymentDetails;
	}

	public void setPurchasePaymentDetails(PurchasePaymentModel purchasePaymentDetails) {
		this.purchasePaymentDetails = purchasePaymentDetails;
	}

	

}
