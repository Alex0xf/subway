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

@WebServlet("/games/add")
public class GamesAddServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	IGamesService gamesService = new GamesServiceImpl();
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		addGames(request, response);
	}

	private void addGames(HttpServletRequest request, HttpServletResponse response) {
		try {
			GamesModel games = new GamesModel();
			Date now = new Date();
			games.setName(request.getParameter("game_name"));
			games.setTitle(request.getParameter("game_title"));
			String size = request.getParameter("game_size");
			if (size == null || "".equals(size.trim())) {
				size = "0.00";
			}
			games.setSize(Double.valueOf(size));
			games.setGameIcon(request.getParameter("game_gameIcon"));
			games.setPictures(request.getParameter("game_pictures"));
			games.setIosUrl(request.getParameter("game_iosUrl"));
			games.setAndroidUrl(request.getParameter("game_androidUrl"));
			games.setRecType(Integer.valueOf(request.getParameter("game_recType")));
			games.setStatus(Integer.valueOf(request.getParameter("game_status")));
			games.setTid(Integer.valueOf(request.getParameter("game_tid")));
			games.setPlatform(Integer.valueOf(request.getParameter("game_platform")));
			games.setCtime(now);
			games.setDes(request.getParameter("game_des"));
			gamesService.addGames(games);
			request.getRequestDispatcher("/WEB-INF/jsp/games/add_success.jsp").forward(request, response);
		} catch (NumberFormatException e) {
			e.printStackTrace();
		} catch (ServletException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
