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
@WebServlet("/edit")
 public class editServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String id=request.getParameter("id");
		String utitle=request.getParameter("title");
		String ustatus=request.getParameter("status");
		String utype=request.getParameter("type");
		String udes=request.getParameter("description");
		String uass=request.getParameter("assign");
		String ueditdate=request.getParameter("editdate");
		String edituser=request.getParameter("edituser");
		String umaker=request.getParameter("usermaker");
		
		RequestDispatcher dispatcher = null;
		
		Connection con=null;
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			con=DriverManager.getConnection("jdbc:mysql://localhost:3306/simpledb?allowMultiQueries=true", "root", "123456");
			PreparedStatement pts =con.prepareStatement("update issue set title=? , status=? , type=? , description=? , assigned_to=? where id=? ; update edit_issue set  username_fk=? , edited_date=? where id_fk=? and username_fk=? ; ");
			pts.setString(1,utitle);
			pts.setString(2,ustatus);
			pts.setString(3,utype);
			pts.setString(4,udes);
			pts.setString(5,uass);
			pts.setString(6,id);
			pts.setString(7,edituser);
			pts.setString(8,ueditdate);
			pts.setString(9,id);
			pts.setString(10,umaker);
			
			
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