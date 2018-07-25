package com.javasm.subway.utills;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.alibaba.druid.pool.DruidDataSource;

public class DruidHelp {
	static DruidDataSource druidDataSource;
	static{
		druidDataSource = new DruidDataSource();
		druidDataSource.setDriverClassName("com.mysql.jdbc.Driver");
		String url = "jdbc:mysql://192.168.14.252:3306/test";
		String username = "root";
		String password = "xiafei";
		druidDataSource.setUrl(url);
		druidDataSource.setUsername(username);
		druidDataSource.setPassword(password);
		// 以下为非必填项，不设置也有默认值
		druidDataSource.setMinIdle(1);// 最小连接池数量 可设置最大值8
		druidDataSource.setInitialSize(1);// 初始化时建立物理连接的个数
		druidDataSource.setMaxActive(10);// 最大连接池数量
		druidDataSource.setMaxWait(10000);// 10秒,获得连接最大等待时间 单位毫秒
		druidDataSource.setMinEvictableIdleTimeMillis(300000);// 300秒,配置一个连接在池中最小
																// 生存的时间，单位是毫秒
		// ========================================
		
	}
	
	public static Connection getConnection() {
	
		Connection conn = null;
		try {
			conn = druidDataSource.getConnection();
			return conn;
		} catch (SQLException e) {
			e.printStackTrace();
			return conn;
		}

	}

	public static void close(ResultSet rs, PreparedStatement ps, Connection conn) {
		if (rs != null) {
			try {
				rs.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		if (ps != null) {
			try {
				ps.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		if (conn != null) {
			try {
				conn.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}

	}
		
	public static void close(PreparedStatement ps, Connection conn) {
		
		if (ps != null) {
			try {
				ps.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		if (conn != null) {
			try {
				conn.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}

	}
}
