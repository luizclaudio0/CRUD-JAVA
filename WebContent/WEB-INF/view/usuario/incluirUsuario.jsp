<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/resources/bootstrap/css/bootstrap.min.css" />
<script type="text/javascript"
	src="<%=request.getContextPath()%>/resources/bootstrap/js/bootstrap.min.js"></script>
<title>Inserir Usuario</title>
</head>

<body style="margin-left: 5%; margin-right: 5%;">
	<br />
	<div style="text-align: center; color: red;">${mensagem}</div>
	<hr>
	<h3>Incluir Usuario</h3>
	<hr>
	<form action="save" method="post">
		<div class="form-group">
			<label for="inputCodigo">Nome</label> <input type="text"
				id="inputNome" class="form-control" name="nome"
				style="width: 100px;" maxlength="5" required="required" />
		</div>
		<p>
			Email: <br /> <input type="text" name="email" />
		</p>
		
		<p>
			Login: <br /> <input type="text" name="login" />
		</p>
		<p>
			Senha: <br /> <input type="text" name="senha" />
		</p>
		<input type="submit" value="enviar">
	</form>
</body>
</html>