<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" isELIgnored="false"%>

<%@ taglib prefix="mt" tagdir="/WEB-INF/tags"%>

<mt:admin_tamplate title="Projeto" breadcrumb="Usuários">

	<jsp:attribute name="content">
	
	<section class="content">
			
		  <section class="content-header">
			<p> Listagem de Usuários</p>   
			 <a href='http://localhost:8081/agenda-acme/Cadastro.jsp' type="button" class="btn btn-primary">Cadastrar Novo Usuario</a>
			 <a href='http://localhost:8081/agenda-acme/Remover%20Usuario.jsp' type="button" class="btn btn-primary">Remover Usuario</a>
			 <a href='http://localhost:8081/agenda-acme/Visualizar%20Usuarios.jsp' type="button" class="btn btn-primary">Visualizar Usuario</a>
			 <a href='http://localhost:8081/agenda-acme/EditarUsuario.jsp' type="button" class="btn btn-primary">Editar Usuario</a>
	     </section>
     
     </section>

</jsp:attribute>

</mt:admin_tamplate>