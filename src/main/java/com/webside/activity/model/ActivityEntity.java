package com.webside.activity.model;

import java.util.Date;

import com.webside.base.basemodel.BaseEntity;

public class ActivityEntity extends BaseEntity{
	private static final long serialVersionUID = 1L;
	

	    private String aActivityname;

	    private Integer aParticipation;

	    private Date aStartdate;

	    private Date aEnddate;
	    /**
	     * 负责人
	     */
	    private String aLeader;

	    private String aRemark;
	    /**
	     * 是否分享
	     */
	    private String aShareflag;

	    private Integer vId;



		public String getaActivityname() {
			return aActivityname;
		}

		public void setaActivityname(String aActivityname) {
			this.aActivityname = aActivityname;
		}

		public Integer getaParticipation() {
			return aParticipation;
		}

		public void setaParticipation(Integer aParticipation) {
			this.aParticipation = aParticipation;
		}

		public Date getaStartdate() {
			return aStartdate;
		}

		public void setaStartdate(Date aStartdate) {
			this.aStartdate = aStartdate;
		}

		public Date getaEnddate() {
			return aEnddate;
		}

		public void setaEnddate(Date aEnddate) {
			this.aEnddate = aEnddate;
		}

		public String getaLeader() {
			return aLeader;
		}

		public void setaLeader(String aLeader) {
			this.aLeader = aLeader;
		}

		public String getaRemark() {
			return aRemark;
		}

		public void setaRemark(String aRemark) {
			this.aRemark = aRemark;
		}

		public String getaShareflag() {
			return aShareflag;
		}

		public void setaShareflag(String aShareflag) {
			this.aShareflag = aShareflag;
		}

		public Integer getvId() {
			return vId;
		}

		public void setvId(Integer vId) {
			this.vId = vId;
		}
	    
	    
}
