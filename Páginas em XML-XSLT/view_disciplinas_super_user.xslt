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

  <h2>Disciplinas</h2>
  <button>
    Adicionar nova disciplina  
  </button>
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
        <th style="text-align:left"></th>
        <th style="text-align:left"></th>
      </tr>
      <tr>
        <td><xsl:value-of select="id"/></td>
        <td><xsl:value-of select="codigo"/></td>
        <td><xsl:value-of select="periodo"/></td>
        <td><xsl:value-of select="encerramento"/></td>
        <td><xsl:value-of select="docente"/></td>
        <td><xsl:value-of select="monitor"/></td>
        <td><xsl:value-of select="ativo"/></td>
        <td><a href='#'>Editar</a></td>
        <td><a href='#'>Inverter Ativo</a></td>
      </tr>
    </table>
  </xsl:for-each>
  

</body>

</html>
</xsl:template>
</xsl:stylesheet>