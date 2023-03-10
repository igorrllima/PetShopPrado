<%@page import="br.com.petShopPrado.security.Login"%>
<%@page import="br.com.petShopPrado.model.Tutor"%>
<%@page import="br.com.petShopPrado.dao.TutorDAO"%>
<!DOCTYPE html>
<html>

    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta charset="UTF-8">
        <link rel="stylesheet" href="consulta.css">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"
              integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
                integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
        crossorigin="anonymous"></script>
        <title>PetShopPrado</title>
    </head>

    <body>
        <%
            Tutor login = (Tutor) session.getAttribute("login");
            if(login == null){
                response.sendRedirect("/petShopPrado/login/index.jsp");
            }     
        %>
        <header class="p-3 bg-dark text-white">
            <div class="container">
                <div class="d-flex flex-wrap align-items-center justify-content-center justify-content-lg-start">
                    <a href="/" class="d-flex align-items-center mb-2 mb-lg-0 text-white text-decoration-none">
                        <svg class="bi me-2" width="40" height="60" role="img" aria-label="Bootstrap">
                        <use xlink:href="#bootstrap" />
                        </svg>
                    </a>

                    <ul class="nav col-12 col-lg-auto me-lg-auto mb-2 justify-content-center mb-md-0">
                        <a class="navbar-brand" href="/petShopPrado/home/index.jsp">
                            <img src="/petShopPrado/assets/icon/icon-osso2.png" alt="" width="40" height="40" class="d-inline-block me-2 ">
                            PetShopPrado
                        </a>
                        <li><a href="/petShopPrado/homelogin/index.jsp" class="nav-link px-4 text-white">Home</a></li>
                        <li><a href="/petShopPrado/servico/index.jsp" class="nav-link px-4 text-white">Solicitar Servi?o</a></li>
                        <li><a href="/petShopPrado/animal/index.jsp" class="nav-link px-4 text-white">Cadastrar Pet</a></li>
                    </ul>
                    <div class="text-end">
                        <a href="output.jsp" class="btn btn-warning px-3">Sair</a>
                    </div>
                </div>
            </div>
        </header>

        <section class="offer" id="offer">
            <div class="box-container">
                <div class="box">
                    <img src="https://petfood-9ss2.vercel.app/images/offer-img1.webp" alt="">
                    <div class="content">
                        <span>Cadastre seu Pet</span>
                        <h5>Queremos conhece-lo !</h5>
                        <a href="/petShopPrado/animal/index.jsp" class="btn">Cadastrar</a>
                    </div>
                </div>
                <div class="box">
                    <img src="https://petfood-9ss2.vercel.app/images/offer-img2.webp" alt="">
                    <div class="content">
                        <span>Agende um Servi?o</span>
                        <h5>Seu Pet merece !</h5>
                        <a href="/petShopPrado/servico/index.jsp" class="btn">Agendar</a>
                        <br>
                        <a href="/petShopPrado/consulta/index.jsp" class="btn">Consultar Agenda</a>
                    </div>
                </div>
            </div>
        </section>
    </body>
</html>