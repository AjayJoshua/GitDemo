

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

            } 
            .geeks { 
                border-right:hidden; 
            } 
            .gfg { 
                border-collapse:separate; 
                border-spacing:0 15px; 
            } 
            h1 { 
                color:green; 
            }
body
{
	background-image: url('tt.jpg');
	background-size:cover;
}

.bgimage{
	
	
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
	text-transform: capitalize;
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
  margin-left:30px;
       } 
 .textalign1
{
text-align:center;
width:40%

}
th .textalign {
  width: 90%; 
}
            
            th { 
                background-color:green; 
                Color:white; 
            } 
            th, td { 
               width:200px;
              
            } 
            .geeks { 
                border-right:hidden; 
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
	
<center><table class="gfg">

        <tr>
            <td>ID</td>
            <td class="textalign1">Job Description</td>
            <td>Skillset</td>
            <td>Role</td>
            <td>Experience</td>
            <td>Number Of Resource</td>
            <td>Expected Date Of Joining</td>
            <td></td>
        </tr>
        <c:forEach var="employer" items="${employer}">
        <tr>
                <td>${employer.id}</td>
				<td class="textalign">${employer.jobdescription}</td>
				<td>${employer.skillset}</td>
				<td>${employer.role}</td>
				<td>${employer.experience}</td>
				<td>${employer.numberofresources}</td>
				<td><fmt:formatDate pattern = "yyyy-MM-dd" value = "${employer.expecteddoj}" /></td>
				<td><a href="resume">Apply</a></td>
		

			</tr>
           </c:forEach>
    </table>
    </center>
		</div>

	</div>

</body>
</html>