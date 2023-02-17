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
        <header class="p-3 bg-dark text-white">
            <div class="container">
                <div class="d-flex flex-wrap align-items-center justify-content-center justify-content-lg-start">
                    <a href="/" class="d-flex align-items-center mb-2 mb-lg-0 text-white text-decoration-none">
                        <svg class="bi me-2" width="40" height="60" role="img" aria-label="Bootstrap">
                        <use xlink:href="#bootstrap" />
                        </svg>
                    </a>

                    <ul class="nav col-12 col-lg-auto me-lg-auto mb-2 justify-content-center mb-md-0">
                        <a class="navbar-brand" href="#">
                            <img src="/web/assets/icon/icon-osso2.png" alt="" width="40" height="40" class="d-inline-block me-2">
                            PetShopPrado
                        </a>
                        <li><a href="#" class="nav-link px-4 text-white">Home</a></li>
                        <li><a href="#" class="nav-link px-4 text-white">Solicitar Serviço</a></li>
                        <li><a href="#" class="nav-link px-4 text-white">Cadastrar Pet</a></li>
                    </ul>
                    <form class="col-12 col-lg-auto mb-3 mb-lg-0 me-lg-3">
                        <input type="search" class="form-control form-control-dark" placeholder="Pesquisar..." aria-label="Search">
                    </form>
                    <div class="text-end">
                        <h5 class="list-inline-item px-2 ">Bem vindo !</h5>
                         <a href="sair.jsp" class="btn btn-warning px-3">Sair</a>
                    </div>
                </div>
            </div>
        </header>

        <section>
            <div class="section2">
            <div class="titulo">
                <h3>Agenda de Serviços</h3>
                </div>
            <div class="table-responsive">
                <table class="table table-striped table-sm">
                    <thead>
                        <tr>
                            <th scope="col">#</th>
                            <th scope="col">Nome Tutor</th>
                            <th scope="col">Nome Animal</th>
                            <th scope="col">Serviço Descrição</th>
                            <th scope="col">Preço Serviço</th>
                            <th scope="col">Data Agendada</th>
                            <th scope="col">Cidade</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td>1</td>
                            <td type="text" id="name" name="name">Paloma</td>
                            <td type="text" id="animal" name="animal">Nina</td>
                            <td type="text" id="tipoServico" name="servico">Banho e Tosa</td>
                            <td type="text" id="preco" name="preco">R$60.00</td>
                            <td type="date" id="inputDate" name="data">20/02/2023</td>
                            <td type="text" id="inputCity" name="cidade">Londrina</td>
                        </tr>
                        <tr>
                            <td>2</td>
                            <td>random</td>
                            <td>data</td>
                            <td>placeholder</td>
                            <td>text</td>
                            <td>text</td>
                            <td>text</td>
                        </tr>
                         <tr>
                            <td>3</td>
                            <td>random</td>
                            <td>data</td>
                            <td>placeholder</td>
                            <td>text</td>
                            <td>text</td>
                            <td>text</td>
                        </tr>
                        <tr>
                            <td>4</td>
                            <td>random</td>
                            <td>data</td>
                            <td>placeholder</td>
                            <td>text</td>
                            <td>text</td>
                            <td>text</td>
                        </tr>
                         <tr>
                            <td>5</td>
                            <td>random</td>
                            <td>data</td>
                            <td>placeholder</td>
                            <td>text</td>
                            <td>text</td>
                            <td>text</td>
                        </tr>
                        <tr>
                            <td>6</td>
                            <td>random</td>
                            <td>data</td>
                            <td>placeholder</td>
                            <td>text</td>
                            <td>text</td>
                            <td>text</td>
                        </tr>
                         <tr>
                            <td>7</td>
                            <td>random</td>
                            <td>data</td>
                            <td>placeholder</td>
                            <td>text</td>
                            <td>text</td>
                            <td>text</td>
                        </tr>
                        <tr>
                            <td>8</td>
                            <td>random</td>
                            <td>data</td>
                            <td>placeholder</td>
                            <td>text</td>
                            <td>text</td>
                            <td>text</td>
                        </tr>
                         <tr>
                            <td>9</td>
                            <td>random</td>
                            <td>data</td>
                            <td>placeholder</td>
                            <td>text</td>
                            <td>text</td>
                            <td>text</td>
                        </tr>
                        <tr>
                            <td>10</td>
                            <td>random</td>
                            <td>data</td>
                            <td>placeholder</td>
                            <td>text</td>
                            <td>text</td>
                            <td>text</td>
                        </tr>
                         <tr>
                            <td>11</td>
                            <td>random</td>
                            <td>data</td>
                            <td>placeholder</td>
                            <td>text</td>
                            <td>text</td>
                            <td>text</td>
                        </tr>
                    </tbody>
                </table>
            </div>
        </div>
        </section>



    </body>
</html>