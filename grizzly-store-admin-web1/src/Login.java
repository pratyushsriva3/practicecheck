import java.io.*;  
import javax.servlet.*;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;  
import java.sql.*;  

@WebServlet("/Login")
public class Login extends HttpServlet {  
	  static final String JDBC_DRIVER = "com.mysql.jdbc.Driver";  
	    static final String DB_URL = "jdbc:mysql://localhost/grizzy?useSSL=false";
	    
	    static final String USER = "root";
	    static final String PASS = "password-1";
      public void doPost(HttpServletRequest request, HttpServletResponse response)  
        throws ServletException, IOException {  
  
	
    response.setContentType("text/html");  
    PrintWriter out = response.getWriter();  
          
    String username1=request.getParameter("username");  
    String password1=request.getParameter("password");  
     
    Connection conn = null;
    Statement stmt = null; 
    
    try
    {
    	
    	Class.forName(JDBC_DRIVER);

        //STEP 3: Open a connection
        System.out.println("Connecting to database...");
        conn = DriverManager.getConnection(DB_URL,USER,PASS);

        //STEP 4: Execute a query
        System.out.println("Creating statement...");
        stmt = conn.createStatement();
        String sql;
        sql = "SELECT * FROM login_table1 WHERE Username ='"+ username1 + "';"  ;
        //System.out.println("Creating statement...");
        // out.println(sql);
        ResultSet rs = stmt.executeQuery(sql);
        //System.out.println("Creating statement...");
        if(rs.next())
        {
        String id  = rs.getString("User_id");
        int userstatus = rs.getInt("Status");
        String uname = rs.getString("Username");
        String pword = rs.getString("Password");
        
            if(username1.equals(uname) && password1.equals(pword) && userstatus<4 )
               {
            	userstatus=1;
               RequestDispatcher rd=request.getRequestDispatcher("/navigator.jsp"); 
               rd.forward(request, response);
             }
        	else{
        		//out.print("Wrong Password!");  
        		userstatus = userstatus + 1;
                RequestDispatcher rd=request.getRequestDispatcher("/login.html");  
                rd.forward(request, response);
        	}
            String sql1 = "UPDATE login_table1 SET Status ='" + userstatus + "' WHERE User_id ='" + id +"';" ;
    		int rs1=stmt.executeUpdate(sql1);
        }
        else{
        	
            out.print("Sorry UserName or Password Error!");  
            RequestDispatcher rd=request.getRequestDispatcher("/login.html");  
            rd.forward(request, response);  
                          
            } 
        
        rs.close();
        stmt.close();
        conn.close();
        
    }
    catch(Exception e)
    {
    	System.out.println(e);
    }
    

   
    }
  
} 