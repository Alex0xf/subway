package com.javasm.subway.games.dao.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.javasm.subway.games.dao.IGamesDAO;
import com.javasm.subway.games.model.GamesModel;
import com.javasm.subway.utills.DateUtil;
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

	@Override
	/**
	 * 传入游戏模型到数据库中
	 */
	public void addGames(GamesModel games) {
		
		Connection conn = null;
		PreparedStatement ps = null;
		try {
			conn = JDBCDruidHelper.getConnection();
			ps = conn.prepareStatement(InsertGames);
			ps.setString(1, games.getName());
			ps.setString(2, games.getTitle());
			ps.setDouble(3, games.getSize());
			ps.setString(4, games.getGameIcon());
			ps.setString(5, games.getPictures());
			ps.setString(6, games.getIosUrl());
			ps.setString(7, games.getAndroidUrl());
			ps.setInt(8, games.getRecType());
			ps.setInt(9, games.getStatus());
			ps.setInt(10, games.getTid());
			ps.setInt(11, games.getPlatform());
			ps.setTimestamp(12, DateUtil.getTimestamp(games.getCtime()));
			ps.setString(13, games.getDes());
			ps.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			JDBCDruidHelper.close(conn, ps);
		}
	}

	@Override
	/**
	 * 根据传入gid删除游戏
	 */
	public void delGames(int gid) {
		Connection conn = null;
		PreparedStatement ps = null;
		try {
			conn = JDBCDruidHelper.getConnection();
			ps = conn.prepareStatement(DeleteGames);
			ps.setInt(1, gid);
			ps.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			JDBCDruidHelper.close(conn, ps);
		}
	}

	@Override
	/**
	 * 更新游戏
	 */
	public void updateGames(GamesModel games) {
		Connection conn = null;
		PreparedStatement ps = null;
		try {
			conn = JDBCDruidHelper.getConnection();
			ps = conn.prepareStatement(UpdateGames);
			ps.setString(1, games.getName());
			ps.setString(2, games.getTitle());
			ps.setDouble(3, games.getSize());
			ps.setString(5, games.getGameIcon());
			ps.setString(8, games.getPictures());
			ps.setString(6, games.getIosUrl());
			ps.setString(7, games.getAndroidUrl());
			ps.setInt(11, games.getRecType());
			ps.setInt(9, games.getStatus());
			ps.setInt(10, games.getTid());
			ps.setInt(13, games.getPlatform());
			ps.setTimestamp(12, DateUtil.getTimestamp(games.getUtime()));
			ps.setString(4, games.getDes());
			ps.setInt(15, games.getGid());	
			ps.setInt(14, games.getDownloadCount());
			ps.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			JDBCDruidHelper.close(conn, ps);
		}		
	}

	@Override
	/**
	 * 根据gid查找游戏
	 */
	public GamesModel selectGamesByGid(int gid) {
		GamesModel games = null;
		Connection conn = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		try {
			conn = JDBCDruidHelper.getConnection();
			ps = conn.prepareStatement(SelectGames);
			ps.setInt(1, gid);
			rs = ps.executeQuery();
			if (rs.next()) {
				games = new GamesModel(rs);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			JDBCDruidHelper.close(conn, ps, rs);
		}
		return games;
	}

	@Override
	public int selectGamesCount() {
		Connection conn = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		int count = 0;
		try {
			conn = JDBCDruidHelper.getConnection();
			ps = conn.prepareStatement(CountGames);
			rs = ps.executeQuery();
			if (rs.next()) {
				count = rs.getInt("count");
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			JDBCDruidHelper.close(conn, ps, rs);
		}
		return count;
	}

	@Override
	public int GamesByRecType(int recType) {
		Connection conn = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		int count = 0;
		try {
			conn = JDBCDruidHelper.getConnection();
			ps = conn.prepareStatement(CountGamesByRecType);
			ps.setInt(1, recType);
			rs = ps.executeQuery();
			if (rs.next()) {
				count = rs.getInt("count");
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			JDBCDruidHelper.close(conn, ps, rs);
		}
		return count;
	}

	@Override
	public List<GamesModel> selectGamesByRecPlat(int recType, int platform, int start, int rows) {
		List<GamesModel> list = new ArrayList<>();
		Connection conn = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		try {
			conn = JDBCDruidHelper.getConnection();
			ps = conn.prepareStatement(SelectGamesByRecPlat);
			ps.setInt(1, recType);
			ps.setInt(2, platform);
			ps.setInt(3, start);
			ps.setInt(4, rows);
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

	@Override
	public String selectGameTypeByTid(int tid) {
		Connection conn = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		String typeName = "";
		try {
			conn = JDBCDruidHelper.getConnection();
			ps = conn.prepareStatement(SelectGameTypeByTid);
			ps.setInt(1, tid);
			rs = ps.executeQuery();
			if (rs.next()) {
				typeName = rs.getString("typeName");
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			JDBCDruidHelper.close(conn, ps, rs);
		}
		return typeName;
	}
}
