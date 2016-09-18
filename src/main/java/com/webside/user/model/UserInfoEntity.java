package com.webside.user.model;

import java.util.Date;

import com.webside.base.basemodel.BaseEntity;
import com.webside.village.model.Village;

public class UserInfoEntity extends BaseEntity{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	private Integer sex;
	
	/*
	 * 处理日期转换
	 */
	private Date birthday;
	
	private String telephone;
	
	private String email;
	
	private String address;
	
	private Date createTime;
	
	private Village village;
	
	public Integer getSex() {
		return sex;
	}

	public void setSex(Integer sex) {
		this.sex = sex;
	}

	public Date getBirthday() {
		return birthday;
	}

	public void setBirthday(Date birthday) {
		this.birthday = birthday;
	}

	public String getTelephone() {
		return telephone;
	}

	public void setTelephone(String telephone) {
		this.telephone = telephone;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public Date getCreateTime() {
		return createTime;
	}

	public void setCreateTime(Date createTime) {
		this.createTime = createTime;
	}

	public Village getVillage() {
		return village;
	}

	public void setVillage(Village village) {
		this.village = village;
	}

	@Override
	public String toString() {
		return "UserInfoEntity [sex=" + sex + ", birthday=" + birthday + ", telephone=" + telephone + ", email=" + email
				+ ", address=" + address + ", createTime=" + createTime + ", village=" + village + "]";
	}

	




}
