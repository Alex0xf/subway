package com.javasm.subway.games.dao.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.javasm.subway.games.dao.IGamesTypeDAO;
import com.javasm.subway.games.model.GamesTypeModel;
import com.javasm.subway.utills.JDBCDruidHelper;
import com.javasm.subway.utills.SQLTemple;

/**
 * 
 * ClassName: GamesTypeDAOImpl 
 * @Description: gamestype数据库操作具体实现,对应表pn_game_type
 * @author LiJi
 * @date 2018年7月20日
 */
public class GamesTypeDAOImpl implements IGamesTypeDAO, SQLTemple{

	@Override
	public List<GamesTypeModel> selectGamesTypeList() {
		List<GamesTypeModel> list = new ArrayList<>();
		Connection conn = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		try {
			conn = JDBCDruidHelper.getConnection();
			ps = conn.prepareStatement(SelectGameType);
			rs = ps.executeQuery();
			while(rs.next()){
				GamesTypeModel gamestype = new GamesTypeModel(rs);
			    list.add(gamestype);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			JDBCDruidHelper.close(conn, ps, rs);
		}
		return list;
	}
}
