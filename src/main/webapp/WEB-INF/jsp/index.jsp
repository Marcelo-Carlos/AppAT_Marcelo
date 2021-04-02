<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">

<meta charset="ISO-8859-1">
<title>AppTP3</title>

<style> 
@import url('https://fonts.googleapis.com/css?family=Varela+Round');
html, body {
    overflow-x: hidden;
    height: 100%;
}
body {
    background: linear-gradient(#8084bd 0%, #ddeded 100%);
    padding: 0;
    margin: 0;
    font-family: 'Varela Round', sans-serif;
}

.cadastro {
  max-width:400px;    
  background-color:#010003;
  height: 60%;
  padding:20px;
  border-radius:4px;
  transform:translate(-50%, -50%);
  position:relative;  
  top: 300px;
  left:50%;    
  color:#fff;
  box-shadow:3px 3px 4px rgba(0,0,0,0.2);
 
}
.h3{
	color: white;	
}
.h4{
	color: white;	
}
</style>

</head>
<body>
		
		<div class="cadastro">
			<h3>${user.nome}</h3>
			<h4>${user.email}</h4></br></br>		
						
			<form action="${user.git}" method="get">	    
				<button class="btn btn-primary btn-block" type="submit">GIT</button></br>
			</form>	
			
			<form action="/cliente" method="get">	    
				<button class="btn btn-primary btn-block" type="submit">Novo cliente</button></br>
			</form>	
			<form action="/produto" method="get">	    
				<button class="btn btn-primary btn-block" type="submit">Novo Produto</button></br>
			</form>
			<form action="/" method="get">	    
				<button class="btn btn-primary btn-block" type="submit">LogOut</button></br>
			</form>
				
		</div>		
	
</body>
</html>