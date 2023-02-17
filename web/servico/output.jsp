<%@page import="br.com.petShopPrado.dao.ServicoDAO"%>
<%@page import="br.com.petShopPrado.model.Tutor"%>
<%@page import="br.com.petShopPrado.model.Animal"%>
<jsp:useBean id="obj" class="br.com.petShopPrado.model.Servico"/> 
<jsp:setProperty name="obj" property="*"/>

<% 
    ServicoDAO dao = new ServicoDAO();
    Tutor tutor = (Tutor) session.getAttribute("login");
    Animal animal = (Tutor) session.getAttribute("login");
    dao.cadastrarServico(obj);
    response.sendRedirect("/petShopPrado/servico/index.jsp");
    
%>