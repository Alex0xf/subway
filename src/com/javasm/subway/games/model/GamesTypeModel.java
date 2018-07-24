package com.javasm.subway.games.model;

import java.sql.ResultSet;
import java.sql.SQLException;

/**
 * 
 * ClassName: GamesType 
 * @Description: 游戏类型模型对应表pn_game_type
 * @author LiJi
 * @date 2018年7月20日
 */
public class GamesTypeModel {
	
	private int tid;			// 游戏类型ID
	private String typeName; 	// 类型名称
	
	public GamesTypeModel() {
		super();
	}
	
	public GamesTypeModel(ResultSet rs) {
		super();
		try {
			this.tid = rs.getInt("tid");
			this.typeName = rs.getString("typeName");
		} catch (SQLException e) {
			e.printStackTrace();
		}		
	}
	
	public GamesTypeModel(int tid, String typeName) {
		super();
		this.tid = tid;
		this.typeName = typeName;
	}
	
	public int getTid() {
		return tid;
	}
	public void setTid(int tid) {
		this.tid = tid;
	}
	public String getTypeName() {
		return typeName;
	}
	public void setTypeName(String typeName) {
		this.typeName = typeName;
	}
}
