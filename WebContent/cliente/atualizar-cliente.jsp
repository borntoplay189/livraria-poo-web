<%@page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html><html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Altera��o em Cliente</title>

<style type="text/css">
.tituloCampo {
	text-align: right;
	color: blue;
}
</style>

<script type="text/javascript">
function validar()
{
	var f = document.forms[0];
	if (f.nome.value == '')
	{
		alert('O campo NOME n�o foi preenchido.');
		f.nome.focus();
		return false;
	}
	return true;
}
</script>
<jsp:useBean id="cliente" class="modelo.dominio.Cliente" scope="request"></jsp:useBean>
</head>
<%
	String mensagem = (String) request.getAttribute("mensagem");
	if (mensagem != null)
		out.println("<h3>" + mensagem + "</h3>");
%>
<body>
	<form action="atualizarCliente" method="post" onsubmit="return validar()">
		<table>
			<tr>
				<td class="tituloCampo">Id:</td>
				<td><input type="text" name="id" value='<jsp:getProperty property="id" name="cliente"/>' size="30" maxlength="80"></td>
			</tr>
			<tr>
				<td class="tituloCampo">Login:</td>
				<td><input type="text" name="login" value='<jsp:getProperty property="login" name="cliente"/>' size="30" maxlength="80"></td>
			</tr>
			<tr>
				<td class="tituloCampo">Nome:</td>
				<td><input type="text" name="nome" value='<jsp:getProperty property="nome" name="cliente"/>' size="30" maxlength="80"></td>
			</tr>
			<tr>
				<td></td>
				<td><input type="submit" value="Enviar"></td>
			</tr>
		</table>
	</form>
	<br>
	<br>
	<a href="exibirCatalogo">Voltar</a>
	<a href="logout">Sair</a>
</body>
</html>








