package com.fh.controller.bailing;

import java.io.File;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.fh.dao.bailing.chart;


/**
 * 
 */
@WebServlet("/Consonant")
public class Consonant extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		try {
			request.setCharacterEncoding("utf-8");
			String Words =  request.getParameter("sheng");
			System.out.println("目标字符是"+Words);
			File f = new File(request.getSession().getServletContext().getRealPath(""));
			/*System.err.println("f"+f);*/
			//String s = f.getParentFile().getParentFile().getParentFile().getParentFile().getParentFile().getParentFile().toString();
			String s = f.getParentFile().toString();
			/*System.err.println("s"+s);*/
			/*String ss = s+"\\DreamToSpeak\\static\\picture\\shengmubiao\\" + Words + ".png";*/
			String ss = s+"\\FH-WEB\\static\\textPicture\\" + Words + ".png";
			 
			System.out.println("ss"+ss);
			chart c = new chart(Words,ss);
			//Thread.sleep(5000);
			request.setAttribute("name",Words + ".png"); 
			request.getRequestDispatcher("/jsp/fayinlianxijiemianshengmubiao.jsp").forward(request,response); 
			
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}	
	}
}
