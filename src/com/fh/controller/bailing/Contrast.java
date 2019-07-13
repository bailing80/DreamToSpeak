package com.fh.controller.bailing;

import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.ServletOutputStream;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.fh.dao.bailing.Pinyin;
import com.fh.dao.bailing.Similarity;
import com.fh.dao.bailing.Voice;
import com.fh.dao.bailing.chart;

/**
 * 呼吸系统设定系统时间
 */
@WebServlet("/Contrast")
public class Contrast extends HttpServlet {

	private static final long serialVersionUID = 1L;
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("进入了contrast");
		String ss="";
		try {
			/*Thread.sleep(8000);*/
		request.setCharacterEncoding("utf-8");
		String  yuan=request.getParameter("yuan");
		System.out.println("yuan++++++++"+yuan);
		String vlaue=(String)this.getServletContext().getAttribute("data");
		System.out.println("vlaue++++++++"+vlaue);
		if(vlaue=="") {
			response.setHeader("Content-type", "text/html;charset=UTF-8");
			 PrintWriter prin = response.getWriter();
			 prin.print("未识别出来");
		}else {
		/*yuan = yuan.substring(yuan.lastIndexOf("/")+1, yuan.length()-4);*/
		String shuo = vlaue.substring(vlaue.lastIndexOf("\\")+1, vlaue.length()-0);
		String shuo1 = shuo.split("。")[0];
		System.out.println(yuan + "--" + shuo);
		Voice v = new Voice();
		String sssss =  shuo;
		yuan = Pinyin.getPingYin(yuan);
		shuo = Pinyin.getPingYin(shuo1);
		System.out.println(yuan + "-----" + shuo);
		Float du = Similarity.getSimilarityRatio(yuan, shuo);
		v.setContrast(du*10+"%");
		File f = new File(request.getSession().getServletContext().getRealPath(""));
		String s = "D:\\导出代码\\好的项目";
		ss+= s+"\\FH-WEB\\WebRoot\\static\\textPicture\\" + du*100+"%" + ".png";
		System.out.println(ss);
		chart c = new chart(du*100+"%",ss);
		response.setHeader("Content-type", "text/html;charset=UTF-8");
		 PrintWriter prin = response.getWriter();
		 System.out.println(sssss + "@" + du*100+"%.png");
		prin.print(sssss + "@" + du*100+"%.png");
		}
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			/*request.setAttribute("key", ss);
			request.getRequestDispatcher("/fayinlianxijiemianshengmubiao.jsp").forward(request, response);*/
	}
	}
}