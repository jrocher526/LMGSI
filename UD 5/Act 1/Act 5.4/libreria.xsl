<?xml version="1.0" encoding="ISO-8859-1"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <xsl:template match="/">
        <html>
        <body>
            <h1>Lista de libros</h1>
            <table border="1">
                <tr bgcolor="#887788">
                    <th>ISBN</th>
                    <th>Titulo</th>
                    <th>Autor</th>
                    <th>Precio</th>
                </tr>
                <xsl:for-each select="libreria/libro">
                    <tr>
                        <xsl:attribute name="bgcolor">
                            <xsl:choose>
                                <xsl:when test="precio &gt; 25">red</xsl:when>
                                <xsl:otherwise>green</xsl:otherwise>
                            </xsl:choose>
                        </xsl:attribute>
                        <td><xsl:value-of select="isbn"/></td>
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
