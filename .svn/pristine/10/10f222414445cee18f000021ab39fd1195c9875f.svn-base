package com.javasm.subway.games.action;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.javasm.subway.games.service.IGamesService;
import com.javasm.subway.games.service.Impl.GamesServiceImpl;

@WebServlet("/games/delete")
public class GamesDeleteServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	IGamesService gamesService = new GamesServiceImpl();
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int gid = Integer.valueOf(request.getParameter("gid"));
		gamesService.delGames(gid);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
