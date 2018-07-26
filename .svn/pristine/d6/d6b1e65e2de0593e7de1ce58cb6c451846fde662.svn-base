package com.javasm.subway.admin.dao.Impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.javasm.subway.admin.dao.IAdminDao;
import com.javasm.subway.admin.model.AdminModel;
import com.javasm.subway.utills.JDBCDruidHelper;
import com.javasm.subway.utills.SQLTemple;
/**
 * 
 * ClassName: AdminDaoImpl 
 * @Description: 数据库交互层
 * @author Alex
 * @date 2018年7月25日
 */
public class AdminDaoImpl implements IAdminDao,SQLTemple{

	@Override
	public AdminModel selectAdmin(String adminName, String password) {
		AdminModel admin = null;
		//JDBC连接
		Connection conn=null;
		PreparedStatement ps=null;
		ResultSet rs=null;
		try {
			conn=JDBCDruidHelper.getConnection();
			ps=conn.prepareStatement(SelectAdminByName);
			ps.setString(1,adminName);
			ps.setString(2,password);
			rs=ps.executeQuery();
			while(rs.next()){
				admin=new AdminModel(rs);
			    
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}finally{
			JDBCDruidHelper.close(conn, ps, rs);
		}
		
		return admin;
	}

	public int updateAdminPsw(int uid, String adminPsw) {
		Connection conn=null;
		PreparedStatement ps=null;
		int updateAdminPswResult=0;
		try {
			conn=JDBCDruidHelper.getConnection();
			ps=conn.prepareStatement(updateAdminPswById);
			ps.setString(1,adminPsw);
			ps.setInt(2,uid);
			updateAdminPswResult=ps.executeUpdate();
			
		} catch (SQLException e) {
			e.printStackTrace();
		}finally{
			JDBCDruidHelper.close(conn, ps);
		}
		return updateAdminPswResult;
	}

}






