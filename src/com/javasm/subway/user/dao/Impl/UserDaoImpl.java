package com.javasm.subway.user.dao.Impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import com.javasm.subway.user.dao.IUserDao;
import com.javasm.subway.user.model.UserModel;
import com.javasm.subway.utills.JDBCDruidHelper;
import com.javasm.subway.utills.SQLTemple;

public class UserDaoImpl implements IUserDao,SQLTemple{

	@Override
	public UserModel selectUser(String userName,String password) {
		UserModel user = null;
		//JDBC连接
		Connection conn=null;
		PreparedStatement ps=null;
		ResultSet rs=null;
		try {
			conn=JDBCDruidHelper.getConnection();
			ps=conn.prepareStatement(SelectUserByName);
			ps.setString(1,userName);
			ps.setString(2,password);
			rs=ps.executeQuery();
			while(rs.next()){
				user=new UserModel(rs);
			    
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}finally{
			JDBCDruidHelper.close(conn, ps, rs);
		}
		
		return user;
	}

}
