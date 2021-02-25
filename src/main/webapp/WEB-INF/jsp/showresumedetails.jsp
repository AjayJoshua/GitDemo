
   <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
	<title></title>
	<link rel="stylesheet" type="text/css" href="style.css">
		 <link href='http://fonts.googleapis.com/css?family=Montserrat:400,700%7CPT+Serif:400,700,400italic' rel='stylesheet'>
		  <link href="https://fonts.googleapis.com/css?family=Montserrat|Open+Sans" rel="stylesheet">
		  <style>
		 * {
	margin:0px;
	padding:0px;
}

.bgimage{
		background-image: url('tt.jpg');
	background-size: cover;
	width: 100%;
	height: 100vh;
	 overflow-x: scroll;
	
}

.menu{

	width:105%;
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
	margin-top:30px;
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
table { 
               
            } 
            th { 
                background-color:green; 
                Color:white; 
            } 
            th, td { 
                width:200px; 
                text-align:center; 
                 
                padding:5px 
              
            } 
            .geeks { 
                border-right:hidden; 
            } 
            .gfg { 
                border-collapse:separate; 
                border-spacing:0 15px; 
                 text-transform: capitalize;
                width:80%;
            } 
            h1 { 
                color:green; 
            }
             .rol
 {
  font-weight: bold;
 font-family: 'Montserrat', sans-serif;
 border: none;
 border-radius: 5px;
    padding-top: 7px;
    padding-bottom: 7px;
    padding-right: 5px;
    padding-left: 5px;
 }


.sr
{
text-align:center;
margin-top:10px;
}

.comments
{
margin-left:10px;
}
</style>
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
		<form method="post" action="notification">
	<center>	
	<table >
<tr>
<td>Email</td><td><input type="email" id="one"  name="email" class="rol" required></td></tr></table></center>
	<center><table >
<tr><td>Interview Date</td><td><input type="date" class="rol" id="one"  pattern = "yyyy-MM-dd" name="interviewdate"></td></tr></table></center>
	


<input id="button" type="submit" value="Send Date">
</form>		
<center><table class="gfg" border="1" >
        <tr>
            <td>ID</td>
            <td>First name</td>
            <td>Last name</td>
            <td>Date Of Birth</td>
            <td>Email</td>
            <td>Address</td>
            <td>Phone Number</td>
            <td>Gender</td>
            <td>Experience</td>
            <td>College Name</td>
            <td>Degree</td>
            <td>Specialization</td>
            <td>CGPA</td>
            <td>Technical Skills</td>
            <td>Achievements</td>
             <td>Applied Job</td>
            
        </tr>
       <c:forEach var="resume" items="${resume}" >
        <tr >
                <td>${resume.id}</td>
				<td>${resume.firstname}</td>
				<td>${resume.lastname}</td>
				<td><fmt:formatDate pattern = "yyyy-MM-dd" value = "${resume.dateofbirth}" /></td>
				<td>${resume.email}</td>
				<td>${resume.address}</td>
				<td>${resume.phonenumber}</td>
				<td>${resume.gender}</td>
				<td>${resume.experience}</td>
				<td>${resume.collegename}</td>
				<td>${resume.degree}</td>
				<td>${resume.specialization}</td>
				<td>${resume.cgpa}</td>
				<td>${resume.technicalskills}</td>
				<td>${resume.achievements}</td>
				<td>${resume.appliedrole}</td>
				

			</tr>
          </c:forEach>
    </table>
    </center>
		</div>

	</div>

</body>
</html>