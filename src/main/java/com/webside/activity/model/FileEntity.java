package com.webside.activity.model;

import java.util.Date;

import com.webside.base.basemodel.BaseEntity;

public class FileEntity extends BaseEntity{
	private static final long serialVersionUID = 1L;


    private Date fCreatedate;
    /**
     * 描述
     */
    private String fCreatepersion;
    /**
     * url
     */
    private String fUrl;
    /**
     * 文件大小
     */
    private String fSize;

	public Date getfCreatedate() {
		return fCreatedate;
	}
	public void setfCreatedate(Date fCreatedate) {
		this.fCreatedate = fCreatedate;
	}
	public String getfCreatepersion() {
		return fCreatepersion;
	}
	public void setfCreatepersion(String fCreatepersion) {
		this.fCreatepersion = fCreatepersion;
	}
	public String getfUrl() {
		return fUrl;
	}
	public void setfUrl(String fUrl) {
		this.fUrl = fUrl;
	}
	public String getfSize() {
		return fSize;
	}
	public void setfSize(String fSize) {
		this.fSize = fSize;
	}
	
    
    
}
