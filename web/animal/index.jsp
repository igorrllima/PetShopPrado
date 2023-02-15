<%-- 
    Document   : index.jsp
    Created on : 14 de fev. de 2023, 19:35:56
    Author     : Julia Briones Sales
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <form method="POST" action="output.jsp">
             <div class="form-group col-md-6">
                <label for="especie">Especie</label>
                <input type="text" class="form-control" id="inputEspecie" placeholder="" name="especie">
            </div>
            <div class="form-group col-md-6">
                <label for="nome">Nome</label>
                <input type="text" class="form-control" id="inputNome" placeholder="" name="nome">
            </div>
            <button type="submit">Cadastrar</button>
        </form>
        
        <h1>Hello World!</h1>
    </body>
</html>
