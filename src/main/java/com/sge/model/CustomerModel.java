/**
 * 
 */
package com.sge.model;

import java.util.List;

/**
 * @author Ramesh
 *
 */
public class CustomerModel {

	private int customerId;
	private String customerName;
	private String customerShortName;
	private String introducedBy;
	private String address;
	private String headOfficeAddress;
	private String registeredOfficeAddress;
	private String officeContact1;
	private String officeContact2;
	private String officeContact3;
	private String officeContact4;
	private String emailId1;
	private String emailId2;
	private String tinGstNo;
	private String cstNo;
	private String cinNo;
	private String cpp;
	private String panNo;
	private int billingFrequency;
	private String paymentTerms;
	private boolean isCustomerActive;
	private List<CustomerPurchaseDeptModel> purchaseDeptContact;
	private List<CustomerAccountsDeptModel> accountsDeptContact;
	private List<CustomerSiteDetails> siteDetails;
	/**
	 * @return the customerId
	 */
	public int getCustomerId() {
		return customerId;
	}
	/**
	 * @param customerId the customerId to set
	 */
	public void setCustomerId(int customerId) {
		this.customerId = customerId;
	}
	/**
	 * @return the customerName
	 */
	public String getCustomerName() {
		return customerName;
	}
	/**
	 * @param customerName the customerName to set
	 */
	public void setCustomerName(String customerName) {
		this.customerName = customerName;
	}
	/**
	 * @return the customerShortName
	 */
	public String getCustomerShortName() {
		return customerShortName;
	}
	/**
	 * @param customerShortName the customerShortName to set
	 */
	public void setCustomerShortName(String customerShortName) {
		this.customerShortName = customerShortName;
	}
	/**
	 * @return the introducedBy
	 */
	public String getIntroducedBy() {
		return introducedBy;
	}
	/**
	 * @param introducedBy the introducedBy to set
	 */
	public void setIntroducedBy(String introducedBy) {
		this.introducedBy = introducedBy;
	}
	/**
	 * @return the address
	 */
	public String getAddress() {
		return address;
	}
	/**
	 * @param address the address to set
	 */
	public void setAddress(String address) {
		this.address = address;
	}
	/**
	 * @return the headOfficeAddress
	 */
	public String getHeadOfficeAddress() {
		return headOfficeAddress;
	}
	/**
	 * @param headOfficeAddress the headOfficeAddress to set
	 */
	public void setHeadOfficeAddress(String headOfficeAddress) {
		this.headOfficeAddress = headOfficeAddress;
	}
	/**
	 * @return the registeredOfficeAddress
	 */
	public String getRegisteredOfficeAddress() {
		return registeredOfficeAddress;
	}
	/**
	 * @param registeredOfficeAddress the registeredOfficeAddress to set
	 */
	public void setRegisteredOfficeAddress(String registeredOfficeAddress) {
		this.registeredOfficeAddress = registeredOfficeAddress;
	}
	/**
	 * @return the officeContact1
	 */
	public String getOfficeContact1() {
		return officeContact1;
	}
	/**
	 * @param officeContact1 the officeContact1 to set
	 */
	public void setOfficeContact1(String officeContact1) {
		this.officeContact1 = officeContact1;
	}
	/**
	 * @return the officeContact2
	 */
	public String getOfficeContact2() {
		return officeContact2;
	}
	/**
	 * @param officeContact2 the officeContact2 to set
	 */
	public void setOfficeContact2(String officeContact2) {
		this.officeContact2 = officeContact2;
	}
	/**
	 * @return the officeContact3
	 */
	public String getOfficeContact3() {
		return officeContact3;
	}
	/**
	 * @param officeContact3 the officeContact3 to set
	 */
	public void setOfficeContact3(String officeContact3) {
		this.officeContact3 = officeContact3;
	}
	/**
	 * @return the officeContact4
	 */
	public String getOfficeContact4() {
		return officeContact4;
	}
	/**
	 * @param officeContact4 the officeContact4 to set
	 */
	public void setOfficeContact4(String officeContact4) {
		this.officeContact4 = officeContact4;
	}
	/**
	 * @return the emailId1
	 */
	public String getEmailId1() {
		return emailId1;
	}
	/**
	 * @param emailId1 the emailId1 to set
	 */
	public void setEmailId1(String emailId1) {
		this.emailId1 = emailId1;
	}
	/**
	 * @return the emailId2
	 */
	public String getEmailId2() {
		return emailId2;
	}
	/**
	 * @param emailId2 the emailId2 to set
	 */
	public void setEmailId2(String emailId2) {
		this.emailId2 = emailId2;
	}
	/**
	 * @return the tinGstNo
	 */
	public String getTinGstNo() {
		return tinGstNo;
	}
	/**
	 * @param tinGstNo the tinGstNo to set
	 */
	public void setTinGstNo(String tinGstNo) {
		this.tinGstNo = tinGstNo;
	}
	/**
	 * @return the cstNo
	 */
	public String getCstNo() {
		return cstNo;
	}
	/**
	 * @param cstNo the cstNo to set
	 */
	public void setCstNo(String cstNo) {
		this.cstNo = cstNo;
	}
	/**
	 * @return the cinNo
	 */
	public String getCinNo() {
		return cinNo;
	}
	/**
	 * @param cinNo the cinNo to set
	 */
	public void setCinNo(String cinNo) {
		this.cinNo = cinNo;
	}
	/**
	 * @return the cpp
	 */
	public String getCpp() {
		return cpp;
	}
	/**
	 * @param cpp the cpp to set
	 */
	public void setCpp(String cpp) {
		this.cpp = cpp;
	}
	/**
	 * @return the panNo
	 */
	public String getPanNo() {
		return panNo;
	}
	/**
	 * @param panNo the panNo to set
	 */
	public void setPanNo(String panNo) {
		this.panNo = panNo;
	}
	/**
	 * @return the billingFrequency
	 */
	public int getBillingFrequency() {
		return billingFrequency;
	}
	/**
	 * @param billingFrequency the billingFrequency to set
	 */
	public void setBillingFrequency(int billingFrequency) {
		this.billingFrequency = billingFrequency;
	}
	/**
	 * @return the paymentTerms
	 */
	public String getPaymentTerms() {
		return paymentTerms;
	}
	/**
	 * @param paymentTerms the paymentTerms to set
	 */
	public void setPaymentTerms(String paymentTerms) {
		this.paymentTerms = paymentTerms;
	}
	/**
	 * @return the isCustomerActive
	 */
	public boolean isCustomerActive() {
		return isCustomerActive;
	}
	/**
	 * @param isCustomerActive the isCustomerActive to set
	 */
	public void setCustomerActive(boolean isCustomerActive) {
		this.isCustomerActive = isCustomerActive;
	}
	/**
	 * @return the purchaseDeptContact
	 */
	public List<CustomerPurchaseDeptModel> getPurchaseDeptContact() {
		return purchaseDeptContact;
	}
	/**
	 * @param purchaseDeptContact the purchaseDeptContact to set
	 */
	public void setPurchaseDeptContact(List<CustomerPurchaseDeptModel> purchaseDeptContact) {
		this.purchaseDeptContact = purchaseDeptContact;
	}
	/**
	 * @return the accountsDeptContact
	 */
	public List<CustomerAccountsDeptModel> getAccountsDeptContact() {
		return accountsDeptContact;
	}
	/**
	 * @param accountsDeptContact the accountsDeptContact to set
	 */
	public void setAccountsDeptContact(List<CustomerAccountsDeptModel> accountsDeptContact) {
		this.accountsDeptContact = accountsDeptContact;
	}
	/**
	 * @return the siteDetails
	 */
	public List<CustomerSiteDetails> getSiteDetails() {
		return siteDetails;
	}
	/**
	 * @param siteDetails the siteDetails to set
	 */
	public void setSiteDetails(List<CustomerSiteDetails> siteDetails) {
		this.siteDetails = siteDetails;
	}

}
