<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>Livro de Java, Android e muito mais - Casa do Código</title>
</head>
<body>
<h1>Lista de Produtos</h1>
<table>
    <tr>
        <td>Título</td>
        <td>Descrição</td>
        <td>Páginas</td>
    </tr>
    <c:forEach items="${produtos}" var="produto">
        <tr>
            <td>${produto.titulo}</td>
            <td>${produto.descricao}</td>
            <td>${produto.paginas}</td>
        </tr>
    </c:forEach>
</table>
</body>
</html>
