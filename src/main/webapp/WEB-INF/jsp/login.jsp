<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.1.3/css/bootstrap.min.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/ionicons/2.0.1/css/ionicons.min.css">

<meta charset="ISO-8859-1">
<title>App materiais escolares</title>

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

/*//------LOGIN---------------------------------------------------*/
.login-dark {
  height:700px;  
  background-size:cover;
  position:relative;
}

.login-dark form {
  max-width:320px;
  width:90%;
  background-color:#010003;
  padding:40px;
  border-radius:4px;
  transform:translate(-50%, -50%);
  position:absolute;
  top:50%;
  left:50%;
  color:#fff;
  box-shadow:3px 3px 4px rgba(0,0,0,0.2);
}

.login-dark .illustration {
  text-align:center;
  padding:15px 0 20px;
  font-size:100px;
  color:#2980ef;
}

.login-dark form .form-control {
  background:none;
  border:none;
  border-bottom:1px solid #434a52;
  border-radius:0;
  box-shadow:none;
  outline:none;
  color:inherit;
}

.login-dark form .btn-primary {
  background:#214a80;
  border:none;
  border-radius:4px;
  padding:11px;
  box-shadow:none;
  margin-top:26px;
  text-shadow:none;
  outline:none;
}

.login-dark form .btn-primary:hover, .login-dark form .btn-primary:active {
  background:#214a80;
  outline:none;
}

.login-dark form .forgot {
  display:block;
  text-align:center;
  font-size:12px;
  color:#6f7a85;
  opacity:0.9;
  text-decoration:none;
}

.login-dark form .forgot:hover, .login-dark form .forgot:active {
  opacity:1;
  text-decoration:none;
}

.login-dark form .btn-primary:active {
  transform:translateY(1px);
}
.alert alert-warning{
	height: 30px;
}
</style>


</head>
<body class="login"> 
		
	
         <c:if test="${not empty msg}">
			<div class="alert alert-warning">
			  <strong>Algo deu errado. Tente novamente!</strong> ${msg}
			</div>
		</c:if> 		 
            
        <div class="login-dark">        
        	
            <form action="/usuario/login" method="post">
            
                <h2 class="sr-only">Login Form</h2>
                <div class="illustration">
                    <i class="icon ion-ios-locked-outline"></i>
                </div>
                <div class="form-group">
                    <input class="form-control" type="email" name="email" placeholder="Email">
                </div>
                <div class="form-group">
                    <input class="form-control" type="password" name="senha" placeholder="Password">
                </div>               
                
                <div class="form-group">
                    <button class="btn btn-primary btn-block" type="submit">Login</button>
                </div>
                
                
                <div class="text-center w-full p-t-115">
                    <span class="txt1">Não é usuário?</span>
                    <a href="/usuario">Clique aqui!</a>
				</div>
				
            </form>
        	
         </div> 
         	
		         
    </body>
</body>
</html>