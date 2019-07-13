package com.fh.controller.bailing;

import java.awt.Font;
import java.io.File;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.fh.dao.bailing.Pinyin;
import com.fh.dao.bailing.chart;


/**
 * 呼吸系统设定系统时间
 */
@WebServlet("/surface")
public class surface extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		try {
			request.setCharacterEncoding("utf-8");
			String Words =  request.getParameter("han");
			System.out.println(Words);
			String py = Pinyin.getPingYin(Words);
			File f = new File(request.getSession().getServletContext().getRealPath(""));
			String s = f.getParentFile().getParentFile().getParentFile().getParentFile().getParentFile().getParentFile().toString();
			String ss = s+"\\FH-WEB\\WebRoot\\static\\textPicture\\" + Words + ".png";
			System.out.println(ss);
			chart c = new chart(Words+"(" + py + ")",ss);
			Thread.sleep(5000);
			request.setAttribute("name",Words + ".png"); 
			request.getRequestDispatcher("/jsp/fayinlianxijiemianshengmubiao.jsp").forward(request,response); 
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

}
