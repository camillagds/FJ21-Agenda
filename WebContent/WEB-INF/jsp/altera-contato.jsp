<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<%@taglib tagdir="/WEB-INF/tags" prefix="caelum"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Adiciona Contatos</title>
<link href="css/jquery.css" rel="stylesheet">
<script src="js/jquery.js"></script>
<script src="js/jquery-ui.js"></script>
</head>
<body>
	<c:import url="cabecalho.jsp"></c:import>

	<h1>Alterar Contato</h1>
	<hr />
		<form action="mvc?logica=AlteraContatoLogic" method="post">
			<input hidden="true" name="id" value="${contato.id}" /><br />
			Nome: <input type="text" name="nome" value="${contato.nome}" /><br /> 
			E-mail: <input type="text" name="email" value="${contato.email}" /><br /> 
			Endereço: <input type="text" name="endereco" value="${contato.endereco}" /><br /> 
			Data Nascimento: <input type="text" name="dataNascimento" value="<fmt:formatDate value="${contato.dataNascimento.time}"
						pattern="dd/MM/yyyy" />" />
			<br /> <input type="submit" value="Gravar" /><br />
		</form>
	<c:import url="rodape.jsp"></c:import>

</body>
</html>