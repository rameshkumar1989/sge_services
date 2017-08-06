package com.sge.model;

import java.sql.Timestamp;

public class VendorModel {

	private int vendorId; // primary key
	private String vendorCompanyName;
	private String officeAddress;
	private String officeCity;
	private String officePinCode;
	private String officeContactPerson;
	private String officeMobileNo;
	private String officeLandline;
	private String officeEmailId;
	private String factoryAddress;
	private String factoryCity;
	private String factoryPinCode;
	private String factoryContactPerson;
	private String factoryMobileNo;
	private String factoryLandline;
	private String factoryEmailId;
	private String tinGstNo;
	private String cstNo;
	private String cinNo;
	private Timestamp creationTime;
	private Timestamp lastModifiedTime;
	private boolean isVendorActive;
	private boolean isRegisteredVendor;
	
	/**
	 * @return the vendorId
	 */
	public int getVendorId() {
		return vendorId;
	}
	/**
	 * @param vendorId the vendorId to set
	 */
	public void setVendorId(int vendorId) {
		this.vendorId = vendorId;
	}
	/**
	 * @return the vendorCompanyName
	 */
	public String getVendorCompanyName() {
		return vendorCompanyName;
	}
	/**
	 * @param vendorCompanyName the vendorCompanyName to set
	 */
	public void setVendorCompanyName(String vendorCompanyName) {
		this.vendorCompanyName = vendorCompanyName;
	}
	/**
	 * @return the officeAddress
	 */
	public String getOfficeAddress() {
		return officeAddress;
	}
	/**
	 * @param officeAddress the officeAddress to set
	 */
	public void setOfficeAddress(String officeAddress) {
		this.officeAddress = officeAddress;
	}
	/**
	 * @return the officeCity
	 */
	public String getOfficeCity() {
		return officeCity;
	}
	/**
	 * @param officeCity the officeCity to set
	 */
	public void setOfficeCity(String officeCity) {
		this.officeCity = officeCity;
	}
	/**
	 * @return the officePinCode
	 */
	public String getOfficePinCode() {
		return officePinCode;
	}
	/**
	 * @param officePinCode the officePinCode to set
	 */
	public void setOfficePinCode(String officePinCode) {
		this.officePinCode = officePinCode;
	}
	/**
	 * @return the officeContactPerson
	 */
	public String getOfficeContactPerson() {
		return officeContactPerson;
	}
	/**
	 * @param officeContactPerson the officeContactPerson to set
	 */
	public void setOfficeContactPerson(String officeContactPerson) {
		this.officeContactPerson = officeContactPerson;
	}
	/**
	 * @return the officeMobileNo
	 */
	public String getOfficeMobileNo() {
		return officeMobileNo;
	}
	/**
	 * @param officeMobileNo the officeMobileNo to set
	 */
	public void setOfficeMobileNo(String officeMobileNo) {
		this.officeMobileNo = officeMobileNo;
	}
	/**
	 * @return the officeLandline
	 */
	public String getOfficeLandline() {
		return officeLandline;
	}
	/**
	 * @param officeLandline the officeLandline to set
	 */
	public void setOfficeLandline(String officeLandline) {
		this.officeLandline = officeLandline;
	}
	/**
	 * @return the officeEmailId
	 */
	public String getOfficeEmailId() {
		return officeEmailId;
	}
	/**
	 * @param officeEmailId the officeEmailId to set
	 */
	public void setOfficeEmailId(String officeEmailId) {
		this.officeEmailId = officeEmailId;
	}
	/**
	 * @return the factoryAddress
	 */
	public String getFactoryAddress() {
		return factoryAddress;
	}
	/**
	 * @param factoryAddress the factoryAddress to set
	 */
	public void setFactoryAddress(String factoryAddress) {
		this.factoryAddress = factoryAddress;
	}
	/**
	 * @return the factoryCity
	 */
	public String getFactoryCity() {
		return factoryCity;
	}
	/**
	 * @param factoryCity the factoryCity to set
	 */
	public void setFactoryCity(String factoryCity) {
		this.factoryCity = factoryCity;
	}
	/**
	 * @return the factoryPinCode
	 */
	public String getFactoryPinCode() {
		return factoryPinCode;
	}
	/**
	 * @param factoryPinCode the factoryPinCode to set
	 */
	public void setFactoryPinCode(String factoryPinCode) {
		this.factoryPinCode = factoryPinCode;
	}
	/**
	 * @return the factoryContactPerson
	 */
	public String getFactoryContactPerson() {
		return factoryContactPerson;
	}
	/**
	 * @param factoryContactPerson the factoryContactPerson to set
	 */
	public void setFactoryContactPerson(String factoryContactPerson) {
		this.factoryContactPerson = factoryContactPerson;
	}
	/**
	 * @return the factoryMobileNo
	 */
	public String getFactoryMobileNo() {
		return factoryMobileNo;
	}
	/**
	 * @param factoryMobileNo the factoryMobileNo to set
	 */
	public void setFactoryMobileNo(String factoryMobileNo) {
		this.factoryMobileNo = factoryMobileNo;
	}
	/**
	 * @return the factoryLandline
	 */
	public String getFactoryLandline() {
		return factoryLandline;
	}
	/**
	 * @param factoryLandline the factoryLandline to set
	 */
	public void setFactoryLandline(String factoryLandline) {
		this.factoryLandline = factoryLandline;
	}
	/**
	 * @return the factoryEmailId
	 */
	public String getFactoryEmailId() {
		return factoryEmailId;
	}
	/**
	 * @param factoryEmailId the factoryEmailId to set
	 */
	public void setFactoryEmailId(String factoryEmailId) {
		this.factoryEmailId = factoryEmailId;
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
	 * @return the creationTime
	 */
	public Timestamp getCreationTime() {
		return creationTime;
	}
	/**
	 * @param creationTime the creationTime to set
	 */
	public void setCreationTime(Timestamp creationTime) {
		this.creationTime = creationTime;
	}
	/**
	 * @return the lastModifiedTime
	 */
	public Timestamp getLastModifiedTime() {
		return lastModifiedTime;
	}
	/**
	 * @param lastModifiedTime the lastModifiedTime to set
	 */
	public void setLastModifiedTime(Timestamp lastModifiedTime) {
		this.lastModifiedTime = lastModifiedTime;
	}
	/**
	 * @return the isVendorActive
	 */
	public boolean isVendorActive() {
		return isVendorActive;
	}
	/**
	 * @param isVendorActive the isVendorActive to set
	 */
	public void setVendorActive(boolean isVendorActive) {
		this.isVendorActive = isVendorActive;
	}
	/**
	 * @return the isRegisteredVendor
	 */
	public boolean isRegisteredVendor() {
		return isRegisteredVendor;
	}
	/**
	 * @param isRegisteredVendor the isRegisteredVendor to set
	 */
	public void setRegisteredVendor(boolean isRegisteredVendor) {
		this.isRegisteredVendor = isRegisteredVendor;
	}

	
	
}
