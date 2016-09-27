package com.ais.bean;

import java.util.Date;

import org.springframework.format.annotation.DateTimeFormat;

/**
 * The persistent class for the asset_t database table.
 * 
 */
public class Asset {

	private Integer id;

	private Float availYears;

	private Float buildarea;

	private String buildstatus;

	@DateTimeFormat(pattern="yyyy-MM-dd")
	private Date buydate;

	private Integer count;

	private String department;
	
	private String location;

	private String depreType;

	private String manuaddress;

	private String manufacturer;

	private String manuphone;

	private String model;

	private Float monthDepre;

	private String assetname;

	private Float netSalvage;

	private Float netWorth;

	private String no;

	private String note;

	private String operator;

	@DateTimeFormat(pattern="yyyy-MM-dd")
	private Date regdate;

	private String responsiblePerson;

	private String sources;

	private Float totalDepre;

	private Float totalPrice;

	private String type;
	
	private String subType;

	private Float unit;

	private Float unitPrice;

	private String useStatus;

	private Float usearea;

	@DateTimeFormat(pattern="yyyy-MM-dd")
	private Date usedate;

	public Asset() {
	}

	public Integer getId() {
		return this.id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public Float getAvailYears() {
		return this.availYears;
	}

	public void setAvailYears(Float availYears) {
		this.availYears = availYears;
	}

	public Float getBuildarea() {
		return this.buildarea;
	}

	public void setBuildarea(Float buildarea) {
		this.buildarea = buildarea;
	}

	public String getBuildstatus() {
		return this.buildstatus;
	}

	public void setBuildstatus(String buildstatus) {
		this.buildstatus = buildstatus;
	}

	public Date getBuydate() {
		return this.buydate;
	}

	public void setBuydate(Date buydate) {
		this.buydate = buydate;
	}

	public Integer getCount() {
		return this.count;
	}

	public void setCount(Integer count) {
		this.count = count;
	}

	public String getDepartment() {
		return this.department;
	}

	public void setDepartment(String department) {
		this.department = department;
	}
	
	public String getLocation() {
		return this.location;
	}

	public void setLocation(String location) {
		this.location = location;
	}

	public String getDepreType() {
		return this.depreType;
	}

	public void setDepreType(String depreType) {
		this.depreType = depreType;
	}

	public String getManuaddress() {
		return this.manuaddress;
	}

	public void setManuaddress(String manuaddress) {
		this.manuaddress = manuaddress;
	}

	public String getManufacturer() {
		return this.manufacturer;
	}

	public void setManufacturer(String manufacturer) {
		this.manufacturer = manufacturer;
	}

	public String getManuphone() {
		return this.manuphone;
	}

	public void setManuphone(String manuphone) {
		this.manuphone = manuphone;
	}

	public String getModel() {
		return this.model;
	}

	public void setModel(String model) {
		this.model = model;
	}

	public Float getMonthDepre() {
		return this.monthDepre;
	}

	public void setMonthDepre(Float monthDepre) {
		this.monthDepre = monthDepre;
	}

	public String getAssetname() {
		return this.assetname;
	}

	public void setAssetname(String assetname) {
		this.assetname = assetname;
	}

	public Float getNetSalvage() {
		return this.netSalvage;
	}

	public void setNetSalvage(Float netSalvage) {
		this.netSalvage = netSalvage;
	}

	public Float getNetWorth() {
		return this.netWorth;
	}

	public void setNetWorth(Float netWorth) {
		this.netWorth = netWorth;
	}

	public String getNo() {
		return this.no;
	}

	public void setNo(String no) {
		this.no = no;
	}

	public String getNote() {
		return this.note;
	}

	public void setNote(String note) {
		this.note = note;
	}

	public String getOperator() {
		return this.operator;
	}

	public void setOperator(String operator) {
		this.operator = operator;
	}

	public Date getRegdate() {
		return this.regdate;
	}

	public void setRegdate(Date regdate) {
		this.regdate = regdate;
	}

	public String getResponsiblePerson() {
		return this.responsiblePerson;
	}

	public void setResponsiblePerson(String responsiblePerson) {
		this.responsiblePerson = responsiblePerson;
	}

	public String getSources() {
		return this.sources;
	}

	public void setSources(String sources) {
		this.sources = sources;
	}

	public Float getTotalDepre() {
		return this.totalDepre;
	}

	public void setTotalDepre(Float totalDepre) {
		this.totalDepre = totalDepre;
	}

	public Float getTotalPrice() {
		return this.totalPrice;
	}

	public void setTotalPrice(Float totalPrice) {
		this.totalPrice = totalPrice;
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

	public Float getUnit() {
		return this.unit;
	}

	public void setUnit(Float unit) {
		this.unit = unit;
	}

	public Float getUnitPrice() {
		return this.unitPrice;
	}

	public void setUnitPrice(Float unitPrice) {
		this.unitPrice = unitPrice;
	}

	public String getUseStatus() {
		return this.useStatus;
	}

	public void setUseStatus(String useStatus) {
		this.useStatus = useStatus;
	}

	public Float getUsearea() {
		return this.usearea;
	}

	public void setUsearea(Float usearea) {
		this.usearea = usearea;
	}

	public Date getUsedate() {
		return this.usedate;
	}

	public void setUsedate(Date usedate) {
		this.usedate = usedate;
	}

}