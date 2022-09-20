package com.registration;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class orderServlet
 */
@WebServlet("/orderServlet")
public class orderServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public orderServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		int choise= Integer.valueOf(request.getParameter("selectholder"));
		response.sendRedirect(request.getContextPath() + "/index.jsp");
		HttpSession session=request.getSession();
		System.out.println(choise);
		
		switch(choise) {
			case 1:
				if(session.getAttribute("orderSQL")=="select *from issue left join edit_issue on issue.id=edit_issue.id_fk order by id desc;") {
					session.setAttribute("orderSQL","select *from issue left join edit_issue on issue.id=edit_issue.id_fk order by id asc;");
					
				}else{
					session.setAttribute("orderSQL","select *from issue left join edit_issue on issue.id=edit_issue.id_fk order by id desc;");
					
				}
				break;
			case 2:
				if(session.getAttribute("orderSQL")=="select *from issue left join edit_issue on issue.id=edit_issue.id_fk order by title desc;") {
					session.setAttribute("orderSQL","select *from issue left join edit_issue on issue.id=edit_issue.id_fk order by title asc;");
				}else{
					session.setAttribute("orderSQL","select *from issue left join edit_issue on issue.id=edit_issue.id_fk order by title desc;");
				}
				break;
			case 3:
				if(session.getAttribute("orderSQL")=="select *from issue left join edit_issue on issue.id=edit_issue.id_fk order by status desc;") {
					session.setAttribute("orderSQL","select *from issue left join edit_issue on issue.id=edit_issue.id_fk order by status asc;");
				}else{
					session.setAttribute("orderSQL","select *from issue left join edit_issue on issue.id=edit_issue.id_fk order by status desc;");
				}
				break;
			case 4:
				if(session.getAttribute("orderSQL")=="select *from issue left join edit_issue on issue.id=edit_issue.id_fk order by type desc;") {
					session.setAttribute("orderSQL","select *from issue left join edit_issue on issue.id=edit_issue.id_fk order by type asc;");
				}else{
					session.setAttribute("orderSQL","select *from issue left join edit_issue on issue.id=edit_issue.id_fk order by type desc;");
				}
				break;	
			case 5:
				if(session.getAttribute("orderSQL")=="select *from issue left join edit_issue on issue.id=edit_issue.id_fk order by description desc;") {
					session.setAttribute("orderSQL","select *from issue left join edit_issue on issue.id=edit_issue.id_fk order by description asc;");
				}else{
					session.setAttribute("orderSQL","select *from issue left join edit_issue on issue.id=edit_issue.id_fk order by description desc;");
				}
				break;	
			case 6:
				if(session.getAttribute("orderSQL")=="select *from issue left join edit_issue on issue.id=edit_issue.id_fk order by assigned_to desc;") {
					session.setAttribute("orderSQL","select *from issue left join edit_issue on issue.id=edit_issue.id_fk order by assigned_to asc;");
				}else{
					session.setAttribute("orderSQL","select *from issue left join edit_issue on issue.id=edit_issue.id_fk order by assigned_to desc;");
				}
				break;
			case 7:
				if(session.getAttribute("orderSQL")=="select *from issue left join edit_issue on issue.id=edit_issue.id_fk order by creation_date desc;") {
					session.setAttribute("orderSQL","select *from issue left join edit_issue on issue.id=edit_issue.id_fk order by creation_date asc;");
				}else{
					session.setAttribute("orderSQL","select *from issue left join edit_issue on issue.id=edit_issue.id_fk order by creation_date desc;");
				}
				break;
			case 8:
				if(session.getAttribute("orderSQL")=="select *from issue left join edit_issue on issue.id=edit_issue.id_fk order by username desc;") {
					session.setAttribute("orderSQL","select *from issue left join edit_issue on issue.id=edit_issue.id_fk order by username asc;");
				}else{
					session.setAttribute("orderSQL","select *from issue left join edit_issue on issue.id=edit_issue.id_fk order by username desc;");
				}
				break;
			case 9:
				if(session.getAttribute("orderSQL")=="select *from issue left join edit_issue on issue.id=edit_issue.id_fk order by username_fk desc;") {
					session.setAttribute("orderSQL","select *from issue left join edit_issue on issue.id=edit_issue.id_fk order by username_fk asc;");
				}else{
					session.setAttribute("orderSQL","select *from issue left join edit_issue on issue.id=edit_issue.id_fk order by username_fk desc;");
				}
				break;	
			case 10:
				if(session.getAttribute("orderSQL")=="select *from issue left join edit_issue on issue.id=edit_issue.id_fk order by edited_date desc;") {
					session.setAttribute("orderSQL","select *from issue left join edit_issue on issue.id=edit_issue.id_fk order by edited_date asc;");
				}else{
					session.setAttribute("orderSQL","select *from issue left join edit_issue on issue.id=edit_issue.id_fk order by edited_date desc;");
				}
				break;
		
		
		
		
		
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
