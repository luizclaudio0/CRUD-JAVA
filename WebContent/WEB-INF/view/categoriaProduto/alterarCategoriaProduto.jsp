<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<hr>
	<h3>Alterar Categoria Produto</h3>
	<hr>
	<div style="text-align: center; color: red;">${mensagem}</div>
	<form action="update" method="post">
		<input type="hidden" name="id" value="${categoriaProduto.id}">
		<div class="form-group">
		<input type="hidden" name="id" value="${produto.id}">
			<label for="inputCodigo">Código</label> <input type="text"
				id="inputCodigo" class="form-control" name="codigo"
				style="width: 100px;" maxlength="5" required="required"
				value="${categoriaProduto.codigo}" />
		</div>
		<div class="form-group">
			<label for="inputCodigo">Descrição</label> <input type="text"
				id="inputCodigo" class="form-control" name="descricao"
				style="width: 100px;" maxlength="5" required="required"
				value="${categoriaProduto.descricao}" />
		</div>
		<input type="submit" value="alterar">
		</form> 
</body>
</html>