<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>Creditos</title>
    <style>
    
    html, body {
    height: 100%;
    margin: 0;
	}
	
    body {
    font-family: Arial, sans-serif;
    background: radial-gradient(circle at top, #2c3e50, #000000);
    display: flex;
    justify-content: center; 
    align-items: center;    
    color: #ecf0f1;
	}

    .container {
    	text-align: center;
    }

    h1 {
        margin-bottom: 20px;
    }

    ul {
        list-style: none;
        padding: 0;
        margin-bottom: 30px;
    }

    li {
        font-size: 18px;
        margin: 10px 0;
    }

    .btn {
        display: block;
        width: 250px;
        margin: 10px auto;
        padding: 12px;
        background: #636e72;
        color: white;
        text-decoration: none;
        border-radius: 8px;
        font-weight: bold;
        transition: 0.3s;
    }

    .btn:hover {
        background: #b2bec3;
        color: #2d3436;
    }
</style>
</head>
<body>
<div class="container">
    <h1>Créditos</h1>

    <ul>
        <li>Luiz Gustavo Verissimo Monteiro</li>
        <li>Auan Júlio Galvão dos Santos</li>
    </ul>

    <a href="index.jsp" class="btn">Voltar</a>
</div>
</body>
</html>