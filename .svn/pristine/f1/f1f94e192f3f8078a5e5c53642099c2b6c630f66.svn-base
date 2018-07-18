package com.javasm.subway.utills;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Properties;

import com.alibaba.druid.pool.DruidDataSource;


public class JDBCDruidHelper {
   private static DruidDataSource druid;

	static {
		
		try {
			//从配置文件中获取到的值
			Properties p = new Properties();
			String path = JDBCDruidHelper.class.getClassLoader().getResource("//").getPath();
			File file = new File(path+"druidJdbc.properties");
			FileInputStream fis = new FileInputStream(file);
			p.load(fis);
			String url = p.getProperty("mysql.url");
			String userName = p.getProperty("mysql.userName");
			String password = p.getProperty("mysql.password");
			//声明一个druid数据源
			druid=new DruidDataSource();
			//设置数据库连接的值
			druid.setDriverClassName("com.mysql.jdbc.Driver");
			druid.setUrl(url);
			druid.setUsername(userName);
			druid.setPassword(password);
		} catch (FileNotFoundException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
	}

	public static Connection getConnection() throws SQLException {
		Connection conn = druid.getConnection();
		return conn;
	}
	
	//关闭方法  两个参数
	public static void close(Connection conn, PreparedStatement ps){
		close(conn,ps,null);
	}

	public static void close(Connection conn, PreparedStatement ps, ResultSet rs) {
		try {
			// 关闭各种连接
			if (rs != null) {// 防止空指针异常
				rs.close();
			}
			if (ps != null) {
				ps.close();
			}
			if (conn != null) {
				conn.close();
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
}
