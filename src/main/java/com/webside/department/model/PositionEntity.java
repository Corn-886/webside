package com.webside.department.model;

import com.webside.base.basemodel.BaseEntity;

public class PositionEntity extends BaseEntity {
	private static final long serialVersionUID = 1L;
	 private String pName;

	    private Integer pVid;

	    private String pIntroduce;

	    public String getpName() {
	        return pName;
	    }

	    public void setpName(String pName) {
	        this.pName = pName == null ? null : pName.trim();
	    }

	    public Integer getpVid() {
	        return pVid;
	    }

	    public void setpVid(Integer pVid) {
	        this.pVid = pVid;
	    }

	    public String getpIntroduce() {
	        return pIntroduce;
	    }

	    public void setpIntroduce(String pIntroduce) {
	        this.pIntroduce = pIntroduce == null ? null : pIntroduce.trim();
	    }

		@Override
		public String toString() {
			return "PositionEntity [pName=" + pName + ", pVid=" + pVid + ", pIntroduce=" + pIntroduce + "]";
		}

	    
}
