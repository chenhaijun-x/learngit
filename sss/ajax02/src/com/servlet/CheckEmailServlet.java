package com.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
@WebServlet("/checkEmail")
public class CheckEmailServlet extends HttpServlet {

	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		 resp.setContentType("text/plain;charset=UTF-8");
		 PrintWriter out=resp.getWriter();
		 String email=req.getParameter("email");
		 System.out.println("------------>"+email);
		 if(null!=email&&email.equals("admin@qq.com"))
		 {
			out.print(1); 
		 }else
		 {
			 out.print(0); 
		 }
		 out.close();
	}

}
