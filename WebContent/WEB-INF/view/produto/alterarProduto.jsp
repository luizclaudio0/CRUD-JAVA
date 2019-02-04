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
	<h3>Alterar Produto</h3>
	<hr>
	<div style="text-align: center; color: red;">${mensagem}</div>
	<form action="update" method="post">
		<input type="hidden" name="id" value="${produto.id}">
		<div class="form-group">
			<label for="inputCodigo">Código</label> <input type="text"
				id="inputCodigo" class="form-control" name="codigo"
				style="width: 100px;" maxlength="5" required="required"
				value="${produto.codigo}" />
		</div>
		<div class="form-group">
			<label for="inputCodigo">Descrição</label> <input type="text"
				id="inputCodigo" class="form-control" name="descricao"
				style="width: 100px;" maxlength="5" required="required"
				value="${produto.descricao}" />
		</div>
		<label for="categoriaProduto">Categoria</label> <br /> <select
			id="categoriaProduto" name="categoriaProduto">
			<option value="">Selecione</option>
			<c:forEach items="${listaCategoriaProduto}" var="obj">
				<option value="${obj.id}"
					<c:if test="${obj.id eq produto.categoriaProduto.id}">selected="selected"</c:if>>
					${obj.descricao}</option>
			</c:forEach>
		</select>
		<div class="form-group">
			<label for="inputCodigo">PrecoCusto</label> <input type="text"
				id="inputCodigo" class="form-control" name="precoCusto"
				style="width: 100px;" maxlength="5" required="required"
				value="${produto.precoCusto}" />
		</div>
		<div class="form-group">
			<label for="inputCodigo">PrecoVenda</label> <input type="text"
				id="inputCodigo" class="form-control" name="precoVenda"
				style="width: 100px;" maxlength="5" required="required"
				value="${produto.precoVenda}" />
		</div>
		<div class="form-group">
			<label for="inputCodigo">Garantia</label> <input type="text"
				id="inputCodigo" class="form-control" name="garantia"
				style="width: 100px;" required="required"
				value="<fmt:formatDate value='$
{produto.garantia}' pattern='dd/MM/yyyy' "/> 
		</div>
		<div class="form-group">
			<label for="inputCodigo">Imagem</label> <input type="file"
				id="inputCodigo" class="form-control" name="imagem"
				style="width: 100px;" maxlength="5" required="required"
				value="${produto.imagem}" />
		</div>

		<input type="submit" value="alterar">
	</form>
</body>
</html>