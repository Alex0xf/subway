package com.javasm.subway.games.action;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.alibaba.fastjson.JSON;
import com.javasm.subway.games.model.GamesTypeModel;
import com.javasm.subway.games.service.IGamesTypeService;
import com.javasm.subway.games.service.Impl.GamesTypeServiceImpl;

/**
 * 
 * ClassName: GamesTypeJSONServlet 
 * @Description: 获取所有的游戏列表,返回一个JSON格式数据
 * @author LiJi
 * @date 2018年7月20日
 */
@WebServlet("/games/type/JSON")
public class GamesTypeJSONServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	IGamesTypeService gamesTypeService = new GamesTypeServiceImpl();
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		List<GamesTypeModel> list = gamesTypeService.selectGamesTypeList();
		String jsonstr = JSON.toJSONString(list);
		response.getWriter().write(jsonstr);
	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
