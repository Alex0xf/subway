package com.javasm.subway.channel.action;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import com.javasm.subway.channel.model.ChannelTypeControlModel;
import com.javasm.subway.utills.DruidHelp;

public class TestServlet {

	public static void main(String[] args) {
		ChannelTypeControlModel channelTypeControlModel= null;
		Connection conn = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		conn=DruidHelp.getConnection();
		String sql = "'SELECT t1.name AS typeName ,t2.name AS fatherName,t1.sort,t1.ctime FROM pn_release_channel_type as t1 LEFT  JOIN pn_release_channel_type as t2 ON t1.pid = t2.tid where =?'";
		try {
			ps =conn.prepareStatement(sql);
			ps.setString(1,"2016-11-08 16:06:52.0");
			rs=ps.executeQuery();
			while(rs.next()){
				 channelTypeControlModel = new ChannelTypeControlModel(rs);
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		}finally{
			DruidHelp.close(rs, ps, conn);
		}
		
		System.out.println(channelTypeControlModel);
	}
}
