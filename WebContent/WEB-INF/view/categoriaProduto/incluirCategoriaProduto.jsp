<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<body>
	<hr>
	<h3>Incluir CategoriaProduto</h3>
	<hr>
	<form action="save" method="post">
		<p>
			C�digo: <br /> <input type="text" name="codigo" />
		</p>
		<p>
			Descri��so.: <br /> <input type="text" name="descricao" />
		</p>
		<input type="submit" value="enviar">
		</form>
</body>


</html>