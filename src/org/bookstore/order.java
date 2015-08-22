package org.bookstore;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class order
 */
@WebServlet("/order")
public class order extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public order() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String bookname=request.getParameter("bookname");
		String author=request.getParameter("author");
		String price=request.getParameter("price");
		PrintWriter w=response.getWriter();
		HttpSession session=request.getSession();
		String str=(String) session.getAttribute("username");
		session.setAttribute("bookname", bookname);
		session.setAttribute("author", author);
		session.setAttribute("price", price);
		if(str==null)
		{
		response.sendRedirect("login.jsp");	
		
		}
		else
			response.sendRedirect("confirmorder.jsp");
		
	}

}
