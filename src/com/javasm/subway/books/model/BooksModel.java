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
private int ftype_id;//一级id
private String ftype_name;//一级分类名称
private int stype_id;//二级id
private String stype_name;//一级分类名称
private String bookName;//书名
private String authorName;//作者名
private int status;//更新状态

public BooksModel(){}
public BooksModel(ResultSet rs) {
	try {
		this.id = rs.getInt("bid");
		this.ftype_id = rs.getInt("ftype_id");
		this.ftype_name = rs.getString("ftype_name");
		this.stype_id = rs.getInt("stype_id");
		this.stype_name = rs.getString("stype_name");
		this.bookName = rs.getString("book_name");
		this.authorName = rs.getString("author_name");
		this.status =rs.getInt("status") ;
	} catch (SQLException e) {
		e.printStackTrace();
	}
}





public BooksModel(int id, int ftype_id, String ftype_name, int stype_id, String stype_name, String bookName,
		String authorName, int status) {
	this.id = id;
	this.ftype_id = ftype_id;
	this.ftype_name = ftype_name;
	this.stype_id = stype_id;
	this.stype_name = stype_name;
	this.bookName = bookName;
	this.authorName = authorName;
	this.status = status;
}
public int getId() {
	return id;
}
public void setId(int id) {
	this.id = id;
}
public int getFtype_id() {
	return ftype_id;
}
public void setFtype_id(int ftype_id) {
	this.ftype_id = ftype_id;
}
public String getFtype_name() {
	return ftype_name;
}
public void setFtype_name(String ftype_name) {
	this.ftype_name = ftype_name;
}
public int getStype_id() {
	return stype_id;
}
public void setStype_id(int stype_id) {
	this.stype_id = stype_id;
}
public String getStype_name() {
	return stype_name;
}
public void setStype_name(String stype_name) {
	this.stype_name = stype_name;
}
public String getBookName() {
	return bookName;
}
public void setBookName(String bookName) {
	this.bookName = bookName;
}
public String getAuthorName() {
	return authorName;
}
public void setAuthorName(String authorName) {
	this.authorName = authorName;
}
public int getStatus() {
	return status;
}
public void setStatus(int status) {
	this.status = status;
}








}
