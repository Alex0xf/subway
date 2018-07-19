package com.javasm.subway.channel.model;

import java.sql.ResultSet;
import java.sql.SQLException;

public class ChannelTypeModel {
	private int tid;
	private String name;
	private int pid;
	private int sort;
	private int cuser;
	private String description;
	private String ctime;
	private int uuser;
	private String utime;
	private String dtime;
	private int del_status;
	public ChannelTypeModel() {
		super();
		
	}
	public ChannelTypeModel(ResultSet rs){
		try {
			this.tid = rs.getInt("tid");
			this.name = rs.getString("name");
			this.pid = rs.getInt("pid");
			this.sort = rs.getInt("sort");
			this.cuser =rs.getInt("cuser");
			this.description = rs.getString("description");
			this.ctime = rs.getString("ctime");
			this.uuser = rs.getInt("uuser");
			this.utime = rs.getString("utime");
			this.dtime = rs.getString("dtime");
			this.del_status = rs.getInt("del_status");
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
	}
	public ChannelTypeModel(int tid, String name, int pid, int sort, int cuser, String description, String ctime,
			int uuser, String utime, String dtime, int del_status) {
		super();
		this.tid = tid;
		this.name = name;
		this.pid = pid;
		this.sort = sort;
		this.cuser = cuser;
		this.description = description;
		this.ctime = ctime;
		this.uuser = uuser;
		this.utime = utime;
		this.dtime = dtime;
		this.del_status = del_status;
	}
	public int getTid() {
		return tid;
	}
	public void setTid(int tid) {
		this.tid = tid;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public int getPid() {
		return pid;
	}
	public void setPid(int pid) {
		this.pid = pid;
	}
	public int getSort() {
		return sort;
	}
	public void setSort(int sort) {
		this.sort = sort;
	}
	public int getCuser() {
		return cuser;
	}
	public void setCuser(int cuser) {
		this.cuser = cuser;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public String getCtime() {
		return ctime;
	}
	public void setCtime(String ctime) {
		this.ctime = ctime;
	}
	public int getUuser() {
		return uuser;
	}
	public void setUuser(int uuser) {
		this.uuser = uuser;
	}
	public String getUtime() {
		return utime;
	}
	public void setUtime(String utime) {
		this.utime = utime;
	}
	public String getDtime() {
		return dtime;
	}
	public void setDtime(String dtime) {
		this.dtime = dtime;
	}
	public int getDel_status() {
		return del_status;
	}
	public void setDel_status(int del_status) {
		this.del_status = del_status;
	}
	

}
