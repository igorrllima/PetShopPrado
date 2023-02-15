<%@page import="br.com.petShopPrado.dao.TutorDAO"%>
<%@page import="br.com.petShopPrado.security.Cpf"%>
<jsp:useBean id="obj" class="br.com.petShopPrado.model.Tutor"/> 
<jsp:setProperty name="obj" property="*"/>

<% 
    TutorDAO dao = new TutorDAO();
    dao.cadastrar(obj);
    response.sendRedirect(".");
    
%>