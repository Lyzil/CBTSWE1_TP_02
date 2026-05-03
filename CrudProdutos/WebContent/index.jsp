<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>Início - Gerenciador de Produtos</title>
    <style>
    html, body {
        margin: 0;
    }

    body {
        font-family: Arial, sans-serif;
        background: linear-gradient(135deg, #74b9ff, #0984e3);
        background-repeat: no-repeat;
        background-attachment: fixed;
        color: white;
        text-align: center;
    }

    .container {
        margin-top: 80px;
    }

    h1 {
        margin-bottom: 30px;
    }

    .btn {
        display: block;
        width: 250px;
        margin: 10px auto;
        padding: 12px;
        background: white;
        color: #0984e3;
        text-decoration: none;
        border-radius: 8px;
        font-weight: bold;
        transition: 0.3s;
    }

    .btn:hover {
        background: #dfe6e9;
    }
</style>
</head>
<body>
<div class="container">
    <h1>Sistema de Produtos</h1>

    <a href="listaProdutos" class="btn">Ver Produtos</a>
    <a href="formNovoProduto.jsp" class="btn">Cadastrar Produto</a>
    <a href="creditos.jsp" class="btn">Créditos</a>
</div>
    
    <p><i>Nota: Para visualizar a tabela atualizada com os botões de ação, utilize o botão "Ver Produtos" acima.</i></p>

</body>
</html>