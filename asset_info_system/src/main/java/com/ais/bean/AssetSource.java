package com.ais.bean;

/**
 * The persistent class for the asset_t database table.
 * 
 */
public class AssetSource {

	private Integer id;

	private String sources;

	public AssetSource() {
	}

	public Integer getId() {
		return this.id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getSources() {
		return this.sources;
	}

	public void setSources(String sources) {
		this.sources = sources;
	}

}