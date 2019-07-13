package com.fh.controller.bailing;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * 呼吸系统设定系统时间
 */
@WebServlet("/Breathing_Training")
public class Breathing_Training extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		String time =  request.getParameter("time");
		String interval  =  request.getParameter("air");
		time = time.substring(0,time.indexOf("分钟"));
		String xi = interval.substring(interval.indexOf("吸") + 3,interval.indexOf("s"));
		String hu = interval.substring(interval.indexOf("呼") + 3,interval.lastIndexOf("s"));
		response.setCharacterEncoding("utf-8");
		request.setAttribute("time", time);
		request.setAttribute("xi", xi);
		request.setAttribute("hu", hu);
		 request.getRequestDispatcher("/tzet/huxilianxixitonglianxijiemian.jsp").forward(request,response); 
		

		
	}

}
