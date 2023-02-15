<%@page import="br.com.petShopPrado.dao.AnimalDAO" %>
<%@page import="br.com.petShopPrado.model.Animal" %>
<jsp:useBean id="obj" class="br.com.petShopPrado.model.Animal"/>
<jsp:setProperty name="obj" property="*"/>

<%
    AnimalDAO dao = new AnimalDAO();
    dao.cadastrarAnimal(obj);
    response.sendRedirect(".");

%>