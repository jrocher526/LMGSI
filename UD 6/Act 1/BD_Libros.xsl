<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

  <!-- Plantilla para elemento raiz -->
  <xsl:template match="/Libros">
    <html>
      <head>
        <title>Lista de Libros</title>
        <style>
          body {
            font-family: Courier New;
            margin: 20px;
          }
          table {
            width: 100%;
            border-collapse: collapse;
          }
          th, td {
            padding: 10px;
            border: 1px solid #ddd;
            text-align: left;
          }
          th {
            background-color: Gray;
          }
          tr:nth-child(even) {
            background-color: #f9f9f9;
          }
        </style>
      </head>
      <body>
        <h1>Lista de Libros</h1>
        <table>
          <tr>
            <th>Cod. Libro</th>
            <th>Título</th>
            <th>Editorial</th>
            <th>Edición</th>
            <th>ISBN</th>
            <th>Num. Páginas</th>
            <th>Autores</th>
          </tr>

          <!-- Plantilla para libros -->
          <xsl:apply-templates select="libro" />
        </table>
      </body>
    </html>
  </xsl:template>

  <!-- Plantilla para cada libro -->
  <xsl:template match="libro">
    <tr>
      <td><xsl:value-of select="Cod_Libro" /></td>
      <td><xsl:value-of select="Titulo" /></td>
      <td><xsl:value-of select="Editorial" /></td>
      <td><xsl:value-of select="Edicion" /></td>
      <td><xsl:value-of select="ISBN" /></td>
      <td><xsl:value-of select="NumPaginas" /></td>
      <td>
        <xsl:for-each select="Autores/autor">
          <xsl:value-of select="Nombre" />
          <xsl:text> </xsl:text>
          <xsl:value-of select="Apellidos" />
          <xsl:text>; </xsl:text>
        </xsl:for-each>
      </td>
    </tr>
  </xsl:template>

</xsl:stylesheet>
