package com.sge.model;

public class ItemModel {

	private int itemId;
	private String itemName;
	private int isItemActive;

	public int getItemId() {
		return itemId;
	}

	public void setItemId(int itemId) {
		this.itemId = itemId;
	}

	public String getItemName() {
		return itemName;
	}

	public void setItemName(String itemName) {
		this.itemName = itemName;
	}

	public int getIsItemActive() {
		return isItemActive;
	}

	public void setIsItemActive(int isItemActive) {
		this.isItemActive = isItemActive;
	}

	@Override
	public String toString(){
		StringBuffer sbuf = new StringBuffer();
		sbuf.append("|itemCode:");
		sbuf.append(this.itemId);
		sbuf.append("|itemName:");
		sbuf.append(this.itemName);
		return sbuf.toString();
	}
	
}
