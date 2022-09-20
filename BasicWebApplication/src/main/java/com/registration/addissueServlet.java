package com.registration;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class RegistrationServlet
 */
@WebServlet("/addissues")
public class addissueServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String id=request.getParameter("id");
		String utitle=request.getParameter("title");
		String ustatus=request.getParameter("status");
		String utype=request.getParameter("type");
		String udes=request.getParameter("description");
		String uass=request.getParameter("assign");
		String udate=request.getParameter("date");
		String umaker=request.getParameter("usermaker");
		String ueditdate=request.getParameter("editdate");
		String edituser=request.getParameter("edituser");
		
		RequestDispatcher dispatcher = null;
		Connection con=null;
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			con=DriverManager.getConnection("jdbc:mysql://localhost:3306/simpledb?allowMultiQueries=true", "root", "123456");
			PreparedStatement pts =con.prepareStatement("insert into issue (id, title, status, type, description, assigned_to, creation_date, username) values(?,?,?,?,?,?,?,?); insert into edit_issue (id_fk,username_fk, edited_date) values(?,?,?); ");
			pts.setString(1, id);
			pts.setString(2, utitle);
			pts.setString(3, ustatus);
			pts.setString(4, utype);
			pts.setString(5, udes);
			pts.setString(6, uass);
			pts.setString(7, udate);
			pts.setString(8, umaker);
			pts.setString(9, id);
			pts.setString(10, edituser);
			pts.setString(11, ueditdate);
			int rowCount=pts.executeUpdate();
			dispatcher=request.getRequestDispatcher("index.jsp");
			if(rowCount >0) {
				request.setAttribute("status", "success");
			}else {
				request.setAttribute("status", "failed");
			}
			dispatcher.forward(request,response);
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			try {
				con.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
	}


}

