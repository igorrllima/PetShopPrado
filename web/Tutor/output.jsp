<%@page import="br.com.petShopPrado.dao.TutorDAO"%>
<%@page import="br.com.petShopPrado.security.Cpf"%>
<jsp:useBean id="obj" class="br.com.petShopPrado.model.Tutor"/> 
<jsp:setProperty name="obj" property="*"/>

<% 
    if(!Cpf.validarCpf(obj.getCpf())){
        session.setAttribute("cpfvalido", "<script>window.alert('CPF inválido, tente novamente.');</script>");
        response.sendRedirect("/petShopPrado/tutor/index.jsp");
    }else{
        TutorDAO dao = new TutorDAO();
        dao.cadastrar(obj);
        session.setAttribute("cpfvalido", "<script>window.alert('Cadastro efetuado com sucesso.');</script>");
        response.sendRedirect("/petShopPrado/tutor/index.jsp");
    } 
%>