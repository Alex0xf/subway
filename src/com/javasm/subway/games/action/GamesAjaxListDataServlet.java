package com.javasm.subway.games.action;

import java.io.IOException;
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
 * 
 * ClassName: GamesAjaxListDataServlet 
 * @Description: 
 * @author LiJi
 * @date 2018年7月20日
 */
@WebServlet("/games/ajax_list")
public class GamesAjaxListDataServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	IGamesService gamesService = new GamesServiceImpl();
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// servlet 返回json数据
		String pageNum = request.getParameter("pageNum");
		String pageSize = request.getParameter("pageSize");
		// 查询
		List<GamesModel> list = gamesService.selectGamesList(pageNum, pageSize);
		Map<String,Object> map = new HashMap<>();
		// 结果转换成json
		map.put("DATA_LIST","");
		if (list != null) {
			map.put("DATA_LIST", list);
		}
		String jsonstr = JSON.toJSONString(map);
		response.getWriter().write(jsonstr);
	}
		
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
