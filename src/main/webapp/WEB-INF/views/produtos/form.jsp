<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Livro de Java, Android e muito mais - Casa do Código</title>
</head>
<body>
    <form action="/casadocodigo/produtos" method="POST">
        <div>
            <label> Titulo</label>
            <input type="text" name="titulo">
        </div>
        <div>
            <label>Descrição</label>
            <textarea rows="10" cols="20" name="descricao"></textarea>
        </div>
        <div>
            <label>Páginas</label>
            <input type="text" name="paginas">
        </div>
        <button type="submit">Cadastrar</button>
    </form>
</body>
</html>
