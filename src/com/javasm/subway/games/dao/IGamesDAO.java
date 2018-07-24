package com.javasm.subway.games.dao;

import java.util.List;

import com.javasm.subway.games.model.GamesModel;

public interface IGamesDAO {
	
	List<GamesModel> selectGamesList(int index,int pagesize); 
}
