package com.webside.village.model;

import java.util.Date;

import com.webside.base.basemodel.BaseEntity;

public class Village extends BaseEntity {
	private static final long serialVersionUID = 1L;


	private String vName;

	private String vPhone;

	private String vAddress;

	private String vLogo;

	private Date vCreateTime;

	private String vInuseFlag;

	private String vDesc;



	public String getvName() {
		return vName;
	}

	public void setvName(String vName) {
		this.vName = vName == null ? null : vName.trim();
	}

	public String getvPhone() {
		return vPhone;
	}

	public void setvPhone(String vPhone) {
		this.vPhone = vPhone == null ? null : vPhone.trim();
	}

	public String getvAddress() {
		return vAddress;
	}

	public void setvAddress(String vAddress) {
		this.vAddress = vAddress == null ? null : vAddress.trim();
	}

	public String getvLogo() {
		return vLogo;
	}

	public void setvLogo(String vLogo) {
		this.vLogo = vLogo == null ? null : vLogo.trim();
	}

	public Date getvCreateTime() {
		return vCreateTime;
	}

	public void setvCreateTime(Date vCreateTime) {
		this.vCreateTime = vCreateTime;
	}

	public String getvInuseFlag() {
		return vInuseFlag;
	}

	public void setvInuseFlag(String vInuseFlag) {
		this.vInuseFlag = vInuseFlag == null ? null : vInuseFlag.trim();
	}

	public String getvDesc() {
		return vDesc;
	}

	public void setvDesc(String vDesc) {
		this.vDesc = vDesc == null ? null : vDesc.trim();
	}

	@Override
	public String toString() {
		return "Village [vName=" + vName + ", vPhone=" + vPhone + ", vAddress=" + vAddress + ", vLogo=" + vLogo
				+ ", vCreateTime=" + vCreateTime + ", vInuseFlag=" + vInuseFlag + ", vDesc=" + vDesc + "]";
	}
	
}