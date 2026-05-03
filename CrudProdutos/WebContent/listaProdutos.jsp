<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>Lista de Produtos</title>
    <style>
    
    html, body {
        margin: 0;
    }

    body {
        font-family: Arial, sans-serif;
        background: linear-gradient(135deg, #74b9ff, #0984e3);
        background-repeat: no-repeat;
        background-attachment: fixed;
    }

    .container {
        max-width: 900px;
        margin: 40px auto;
        background: #fff;
        padding: 20px;
        border-radius: 10px;
        box-shadow: 0 2px 8px rgba(0,0,0,0.1);
    }

    h2 {
        text-align: center;
        margin-bottom: 20px;
    }

    .produto {
        padding: 15px;
        border-bottom: 1px solid #eee;
    }

    .produto:last-child {
        border-bottom: none;
    }

    .actions a {
        margin-right: 10px;
        text-decoration: none;
        font-size: 0.9em;
        color: white;
        padding: 5px 10px;
        border-radius: 5px;
    }

    .editar { background-color: #3498db; }
    .remover { background-color: #e74c3c; }

    .footer {
        margin-top: 20px;
        text-align: center;
    }

    .btn {
        background: #2ecc71;
        color: white;
        padding: 10px 15px;
        text-decoration: none;
        border-radius: 5px;
        margin: 5px;
    }
</style>
</head>
<body>
<div class="container">
    <h2> Produtos Cadastrados</h2>

    <c:forEach items="${produtos}" var="produto">
        <div class="produto">
            <strong>${produto.nome}</strong><br/>
            ${produto.descricao}<br/>
            <small>
                Unidade: ${produto.unidadeCompra} | 
                Preço: R$ ${produto.precoMaxComprado}
            </small>
		<hr>
            <div class="actions">
                <a class="editar" href="mostraProduto?id=${produto.id}">Editar</a>
                <a class="remover" href="removeProduto?id=${produto.id}">Remover</a>
            </div>
        </div>
    </c:forEach>

    <div class="footer">
        <a class="btn" href="formNovoProduto.jsp">+ Novo Produto</a>
        <a class="btn" href="index.jsp">Início</a>
    </div>
</div>
</body>
</html>