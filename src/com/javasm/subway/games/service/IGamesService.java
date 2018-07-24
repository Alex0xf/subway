package com.javasm.subway.games.service;

import java.util.List;

import com.javasm.subway.games.model.GamesModel;

public interface IGamesService {

	List<GamesModel> selectGamesList(Integer pageNum, Integer pageSize);
	List<GamesModel> selectGamesList(String pageNum, String pageSize);
}
