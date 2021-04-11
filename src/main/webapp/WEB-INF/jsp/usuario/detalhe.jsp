<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.1.3/css/bootstrap.min.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/ionicons/2.0.1/css/ionicons.min.css">
<meta charset="ISO-8859-1">
<title>Cadastro</title>
<style> 
@import url('https://fonts.googleapis.com/css?family=Varela+Round');
html, body {
    overflow-x: hidden;
    height: 100%;
}
body {
    background: linear-gradient(#8084bd 0%, #ddeded 100%);
    padding: 0;
    margin-left: 60px;
    margin-right: 60px;
    font-family: 'Varela Round', sans-serif;
}

.cadastro {
  max-width:700px;  
  width:90%;  
  background-color:#010003;
  padding:40px;
  border-radius:4px;
  transform:translate(-50%, -50%);
  position:relative;
  top:35%;  
  left:50%;     
  color:#fff;
  box-shadow:3px 3px 4px rgba(0,0,0,0.2);
}
.lista{
  transform:translate(-50%, -50%);
  position:relative;
  top:30%;  
  left:50%;     
  color:black;
  box-shadow:3px 3px 4px rgba(0,0,0,0.2);
}
</style>

</head>
	<body class="container">		
		           
        <div class="cadastro">
            <form action="/usuario/incluir" method="post">
            
                <h2>Criar Conta</h2> 
                               
                <div class="form-group">Nome:<input class="form-control" type="text" name="nome"></div>
                <div class="form-group">Git:<input class="form-control" type="text" name="git"></div>                
                <div class="form-group">E-mail:<input class="form-control" type="email" name="email"></div>                
                <div class="form-group">Senha:<input class="form-control" type="password" name="senha"></div>
                
                <button class="btn btn-primary btn-block" type="submit">Criar Conta</button></br>
                
                <div class="text-center w-full p-t-115">
                    <span class="txt1">Já é usuário?</span>
                    <a href="/">Clique aqui e faça login!</a>
				</div>               
                
            </form>
         </div>         
            
         <div class="lista">
	        <c:if test="${not empty lista}">	
								
				<h2>Listagem de Usuários</h2>			
				  <table class="table">
				    <thead>
				      <tr>
				      	<th>Id</th>
				      	<th>E-mail</th>
				      	<th>GIT</th> 
				        <th>Nome</th>		        			         			        			              
				        <th></th>
				      </tr>
				    </thead>
				    <tbody> 
				    			    
				<c:forEach var="u" items="${lista}">     
				      <tr>		
				      	<td>${u.id}</td>
				      	<td>${u.email}</td>	
				      	<td>${u.git}</td>		      	
				      	<td>${u.nome}</td>
				      			        		            	        
				        <td><a href="/usuario/${u.id}/excluir">Excluir</a></td>
				      </tr>
				</c:forEach>
				      
				    </tbody>			    
				  </table>
			</c:if>
			 
			<c:if test="${empty lista}">
				  	<h2>Nenhum usuário cadastrado!</h2>
			</c:if>
		</div> 	         
        
              
</body>
</html>