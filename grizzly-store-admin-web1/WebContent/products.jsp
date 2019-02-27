<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%
String id = request.getParameter("userid");
String driver = "com.mysql.jdbc.Driver";
String connectionUrl = "jdbc:mysql://localhost:3306/";
String database = "grizzy?useSSL=false";
String userid = "root";
String password = "password-1";
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
	width:auto;
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
				style="border-radius: 20px; margin-top: 10px; background-color: #cccccc; width: 190px; color: #000000; padding: 3px; height: 30px; margin:2px;
				font-size: 16px;">
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
				style="border-radius: 20px; margin-top: 10px; margin-left: 10px; height: 30px; margin:2px; width: auto;" ></li>&emsp;&emsp;

			<li class="nav-item dropdown"><a
				class="nav-link dropdown-toggle" data-toggle="dropdown" href="#"
				role="button" aria-haspopup="true" aria-expanded="false"
				style="border-radius: 20px; background-color: #cccccc; width: 210px; color: #000000; margin-top: auto;  padding: 3px; height: 30px; font-size: 16px;">
					Sort by </a>
				<div class="dropdown-menu">
					<a class="dropdown-item" href="#">Action</a> <a
						class="dropdown-item" href="#">Another action</a> <a
						class="dropdown-item" href="#">Something else here</a>
					<div class="dropdown-divider"></div>
					<a class="dropdown-item" href="#">Separated link</a>
				</div></li>
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
					<th scope="col">Options</th>
				</tr>
			</thead>
			 
			<tbody>
				<tr>
				
				
				<%
                     try{
                         connection = DriverManager.getConnection(connectionUrl+database, userid, password);
                          statement=connection.createStatement();
                          String sql ="select * from addproduct";
                          resultSet = statement.executeQuery(sql);
                           while(resultSet.next()){
              %>
					<td scope="col"><%=resultSet.getString("Name") %></td>
					<td scope="col"><%=resultSet.getString("Brand") %></td>
					<td scope="col"><%=resultSet.getString("Category") %></td>
					<td scope="col">1</td>
					<td scope="col"><%=resultSet.getString("Price") %></td>
					<td>
	                          <a href="viewproduct.html"><button class="btn" input type="submit" >view</button></a>
	                          <button class="btn" >Block</button>
	                          <button class="btn" >Remove</button>
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