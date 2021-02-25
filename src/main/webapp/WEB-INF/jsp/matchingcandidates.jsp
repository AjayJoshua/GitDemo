<!DOCTYPE html>
<html>
<head>
	<title></title>
	<link rel="stylesheet" type="text/css" href="style.css">
		 <link href='http://fonts.googleapis.com/css?family=Montserrat:400,700%7CPT+Serif:400,700,400italic' rel='stylesheet'>
		  <link href="https://fonts.googleapis.com/css?family=Montserrat|Open+Sans" rel="stylesheet">
		   <link href='https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.3.1/css/bootstrap.min.css' rel='stylesheet'>
		  
		  <style>
		 * {
	margin:0px;
	padding:0px;
}

.bgimage{
	background-image: url('tt.jpg');
	background-size: 100% 110%;
	width: 100%;
	height: 100vh;
}

.menu{

	width: 100%;
	height: 100px;
	background-color: rgba(0,0,0,0.5);
}

.leftmenu{
	width: 20%;
	line-height: 100px;
	float: left;
/*	background-color: yellow;*/
}

.leftmenu h4{
	padding-left: 70px;
	padding-top:40px;
	font-weight: bold;
	color: white;
	font-size: 22px;
	font-family: 'Montserrat', sans-serif;
}


.rightmenu{
	width:30%;
	height: 100px;
	float: right;
/*	background-color: red; */
}

.rightmenu ul{
	margin-left: 200px;
}

.rightmenu ul li {
	font-family: 'Montserrat', sans-serif;
	display: inline-block;
	list-style: none;
	font-size: 15px;
	color:white;
	font-weight: bold;
	line-height: 100px;
	margin-left: 40px;
	text-transform: uppercase;

}
 a
 {
	font-family: 'Montserrat', sans-serif;
	display: inline-block;
	list-style: none;
	font-size: 15px;
	color:white;
	font-weight: bold;
	line-height: 100px;
	margin-left: 30px;
	text-transform: uppercase;
	text-decoration:none

}
a:hover{
	color: orange;
}


#fisrtlist{
	color: orange;
}

.rightmenu ul li:hover{
	color: orange;
}


.text{
	width: 100%;
	margin-top: 185px;
	text-transform: uppercase;
	text-align: center;
	color:white;
}

.text h4{

	font-size: 14px;
	font-family: 'Open Sans', sans-serif;
}

.text h1{
	font-size:62px;
	font-family: 'Montserrat', sans-serif;
	font-weight: 700px;
	margin:14px 0px;
}

.text h3{
	font-size: 12px;
	font-family: 'Open Sans', sans-serif;
}


#buttonone{
		background-color: transparent;
	border: none;
	font-family: 'Montserrat', sans-serif;
	text-transform: uppercase;
	font-weight: bold;
	line-height: 40px;
	border: 3px solid white;
	width: 250px;
}

#buttontwo{

	background-color: transparent;
	border: none;
	font-family: 'Montserrat', sans-serif;
	text-transform: uppercase;
	font-weight: bold;
	line-height: 40px;
	border: 3px solid white;
	width: 150px;
}

 #button {

    font-size: 15px;
    color: white;
   font-weight: bold;
    background-color: #008CBA;
    font-family: 'Montserrat', sans-serif;
   border: none;
    border-radius: 7px;
    padding-top: 5px;
    padding-bottom: 5px;
    padding-right: 5px;
    padding-left: 5px;
 }
 
 .rol
 {
  font-weight: bold;
 font-family: 'Montserrat', sans-serif;
 border: none;
 border-radius: 10px;
    padding-top: 10px;
    padding-bottom: 10px;
    padding-right: 5px;
    padding-left: 5px;
 }
 
 p
 {
 font-weight: bold;
 font-family: 'Montserrat', sans-serif;
color:red;
 }
		  </style>
		  <script type='text/javascript' src='https://code.jquery.com/jquery-3.3.1.slim.min.js'></script>
							  <script type='text/javascript' src='https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.3.1/js/bootstrap.bundle.min.js'></script>
</head>
<body>

	<div class="bgimage">
		<div class="menu">
			
			<div class="leftmenu">
				<h4> ISMS</h4>
			</div>

			<div class="rightmenu">
				<ul>
			
			
					<li> <a href="home">HOME</a></li>
					
				</ul>
			</div>

		</div>

		<div class="text">
			
			<form method="post" action="matchingcandidates">
			<h2>Select one of the roles to  match the candidate profile</h2>
    <select name="roles" class="rol" required>
			<option >Test Engineer</option>
			<option>Full Stack Developer</option>
			<option>Network Administrator</option>
			<option>Dotnet Developer</option>
			<option>Selenium Tester</option>
			<option>Help Desk Support</option>
		</select>

<div >
                       
                      <input type="submit" id="button" value="MATCH CANDIDATES">
                            <span> </span>
                           <p> ${errorMessage}  ${roles}</p>
                       
						
                    </div>
</form>
			
		</div>

	</div>

</body>
</html>