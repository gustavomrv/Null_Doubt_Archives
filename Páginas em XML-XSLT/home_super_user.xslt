<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="/">

<html> 

  <head>
      <meta charset="UTF-8"/>
     
      <link rel='stylesheet' href='https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css'/>
      <link rel="stylesheet" href="./style.css"/>
       <title>Página inicial</title>
  </head>

<body>

      <nav class="navbar navbar-expand-md navbar-dark navbar-offcanvas" style="background-color: #38B6FF">
              <div class="container-fluid">
                  <a href="#" class="thumbnail">
                      <!-- https://i.ibb.co/MZLxpBq/avatar-null-doubt-VERTICAL-COM-NOME-BRANCO.png -->
                      <img class="img-200-200" src="https://raw.githubusercontent.com/pedroLimaifg/nulldoubt/main/atividade/NullDoubt/avatar%20null%20doubt%20-%20VERTICAL%20COM%20NOME%20-%20BRANCO.png" />
                  </a>


                  <ul class="navbar-nav navbar-top">
                      <b>
                          <li class="nav-item active">
                              <a class="nav-link" href='http://168.197.81.233:8000/index.php?p=admin#' type="submit" name="home"> Home <span class="sr-only"></span></a>
                          </li>
                      </b>
                      <b>
                      <li class="nav-item dropdown">
                          <a class="nav-link dropdown-toggle" role="button" href="#!" id="dropdownExample" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Usuários</a>
                          <div class="dropdown-menu dropdown-menu-right" aria-labelledby="dropdownExample">
                              <a class="dropdown-item" href="#">Discentes</a>
                              <a class="dropdown-item" href="#">Docentes</a>
                              <a class="dropdown-item" href="#">Monitores</a>
                          </div>
                      </li>
                      </b>
                      <b>   
                      <li class="nav-item active">
                          <a class="nav-link" href='#' type="submit" name="cursos"> Cursos <span class="sr-only"></span></a>
                      </li>
                      </b>
                      <b>
                      <li class="nav-item active">
                          <a class="nav-link" href='http://168.197.81.233:8000/' type="submit" name="locais"> Locais <span class="sr-only"></span></a>
                      </li>
                      </b>
                      <b>
                      <li class="nav-item active">
                          <a class="nav-link" href='http://168.197.81.233:8000/' type="submit" name="disciplinas"> Disciplinas <span class="sr-only"></span></a>
                      </li>
                      </b>
                      <li class="nav-item active">
                          <a class="nav-link" href=' http://168.197.81.233:8000/' type="submit" name="logout">Sair <span class="sr-only"></span></a>
                      </li>
                  </ul>
              </div>
          </nav>

        <h2>Docentes</h2>
        <table border="1">
          <tr bgcolor="#0dcaf0">
            <th style="text-align:left">Matricula</th>
            <th style="text-align:left">Nome</th>
            <th style="text-align:left">Ativo</th>
          </tr>
          <xsl:for-each select="todos_os_objetos/todos_os_docentes/docente">
          <tr>
            <td><xsl:value-of select="matricula"/></td>
            <td><xsl:value-of select="nome"/></td>
            <td><xsl:value-of select="ativo"/></td>
          </tr>
          </xsl:for-each>
        </table>

        <h2>Discentes</h2>
        <table border="1">
          <tr bgcolor="#0dcaf0">
            <th style="text-align:left">Matricula</th>
            <th style="text-align:left">Nome</th>
            <th style="text-align:left">Curso</th>
            <th style="text-align:left">Ativo</th>
            <th style="text-align:left">Monitor</th>
          </tr>
          <xsl:for-each select="todos_os_objetos/todos_os_discentes/discente">
          <tr>
            <td><xsl:value-of select="matricula"/></td>
            <td><xsl:value-of select="nome"/></td>
            <td><xsl:value-of select="curso"/></td>
            <td><xsl:value-of select="ativo"/></td>
            <td><xsl:value-of select="monitor"/></td>
          </tr>
          </xsl:for-each>
        </table>

        <h2>Monitores</h2>
        <table border="1">
          <tr bgcolor="#0dcaf0">
            <th style="text-align:left">Matricula</th>
            <th style="text-align:left">Nome</th>
            <th style="text-align:left">Curso</th>
            <th style="text-align:left">Ativo</th>
          </tr>
          <xsl:for-each select="todos_os_objetos/todos_os_monitores/monitor">
          <tr>
            <td><xsl:value-of select="matricula"/></td>
            <td><xsl:value-of select="nome"/></td>
            <td><xsl:value-of select="curso"/></td>
            <td><xsl:value-of select="ativo"/></td>
          </tr>
          </xsl:for-each>
        </table>

        <h2>Cursos</h2>
        <table border="1">
          <tr bgcolor="#0dcaf0">
            <th style="text-align:left">Codigo</th>
            <th style="text-align:left">Nome</th>
            <th style="text-align:left">Ativo</th>
          </tr>
          <xsl:for-each select="todos_os_objetos/todos_os_cursos/curso">
          <tr>
            <td><xsl:value-of select="codigo"/></td>
            <td><xsl:value-of select="nome"/></td>
            <td><xsl:value-of select="ativo"/></td>
          </tr>
          </xsl:for-each>
        </table>

        <h2>Disciplinas</h2>
        <xsl:for-each select="todos_os_objetos/todas_as_disciplinas/disciplina">
          <h4><xsl:value-of select="nome"/></h4>
          <table border="1">
            <tr bgcolor="#0dcaf0">
              <th style="text-align:left">Id</th>
              <th style="text-align:left">Código</th>
              <th style="text-align:left">Período</th>
              <th style="text-align:left">Encerramento</th>
              <th style="text-align:left">Docente</th>
              <th style="text-align:left">Monitor</th>
              <th style="text-align:left">Ativo</th>
            </tr>
            <tr>
              <td><xsl:value-of select="id"/></td>
              <td><xsl:value-of select="codigo"/></td>
              <td><xsl:value-of select="periodo"/></td>
              <td><xsl:value-of select="encerramento"/></td>
              <td><xsl:value-of select="docente"/></td>
              <td><xsl:value-of select="monitor"/></td>
              <td><xsl:value-of select="ativo"/></td>
            </tr>
          </table>
        </xsl:for-each>
        

      <script src='https://cdnjs.cloudflare.com/ajax/libs/jquery/3.3.1/jquery.min.js'></script>
      <script src='https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.1.1/js/bootstrap.min.js'></script>
      <script src="../script.js"></script>

</body>

</html>

</xsl:template>
</xsl:stylesheet>