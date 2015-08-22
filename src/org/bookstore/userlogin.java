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
 * Servlet implementation class userlogin
 */
@WebServlet("/userlogin")
public class userlogin extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public userlogin() {
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
	
		ResultSet rs=null;
		PrintWriter w=response.getWriter();
		int err=0;
		String uname;
		String username=request.getParameter("username");
		String password=request.getParameter("password");
		
		connect c=new connect();
		HttpSession session= request.getSession();
		
		String str="select password from details where username='"+username+"'";
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
		
		System.out.println("inside");
		if(rs.equals(null))
		{
			System.out.println("null ahe re");		
		}
		else
		{
			System.out.print("null nae");		
				
		}
		System.out.println("faltupana");	
	try {
		
		if(rs.next())
		{
			System.out.println("inside rs.next");
	if(rs.getString(1).matches(password))
		{
			System.out.println("inside match"+rs.getString(1));
			w.println("yoo man !!! login successful!!!");
			session.setAttribute("username", username);
			if(session.getAttribute("bookname")!=null){
				response.sendRedirect("confirmorder.jsp");
			}
			else
			response.sendRedirect("welcome.jsp");
		}
		else
		{
			err=1;
			uname=username;
			w.println("Password dont match");
		response.sendRedirect("login.jsp?err=1&uname="+username);
		
		}
		
		
		}
		else
		{
			err=1;
			uname=username;
			w.println("Username not match");
		response.sendRedirect("login.jsp?err=1&uname="+username);
		}
		
	} catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
		
	try {
		c.con.close();
	} catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}	// TODO Auto-generated method stub
	
	System.out.println("baher ale");	
	}
	

}
