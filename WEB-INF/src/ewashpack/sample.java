package ewashpack;

import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;
import java.util.*;
import java.sql.*;

public class sample extends HttpServlet {
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

 Class.forName("com.mysql.jdbc.Driver");      
		 // Open a connection
        Connection conn = DriverManager.getConnection(DB_URL,USER,PASS);
        // Execute SQL query
          
		 PreparedStatement pst1 = conn.prepareStatement("SELECT rfid FROM booking WHERE status = ?"); 
         pst1.setInt(1,1);         
         ResultSet rs1 = pst1.executeQuery(); 
         while(rs1.next()){  
		          
				 String serviced_user = rs1.getString("rfid");
				 
				 PreparedStatement pst2 = conn.prepareStatement("SELECT balance FROM accounts WHERE rfid = ?");
				 pst2.setString(1,serviced_user); 
				 
				 ResultSet rs2 = pst2.executeQuery();
				 while(rs2.next()){ 
				 String balance = rs2.getString("balance");
				 int balance_to_cut = Integer.parseInt(balance);
				 balance_to_cut = balance_to_cut-1;
				 String balance2 = String.valueOf(balance_to_cut);
				 
				 PreparedStatement pst3 = conn.prepareStatement("UPDATE accounts SET balance=? WHERE rfid=?");
				 pst3.setString(1,balance2);
                 pst3.setString(2,serviced_user);
				 pst3.executeUpdate();
				 
				 pst3.close();
				 }
				
				 
				PreparedStatement pst4 = conn.prepareStatement("DELETE FROM booking WHERE status=?"); 
				pst4.setInt(1,1);
				pst4.executeUpdate();
				
				rs2.close();
				pst2.close();
				
				pst4.close();
				
              }  
			  
			  rs1.close();
              pst1.close();
              conn.close();
			  }
			  
			   catch(Exception e)
        {
          out.println(e); 
                
        }



out.close(); 
}
}

