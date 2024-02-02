<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Welcome</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/normalize/5.0.0/normalize.min.css">
  <link rel="stylesheet" href="CSS/button.css"> 
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
 
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/normalize/5.0.0/normalize.min.css">

  <link href="https://fonts.googleapis.com/css?family=Lobster" rel="stylesheet" type="text/css">
<style>
  .head-text {
    color: rgb(67, 202, 232);
    font-family: Lobster;
    font-size: 200px;
  }
  .subhead-text{
    color: rgb(67, 202, 232);
    font-family: Lobster;
    font-size: 70px;}
</style>

      <link rel="stylesheet" href="CSS/style.css">
  
  <script src="bg_effect.js"></script>
  <style>
    /* Remove the navbar's default rounded borders and increase the bottom margin */ 
    .navbar {
      margin-bottom: 50px;
      border-radius: 0;
    }
    
    /* Remove the jumbotron's default bottom margin */ 
     .jumbotron {
      margin-bottom: 0;
    }
   
    /* Add a gray background color and some padding to the footer */
    footer {
      background-color: #f2f2f2;
      padding: 25px;
    }
  </style>
</head>
<body>

<script src='https://cdn.rawgit.com/Siddharth11/gradStop.js/master/gradstop.js'></script>

  

    <script  src="CSS/index.js"></script>


<div class="background">
 

<div class="jumbotron">
  <div class="container text-center">
    <div class="head-text">Food</div>      
    <div class="subhead-text">eat fresh.</div>
  </div>
</div>

<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>                        
      </button>
    
    </div>
    <div class="collapse navbar-collapse" id="myNavbar">
      <ul class="nav navbar-nav navbar-right">
      	<li><a href="logout.jsp"><h4><span class="glyphicon glyphicon-user"></span> Log Out</h4></a></li> 
        <li><a href="cart.jsp"><h4><span class="glyphicon glyphicon-shopping-cart"></span> Cart</h4></a></li>
      </ul>
    </div>
  </div>
</nav> 
<p id="demo">
<script>
/*function confirmBox() {
    	var qty = prompt("Please enter quantity", 1);
        var xhttp = new XMLHttpRequest();
    	xhttp.open("GET", "addToCart.jsp?qty="+qty+"\"", true);
    	xhttp.send();
    		} */
</script></p>
<div class="container">    
  <div class="row">
    <div class="col-sm-4">
      <div class="panel panel-primary">
        <div class="panel-heading">Sandwich</div>
        <div class="panel-body"><img src="CSS/sandwich.jpg" class="img-responsive" style="height:195px; width:100%" alt="Chicken Biryani"></div>
        <div class="panel-footer">Rs. 200</div>
       <a href="addToCart.jsp?p=1">
       <!--Quantity: <input type="number" id="2" style="height:40px; width:81%" class="set_quantity" placeholder="Set Quantity">-->
       <button class="button" style="vertical-align:middle; width:97%" id="1" ><!-- onclick="confirmBox()"--><span>Add to cart </span></button></a>
       
      </div>
    </div>
    <div class="col-sm-4"> 
      <div class="panel panel-primary">
        <div class="panel-heading">Noddles</div>
        <div class="panel-body"><img src="CSS/noodles.jpg" class="img-responsive" style="height:195px; width:100%" alt="Image"></div>
        <div class="panel-footer">Rs. 180</div>
        <a href="addToCart.jsp?p=2"><button class="button" style="vertical-align:middle; width:97%" id="2" ><!-- onclick="confirmBox()" --><span>Add to cart </span></button></a>
      </div>
    </div>
    <div class="col-sm-4"> 
      <div class="panel panel-primary">
        <div class="panel-heading">Pizza</div>
        <div class="panel-body"><img src="CSS/pizza.jpg" class="img-responsive" style="height:195px; width:100%" alt="Image"></div>
        <div class="panel-footer">Rs. 200</div>
        <a href="addToCart.jsp?p=3"><button class="button" style="vertical-align:middle; width:97%" id="3"> <!-- onclick="confirmBox()"> --><span>Add to cart </span></button></a>
      </div>
    </div>
  </div>
</div><br>

