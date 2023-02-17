<%= session.getAttribute("loginbemsucedido") != null ? session.getAttribute("loginbemsucedido") : ""%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <link rel="stylesheet" href="index.css">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta name="description" content="">
        <meta name="author" content="Mark Otto, Jacob Thornton, and Bootstrap contributors">
        <meta name="generator" content="Hugo 0.84.0">
        <link href="../assets/dist/css/bootstrap.min.css" rel="stylesheet">
        <link rel="canonical" href="https://getbootstrap.com/docs/5.0/examples/sign-in/">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
        <title>PetShopPrado</title>
    </head>
    <body>
        <header class="p-3 bg-dark text-white">
            <div class="container">
                <div class="d-flex flex-wrap align-items-center justify-content-center justify-content-lg-start">
                    <a href="/" class="d-flex align-items-center mb-2 mb-lg-0 text-white text-decoration-none">
                        <svg class="bi me-2" width="40" height="60" role="img" aria-label="Bootstrap"><use xlink:href="#bootstrap"/></svg>
                    </a>

                    <ul class="nav col-12 col-lg-auto me-lg-auto mb-2 justify-content-center mb-md-0">
                        <a class="navbar-brand" href="/petShopPrado/home/index.jsp">
                            <img src="/petShopPrado/assets/icon/icon-osso2.png" alt="" width="40" height="40" class="d-inline-block me-2 ">
                            PetShopPrado
                        </a>
                        <li><a href="/petShopPrado/home/index.jsp" class="nav-link px-4 text-white">Home</a></li>
                    </ul>
                    <div class="text-end">
                        <a class="btn btn-warning" href="/petShopPrado/tutor/index.jsp">Cadastre-se</a>
                    </div>
                </div>
            </div>
        </header>
        <section>
            <main class="form-signin">
                <div class="div-form">
                    <form class="form-login" method="post" action="output.jsp">
                        <div class="divs">
                            <img class="mb-4" src="/petShopPrado/assets/icon/osso-64px.png" alt="" width="90" height="90">
                            <h1 class="h2 mb-3 fw-normal">Bem vindo !</h1>
                            <h1 class="h4 mb-3 fw-normal">Acesse aqui o seu perfil</h1>
                        </div>
                        <div class="form-floating">
                            <input type="email" class="form-control" id="floatingInput" placeholder="name@example.com" name="login">
                            <label for="floatingInput">E-mail</label>
                        </div>
                        <div class="form-floating">
                            <input type="password" class="form-control" id="floatingPassword" placeholder="Password" name="senha">
                            <label for="floatingPassword">Senha</label>
                        </div>
                        <% 
                            String login = request.getParameter("login");
                            String senha = request.getParameter("senha");
                            if( login != null && senha != null && !login.isEmpty() && !senha.isEmpty()){
                                session.setAttribute("login", login);
                            }   
                        %>
                        <div id="div-box" class="checkbox mb-3">
                            <label>
                                <input type="checkbox" value="remember-me">Lembre-se de mim
                            </label>
                        </div>
                        <button id="btn-entrar" class="w-100 btn btn-lg btn btn-success" type="submit">Entrar</button>
                    </form>
                </div>
            </main>
        </section>
    </body>
</html>