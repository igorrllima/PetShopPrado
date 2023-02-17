<%@page import="br.com.petShopPrado.security.Login"%>
<%@page import="br.com.petShopPrado.model.Tutor"%>
<%@page import="br.com.petShopPrado.dao.TutorDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>

    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta charset="UTF-8">
        <link rel="stylesheet" href="animal.css">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"
              integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
                integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
        crossorigin="anonymous"></script>
        <title>PetShop Prado</title>
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
                        <li><a href="/petShopPrado/home/index.jsp" class="nav-link px-4 text-white">Home</a></li>
                        <li><a href="/petShopPrado/servico/index.jsp" class="nav-link px-4 text-white">Solicitar Serviço</a></li>
                    </ul>
                    <form class="col-12 col-lg-auto mb-3 mb-lg-0 me-lg-3">
                        <input type="search" class="form-control form-control-dark" placeholder="Pesquisar..."
                               aria-label="Search">
                    </form>
                    <div class="text-end">
                        <h5 class="list-inline-item px-2 ">Bem vindo !</h5>
                        <a href="sair.jsp" class="btn btn-warning px-3">Sair</a>
                    </div>
                </div>
            </div>
        </header>


        <section>
            <main class="form-signin">
                <div class="div-form">
                    <form class="form-login mb-4" method="POST" action="output.jsp">
                        <div class="divs mt-3">
                            <h1 class="h2 mb-5 fw-normal">Cadastrar Novo Pet</h1>
                        </div>
                        <div class="form-floating mb-3" id="">
                            <input type="text" class="form-control" id="inputEspecie" placeholder="" name="especie">
                            <label for="especie">Especie</label>
                        </div>
                        <div class="form-floating mb-5" id="div-cad">
                            <input type="text" class="form-control" id="inputNome" placeholder="" name="nome">
                            <label for="nome">Nome</label>
                        </div>
                        <button id="btn-cadastrar" class="w-100 btn btn-lg btn btn-success" type="submit">Cadastrar</button>
                    </form>
                </div>
            </main>
        </section>


    </body>

</html>