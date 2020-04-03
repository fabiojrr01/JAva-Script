<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
<title>Cadastro Novo Usuario</title>

</head>
<body class="text-center" align="center" bgcolor="silver" >
	<form style="background-color :silver ">
		<h1>Cadastro de Usuarios</h1>
			<div class="form-group row">
    		<label for="nome" class="col-sm-2 col-form-label">Nome</label>
    		<div class="col-sm-10">
      		<input type="text" class="form-control" id="nome" placeholder="Nome">
    		</div>
			<div class="form-group row">
    		<label for="email" class="col-sm-2 col-form-label">Email</label>
    		<div class="col-sm-10">
      		<input type="email" class="form-control" id="email" placeholder="Email">
    		</div>
    		<div class="form-group row">
    		<label for="cpf" class="col-sm-2 col-form-label">CPF</label>
    		<div class="col-sm-10">
    		<div class="col-sm-10">
      		<input type="text" class="form-control" id="cpf" placeholder="CPF">
    		</div>
  			</div>
  			<div class="form-group row">
    		<label for="password" class="col-sm-2 col-form-label">Senha</label>
    		<div class="col-sm-10">
     		<input type="password" class="form-control" id="senha" placeholder="Senha">
   			</div>
 			</div>
 			<br/>
	 		<input type="submit" value="Enviar" name="Enviar" onclick="addUsuario()"></input>
	 	
	</form>

</body>
<script type="text/javascript">
	
	function addUsuario (){
		var nome = document.getElementById("nome").value;
		var email = document.getElementById("email").value;
		var cpf = document.getElementById("cpf").value;
		var senha = document.getElementById("senha").value;
		var usuario = {
			
		}
		if ( nome == "" && email =="" && cpf == "" && senha == "" ) {
			alert ("Preencha os Campos!")
			window.location.href = "Cadastro.jsp";
		}
		else{
			usuario.nome = nome ;
			usuario.email=email;
			usuario.cpf = cpf ;
			usuario.senha=senha;
			alert("Cadastro Realizado com Sucesso!")
			var json = JSON.stringify(usuario);
			localStorage.setItem(usuario.cpf, json);
			
			
			contador = contador +1;
			console.log(usuario)
			console.log(contador)
		} 
		event.preventDefault();
	}
		
	
	
	
	
     
</script>
</html>