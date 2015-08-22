package org.bookstore;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class searchbk
 */
@WebServlet("/searchbk")
public class searchbk extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public searchbk() {
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
	
	
	
		ResultSet rs=null;
		PrintWriter w=response.getWriter();
		int err=0;
		
		String bookname=request.getParameter("search");
		
		connect c=new connect();
		HttpSession session= request.getSession();
		
		String str="select * from books";
		//String str="select * from login";
		System.out.println(str);
		Statement st = null;
		try {
			st = c.con.createStatement();
		} catch (SQLException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}
		try {
			 rs=st.executeQuery(str);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	String s1,s2,link;
		int flag=0;
	try {
		while(rs.next())
		{
			s1=rs.getString(1);
		s2=rs.getString(2);
		
			if(s1.contains(bookname))
			{
				//System.out.println(s1+s2);
			flag=1;
				response.sendRedirect(s2);
			
			}
			
			
		
		}
		if(flag==0)
			w.println("<h1>BOOK NOT FOUND... HIT BKSPC</h1>");
		
	} catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
	
	}
}
