package com.javasm.subway.channel.model;

import java.sql.ResultSet;
import java.sql.SQLException;

public class ChannelControlModel {
	private String topTypeName;
	private String secondTypeName;
	private String code;
	private String downloadurl;
	private String name;
	private String viewname;
	private String ctime;
	public ChannelControlModel() {
		super();
		
	}
	public ChannelControlModel(ResultSet rs){
		try {
			this.topTypeName = rs.getString("topTypeName");
			this.secondTypeName = rs.getString("secondTypeName");
			this.code = rs.getString("code");
			this.downloadurl = rs.getString("downloadurl");
			this.name = rs.getString("name");
			this.viewname = rs.getString("viewname");
			this.ctime = rs.getString("ctime");
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
	}
	public ChannelControlModel(String topTypeName, String secondTypeName, String code, String downloadurl, String name,
			String viewname, String ctime) {
		super();
		this.topTypeName = topTypeName;
		this.secondTypeName = secondTypeName;
		this.code = code;
		this.downloadurl = downloadurl;
		this.name = name;
		this.viewname = viewname;
		this.ctime = ctime;
	}
	public String getTopTypeName() {
		return topTypeName;
	}
	public void setTopTypeName(String topTypeName) {
		this.topTypeName = topTypeName;
	}
	public String getSecondTypeName() {
		return secondTypeName;
	}
	public void setSecondTypeName(String secondTypeName) {
		this.secondTypeName = secondTypeName;
	}
	public String getCode() {
		return code;
	}
	public void setCode(String code) {
		this.code = code;
	}
	public String getDownloadurl() {
		return downloadurl;
	}
	public void setDownloadurl(String downloadurl) {
		this.downloadurl = downloadurl;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getViewname() {
		return viewname;
	}
	public void setViewname(String viewname) {
		this.viewname = viewname;
	}
	public String getCtime() {
		return ctime;
	}
	public void setCtime(String ctime) {
		this.ctime = ctime;
	}
	

}
