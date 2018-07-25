package com.javasm.subway.games.action;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.javasm.subway.games.model.GamesModel;
import com.javasm.subway.games.service.IGamesService;
import com.javasm.subway.games.service.Impl.GamesServiceImpl;

@WebServlet("/games/manage")
public class GamesManageServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	IGamesService gamesService = new GamesServiceImpl();
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		if ("update".equals(request.getParameter("edit"))) {
			int gid = Integer.parseInt(request.getParameter("gid"));
			GamesModel games = gamesService.selectGamesByGid(gid);
			request.setAttribute("games", games);
			request.getRequestDispatcher("/WEB-INF/jsp/games/games_update.jsp").forward(request, response);
		} else {
			request.getRequestDispatcher("/WEB-INF/jsp/games/games_manage.jsp").forward(request,response);
		}			
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
