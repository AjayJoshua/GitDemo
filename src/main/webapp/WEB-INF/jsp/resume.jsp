<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style>
body{
  margin: 0;
  padding: 0;
  background: url('tt.jpg');
  background-size: cover;
}
.contact-form{
  width: 85%;
  max-width: 600px;
  background: #f1f1f1;
  position: absolute;
  top: 140%;
  left: 50%;
  transform: translate(-50%,-50%);
  padding: 30px 40px;
  box-sizing: border-box;
  border-radius: 8px;
  text-align: center;
  box-shadow: 0 0 20px #000000b3;
  font-family: "Montserrat",sans-serif;
}
.contact-form h1{
  margin-top: 0;
  font-weight: 200;
}
.txtb{
  border:1px solid gray;
  margin: 8px 0;
  padding: 12px 18px;
  border-radius: 8px;
}
.txtb label{
  display: block;
  text-align: left;
  color: #333;
  text-transform: uppercase;
  font-size: 14px;
}
.txtb input,.txtb textarea{
  width: 100%;
  border: none;
  background: none;
  outline: none;
  font-size: 18px;
  margin-top: 6px;
}
.txtb select{
  width: 100%;
  border: none;
  background: none;
  outline: none;
  font-size: 18px;
  margin-top: 6px;
}
.btn{
  display: inline-block;
  background: #9b59b6;
  padding: 14px 0;
  color: white;
  text-transform: uppercase;
  cursor: pointer;
  margin-top: 8px;
  width: 100%;
}
.button{
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

.menu{

	width: 100%;
	height: 100px;
	background-color: rgba(0,0,0,0.5);
}

.leftmenu{
	width: 20%;
	
	float: left;
/*	background-color: yellow;*/
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

.leftmenu h4{
	padding-left: 70px;
	padding-top:20px;
	font-weight: bold;
	color: white;
	font-size: 22px;
	font-family: 'Montserrat', sans-serif;
}

.text h4{

	font-size: 14px;
	font-family: 'Open Sans', sans-serif;
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
p
{
color:red;
}
</style>
</head>
<body>
<form method="post" action="resume" >
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

<div class="contact-form">
<h1>Resume Details</h1>
       <div class="txtb"> <label> First Name :</label><input type="text" name="firstname" required> </div>
		<div class="txtb"> <label>Last Name :</label><input type="text"  name="lastname" required/>  </div>
		<div class="txtb"> <label>Date Of Birth :</label><input type="date" name=dateofbirth required/> </div>
		<div class="txtb"> <label>Email :</label> <input type="email" name="email" required/> </div>
		<div class="txtb"> <label>Address :</label><input type="text"  name="address" required/>  </div>
		<div class="txtb"> <label>Phone Number :</label><input type="text" minlength="10" maxlength="10" name="phonenumber" required/>  </div>
		<div class="txtb"> <label>Gender :</label>	<select name="gender" required>
		<option selected disabled> Specify the Gender</option>
			<option >Male</option>
			<option>Female</option>
			
		</select>
		 </div>
		
		<div class="txtb"> <label>Experience(Years):</label><input type="text" name="experience" required> </div>
		<div class="txtb"> <label>Name Of College :</label><input type="text" name="collegename" required> </div>
		<div class="txtb"> <label>Degree :</label><input type="text" name="degree" placeholder="e.g:Bachelor of Engineering" required> </div>
		<div class="txtb"> <label>Specialization :</label><input type="text" name="specialization" placeholder="e.g:Electronics and Communication Engineering" required> </div>
		<div class="txtb"> <label>CGPA(Out of 10) :</label><input type="text" name="cgpa" required> </div>
		<div class="txtb"> <label>Technical Skills :</label><input type="text" name="technicalskills" required> </div>
		<div class="txtb"> <label>Awards/Achievements :</label><input type="text" name="achievements" required> </div>
		<div class="txtb"> <label>Applied Role :</label><select name="appliedrole" required>
		<option selected disabled> Specify the Role</option>
			<option >Test Engineer</option>
			<option>Full Stack Developer</option>
			<option>Network Administrator</option>
			<option>Dotnet Developer</option>
			<option>Selenium Tester</option>
			<option>Help Desk Support</option>
		</select> </div>
		<input type="checkbox" name="terms" required> I accept the <u>Terms and Conditions</u><br>
		<input type="submit" class="button" value="Submit">
		<p>${errorMessage}</p>
	</div>	

</div>




		
</form>
</body>
</html>