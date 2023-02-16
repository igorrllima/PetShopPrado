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
        //out.print("bem vindo "+login+" deu certo");
        url = "/petShopPrado/cadastrado/loginDeuCerto.jsp";
    }else {
        url = "/petShopPrado/home/index.jsp";
        session.setAttribute("loginbemsucedido", "Credenciais incorretas.");
    }
    response.sendRedirect(url);
%>