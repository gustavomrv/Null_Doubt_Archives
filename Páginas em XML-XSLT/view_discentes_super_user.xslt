<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">

<html> 

<body>

<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="#">Null Doubt</a>
    </div>
    <ul class="nav navbar-nav">
      <li class="active"><a href="#">Home</a></li>
      <li><a href="#">Docentes</a></li>
      <li><a href="#">Discentes</a></li>
      <li><a href="#">Monitores</a></li>
      <li><a href="#">Cursos</a></li>
      <li><a href="#">Locais</a></li>
      <li><a href="#">Disciplinas</a></li>
      <li><a href="#">Sair</a></li>
    </ul>
  </div>
</nav>

  <h2>Discentes</h2>
  <table border="1">
    <tr bgcolor="#0dcaf0">
      <th style="text-align:left">Matricula</th>
      <th style="text-align:left">Nome</th>
      <th style="text-align:left">Curso</th>
      <th style="text-align:left">Ativo</th>
      <th style="text-align:left">Monitor</th>
      <th style="text-align:left"></th>
      <th style="text-align:left"></th>
    </tr>
    <xsl:for-each select="todos_os_objetos/todos_os_discentes/discente">
    <tr>
      <td><xsl:value-of select="matricula"/></td>
      <td><xsl:value-of select="nome"/></td>
      <td><xsl:value-of select="curso"/></td>
      <td><xsl:value-of select="ativo"/></td>
      <td><xsl:value-of select="monitor"/></td>
      <td><a href='#'>Editar</a></td>
      <td><a href='#'>Inverter Ativo</a></td>
    </tr>
    </xsl:for-each>
  </table>
  <button>Adicionar novo discente</button>

</body>

</html>
</xsl:template>
</xsl:stylesheet>