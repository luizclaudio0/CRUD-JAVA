<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/resources/bootstrap/css/bootstrap.min.css" />
<script type="text/javascript"
	src="<%=request.getContextPath()%>/resources/bootstrap/js/bootstrap.min.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<hr>
	<h3>Alterar Usuario</h3>
	<hr>
	<div style="text-align: center; color: red;">${mensagem}</div>
	<form action="update" method="post">
		<input type="hidden" name="id" value="${usuario.id}">
		<div class="form-group">
			<label for="inputCodigo">Nome</label> <input type="text"
				id="inputNome" class="form-control" name="nome"
				style="width: 100px;" maxlength="5" required="required"
				value="${usuario.nome}" />
		</div>
		<div class="form-group">
			<label for="inputCodigo">Email</label> <input type="text"
				id="inputEmail" class="form-control" name="email"
				style="width: 100px;" maxlength="5" required="required"
				value="${usuario.email}" />
		</div>
		<div class="form-group">
			<label for="inputCodigo">Login</label> <input type="text"
				id="inputLogin" class="form-control" name="login"
				style="width: 100px;" maxlength="5" required="required"
				value="${usuario.login}" />
		</div>
		<div class="form-group">
			<label for="inputCodigo">Senha</label> <input type="text"
				id="inputSenha" class="form-control" name="senha"
				style="width: 100px;" maxlength="5" required="required"
				value="${usuario.senha}" />
		</div>

		<input type="submit" value="alterar">
	</form>
</body>
</html>