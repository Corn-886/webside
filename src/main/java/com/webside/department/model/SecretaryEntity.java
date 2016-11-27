package com.webside.department.model;

import java.util.Date;

import com.webside.base.basemodel.BaseEntity;

public class SecretaryEntity extends BaseEntity {

	private static final long serialVersionUID = 1L;

	private String sName;

	private String sVill;

	private Integer sSex;

	private Date sBirthday;

	private String sPolitical;

	private String sSchool;

	private String sGrade;
	
	private String sPicurl;
	
	private String sMajor;

	private String sQq;

	private String sEmail;

	private String sPhone;

	private String sLandline;

	private String sAddress;

	private Integer dId;

	private Integer pId;

	private Integer vId;

	private String sExperience;

	public String getsName() {
		return sName;
	}

	public void setsName(String sName) {
		this.sName = sName == null ? null : sName.trim();
	}

	public String getsVill() {
		return sVill;
	}

	public void setsVill(String sVill) {
		this.sVill = sVill == null ? null : sVill.trim();
	}

	public Integer getsSex() {
		return sSex;
	}

	public void setsSex(Integer sSex) {
		this.sSex = sSex;
	}

	public Date getsBirthday() {
		return sBirthday;
	}

	public void setsBirthday(Date sBirthday) {
		this.sBirthday = sBirthday;
	}

	public String getsPolitical() {
		return sPolitical;
	}

	public void setsPolitical(String sPolitical) {
		this.sPolitical = sPolitical == null ? null : sPolitical.trim();
	}

	public String getsSchool() {
		return sSchool;
	}

	public void setsSchool(String sSchool) {
		this.sSchool = sSchool == null ? null : sSchool.trim();
	}

	public String getsGrade() {
		return sGrade;
	}

	public void setsGrade(String sGrade) {
		this.sGrade = sGrade == null ? null : sGrade.trim();
	}

	public String getsMajor() {
		return sMajor;
	}

	public void setsMajor(String sMajor) {
		this.sMajor = sMajor == null ? null : sMajor.trim();
	}

	public String getsQq() {
		return sQq;
	}

	public void setsQq(String sQq) {
		this.sQq = sQq == null ? null : sQq.trim();
	}

	public String getsEmail() {
		return sEmail;
	}

	public void setsEmail(String sEmail) {
		this.sEmail = sEmail == null ? null : sEmail.trim();
	}

	public String getsPhone() {
		return sPhone;
	}

	public void setsPhone(String sPhone) {
		this.sPhone = sPhone == null ? null : sPhone.trim();
	}

	public String getsLandline() {
		return sLandline;
	}

	public void setsLandline(String sLandline) {
		this.sLandline = sLandline == null ? null : sLandline.trim();
	}

	public String getsAddress() {
		return sAddress;
	}

	public void setsAddress(String sAddress) {
		this.sAddress = sAddress == null ? null : sAddress.trim();
	}

	public Integer getdId() {
		return dId;
	}

	public void setdId(Integer dId) {
		this.dId = dId;
	}

	public Integer getpId() {
		return pId;
	}

	public void setpId(Integer pId) {
		this.pId = pId;
	}

	public Integer getvId() {
		return vId;
	}

	public void setvId(Integer vId) {
		this.vId = vId;
	}

	public String getsExperience() {
		return sExperience;
	}

	public void setsExperience(String sExperience) {
		this.sExperience = sExperience == null ? null : sExperience.trim();
	}

	public String getsPicurl() {
		return sPicurl;
	}

	public void setsPicurl(String sPicurl) {
		this.sPicurl = sPicurl;
	}

	@Override
	public String toString() {
		return "SecretaryEntity [sName=" + sName + ", sVill=" + sVill + ", sSex=" + sSex + ", sBirthday=" + sBirthday
				+ ", sPolitical=" + sPolitical + ", sSchool=" + sSchool + ", sGrade=" + sGrade + ", sPicurl=" + sPicurl
				+ ", sMajor=" + sMajor + ", sQq=" + sQq + ", sEmail=" + sEmail + ", sPhone=" + sPhone + ", sLandline="
				+ sLandline + ", sAddress=" + sAddress + ", dId=" + dId + ", pId=" + pId + ", vId=" + vId
				+ ", sExperience=" + sExperience + "]";
	}

	
}