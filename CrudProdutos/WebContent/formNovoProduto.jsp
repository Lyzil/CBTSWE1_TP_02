<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:url value="/novoProduto" var="linkServletNovoProduto"/>
<!DOCTYPE html>
<html>
<head><title>Novo Produto</title>
<style>
    html, body {
        margin: 0;
    }

    body {
        font-family: Arial, sans-serif;
        background: linear-gradient(135deg, #74b9ff, #0984e3);
        background-repeat: no-repeat;
        background-attachment: fixed;
        text-align: center;
    }

    .container {
        width: 400px;
        margin: 50px auto;
        background: white;
        padding: 20px;
        border-radius: 10px;
        box-shadow: 0 2px 8px rgba(0,0,0,0.1);
    }

    h2 {
        text-align: center;
    }

    input {
        width: 100%;
        padding: 8px;
        margin: 8px 0;
        border-radius: 5px;
        border: 1px solid #ccc;
    }

    .btn {
        width: 100%;
        padding: 10px;
        background: #2ecc71;
        border: none;
        color: white;
        font-weight: bold;
        border-radius: 5px;
        cursor: pointer;
    }

    .btn:hover {
        background: #27ae60;
    }
    a {
        display: inline-block;
        margin-top: 20px;
        padding: 10px 15px;
        background: #00cec9;
        color: white;
        text-decoration: none;
        border-radius: 5px;
    }
</style>
</head>
<body>
<div class="container">
    <h2>Produto</h2>

    <form action="${linkServletNovoProduto}" method="post">
        <input type="text" name="nome" placeholder="Nome" required/>
        <input type="text" name="unidadeCompra" placeholder="Unidade por compra"/>
        <input type="text" name="descricao" placeholder="Descrição"/>
        <input type="text" name="qtdPrevistoMes" placeholder="Quantidade previsto por mes"/>
        <input type="text" name="precoMaxComprado" placeholder="Preço"/>
        <input type="hidden" name="id" value="${produto.id}" />
        

        <button class="btn">Salvar</button>
        <a href="index.jsp">Voltar</a>
    </form>
</div>
</body>
</html>