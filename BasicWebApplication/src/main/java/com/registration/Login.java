package com.registration;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;


import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class Login
 */
@WebServlet("/login")
public class Login extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String uname= request.getParameter("name");
		String upwd= request.getParameter("pass");
		HttpSession session=request.getSession();
		RequestDispatcher dispatcher=null;

		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con= DriverManager.getConnection("jdbc:mysql://localhost:3306/simpledb?", "root", "123456"); 
			PreparedStatement pts= con.prepareStatement("select *from users where username=? and password= ?");
			pts.setString(1,uname);
			pts.setString(2,upwd);
			
			ResultSet rs=pts.executeQuery();
			if(rs.next()) {
				session.setAttribute("name",rs.getString("username"));
				session.setAttribute("orderSQL","select *from issue left join edit_issue on issue.id=edit_issue.id_fk order by id asc;");
				dispatcher=request.getRequestDispatcher("index.jsp");
			}else {
				request.setAttribute("status","failed");
				dispatcher=request.getRequestDispatcher("login.jsp");
			}
			dispatcher.forward(request, response);
		}catch (Exception e) {
		e.printStackTrace();
	}
	}
}