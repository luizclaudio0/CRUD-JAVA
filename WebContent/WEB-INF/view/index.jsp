<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
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
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

</head>
<body>
<form action="efetuarLogin" method="post">
<br/>
<div class="form-group" style="text-align: left;">
<label for="inputLogin">Login</label>
<input type="text" class="form-control" id="inputLogin" name="login" value="${usuario.login}" maxlength="20" required="required" tabindex="1">
</div>
<div class="form-group" style="text-align: left;">
<label for="inputSenha">Senha</label>
<input type="password" class="form-control" id="inputSenha" name="senha" value="${usuario.senha}" maxlength="20" required="required" tabindex="2">
</div>
<br/>
<button type="submit" class="btn btn-primary" tabindex="3" style="width: 100%;
height: 50px;"> &nbsp; ENTRAR &nbsp; </button>
</form>
</body>
</html>