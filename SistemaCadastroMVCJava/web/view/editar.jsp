<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@page import="bean.Pessoa"%>
<!DOCTYPE html>
<html lang="pt-br">
    <head>
        <title>CRU MVC - Cadastro</title>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">

        <link rel="shortcut icon" href="favicon.ico" type="image/x-icon">
        <link rel="icon" href="favicon.ico" type="image/x-icon">

        <!-- Chamada ao css do framework Bootstrap -->
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">

        <!-- jQuery necessaria para o funcionamento do Bootstrap -->
        <script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-Fy6S3B9q64WdZWQUiU+q4/2Lc9npb8tCaSX9FK7E8HnRr0Jz8D6OP9dO5Vg3Q9ct" crossorigin="anonymous"></script>
        <script src="view/js/MyScript.js"></script>
        
        <!-- Mascara JQuery -->        
        <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery.mask/1.14.15/jquery.mask.min.js"></script>
    </head>
    <body>
        <!-- Menu de navegação fixo no topo -->
        <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
            <a class="navbar-brand" href="index.html">Projeto JAVA</a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>

            <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <ul class="navbar-nav mr-auto">
                    <li class="nav-item">
                        <a class="nav-link" href="index.html">Home</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="cadastrar.html">Cadastar</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="pesquisar.html">Pesquisar</a>
                    </li> 
                    <li class="nav-item">
                        <a class="nav-link" href="Controle?acao=listar">Listar Registros</a>
                    </li> 
                </ul>                
            </div>
        </nav>

        <!-- Painel de edição -->
        <div class="col d-flex justify-content-center mt-5">
            <div class="card w-75" style="width: 18rem;">
                <h5 class="card-header text-white bg-dark">Editar</h5>   
                <div class="card-body">   
                    <form name="form_mvc" class="form-horizontal needs-validation" action="Controle" method="post" novalidate>
                        <%
                            /**
                             * Cria uma lista para receber os registros do
                             * atributo listaPessoas originado do servlet
                             * Controle
                             */
                            List<Pessoa> pessoa = (ArrayList) request.getAttribute("listaPessoas");

                            // Percorre a lista dos registros e apresenta no navegador
                            for (Pessoa p : pessoa) {
                        %>                              
                        <fieldset>
                            <div class="form-group">
                                <label for="inputNome" class="col-lg-2 control-label">Nome</label>
                                <div class="col-lg-10">
                                    <input type="text" class="form-control" id="inputNome" name="nome" placeholder="Digite o nome" value="<%=p.getNome()%>" required>
                                <div class="invalid-feedback">
                                        Por favor, digite um nome.
                                    </div>
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="inputTelefone" class="col-lg-2 control-label">Telefone</label>
                                <div class="col-lg-10">
                                    <input type="text" class="form-control" id="inputTelefone" name="telefone" placeholder="Digite o telefone" value="<%=p.getTelefone()%>" onkeypress="$(this).mask('(00) 00000-0000')" required>
                                <div class="invalid-feedback">
                                        Por favor, digite um telefone.
                                    </div>
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="col-lg-6 col-lg-offset-2">
                                    <button type="submit" name="acao" class="btn btn-primary" value="alterar">Salvar</button>
                                </div>
                            </div>
                        </fieldset>
                        <input type="hidden" name="id" value="<%=p.getId()%>">
                        <%
                            } // Fim do laço de repetição
                        %>                        
                    </form>                   
                </div>
            </div>
        </div> 
    </body>
</html>

