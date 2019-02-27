<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <title>Bootstrap Example</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<style>
.button {
  background-color: #000000; 
  border: none;
  color: white;
  padding: 15px 32px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  font-size: 16px;
  margin: 4px 2px;
  cursor: pointer;
}
.button5 {background-color: #cccccc;}
.card {
  box-shadow: 0 4px 8px 0 rgba(1, 1, 1, 1);
  max-width: 300px;
  margin: 22px;
  text-align: center;
  font-family: arial;
}
.title {
  color: grey;
  font-size: 18px;
}
button {
  border: none;
  outline: 0;
  display: inline-block;
  padding: 8px;
  color: black;
  background-color: #ffffff;
  text-align: center;
  cursor: pointer;
  width: 100%;
  font-size: 18px;
}
a {
  text-decoration: none;
  font-size: 22px;
  color: black;
}
button:hover, ab:hover {
  opacity: 0.7;
}
ab {
color: #000000;
font-size: 22px;
}
#rcorners1 {
  border-radius: 20px;
  background: #cccccc;
  padding: 4px;
  width: 130px;;
  color: black;
  text-align: center;
  margin: auto;
  margin-top:10px;
  margin-right: 0px;
}

#rcorners3 {
  border-radius: 25px;
  background: #f2f2f2;
  width: 200px;
  height: 10px;
  margin-top : 10px; 
}
</style>

</head>
<body>


<nav class="navbar navbar-expand-md" role="navigation" style="background: #f2f2f2;">
        <a class="navbar-brand pull-left" href="#">
        <img src="img/hlogo.png" alt="Logo" style="width:170px; margin-top : 10px;">
        </a>


        <form class="form-inline">
           <div class="input-group"  id="rcorners3">
             <input class="form-control mr-sm-3" type="search" placeholder="Search" aria-label="Search">
             <div class="input-group-btn">
               <button class="btn btn-default" type="submit" ><i class="glyphicon glyphicon-search"></i></button>
             </div>
           </div>
        </form>
        <div>
          <ul class="nav navbar-nav " style="margin-top:10px; margin-left: 250px; ">
          <% String name = request.getParameter("username"); %>
              <li class="ab" style="font-size: 22px; color: black;"><strong><p>Welcome <%out.print(name); %></p></strong></li>
          </ul>
         </div>
         <div class="col -sm-0">
           <ul class="nav navbar-nav pull-right " >
               <form action="logoutservlet" method="post" >
               <button class="button button5 " id="rcorners1" >Logout</button>
             </form>
           </ul>
          </div>
      </div>
</nav>



<div class="container-fluid">
  <div class="row">
    <div class="col-sm-3">
      <div class="card">
        <img src="/Users/shashidharreddy/img_avatar.png" alt="John" style="width:100%">
        <h1>Pratyush</h1>
        <p class="title">CEO & Founder</p>
        <p>DIT University</p>
        <div style="margin: 24px 0;">
          <a href="#"><i class="fa fa-dribbble"></i></a>
          <a href="#"><i class="fa fa-twitter"></i></a>
          <a href="#"><i class="fa fa-linkedin"></i></a>
          <a href="#"><i class="fa fa-facebook"></i></a>
        </div>
        <p><button>Contact</button></p>
      </div>
    </div>
    <div class="col-md-9" >
      <ul class="nav nav-tabs" role="tablist">
    <li class="nav-item">
      <a class="nav-link active" data-toggle="tab" href="#add" >Add</a>
    </li>
    <li class="nav-item">
      <a class="nav-link " data-toggle="tab" href="#products" >Products</a>
    </li>
    <li class="nav-item">
      <a class="nav-link disabled " data-toggle="tab" href="#vendors" >Vendors</a>
    </li>
  </ul>
  <br>





     <div class="tab-content">
              <div id="add" class="container tab-pane active"><br>
              <jsp:include page="Addproduct2.html"></jsp:include>
              </div>
                            
             <div id="products" class="container tab-pane fade"><br>
                <jsp:include page="products.jsp"></jsp:include>
                     
              </div>
      
              <div id="vendors" class="container tab-pane fade"><br>
                    <h3>Vendors</h3>
                    <p>Ut enim ad minim veniam, hgjjk</p>
             </div>
    </div>


  </div>


</div>
</div>
</body>
</html>
