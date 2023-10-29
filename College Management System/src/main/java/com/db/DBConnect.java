package com.db;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DBConnect {
private static Connection conn;
	
	
	public static Connection getConn()
	{
		try
		{
		    
		        Class.forName("oracle.jdbc.driver.OracleDriver");
			     conn=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","1234");
		    
		
		
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return conn;
	}
}
