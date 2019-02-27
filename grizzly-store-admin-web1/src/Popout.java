

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;

import java.io.IOException;
import java.io.PrintWriter;  
  
@WebServlet("/servlet3")
public class Popout extends HttpServlet { 

	/**
	 * 
	 */
	private static final long serialVersionUID = 121L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response)  
	        throws ServletException, IOException {  
	  
		
	    response.setContentType("text/html");  
	    PrintWriter out = response.getWriter(); 
	    
	    out.print("<script type=\"text/javascript\">");
	    out.print("alert('Error in entering Values in Database');");
	    out.print("location='navigator.jsp'");
	    out.print("</script>");
	    
	    out.close();

}
}
