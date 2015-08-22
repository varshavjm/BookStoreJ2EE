package org.bookstore;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class connect {

	public Connection con = null;
public connect()
	{
		
		final String DB_DRIVER_CLASS="oracle.jdbc.driver.OracleDriver" ;
		final String DB_URL="jdbc:oracle:thin:@localhost:1521:xe";
		

			try
			{
				
				Class.forName(DB_DRIVER_CLASS);
			}
			catch(ClassNotFoundException e)
			{
				e.printStackTrace();
				
			}
			
			
			
				
				try {
					con=DriverManager.getConnection(DB_URL,"varsha","varsha");
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
				
		if(con!=null)
		{
		System.out.println("connection suceedded");

		
	}

	}

}
