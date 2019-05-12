package priv.huidong.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import priv.huidong.entity.Login;
import priv.huidong.service.impl.LoginService;

public class AccountCheck extends HttpServlet {


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		//处理登陆
		request.setCharacterEncoding("utf-8");
		String name = request.getParameter("uname");
		String pwd = request.getParameter("upwd");
		
		Login login = new Login(name,pwd);//用户名密码
		//调用模型层的登录功能
		LoginService service = new LoginService();
		int result =service.accountCheck(login);
		
		if(result >0) {
			response.sendRedirect("QueryStudentByPage");
			//System.out.println("登录成功！");
		}else{
			//System.out.println("登录失败！");
			request.setAttribute("message", "账号或密码错误！");
			request.getRequestDispatcher("login.jsp").forward(request, response);
		}
		
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
