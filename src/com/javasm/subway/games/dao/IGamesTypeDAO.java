package com.javasm.subway.games.dao;

import java.util.List;

import com.javasm.subway.games.model.GamesTypeModel;

public interface IGamesTypeDAO {
	
	List<GamesTypeModel> selectGamesTypeList(); 
}
