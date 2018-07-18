package com.javasm.subway.books.model;

import java.sql.ResultSet;
import java.sql.SQLException;

/**
 * 
 * ClassName: BooksModel 
 * @author Alex
 * @date 2018年7月17日
 */
public class BooksModel {
private int id;
private String name;//标题
private int attribution;//分类

public BooksModel(){}
public BooksModel(ResultSet rs) {

	try {
		this.id = rs.getInt("type_id");
		this.name =rs.getString("type_name");
		this.attribution = rs.getInt("attribution");
	} catch (SQLException e) {
		e.printStackTrace();
	}
}

public BooksModel(int id, String name, int attribution) {
	super();
	this.id = id;
	this.name = name;
	this.attribution = attribution;
}
public int getId() {
	return id;
}
public void setId(int id) {
	this.id = id;
}
public String getName() {
	return name;
}
public void setName(String name) {
	this.name = name;
}
public int getAttribution() {
	return attribution;
}
public void setAttribution(int attribution) {
	this.attribution = attribution;
}




}
