<%= session.getAttribute("cpfvalido") != null ? session.getAttribute("cpfvalido") : ""%>
<!DOCTYPE html>
<html lang="pt-br">

    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="style.css">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css"
              integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"
                integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy"
        crossorigin="anonymous"></script>
        <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
                integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
        crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"
                integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49"
        crossorigin="anonymous"></script>
        <script src="/petShopPrado/tutor/funcoes.js"></script>
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"
              integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
                integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
        crossorigin="anonymous"></script>

        <title>CadastrarTutor</title>
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
                        <a class="navbar-brand" href="/petShopPrado/home/index.jsp">
                            <img src="/petShopPrado/assets/icon/icon-osso2.png" alt="" width="40" height="40" class="d-inline-block me-2 ">
                            PetShopPrado
                        </a>
                        <li><a href="/petShopPrado/home/index.jsp" class="nav-link px-4 text-white">Home</a></li>
                    </ul>
                    <div class="text-end">
                        <a class="btn btn-outline-light me-2" href="/petShopPrado/login/index.jsp">Login</a>
                        <a class="btn btn-warning" href="/petShopPrado/tutor/index.jsp">Cadastre-se</a>
                    </div>
                </div>
            </div>
        </header>
        <section>
            <div id="div-color">        
                <form  method="POST" action="output.jsp">
                    <div>
                        <h3>Cadastrar tutor</h3>
                    </div>
                    <div class="form-row">
                        <div class="form-group col-md-6">
                            <label for="nome">Nome</label>
                            <input type="text" class="form-control" id="inputNome" placeholder="" name="nome">
                        </div>
                        <div class="form-group col-md-6">
                            <label for="cpf">CPF</label>
                            <input type="text" class="form-control" id="cpf" placeholder="Ex.: 000.000.000-00" name="cpf">
                        </div>
                        <div class="form-group col-md-6">
                            <label for="idade">Idade</label>
                            <input type="number" class="form-control" id="idade" name="idade">
                        </div>
                        <div class="form-group col-md-6">
                            <label for="inputEmail4">Email</label>
                            <input type="email" class="form-control" id="inputEmail4" placeholder="Email" name="email">
                        </div>
                        <div class="form-group col-md-6">
                            <label for="Celular">Celular</label>
                            <input type="tel" class="form-control" id="Celular" placeholder="Ex.: (00) 0000-0000"
                                   name="telefone">
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="inputAddress">Endereço</label>
                        <input type="text" class="form-control" id="inputAddress" placeholder="Rua dos Bobos, n 5"
                               name="endereco">
                    </div>
                    <div class="form-row">
                        <div class="form-group col-md-6">
                            <label for="inputCity">Cidade</label>
                            <input type="text" class="form-control" id="inputCity" name="cidade">
                        </div>

                        <div class="form-group col-md-6">
                            <label for="inputCEP">CEP</label>
                            <input type="text" class="form-control" id="inputCEP" name="cep">
                        </div>
                        <div class="form-group col-md-6">
                            <label for="inputPassword4">Senha</label>
                            <input type="password" class="form-control" id="inputPassword4" placeholder="Senha"
                                   name="senha">
                        </div>
                    </div>
                    <div class="form-group">
                    </div>
                    <div class="text-center">
                        <button id="btn-form" type="submit" class="col-sm-18 w-100 btn btn btn-success">Cadastrar</button>
                    </div><br>
                </form>
            </div>
        </section>
    </body>
</html>