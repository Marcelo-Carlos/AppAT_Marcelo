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

</style>
</head>
<body>

	<div class="container">
		<h2>Cadastramento de clientes</h2>
			<form action="/home">
					<button type="submit">Home</button>
			
			</form>
	
		<c:if test="${not empty msg}">
			<div class="alert alert-warning">
			  <strong>Algo deu errado. Tente novamente!</strong>${msg}
			</div>
		</c:if>
		
		<form action="/cliente/incluir" method="post">
		
		    <div class="form-group">		
			<label>Informe nome:</label>
			<input type="text" class="form-control" name="nome">
			</div>	
			
			<div class="form-group">		
			<label>Informe telefone:</label>
			<input type="text" class="form-control" name="telefone">
			</div>	
			
			<div class="form-group">		
			<label>Informe CPF:</label>
			<input type="text" class="form-control" name="cpf">
			</div>
			
			<div class="form-group">		
			<label>Informe E-mail:</label>
			<input type="text" class="form-control" name="email">
			</div>
					
			<button type="submit">Cadastrar</button>
		
		</form>	
		
		<c:if test="${not empty lista}">	
							
			<h2>Listagem de clientes</h2>			
			  <table class="table">
			    <thead>
			      <tr>
			        <th>Nome</th>	
			        <th>Telefone</th>
			        <th>CPF</th>  
			        <th>E-mail</th> 			              
			        <th></th>
			      </tr>
			    </thead>
			    <tbody> 
			    			    
			    <c:forEach var="c" items="${lista}">     
			      <tr>
			        <td>${c.nome}</td>	
			        <td>${c.telefone}</td>	
			        <td>${c.cpf}</td>   
			        <td>${c.email}</td>			        
 
			        <td><a href="/cliente/${c.id}/excluir">Excluir</a></td>
			      </tr>
			    </c:forEach>
			      
			    </tbody>			    
			  </table>
		</c:if> 
		<c:if test="${empty lista}">
			  	<h2>Nenhum cliente cadastrado!</h2>
		</c:if>
	</div>
	
</body>
</html>