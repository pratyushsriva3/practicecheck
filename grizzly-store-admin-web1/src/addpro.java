
import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/servlet4")
public class addpro extends HttpServlet{
	
	
	 /**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	public void doPost(HttpServletRequest request, HttpServletResponse response)  
		        throws ServletException, IOException {  
		 
	Addproduct add = new Addproduct();
	add.setId(request.getParameter("Id"));
	add.setName(request.getParameter("Name"));
	add.setCategory(request.getParameter("Category"));
	add.setBrand(request.getParameter("Brand"));
	add.setDescription(request.getParameter("Description"));
	add.setPrice(request.getParameter("Price"));
	int i=AddproductDao.save(add);  
	if(i>0){  
		RequestDispatcher rd=request.getRequestDispatcher("/navigator.jsp"); 
	    rd.forward(request, response);
	}else{  
		RequestDispatcher rd=request.getRequestDispatcher("servlet3"); 
	    rd.forward(request, response);
	}
	}

}
