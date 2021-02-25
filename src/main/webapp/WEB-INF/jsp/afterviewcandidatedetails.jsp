
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
	position:fixed;
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

table
{
margin-top:30px;
margin-left:30px
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
			
		<center>	<table align="center" >
			 <c:forEach var="resume" items="${resumelist}" >
			<center><h2> <b> Details of ${resume.firstname}</b></h2></center>
        <tr>
            <td>ID</td> <td>${resume.id}</td></tr>
             <tr> <td>First name</td><td>${resume.firstname}</td></tr>
             <tr > <td>Last name</td><td>${resume.lastname}</td></tr>
             <tr > <td>Date Of Birth</td><td><fmt:formatDate pattern = "yyyy-MM-dd" value = "${resume.dateofbirth}" /></td></tr>
            <tr >  <td>Email</td>	<td>${resume.email}</td></tr>
            <tr >  <td>Address</td>	<td>${resume.address}</td></tr>
            <tr >  <td>Phone Number</td><td>${resume.phonenumber}</td></tr>
            <tr >  <td>Gender</td>	<td>${resume.gender}</td></tr>
             <tr > <td>Experience</td><td>${resume.experience}</td></tr>
             <tr > <td>College Name</td><td>${resume.collegename}</td></tr>
             <tr > <td>Degree</td><td>${resume.degree}</td></tr>
             <tr > <td>Specialization</td><td>${resume.specialization}</td></tr>
            <tr >  <td>CGPA</td><td>${resume.cgpa}</td></tr>
             <tr > <td>Technical Skills</td><td>${resume.technicalskills}</td></tr>
            <tr >  <td>Achievements</td>	<td>${resume.achievements}</td></tr>
            <tr >  <td>Applied Job</td><td>${resume.appliedrole}</td>
            
        </tr>
     </c:forEach>
    </table>
    </center>
		</div>

	</div>

</body>
</html>