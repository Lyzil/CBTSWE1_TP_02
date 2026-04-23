<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix="c" %>

<c:url value="/novoProduto" var = "linkServletNovoProduto"/>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	Nome: <input type="text" name ="nome" value="nome"/>
	Descrição: <input type="text" name ="descricao" value="descricao"/>
	Unidades compradas: <input type="text" name ="unidadesCompradas" value="unidadesCompradas"/>
	Quantidade por mes: <input type="text" name ="quantidadePorMes" value="quantidadePorMes"/>
	Orçamento maximo: <input type="text" name ="orçamentoMaximo" value="orçamentoMaximo"/>
	<input type="submit"/>
</body>
</html>