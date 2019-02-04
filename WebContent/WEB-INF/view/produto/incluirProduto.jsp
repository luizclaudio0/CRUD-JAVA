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
<title>Insert title here</title>
</head>

<body style="margin-left: 5%; margin-right: 5%;">
	<c:import url="index.jsp" />
	<br />
	<div style="text-align: center; color: red;">${mensagem}</div>
	<hr>
	<h3>Incluir Produto</h3>
	<hr>
	<form action="save" method="post" enctype="multipart/form-data">
		<div class="form-group">
			<label for="inputCodigo">Código</label> <input type="text"
				id="inputCodigo" class="form-control" name="codigo"
				style="width: 100px;" maxlength="5" required="required" />
		</div>
		<p>
			Descrição: <br /> <input type="text" name="descricao" />
		</p>
		<label for="categoriaProduto">Categoria</label> <br /> <select
			id="categoriaProduto" name="categoriaProduto">
			<option value="">Selecione</option>
			<c:forEach items="${listaCategoriaProduto}" var="obj">
				<option value="${obj.id}">${obj.descricao}</option>
			</c:forEach>
		</select>
		<p>
			Preco de Custo: <br /> <input type="text" name="precoCusto" />
		</p>
		<p>
			Preco de Venda: <br /> <input type="text" name="precoVenda" />
		</p>
		<p>
			garantia: <br /> <input type="text" name="garantia" />
		</p>
		<p>
			Foto do Produto: <br /> <input type="file" name="file">
		</p>
		<input type="submit" value="enviar">
	</form>
</body>
</html>