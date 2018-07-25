package com.javasm.subway.channel.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.javasm.subway.channel.model.TopTypeModel;
import com.javasm.subway.utills.DruidHelp;

public class TopTypeNameDao implements SelectTopTypeName {

	@Override
	public List<TopTypeModel> selectTopTypeName() {
		List<TopTypeModel> list = new ArrayList<>();
		Connection conn = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		conn=DruidHelp.getConnection();
		String sql = "select DISTINCT type2.`name` AS topTypeName  from pn_release_channel_type AS type1,pn_release_channel_type AS type2,pn_release_channel as channel WHERE channel.typeid = type1.tid AND type1.pid = type2.tid";
		try {
			ps =conn.prepareStatement(sql);
			rs=ps.executeQuery();
			while(rs.next()){
				TopTypeModel topTypeModel = new TopTypeModel(rs);
				list.add(topTypeModel);
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
