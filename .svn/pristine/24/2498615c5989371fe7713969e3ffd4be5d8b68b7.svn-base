package com.javasm.subway.channel.model;

import java.sql.ResultSet;
import java.sql.SQLException;

public class ChannelTypeControlModel {
	private String typeName;
	private String fatherName;
	private int sort;
	private String ctime;
	private String description;
	public ChannelTypeControlModel() {
		super();
		
	}
	public ChannelTypeControlModel(ResultSet rs){
		try {
			this.typeName = rs.getString("typeName");
			this.fatherName = rs.getString("fatherName");
			this.sort = rs.getInt("sort");
			this.ctime = rs.getString("ctime");
			this.description = rs.getString("description");
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
	}
	
	public ChannelTypeControlModel(ResultSet rs,String fatherName){
		if("fatherName".equals(fatherName)){
			try {
				this.fatherName = rs.getString("fatherName");
				
			} catch (SQLException e) {
				e.printStackTrace();
			}
			
		}
		
		
	}
	public ChannelTypeControlModel(String typeName, String fatherName, int sort, String ctime) {
		super();
		this.typeName = typeName;
		this.fatherName = fatherName;
		this.sort = sort;
		this.ctime = ctime;
	}
	public String getTypeName() {
		return typeName;
	}
	public void setTypeName(String typeName) {
		this.typeName = typeName;
	}
	public String getFatherName() {
		return fatherName;
	}
	public void setFatherName(String fatherName) {
		this.fatherName = fatherName;
	}
	public int getSort() {
		return sort;
	}
	public void setSort(int sort) {
		this.sort = sort;
	}
	public String getCtime() {
		return ctime;
	}
	public void setCtime(String ctime) {
		this.ctime = ctime;
	}
	/* (non-Javadoc)
	 * @see java.lang.Object#toString()
	 */
	
	
	public String getDescription() {
		return description;
	}
	/* (non-Javadoc)
	 * @see java.lang.Object#toString()
	 */
	@Override
	public String toString() {
		return "ChannelTypeControlModel [typeName=" + typeName + ", fatherName=" + fatherName + ", sort=" + sort
				+ ", ctime=" + ctime + ", description=" + description + "]";
	}
	public void setDescription(String description) {
		this.description = description;
	}
	

}
