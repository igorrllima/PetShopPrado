<%@page import="br.com.petShopPrado.dao.TutorDAO"%>
<jsp:useBean id="obj" class="br.com.petShopPrado.model.Tutor"/> 
<jsp:setProperty name="obj" property="*"/>

<% 
    String email = request.getParameter("email");
    TutorDAO dao = new TutorDAO();
    dao.getTutor(obj);
    response.sendRedirect(".");
    
%>
