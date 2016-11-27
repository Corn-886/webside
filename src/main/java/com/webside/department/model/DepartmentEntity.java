package com.webside.department.model;

import com.webside.base.basemodel.BaseEntity;

public class DepartmentEntity extends BaseEntity{
 
	private static final long serialVersionUID = 1L;
	
    private String dName;

    private Integer vId;

    private String dIntroduce;



    public String getdName() {
        return dName;
    }

    public void setdName(String dName) {
        this.dName = dName == null ? null : dName.trim();
    }

    public Integer getvId() {
        return vId;
    }

    public void setvId(Integer vId) {
        this.vId = vId;
    }

    public String getdIntroduce() {
        return dIntroduce;
    }

    public void setdIntroduce(String dIntroduce) {
        this.dIntroduce = dIntroduce == null ? null : dIntroduce.trim();
    }

	@Override
	public String toString() {
		return "DepartmentEntity [dName=" + dName + ", vId=" + vId + ", dIntroduce=" + dIntroduce + "]";
	}
    
    
}