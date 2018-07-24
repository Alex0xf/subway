package com.javasm.subway.games.dao.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.javasm.subway.games.dao.IGamesDAO;
import com.javasm.subway.games.model.GamesModel;
import com.javasm.subway.utills.JDBCDruidHelper;
import com.javasm.subway.utills.SQLTemple;

/**
 * 
 * ClassName: GamesDAOImpl 
 * @Description: games数据库操作具体实现,对应表pn_game
 * @author LiJi
 * @date 2018年7月20日
 */
public class GamesDAOImpl implements IGamesDAO, SQLTemple{

	@Override
	/*
	 * 传入页码和页面大小
	 * 按页返回gamesModel
	 */
	public List<GamesModel> selectGamesList(int index, int pagesize) {
		List<GamesModel> list = new ArrayList<>();
		Connection conn = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		try {
			conn = JDBCDruidHelper.getConnection();
			ps = conn.prepareStatement(SelectGamesList);
			ps.setInt(1, index);
			ps.setInt(2, pagesize);
			rs = ps.executeQuery();
			while(rs.next()){
				GamesModel games = new GamesModel(rs);
			    list.add(games);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			JDBCDruidHelper.close(conn, ps, rs);
		}
		return list;
	}
}
