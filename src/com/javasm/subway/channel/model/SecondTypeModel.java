package com.javasm.subway.channel.model;

import java.sql.ResultSet;
import java.sql.SQLException;

public class SecondTypeModel {
	private String secondTypeName;

	public SecondTypeModel() {
		super();
		
	}
	public SecondTypeModel(ResultSet rs) {
		try {
			this.secondTypeName = rs.getString("secondTypeName");
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

	public SecondTypeModel(String secondTypeName) {
		super();
		this.secondTypeName = secondTypeName;
	}

	public String getSecondTypeName() {
		return secondTypeName;
	}

	public void setSecondTypeName(String secondTypeName) {
		this.secondTypeName = secondTypeName;
	}
	
}
