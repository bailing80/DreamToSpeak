package com.fh.controller.bailing;

import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.ServletOutputStream;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;
import org.springframework.web.bind.annotation.RequestMapping;

import com.fh.dao.bailing.Pinyin;
import com.fh.dao.bailing.Sample;
import com.fh.dao.bailing.chart;

/**
 * Servlet implementation class pronunciation
 */
@WebServlet("/pronunciation")
public class pronunciation extends HttpServlet {
	private static final long serialVersionUID = 1L;
    public pronunciation() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
       
		HttpSession hs = request.getSession();
		String userName = (String) hs.getAttribute("username");
		// 得到上传文件的保存目录，将上传的文件存放于WEB-INF目录下，不允许外界直接访问，保证上传文件的安全
		String savePath = "D:/pcm1";

		File file = new File(savePath);
		// 判断上传文件的保存目录是否存在
		if (!file.exists() && !file.isDirectory()) {
			System.out.println(savePath + "目录不存在，需要创建");
			// 创建目录
			file.mkdir();
		}
		// 消息提示
		String message = "";
		try {
			String filename = null;
			// 使用Apache文件上传组件处理文件上传步骤：
			// 1、创建一个DiskFileItemFactory工厂
			DiskFileItemFactory factory = new DiskFileItemFactory();
			// 2、创建一个文件上传解析器
			ServletFileUpload upload = new ServletFileUpload(factory);
			// 解决上传文件名的中文乱码
			upload.setHeaderEncoding("UTF-8");
			// 3、判断提交上来的数据是否是上传表单的数据
			if (!ServletFileUpload.isMultipartContent(request)) {
				// 按照传统方式获取数据
				return;
			}
			// 4、使用ServletFileUpload解析器解析上传数据，解析结果返回的是一个List<FileItem>集合，每一个FileItem对应一个Form表单的输入项
			List<FileItem> list = upload.parseRequest(request);

			// System.out.println(list.get(0));
			String[] value = new String[5];
			int i = 0;
			for (FileItem item : list) {
				// 如果fileitem中封装的是普通输入项的数据
				if (item.isFormField()) {
					// System.out.println("歌曲名"+item.getString("musicName")+"类别"+item.getString("musicType"));
					String name = item.getFieldName();
					// 解决普通输入项的数据的中文乱码问题
					value[i++] = item.getString("UTF-8");
					// value = new String(value.getBytes("iso8859-1"),"UTF-8");
					// System.out.println(name + "=" + value);
				} else {// 如果fileitem中封装的是上传文件
					// 得到上传的文件名称，

					filename = "test.wav";
					if (filename == null || filename.trim().equals("")) {
						continue;
					}
					// 注意：不同的浏览器提交的文件名是不一样的，有些浏览器提交上来的文件名是带有路径的，如：
					// c:\a\b\1.txt，而有些只是单纯的文件名，如：1.txt
					// 处理获取到的上传文件的文件名的路径部分，只保留文件名部分
					filename = filename.substring(filename.lastIndexOf("\\") + 1);
					// 获取item中的上传文件的输入流
					InputStream in = item.getInputStream();
					// 创建一个文件输出流
					FileOutputStream out = new FileOutputStream(savePath + "\\" + filename);
					// 创建一个缓冲区
					byte buffer[] = new byte[1024];
					// 判断输入流中的数据是否已经读完的标识
					int len = 0;
					// 循环将输入流读入到缓冲区当中，(len=in.read(buffer))>0就表示in里面还有数据
					while ((len = in.read(buffer)) > 0) {
						// 使用FileOutputStream输出流将缓冲区的数据写入到指定的目录(savePath + "\\"
						// + filename)当中
						out.write(buffer, 0, len);
					}
					System.err.println("ffmpeg出问题了");
			        Process p = Runtime.getRuntime().exec("ffmpeg -i D:\\pcm1\\test.wav -f s32le -ar 8000 -ac 1 -acodec pcm_s32le D:\\导出代码\\好的项目\\FH-WEB\\pcm\\pcss.pcm");
					// 关闭输出流
					out.close();
					// 删除处理文件上传时生成的临时文件
					item.delete();
					
				}
			}
			System.err.println("Sample出问题了");
			Sample s = new Sample();
			System.err.println("Sample出问题了");
			String shi = s.shibie();
			System.err.println(shi);
			if(shi=="") {
				System.err.println("进入了shi判断为空");
				this.getServletContext().setAttribute("data", "");
			}
			     
			else {
			System.out.println("shi+++++++++++++"+shi);
			String py = Pinyin.getPingYin(shi);
			File f = new File(request.getSession().getServletContext().getRealPath(""));
/*			String sss = f.getParentFile().getParentFile().getParentFile().getParentFile().getParentFile().getParentFile().toString();
 * 
*/			String sss = "D:\\导出代码\\好的项目";
			String ss = sss+"\\FH-WEB\\WebRoot\\static\\textPicture\\"+shi+".png";
			System.out.println(ss);
			chart c = new chart(shi+"(" + py + ")",ss);
			System.err.println(c);
			this.getServletContext().setAttribute("data", ss);
			}
		} catch (Exception e) {
			
			e.printStackTrace();
		}
	}
	
	
	
}
