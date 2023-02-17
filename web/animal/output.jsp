<%@page import="br.com.petShopPrado.dao.AnimalDAO" %>
<%@page import="br.com.petShopPrado.model.Tutor" %>
<%@page import="br.com.petShopPrado.model.Animal" %>
<jsp:useBean id="obj" class="br.com.petShopPrado.model.Animal"/>
<jsp:setProperty name="obj" property="*"/>

<%
    AnimalDAO dao = new AnimalDAO();
    Tutor tutor = (Tutor) session.getAttribute("login");
    obj.setTutor(tutor);
    dao.cadastrarAnimal(obj);
    response.sendRedirect("/petShopPrado/animal/index.jsp");

%>