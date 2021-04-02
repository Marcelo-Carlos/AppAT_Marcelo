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


</style>

</head>
<body>
	
	 

	<div class="container">
		<h2>Cadastramento de Produtos</h2>
		<form action="/home">
				<button type="submit">Home</button>
		
		</form>
		<form action="/produto/incluir" method="post">
		
				
		    <div class="form-group">		
			<label>Informe a descrição:</label>			
			<input type="text" class="form-control" name="descricao">
			</div>	
			
			<div class="form-group">		
			<label>Informe a quantidade:</label>			
			<input type="number" class="form-control" name="quantidade">
			</div>
			
			<div class="form-group">		
			<label>Informe o valor:</label>			
			<input type="number" class="form-control" name="valor">
			</div>
			
			<div class="form-group">		
			<label>Informe o cliente:</label>
				<select class="form-control" name="cliente.id">					
					<c:forEach var="c" items="${clientes}">  
						<option value="${c.id}">${c.nome}</option>
					</c:forEach>
				</select>
			</div>			
			   	
			<button type="submit">Cadastrar</button>
		
		</form>	
		
		<c:if test="${not empty lista}">	
							
			<h2>Listagem de produtos</h2>			
			  <table class="table table-striped">
			    <thead>
			      <tr>
			        <th>Produto</th>
			        <th>Quantidade</th>
			        <th>Preço</th>
			        <th>Total</th>
			        <th>Cliente</th>			        	        
			        <th></th>
			      </tr>
			    </thead>
			    <tbody> 
			    			    
			    <c:forEach var="p" items="${lista}">     
			      <tr>
			        <td>${p.descricao}</td>	
			        <td>${p.quantidade}</td>
			        <td>${p.valor}</td>	
			        <td>${p.total}</td>	
			        <td>${p.cliente.nome}</td>			        	       
			        <td><a href="/produto/${p.id}/excluir">Excluir</a></td>
			      </tr>
			    </c:forEach>
			      
			    </tbody>			    
			  </table>
		</c:if> 
		<c:if test="${empty lista}">
			  	<h2>Nenhum produto cadastrado!</h2>
		</c:if>
	</div>
	
</body>
</html>