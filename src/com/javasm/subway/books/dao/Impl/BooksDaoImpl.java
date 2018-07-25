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
		}finally{
			JDBCDruidHelper.close(conn, ps, rs);
		}
		
		return list;
	}

	@Override
	public int deleteBooksById(int id) {
		Connection conn=null;
		PreparedStatement ps=null;
        int deleteResult=0;
		try {
			conn=JDBCDruidHelper.getConnection();
			ps=conn.prepareStatement(deleteBooksById);
			ps.setInt(1, id);
			deleteResult=ps.executeUpdate();
		} catch (SQLException e) {
		
			e.printStackTrace();
		}finally{
			JDBCDruidHelper.close(conn, ps);
		}
		
		return deleteResult;
	}

	@Override
	public int updateBooksById(int id, int ftypeId,int stypeId,String bookName,
			String authorName, int status) {
		Connection conn=null;
		PreparedStatement ps=null;
        int updateResult=0;
		try {
			conn=JDBCDruidHelper.getConnection();
			ps=conn.prepareStatement(updateBooksById);
			ps.setString(1, bookName);
			ps.setString(2, authorName);
			ps.setInt(3, ftypeId);
			ps.setInt(4, stypeId);
			ps.setInt(5, status);
			ps.setInt(6, id);
			updateResult=ps.executeUpdate();
		} catch (SQLException e) {
		
			e.printStackTrace();
		}finally{
			JDBCDruidHelper.close(conn, ps);
		}
		
		return updateResult;
	}

	@Override
	public int addABook(int true_book_id,int ftypeId, int stypeId, String bookName, String authorName, int status) {
		Connection conn=null;
		PreparedStatement ps=null;
        int addResult=0;
		try {
			conn=JDBCDruidHelper.getConnection();
			ps=conn.prepareStatement(addABook);
			ps.setInt(1, true_book_id);
			ps.setString(2, bookName);
			ps.setString(3, authorName);
			ps.setInt(4, ftypeId);
			ps.setInt(5, stypeId);
			ps.setInt(6, status);
			addResult=ps.executeUpdate();
		} catch (SQLException e) {
		
			e.printStackTrace();
		}finally{
			JDBCDruidHelper.close(conn, ps);
		}
		
		return addResult;
	}

	
	

}
