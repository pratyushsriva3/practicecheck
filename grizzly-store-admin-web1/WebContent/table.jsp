<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%
String id = request.getParameter("userid");
String driver = "com.mysql.jdbc.Driver";
String connectionUrl = "jdbc:mysql://localhost:3306/";
String database = "test";
String userid = "root";
String password = "";
try {
Class.forName(driver);
} catch (ClassNotFoundException e) {
e.printStackTrace();
}
Connection connection = null;
Statement statement = null;
ResultSet resultSet = null;
%>











  
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Bootstrap Example</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
<style type="text/css">
.btn {
	border-radius: 20px;
	background-color: #F2F2F2;
}
input {
	
}
</style>
<script>
</script>
</head>
<body>
	<div class="container-fluid">

		<ul class="nav nav-pills nav-fill">

			<li class="nav-item dropdown"><a
				class="nav-link dropdown-toggle" data-toggle="dropdown" href="#"
				role="button" aria-haspopup="true" aria-expanded="false"
				style="border-radius: 20px; margin-top: 10px; background-color: #E6E6E6; width: 200px; color: #F3F3F3;">
					Filter by reference </a>
				<div class="dropdown-menu">
					<a class="dropdown-item" href="#">Action</a> <a
						class="dropdown-item" href="#">Another action</a> <a
						class="dropdown-item" href="#">Something else here</a>
					<div class="dropdown-divider"></div>
					<a class="dropdown-item" href="#">Separated link</a>
				</div></li>

			<li class="nav-item"><input class="form-control mr-sm-2"
				type="search" placeholder="Category Name" aria-label="Search"
				style="border-radius: 20px; margin-top: 10px; margin-left: -40px;"></li>

			<li class="nav-item dropdown"><a
				class="nav-link dropdown-toggle" data-toggle="dropdown" href="#"
				role="button" aria-haspopup="true" aria-expanded="false"
				style="border-radius: 20px; background-color: #F2F2F2; width: 200px; color: #4E4E4E; margin-top: 10px;">
					Sort by </a>
				<div class="dropdown-menu">
					<a class="dropdown-item" href="#">Action</a> <a
						class="dropdown-item" href="#">Another action</a> <a
						class="dropdown-item" href="#">Something else here</a>
					<div class="dropdown-divider"></div>
					<a class="dropdown-item" href="#">Separated link</a>
				</div></li>
			<li class="nav-item"><a class="nav-link btn btn-secondary"
				href="Addproduct.html" role="button"
				style="border-radius: 20px; width: 150px; margin-top: 10px; background-color: #676767">Add
					Product</a></li>
		</ul>
		<br>
	 
		<table class="table table-hover" rules="cols">
			<thead>
				<tr>
					<th scope="col">Product List</th>
					<th scope="col">Brand</th>
					<th scope="col">Category</th>
					<th scope="col">Rating</th>
					<th scope="col">Price</th>
					<th scope="col"></th>
				</tr>
			</thead>
			
			<tbody>
			<%
                  try{
                       connection = DriverManager.getConnection(connectionUrl+database, userid, password);
                        statement=connection.createStatement();
                        String sql ="select * from users";
                        resultSet = statement.executeQuery(sql);
                        while(resultSet.next()){
             %>
				<tr>
				
					<td><input type="checkbox" ><%=resultSet.getString("Name") %></td>
					<td><%=resultSet.getString("Brand") %></td>
					<td><%=resultSet.getString("Category") %></td>
					<td>4.7</td>
					<td><%=resultSet.getString("Price") %></td>
					<td>
						<button class="btn" onclick="location.href='viewproduct.html'">View</button>
						<button class="btn">Block</button>
						<button class="btn">Remove</button>
					</td>
				</tr>
				<%
                          }
                                    connection.close();
                                   } catch (Exception e) {
                                   e.printStackTrace();
                                }
                        %>
			 
				
				
								
			</tbody>
		</table>
	</div>

</body>
</html>