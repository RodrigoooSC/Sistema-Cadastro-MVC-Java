<%@page import="java.util.List"%>
<%@page import="bean.Pessoa"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="pt-br">
    <head>
        <title>CRUD MVC - Cadastro</title>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">

        <link rel="shortcut icon" href="favicon.ico" type="image/x-icon">
        <link rel="icon" href="favicon.ico" type="image/x-icon">

        <!-- Chamada ao css do framework Bootstrap -->        
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-OERcA2EqjJCMA+/3y+gxIOqMEjwtxJY7qPCqsdltbNJuaOe923+mo//f6V8Qbsw3" crossorigin="anonymous"></script>

        <!-- Chamada ao framework Bootstrap -->
        <!-- <script src="view/bootstrap/js/bootstrap.min.js"></script> -->
        <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js" integrity="sha384-oBqDVmMz9ATKxIep9tiCxS/Z9fNfEXiDAYTujMAeBAsjFuCZSmKbSSUnQlmh/jp3" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.min.js" integrity="sha384-IDwe1+LCz02ROU9k972gdyvl+AESN10+x7tBKgc9I5HFtuNz0wWnPclzo6p9vxnk" crossorigin="anonymous"></script>
        
        <!-- 
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script> 
        -->
    </head>
    <body>
        <!-- Menu de navegação fixo no topo -->
        <nav class="navbar navbar-expand-lg bg-dark">
            <div class="container-fluid">
                <a class="navbar-brand text-light" href="index.html">CRUD MVC JSP</a>
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                        <li class="nav-item">
                            <a class="nav-link active text-light" aria-current="page" href="index.html">Home</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link text-light" aria-current="page" href="cadastrar.html">Cadastrar</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link text-light" aria-current="page" href="pesquisar.html">Pesquisar</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link text-light" aria-current="page" href="Controle?acao=listar">Listar Todos</a>
                        </li>
                </div>
            </div>
        </nav>
        
        
        <div class="container col-md-8 col-md-offset-2">
            <div class="table-responsive">
                <div class="panel panel-primary">
                    <div class="panel-heading">
                        <h2 class="panel-title h1">Pessoas Cadastradas</h2>
                    </div>
                    <div class="panel-body">
                        <table class="table table-striped">
                            <thead>
                                <tr>
                                    <th>ID</th>
                                    <th>Nome</th>
                                    <th>Telefone</th>
                                    <th>&nbsp;</th>
                                    <th>&nbsp;</th>
                                </tr>
                            </thead>
                            <tbody>                     
                                <%
                                    /**
                                     * Cria uma lista para receber os registros
                                     * do atributo listaPessoas originado do
                                     * servlet Controle
                                     */
                                    List<Pessoa> pessoas = (ArrayList) request.getAttribute("listaPessoas");
 
                                    // Percorre a lista dos registros e apresenta no navegador
                                    for (Pessoa p : pessoas) {
                                %>
 
                                <tr>
                                    <td><%=p.getId()%></td>
                                    <td><%=p.getNome()%></td>
                                    <td><%=p.getTelefone()%></td>
                                    <td><a href="Controle?acao=editar&id=<%=p.getId()%>"><span class="glyphicon glyphicon-edit" aria-hidden="true"></span>&nbsp;Editar</a></td>
                                    <td><a href="Controle?acao=excluir&id=<%=p.getId()%>"><span class="glyphicon glyphicon-remove" aria-hidden="true"></span>&nbsp;Excluir</a></td>
                                </tr>
                                <%
                                    } // Fim do laço de repetição
                                %>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </body>
</html>