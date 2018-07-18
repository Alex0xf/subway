package com.javasm.subway.books.dao.Impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.javasm.subway.books.dao.IBooksDao;
import com.javasm.subway.books.model.BooksModel;
import com.javasm.subway.utills.JDBCDruidHelper;
import com.javasm.subway.utills.SQLTemple;

public class BooksDaoImpl implements IBooksDao,SQLTemple{

	@Override
	public List<BooksModel> selectBooksList(int index, int pagesize) {
		List<BooksModel> list=new ArrayList<>();
		//JDBC连接
		Connection conn=null;
		PreparedStatement ps=null;
		ResultSet rs=null;
		try {
			conn=JDBCDruidHelper.getConnection();
			ps=conn.prepareStatement(SelectBooksList);
			ps.setInt(1, index);
			ps.setInt(2, pagesize);
			rs=ps.executeQuery();
			while(rs.next()){
				BooksModel books=new BooksModel(rs);
			    list.add(books);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return list;
	}

}
