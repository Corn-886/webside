package com.webside.member.model;



import java.util.Date;

import org.springframework.format.annotation.DateTimeFormat;

import com.webside.base.basemodel.BaseEntity;

public class MemberEntity extends BaseEntity {
	private static final long serialVersionUID = 1L;
	


	    private String mNum;

	    private String mName;

	    private Integer mSex;

	    private String mQq;
	    @DateTimeFormat(pattern="yyyy-MM-dd")
	    private Date mEntrdate;//入学时间

	    private String mVill;

	    private String mSchool;

	    private String mMajor;
	    
	    @DateTimeFormat(pattern="yyyy-MM-dd")
	    private Date mGardate;//毕业时间

	    private Integer mEdusystime;//学制
	    
	    @DateTimeFormat(pattern="yyyy-MM-dd")
	    private Date mInidate;//入会时间

	    private String mPhone;

	    private String mAdress;

	    private String mSpecial;

	    private Integer mVid;

	 

	    public String getmNum() {
	        return mNum;
	    }

	    public void setmNum(String mNum) {
	        this.mNum = mNum == null ? null : mNum.trim();
	    }

	    public String getmName() {
	        return mName;
	    }

	    public void setmName(String mName) {
	        this.mName = mName == null ? null : mName.trim();
	    }

	    public Integer getmSex() {
	        return mSex;
	    }

	    public void setmSex(Integer mSex) {
	        this.mSex = mSex;
	    }

	    public String getmQq() {
	        return mQq;
	    }

	    public void setmQq(String mQq) {
	        this.mQq = mQq == null ? null : mQq.trim();
	    }

	    public Date getmEntrdate() {
	        return mEntrdate;
	    }

	    public void setmEntrdate(Date mEntrdate) {
	        this.mEntrdate = mEntrdate;
	    }

	    public String getmVill() {
	        return mVill;
	    }

	    public void setmVill(String mVill) {
	        this.mVill = mVill == null ? null : mVill.trim();
	    }

	    public String getmSchool() {
	        return mSchool;
	    }

	    public void setmSchool(String mSchool) {
	        this.mSchool = mSchool == null ? null : mSchool.trim();
	    }

	    public String getmMajor() {
	        return mMajor;
	    }

	    public void setmMajor(String mMajor) {
	        this.mMajor = mMajor == null ? null : mMajor.trim();
	    }

	    public Date getmGardate() {
	        return mGardate;
	    }

	    public void setmGardate(Date mGardate) {
	        this.mGardate = mGardate;
	    }

	    public Integer getmEdusystime() {
	        return mEdusystime;
	    }

	    public void setmEdusystime(Integer mEdusystime) {
	        this.mEdusystime = mEdusystime;
	    }

	    public Date getmInidate() {
	        return mInidate;
	    }

	    public void setmInidate(Date mInidate) {
	        this.mInidate = mInidate;
	    }

	    public String getmPhone() {
	        return mPhone;
	    }

	    public void setmPhone(String mPhone) {
	        this.mPhone = mPhone == null ? null : mPhone.trim();
	    }

	    public String getmAdress() {
	        return mAdress;
	    }

	    public void setmAdress(String mAdress) {
	        this.mAdress = mAdress == null ? null : mAdress.trim();
	    }

	    public String getmSpecial() {
	        return mSpecial;
	    }

	    public void setmSpecial(String mSpecial) {
	        this.mSpecial = mSpecial == null ? null : mSpecial.trim();
	    }

	    public Integer getmVid() {
	        return mVid;
	    }

	    public void setmVid(Integer mVid) {
	        this.mVid = mVid;
	    }

		@Override
		public String toString() {
			return "MemberEntity [mNum=" + mNum + ", mName=" + mName + ", mSex=" + mSex + ", mQq=" + mQq
					+ ", mEntrdate=" + mEntrdate + ", mVill=" + mVill + ", mSchool=" + mSchool + ", mMajor=" + mMajor
					+ ", mGardate=" + mGardate + ", mEdusystime=" + mEdusystime + ", mInidate=" + mInidate + ", mPhone="
					+ mPhone + ", mAdress=" + mAdress + ", mSpecial=" + mSpecial + ", mVid=" + mVid + "]";
		}

	

	    
    
    
}