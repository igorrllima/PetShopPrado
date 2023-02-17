<%@page import="br.com.petShopPrado.dao.TutorDAO"%>
<%@page import="br.com.petShopPrado.model.Tutor"%>
<jsp:useBean id="obj" class="br.com.petShopPrado.security.Login"/> 
<jsp:setProperty name="obj" property="*"/>
<%
    out.print(obj.getLogin());
    out.print(obj.getSenha());
    String url = null;

   if (obj.authenticate()) {
        session.setAttribute("loginbemsucedido", "");
        session.setAttribute("login", obj);
        session.setAttribute("login", new TutorDAO().getTutor(obj.getLogin()));
        url = "/petShopPrado/homelogin/index.jsp";
    }else {
        url = "/petShopPrado/login/index.jsp";
        session.setAttribute("loginbemsucedido", "<script>window.alert('Email ou Senha Incorretos.');</script>");
    }
    response.sendRedirect(url);
%>