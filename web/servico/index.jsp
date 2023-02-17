<%@page import="br.com.petShopPrado.security.Login"%>
<%@page import="br.com.petShopPrado.model.Tutor"%>
<%@page import="br.com.petShopPrado.dao.TutorDAO"%>
<!DOCTYPE html>
<html>

    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta charset="UTF-8">
        <link rel="stylesheet" href="servico.css">
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
                        <li><a href="/petShopPrado/home/index.jsp" class="nav-link px-4 text-white">Home</a></li>
                        <li><a href="/petShopPrado/servico/index.jsp" class="nav-link px-4 text-white">Solicitar Serviço</a></li>
                        <li><a href="/petShopPrado/animal/index.jsp" class="nav-link px-4 text-white">Cadastrar Pet</a></li>
                    </ul>
                    <div class="text-end">
                        <h5 class="list-inline-item px-2 ">Bem vindo !</h5>
                        <a href="sair.jsp" class="btn btn-warning px-3">Sair</a>
                    </div>
                </div>
            </div>
        </header>


        <section>
            <main class="form-control mt-6">
                <div class="div-form">
                    <form class="form-login mb-2 " method="POST" action="output.jsp">
                        <div class="divs mt-3">
                            <h1 class="h4 mb-4 fw-normal"> <strong>Solicitar Serviço Pet</strong></h1>
                        </div>
                        <div class="col-sm-18 mb-3">
                            <select class="form-select mb-3" id="servico" onChange="update()">
                                <option value="45.00" name="descricao">Banho</option>
                                <option value="60.00" name="descricao">Banho e Tosa Higiênica</option>
                                <option value="25.00" name="descricao">Hidratação</option>
                                <option value="90.00" name="descricao">Tosa na Tesoura</option>
                                <option value="10.00" name="descricao">Tosa Higiênica</option>
                                <option value="15.00" name="descricao">Corte de Unha</option>
                            </select>
                            <div class='input-group mb-3'>
                                <span class="input-group-text ">R$</span>
                                <input class="form-control" type="text" id="value" aria-label="Disabled input example" name="precoServico" disabled readonly >
                            </div>
                        </div>
                        <div class="col-sm-18 mb-3">
                            <select class="form-select mb-3" id="animal" ></select>
                        </div>
                        <div class='col-sm-18 mb-3'>
                            <input type="data"  class="form-control" id="data" name="dataAgendamento"/>
                        </div>
                        <button id="btn-Agendar" class="col-sm-18 w-100 btn btn btn-success" type="submit">Agendar</button>
                    </form>
                </div>
            </main>
        </section>

        <script type="text/javascript">
            function update() {
                var select = document.getElementById('servico');
                var option = select.options[select.selectedIndex];

                document.getElementById('value').value = option.value;
                document.getElementById('text').value = option.text;
            }
            update();
        </script>

    </body>

</html>