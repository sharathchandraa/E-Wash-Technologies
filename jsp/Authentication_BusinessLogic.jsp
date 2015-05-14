package ewashpack;

import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;
import java.util.*;
import java.sql.*;

public class dbasepusher extends HttpServlet {
public void doPost(HttpServletRequest request, HttpServletResponse response)
throws IOException, ServletException {

String JDBC_DRIVER="com.mysql.jdbc.Driver";  
String DB_URL="jdbc:mysql://localhost/TestDB";
String USER = "root";
String PASS = "genesis";
HttpSession session = request.getSession();
String username = request.getParameter("Username");            //Getting parameter of username dynamically from user
String password = request.getParameter("Password");            //Getting parameter of username dynamically from user
response.setContentType("text/html");
PrintWriter out = response.getWriter();
try{
        // Register JDBC driver
         Class.forName("com.mysql.jdbc.Driver");      
		 // Open a connection
        Connection conn = DriverManager.getConnection(DB_URL,USER,PASS);
		
            String mail_id;
        // Execute SQL query

		 PreparedStatement pst = conn.prepareStatement("SELECT mail_id FROM Customer_Login WHERE Username = ? AND Password = ?"); 
         pst.setInt(1,username);  
         pst.setString(2,password);        
         int i = pst.executeUpdate();  
         if(i!=0){  
		         String E-Mail = rs.getString("email"); 
         		 response.sendRedirect("http://localhost:8080/ewash/jsp/MyAccount.jsp");
				 session.setAttribute("email",E-Mail);
              }  
      else{  
         out.println(""Sorry! We do not have your details. Please try logging in again.");  
         }  
	  
	   conn.close();
    }  
         
         
 catch(Exception e)
        {
          out.println(e); 
          out.println(e);       
        }


out.close(); 
}
}
