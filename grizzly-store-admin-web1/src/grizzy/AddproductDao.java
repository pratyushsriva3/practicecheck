package grizzy;
import java.sql.*;  
import java.util.ArrayList;  
import java.util.List;
public class AddproductDao {

	
	public static Connection getConnection(){  
	    Connection con=null;  
	    try{  
	        Class.forName("com.mysql.jdbc.Driver");  
	        con=DriverManager.getConnection("jdbc:mysql://localhost/grizzy?useSSL=false","root","password-1");  
	    }catch(Exception e){System.out.println(e);}  
	    return con;  
	}  
	
	public static int save(Addproduct add){  
	    int status=0;  
	    try{  
	        Connection con=getConnection();  
	        PreparedStatement ps=con.prepareStatement("insert into addproduct(Id,Name,Category,Brand,Description,Price) values(?,?,?,?,?,?)"); 
	        ps.setString(1,add.getId());  
	        ps.setString(2,add.getName());  
	        ps.setString(3,add.getCategory());  
	        ps.setString(4,add.getBrand());   
	        ps.setString(5,add.getDescription());
	        ps.setString(6,add.getPrice());
	        status=ps.executeUpdate();  
	    }catch(Exception e){System.out.println(e);}  
	    return status;  
	} 
	

	
}
