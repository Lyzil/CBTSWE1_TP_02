<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<c:url value="/alteraProduto" var = "linkServletNovoProduto"/>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<form action="${linkServletNovoProduto}" method="post">
	
		Nome: <input type="text" name ="nome" value="${PRODUTOS.nome}"/>
		Descrição: <input type="text" name ="descricao" value="${PRODUTOS.descrição}"/>
		Unidades compradas: <input type="text" name ="unidadesCompradas" value="${PRODUTOS.unidadeCompra}"/>
		Quantidade por mes: <input type="text" name ="quantidadePorMes" value="${PRODUTOS.qtdPrevistoMes}"/>
		Orçamento maximo: <input type="text" name ="orçamentoMaximo" value="${PRODUTOS.precoMaxComprado:}"/>
		<input type="hidden" name="id" value="${PRODUTOS.id}"/>
		<input type="submit"/>
	</form>
</body>
</html>