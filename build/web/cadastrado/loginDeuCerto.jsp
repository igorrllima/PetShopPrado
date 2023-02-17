<%@page import="br.com.petShopPrado.security.Login"%>
<%@page import="br.com.petShopPrado.model.Tutor"%>
<%@page import="br.com.petShopPrado.dao.TutorDAO"%>

<%
    Tutor login = (Tutor) session.getAttribute("login");
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <label for="nome">Nome</label>
        <input type="text" id="nome" name="nome" value="<%= login.getNome()%>" disabled><br><br>
        <label for="cpf">CPF:</label>
        <input type="text" id="cpf" name="cpf" value="<%= login.getCpf()%>" disabled><br><br>
        
    </body>
</html>
