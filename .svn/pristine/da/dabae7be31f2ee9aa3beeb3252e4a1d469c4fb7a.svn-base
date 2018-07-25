package com.javasm.subway.games.action;

import java.io.IOException;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.javasm.subway.games.model.GamesModel;
import com.javasm.subway.games.service.IGamesService;
import com.javasm.subway.games.service.Impl.GamesServiceImpl;

@WebServlet("/games/update")
public class GamesUpdateServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	IGamesService gamesService = new GamesServiceImpl();

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		updateGames(request, response);
		request.getRequestDispatcher("/WEB-INF/jsp/games/games_list.jsp").forward(request,response);
	}

	private void updateGames(HttpServletRequest request, HttpServletResponse response) {
		GamesModel games = new GamesModel();
		Date now = new Date();
		games.setGid(Integer.valueOf(request.getParameter("game_gid")));
		games.setName(request.getParameter("game_name"));
		games.setTitle(request.getParameter("game_title"));
		games.setSize(Double.valueOf(request.getParameter("game_size")));
		games.setGameIcon(request.getParameter("game_gameIcon"));
		games.setPictures(request.getParameter("game_pictures"));
		games.setIosUrl(request.getParameter("game_iosUrl"));
		games.setAndroidUrl(request.getParameter("game_androidUrl"));
		games.setRecType(Integer.valueOf(request.getParameter("game_recType")));
		games.setStatus(Integer.valueOf(request.getParameter("game_status")));
		games.setTid(Integer.valueOf(request.getParameter("game_tid")));
		games.setPlatform(Integer.valueOf(request.getParameter("game_platform")));
		games.setUtime(now);
		games.setDes(request.getParameter("game_des"));
		games.setDownloadCount(Integer.valueOf(request.getParameter("game_downloadCount")));
		gamesService.updateGames(games);		
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
