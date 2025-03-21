<?xml version="1.0" encoding="ISO-8859-1"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <xsl:template match="/">
        <html>
        <body>
            <h1>Libros con precio superior a 10€</h1>
            <table border="1">
                <tr bgcolor="#887788">
                    <th>Título</th>
                    <th>Autor</th>
                    <th>Precio</th>
                </tr>
                <xsl:for-each select="libreria/libro[precio &gt; 10 and autor='Maria Lopez']">
                    <tr>
                        <td><xsl:value-of select="titulo"/></td>
                        <td><xsl:value-of select="autor"/></td>
                        <td><xsl:value-of select="precio"/></td>
                    </tr>
                </xsl:for-each>
            </table>
        </body>
        </html>
    </xsl:template>

</xsl:stylesheet>

<!-- Filtro para mostrar libros con precio superior a 10$
<xsl:for-each select="libreria/libro[precio &gt; 10]"> -->

<!-- Filtro para mostrar libros del ultimo autor añadido
<xsl:for-each select="libreria/libro[precio &gt; 10 and autor='María López']"> -->

<!-- Filtro para mostrar libros con el precio superior a 12 $
<xsl:for-each select="libreria/libro[precio &gt; 12]"> -->