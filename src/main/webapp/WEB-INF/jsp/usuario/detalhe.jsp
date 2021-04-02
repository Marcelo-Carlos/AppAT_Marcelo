<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.1.3/css/bootstrap.min.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/ionicons/2.0.1/css/ionicons.min.css">
<meta charset="ISO-8859-1">
<title>Insert title here</title>
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
  max-width:700px;  
  width:90%;  
  background-color:#010003;
  padding:40px;
  border-radius:4px;
  transform:translate(-50%, -50%);
  position:relative;
  top:50%;  
  left:50%;    
  color:#fff;
  box-shadow:3px 3px 4px rgba(0,0,0,0.2);
}

</style>
</head>
	<body>  
		           
        <div class="cadastro">
            <form action="/usuario/incluir" method="post">
            
                <h2 class="newConta">Criar Conta</h2> 
                               
                <div class="form-group">Nome:<input class="form-control" type="text" name="nome"></div>
                <div class="form-group">Git:<input class="form-control" type="text" name="git"></div>                
                <div class="form-group">E-mail:<input class="form-control" type="email" name="email"></div>
                
                <div class="form-group">Senha:<input class="form-control" type="password" name="senha"></div>
                
                <div class="form-group"><button class="btn btn-primary btn-block" type="submit">Criar Conta</button></div> 
                
                <div class="text-center w-full p-t-115">
                    <span class="txt1">Já é usuário?</span>
                    <a href="/">Clique aqui e faça login!</a>
				</div>               
                
            </form>            
        </div> 
              
	</body>
</html>