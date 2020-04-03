<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Remover Usuario</title>
</head>
<body class="text-center" align="center" bgcolor="silver">
	<form style="background-color :silver ">
		<h1>Remover  Usuarios</h1>
    		</div>
			
    		<label id="remover" name="remover">CPF</label>
    		
      		<input id="remover" name="remover" type="text">
      		<button type= "submit" onclick= "remover()" class="btn btn-info btn-sm" >Remover</button>
    		
    		
    		
    	

		
    	

</body>
<script>
function remover(){
	var cpf = document.getElementById("remover").value;
	
	let usuario = []
	
	for (var b = 0; b < localStorage.length; b++) {
		
		var recebe = JSON.parse(localStorage.getItem("cadastrado"+b))
	
		usuario.push(recebe)
	}
	
	console.log(usuario)
		var i = 0;
		var index = 0;
		for (i = 0; i < usuario.length; i++) {
			if(cpf == usuario[i].cpf){
				console.log("encontrado")
				index += i;
				console.log(index)
				
				localStorage.removeItem("Usuario Cadastrado"+index);
			}else{
				console.log("Usuario não encontrado")
			}
			
		}
		
		
	
}
</script>
</html>