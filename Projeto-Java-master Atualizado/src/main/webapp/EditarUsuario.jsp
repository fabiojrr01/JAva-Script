<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Editar Usuario</title>
<body class="text-center" align="center" bgcolor="silver">
	<form style="background-color :silver ">
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
 			<input type="submit" value="editar" name="editar" onclick="editar()"></input>
 		</div>
 		</form>
</head>
<body>

</body>
<script type="text/javascript">
	function editar(){
	
 	var nome = document.getElementById("nome").value;
	var email = document.getElementById("email").value;
	var idade = document.getElementById("idade").value;
	var cpf = document.getElementById("cpf").value;
	
	
	let usuario = []
	
	for (var b = 0; b < localStorage.length; b++) {
		
		var recebe = JSON.parse(localStorage.getItem("cadastrado"+b))
		
		usuario.push(recebe)
	}
	
	
		for (i = 0; i < usuario.length; i++) {
			if(cpf == usuario[i].cpf){
				console.log("encontrado")
				index += i;
				
				var NovoUsuario = {
						nome: nome,
						email: email,
						idade: idade,
						cpf: cpf
					}
				
				var json = JSON.stringify(NovoUsuario);
				localStorage.setItem("cadastrado"+index, json);
			}else{
				console.log("não encontrado")
			}
			
		}
		
		event.preventDefault();
	
}

</script>


</html>