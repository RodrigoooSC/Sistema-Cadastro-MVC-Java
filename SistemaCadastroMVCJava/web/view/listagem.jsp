<%@page import="java.util.List"%>
<%@page import="bean.Pessoa"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
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
        <!-- Painel de listagem -->
        <div class="col d-flex justify-content-center mt-5">
            <div class="card">
                <h5 class="card-header text-white bg-dark">Pessoas cadastradas</h5>   
                <div class="card-body"> 
                    <table class="table table-striped table-hover">
                            <thead>
                                <tr>
                                    <th>ID</th>
                                    <th>Nome</th>
                                    <th>Telefone</th>
                                    <th>Cadastro</th>
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
                                    <td><%=p.getDataCadastro()%></td>
                                    <td><a href="Controle?acao=editar&id=<%=p.getId()%>"><button type="button" class="btn btn-outline-primary btn-sm">&nbsp;Editar</button></a></td>
                                    <td><a href="Controle?acao=excluir&id=<%=p.getId()%>"><button type="button" class="btn btn-outline-danger btn-sm">&nbsp;Excluir</button></a></td>
                                </tr>
                                <%
                                    } // Fim do laço de repetição
                                %>
                        </table>                                         
                </div>
            </div>
        </div>        
    </body>
</html>