<div class="container">    
  <div class="row">
    <div class="col-sm-4">
      <div class="panel panel-primary">
        <div class="panel-heading">Pulao</div>
        <div class="panel-body"><img src="CSS/pulao.jpg" class="img-responsive" style="height:195px; width:100%" alt="Image"></div>
        <div class="panel-footer">Rs. 180</div>
        <a href="addToCart.jsp?p=4"><button class="button" style="vertical-align:middle; width:97%" id="4"><!--  onclick="confirmBox()"> --><span>Add to cart </span></button></a>
      </div>
    </div>
     <div class="col-sm-4">
      <div class="panel panel-primary">
        <div class="panel-heading">Fried Rice</div>
        <div class="panel-body"><img src="CSS/fried_rice.jpg" class="img-responsive" style="height:195px; width:100%" alt="Image"></div>
        <div class="panel-footer">Rs. 250</div>
        <a href="addToCart.jsp?p=5"><button class="button" style="vertical-align:middle; width:97%" id="5"><!--  onclick="confirmBox()"> --><span>Add to cart </span></button></a>
      </div>
    </div>
     <div class="col-sm-4">
      <div class="panel panel-primary">
        <div class="panel-heading">Pasta</div>
        <div class="panel-body"><img src="CSS/pasta.jpg" class="img-responsive" style="height:195px; width:100%" alt="Image"></div>
        <div class="panel-footer">Rs. 230</div>
        <a href="addToCart.jsp?p=6"><button class="button" style="vertical-align:middle; width:97%" id="6"><!--  onclick="confirmBox()"> --><span>Add to cart </span></button></a>
      </div>
    </div>
    <div class="col-sm-4"> 
      <div class="panel panel-primary">
        <div class="panel-heading">Vegetable Salad</div>
        <div class="panel-body"><img src="CSS/vegetable_salad.jpg" class="img-responsive" style="height:195px; width:100%" alt="Image"></div>
        <div class="panel-footer">Rs. 180</div>
        <a href="addToCart.jsp?p=7"><button class="button" style="vertical-align:middle; width:97%" id="7"><!--  onclick="confirmBox()"> --><span>Add to cart </span></button></a>
      </div>
    </div>
    <div class="col-sm-4"> 
      <div class="panel panel-primary">
        <div class="panel-heading">Rasagulla</div>
        <div class="panel-body"><img src="CSS/rasgulla.jpeg" class="img-responsive" style="height:195px; width:100%" alt="Image"></div>
        <div class="panel-footer">Rs. 60</div>
        <a href="addToCart.jsp?p=8"><button class="button" style="vertical-align:middle; width:97%" id="8"><!--  onclick="confirmBox()"> --><span>Add to cart </span></button></a>
      </div>
    </div>
      <div class="col-sm-4"> 
      <div class="panel panel-primary">
        <div class="panel-heading">coffee</div>
        <div class="panel-body"><img src="CSS/coffee.jpg" class="img-responsive" style="height:195px; width:100%" alt="Image"></div>
        <div class="panel-footer">Rs. 50</div>
        <a href="addToCart.jsp?p=101"><button class="button" style="vertical-align:middle; width:97%" id="101"><span>Add to cart </span></button></a>
      </div>
    </div>
      <div class="col-sm-4"> 
      <div class="panel panel-primary">
        <div class="panel-heading">Mocktail</div>
        <div class="panel-body"><img src="CSS/Mocktail.jpg" class="img-responsive" style="height:195px; width:100%" alt="Image"></div>
        <div class="panel-footer">Rs. 80</div>
        <a href="addToCart.jsp?p=102"><button class="button" style="vertical-align:middle; width:97%" id="102"> <!-- onclick="confirmBox()"> --><span>Add to cart </span></button></a>
      </div>
    </div>
      <div class="col-sm-4"> 
      <div class="panel panel-primary">
        <div class="panel-heading">Lassi</div>
        <div class="panel-body"><img src="CSS/lassi.png" class="img-responsive" style="height:195px; width:100%" alt="Image"></div>
        <div class="panel-footer">Rs. 40</div>
        <a href="addToCart.jsp?p=103"><button class="button" style="vertical-align:middle; width:97%" id="103"> <!-- onclick="confirmBox()"> --><span>Add to cart </span></button></a>
      </div>
    </div>
      <div class="col-sm-4"> 
      <div class="panel panel-primary">
        <div class="panel-heading">Cold Drink</div>
        <div class="panel-body"><img src="CSS/cold_drink.jpg" class="img-responsive" style="height:195px; width:100%" alt="Image"></div>
        <div class="panel-footer">Rs. 50</div>
        <a href="addToCart.jsp?p=104"><button class="button" style="vertical-align:middle; width:97%" id="104"><!--  onclick="confirmBox()"> --><span>Add to cart </span></button></a>
      </div>
    </div>
  </div>
</div><br><br>

<footer class="container-fluid text-center">
  <p>Designed and Developed by Vishakha Dhanjode</p>  
  
</footer>
</div>
</body>
</html>