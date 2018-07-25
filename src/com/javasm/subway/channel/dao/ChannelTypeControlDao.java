package com.javasm.subway.channel.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.javasm.subway.channel.model.ChannelControlModel;
import com.javasm.subway.channel.model.ChannelTypeControlModel;
import com.javasm.subway.utills.DruidHelp;

public class ChannelTypeControlDao {
	public List<ChannelTypeControlModel> selectChannelTypeControl() {
		List<ChannelTypeControlModel> list = new ArrayList<>();
		Connection conn = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		conn=DruidHelp.getConnection();
		String sql = "SELECT t1.`name` AS typeName ,t2.`name` AS fatherName,t1.sort,t1.ctime,t1.description FROM pn_release_channel_type as t1 LEFT  JOIN pn_release_channel_type as t2 ON t1.pid = t2.tid";
		try {
			ps =conn.prepareStatement(sql);
			rs=ps.executeQuery();
			while(rs.next()){
				ChannelTypeControlModel channelTypeControlModel = new ChannelTypeControlModel(rs);
				list.add(channelTypeControlModel);		
			}
			return list;
		} catch (SQLException e) {
			e.printStackTrace();
		}finally{
			DruidHelp.close(rs, ps, conn);
		}
		
		return null;
	}
	
	public ChannelTypeControlModel selectChannelTypeControlByctime(String ctime ) {
		ChannelTypeControlModel channelTypeControlModel= null;
		Connection conn = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		conn=DruidHelp.getConnection();
		String sql = "SELECT t1.name AS typeName ,t2.name AS fatherName,t1.sort,t1.ctime ,t1.description FROM pn_release_channel_type as t1 LEFT  JOIN pn_release_channel_type as t2 ON t1.pid = t2.tid where t1.ctime = ? ";
		try {
			ps =conn.prepareStatement(sql);
			ps.setString(1, ctime);
			rs=ps.executeQuery();
			while(rs.next()){
				 channelTypeControlModel = new ChannelTypeControlModel(rs);
			}
			return channelTypeControlModel;
		} catch (SQLException e) {
			e.printStackTrace();
		}finally{
			DruidHelp.close(rs, ps, conn);
		}
		
		return channelTypeControlModel;
	}
	
	
	public int deleteChannelTypeControlByctime(String ctime ) {
		int num = 0;
		Connection conn = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		conn=DruidHelp.getConnection();
		String sql = "delete FROM pn_release_channel_type  where ctime = ? ";
		try {
			ps =conn.prepareStatement(sql);
			ps.setString(1, ctime);
			num=ps.executeUpdate();
			
			return num;
		} catch (SQLException e) {
			e.printStackTrace();
		}finally{
			DruidHelp.close(rs, ps, conn);
		}
		
		return num;
	}
	
	public int addChannelTypeControl(String type_name,String father_type,String tag_sort,String description,String dateTime) {
		Connection conn = null;
		PreparedStatement ps = null;
		int num = 0;
		conn=DruidHelp.getConnection();
		String sql = "INSERT INTO pn_release_channel_type  (`name`,pid,sort,description,ctime) VALUES (?,?,?,?,?)";
		try {
			ps =conn.prepareStatement(sql);
			ps.setString(1, type_name);
			ps.setString(2, father_type);
			ps.setString(3, tag_sort);
			ps.setString(4, description);
			ps.setString(5, dateTime);
			num=ps.executeUpdate();
			
		} catch (SQLException e) {
			e.printStackTrace();
		}finally{
			DruidHelp.close(ps, conn);
		}
		
		return num;
	}
	
	public int updateChannelTypeControl(String type_name,String father_type,String tag_sort,String description,String dateTime,String ctime) {
		Connection conn = null;
		PreparedStatement ps = null;
		int num = 0;
		conn=DruidHelp.getConnection();
		String sql = "update pn_release_channel_type set `name`=?,pid=?,sort=?,description=?,ctime=? where ctime = ?";
		try {
			ps =conn.prepareStatement(sql);
			ps.setString(1, type_name);
			ps.setString(2, father_type);
			ps.setString(3, tag_sort);
			ps.setString(4, description);
			ps.setString(5, dateTime);
			ps.setString(6, ctime);
			num=ps.executeUpdate();
			
		} catch (SQLException e) {
			e.printStackTrace();
		}finally{
			DruidHelp.close(ps, conn);
		}
		
		return num;
	}
	
