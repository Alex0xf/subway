package com.javasm.subway.user.model;

import java.sql.ResultSet;
import java.sql.SQLException;
/**
 * 
 * ClassName: UserModel 
 * @Description: 实体类
 * @author Alex
 * @date 2018年7月18日
 */
public class UserModel {
	private String userName;
	private Integer id;
	private String password;
	
	public UserModel(){}
	public UserModel(ResultSet rs) {
		try {
			this.id=rs.getInt("uid");
			this.userName = rs.getString("username");
			this.password= rs.getString("password");
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	public UserModel(int id,String userName,String password) {
		this.id=id;
		this.userName = userName;
		this.password = password;
	}

	
	
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
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
