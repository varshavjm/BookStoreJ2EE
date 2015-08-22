package org.bookstore;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class savetodb
 */
@WebServlet("/savetodb")
public class savetodb extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public savetodb() {
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
	
	
	
	HttpSession session=request.getSession();
	
		String username=(String) session.getAttribute("username");
		String bookname=(String) session.getAttribute("bookname");
		String author=(String) session.getAttribute("author");
		String price=(String) session.getAttribute("price");
		

		
	PrintWriter w=response.getWriter();
	
	
				int r = 0;
		Date d=new Date();
		System.out.println(d);
		
		connect c=new connect();
		String str="insert into orders values('"+username+"','"+bookname+"','"+author+"',"+price+",SYSDATE)";
		Statement st = null;
		try {
			st = c.con.createStatement();
		} catch (SQLException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}
		try {
			 r=st.executeUpdate(str);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
			
	if(r>0)
	{
	w.println("<h1> Suceesful  </h1>");	
session.setAttribute(bookname, null);
session.setAttribute(author, null);
session.setAttribute(price, null);
response.sendRedirect("project.jsp");

	}
	else
		w.println("unsuccessful addition");
		try {
			c.con.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		}
	

	}