	public List<ChannelTypeControlModel> selectChannelTypeControlFather() {
		List<ChannelTypeControlModel> list = new ArrayList<>();
		Connection conn = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		conn=DruidHelp.getConnection();
		String sql = "SELECT   DISTINCT t2.`name` AS fatherName  FROM pn_release_channel_type as t1 LEFT  JOIN pn_release_channel_type as t2 ON t1.pid = t2.tid";
		try {
			ps =conn.prepareStatement(sql);
			rs=ps.executeQuery();
			while(rs.next()){
				ChannelTypeControlModel channelTypeControlModel = new ChannelTypeControlModel(rs,"fatherName");
				list.add(channelTypeControlModel);		
			}
			return list;
		} catch (SQLException e) {
			e.printStackTrace();
		}finally{
			DruidHelp.close(rs, ps, conn);
		}
		
		return null;
	}
	
	public List<ChannelTypeControlModel> selectChannelTypeControl(int beginNum,int pageSize) {
		List<ChannelTypeControlModel> list = new ArrayList<>();
		Connection conn = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		conn=DruidHelp.getConnection();
		String sql = "SELECT t1.`name` AS typeName ,t2.`name` AS fatherName,t1.sort,t1.ctime,t1.description FROM pn_release_channel_type as t1 LEFT  JOIN pn_release_channel_type as t2 ON t1.pid = t2.tid limit ?,?";
		try {
			ps =conn.prepareStatement(sql);
			ps.setInt(1, beginNum);
			ps.setInt(2, pageSize);
			rs=ps.executeQuery();
			while(rs.next()){
				ChannelTypeControlModel channelTypeControlModel = new ChannelTypeControlModel(rs);
				list.add(channelTypeControlModel);				
			}
			return list;
		} catch (SQLException e) {
			e.printStackTrace();
		}finally{
			DruidHelp.close(rs, ps, conn);
		}
		
		return null;
	}
	
	
	public List<ChannelTypeControlModel> selectChannelTypeControl(String beginNum,String pageSize) {
		List<ChannelTypeControlModel> list = new ArrayList<>();
		Connection conn = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		conn=DruidHelp.getConnection();
		String sql = "SELECT t1.`name` AS typeName ,t2.`name` AS fatherName,t1.sort,t1.ctime FROM pn_release_channel_type as t1 LEFT  JOIN pn_release_channel_type as t2 ON t1.pid = t2.tid limit ?,?";
		try {
			ps =conn.prepareStatement(sql);
			ps.setString(1, beginNum);
			ps.setString(2, pageSize);
			rs=ps.executeQuery();
			while(rs.next()){
				ChannelTypeControlModel channelTypeControlModel = new ChannelTypeControlModel(rs);
				list.add(channelTypeControlModel);				
			}
			return list;
		} catch (SQLException e) {
			e.printStackTrace();
		}finally{
			DruidHelp.close(rs, ps, conn);
		}
		
		return null;
	}
	public int SelectChannelAndTypeCount() {
		int count = 0;
		Connection conn = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		conn=DruidHelp.getConnection();
		String sql = "SELECT count(*) AS count FROM pn_release_channel_type as t1 LEFT  JOIN pn_release_channel_type as t2 ON t1.pid = t2.tid";
		try {
			ps =conn.prepareStatement(sql);
			rs=ps.executeQuery();
			while(rs.next()){
				count =rs.getInt("count");
			}
			return count;
		} catch (SQLException e) {
			e.printStackTrace();
		}finally{
			DruidHelp.close(rs, ps, conn);
		}
		
		return count;
		
	}


}
