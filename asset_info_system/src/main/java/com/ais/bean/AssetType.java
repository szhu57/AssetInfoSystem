package com.ais.bean;

/**
 * The persistent class for the asset_t database table.
 * 
 */
public class AssetType {

	private Integer id;

	private String type;
	
	private String subType;

	public AssetType() {
	}

	public Integer getId() {
		return this.id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getType() {
		return this.type;
	}

	public void setType(String type) {
		this.type = type;
	}
	
	public String getSubType() {
		return this.subType;
	}

	public void setSubType(String subType) {
		this.subType = subType;
	}

}