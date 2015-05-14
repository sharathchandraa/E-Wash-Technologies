<%@ page import="java.sql.*, javax.sql.*,java.util.*,java.io.*, javax.naming.*, javax.mail.*,javax.mail.internet.*,javax.activation.*,javax.servlet.http.*,javax.servlet.*" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<HTML>
    <HEAD>
        <TITLE>Payment Confirmation page</TITLE>                                          //create heading for datafile
			
		
    </HEAD>

    <BODY>
        <H1>updating Data into  Database</H1>

        <% 
            Connection connection = DataSource.getConnection(
                "java:comp/env/jdbc/MySQLDataSource", "PaymentConfirm");  //establish connection with MYSQL

            Statement statement = connection.createStatement();            //Creates a SQLServerStatement object for sending SQL statements to the database.

     		var dummy_mail = localstorage.getItem(mail_id);  //getting stored value from dummy data
			// function to update the confirmation field in the Payment_Confirmation table and print the confirmation message
          function PaymentConfirmation() {
            ResultSet resultset = 
                statement.executeQuery("UPDATE Payment_Confirmation SET Confirmation = 1  WHERE Mail_id  ='"+ Dummy_mail"'"); //Check this once; update confirmation as 1 if mail id matches

               out.println("Your payment has been successful"); // Payment sucess message
            } 
			//Onclick of submit button call PaymentConfirmation function
			<input type = 'submit button' name = 'Release' onclick = 'PaymentConfirmation();' value = 'Click to release'>
		} 
       %>
    </BODY>
</HTML>