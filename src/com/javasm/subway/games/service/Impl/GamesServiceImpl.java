package com.javasm.subway.games.service.Impl;

import java.util.List;

import com.javasm.subway.games.dao.IGamesDAO;
import com.javasm.subway.games.dao.impl.GamesDAOImpl;
import com.javasm.subway.games.model.GamesModel;
import com.javasm.subway.games.service.IGamesService;
import com.javasm.subway.utills.PageUtil;

/**
 * 
 * ClassName: GamesServiceImpl 
 * @Description: 实现IGamesService接口
 * @author LiJi
 * @date 2018年7月20日
 */
public class GamesServiceImpl implements IGamesService{
	
	IGamesDAO gamesDao = new GamesDAOImpl();
	@Override
	// 根据页码和页面大小查找数据库
	public List<GamesModel> selectGamesList(Integer pageNum, Integer pageSize) {
		if (pageNum == null) {
			pageNum = 1;
			
		}
		if (pageSize == null) {
			pageSize = 5;
		}
		// servlet传进来的参数 当前第几页 每页多少条
		int index = PageUtil.getIndeByPageNum(pageNum, pageSize);
		// 调用dao查询数据
		List<GamesModel> list = gamesDao.selectGamesList(index, pageSize);
		return list;
	}

	@Override
	// 重载
	public List<GamesModel> selectGamesList(String pageNum, String pageSize) {
		if (pageNum == null || pageNum.isEmpty()) {
			pageNum = "1";			
		}
		if (pageSize == null || pageSize.isEmpty()) {
			pageSize = "5";
		}
		return selectGamesList(Integer.valueOf(pageNum), Integer.valueOf(pageSize));
	}

	@Override
	public void addGames(GamesModel games) {
		gamesDao.addGames(games);
	}

	@Override
	public void delGames(int gid) {
		gamesDao.delGames(gid);
	}

	@Override
	public void updateGames(GamesModel games) {
		gamesDao.updateGames(games);
	}

	@Override
	public GamesModel selectGamesByGid(int gid) {
		return gamesDao.selectGamesByGid(gid);
	}

	@Override
	public int selectGamesCount() {
		return gamesDao.selectGamesCount();
	}

	@Override
	public int GamesByRecType(int recType) {
		return gamesDao.GamesByRecType(recType);
	}

	@Override
	public List<GamesModel> selectGamesByRecPlat(int recType, int platform, int start, int rows) {
		return gamesDao.selectGamesByRecPlat(recType, platform, start, rows);
	}

	@Override
	public String selectGameTypeByTid(int tid) {
		return gamesDao.selectGameTypeByTid(tid);
	}

}
