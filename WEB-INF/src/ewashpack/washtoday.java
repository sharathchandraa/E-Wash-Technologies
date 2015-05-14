package ewashpack;

import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;
import java.util.*;
import java.sql.*;

public class washtoday extends HttpServlet {
public void doPost(HttpServletRequest request, HttpServletResponse response)
throws IOException, ServletException {
String JDBC_DRIVER="com.mysql.jdbc.Driver";  
String DB_URL="jdbc:mysql://localhost/TestDB";
String USER = "root";
String PASS = "genesis";
response.setContentType("text/html");
PrintWriter out = response.getWriter();

HttpSession session = request.getSession(true);


            String slot2 = (String) session.getAttribute("timeslots1"); 
            String rfid = (String) session.getAttribute("rfid");


try{

// Register JDBC driver
         Class.forName("com.mysql.jdbc.Driver");      
		 // Open a connection
        Connection conn = DriverManager.getConnection(DB_URL,USER,PASS);
        // Execute SQL query
          
		 PreparedStatement pst = conn.prepareStatement("INSERT INTO booking(rfid, slot, status) VALUES(?, ?, ?)"); 
		 
		 pst.setString(1,rfid);
		 pst.setString(2,slot2);
		 pst.setInt(3,1);
		 pst.executeUpdate(); 
		 
		 response.sendRedirect("http://localhost:8080/ewash/jsp/booked.jsp");
		 
		   conn.close();
    }  
	
	 catch(Exception e)
        {
          out.println(e); 
              
        }
		finally{
		session.removeAttribute("timeslots1"); 
		out.close(); 
		}
}
}

		 
		 
		 
		 
		 
		 
		 
		 
		 