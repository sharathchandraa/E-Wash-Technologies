package ewashpack;

import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;
import java.util.*;
import java.sql.*;

public class userchecker extends HttpServlet {
public void doPost(HttpServletRequest request, HttpServletResponse response)
throws IOException, ServletException {
String JDBC_DRIVER="com.mysql.jdbc.Driver";  
String DB_URL="jdbc:mysql://localhost/testDB";
String USER = "root";
String PASS = "genesis";
response.setContentType("text/html");
PrintWriter out = response.getWriter();
HttpSession session = request.getSession(true);

String lname= (String) request.getParameter("lastname"); 
String firstname=request.getParameter("firstname"); 
String email=request.getParameter("email"); 
String mobilenumber=request.getParameter("mobilenumber"); 
String profilename=request.getParameter("profilename"); 
String profilepassword1=request.getParameter("profilepassword1"); 			

try{
        // Register JDBC driver
         Class.forName("com.mysql.jdbc.Driver");      
		 // Open a connection
        Connection conn = DriverManager.getConnection(DB_URL,USER,PASS);
		
		 PreparedStatement pst = conn.prepareStatement("SELECT rfid FROM issuedrfids WHERE lastname = ?"); 
          
         pst.setString(1,lname);        
         ResultSet rs = pst.executeQuery();  
         if(rs.next()){ 
             
            session.setAttribute("lastname",lname); 
            session.setAttribute("firstname",firstname); 
			session.setAttribute("email",email); 
			session.setAttribute("mobilenumber",mobilenumber);
            session.setAttribute("profilename",profilename);
            session.setAttribute("profilepassword1",profilepassword1);  
		 
            String drfid = rs.getString("rfid");
			session.setAttribute("rfid", drfid);
			
			out.print(drfid);
			RequestDispatcher rd=request.getRequestDispatcher("input_evaluate.jsp");  
            rd.forward(request, response);
              }  
      else{  
		RequestDispatcher rd=request.getRequestDispatcher("invaliduser.jsp");  
            rd.forward(request, response);  
         }  
         
		rs.close();
        conn.close();
		out.close();  
		}
		catch(SQLException se){
         //Handle errors for JDBC
         se.printStackTrace();
      }catch(Exception e){
         //Handle errors for Class.forName
         e.printStackTrace();
      }
	  


		}
		
		
		

}
		
		

		