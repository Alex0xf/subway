package com.javasm.subway.admin.model;

import java.sql.ResultSet;
import java.sql.SQLException;
/**
 * 
 * ClassName: AdminModel 
 * @Description: 实体类
 * @author Alex
 * @date 2018年7月19日
 */
public class AdminModel {
	private String adminName;
	private Integer id;
	private String password;
	
	public AdminModel(){}
	public AdminModel(ResultSet rs) {
		try {
			this.id=rs.getInt("uid");
			this.adminName = rs.getString("username");
			this.password= rs.getString("password");
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	public AdminModel(int id,String adminName,String password) {
		this.id=id;
		this.adminName = adminName;
		this.password = password;
	}

	
	
	
	public String getAdminName() {
		return adminName;
	}
	public void setAdminName(String adminName) {
		this.adminName = adminName;
	}
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}

	
}
