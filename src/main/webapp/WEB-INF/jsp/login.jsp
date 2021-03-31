<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">

<meta charset="ISO-8859-1">
<title>App materiais escolares</title>
</head>
<body>

	<div class="container">
		<div class="panel-group">
			<div class="panel panel-default">
				<div class="panel-heading">
					<h2>Sistema de Cadastro Produtos</h2>
					<form action="/">
							<button type="submit" class="btn btn-link">Novo usu�rio</button>
				
					</form>
				</div>
			</div>
		</div>
		<c:if test="${not empty msg}">
			<div class="alert alert-warning">
			  <strong>Algo deu errado. Tente novamente!</strong> ${msg}
			</div>
		</c:if>
		<form action="/usuario/login" method="post">
		
		    <div class="form-group">		
			<label>Informe o email:</label>
			<input type="email" name="email" class="form-control">
			</div>	
			
			<div class="form-group">		
			<label>Informe a senha:</label>
			<input type="password" name="senha" class="form-control">
			</div>	
		
			<button type="submit">Login</button>
		
		</form>			
		
	</div>
	
</body>
</html>