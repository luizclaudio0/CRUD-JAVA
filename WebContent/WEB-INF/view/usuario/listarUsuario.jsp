<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<h3>Filtro de Usuarios</h3>
	<hr>
	<div>
		<form action="filter">
			<div class="form-group">
				<label for="inputCodigo">Nome</label> <input type="text"
					id="inputCodigo" class="form-control" name="nome"
					style="width: 100px;" maxlength="5" />
			</div>
			<div class="form-group">
				<label for="inputDescricao">Email</label> <input type="text"
					id="inputDescricao" class="form-control" name="email"
					style="width: 500px;" maxlength="100" />
			</div>
			<div class="form-group">
				<button type="reset" class="btn btn-default">&nbsp; Limpar
					&nbsp;</button>
				&nbsp;
				<button type="submit" class="btn btn-primary">&nbsp;
					Filtrar &nbsp;</button>
			</div>
		</form>
	</div>
	<hr>
	<hr>
	<h3>Lista de Usuarios</h3>
	<hr>
	<jsp:useBean id="dao" class="br.com.ifpe.estoque.model.ProdutoDao" />
	<table id="tabelaListaProduto"
		class="table table-striped table-bordered" border="2"
		style="text-align: center;">
		<thead>
			<tr>
				<th style="width: 5%; vertical-align: middle; text-align: center;">
					Nome</th>
				<th style="width: 25%; vertical-align: middle;">Email</th>
				<th style="width: 25%; vertical-align: middle;">Login</th>
				<th style="width: 25%; vertical-align: middle;">Senha</th>
			</tr>
		</thead>
		<c:forEach var="listaUsuario" items="${listaUsuario}">
			<tr>
				<td style="vertical-align: middle; text-align: center;">${listaUsuario.nome}</td>
				<td style="vertical-align: middle;">${listaUsuario.email}</td>
				<td style="vertical-align: middle;">${listaUsuario.login}</td>
				<td style="vertical-align: middle;">${listaUsuario.senha}</td>
				<td style="vertical-align: middle; text-align: center;"><a
					href="edit?id=${listaUsuario.id}">Alterar</a> &nbsp; &nbsp;<br>
					<a href="delete?id=${listaUsuario.id}">Remover</a> &nbsp; &nbsp;
					</td>

			</tr>
		</c:forEach>
	</table>

</body>
</html>