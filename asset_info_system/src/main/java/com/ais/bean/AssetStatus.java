package com.ais.bean;

/**
 * The persistent class for the asset_t database table.
 * 
 */
public class AssetStatus {

	private Integer id;

	private String status;

	public AssetStatus() {
	}

	public Integer getId() {
		return this.id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getStatus() {
		return this.status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

}