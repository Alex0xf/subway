package com.javasm.subway.channel.model;

import java.sql.ResultSet;
import java.sql.SQLException;

public class ChannelModel {
	private int id;
	private int typeid;
	private String name;
	private String code;
	private int platformtype;
	private String areaid;
	private String description;
	private String downloadurl;
	private String releasetime;
	private String ctime;
	private int cuser;
	private int delstatus;
	private String dtime;
	private String viewname;
	public ChannelModel() {
		super();
		
	}
	public ChannelModel(ResultSet rs){
		try {
			this.id = rs.getInt("id");
			this.typeid = rs.getInt("typeid");
			this.name = rs.getString("name");
			this.code = rs.getString("code");
			this.platformtype = rs.getInt("platformtype");
			this.areaid = rs.getString("areaid");
			this.description = rs.getString("description");
			this.releasetime = rs.getString("releasetime");
			this.ctime = rs.getString("ctime");
			this.cuser = rs.getInt("cuser");
			this.delstatus = rs.getInt("delstatus");
			this.dtime = rs.getString("dtime");
			this.viewname = rs.getString("viewname");
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
	}
	public ChannelModel(int id, int typeid, String name, String code, int platformtype, String areaid,
			String description, String downloadurl, String releasetime, String ctime, int cuser, int delstatus,
			String dtime, String viewname) {
		super();
		this.id = id;
		this.typeid = typeid;
		this.name = name;
		this.code = code;
		this.platformtype = platformtype;
		this.areaid = areaid;
		this.description = description;
		this.downloadurl = downloadurl;
		this.releasetime = releasetime;
		this.ctime = ctime;
		this.cuser = cuser;
		this.delstatus = delstatus;
		this.dtime = dtime;
		this.viewname = viewname;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public int getTypeid() {
		return typeid;
	}
	public void setTypeid(int typeid) {
		this.typeid = typeid;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getCode() {
		return code;
	}
	public void setCode(String code) {
		this.code = code;
	}
	public int getPlatformtype() {
		return platformtype;
	}
	public void setPlatformtype(int platformtype) {
		this.platformtype = platformtype;
	}
	public String getAreaid() {
		return areaid;
	}
	public void setAreaid(String areaid) {
		this.areaid = areaid;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public String getDownloadurl() {
		return downloadurl;
	}
	public void setDownloadurl(String downloadurl) {
		this.downloadurl = downloadurl;
	}
	public String getReleasetime() {
		return releasetime;
	}
	public void setReleasetime(String releasetime) {
		this.releasetime = releasetime;
	}
	public String getCtime() {
		return ctime;
	}
	public void setCtime(String ctime) {
		this.ctime = ctime;
	}
	public int getCuser() {
		return cuser;
	}
	public void setCuser(int cuser) {
		this.cuser = cuser;
	}
	public int getDelstatus() {
		return delstatus;
	}
	public void setDelstatus(int delstatus) {
		this.delstatus = delstatus;
	}
	public String getDtime() {
		return dtime;
	}
	public void setDtime(String dtime) {
		this.dtime = dtime;
	}
	public String getViewname() {
		return viewname;
	}
	public void setViewname(String viewname) {
		this.viewname = viewname;
	}
	

}
