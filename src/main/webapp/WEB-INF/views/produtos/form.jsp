<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="s" uri="http://www.springframework.org/tags" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>Livro de Java, Android e muito mais - Casa do Código</title>
</head>
<body>
<h1>Casa do Código</h1>
<%--@elvariable id="produto" type="br"--%>
<form:form action="${s:mvcUrl('PC#gravar').build() }" method="POST" commandName="produto" enctype="multipart/form-data">
    <div>
        <label>Título</label>
        <form:input path="titulo"/>
        <form:errors path="titulo"/>
    </div>
    <div>
        <label>Descrição</label>
        <form:textarea path="descricao" rows="10" cols="20"/>
        <form:errors path="descricao"/>
    </div>
    <div>
        <label>Páginas</label>
        <form:input path="paginas"/>
        <form:errors path="paginas"/>
    </div>
    <div>
        <label>Data de Lançamento</label>
        <form:input path="dataLancamento" />
        <form:errors path="dataLancamento" />
    </div>
    <c:forEach items="${tipos}" var="tipoPreco" varStatus="status">
        <div>
            <label>${tipoPreco}</label>
            <form:input path="precos[${status.index}].valor" />
            <form:hidden path="precos[${status.index}].tipo" value="${tipoPreco}"/>
        </div>
    </c:forEach>
    <div>
        <label>Sumário</label>
        <input name="sumario" type="file">
    </div>
    <button type="submit">Cadastrar</button>
</form:form>
</body>
</html>
