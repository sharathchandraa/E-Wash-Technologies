package ewashpack;

import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;
import java.util.*;
import java.sql.*;

public class logintester extends HttpServlet {
public void doPost(HttpServletRequest request, HttpServletResponse response)
throws IOException, ServletException {

String JDBC_DRIVER="com.mysql.jdbc.Driver";  
String DB_URL="jdbc:mysql://localhost/TestDB";
String USER = "root";
String PASS = "genesis";
HttpSession session = request.getSession();
String username = request.getParameter("username");            //Getting parameter of username dynamically from user
String password = request.getParameter("password");            //Getting parameter of username dynamically from user
response.setContentType("text/html");
PrintWriter out = response.getWriter();
try{
        // Register JDBC driver
         Class.forName("com.mysql.jdbc.Driver");      
		 // Open a connection
        Connection conn = DriverManager.getConnection(DB_URL,USER,PASS);
		
            String mail_id;
        // Execute SQL query

		 PreparedStatement pst = conn.prepareStatement("SELECT * FROM accounts WHERE profilename = ? AND password = ?"); 
         pst.setString(1,username);  
         pst.setString(2,password);        
         ResultSet rs = pst.executeQuery(); 
         if(rs.next()){  
		         
				 
				 String lastname = rs.getString("lastname");
                 String firstname=rs.getString("firstname"); 
                 String email=rs.getString("email"); 
                 String rfid = rs.getString("rfid");
                 String mobilenumber=rs.getString("contact"); 
                 String profilename=rs.getString("profilename");
                 String creditcardrecharge=rs.getString("balance"); 
                 
				 session.setAttribute("email",email); 
				 session.setAttribute("lastname",lastname);
				 session.setAttribute("firstname",firstname);
				 session.setAttribute("email",email);
				 session.setAttribute("rfid",rfid);
				 session.setAttribute("mobilenumber",mobilenumber);
				 session.setAttribute("profilename",profilename);
				 session.setAttribute("creditcardrecharge",creditcardrecharge);
				 
         		 response.sendRedirect("http://localhost:8080/ewash/jsp/myaccount_page.jsp");
				 
              }  
      else{  
         out.println("Sorry! We do not have your details. Please try logging in again.");  
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
