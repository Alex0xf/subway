package com.javasm.subway.channel.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import com.javasm.subway.channel.model.ChannelControlModel;
import com.javasm.subway.utills.DruidHelp;

public class ChannelAndTypeDao implements  SelectChannelAndType {

	@Override
	public List<ChannelControlModel> SelectChannelAndType(int beginNum,int pageSize) {
		List<ChannelControlModel> list = new ArrayList<>();
		Connection conn = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		conn=DruidHelp.getConnection();
		String sql = "select type2.`name` AS topTypeName, type1.`name` AS secondTypeName,code ,downloadurl,channel.`name`,viewname,channel.ctime from pn_release_channel_type AS type1,pn_release_channel_type AS type2,pn_release_channel as channel WHERE channel.typeid = type1.tid AND type1.pid = type2.tid limit ?,?";
		try {
			ps =conn.prepareStatement(sql);
			ps.setInt(1, beginNum);
			ps.setInt(2, pageSize);
			rs=ps.executeQuery();
			while(rs.next()){
				ChannelControlModel channelControlModel = new ChannelControlModel(rs);
				list.add(channelControlModel);				
			}
			return list;
		} catch (SQLException e) {
			e.printStackTrace();
		}finally{
			DruidHelp.close(rs, ps, conn);
		}
		
		return null;
	}
	
	@Override
	public List<ChannelControlModel> SelectChannelAndType() {
		List<ChannelControlModel> list = new ArrayList<>();
		Connection conn = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		conn=DruidHelp.getConnection();
		String sql = "select type2.`name` AS topTypeName, type1.`name` AS secondTypeName,code ,downloadurl,channel.`name`,viewname,channel.ctime from pn_release_channel_type AS type1,pn_release_channel_type AS type2,pn_release_channel as channel WHERE channel.typeid = type1.tid AND type1.pid = type2.tid";
		try {
			ps =conn.prepareStatement(sql);
			rs=ps.executeQuery();
			while(rs.next()){
				ChannelControlModel channelControlModel = new ChannelControlModel(rs);
				list.add(channelControlModel);				
			}
			return list;
		} catch (SQLException e) {
			e.printStackTrace();
		}finally{
			DruidHelp.close(rs, ps, conn);
		}
		
		return null;
		
	}
	

}
