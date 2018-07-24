package com.javasm.subway.games.service.Impl;

import java.util.List;

import com.javasm.subway.games.dao.IGamesTypeDAO;
import com.javasm.subway.games.dao.impl.GamesTypeDAOImpl;
import com.javasm.subway.games.model.GamesTypeModel;
import com.javasm.subway.games.service.IGamesTypeService;

/**
 * 
 * ClassName: GamesTypeServiceImpl 
 * @Description: 实现IGamesTypeService接口
 * @author LiJi
 * @date 2018年7月20日
 */
public class GamesTypeServiceImpl implements IGamesTypeService{

	IGamesTypeDAO gamesTypeDao = new GamesTypeDAOImpl();
	@Override
	// 从表pn_game_type查询所有的GameType
	public List<GamesTypeModel> selectGamesTypeList() {
		List<GamesTypeModel> list = gamesTypeDao.selectGamesTypeList();
		return list;
	}

}
