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
String lastname = (String) session.getAttribute("lastname");
String firstname=(String)session.getAttribute("firstname"); 
String email=(String)session.getAttribute("email"); 
String rfid = (String)session.getAttribute("rfid");
String mobilenumber=(String)session.getAttribute("mobilenumber"); 
String profilename=(String)session.getAttribute("profilename");
String creditcardrecharge=(String)session.getAttribute("creditcardrecharge"); 
String profilepassword1=(String)session.getAttribute("profilepassword1");
response.setContentType("text/html");

PrintWriter out = response.getWriter();
try{
        // Register JDBC driver
         Class.forName("com.mysql.jdbc.Driver");      
		 // Open a connection
        Connection conn = DriverManager.getConnection(DB_URL,USER,PASS);
        // Execute SQL query
          
		 PreparedStatement pst = conn.prepareStatement("INSERT INTO accounts(lastname, firstname, profilename, password, rfid, email, balance, contact) VALUES(?, ?, ?, ?, ?, ?, ?, ?)"); 
           
         pst.setString(1,lastname); 
         pst.setString(2,firstname);
         pst.setString(3,profilename);   
         pst.setString(4,profilepassword1);
		 pst.setString(5,rfid);
		 pst.setString(6,email);
		 pst.setString(7,creditcardrecharge);
		 pst.setString(8,mobilenumber);
 
         int i = pst.executeUpdate();  
         if(i!=0){  
         out.println("<br>Record has been inserted");  
		 response.sendRedirect("http://localhost:8080/ewash/jsp/login_page.jsp");
              }  
      else{  
         out.println("failed to insert the data");  
         }  
	  
	   conn.close();
    }  
         
         
 catch(Exception e)
        {
          out.println(e); 
               
        }
		finally{
		
	        session.removeAttribute("lastname");
            session.removeAttribute("firstname"); 
            session.removeAttribute("email"); 
			session.removeAttribute("rfid");
			session.removeAttribute("mobilenumber");
			session.removeAttribute("profilename");
			session.removeAttribute("creditcardrecharge");
			session.removeAttribute("profilepassword1");
	  
	  }

out.close(); 
}
}
