package com.javasm.subway.channel.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.javasm.subway.channel.model.ChannelControlModel;
import com.javasm.subway.channel.model.SecondTypeModel;
import com.javasm.subway.utills.DruidHelp;

public class SecondTypeNameDao implements SelectSecondTypeName {

	@Override
	public List<SecondTypeModel> selectSecondTypeNameByName(String topTypeName ) {
		List<SecondTypeModel> list = new ArrayList<>();
		Connection conn = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		conn=DruidHelp.getConnection();
		String sql = "select type2.`name` AS secondTypeName from pn_release_channel_type AS type1 ,pn_release_channel_type AS type2 where type1.`name` = ? AND type1.tid= type2.pid";
		try {
			ps =conn.prepareStatement(sql);
			ps.setString(1, topTypeName);
			rs=ps.executeQuery();
			while(rs.next()){
				SecondTypeModel secondTypeModel = new SecondTypeModel(rs);
				list.add(secondTypeModel);		
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
