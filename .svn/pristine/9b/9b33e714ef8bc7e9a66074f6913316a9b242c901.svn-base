package com.javasm.subway.games.action;

import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.alibaba.fastjson.JSON;
import com.javasm.subway.games.model.GamesModel;
import com.javasm.subway.games.service.IGamesService;
import com.javasm.subway.games.service.Impl.GamesServiceImpl;

/**
 * 游戏详情页接口
 */
@WebServlet("/games/select")
public class GamesSelect extends HttpServlet {
	private static final long serialVersionUID = 1L;
	static IGamesService gamesService = new GamesServiceImpl();
	
	static int count;
	static {
		count = gamesService.selectGamesCount();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String page = "";
		if (request.getParameter("page") != null) page = request.getParameter("page");
		switch (page) {
		case "type":
			List<GamesModel> games = new ArrayList<>();
			Map<String, Object> result = new HashMap<>();
			int start = 0;
			int rows = 1;
			if (request.getParameter("start") != null) start = Integer.valueOf(request.getParameter("start"));
			if (request.getParameter("rows") != null) rows = Integer.valueOf(request.getParameter("rows"));
			if (start > count) {
				result.put("code", 202);
				result.put("message", "start超出范围");
				result.put("nextPageStatus", false);
				result.put("data", "");
			} else if (start + rows < count - 1) {
				games = gamesService.selectGamesList(start, rows);
				result.put("code", 200);
				result.put("message", "操作成功");
				result.put("nextPageStatus", true);
				result.put("data", games);
			} else {
				games = gamesService.selectGamesList(start, rows);
				result.put("code", 200);
				result.put("message", "操作成功");
				result.put("nextPageStatus", false);
				result.put("data", games);
			}
			String jsonstr2 = JSON.toJSONString(result);
			response.getWriter().write(jsonstr2);
			break;
		default:
			int gid = Integer.valueOf(request.getParameter("gid"));
			GamesModel game = gamesService.selectGamesByGid(gid);
			Map<String, Object> map = new HashMap<>();
			if (game != null) {
				if (game.getStatus() == 1) {
					int downloadCount = game.getDownloadCount();
					game.setDownloadCount(++downloadCount);
					gamesService.updateGames(game);
					map.put("code", 200);
					map.put("message", "操作成功");
					map.put("data", game);
				} else {
					map.put("code", 201);
					map.put("message", "游戏已下线");
					map.put("data", "");
				}
				
			} else {
				map.put("code", 404);
				map.put("message", "gid编号错误");
				map.put("data", "");
			}
			String jsonstr = JSON.toJSONString(map);
			response.getWriter().write(jsonstr);
		}
				
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
