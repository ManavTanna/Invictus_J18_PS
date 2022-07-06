<!--<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>-->
<!DOCTYPE html>
<!-- uncomment yellow-->
<html>
<head>
	<meta charset="ISO-8859-1">
	<title>VESIT Project showcase</title>
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
	<link href='https://fonts.googleapis.com/css?family=Armata' rel='stylesheet'>
	<link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
	<meta name="viewport" content="width=device-width, initial-scale=2.0">
	<style>
			@keyframes block {
				0%{
					border-top-left-radius: 75px;
					border-bottom-right-radius: 75px;
				}
				33%{
					border-bottom-right-radius: 50px;
					border-top-left-radius: 50px;
				}
				66%{
					border-bottom-left-radius: 50px;
					border-top-right-radius: 50px;
					
				}
				100%{
					border-top-right-radius: 75px;
					border-bottom-left-radius: 75px;
				}
			}
					
			#header {
				padding-top: 0px;
				height: 120px;
			}
			
			body {
				font-family:'Bai Jamjuree', Armata, Archivo;
				font-weight: bold;
				color: white;
				background-image: linear-gradient(to left, rgba(1, 58, 99, 0.7), rgba(108, 117, 125, 0.6)), url(https://i0.wp.com/printworx.co.uk/wp-content/uploads/2020/01/Graphic-Design-for-Print.jpg?fit=1199%2C801&ssl=1);
				background-repeat: no-repeat;
				background-size: 100%;
				height: 625px;
				width: 100%;
			}
			
			#logo {
				float:left;
				margin: 0px;
				padding-top: 20px;
				padding-left: 15px;
			}
			
			#h1 {
				float: left;
				padding-top: 30px;
				padding-left: 50px;
			}
			
			#footer {
				height: 50px;
				width: 100%;
				background-color: #202020;
				font-weight: normal;
				bottom: 0px;
				position: absolute;
			}
			
			#id011, #id01 {
				border-radius: 100px;
				border-color: #9a8c98;
				background-image: linear-gradient(to top, rgba(52, 58, 64, 0.7), rgba(108, 117, 125, 0.6)), url(https://dm0qx8t0i9gc9.cloudfront.net/thumbnails/video/GTYSdDW/videoblocks-abstract-polygon-gray-background-mov_hr1i76zw_thumbnail-1080_01.png);
				background-repeat: no-repeat;
				background-size: 150%;
				background-position: centre centre;
				float: right;
				text-align: center;
				width: 35%;
				height: 50;
				padding: 50px;
				margin-top: 50px;
				margin-right: 150px;
				animation: block 5s ease-in-out infinite alternate-reverse;
			}
			
			 .modal1 {
				position:absolute; /* Stay in place */
				z-index: 1; /* Sit on top */
				left: 55%;
				overflow:auto; /* Enable scroll if needed */  
				padding-top: 60px;
			}
			
			.modal {
				display: none; /* Hidden by default */
				position:absolute; /* Stay in place */
				z-index: 1; /* Sit on top */
				left: 55%;
				top: 18%;
				height: 330px;
				overflow:auto; /* Enable scroll if needed */  
				padding-top: 60px;
			}
			
			#email, #psw {
				margin-bottom: 10px;
				margin-top: 10px;
			}
			
			.btn {
				background-color: #dddbcb;
				color: #0c1821;
			}
			
			.btn:hover {
				color: #e9d8a6;
			}
			
			#introText {
				float: left;
				width: 500px;
				margin-left: 100px;
				margin-top: 100px;
			}
			
		
		</style>
</head>
<body>
	<div class="container-fluid text-center" id="header">
	  <div id="logo">
		<img src="https://ves.ac.in/wp-content/themes/ultra/meghamenu/demo/img/ves-logo.png" class="rounded" alt="vesit logo" style="height:90px;"> 
	  </div>
	  <div id="h1">
		<h2>Vesit Project Showcase</h2>
		<p><b>A place to get inspired and boost your coding journey</b></p>
	  </div>
		
	</div>
	
	<div id="introText">
		<p>Our website brings to you some bleeding edge, but innovative projects our VESIT students have worked on.</p>
		<hr>
		<p>This is not just showcasing of their work, but their talent and exuberance. Explore the various domains our students have touched.</p>
		<hr>
		<p>Sometimes it just takes moments of inspiration to set one on the right path</p>
	</div>
	
<!------------------------------------------------------------------------------------------------------>

	<div id="id011" class="modal1">
	<form class="modal-content1" action="Register" method="post">
          <div class="container11">
            <h2 class="sign">Sign Up</h2>
            <hr>
            <label for="email"><b>Email : </b></label>
            <input type="text" placeholder="Enter email" name="email" required style="margin: 5px;">
			<br>
            <label for="psw"><b>Password : </b></label>
            <input type="password" placeholder="Enter Password" name="psw" required style="margin: 5px;">
			<br>
            <label for="psw-repeat"><b>Repeat Password : </b></label>
            <input type="password" placeholder="Repeat Password" name="psw-repeat" required style="margin: 5px;">
                  
            <div class="clearfix1">
              <button type="submit" class="signupbtn1"><i class="material-icons" style="font-size:16px">person</i> Sign Up</button>
            </div>
          </div>
    </form>
    </div>
        
	<button type="button" class="btn btn-dark btn-lg download-btn" onclick= "document.getElementById('id01').style.display='inline-block'" style="right: 320px; top: 13%; position: absolute;"><i class="fas fa-sign-in-alt"></i>  Log in</button>
      
	<div id="id01" class="modal">
	<form class="modal-content1" action="Login" method="post">
	  <h2 class="sign">Login</h2>
        <hr>
		<label for="uname"><b>Username</b></label>
		<input type="text" placeholder="Enter email" name="email" id="uname" required>
		<br>
		<label for="psw"><b>Password</b></label>
		<input type="password" placeholder="Enter Password" name="psw" id="psw" required>
		<br>
		<button type="submit" value="Login" >Submit</button>
		<button type="button" onclick="document.getElementById('id01').style.display='none'" class="cancelbtn">Cancel</button>
	</form>
    </div>
	  
	<div id="footer">
		<p style="padding-left:450px; padding-top: 12px;">Vivekanand Educational Society's Intitute of Technology</p>
	</div>
</body>
</html>