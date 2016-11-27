package com.webside.activity.model;

import com.webside.base.basemodel.BaseEntity;

public class Activitydetail extends BaseEntity{
	private static final long serialVersionUID = 1L;


    private Integer aId;

    private String aDetailType;

    private Integer aDetailFile;



	public Integer getaId() {
		return aId;
	}

	public void setaId(Integer aId) {
		this.aId = aId;
	}

	public String getaDetailType() {
		return aDetailType;
	}

	public void setaDetailType(String aDetailType) {
		this.aDetailType = aDetailType;
	}

	public Integer getaDetailFile() {
		return aDetailFile;
	}

	public void setaDetailFile(Integer aDetailFile) {
		this.aDetailFile = aDetailFile;
	}
    
    
}
