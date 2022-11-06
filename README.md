# Sistema-Cadastro-MVC-Java 🗃
Fala pessoal, tudo bem?🖖🏽 Esse projeto foi desenvolvido durante as aulas da faculdade no módulo - PROGRAMAÇÃO DE PORTAIS CORPORATIVOS.

## # Sobre o projeto 📚
Esse pequena projeto visa o desenvolvimento de uma aplicação de Cadastro de Pessoas no padrão MVC com conexão ao banco de dados MySQL utilizando a JDBC.
Nesta aplicação foi implementada a validação dos dados utilizando os próprios recursos do framework.

Para o desenvolvimento do projeto foi utilizada a IDE <a href="https://netbeans.apache.org/download/index.html">Apache NetBeans 15</a>, o JDK versão(<a href="https://www.oracle.com/br/java/technologies/javase/jdk11-archive-downloads.html" target="_blank">11.0.16</a>), o framework  web Bootstrap(<a href="https://getbootstrap.com/docs/4.6/getting-started/introduction/" target="_blank">v4.6.2</a>), para formatação da máscara de telefone foi utilizado o plug-in <a href="https://igorescobar.github.io/jQuery-Mask-Plugin/" target="_blank">jQuery Mask Plugin</a>, o conector do banco de dados <a href="https://dev.mysql.com/downloads/connector/odbc/" target="_blank">MySQL 8.0.31</a> e o servidor <a href="https://tomcat.apache.org/download-10.cgi">Apache Tomcat 10</a>.

<div class="center">
  <img src="SistemaCadastroMVCJava/web/Others/ExecuçãoDoProjeto.gif">
</div>

## # Tecnologias utilizadas ⚙
<div>
 <img src="https://img.shields.io/badge/HTML5-E34F26?style=for-the-badge&logo=html5&logoColor=white" />
 <img src="https://img.shields.io/badge/JavaScript-323330?style=for-the-badge&logo=javascript&logoColor=F7DF1E" />
 <img src="https://img.shields.io/badge/Bootstrap-563D7C?style=for-the-badge&logo=bootstrap&logoColor=white" />   
 <img src="https://img.shields.io/badge/MySQL-005C84?style=for-the-badge&logo=mysql&logoColor=white">
 <img src="https://img.shields.io/badge/Java-ED8B00?style=for-the-badge&logo=java&logoColor=white">
 <img src="https://img.shields.io/badge/Git-E34F26?style=for-the-badge&logo=git&logoColor=white" /> 
 <img src="https://img.shields.io/badge/Apache-D22128?style=for-the-badge&logo=Apache&logoColor=white"> 
</div>

## # Executando o projeto 🚀
- Clone o repositório:
```bash
git clone https://github.com/RodrigoooSC/Sistema-Cadastro-MVC-Java.git
```
- Crie o banco de dados, a tabela e os campos:
```sql
CREATE DATABASE exemplo_mvc;

USE exemplo_mvc;

CREATE TABLE pessoa(

id int primary key not null auto_increment,
nome varchar(50),
telefone varchar(30),
dataCadastro timestamp not null default current_timestamp
);
```
- Coloque suas credencias de acesso ao banco de dados no arquivo 'ConnectionFactory'
- Abra o projeto no Netbeans e execute.
